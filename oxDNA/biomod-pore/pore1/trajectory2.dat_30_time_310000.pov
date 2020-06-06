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
	<44.858746, 41.521988, 46.036312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932671, 41.567741, 46.426750>,  <44.977028, 41.595192, 46.661015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932671, 41.567741, 46.426750>,  <44.858746, 41.521988, 46.036312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932671, 41.567741, 46.426750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936596, -0.280370, 0.210191,
		0.297710, -0.953053, 0.055313,
		0.184815, 0.114382, 0.976094,
		44.988113, 41.602055, 46.719578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698452, 40.876701, 46.408123>,  <44.858746, 41.521988, 46.036312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698452, 40.876701, 46.408123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692749, 41.160255, 46.690193>,  <44.689327, 41.330387, 46.859436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692749, 41.160255, 46.690193>,  <44.698452, 40.876701, 46.408123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692749, 41.160255, 46.690193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909297, -0.302537, 0.285745,
		0.415903, -0.637141, 0.648904,
		-0.014258, 0.708888, 0.705177,
		44.688473, 41.372921, 46.901745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667774, 40.573166, 47.033478>,  <44.698452, 40.876701, 46.408123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667774, 40.573166, 47.033478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504173, 40.925140, 47.130173>,  <44.406013, 41.136326, 47.188190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.504173, 40.925140, 47.130173>,  <44.667774, 40.573166, 47.033478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504173, 40.925140, 47.130173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857861, -0.461074, 0.226905,
		0.311118, -0.114570, 0.943440,
		-0.408999, 0.879935, 0.241733,
		44.381474, 41.189121, 47.202694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237133, 40.434673, 47.606075>,  <44.667774, 40.573166, 47.033478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237133, 40.434673, 47.606075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092110, 40.790474, 47.494831>,  <44.005096, 41.003952, 47.428085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092110, 40.790474, 47.494831>,  <44.237133, 40.434673, 47.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092110, 40.790474, 47.494831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904539, -0.263999, 0.334833,
		0.224412, 0.372958, 0.900301,
		-0.362558, 0.889498, -0.278111,
		43.983341, 41.057323, 47.411396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805126, 40.660915, 48.156498>,  <44.237133, 40.434673, 47.606075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805126, 40.660915, 48.156498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680771, 40.899490, 47.860497>,  <43.606159, 41.042637, 47.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680771, 40.899490, 47.860497>,  <43.805126, 40.660915, 48.156498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680771, 40.899490, 47.860497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931327, -0.035778, 0.362423,
		0.189688, 0.801859, 0.566604,
		-0.310884, 0.596441, -0.740006,
		43.587505, 41.078423, 47.638496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456196, 41.151035, 48.502953>,  <43.805126, 40.660915, 48.156498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456196, 41.151035, 48.502953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291298, 41.182945, 48.139923>,  <43.192360, 41.202091, 47.922104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291298, 41.182945, 48.139923>,  <43.456196, 41.151035, 48.502953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291298, 41.182945, 48.139923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910886, -0.015914, 0.412352,
		0.018454, 0.996686, 0.079230,
		-0.412246, 0.079779, -0.907573,
		43.167625, 41.206879, 47.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938946, 41.711140, 48.599098>,  <43.456196, 41.151035, 48.502953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938946, 41.711140, 48.599098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836784, 41.518661, 48.263664>,  <42.775486, 41.403175, 48.062405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836784, 41.518661, 48.263664>,  <42.938946, 41.711140, 48.599098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836784, 41.518661, 48.263664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955425, -0.007237, 0.295144,
		-0.148091, 0.876584, -0.457897,
		-0.255404, -0.481194, -0.838583,
		42.760162, 41.374302, 48.012089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332436, 42.040314, 48.286839>,  <42.938946, 41.711140, 48.599098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332436, 42.040314, 48.286839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346626, 41.660591, 48.161903>,  <42.355141, 41.432758, 48.086941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346626, 41.660591, 48.161903>,  <42.332436, 42.040314, 48.286839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346626, 41.660591, 48.161903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995334, -0.061623, 0.074243,
		-0.089727, 0.308249, -0.947065,
		0.035476, -0.949308, -0.312340,
		42.357269, 41.375797, 48.068203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677879, 42.032524, 48.003841>,  <42.332436, 42.040314, 48.286839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677879, 42.032524, 48.003841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777531, 41.650879, 48.070286>,  <41.837322, 41.421890, 48.110153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777531, 41.650879, 48.070286>,  <41.677879, 42.032524, 48.003841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777531, 41.650879, 48.070286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960412, -0.221319, 0.169195,
		-0.124667, -0.201691, -0.971483,
		0.249133, -0.954117, 0.166116,
		41.852272, 41.364643, 48.120121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262459, 41.508102, 47.516830>,  <41.677879, 42.032524, 48.003841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262459, 41.508102, 47.516830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380577, 41.310524, 47.843956>,  <41.451450, 41.191978, 48.040230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380577, 41.310524, 47.843956>,  <41.262459, 41.508102, 47.516830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380577, 41.310524, 47.843956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932630, -0.334815, 0.134534,
		0.207363, -0.802443, -0.559540,
		0.295299, -0.493947, 0.817811,
		41.469166, 41.162338, 48.089298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731976, 40.986629, 47.581459>,  <41.262459, 41.508102, 47.516830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731976, 40.986629, 47.581459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928169, 40.933464, 47.925961>,  <41.045887, 40.901566, 48.132660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928169, 40.933464, 47.925961>,  <40.731976, 40.986629, 47.581459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928169, 40.933464, 47.925961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814528, -0.421249, 0.398866,
		0.309787, -0.897153, -0.314880,
		0.490486, -0.132915, 0.861253,
		41.075314, 40.893589, 48.184338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511406, 40.265568, 47.790142>,  <40.731976, 40.986629, 47.581459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511406, 40.265568, 47.790142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674187, 40.448807, 48.106251>,  <40.771854, 40.558750, 48.295918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674187, 40.448807, 48.106251>,  <40.511406, 40.265568, 47.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674187, 40.448807, 48.106251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766347, -0.299587, 0.568296,
		0.497091, -0.836895, 0.229144,
		0.406956, 0.458098, 0.790274,
		40.796272, 40.586235, 48.343334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578991, 39.738628, 48.380344>,  <40.511406, 40.265568, 47.790142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578991, 39.738628, 48.380344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568092, 40.105423, 48.539536>,  <40.561554, 40.325500, 48.635052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568092, 40.105423, 48.539536>,  <40.578991, 39.738628, 48.380344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568092, 40.105423, 48.539536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767583, -0.274236, 0.579320,
		0.640371, -0.289699, 0.711337,
		-0.027246, 0.916990, 0.397980,
		40.559917, 40.380520, 48.658928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681828, 39.693092, 49.147797>,  <40.578991, 39.738628, 48.380344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681828, 39.693092, 49.147797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502747, 40.045364, 49.085873>,  <40.395298, 40.256729, 49.048717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502747, 40.045364, 49.085873>,  <40.681828, 39.693092, 49.147797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502747, 40.045364, 49.085873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744919, -0.271568, 0.609383,
		0.494630, 0.388141, 0.777616,
		-0.447702, 0.880680, -0.154808,
		40.368435, 40.309566, 49.039429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656918, 40.051079, 49.683365>,  <40.681828, 39.693092, 49.147797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656918, 40.051079, 49.683365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341385, 40.174774, 49.470905>,  <40.152065, 40.248989, 49.343430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341385, 40.174774, 49.470905>,  <40.656918, 40.051079, 49.683365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341385, 40.174774, 49.470905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614559, -0.385261, 0.688398,
		0.008245, 0.869452, 0.493948,
		-0.788828, 0.309236, -0.531153,
		40.104736, 40.267544, 49.311558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077339, 40.213730, 50.141712>,  <40.656918, 40.051079, 49.683365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077339, 40.213730, 50.141712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885731, 40.219353, 49.790634>,  <39.770767, 40.222729, 49.579987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885731, 40.219353, 49.790634>,  <40.077339, 40.213730, 50.141712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885731, 40.219353, 49.790634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842081, -0.289701, 0.454943,
		-0.247872, 0.957014, 0.150612,
		-0.479020, 0.014060, -0.877692,
		39.742023, 40.223572, 49.527328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418949, 40.584324, 50.282063>,  <40.077339, 40.213730, 50.141712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418949, 40.584324, 50.282063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420635, 40.329437, 49.973793>,  <39.421646, 40.176506, 49.788830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420635, 40.329437, 49.973793>,  <39.418949, 40.584324, 50.282063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420635, 40.329437, 49.973793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781619, -0.482807, 0.394930,
		-0.623742, 0.600709, -0.500094,
		0.004211, -0.637218, -0.770672,
		39.421898, 40.138271, 49.742592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722462, 40.443295, 50.187283>,  <39.418949, 40.584324, 50.282063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722462, 40.443295, 50.187283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873306, 40.132484, 49.985680>,  <38.963814, 39.945999, 49.864719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873306, 40.132484, 49.985680>,  <38.722462, 40.443295, 50.187283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873306, 40.132484, 49.985680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719022, -0.588627, 0.369493,
		-0.583782, 0.223063, -0.780667,
		0.377102, -0.777021, -0.504017,
		38.986439, 39.899376, 49.834476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107018, 40.167667, 49.964436>,  <38.722462, 40.443295, 50.187283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107018, 40.167667, 49.964436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390182, 39.886703, 49.934807>,  <38.560081, 39.718124, 49.917030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390182, 39.886703, 49.934807>,  <38.107018, 40.167667, 49.964436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390182, 39.886703, 49.934807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650585, -0.689294, 0.318770,
		-0.274962, -0.177473, -0.944934,
		0.707909, -0.702409, -0.074068,
		38.602554, 39.675980, 49.912586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852657, 39.581787, 49.515129>,  <38.107018, 40.167667, 49.964436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852657, 39.581787, 49.515129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138924, 39.444511, 49.758457>,  <38.310684, 39.362148, 49.904453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138924, 39.444511, 49.758457>,  <37.852657, 39.581787, 49.515129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138924, 39.444511, 49.758457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624100, -0.705237, 0.336364,
		0.313573, -0.620374, -0.718894,
		0.715662, -0.343187, 0.608318,
		38.353622, 39.341557, 49.940952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755379, 38.892830, 49.521900>,  <37.852657, 39.581787, 49.515129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755379, 38.892830, 49.521900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961739, 38.968758, 49.856041>,  <38.085556, 39.014313, 50.056526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961739, 38.968758, 49.856041>,  <37.755379, 38.892830, 49.521900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961739, 38.968758, 49.856041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669563, -0.518913, 0.531428,
		0.534351, -0.833485, -0.140612,
		0.515902, 0.189821, 0.835352,
		38.116508, 39.025703, 50.106647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750347, 38.233021, 49.880074>,  <37.755379, 38.892830, 49.521900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750347, 38.233021, 49.880074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885147, 38.478592, 50.165596>,  <37.966026, 38.625935, 50.336910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885147, 38.478592, 50.165596>,  <37.750347, 38.233021, 49.880074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885147, 38.478592, 50.165596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522275, -0.508915, 0.684276,
		0.783363, -0.603409, 0.149131,
		0.337003, 0.613924, 0.713811,
		37.986248, 38.662769, 50.379738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172108, 37.848873, 50.358524>,  <37.750347, 38.233021, 49.880074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172108, 37.848873, 50.358524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096962, 38.163422, 50.593925>,  <38.051872, 38.352150, 50.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096962, 38.163422, 50.593925>,  <38.172108, 37.848873, 50.358524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096962, 38.163422, 50.593925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407531, -0.607566, 0.681749,
		0.893658, -0.111752, 0.434612,
		-0.187869, 0.786368, 0.588498,
		38.040600, 38.399330, 50.770473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494255, 37.662205, 50.902950>,  <38.172108, 37.848873, 50.358524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494255, 37.662205, 50.902950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191124, 37.911316, 50.980762>,  <38.009247, 38.060783, 51.027451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191124, 37.911316, 50.980762>,  <38.494255, 37.662205, 50.902950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191124, 37.911316, 50.980762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464141, -0.724126, 0.510112,
		0.458553, 0.296287, 0.837820,
		-0.757827, 0.622780, 0.194531,
		37.963776, 38.098148, 51.039124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292717, 37.380253, 51.476860>,  <38.494255, 37.662205, 50.902950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292717, 37.380253, 51.476860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992847, 37.633087, 51.398407>,  <37.812927, 37.784786, 51.351334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992847, 37.633087, 51.398407>,  <38.292717, 37.380253, 51.476860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992847, 37.633087, 51.398407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634986, -0.603451, 0.482327,
		0.186515, 0.486127, 0.853752,
		-0.749670, 0.632082, -0.196131,
		37.767948, 37.822712, 51.339569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063625, 37.539711, 52.185394>,  <38.292717, 37.380253, 51.476860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063625, 37.539711, 52.185394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783218, 37.592819, 51.905125>,  <37.614975, 37.624683, 51.736961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783218, 37.592819, 51.905125>,  <38.063625, 37.539711, 52.185394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783218, 37.592819, 51.905125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645945, -0.534579, 0.544959,
		-0.302211, 0.834624, 0.460512,
		-0.701016, 0.132773, -0.700677,
		37.572914, 37.632652, 51.694923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422955, 37.693417, 52.520336>,  <38.063625, 37.539711, 52.185394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422955, 37.693417, 52.520336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287773, 37.616264, 52.151863>,  <37.206665, 37.569973, 51.930779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287773, 37.616264, 52.151863>,  <37.422955, 37.693417, 52.520336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287773, 37.616264, 52.151863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850857, -0.355745, 0.386637,
		-0.402281, 0.914464, -0.043888,
		-0.337953, -0.192879, -0.921187,
		37.186386, 37.558399, 51.875507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769184, 37.956745, 52.473080>,  <37.422955, 37.693417, 52.520336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769184, 37.956745, 52.473080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803852, 37.681725, 52.184700>,  <36.824654, 37.516712, 52.011673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803852, 37.681725, 52.184700>,  <36.769184, 37.956745, 52.473080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803852, 37.681725, 52.184700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906104, -0.355195, 0.229809,
		-0.414082, 0.633336, -0.653775,
		0.086671, -0.687547, -0.720948,
		36.829853, 37.475460, 51.968414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107758, 37.901878, 52.125858>,  <36.769184, 37.956745, 52.473080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107758, 37.901878, 52.125858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296616, 37.555405, 52.060375>,  <36.409931, 37.347519, 52.021084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296616, 37.555405, 52.060375>,  <36.107758, 37.901878, 52.125858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296616, 37.555405, 52.060375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834042, -0.499073, 0.235159,
		-0.285394, 0.025511, -0.958071,
		0.472148, -0.866184, -0.163710,
		36.438259, 37.295547, 52.011261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614010, 37.457504, 51.901867>,  <36.107758, 37.901878, 52.125858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614010, 37.457504, 51.901867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887451, 37.183403, 52.002357>,  <36.051517, 37.018944, 52.062653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887451, 37.183403, 52.002357>,  <35.614010, 37.457504, 51.901867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887451, 37.183403, 52.002357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729828, -0.644659, 0.227521,
		0.006048, -0.338888, -0.940807,
		0.683604, -0.685252, 0.251228,
		36.092533, 36.977829, 52.077724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354195, 36.804890, 51.698673>,  <35.614010, 37.457504, 51.901867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354195, 36.804890, 51.698673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634964, 36.708015, 51.966599>,  <35.803425, 36.649891, 52.127354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634964, 36.708015, 51.966599>,  <35.354195, 36.804890, 51.698673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634964, 36.708015, 51.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641160, -0.624403, 0.446133,
		0.310183, -0.742607, -0.593566,
		0.701926, -0.242188, 0.669809,
		35.845543, 36.635361, 52.167542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191757, 36.099167, 51.798485>,  <35.354195, 36.804890, 51.698673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191757, 36.099167, 51.798485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434357, 36.203217, 52.099018>,  <35.579914, 36.265644, 52.279339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434357, 36.203217, 52.099018>,  <35.191757, 36.099167, 51.798485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434357, 36.203217, 52.099018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419506, -0.698040, 0.580307,
		0.675410, -0.667141, -0.314235,
		0.606495, 0.260122, 0.751333,
		35.616306, 36.281254, 52.324417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210972, 35.478130, 52.135197>,  <35.191757, 36.099167, 51.798485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210972, 35.478130, 52.135197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357529, 35.745178, 52.394436>,  <35.445465, 35.905407, 52.549980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357529, 35.745178, 52.394436>,  <35.210972, 35.478130, 52.135197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357529, 35.745178, 52.394436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350043, -0.546465, 0.760819,
		0.862105, -0.505623, 0.033475,
		0.366394, 0.667623, 0.648100,
		35.467445, 35.945465, 52.588867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538006, 35.074898, 52.599667>,  <35.210972, 35.478130, 52.135197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538006, 35.074898, 52.599667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479057, 35.420837, 52.791630>,  <35.443687, 35.628403, 52.906807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479057, 35.420837, 52.791630>,  <35.538006, 35.074898, 52.599667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479057, 35.420837, 52.791630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416375, -0.494364, 0.763044,
		0.897169, -0.087368, 0.432959,
		-0.147374, 0.864853, 0.479906,
		35.434845, 35.680294, 52.935600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837681, 35.059013, 53.267189>,  <35.538006, 35.074898, 52.599667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837681, 35.059013, 53.267189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548164, 35.333260, 53.298302>,  <35.374454, 35.497807, 53.316971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548164, 35.333260, 53.298302>,  <35.837681, 35.059013, 53.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548164, 35.333260, 53.298302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400658, -0.509369, 0.761588,
		0.561780, 0.520067, 0.643376,
		-0.723793, 0.685619, 0.077784,
		35.331028, 35.538944, 53.321636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654701, 34.959953, 53.956974>,  <35.837681, 35.059013, 53.267189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654701, 34.959953, 53.956974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352730, 35.169136, 53.798687>,  <35.171547, 35.294647, 53.703712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352730, 35.169136, 53.798687>,  <35.654701, 34.959953, 53.956974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352730, 35.169136, 53.798687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618690, -0.367808, 0.694220,
		0.217499, 0.768916, 0.601218,
		-0.754929, 0.522959, -0.395722,
		35.126251, 35.326023, 53.679970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300663, 35.393707, 54.537788>,  <35.654701, 34.959953, 53.956974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300663, 35.393707, 54.537788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040741, 35.334236, 54.239620>,  <34.884789, 35.298553, 54.060719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040741, 35.334236, 54.239620>,  <35.300663, 35.393707, 54.537788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040741, 35.334236, 54.239620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680317, -0.323614, 0.657603,
		-0.339001, 0.934434, 0.109136,
		-0.649805, -0.148681, -0.745417,
		34.845798, 35.289631, 54.015995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744995, 35.649197, 54.842621>,  <35.300663, 35.393707, 54.537788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744995, 35.649197, 54.842621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638260, 35.416527, 54.535255>,  <34.574219, 35.276924, 54.350838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638260, 35.416527, 54.535255>,  <34.744995, 35.649197, 54.842621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638260, 35.416527, 54.535255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471355, -0.616681, 0.630498,
		-0.840608, 0.530434, -0.109622,
		-0.266836, -0.581674, -0.768410,
		34.558208, 35.242023, 54.304733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024521, 35.569981, 54.883183>,  <34.744995, 35.649197, 54.842621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024521, 35.569981, 54.883183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114998, 35.254486, 54.654541>,  <34.169285, 35.065189, 54.517357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114998, 35.254486, 54.654541>,  <34.024521, 35.569981, 54.883183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114998, 35.254486, 54.654541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528656, -0.592271, 0.608060,
		-0.818143, 0.164639, -0.550941,
		0.226196, -0.788738, -0.571600,
		34.182858, 35.017864, 54.483063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402794, 35.190125, 54.816193>,  <34.024521, 35.569981, 54.883183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402794, 35.190125, 54.816193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713856, 34.948288, 54.747234>,  <33.900494, 34.803188, 54.705860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713856, 34.948288, 54.747234>,  <33.402794, 35.190125, 54.816193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713856, 34.948288, 54.747234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420103, -0.703737, 0.572946,
		-0.467719, -0.373132, -0.801256,
		0.777659, -0.604588, -0.172397,
		33.947155, 34.766911, 54.695515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104855, 34.532845, 54.900146>,  <33.402794, 35.190125, 54.816193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104855, 34.532845, 54.900146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481754, 34.416824, 54.833183>,  <33.707893, 34.347210, 54.793003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481754, 34.416824, 54.833183>,  <33.104855, 34.532845, 54.900146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481754, 34.416824, 54.833183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158668, -0.826857, 0.539566,
		-0.294928, -0.481846, -0.825132,
		0.942254, -0.290055, -0.167410,
		33.764431, 34.329807, 54.782959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121456, 33.839119, 54.589230>,  <33.104855, 34.532845, 54.900146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121456, 33.839119, 54.589230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440529, 33.928017, 54.813484>,  <33.631973, 33.981354, 54.948036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440529, 33.928017, 54.813484>,  <33.121456, 33.839119, 54.589230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440529, 33.928017, 54.813484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317245, -0.635968, 0.703491,
		0.512894, -0.739020, -0.436794,
		0.797681, 0.222246, 0.560635,
		33.679832, 33.994690, 54.981674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500790, 33.241600, 54.860939>,  <33.121456, 33.839119, 54.589230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500790, 33.241600, 54.860939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568382, 33.536751, 55.122318>,  <33.608936, 33.713840, 55.279144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568382, 33.536751, 55.122318>,  <33.500790, 33.241600, 54.860939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568382, 33.536751, 55.122318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097011, -0.647307, 0.756031,
		0.980834, -0.191145, -0.037801,
		0.168980, 0.737873, 0.653444,
		33.619076, 33.758114, 55.318352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116112, 33.114330, 55.268295>,  <33.500790, 33.241600, 54.860939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116112, 33.114330, 55.268295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832096, 33.293243, 55.485840>,  <33.661686, 33.400593, 55.616367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832096, 33.293243, 55.485840>,  <34.116112, 33.114330, 55.268295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832096, 33.293243, 55.485840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169586, -0.640997, 0.748574,
		0.683438, 0.623747, 0.379279,
		-0.710038, 0.447283, 0.543861,
		33.619083, 33.427429, 55.648998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437862, 33.314266, 55.880596>,  <34.116112, 33.114330, 55.268295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437862, 33.314266, 55.880596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046165, 33.240341, 55.913868>,  <33.811146, 33.195984, 55.933830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046165, 33.240341, 55.913868>,  <34.437862, 33.314266, 55.880596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046165, 33.240341, 55.913868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180793, -0.611074, 0.770651,
		-0.091598, 0.769696, 0.631805,
		-0.979247, -0.184816, 0.083182,
		33.752392, 33.184895, 55.938824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170216, 33.325867, 56.560780>,  <34.437862, 33.314266, 55.880596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170216, 33.325867, 56.560780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929516, 33.066376, 56.374424>,  <33.785095, 32.910679, 56.262611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929516, 33.066376, 56.374424>,  <34.170216, 33.325867, 56.560780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929516, 33.066376, 56.374424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352082, -0.739042, 0.574331,
		-0.716897, 0.181570, 0.673120,
		-0.601745, -0.648729, -0.465890,
		33.748993, 32.871758, 56.234657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419640, 33.449142, 56.790260>,  <34.170216, 33.325867, 56.560780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419640, 33.449142, 56.790260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225029, 33.487602, 57.137604>,  <33.108261, 33.510677, 57.346008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225029, 33.487602, 57.137604>,  <33.419640, 33.449142, 56.790260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225029, 33.487602, 57.137604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722852, -0.513929, 0.461911,
		0.490688, 0.852427, 0.180538,
		-0.486529, 0.096151, 0.868357,
		33.079071, 33.516449, 57.398109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943798, 34.054039, 56.772205>,  <33.419640, 33.449142, 56.790260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943798, 34.054039, 56.772205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039925, 34.300201, 57.072479>,  <33.097603, 34.447899, 57.252644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039925, 34.300201, 57.072479>,  <32.943798, 34.054039, 56.772205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039925, 34.300201, 57.072479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932243, 0.069179, -0.355157,
		-0.270498, 0.785168, -0.557084,
		0.240319, 0.615407, 0.750680,
		33.112019, 34.484825, 57.297684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166546, 34.803757, 56.601463>,  <32.943798, 34.054039, 56.772205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166546, 34.803757, 56.601463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345940, 34.630287, 56.914074>,  <33.453575, 34.526203, 57.101639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345940, 34.630287, 56.914074>,  <33.166546, 34.803757, 56.601463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345940, 34.630287, 56.914074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865705, -0.006708, -0.500510,
		0.222303, 0.901043, 0.372429,
		0.448483, -0.433678, 0.781528,
		33.480484, 34.500183, 57.148533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787354, 35.219936, 56.788231>,  <33.166546, 34.803757, 56.601463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787354, 35.219936, 56.788231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828518, 34.854889, 56.946487>,  <33.853218, 34.635860, 57.041443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828518, 34.854889, 56.946487>,  <33.787354, 35.219936, 56.788231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828518, 34.854889, 56.946487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958763, -0.014921, -0.283815,
		0.264919, 0.408536, 0.873451,
		0.102916, -0.912620, 0.395642,
		33.859394, 34.581104, 57.065182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412682, 35.152706, 57.178474>,  <33.787354, 35.219936, 56.788231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412682, 35.152706, 57.178474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321804, 34.789528, 57.037605>,  <34.267277, 34.571621, 56.953083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321804, 34.789528, 57.037605>,  <34.412682, 35.152706, 57.178474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321804, 34.789528, 57.037605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899691, -0.057268, -0.432754,
		0.372748, -0.415163, 0.829879,
		-0.227190, -0.907943, -0.352172,
		34.253647, 34.517143, 56.931953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969040, 34.708672, 57.341625>,  <34.412682, 35.152706, 57.178474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969040, 34.708672, 57.341625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773243, 34.534126, 57.039635>,  <34.655766, 34.429401, 56.858440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773243, 34.534126, 57.039635>,  <34.969040, 34.708672, 57.341625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773243, 34.534126, 57.039635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871990, -0.250731, -0.420437,
		-0.005834, -0.864132, 0.503231,
		-0.489489, -0.436360, -0.754978,
		34.626396, 34.403217, 56.813141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212036, 34.025410, 57.247566>,  <34.969040, 34.708672, 57.341625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212036, 34.025410, 57.247566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090660, 34.185295, 56.901581>,  <35.017834, 34.281227, 56.693989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090660, 34.185295, 56.901581>,  <35.212036, 34.025410, 57.247566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090660, 34.185295, 56.901581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906938, -0.157228, -0.390824,
		-0.292212, -0.903057, -0.314802,
		-0.303441, 0.399709, -0.864960,
		34.999626, 34.305206, 56.642094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494709, 33.672596, 56.635483>,  <35.212036, 34.025410, 57.247566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494709, 33.672596, 56.635483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386898, 34.021362, 56.471962>,  <35.322212, 34.230621, 56.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386898, 34.021362, 56.471962>,  <35.494709, 33.672596, 56.635483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386898, 34.021362, 56.471962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898547, 0.075025, -0.432417,
		-0.346361, -0.483874, -0.803679,
		-0.269531, 0.871916, -0.408798,
		35.306038, 34.282936, 56.349323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761787, 33.643551, 55.958221>,  <35.494709, 33.672596, 56.635483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761787, 33.643551, 55.958221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690567, 34.032478, 56.018730>,  <35.647835, 34.265835, 56.055035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690567, 34.032478, 56.018730>,  <35.761787, 33.643551, 55.958221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690567, 34.032478, 56.018730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877874, 0.226412, -0.421989,
		-0.444560, 0.057663, -0.893891,
		-0.178054, 0.972323, 0.151274,
		35.637150, 34.324177, 56.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852505, 33.895950, 55.297386>,  <35.761787, 33.643551, 55.958221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852505, 33.895950, 55.297386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909782, 34.172668, 55.580490>,  <35.944149, 34.338699, 55.750351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909782, 34.172668, 55.580490>,  <35.852505, 33.895950, 55.297386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909782, 34.172668, 55.580490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854814, 0.273957, -0.440728,
		-0.498787, 0.668110, -0.552124,
		0.143197, 0.691792, 0.707756,
		35.952740, 34.380207, 55.792816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068859, 34.546616, 54.924038>,  <35.852505, 33.895950, 55.297386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068859, 34.546616, 54.924038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172974, 34.618439, 55.303513>,  <36.235443, 34.661533, 55.531197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172974, 34.618439, 55.303513>,  <36.068859, 34.546616, 54.924038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172974, 34.618439, 55.303513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851987, 0.419576, -0.313167,
		-0.454279, 0.889783, -0.043773,
		0.260285, 0.179560, 0.948689,
		36.251060, 34.672306, 55.588120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229050, 35.259727, 55.003609>,  <36.068859, 34.546616, 54.924038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229050, 35.259727, 55.003609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433144, 35.059654, 55.283459>,  <36.555599, 34.939610, 55.451370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433144, 35.059654, 55.283459>,  <36.229050, 35.259727, 55.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433144, 35.059654, 55.283459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842946, 0.452205, -0.291466,
		-0.170588, 0.738464, 0.652358,
		0.510236, -0.500182, 0.699627,
		36.586216, 34.909599, 55.493347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826618, 35.694122, 55.061085>,  <36.229050, 35.259727, 55.003609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826618, 35.694122, 55.061085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934364, 35.378403, 55.281792>,  <36.999012, 35.188972, 55.414215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934364, 35.378403, 55.281792>,  <36.826618, 35.694122, 55.061085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934364, 35.378403, 55.281792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962569, 0.202772, -0.179845,
		0.030068, 0.579561, 0.814374,
		0.269364, -0.789298, 0.551771,
		37.015175, 35.141613, 55.447323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279572, 35.835533, 55.500286>,  <36.826618, 35.694122, 55.061085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279572, 35.835533, 55.500286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396729, 35.453529, 55.481651>,  <37.467022, 35.224327, 55.470470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396729, 35.453529, 55.481651>,  <37.279572, 35.835533, 55.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396729, 35.453529, 55.481651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950652, 0.296083, -0.092712,
		0.102333, -0.017131, 0.994603,
		0.292896, -0.955009, -0.046584,
		37.484596, 35.167027, 55.467674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836689, 35.794914, 55.941551>,  <37.279572, 35.835533, 55.500286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836689, 35.794914, 55.941551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892075, 35.467255, 55.718903>,  <37.925308, 35.270660, 55.585316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892075, 35.467255, 55.718903>,  <37.836689, 35.794914, 55.941551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892075, 35.467255, 55.718903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951706, 0.265559, -0.154057,
		0.274010, -0.508405, 0.816360,
		0.138468, -0.819148, -0.556618,
		37.933617, 35.221512, 55.551918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487411, 35.705441, 56.033871>,  <37.836689, 35.794914, 55.941551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487411, 35.705441, 56.033871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423126, 35.499275, 55.697178>,  <38.384556, 35.375576, 55.495163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423126, 35.499275, 55.697178>,  <38.487411, 35.705441, 56.033871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423126, 35.499275, 55.697178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871866, 0.325593, -0.365841,
		0.462623, -0.792676, 0.397045,
		-0.160718, -0.515416, -0.841734,
		38.374912, 35.344650, 55.444656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171654, 35.407047, 55.748089>,  <38.487411, 35.705441, 56.033871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171654, 35.407047, 55.748089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915222, 35.431747, 55.442093>,  <38.761364, 35.446568, 55.258495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915222, 35.431747, 55.442093>,  <39.171654, 35.407047, 55.748089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915222, 35.431747, 55.442093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711669, 0.420969, -0.562417,
		0.287303, -0.904971, -0.313823,
		-0.641081, 0.061754, -0.764985,
		38.722897, 35.450275, 55.212597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586517, 35.223724, 55.191601>,  <39.171654, 35.407047, 55.748089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586517, 35.223724, 55.191601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269875, 35.411736, 55.035431>,  <39.079887, 35.524540, 54.941727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269875, 35.411736, 55.035431>,  <39.586517, 35.223724, 55.191601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269875, 35.411736, 55.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600502, 0.480343, -0.639271,
		-0.112934, -0.740505, -0.662494,
		-0.791608, 0.470025, -0.390428,
		39.032391, 35.552742, 54.918301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666996, 35.265358, 54.519550>,  <39.586517, 35.223724, 55.191601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666996, 35.265358, 54.519550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403542, 35.565063, 54.547256>,  <39.245468, 35.744888, 54.563881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403542, 35.565063, 54.547256>,  <39.666996, 35.265358, 54.519550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403542, 35.565063, 54.547256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483195, 0.491715, -0.724389,
		-0.576821, -0.443638, -0.685903,
		-0.658635, 0.749268, 0.069268,
		39.205952, 35.789845, 54.568035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524105, 35.411659, 53.763012>,  <39.666996, 35.265358, 54.519550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524105, 35.411659, 53.763012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408142, 35.730301, 53.975193>,  <39.338562, 35.921486, 54.102501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408142, 35.730301, 53.975193>,  <39.524105, 35.411659, 53.763012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408142, 35.730301, 53.975193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576679, 0.587736, -0.567457,
		-0.763802, 0.141387, -0.629775,
		-0.289911, 0.796603, 0.530449,
		39.321167, 35.969280, 54.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166317, 35.940868, 53.333008>,  <39.524105, 35.411659, 53.763012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166317, 35.940868, 53.333008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278755, 36.162720, 53.646278>,  <39.346218, 36.295830, 53.834240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278755, 36.162720, 53.646278>,  <39.166317, 35.940868, 53.333008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278755, 36.162720, 53.646278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491100, 0.618001, -0.613918,
		-0.824502, 0.557191, -0.098657,
		0.281100, 0.554628, 0.783180,
		39.363087, 36.329109, 53.881233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044228, 36.605419, 53.217709>,  <39.166317, 35.940868, 53.333008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044228, 36.605419, 53.217709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337898, 36.646431, 53.486176>,  <39.514103, 36.671040, 53.647255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337898, 36.646431, 53.486176>,  <39.044228, 36.605419, 53.217709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337898, 36.646431, 53.486176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468265, 0.639338, -0.609898,
		-0.491638, 0.762059, 0.421376,
		0.734180, 0.102534, 0.671169,
		39.558151, 36.677193, 53.687527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255779, 37.317574, 53.118580>,  <39.044228, 36.605419, 53.217709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255779, 37.317574, 53.118580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558640, 37.167770, 53.332672>,  <39.740356, 37.077888, 53.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558640, 37.167770, 53.332672>,  <39.255779, 37.317574, 53.118580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558640, 37.167770, 53.332672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651258, 0.496584, -0.573818,
		-0.050891, 0.783040, 0.619887,
		0.757148, -0.374504, 0.535232,
		39.785786, 37.055420, 53.493240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627056, 37.838837, 53.311058>,  <39.255779, 37.317574, 53.118580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627056, 37.838837, 53.311058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873142, 37.524002, 53.328941>,  <40.020794, 37.335102, 53.339672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873142, 37.524002, 53.328941>,  <39.627056, 37.838837, 53.311058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873142, 37.524002, 53.328941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627831, 0.454856, -0.631612,
		0.476796, 0.416651, 0.773994,
		0.615218, -0.787088, 0.044713,
		40.057709, 37.287876, 53.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328125, 38.114021, 53.493435>,  <39.627056, 37.838837, 53.311058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328125, 38.114021, 53.493435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369995, 37.762672, 53.306885>,  <40.395119, 37.551865, 53.194954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369995, 37.762672, 53.306885>,  <40.328125, 38.114021, 53.493435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369995, 37.762672, 53.306885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748955, 0.378156, -0.544118,
		0.654300, -0.292338, 0.697445,
		0.104677, -0.878372, -0.466376,
		40.401398, 37.499161, 53.166973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087143, 38.115147, 53.451382>,  <40.328125, 38.114021, 53.493435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087143, 38.115147, 53.451382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929527, 37.841248, 53.206154>,  <40.834957, 37.676907, 53.059017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929527, 37.841248, 53.206154>,  <41.087143, 38.115147, 53.451382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929527, 37.841248, 53.206154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649248, 0.264759, -0.713008,
		0.650547, -0.678985, 0.340247,
		-0.394039, -0.684749, -0.613068,
		40.811317, 37.635822, 53.022232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683765, 37.769390, 53.210861>,  <41.087143, 38.115147, 53.451382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683765, 37.769390, 53.210861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404602, 37.699158, 52.933128>,  <41.237103, 37.657017, 52.766491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404602, 37.699158, 52.933128>,  <41.683765, 37.769390, 53.210861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404602, 37.699158, 52.933128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637309, 0.290041, -0.713942,
		0.326737, -0.940770, -0.090525,
		-0.697912, -0.175579, -0.694329,
		41.195229, 37.646484, 52.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946613, 37.376377, 52.707142>,  <41.683765, 37.769390, 53.210861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946613, 37.376377, 52.707142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646454, 37.553543, 52.510891>,  <41.466358, 37.659843, 52.393139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646454, 37.553543, 52.510891>,  <41.946613, 37.376377, 52.707142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646454, 37.553543, 52.510891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626335, 0.239325, -0.741908,
		-0.211186, -0.864029, -0.457006,
		-0.750403, 0.442920, -0.490629,
		41.421333, 37.686420, 52.363701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053337, 37.198315, 51.960773>,  <41.946613, 37.376377, 52.707142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053337, 37.198315, 51.960773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826508, 37.527390, 51.976799>,  <41.690411, 37.724834, 51.986412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826508, 37.527390, 51.976799>,  <42.053337, 37.198315, 51.960773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826508, 37.527390, 51.976799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454903, 0.353368, -0.817431,
		-0.686648, -0.445323, -0.574631,
		-0.567078, 0.822690, 0.040061,
		41.656384, 37.774197, 51.988819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965408, 37.359589, 51.320011>,  <42.053337, 37.198315, 51.960773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965408, 37.359589, 51.320011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842072, 37.711594, 51.464516>,  <41.768070, 37.922794, 51.551220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842072, 37.711594, 51.464516>,  <41.965408, 37.359589, 51.320011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842072, 37.711594, 51.464516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447349, 0.469293, -0.761343,
		-0.839526, -0.073142, -0.538373,
		-0.308341, 0.880008, 0.361264,
		41.749569, 37.975597, 51.572895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794662, 37.764950, 50.711575>,  <41.965408, 37.359589, 51.320011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794662, 37.764950, 50.711575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841560, 38.011589, 51.022972>,  <41.869698, 38.159573, 51.209812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841560, 38.011589, 51.022972>,  <41.794662, 37.764950, 50.711575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841560, 38.011589, 51.022972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466565, 0.657809, -0.591274,
		-0.876682, 0.432542, -0.210561,
		0.117242, 0.616599, 0.778498,
		41.876732, 38.196568, 51.256523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621220, 38.459316, 50.433018>,  <41.794662, 37.764950, 50.711575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621220, 38.459316, 50.433018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824509, 38.514191, 50.773109>,  <41.946480, 38.547115, 50.977165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824509, 38.514191, 50.773109>,  <41.621220, 38.459316, 50.433018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824509, 38.514191, 50.773109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545693, 0.712469, -0.441144,
		-0.666283, 0.688162, 0.287227,
		0.508219, 0.137189, 0.850231,
		41.976974, 38.555347, 51.028179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630676, 39.207066, 50.536942>,  <41.621220, 38.459316, 50.433018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630676, 39.207066, 50.536942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939705, 39.058105, 50.742641>,  <42.125122, 38.968731, 50.866062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939705, 39.058105, 50.742641>,  <41.630676, 39.207066, 50.536942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939705, 39.058105, 50.742641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621458, 0.609460, -0.492289,
		-0.130088, 0.699914, 0.702280,
		0.772572, -0.372396, 0.514251,
		42.171478, 38.946388, 50.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942898, 39.784260, 50.674248>,  <41.630676, 39.207066, 50.536942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942898, 39.784260, 50.674248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228725, 39.515068, 50.750668>,  <42.400223, 39.353554, 50.796520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228725, 39.515068, 50.750668>,  <41.942898, 39.784260, 50.674248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228725, 39.515068, 50.750668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687290, 0.624399, -0.371157,
		0.130491, 0.396521, 0.908704,
		0.714566, -0.672976, 0.191046,
		42.443096, 39.313175, 50.807983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362579, 40.164940, 50.991409>,  <41.942898, 39.784260, 50.674248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362579, 40.164940, 50.991409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552261, 39.856934, 50.820663>,  <42.666069, 39.672131, 50.718216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552261, 39.856934, 50.820663>,  <42.362579, 40.164940, 50.991409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552261, 39.856934, 50.820663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623416, 0.636030, -0.454773,
		0.621677, -0.050456, 0.781647,
		0.474205, -0.770013, -0.426860,
		42.694523, 39.625931, 50.692604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110325, 40.336571, 51.147884>,  <42.362579, 40.164940, 50.991409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110325, 40.336571, 51.147884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134407, 40.054726, 50.865070>,  <43.148857, 39.885616, 50.695381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134407, 40.054726, 50.865070>,  <43.110325, 40.336571, 51.147884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134407, 40.054726, 50.865070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720864, 0.520640, -0.457482,
		0.690457, -0.482133, 0.539274,
		0.060201, -0.704615, -0.707032,
		43.152466, 39.843342, 50.652962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797806, 40.063271, 51.109783>,  <43.110325, 40.336571, 51.147884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797806, 40.063271, 51.109783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631718, 40.032669, 50.747185>,  <43.532066, 40.014309, 50.529625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631718, 40.032669, 50.747185>,  <43.797806, 40.063271, 51.109783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631718, 40.032669, 50.747185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783391, 0.476511, -0.399043,
		0.462485, -0.875834, -0.137924,
		-0.415218, -0.076503, -0.906500,
		43.507153, 40.009720, 50.475235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330273, 39.755005, 50.684273>,  <43.797806, 40.063271, 51.109783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330273, 39.755005, 50.684273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059692, 39.900070, 50.427868>,  <43.897346, 39.987110, 50.274025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059692, 39.900070, 50.427868>,  <44.330273, 39.755005, 50.684273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059692, 39.900070, 50.427868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734952, 0.388663, -0.555686,
		0.047614, -0.847006, -0.529447,
		-0.676446, 0.362659, -0.641014,
		43.856758, 40.008869, 50.235565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546783, 39.603779, 50.022232>,  <44.330273, 39.755005, 50.684273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546783, 39.603779, 50.022232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290970, 39.900398, 49.941132>,  <44.137482, 40.078369, 49.892471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290970, 39.900398, 49.941132>,  <44.546783, 39.603779, 50.022232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290970, 39.900398, 49.941132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601075, 0.317900, -0.733245,
		-0.479280, -0.590803, -0.649032,
		-0.639531, 0.741547, -0.202754,
		44.099110, 40.122864, 49.880306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517269, 39.543209, 49.334244>,  <44.546783, 39.603779, 50.022232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517269, 39.543209, 49.334244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404686, 39.912811, 49.437771>,  <44.337135, 40.134575, 49.499889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404686, 39.912811, 49.437771>,  <44.517269, 39.543209, 49.334244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404686, 39.912811, 49.437771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636487, 0.381620, -0.670262,
		-0.718100, -0.023913, -0.695529,
		-0.281455, 0.924010, 0.258821,
		44.320248, 40.190014, 49.515419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421661, 39.942429, 48.700230>,  <44.517269, 39.543209, 49.334244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421661, 39.942429, 48.700230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471954, 40.227539, 48.976242>,  <44.502129, 40.398605, 49.141850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471954, 40.227539, 48.976242>,  <44.421661, 39.942429, 48.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471954, 40.227539, 48.976242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618458, 0.487537, -0.616293,
		-0.775694, 0.504244, -0.379522,
		0.125731, 0.712773, 0.690033,
		44.509674, 40.441372, 49.183250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554562, 40.602882, 48.365723>,  <44.421661, 39.942429, 48.700230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554562, 40.602882, 48.365723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702896, 40.678398, 48.729446>,  <44.791897, 40.723709, 48.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702896, 40.678398, 48.729446>,  <44.554562, 40.602882, 48.365723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702896, 40.678398, 48.729446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791025, 0.448787, -0.415776,
		-0.486581, 0.873468, 0.017086,
		0.370835, 0.188793, 0.909307,
		44.814148, 40.735035, 49.002239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639343, 41.289658, 48.372955>,  <44.554562, 40.602882, 48.365723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639343, 41.289658, 48.372955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889839, 41.134499, 48.643467>,  <45.040138, 41.041401, 48.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889839, 41.134499, 48.643467>,  <44.639343, 41.289658, 48.372955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889839, 41.134499, 48.643467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762610, 0.485033, -0.427982,
		-0.162003, 0.783757, 0.599566,
		0.626243, -0.387901, 0.676278,
		45.077713, 41.018127, 48.846352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094475, 41.902615, 48.608356>,  <44.639343, 41.289658, 48.372955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094475, 41.902615, 48.608356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295624, 41.581879, 48.737465>,  <45.416313, 41.389439, 48.814930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295624, 41.581879, 48.737465>,  <45.094475, 41.902615, 48.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295624, 41.581879, 48.737465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863931, 0.454458, -0.217006,
		0.027316, 0.387980, 0.921263,
		0.502869, -0.801835, 0.322774,
		45.446484, 41.341328, 48.834297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603397, 42.160950, 49.086796>,  <45.094475, 41.902615, 48.608356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603397, 42.160950, 49.086796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753120, 41.805176, 48.981873>,  <45.842953, 41.591713, 48.918919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753120, 41.805176, 48.981873>,  <45.603397, 42.160950, 49.086796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753120, 41.805176, 48.981873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901548, 0.415254, -0.121558,
		0.217041, -0.190980, 0.957298,
		0.374307, -0.889433, -0.262304,
		45.865414, 41.538345, 48.903183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176662, 42.016739, 49.478523>,  <45.603397, 42.160950, 49.086796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176662, 42.016739, 49.478523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251495, 41.798485, 49.151775>,  <46.296394, 41.667530, 48.955727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251495, 41.798485, 49.151775>,  <46.176662, 42.016739, 49.478523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251495, 41.798485, 49.151775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888055, 0.449427, -0.096811,
		0.419948, -0.707315, 0.568638,
		0.187085, -0.545638, -0.816871,
		46.307621, 41.634792, 48.906715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740982, 41.776882, 50.040535>,  <46.176662, 42.016739, 49.478523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740982, 41.776882, 50.040535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078468, 41.819405, 50.250996>,  <46.280960, 41.844917, 50.377274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.078468, 41.819405, 50.250996>,  <45.740982, 41.776882, 50.040535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.078468, 41.819405, 50.250996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448287, -0.399614, 0.799592,
		0.295258, -0.910499, -0.289507,
		0.843718, 0.106303, 0.526154,
		46.331585, 41.851295, 50.408840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990635, 41.085091, 50.309097>,  <45.740982, 41.776882, 50.040535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990635, 41.085091, 50.309097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114365, 41.403816, 50.516712>,  <46.188602, 41.595051, 50.641281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114365, 41.403816, 50.516712>,  <45.990635, 41.085091, 50.309097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114365, 41.403816, 50.516712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491980, -0.332993, 0.804407,
		0.813801, -0.504182, 0.289014,
		0.309328, 0.796817, 0.519037,
		46.207165, 41.642860, 50.672424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244686, 40.874561, 50.943584>,  <45.990635, 41.085091, 50.309097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244686, 40.874561, 50.943584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121254, 41.248688, 51.012821>,  <46.047195, 41.473164, 51.054363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121254, 41.248688, 51.012821>,  <46.244686, 40.874561, 50.943584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121254, 41.248688, 51.012821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536036, -0.321315, 0.780655,
		0.785776, 0.148112, 0.600515,
		-0.308579, 0.935318, 0.173088,
		46.028679, 41.529282, 51.064747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474560, 40.956562, 51.558441>,  <46.244686, 40.874561, 50.943584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474560, 40.956562, 51.558441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175743, 41.214249, 51.492828>,  <45.996452, 41.368862, 51.453461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175743, 41.214249, 51.492828>,  <46.474560, 40.956562, 51.558441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175743, 41.214249, 51.492828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442455, -0.297680, 0.845943,
		0.496143, 0.704535, 0.507418,
		-0.747044, 0.644219, -0.164033,
		45.951630, 41.407513, 51.443619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315449, 41.142185, 52.282688>,  <46.474560, 40.956562, 51.558441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315449, 41.142185, 52.282688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000824, 41.265984, 52.068947>,  <45.812050, 41.340263, 51.940701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000824, 41.265984, 52.068947>,  <46.315449, 41.142185, 52.282688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000824, 41.265984, 52.068947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604050, -0.205896, 0.769890,
		0.128258, 0.928341, 0.348901,
		-0.786558, 0.309498, -0.534357,
		45.764858, 41.358833, 51.908638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861385, 41.473869, 52.773800>,  <46.315449, 41.142185, 52.282688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861385, 41.473869, 52.773800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614433, 41.384354, 52.472137>,  <45.466263, 41.330643, 52.291138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614433, 41.384354, 52.472137>,  <45.861385, 41.473869, 52.773800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614433, 41.384354, 52.472137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676962, -0.337183, 0.654240,
		-0.400704, 0.914453, 0.056672,
		-0.617381, -0.223792, -0.754161,
		45.429218, 41.317215, 52.245888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211262, 41.822247, 52.870186>,  <45.861385, 41.473869, 52.773800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211262, 41.822247, 52.870186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116718, 41.514214, 52.633167>,  <45.059994, 41.329395, 52.490955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116718, 41.514214, 52.633167>,  <45.211262, 41.822247, 52.870186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116718, 41.514214, 52.633167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706396, -0.282549, 0.648977,
		-0.667188, 0.571962, -0.477200,
		-0.236358, -0.770082, -0.592545,
		45.045811, 41.283188, 52.455402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452244, 41.896667, 52.769791>,  <45.211262, 41.822247, 52.870186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452244, 41.896667, 52.769791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565212, 41.524460, 52.676525>,  <44.632996, 41.301136, 52.620567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565212, 41.524460, 52.676525>,  <44.452244, 41.896667, 52.769791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565212, 41.524460, 52.676525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673131, -0.365407, 0.642941,
		-0.683470, -0.024633, -0.729563,
		0.282426, -0.930522, -0.233164,
		44.649940, 41.245304, 52.606575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819134, 41.584915, 52.619633>,  <44.452244, 41.896667, 52.769791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819134, 41.584915, 52.619633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087982, 41.303429, 52.711754>,  <44.249290, 41.134537, 52.767025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087982, 41.303429, 52.711754>,  <43.819134, 41.584915, 52.619633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087982, 41.303429, 52.711754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642653, -0.399935, 0.653490,
		-0.367761, -0.587233, -0.721048,
		0.672123, -0.703712, 0.230306,
		44.289619, 41.092316, 52.780846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354877, 41.105301, 52.744049>,  <43.819134, 41.584915, 52.619633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354877, 41.105301, 52.744049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696850, 40.948578, 52.880039>,  <43.902031, 40.854542, 52.961636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696850, 40.948578, 52.880039>,  <43.354877, 41.105301, 52.744049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696850, 40.948578, 52.880039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515455, -0.567893, 0.641719,
		-0.058361, -0.723866, -0.687467,
		0.854927, -0.391810, 0.339978,
		43.953327, 40.831036, 52.982033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307415, 40.339119, 52.696899>,  <43.354877, 41.105301, 52.744049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307415, 40.339119, 52.696899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574314, 40.440674, 52.976994>,  <43.734451, 40.501606, 53.145050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574314, 40.440674, 52.976994>,  <43.307415, 40.339119, 52.696899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574314, 40.440674, 52.976994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460269, -0.598591, 0.655623,
		0.585607, -0.759757, -0.282550,
		0.667246, 0.253888, 0.700231,
		43.774487, 40.516842, 53.187061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406963, 39.744110, 53.001263>,  <43.307415, 40.339119, 52.696899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406963, 39.744110, 53.001263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537155, 40.008224, 53.271988>,  <43.615273, 40.166695, 53.434422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537155, 40.008224, 53.271988>,  <43.406963, 39.744110, 53.001263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537155, 40.008224, 53.271988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565002, -0.438135, 0.699150,
		0.758178, -0.609963, 0.230461,
		0.325482, 0.660291, 0.676815,
		43.634800, 40.206310, 53.475033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770538, 39.431282, 53.502991>,  <43.406963, 39.744110, 53.001263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770538, 39.431282, 53.502991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654800, 39.756371, 53.705280>,  <43.585358, 39.951424, 53.826653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654800, 39.756371, 53.705280>,  <43.770538, 39.431282, 53.502991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654800, 39.756371, 53.705280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382903, -0.582483, 0.717007,
		0.877306, 0.013819, 0.479733,
		-0.289345, 0.812725, 0.505724,
		43.567997, 40.000187, 53.856998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942055, 39.300549, 54.184628>,  <43.770538, 39.431282, 53.502991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942055, 39.300549, 54.184628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673241, 39.596016, 54.205589>,  <43.511951, 39.773296, 54.218166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673241, 39.596016, 54.205589>,  <43.942055, 39.300549, 54.184628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673241, 39.596016, 54.205589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539894, -0.537163, 0.648051,
		0.506843, 0.407219, 0.759792,
		-0.672031, 0.738667, 0.052402,
		43.471630, 39.817616, 54.221310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790901, 39.433212, 54.909992>,  <43.942055, 39.300549, 54.184628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790901, 39.433212, 54.909992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480682, 39.609756, 54.729446>,  <43.294552, 39.715683, 54.621120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480682, 39.609756, 54.729446>,  <43.790901, 39.433212, 54.909992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480682, 39.609756, 54.729446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627390, -0.459541, 0.628652,
		0.070042, 0.770730, 0.633301,
		-0.775549, 0.441358, -0.451361,
		43.248016, 39.742165, 54.594040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340485, 39.599236, 55.507309>,  <43.790901, 39.433212, 54.909992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340485, 39.599236, 55.507309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130116, 39.610291, 55.167274>,  <43.003895, 39.616924, 54.963253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130116, 39.610291, 55.167274>,  <43.340485, 39.599236, 55.507309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130116, 39.610291, 55.167274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753114, -0.479597, 0.450339,
		-0.395250, 0.877053, 0.273048,
		-0.525925, 0.027640, -0.850082,
		42.972340, 39.618584, 54.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721138, 39.776691, 55.787361>,  <43.340485, 39.599236, 55.507309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721138, 39.776691, 55.787361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666466, 39.603310, 55.431061>,  <42.633663, 39.499279, 55.217281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666466, 39.603310, 55.431061>,  <42.721138, 39.776691, 55.787361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666466, 39.603310, 55.431061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787172, -0.498368, 0.363304,
		-0.601396, 0.750832, -0.273083,
		-0.136684, -0.433453, -0.890750,
		42.625462, 39.473274, 55.163837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016975, 39.825554, 55.559982>,  <42.721138, 39.776691, 55.787361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016975, 39.825554, 55.559982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143272, 39.528656, 55.323547>,  <42.219051, 39.350517, 55.181686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143272, 39.528656, 55.323547>,  <42.016975, 39.825554, 55.559982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143272, 39.528656, 55.323547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697194, -0.604039, 0.386079,
		-0.643603, 0.290199, -0.708209,
		0.315746, -0.742241, -0.591086,
		42.237995, 39.305984, 55.146221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412415, 39.526886, 55.314430>,  <42.016975, 39.825554, 55.559982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412415, 39.526886, 55.314430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694412, 39.244888, 55.283535>,  <41.863613, 39.075691, 55.264999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694412, 39.244888, 55.283535>,  <41.412415, 39.526886, 55.314430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694412, 39.244888, 55.283535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646014, -0.683294, 0.340257,
		-0.292653, -0.189985, -0.937155,
		0.704996, -0.704993, -0.077235,
		41.905910, 39.033390, 55.260365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099949, 39.068607, 54.867851>,  <41.412415, 39.526886, 55.314430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099949, 39.068607, 54.867851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384289, 38.877762, 55.074562>,  <41.554893, 38.763252, 55.198589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384289, 38.877762, 55.074562>,  <41.099949, 39.068607, 54.867851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384289, 38.877762, 55.074562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660569, -0.705203, 0.257559,
		0.241544, -0.524450, -0.816462,
		0.710848, -0.477118, 0.516773,
		41.597542, 38.734627, 55.229595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882664, 38.441311, 54.838146>,  <41.099949, 39.068607, 54.867851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882664, 38.441311, 54.838146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140949, 38.421303, 55.142921>,  <41.295921, 38.409298, 55.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140949, 38.421303, 55.142921>,  <40.882664, 38.441311, 54.838146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140949, 38.421303, 55.142921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615575, -0.624512, 0.480679,
		0.451795, -0.779412, -0.434049,
		0.645716, -0.050021, 0.761938,
		41.334663, 38.406296, 55.371502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086918, 37.759235, 55.053696>,  <40.882664, 38.441311, 54.838146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086918, 37.759235, 55.053696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116638, 37.999680, 55.371979>,  <41.134468, 38.143948, 55.562946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116638, 37.999680, 55.371979>,  <41.086918, 37.759235, 55.053696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116638, 37.999680, 55.371979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548655, -0.641654, 0.535965,
		0.832741, -0.476389, 0.282129,
		0.074298, 0.601111, 0.795704,
		41.138927, 38.180012, 55.610691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282658, 37.387875, 55.574085>,  <41.086918, 37.759235, 55.053696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282658, 37.387875, 55.574085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123138, 37.703773, 55.760532>,  <41.027428, 37.893314, 55.872398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123138, 37.703773, 55.760532>,  <41.282658, 37.387875, 55.574085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123138, 37.703773, 55.760532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579155, -0.610988, 0.539697,
		0.711014, -0.054723, 0.701046,
		-0.398797, 0.789746, 0.466114,
		41.003498, 37.940697, 55.900368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071541, 37.127716, 56.286819>,  <41.282658, 37.387875, 55.574085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071541, 37.127716, 56.286819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866142, 37.446747, 56.160210>,  <40.742905, 37.638165, 56.084244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866142, 37.446747, 56.160210>,  <41.071541, 37.127716, 56.286819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866142, 37.446747, 56.160210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847523, -0.413691, 0.332514,
		0.134263, 0.439006, 0.888396,
		-0.513496, 0.797580, -0.316524,
		40.712093, 37.686020, 56.065254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706173, 37.293934, 56.893944>,  <41.071541, 37.127716, 56.286819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706173, 37.293934, 56.893944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511375, 37.475708, 56.595596>,  <40.394497, 37.584774, 56.416588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511375, 37.475708, 56.595596>,  <40.706173, 37.293934, 56.893944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511375, 37.475708, 56.595596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872371, -0.211590, 0.440679,
		0.042441, 0.865286, 0.499479,
		-0.486998, 0.454434, -0.745870,
		40.365276, 37.612038, 56.371834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163586, 37.631992, 57.272614>,  <40.706173, 37.293934, 56.893944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163586, 37.631992, 57.272614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051247, 37.636101, 56.888733>,  <39.983841, 37.638565, 56.658405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051247, 37.636101, 56.888733>,  <40.163586, 37.631992, 57.272614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051247, 37.636101, 56.888733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951483, -0.133960, 0.277011,
		-0.125714, 0.990933, 0.047399,
		-0.280849, 0.010275, -0.959697,
		39.966991, 37.639183, 56.600822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631706, 38.115746, 57.232094>,  <40.163586, 37.631992, 57.272614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631706, 38.115746, 57.232094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592934, 37.871063, 56.918045>,  <39.569672, 37.724255, 56.729614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592934, 37.871063, 56.918045>,  <39.631706, 38.115746, 57.232094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592934, 37.871063, 56.918045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963710, -0.139450, 0.227631,
		-0.248729, 0.778696, -0.575992,
		-0.096933, -0.611708, -0.785122,
		39.563854, 37.687550, 56.682507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058853, 38.439613, 56.926544>,  <39.631706, 38.115746, 57.232094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058853, 38.439613, 56.926544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100975, 38.056625, 56.819088>,  <39.126247, 37.826832, 56.754616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100975, 38.056625, 56.819088>,  <39.058853, 38.439613, 56.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100975, 38.056625, 56.819088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992909, -0.116216, 0.025003,
		-0.055160, 0.264103, -0.962916,
		0.105302, -0.957467, -0.268640,
		39.132565, 37.769386, 56.738495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466133, 38.359692, 56.456261>,  <39.058853, 38.439613, 56.926544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466133, 38.359692, 56.456261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577797, 37.984673, 56.539272>,  <38.644794, 37.759659, 56.589081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577797, 37.984673, 56.539272>,  <38.466133, 38.359692, 56.456261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577797, 37.984673, 56.539272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959101, -0.282782, 0.012635,
		0.046839, -0.202569, -0.978147,
		0.279162, -0.937550, 0.207530,
		38.661545, 37.703407, 56.601532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030487, 37.973377, 56.049637>,  <38.466133, 38.359692, 56.456261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030487, 37.973377, 56.049637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143372, 37.733147, 56.348881>,  <38.211102, 37.589008, 56.528427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143372, 37.733147, 56.348881>,  <38.030487, 37.973377, 56.049637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143372, 37.733147, 56.348881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951226, -0.276453, 0.136905,
		0.124594, -0.750255, -0.649302,
		0.282215, -0.600575, 0.748107,
		38.228035, 37.552975, 56.573315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584114, 37.361843, 56.036682>,  <38.030487, 37.973377, 56.049637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584114, 37.361843, 56.036682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730293, 37.335266, 56.408066>,  <37.818001, 37.319321, 56.630898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730293, 37.335266, 56.408066>,  <37.584114, 37.361843, 56.036682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730293, 37.335266, 56.408066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871169, -0.375774, 0.316002,
		0.327895, -0.924326, -0.195208,
		0.365443, -0.066443, 0.928459,
		37.839928, 37.315334, 56.686604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433475, 36.686527, 56.209293>,  <37.584114, 37.361843, 56.036682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433475, 36.686527, 56.209293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491184, 36.882317, 56.553295>,  <37.525810, 36.999790, 56.759697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491184, 36.882317, 56.553295>,  <37.433475, 36.686527, 56.209293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491184, 36.882317, 56.553295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877501, -0.338406, 0.339815,
		0.457359, -0.803678, 0.380689,
		0.144275, 0.489472, 0.860001,
		37.534466, 37.029160, 56.811295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158028, 36.305386, 56.700874>,  <37.433475, 36.686527, 56.209293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158028, 36.305386, 56.700874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154545, 36.647858, 56.907520>,  <37.152454, 36.853340, 57.031506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154545, 36.647858, 56.907520>,  <37.158028, 36.305386, 56.700874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154545, 36.647858, 56.907520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863845, -0.266670, 0.427386,
		0.503682, -0.442549, 0.741926,
		-0.008710, 0.856176, 0.516610,
		37.151932, 36.904709, 57.062504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112823, 36.241257, 57.469528>,  <37.158028, 36.305386, 56.700874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112823, 36.241257, 57.469528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973213, 36.604507, 57.377022>,  <36.889446, 36.822456, 57.321518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973213, 36.604507, 57.377022>,  <37.112823, 36.241257, 57.469528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973213, 36.604507, 57.377022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807139, -0.165932, 0.566562,
		0.476136, 0.384412, 0.790900,
		-0.349029, 0.908127, -0.231268,
		36.868504, 36.876945, 57.307640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818535, 36.437870, 58.077442>,  <37.112823, 36.241257, 57.469528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818535, 36.437870, 58.077442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660294, 36.695572, 57.815624>,  <36.565350, 36.850193, 57.658531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660294, 36.695572, 57.815624>,  <36.818535, 36.437870, 58.077442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660294, 36.695572, 57.815624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875135, -0.048210, 0.481471,
		0.278635, 0.763288, 0.582884,
		-0.395602, 0.644257, -0.654548,
		36.541615, 36.888847, 57.619259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240982, 36.748119, 58.496208>,  <36.818535, 36.437870, 58.077442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240982, 36.748119, 58.496208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163239, 36.905403, 58.136742>,  <36.116592, 36.999775, 57.921062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163239, 36.905403, 58.136742>,  <36.240982, 36.748119, 58.496208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163239, 36.905403, 58.136742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923582, 0.235300, 0.302706,
		0.330485, 0.888830, 0.317430,
		-0.194363, 0.393212, -0.898670,
		36.104931, 37.023365, 57.867142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941986, 37.303635, 58.634869>,  <36.240982, 36.748119, 58.496208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941986, 37.303635, 58.634869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820938, 37.220245, 58.262856>,  <35.748310, 37.170212, 58.039646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820938, 37.220245, 58.262856>,  <35.941986, 37.303635, 58.634869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820938, 37.220245, 58.262856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948650, 0.160190, 0.272767,
		0.092119, 0.964821, -0.246241,
		-0.302617, -0.208470, -0.930034,
		35.730152, 37.157703, 57.983845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426895, 37.881207, 58.429871>,  <35.941986, 37.303635, 58.634869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426895, 37.881207, 58.429871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343536, 37.567558, 58.196045>,  <35.293522, 37.379368, 58.055748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343536, 37.567558, 58.196045>,  <35.426895, 37.881207, 58.429871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343536, 37.567558, 58.196045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964982, 0.067489, 0.253487,
		-0.159314, 0.616922, -0.770731,
		-0.208398, -0.784125, -0.584567,
		35.281017, 37.332321, 58.020676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766201, 37.866943, 58.124096>,  <35.426895, 37.881207, 58.429871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766201, 37.866943, 58.124096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533417, 38.181557, 58.041458>,  <34.393745, 38.370327, 57.991875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533417, 38.181557, 58.041458>,  <34.766201, 37.866943, 58.124096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533417, 38.181557, 58.041458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780840, 0.469481, -0.412161,
		-0.227187, -0.401180, -0.887379,
		-0.581958, 0.786538, -0.206597,
		34.358829, 38.417519, 57.979481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775188, 38.019730, 57.411480>,  <34.766201, 37.866943, 58.124096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775188, 38.019730, 57.411480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670403, 38.357758, 57.597908>,  <34.607533, 38.560574, 57.709766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670403, 38.357758, 57.597908>,  <34.775188, 38.019730, 57.411480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670403, 38.357758, 57.597908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803985, 0.458240, -0.378977,
		-0.533838, 0.275439, -0.799469,
		-0.261964, 0.845074, 0.466075,
		34.591812, 38.611279, 57.737732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805611, 38.671864, 56.966358>,  <34.775188, 38.019730, 57.411480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805611, 38.671864, 56.966358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826061, 38.842697, 57.327465>,  <34.838333, 38.945198, 57.544128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826061, 38.842697, 57.327465>,  <34.805611, 38.671864, 56.966358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826061, 38.842697, 57.327465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744695, 0.586013, -0.319404,
		-0.665444, 0.688616, -0.288083,
		0.051127, 0.427080, 0.902768,
		34.841400, 38.970821, 57.598297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986900, 39.270164, 56.766582>,  <34.805611, 38.671864, 56.966358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986900, 39.270164, 56.766582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078819, 39.281029, 57.155727>,  <35.133972, 39.287548, 57.389214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078819, 39.281029, 57.155727>,  <34.986900, 39.270164, 56.766582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078819, 39.281029, 57.155727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827162, 0.521278, -0.209934,
		-0.512832, 0.852955, 0.097324,
		0.229797, 0.027158, 0.972860,
		35.147758, 39.289177, 57.447586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123402, 39.965469, 56.974377>,  <34.986900, 39.270164, 56.766582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123402, 39.965469, 56.974377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311939, 39.755356, 57.257759>,  <35.425064, 39.629288, 57.427788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311939, 39.755356, 57.257759>,  <35.123402, 39.965469, 56.974377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311939, 39.755356, 57.257759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779872, 0.623369, -0.056666,
		-0.411864, 0.579214, 0.703477,
		0.471347, -0.525283, 0.708455,
		35.453342, 39.597771, 57.470295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389206, 40.512966, 57.334667>,  <35.123402, 39.965469, 56.974377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389206, 40.512966, 57.334667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607437, 40.187752, 57.415977>,  <35.738377, 39.992622, 57.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607437, 40.187752, 57.415977>,  <35.389206, 40.512966, 57.334667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607437, 40.187752, 57.415977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826597, 0.562026, 0.029395,
		-0.138146, 0.151991, 0.978680,
		0.545575, -0.813035, 0.203277,
		35.771111, 39.943840, 57.476959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937321, 40.756992, 57.869133>,  <35.389206, 40.512966, 57.334667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937321, 40.756992, 57.869133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061142, 40.414459, 57.703789>,  <36.135437, 40.208939, 57.604580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061142, 40.414459, 57.703789>,  <35.937321, 40.756992, 57.869133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061142, 40.414459, 57.703789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938785, 0.344350, -0.010332,
		0.151189, -0.384860, 0.910508,
		0.309557, -0.856333, -0.413363,
		36.154011, 40.157558, 57.579781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583405, 40.723839, 58.144844>,  <35.937321, 40.756992, 57.869133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583405, 40.723839, 58.144844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603905, 40.444672, 57.859108>,  <36.616207, 40.277172, 57.687664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603905, 40.444672, 57.859108>,  <36.583405, 40.723839, 58.144844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603905, 40.444672, 57.859108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980175, 0.172231, -0.097945,
		0.191390, -0.695163, 0.692906,
		0.051252, -0.697915, -0.714344,
		36.619282, 40.235298, 57.644806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198833, 40.300373, 58.238140>,  <36.583405, 40.723839, 58.144844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198833, 40.300373, 58.238140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122307, 40.267166, 57.846935>,  <37.076393, 40.247242, 57.612213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122307, 40.267166, 57.846935>,  <37.198833, 40.300373, 58.238140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122307, 40.267166, 57.846935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970095, 0.135655, -0.201280,
		0.149382, -0.987272, 0.054579,
		-0.191315, -0.083015, -0.978012,
		37.064911, 40.242260, 57.553532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757477, 39.924915, 58.003937>,  <37.198833, 40.300373, 58.238140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757477, 39.924915, 58.003937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597565, 40.089287, 57.676201>,  <37.501617, 40.187908, 57.479561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597565, 40.089287, 57.676201>,  <37.757477, 39.924915, 58.003937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597565, 40.089287, 57.676201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915893, 0.143709, -0.374816,
		-0.036277, -0.900269, -0.433819,
		-0.399779, 0.410929, -0.819337,
		37.477631, 40.212566, 57.430401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177700, 39.730896, 57.533619>,  <37.757477, 39.924915, 58.003937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177700, 39.730896, 57.533619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989674, 40.038460, 57.360271>,  <37.876858, 40.223000, 57.256264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989674, 40.038460, 57.360271>,  <38.177700, 39.730896, 57.533619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989674, 40.038460, 57.360271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869275, 0.318209, -0.378291,
		-0.152971, -0.554541, -0.817976,
		-0.470065, 0.768913, -0.433372,
		37.848656, 40.269135, 57.230259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325966, 39.628910, 56.806149>,  <38.177700, 39.730896, 57.533619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325966, 39.628910, 56.806149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214172, 40.010147, 56.852631>,  <38.147095, 40.238888, 56.880520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214172, 40.010147, 56.852631>,  <38.325966, 39.628910, 56.806149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214172, 40.010147, 56.852631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788273, 0.296872, -0.538973,
		-0.548190, -0.059031, -0.834268,
		-0.279487, 0.953091, 0.116209,
		38.130325, 40.296074, 56.887493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275555, 39.959751, 56.158298>,  <38.325966, 39.628910, 56.806149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275555, 39.959751, 56.158298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325581, 40.242813, 56.436459>,  <38.355598, 40.412651, 56.603355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325581, 40.242813, 56.436459>,  <38.275555, 39.959751, 56.158298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325581, 40.242813, 56.436459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728097, 0.410662, -0.548846,
		-0.673968, 0.574962, -0.463880,
		0.125068, 0.707654, 0.695402,
		38.363102, 40.455109, 56.645081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302612, 40.565552, 55.695766>,  <38.275555, 39.959751, 56.158298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302612, 40.565552, 55.695766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494072, 40.647736, 56.037216>,  <38.608948, 40.697044, 56.242088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494072, 40.647736, 56.037216>,  <38.302612, 40.565552, 55.695766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494072, 40.647736, 56.037216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693078, 0.508444, -0.511006,
		-0.539011, 0.836225, 0.100970,
		0.478654, 0.205458, 0.853626,
		38.637669, 40.709373, 56.293304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565228, 41.241398, 55.728672>,  <38.302612, 40.565552, 55.695766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565228, 41.241398, 55.728672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788399, 41.064629, 56.009647>,  <38.922302, 40.958565, 56.178234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788399, 41.064629, 56.009647>,  <38.565228, 41.241398, 55.728672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788399, 41.064629, 56.009647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816321, 0.444680, -0.368619,
		-0.149457, 0.779077, 0.608853,
		0.557927, -0.441927, 0.702437,
		38.955776, 40.932049, 56.220379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040699, 41.749378, 55.907024>,  <38.565228, 41.241398, 55.728672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040699, 41.749378, 55.907024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221714, 41.430328, 56.066528>,  <39.330322, 41.238899, 56.162231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221714, 41.430328, 56.066528>,  <39.040699, 41.749378, 55.907024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221714, 41.430328, 56.066528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889563, 0.435054, -0.139303,
		-0.062370, 0.417760, 0.906414,
		0.452534, -0.797624, 0.398759,
		39.357475, 41.191040, 56.186157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583340, 41.997231, 56.265533>,  <39.040699, 41.749378, 55.907024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583340, 41.997231, 56.265533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693359, 41.617714, 56.203392>,  <39.759373, 41.390003, 56.166107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693359, 41.617714, 56.203392>,  <39.583340, 41.997231, 56.265533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693359, 41.617714, 56.203392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942299, 0.298110, -0.152326,
		0.190838, -0.104490, 0.976044,
		0.275052, -0.948795, -0.155352,
		39.775875, 41.333076, 56.156788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268505, 41.791847, 56.645123>,  <39.583340, 41.997231, 56.265533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268505, 41.791847, 56.645123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236012, 41.539604, 56.336388>,  <40.216515, 41.388260, 56.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236012, 41.539604, 56.336388>,  <40.268505, 41.791847, 56.645123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236012, 41.539604, 56.336388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959835, 0.159159, -0.231054,
		0.268549, -0.759606, 0.592351,
		-0.081232, -0.630608, -0.771838,
		40.211643, 41.350422, 56.104836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995544, 41.678139, 56.538628>,  <40.268505, 41.791847, 56.645123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995544, 41.678139, 56.538628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833221, 41.505325, 56.216469>,  <40.735828, 41.401638, 56.023174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833221, 41.505325, 56.216469>,  <40.995544, 41.678139, 56.538628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833221, 41.505325, 56.216469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881868, 0.046364, -0.469212,
		0.240056, -0.900666, 0.362179,
		-0.405812, -0.432031, -0.805398,
		40.711479, 41.375717, 55.974850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478989, 41.130169, 56.335808>,  <40.995544, 41.678139, 56.538628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478989, 41.130169, 56.335808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251625, 41.223549, 56.020237>,  <41.115208, 41.279575, 55.830894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251625, 41.223549, 56.020237>,  <41.478989, 41.130169, 56.335808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251625, 41.223549, 56.020237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805531, -0.037218, -0.591384,
		-0.167420, -0.971657, -0.166895,
		-0.568411, 0.233449, -0.788930,
		41.081100, 41.293583, 55.783558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760948, 40.705940, 55.833942>,  <41.478989, 41.130169, 56.335808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760948, 40.705940, 55.833942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562107, 40.992424, 55.638012>,  <41.442802, 41.164314, 55.520454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562107, 40.992424, 55.638012>,  <41.760948, 40.705940, 55.833942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562107, 40.992424, 55.638012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812830, 0.186831, -0.551726,
		-0.303640, -0.672408, -0.675034,
		-0.497102, 0.716214, -0.489824,
		41.412975, 41.207287, 55.491066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912022, 40.529202, 55.143608>,  <41.760948, 40.705940, 55.833942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912022, 40.529202, 55.143608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819080, 40.916763, 55.177658>,  <41.763317, 41.149300, 55.198090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819080, 40.916763, 55.177658>,  <41.912022, 40.529202, 55.143608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819080, 40.916763, 55.177658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764076, 0.235981, -0.600417,
		-0.601832, -0.074464, -0.795143,
		-0.232349, 0.968900, 0.085125,
		41.749374, 41.207432, 55.203194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949432, 40.701553, 54.516300>,  <41.912022, 40.529202, 55.143608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949432, 40.701553, 54.516300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961189, 41.052368, 54.708107>,  <41.968243, 41.262859, 54.823193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961189, 41.052368, 54.708107>,  <41.949432, 40.701553, 54.516300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961189, 41.052368, 54.708107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712806, 0.317924, -0.625165,
		-0.700745, 0.360177, -0.615816,
		0.029388, 0.877039, 0.479520,
		41.970005, 41.315479, 54.851963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863319, 41.368061, 53.950703>,  <41.949432, 40.701553, 54.516300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863319, 41.368061, 53.950703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014637, 41.527618, 54.284836>,  <42.105427, 41.623352, 54.485313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014637, 41.527618, 54.284836>,  <41.863319, 41.368061, 53.950703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014637, 41.527618, 54.284836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443765, 0.713793, -0.541823,
		-0.812384, 0.575658, 0.093007,
		0.378293, 0.398895, 0.835331,
		42.128124, 41.647285, 54.535435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733223, 42.093624, 53.861279>,  <41.863319, 41.368061, 53.950703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733223, 42.093624, 53.861279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042366, 42.033890, 54.107979>,  <42.227852, 41.998047, 54.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042366, 42.033890, 54.107979>,  <41.733223, 42.093624, 53.861279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042366, 42.033890, 54.107979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503583, 0.735723, -0.452896,
		-0.386125, 0.660612, 0.643816,
		0.772859, -0.149340, 0.616754,
		42.274223, 41.989086, 54.293007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997635, 42.755211, 53.974739>,  <41.733223, 42.093624, 53.861279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997635, 42.755211, 53.974739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307434, 42.521446, 54.071575>,  <42.493313, 42.381187, 54.129677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307434, 42.521446, 54.071575>,  <41.997635, 42.755211, 53.974739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307434, 42.521446, 54.071575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607634, 0.580939, -0.541564,
		0.175861, 0.566542, 0.805049,
		0.774503, -0.584415, 0.242086,
		42.539783, 42.346123, 54.144199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385418, 43.227032, 54.093346>,  <41.997635, 42.755211, 53.974739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385418, 43.227032, 54.093346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628746, 42.915138, 54.034058>,  <42.774742, 42.728004, 53.998486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628746, 42.915138, 54.034058>,  <42.385418, 43.227032, 54.093346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628746, 42.915138, 54.034058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614434, 0.580855, -0.533927,
		0.502413, 0.233726, 0.832438,
		0.608318, -0.779731, -0.148220,
		42.811241, 42.681217, 53.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984745, 43.459034, 54.170185>,  <42.385418, 43.227032, 54.093346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984745, 43.459034, 54.170185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071152, 43.119621, 53.976971>,  <43.122997, 42.915974, 53.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071152, 43.119621, 53.976971>,  <42.984745, 43.459034, 54.170185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071152, 43.119621, 53.976971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702841, 0.478541, -0.526321,
		0.677755, -0.225805, 0.699757,
		0.216017, -0.848534, -0.483039,
		43.135956, 42.865063, 53.832058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687851, 43.359226, 54.246937>,  <42.984745, 43.459034, 54.170185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687851, 43.359226, 54.246937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587616, 43.134468, 53.931602>,  <43.527477, 42.999615, 53.742401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587616, 43.134468, 53.931602>,  <43.687851, 43.359226, 54.246937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587616, 43.134468, 53.931602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695813, 0.461641, -0.550212,
		0.673092, -0.686411, 0.275295,
		-0.250584, -0.561897, -0.788340,
		43.512440, 42.965900, 53.695099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350601, 43.211052, 53.957901>,  <43.687851, 43.359226, 54.246937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350601, 43.211052, 53.957901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091446, 43.152237, 53.658936>,  <43.935955, 43.116947, 53.479557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091446, 43.152237, 53.658936>,  <44.350601, 43.211052, 53.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091446, 43.152237, 53.658936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625894, 0.456494, -0.632353,
		0.434170, -0.877493, -0.203725,
		-0.647884, -0.147039, -0.747413,
		43.897079, 43.108124, 53.434711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857426, 42.971252, 53.456470>,  <44.350601, 43.211052, 53.957901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857426, 42.971252, 53.456470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519650, 43.097672, 53.283478>,  <44.316986, 43.173523, 53.179684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519650, 43.097672, 53.283478>,  <44.857426, 42.971252, 53.456470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519650, 43.097672, 53.283478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526602, 0.341990, -0.778289,
		-0.098073, -0.884961, -0.455220,
		-0.844436, 0.316049, -0.432482,
		44.266319, 43.192486, 53.153732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036179, 42.892555, 52.811481>,  <44.857426, 42.971252, 53.456470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036179, 42.892555, 52.811481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711578, 43.125740, 52.795391>,  <44.516819, 43.265652, 52.785736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711578, 43.125740, 52.795391>,  <45.036179, 42.892555, 52.811481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711578, 43.125740, 52.795391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435610, 0.557630, -0.706606,
		-0.389495, -0.590935, -0.706463,
		-0.811503, 0.582962, -0.040223,
		44.468128, 43.300629, 52.783325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964710, 43.012516, 52.133091>,  <45.036179, 42.892555, 52.811481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964710, 43.012516, 52.133091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756905, 43.310898, 52.299778>,  <44.632221, 43.489929, 52.399792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756905, 43.310898, 52.299778>,  <44.964710, 43.012516, 52.133091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756905, 43.310898, 52.299778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495206, 0.660291, -0.564612,
		-0.696333, -0.086960, -0.712431,
		-0.519511, 0.745958, 0.416719,
		44.601051, 43.534687, 52.424793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597923, 43.466789, 51.560955>,  <44.964710, 43.012516, 52.133091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597923, 43.466789, 51.560955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605133, 43.691788, 51.891594>,  <44.609459, 43.826786, 52.089977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605133, 43.691788, 51.891594>,  <44.597923, 43.466789, 51.560955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605133, 43.691788, 51.891594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310366, 0.782749, -0.539424,
		-0.950446, 0.266271, -0.160473,
		0.018023, 0.562499, 0.826602,
		44.610538, 43.860538, 52.139576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343502, 44.110550, 51.366844>,  <44.597923, 43.466789, 51.560955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343502, 44.110550, 51.366844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585213, 44.166710, 51.680565>,  <44.730240, 44.200405, 51.868797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585213, 44.166710, 51.680565>,  <44.343502, 44.110550, 51.366844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585213, 44.166710, 51.680565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446194, 0.755897, -0.479094,
		-0.660118, 0.639459, 0.394128,
		0.604280, 0.140401, 0.784304,
		44.766499, 44.208832, 51.915855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318371, 44.865978, 51.598488>,  <44.343502, 44.110550, 51.366844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318371, 44.865978, 51.598488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660889, 44.716179, 51.740761>,  <44.866398, 44.626301, 51.826126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660889, 44.716179, 51.740761>,  <44.318371, 44.865978, 51.598488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660889, 44.716179, 51.740761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514070, 0.684569, -0.516814,
		-0.049945, 0.625391, 0.778711,
		0.856293, -0.374500, 0.355685,
		44.917778, 44.603828, 51.847466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603085, 45.439186, 51.840496>,  <44.318371, 44.865978, 51.598488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603085, 45.439186, 51.840496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900093, 45.177750, 51.781872>,  <45.078297, 45.020885, 51.746696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900093, 45.177750, 51.781872>,  <44.603085, 45.439186, 51.840496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900093, 45.177750, 51.781872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534877, 0.710268, -0.457632,
		0.403201, 0.261410, 0.876980,
		0.742520, -0.653594, -0.146558,
		45.122849, 44.981670, 51.737904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235645, 45.715698, 51.960556>,  <44.603085, 45.439186, 51.840496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235645, 45.715698, 51.960556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382927, 45.423584, 51.730385>,  <45.471298, 45.248318, 51.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382927, 45.423584, 51.730385>,  <45.235645, 45.715698, 51.960556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382927, 45.423584, 51.730385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641652, 0.647485, -0.411152,
		0.672835, -0.217833, 0.706994,
		0.368206, -0.730282, -0.575424,
		45.493389, 45.204498, 51.557758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939583, 45.769348, 52.063660>,  <45.235645, 45.715698, 51.960556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939583, 45.769348, 52.063660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895363, 45.564522, 51.722939>,  <45.868832, 45.441624, 51.518505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895363, 45.564522, 51.722939>,  <45.939583, 45.769348, 52.063660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895363, 45.564522, 51.722939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695355, 0.572510, -0.434412,
		0.710113, -0.640327, 0.292781,
		-0.110546, -0.512068, -0.851801,
		45.862198, 45.410900, 51.467400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561321, 45.631603, 51.773212>,  <45.939583, 45.769348, 52.063660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561321, 45.631603, 51.773212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330856, 45.619537, 51.446503>,  <46.192577, 45.612297, 51.250477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330856, 45.619537, 51.446503>,  <46.561321, 45.631603, 51.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330856, 45.619537, 51.446503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684845, 0.527631, -0.502586,
		0.446118, -0.848938, -0.283343,
		-0.576165, -0.030166, -0.816777,
		46.158009, 45.610489, 51.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.846985, 41.158348, 51.795719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872040, 40.909027, 51.483932>,  <35.887074, 40.759434, 51.296860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872040, 40.909027, 51.483932>,  <35.846985, 41.158348, 51.795719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872040, 40.909027, 51.483932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790063, 0.508170, -0.342876,
		0.609818, -0.594351, 0.524280,
		0.062635, -0.623306, -0.779466,
		35.890831, 40.722034, 51.250092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598587, 40.975487, 51.807346>,  <35.846985, 41.158348, 51.795719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598587, 40.975487, 51.807346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451740, 40.884872, 51.446480>,  <36.363632, 40.830505, 51.229958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451740, 40.884872, 51.446480>,  <36.598587, 40.975487, 51.807346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451740, 40.884872, 51.446480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821973, 0.374999, -0.428644,
		0.435416, -0.898920, 0.048539,
		-0.367115, -0.226537, -0.902169,
		36.341606, 40.816910, 51.175831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193924, 40.597279, 51.325794>,  <36.598587, 40.975487, 51.807346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193924, 40.597279, 51.325794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931671, 40.766342, 51.075512>,  <36.774319, 40.867783, 50.925343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931671, 40.766342, 51.075512>,  <37.193924, 40.597279, 51.325794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931671, 40.766342, 51.075512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747838, 0.477979, -0.460732,
		0.104339, -0.769995, -0.629460,
		-0.655630, 0.422662, -0.625704,
		36.734982, 40.893143, 50.887802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410965, 40.366230, 50.670750>,  <37.193924, 40.597279, 51.325794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410965, 40.366230, 50.670750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206787, 40.709328, 50.646317>,  <37.084282, 40.915184, 50.631657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206787, 40.709328, 50.646317>,  <37.410965, 40.366230, 50.670750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206787, 40.709328, 50.646317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776357, 0.429138, -0.461638,
		-0.369754, -0.283059, -0.884963,
		-0.510442, 0.857740, -0.061079,
		37.053654, 40.966648, 50.627995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342903, 40.566738, 49.978489>,  <37.410965, 40.366230, 50.670750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342903, 40.566738, 49.978489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279427, 40.923019, 50.148884>,  <37.241341, 41.136787, 50.251122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279427, 40.923019, 50.148884>,  <37.342903, 40.566738, 49.978489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279427, 40.923019, 50.148884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747014, 0.390433, -0.538083,
		-0.645590, 0.232825, -0.727328,
		-0.158694, 0.890705, 0.425983,
		37.231819, 41.190231, 50.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265034, 41.089321, 49.427917>,  <37.342903, 40.566738, 49.978489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265034, 41.089321, 49.427917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365391, 41.306679, 49.748360>,  <37.425606, 41.437092, 49.940624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.365391, 41.306679, 49.748360>,  <37.265034, 41.089321, 49.427917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365391, 41.306679, 49.748360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676168, 0.493840, -0.546735,
		-0.692713, 0.678854, -0.243527,
		0.250890, 0.543396, 0.801109,
		37.440659, 41.469696, 49.988693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387264, 41.773945, 49.201599>,  <37.265034, 41.089321, 49.427917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387264, 41.773945, 49.201599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582024, 41.745735, 49.549843>,  <37.698879, 41.728809, 49.758789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582024, 41.745735, 49.549843>,  <37.387264, 41.773945, 49.201599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582024, 41.745735, 49.549843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832450, 0.339289, -0.438076,
		-0.264490, 0.938035, 0.223911,
		0.486901, -0.070528, 0.870605,
		37.728092, 41.724575, 49.811024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710625, 42.453671, 49.208790>,  <37.387264, 41.773945, 49.201599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710625, 42.453671, 49.208790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904625, 42.239525, 49.485382>,  <38.021027, 42.111038, 49.651337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904625, 42.239525, 49.485382>,  <37.710625, 42.453671, 49.208790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904625, 42.239525, 49.485382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844795, 0.491201, -0.212234,
		-0.226035, 0.687098, 0.690511,
		0.485005, -0.535367, 0.691485,
		38.050125, 42.078915, 49.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154896, 42.950878, 49.504322>,  <37.710625, 42.453671, 49.208790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154896, 42.950878, 49.504322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312382, 42.586967, 49.556931>,  <38.406872, 42.368622, 49.588497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312382, 42.586967, 49.556931>,  <38.154896, 42.950878, 49.504322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312382, 42.586967, 49.556931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914196, 0.372565, -0.159504,
		0.096111, 0.183038, 0.978396,
		0.393712, -0.909776, 0.131525,
		38.430496, 42.314034, 49.596390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737049, 43.083694, 49.906254>,  <38.154896, 42.950878, 49.504322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737049, 43.083694, 49.906254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815033, 42.726334, 49.744354>,  <38.861824, 42.511917, 49.647213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815033, 42.726334, 49.744354>,  <38.737049, 43.083694, 49.906254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815033, 42.726334, 49.744354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968165, 0.241350, -0.066381,
		0.156991, -0.378925, 0.912014,
		0.194961, -0.893401, -0.404752,
		38.873520, 42.458313, 49.622929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352440, 42.986820, 50.150139>,  <38.737049, 43.083694, 49.906254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352440, 42.986820, 50.150139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335251, 42.736031, 49.838997>,  <39.324940, 42.585556, 49.652313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335251, 42.736031, 49.838997>,  <39.352440, 42.986820, 50.150139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335251, 42.736031, 49.838997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961556, 0.185412, -0.202565,
		0.271226, -0.756652, 0.594906,
		-0.042969, -0.626977, -0.777852,
		39.322361, 42.547939, 49.605640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938507, 42.449287, 50.163044>,  <39.352440, 42.986820, 50.150139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938507, 42.449287, 50.163044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.836609, 42.457558, 49.776329>,  <39.775471, 42.462521, 49.544300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.836609, 42.457558, 49.776329>,  <39.938507, 42.449287, 50.163044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836609, 42.457558, 49.776329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964450, 0.078106, -0.252458,
		0.070291, -0.996730, -0.039840,
		-0.254744, 0.020678, -0.966787,
		39.760185, 42.463760, 49.486294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570053, 42.263084, 49.788235>,  <39.938507, 42.449287, 50.163044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570053, 42.263084, 49.788235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.338737, 42.441803, 49.515190>,  <40.199947, 42.549034, 49.351364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.338737, 42.441803, 49.515190>,  <40.570053, 42.263084, 49.788235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338737, 42.441803, 49.515190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799674, 0.476134, -0.365810,
		0.161569, -0.757407, -0.632637,
		-0.578287, 0.446800, -0.682607,
		40.165253, 42.575844, 49.310410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903645, 42.157749, 49.233158>,  <40.570053, 42.263084, 49.788235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903645, 42.157749, 49.233158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659004, 42.464165, 49.154041>,  <40.512218, 42.648014, 49.106571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659004, 42.464165, 49.154041>,  <40.903645, 42.157749, 49.233158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659004, 42.464165, 49.154041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688609, 0.392322, -0.609837,
		-0.389562, -0.509180, -0.767449,
		-0.611604, 0.766041, -0.197791,
		40.475525, 42.693977, 49.094704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931648, 42.228886, 48.566490>,  <40.903645, 42.157749, 49.233158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931648, 42.228886, 48.566490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.801346, 42.593895, 48.665436>,  <40.723164, 42.812901, 48.724804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.801346, 42.593895, 48.665436>,  <40.931648, 42.228886, 48.566490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801346, 42.593895, 48.665436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695114, 0.408503, -0.591558,
		-0.640859, -0.020756, -0.767378,
		-0.325754, 0.912521, 0.247365,
		40.703621, 42.867653, 48.739647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816166, 42.660458, 47.948174>,  <40.931648, 42.228886, 48.566490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816166, 42.660458, 47.948174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830242, 42.929276, 48.244041>,  <40.838688, 43.090569, 48.421562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830242, 42.929276, 48.244041>,  <40.816166, 42.660458, 47.948174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830242, 42.929276, 48.244041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685403, 0.522410, -0.507259,
		-0.727313, 0.524823, -0.442239,
		0.035191, 0.672048, 0.739671,
		40.840801, 43.130890, 48.465942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924858, 43.293148, 47.665123>,  <40.816166, 42.660458, 47.948174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924858, 43.293148, 47.665123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027615, 43.381630, 48.041435>,  <41.089268, 43.434719, 48.267223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.027615, 43.381630, 48.041435>,  <40.924858, 43.293148, 47.665123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027615, 43.381630, 48.041435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776214, 0.532713, -0.337207,
		-0.575759, 0.816876, -0.034849,
		0.256892, 0.221201, 0.940785,
		41.104683, 43.447990, 48.323669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956924, 43.968979, 47.714649>,  <40.924858, 43.293148, 47.665123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956924, 43.968979, 47.714649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184486, 43.851974, 48.022102>,  <41.321022, 43.781773, 48.206573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.184486, 43.851974, 48.022102>,  <40.956924, 43.968979, 47.714649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184486, 43.851974, 48.022102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770334, 0.516810, -0.373486,
		-0.287988, 0.804578, 0.519342,
		0.568901, -0.292508, 0.768629,
		41.355156, 43.764221, 48.252689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280720, 44.579659, 47.940704>,  <40.956924, 43.968979, 47.714649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280720, 44.579659, 47.940704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.491035, 44.262398, 48.063644>,  <41.617226, 44.072041, 48.137409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.491035, 44.262398, 48.063644>,  <41.280720, 44.579659, 47.940704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491035, 44.262398, 48.063644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850008, 0.503561, -0.154635,
		-0.032120, 0.342554, 0.938949,
		0.525789, -0.793147, 0.307348,
		41.648773, 44.024452, 48.155849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800846, 44.904259, 48.319168>,  <41.280720, 44.579659, 47.940704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800846, 44.904259, 48.319168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.949455, 44.535591, 48.274441>,  <42.038620, 44.314392, 48.247604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.949455, 44.535591, 48.274441>,  <41.800846, 44.904259, 48.319168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949455, 44.535591, 48.274441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927539, 0.363200, 0.088080,
		-0.040567, -0.136442, 0.989817,
		0.371519, -0.921667, -0.111822,
		42.060909, 44.259090, 48.240894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313820, 44.970005, 48.786823>,  <41.800846, 44.904259, 48.319168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313820, 44.970005, 48.786823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425655, 44.680595, 48.534367>,  <42.492756, 44.506950, 48.382893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425655, 44.680595, 48.534367>,  <42.313820, 44.970005, 48.786823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425655, 44.680595, 48.534367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885592, 0.448271, -0.121573,
		0.370885, -0.524944, 0.766080,
		0.279592, -0.723524, -0.631143,
		42.509533, 44.463539, 48.345024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028965, 44.629856, 49.033756>,  <42.313820, 44.970005, 48.786823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028965, 44.629856, 49.033756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.974010, 44.592178, 48.639343>,  <42.941036, 44.569572, 48.402695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.974010, 44.592178, 48.639343>,  <43.028965, 44.629856, 49.033756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974010, 44.592178, 48.639343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815823, 0.553791, -0.166576,
		0.561745, -0.827310, 0.000765,
		-0.137386, -0.094198, -0.986028,
		42.932796, 44.563919, 48.343536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756618, 44.664089, 49.194633>,  <43.028965, 44.629856, 49.033756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756618, 44.664089, 49.194633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.772804, 45.009918, 49.394981>,  <43.782516, 45.217415, 49.515190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.772804, 45.009918, 49.394981>,  <43.756618, 44.664089, 49.194633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772804, 45.009918, 49.394981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524372, -0.408330, 0.747195,
		0.850527, -0.292879, 0.436835,
		0.040465, 0.864574, 0.500874,
		43.784943, 45.269291, 49.545242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876774, 44.431644, 49.858330>,  <43.756618, 44.664089, 49.194633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876774, 44.431644, 49.858330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.715633, 44.796486, 49.888748>,  <43.618950, 45.015388, 49.907001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.715633, 44.796486, 49.888748>,  <43.876774, 44.431644, 49.858330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715633, 44.796486, 49.888748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689055, -0.356927, 0.630719,
		0.602423, 0.201683, 0.772276,
		-0.402852, 0.912100, 0.076050,
		43.594776, 45.070114, 49.911564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804729, 44.508331, 50.507553>,  <43.876774, 44.431644, 49.858330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804729, 44.508331, 50.507553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.563374, 44.793434, 50.364506>,  <43.418560, 44.964497, 50.278675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.563374, 44.793434, 50.364506>,  <43.804729, 44.508331, 50.507553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563374, 44.793434, 50.364506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598745, -0.108729, 0.793525,
		0.526707, 0.692932, 0.492366,
		-0.603394, 0.712757, -0.357621,
		43.382355, 45.007263, 50.257221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645889, 44.889473, 51.104923>,  <43.804729, 44.508331, 50.507553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645889, 44.889473, 51.104923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.356552, 44.933044, 50.832188>,  <43.182949, 44.959187, 50.668545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.356552, 44.933044, 50.832188>,  <43.645889, 44.889473, 51.104923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356552, 44.933044, 50.832188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682808, -0.259715, 0.682878,
		-0.102702, 0.959522, 0.262239,
		-0.723344, 0.108926, -0.681842,
		43.139549, 44.965721, 50.627636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118774, 45.171738, 51.371670>,  <43.645889, 44.889473, 51.104923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118774, 45.171738, 51.371670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.911377, 45.021233, 51.064529>,  <42.786938, 44.930927, 50.880245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.911377, 45.021233, 51.064529>,  <43.118774, 45.171738, 51.371670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911377, 45.021233, 51.064529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757559, -0.214338, 0.616575,
		-0.396574, 0.901379, -0.173911,
		-0.518492, -0.376266, -0.767848,
		42.755829, 44.908352, 50.834175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438297, 45.312756, 51.567112>,  <43.118774, 45.171738, 51.371670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438297, 45.312756, 51.567112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.380653, 45.045258, 51.275356>,  <42.346066, 44.884758, 51.100304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.380653, 45.045258, 51.275356>,  <42.438297, 45.312756, 51.567112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380653, 45.045258, 51.275356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720388, -0.434441, 0.540650,
		-0.678435, 0.603359, -0.419148,
		-0.144111, -0.668745, -0.729392,
		42.337421, 44.844635, 51.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647720, 45.251667, 51.547642>,  <42.438297, 45.312756, 51.567112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647720, 45.251667, 51.547642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.789524, 44.930374, 51.356167>,  <41.874607, 44.737598, 51.241283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.789524, 44.930374, 51.356167>,  <41.647720, 45.251667, 51.547642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789524, 44.930374, 51.356167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790403, -0.530941, 0.305558,
		-0.499586, 0.270027, -0.823103,
		0.354510, -0.803235, -0.478681,
		41.895878, 44.689404, 51.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197906, 45.160034, 51.094978>,  <41.647720, 45.251667, 51.547642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197906, 45.160034, 51.094978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.382164, 44.811234, 51.161205>,  <41.492718, 44.601952, 51.200939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.382164, 44.811234, 51.161205>,  <41.197906, 45.160034, 51.094978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382164, 44.811234, 51.161205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875501, -0.415724, 0.246314,
		-0.145958, -0.258416, -0.954944,
		0.460645, -0.872006, 0.165565,
		41.520359, 44.549633, 51.210876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742172, 44.721916, 50.802170>,  <41.197906, 45.160034, 51.094978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742172, 44.721916, 50.802170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.968803, 44.464706, 51.008278>,  <41.104782, 44.310379, 51.131943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.968803, 44.464706, 51.008278>,  <40.742172, 44.721916, 50.802170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968803, 44.464706, 51.008278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815720, -0.526159, 0.240328,
		0.116576, -0.556480, -0.822642,
		0.566578, -0.643029, 0.515270,
		41.138779, 44.271797, 51.162857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563972, 43.944374, 50.653553>,  <40.742172, 44.721916, 50.802170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563972, 43.944374, 50.653553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718567, 43.975388, 51.021164>,  <40.811325, 43.993996, 51.241730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718567, 43.975388, 51.021164>,  <40.563972, 43.944374, 50.653553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718567, 43.975388, 51.021164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751122, -0.551784, 0.362424,
		0.535206, -0.830376, -0.155021,
		0.386486, 0.077532, 0.919031,
		40.834515, 43.998646, 51.296875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602863, 43.302387, 50.877399>,  <40.563972, 43.944374, 50.653553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602863, 43.302387, 50.877399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620201, 43.520927, 51.211971>,  <40.630604, 43.652054, 51.412716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.620201, 43.520927, 51.211971>,  <40.602863, 43.302387, 50.877399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620201, 43.520927, 51.211971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721097, -0.562353, 0.404695,
		0.691477, -0.620689, 0.369600,
		0.043344, 0.546355, 0.836432,
		40.633205, 43.684834, 51.462902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491531, 42.820286, 51.371231>,  <40.602863, 43.302387, 50.877399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491531, 42.820286, 51.371231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.407047, 43.161713, 51.561729>,  <40.356358, 43.366570, 51.676029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.407047, 43.161713, 51.561729>,  <40.491531, 42.820286, 51.371231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407047, 43.161713, 51.561729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764336, -0.447927, 0.463845,
		0.609247, -0.266043, 0.747020,
		-0.211208, 0.853570, 0.476244,
		40.343685, 43.417786, 51.704601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304352, 42.563370, 52.047874>,  <40.491531, 42.820286, 51.371231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304352, 42.563370, 52.047874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.165913, 42.938148, 52.028461>,  <40.082851, 43.163013, 52.016815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.165913, 42.938148, 52.028461>,  <40.304352, 42.563370, 52.047874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165913, 42.938148, 52.028461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832724, -0.282945, 0.475933,
		0.432190, 0.205131, 0.878142,
		-0.346095, 0.936943, -0.048531,
		40.062084, 43.219231, 52.013901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009338, 42.717045, 52.778404>,  <40.304352, 42.563370, 52.047874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009338, 42.717045, 52.778404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830879, 42.955849, 52.511711>,  <39.723804, 43.099129, 52.351696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830879, 42.955849, 52.511711>,  <40.009338, 42.717045, 52.778404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830879, 42.955849, 52.511711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894925, -0.304017, 0.326623,
		-0.007703, 0.742401, 0.669912,
		-0.446149, 0.597005, -0.666735,
		39.697033, 43.134949, 52.311691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595860, 43.135532, 53.216797>,  <40.009338, 42.717045, 52.778404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595860, 43.135532, 53.216797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422249, 43.140022, 52.856464>,  <39.318085, 43.142715, 52.640266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422249, 43.140022, 52.856464>,  <39.595860, 43.135532, 53.216797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422249, 43.140022, 52.856464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871002, -0.260702, 0.416401,
		-0.230174, 0.965354, 0.122930,
		-0.434023, 0.011227, -0.900832,
		39.292042, 43.143391, 52.586216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030361, 43.420540, 53.382011>,  <39.595860, 43.135532, 53.216797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030361, 43.420540, 53.382011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947449, 43.227722, 53.041500>,  <38.897701, 43.112030, 52.837193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947449, 43.227722, 53.041500>,  <39.030361, 43.420540, 53.382011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947449, 43.227722, 53.041500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839002, -0.359909, 0.408094,
		-0.503101, 0.798810, -0.329836,
		-0.207279, -0.482045, -0.851274,
		38.885265, 43.083107, 52.786118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354538, 43.429020, 53.393326>,  <39.030361, 43.420540, 53.382011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354538, 43.429020, 53.393326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429855, 43.140640, 53.126556>,  <38.475048, 42.967613, 52.966496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429855, 43.140640, 53.126556>,  <38.354538, 43.429020, 53.393326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429855, 43.140640, 53.126556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824381, -0.485112, 0.291655,
		-0.533798, 0.494879, -0.685678,
		0.188297, -0.720945, -0.666920,
		38.486343, 42.924358, 52.926479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657425, 43.141472, 53.018333>,  <38.354538, 43.429020, 53.393326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657425, 43.141472, 53.018333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933430, 42.852165, 53.007271>,  <38.099033, 42.678581, 53.000633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933430, 42.852165, 53.007271>,  <37.657425, 43.141472, 53.018333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933430, 42.852165, 53.007271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689972, -0.668827, 0.276781,
		-0.218686, -0.171898, -0.960535,
		0.690010, -0.723271, -0.027658,
		38.140434, 42.635185, 52.998974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.423668, 42.686214, 52.440987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672684, 42.487648, 52.682983>,  <37.822094, 42.368507, 52.828182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672684, 42.487648, 52.682983>,  <37.423668, 42.686214, 52.440987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672684, 42.487648, 52.682983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735225, -0.635855, 0.234804,
		0.268129, -0.590982, -0.760820,
		0.622536, -0.496416, 0.604996,
		37.859444, 42.338722, 52.864483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221943, 41.998745, 52.265724>,  <37.423668, 42.686214, 52.440987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221943, 41.998745, 52.265724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416061, 41.961960, 52.613525>,  <37.532532, 41.939888, 52.822205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416061, 41.961960, 52.613525>,  <37.221943, 41.998745, 52.265724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416061, 41.961960, 52.613525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655405, -0.696491, 0.292138,
		0.578733, -0.711648, -0.398278,
		0.485297, -0.091963, 0.869500,
		37.561649, 41.934372, 52.874374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507393, 41.282375, 52.319672>,  <37.221943, 41.998745, 52.265724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507393, 41.282375, 52.319672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435677, 41.437248, 52.681435>,  <37.392647, 41.530170, 52.898491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435677, 41.437248, 52.681435>,  <37.507393, 41.282375, 52.319672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435677, 41.437248, 52.681435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668825, -0.722147, 0.176569,
		0.721477, -0.573232, 0.388427,
		-0.179287, 0.387180, 0.904405,
		37.381889, 41.553402, 52.952755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368847, 40.664024, 52.646912>,  <37.507393, 41.282375, 52.319672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368847, 40.664024, 52.646912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233440, 40.939819, 52.903042>,  <37.152195, 41.105297, 53.056721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233440, 40.939819, 52.903042>,  <37.368847, 40.664024, 52.646912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233440, 40.939819, 52.903042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684467, -0.647390, 0.335247,
		0.645687, -0.324793, 0.691084,
		-0.338515, 0.689489, 0.640322,
		37.131886, 41.146667, 53.095139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131958, 40.260773, 53.261299>,  <37.368847, 40.664024, 52.646912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131958, 40.260773, 53.261299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992180, 40.623795, 53.354450>,  <36.908314, 40.841606, 53.410343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.992180, 40.623795, 53.354450>,  <37.131958, 40.260773, 53.261299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992180, 40.623795, 53.354450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787487, -0.419163, 0.451847,
		0.507690, -0.025494, 0.861162,
		-0.349448, 0.907553, 0.232881,
		36.887344, 40.896061, 53.424316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968899, 40.315571, 53.993950>,  <37.131958, 40.260773, 53.261299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968899, 40.315571, 53.993950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746086, 40.576477, 53.788322>,  <36.612400, 40.733021, 53.664948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746086, 40.576477, 53.788322>,  <36.968899, 40.315571, 53.993950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746086, 40.576477, 53.788322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822937, -0.350218, 0.447351,
		0.111758, 0.672231, 0.731858,
		-0.557032, 0.652268, -0.514064,
		36.578976, 40.772156, 53.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469578, 40.492176, 54.444790>,  <36.968899, 40.315571, 53.993950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469578, 40.492176, 54.444790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317734, 40.643272, 54.106983>,  <36.226627, 40.733929, 53.904301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317734, 40.643272, 54.106983>,  <36.469578, 40.492176, 54.444790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317734, 40.643272, 54.106983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925131, -0.160322, 0.344136,
		-0.005402, 0.911927, 0.410316,
		-0.379610, 0.377737, -0.844518,
		36.203850, 40.756592, 53.853626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943329, 41.154282, 54.587589>,  <36.469578, 40.492176, 54.444790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943329, 41.154282, 54.587589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851059, 40.977577, 54.240799>,  <35.795696, 40.871555, 54.032726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851059, 40.977577, 54.240799>,  <35.943329, 41.154282, 54.587589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851059, 40.977577, 54.240799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939414, -0.131073, 0.316734,
		-0.253557, 0.887507, -0.384760,
		-0.230672, -0.441759, -0.866971,
		35.781857, 40.845051, 53.980709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296543, 41.442127, 54.408665>,  <35.943329, 41.154282, 54.587589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296543, 41.442127, 54.408665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299316, 41.100967, 54.199856>,  <35.300980, 40.896271, 54.074570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299316, 41.100967, 54.199856>,  <35.296543, 41.442127, 54.408665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299316, 41.100967, 54.199856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914832, -0.216204, 0.341084,
		-0.403775, 0.475201, -0.781761,
		0.006936, -0.852901, -0.522026,
		35.301399, 40.845097, 54.043247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586452, 41.389969, 54.147987>,  <35.296543, 41.442127, 54.408665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586452, 41.389969, 54.147987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714317, 41.012329, 54.115761>,  <34.791035, 40.785744, 54.096424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714317, 41.012329, 54.115761>,  <34.586452, 41.389969, 54.147987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714317, 41.012329, 54.115761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914318, -0.329655, 0.235267,
		-0.248674, -0.001543, -0.968586,
		0.319663, -0.944100, -0.080566,
		34.810215, 40.729099, 54.091591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100677, 41.010448, 53.797543>,  <34.586452, 41.389969, 54.147987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100677, 41.010448, 53.797543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298233, 40.740311, 54.016628>,  <34.416767, 40.578228, 54.148079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298233, 40.740311, 54.016628>,  <34.100677, 41.010448, 53.797543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298233, 40.740311, 54.016628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861469, -0.294484, 0.413704,
		-0.118098, -0.676162, -0.727226,
		0.493887, -0.675340, 0.547714,
		34.446400, 40.537708, 54.180943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658077, 40.499992, 53.766224>,  <34.100677, 41.010448, 53.797543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658077, 40.499992, 53.766224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889473, 40.385536, 54.071762>,  <34.028313, 40.316860, 54.255085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889473, 40.385536, 54.071762>,  <33.658077, 40.499992, 53.766224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889473, 40.385536, 54.071762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792055, -0.420838, 0.442205,
		0.194922, -0.860823, -0.470094,
		0.578494, -0.286145, 0.763850,
		34.063023, 40.299694, 54.300919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688568, 39.774582, 53.764984>,  <33.658077, 40.499992, 53.766224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688568, 39.774582, 53.764984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761421, 39.901901, 54.137115>,  <33.805134, 39.978291, 54.360394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761421, 39.901901, 54.137115>,  <33.688568, 39.774582, 53.764984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761421, 39.901901, 54.137115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792443, -0.512628, 0.330525,
		0.582118, -0.797434, 0.158863,
		0.182134, 0.318294, 0.930331,
		33.816063, 39.997391, 54.416214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760601, 39.218109, 54.217129>,  <33.688568, 39.774582, 53.764984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760601, 39.218109, 54.217129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677612, 39.521294, 54.464500>,  <33.627819, 39.703205, 54.612923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677612, 39.521294, 54.464500>,  <33.760601, 39.218109, 54.217129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677612, 39.521294, 54.464500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679217, -0.566574, 0.466539,
		0.704003, -0.323256, 0.632364,
		-0.207470, 0.757958, 0.618431,
		33.615372, 39.748680, 54.650028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029415, 39.020134, 54.931694>,  <33.760601, 39.218109, 54.217129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029415, 39.020134, 54.931694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751484, 39.297417, 55.008312>,  <33.584724, 39.463787, 55.054283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751484, 39.297417, 55.008312>,  <34.029415, 39.020134, 54.931694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751484, 39.297417, 55.008312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493393, -0.653239, 0.574319,
		0.523243, 0.304545, 0.795908,
		-0.694824, 0.693204, 0.191542,
		33.543037, 39.505379, 55.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004009, 38.964775, 55.618687>,  <34.029415, 39.020134, 54.931694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004009, 38.964775, 55.618687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667980, 39.151291, 55.507805>,  <33.466362, 39.263203, 55.441277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667980, 39.151291, 55.507805>,  <34.004009, 38.964775, 55.618687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667980, 39.151291, 55.507805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519641, -0.545038, 0.657957,
		0.155711, 0.696782, 0.700178,
		-0.840076, 0.466292, -0.277208,
		33.415958, 39.291180, 55.424641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651562, 39.154316, 56.341511>,  <34.004009, 38.964775, 55.618687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651562, 39.154316, 56.341511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384918, 39.205788, 56.047825>,  <33.224930, 39.236671, 55.871613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.384918, 39.205788, 56.047825>,  <33.651562, 39.154316, 56.341511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384918, 39.205788, 56.047825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669297, -0.536921, 0.513572,
		-0.328129, 0.833761, 0.444042,
		-0.666612, 0.128678, -0.734214,
		33.184933, 39.244392, 55.827560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993576, 39.423180, 56.677223>,  <33.651562, 39.154316, 56.341511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993576, 39.423180, 56.677223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878246, 39.287796, 56.318935>,  <32.809048, 39.206566, 56.103962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.878246, 39.287796, 56.318935>,  <32.993576, 39.423180, 56.677223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878246, 39.287796, 56.318935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803444, -0.423375, 0.418606,
		-0.520907, 0.840355, -0.149866,
		-0.288328, -0.338464, -0.895717,
		32.791748, 39.186256, 56.050220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282009, 39.522186, 56.707264>,  <32.993576, 39.423180, 56.677223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282009, 39.522186, 56.707264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335701, 39.247452, 56.421539>,  <32.367916, 39.082611, 56.250107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335701, 39.247452, 56.421539>,  <32.282009, 39.522186, 56.707264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335701, 39.247452, 56.421539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648184, -0.606093, 0.460986,
		-0.749560, 0.401126, -0.526552,
		0.134226, -0.686840, -0.714307,
		32.375969, 39.041401, 56.207249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551937, 39.331821, 56.433372>,  <32.282009, 39.522186, 56.707264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551937, 39.331821, 56.433372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803143, 39.037018, 56.333439>,  <31.953865, 38.860134, 56.273479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803143, 39.037018, 56.333439>,  <31.551937, 39.331821, 56.433372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803143, 39.037018, 56.333439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677720, -0.675762, 0.289897,
		-0.382487, -0.012741, -0.923873,
		0.628012, -0.737009, -0.249836,
		31.991547, 38.815914, 56.258488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128347, 38.836594, 56.141285>,  <31.551937, 39.331821, 56.433372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128347, 38.836594, 56.141285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451923, 38.624924, 56.243721>,  <31.646069, 38.497921, 56.305183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451923, 38.624924, 56.243721>,  <31.128347, 38.836594, 56.141285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451923, 38.624924, 56.243721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581069, -0.653551, 0.485005,
		-0.089283, -0.541150, -0.836173,
		0.808942, -0.529177, 0.256094,
		31.694607, 38.466171, 56.320549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898561, 38.137054, 56.196934>,  <31.128347, 38.836594, 56.141285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898561, 38.137054, 56.196934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239443, 38.127174, 56.405983>,  <31.443972, 38.121246, 56.531414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239443, 38.127174, 56.405983>,  <30.898561, 38.137054, 56.196934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239443, 38.127174, 56.405983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467746, -0.483541, 0.739866,
		0.234441, -0.874973, -0.423626,
		0.852204, -0.024695, 0.522627,
		31.495104, 38.119766, 56.562771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208719, 37.439888, 56.457680>,  <30.898561, 38.137054, 56.196934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208719, 37.439888, 56.457680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312674, 37.736061, 56.705620>,  <31.375046, 37.913765, 56.854385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312674, 37.736061, 56.705620>,  <31.208719, 37.439888, 56.457680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312674, 37.736061, 56.705620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448669, -0.475824, 0.756497,
		0.855077, -0.474711, 0.208550,
		0.259885, 0.740433, 0.619854,
		31.390638, 37.958191, 56.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095772, 36.713028, 56.234974>,  <31.208719, 37.439888, 56.457680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095772, 36.713028, 56.234974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190002, 36.335083, 56.143990>,  <31.246540, 36.108315, 56.089397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190002, 36.335083, 56.143990>,  <31.095772, 36.713028, 56.234974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190002, 36.335083, 56.143990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729261, 0.326567, -0.601275,
		0.642404, -0.024232, 0.765983,
		0.235574, -0.944863, -0.227460,
		31.260675, 36.051624, 56.075752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909056, 36.668453, 56.359219>,  <31.095772, 36.713028, 56.234974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909056, 36.668453, 56.359219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739042, 36.407890, 56.107815>,  <31.637035, 36.251553, 55.956974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739042, 36.407890, 56.107815>,  <31.909056, 36.668453, 56.359219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739042, 36.407890, 56.107815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596942, 0.320246, -0.735597,
		0.680448, -0.687834, 0.252736,
		-0.425031, -0.651404, -0.628507,
		31.611532, 36.212471, 55.919262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445385, 36.359608, 55.994858>,  <31.909056, 36.668453, 56.359219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445385, 36.359608, 55.994858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136688, 36.254578, 55.763176>,  <31.951471, 36.191559, 55.624168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136688, 36.254578, 55.763176>,  <32.445385, 36.359608, 55.994858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136688, 36.254578, 55.763176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578933, 0.086819, -0.810740,
		0.263164, -0.960998, 0.085010,
		-0.771739, -0.262573, -0.579201,
		31.905167, 36.175804, 55.589417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694096, 35.882278, 55.471836>,  <32.445385, 36.359608, 55.994858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694096, 35.882278, 55.471836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353767, 36.039719, 55.332592>,  <32.149570, 36.134182, 55.249046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353767, 36.039719, 55.332592>,  <32.694096, 35.882278, 55.471836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353767, 36.039719, 55.332592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452206, 0.211073, -0.866578,
		-0.267607, -0.894722, -0.357574,
		-0.850821, 0.393600, -0.348114,
		32.098522, 36.157799, 55.228157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616528, 35.660442, 54.800976>,  <32.694096, 35.882278, 55.471836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616528, 35.660442, 54.800976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390511, 35.990410, 54.807205>,  <32.254902, 36.188389, 54.810944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390511, 35.990410, 54.807205>,  <32.616528, 35.660442, 54.800976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390511, 35.990410, 54.807205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522913, 0.372655, -0.766610,
		-0.638193, -0.425020, -0.641925,
		-0.565041, 0.824916, 0.015577,
		32.220997, 36.237885, 54.811878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335541, 35.740479, 54.069397>,  <32.616528, 35.660442, 54.800976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335541, 35.740479, 54.069397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320366, 36.095604, 54.252853>,  <32.311260, 36.308678, 54.362926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320366, 36.095604, 54.252853>,  <32.335541, 35.740479, 54.069397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320366, 36.095604, 54.252853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468003, 0.421304, -0.776838,
		-0.882913, 0.185176, -0.431481,
		-0.037933, 0.887814, 0.458637,
		32.308987, 36.361950, 54.390446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486317, 36.140278, 53.495968>,  <32.335541, 35.740479, 54.069397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486317, 36.140278, 53.495968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501705, 36.405449, 53.795044>,  <32.510937, 36.564552, 53.974491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501705, 36.405449, 53.795044>,  <32.486317, 36.140278, 53.495968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501705, 36.405449, 53.795044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566675, 0.601823, -0.562750,
		-0.823043, 0.445348, -0.352513,
		0.038469, 0.662928, 0.747694,
		32.513245, 36.604328, 54.019352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428036, 36.766891, 53.110100>,  <32.486317, 36.140278, 53.495968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428036, 36.766891, 53.110100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586346, 36.855141, 53.466682>,  <32.681332, 36.908089, 53.680630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586346, 36.855141, 53.466682>,  <32.428036, 36.766891, 53.110100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586346, 36.855141, 53.466682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666840, 0.598381, -0.444144,
		-0.631416, 0.770238, 0.089706,
		0.395775, 0.220620, 0.891453,
		32.705078, 36.921326, 53.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378494, 37.513012, 53.223488>,  <32.428036, 36.766891, 53.110100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378494, 37.513012, 53.223488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680630, 37.383217, 53.451233>,  <32.861912, 37.305340, 53.587879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680630, 37.383217, 53.451233>,  <32.378494, 37.513012, 53.223488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680630, 37.383217, 53.451233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607138, 0.673531, -0.421592,
		-0.246684, 0.664127, 0.705750,
		0.755335, -0.324487, 0.569366,
		32.907230, 37.285870, 53.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699474, 38.190395, 53.458290>,  <32.378494, 37.513012, 53.223488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699474, 38.190395, 53.458290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962494, 37.893089, 53.507576>,  <33.120304, 37.714706, 53.537148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962494, 37.893089, 53.507576>,  <32.699474, 38.190395, 53.458290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962494, 37.893089, 53.507576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730085, 0.588233, -0.347790,
		0.186021, 0.318648, 0.929441,
		0.657550, -0.743267, 0.123216,
		33.159760, 37.670109, 53.544540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264904, 38.374012, 53.838852>,  <32.699474, 38.190395, 53.458290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264904, 38.374012, 53.838852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370144, 38.075279, 53.594551>,  <33.433289, 37.896038, 53.447971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370144, 38.075279, 53.594551>,  <33.264904, 38.374012, 53.838852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370144, 38.075279, 53.594551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703522, 0.581709, -0.408255,
		0.660179, -0.322266, 0.678461,
		0.263100, -0.746833, -0.610753,
		33.449074, 37.851231, 53.411324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000271, 38.452698, 53.810795>,  <33.264904, 38.374012, 53.838852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000271, 38.452698, 53.810795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.943054, 38.205673, 53.501434>,  <33.908726, 38.057457, 53.315819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.943054, 38.205673, 53.501434>,  <34.000271, 38.452698, 53.810795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943054, 38.205673, 53.501434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751379, 0.440858, -0.490992,
		0.644181, -0.651351, 0.400965,
		-0.143040, -0.617564, -0.773404,
		33.900143, 38.020405, 53.269413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685074, 38.378647, 53.529888>,  <34.000271, 38.452698, 53.810795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685074, 38.378647, 53.529888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438652, 38.250862, 53.241882>,  <34.290798, 38.174191, 53.069080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438652, 38.250862, 53.241882>,  <34.685074, 38.378647, 53.529888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438652, 38.250862, 53.241882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588211, 0.421391, -0.690244,
		0.523913, -0.848750, -0.071690,
		-0.616054, -0.319459, -0.720016,
		34.253834, 38.155025, 53.025879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041916, 38.074306, 52.951714>,  <34.685074, 38.378647, 53.529888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041916, 38.074306, 52.951714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696651, 38.188614, 52.785202>,  <34.489491, 38.257198, 52.685295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696651, 38.188614, 52.785202>,  <35.041916, 38.074306, 52.951714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696651, 38.188614, 52.785202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497659, 0.620831, -0.605726,
		0.085342, -0.730005, -0.678092,
		-0.863164, 0.285765, -0.416277,
		34.437702, 38.274342, 52.660320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201324, 38.117619, 52.240513>,  <35.041916, 38.074306, 52.951714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201324, 38.117619, 52.240513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871193, 38.338112, 52.289463>,  <34.673115, 38.470409, 52.318832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871193, 38.338112, 52.289463>,  <35.201324, 38.117619, 52.240513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871193, 38.338112, 52.289463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390502, 0.713753, -0.581433,
		-0.407851, -0.432085, -0.804338,
		-0.825327, 0.551234, 0.122375,
		34.623596, 38.503483, 52.326176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993526, 38.280914, 51.581333>,  <35.201324, 38.117619, 52.240513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993526, 38.280914, 51.581333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811607, 38.548584, 51.816406>,  <34.702457, 38.709187, 51.957451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811607, 38.548584, 51.816406>,  <34.993526, 38.280914, 51.581333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811607, 38.548584, 51.816406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328265, 0.739372, -0.587854,
		-0.827892, -0.074436, -0.555926,
		-0.454794, 0.669170, 0.587685,
		34.675171, 38.749336, 51.992710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589130, 38.611877, 51.165649>,  <34.993526, 38.280914, 51.581333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589130, 38.611877, 51.165649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651390, 38.846626, 51.483482>,  <34.688747, 38.987476, 51.674183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651390, 38.846626, 51.483482>,  <34.589130, 38.611877, 51.165649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651390, 38.846626, 51.483482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287236, 0.742735, -0.604848,
		-0.945129, 0.322375, -0.052965,
		0.155649, 0.586873, 0.794578,
		34.698086, 39.022690, 51.721855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316078, 39.301392, 50.971184>,  <34.589130, 38.611877, 51.165649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316078, 39.301392, 50.971184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586372, 39.335014, 51.264118>,  <34.748550, 39.355190, 51.439880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586372, 39.335014, 51.264118>,  <34.316078, 39.301392, 50.971184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586372, 39.335014, 51.264118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330121, 0.853773, -0.402605,
		-0.659092, 0.513814, 0.549175,
		0.675735, 0.084060, 0.732336,
		34.789093, 39.360233, 51.483818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393734, 40.022102, 51.044613>,  <34.316078, 39.301392, 50.971184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393734, 40.022102, 51.044613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714600, 39.896057, 51.247486>,  <34.907120, 39.820431, 51.369209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714600, 39.896057, 51.247486>,  <34.393734, 40.022102, 51.044613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714600, 39.896057, 51.247486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505370, 0.810688, -0.295612,
		-0.318017, 0.493445, 0.809554,
		0.802164, -0.315114, 0.507184,
		34.955250, 39.801521, 51.399643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584709, 40.523403, 51.527504>,  <34.393734, 40.022102, 51.044613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584709, 40.523403, 51.527504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925629, 40.320068, 51.478222>,  <35.130180, 40.198067, 51.448650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.925629, 40.320068, 51.478222>,  <34.584709, 40.523403, 51.527504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925629, 40.320068, 51.478222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473109, 0.849673, -0.232860,
		0.223059, 0.140174, 0.964674,
		0.852299, -0.508337, -0.123209,
		35.181316, 40.167568, 51.441257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148979, 41.057175, 51.567055>,  <34.584709, 40.523403, 51.527504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148979, 41.057175, 51.567055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364197, 40.752571, 51.422497>,  <35.493328, 40.569809, 51.335762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364197, 40.752571, 51.422497>,  <35.148979, 41.057175, 51.567055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364197, 40.752571, 51.422497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722524, 0.637475, -0.267554,
		0.434126, -0.117161, 0.893201,
		0.538046, -0.761511, -0.361396,
		35.525612, 40.524117, 51.314079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.067169, 44.496517, 52.350723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175747, 44.153534, 52.175873>,  <40.240894, 43.947742, 52.070961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175747, 44.153534, 52.175873>,  <40.067169, 44.496517, 52.350723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175747, 44.153534, 52.175873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906902, 0.379943, -0.182129,
		0.322251, -0.346995, 0.880766,
		0.271443, -0.857460, -0.437127,
		40.257179, 43.896297, 52.044735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692131, 44.145325, 52.615322>,  <40.067169, 44.496517, 52.350723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692131, 44.145325, 52.615322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683449, 44.038765, 52.229874>,  <40.678238, 43.974831, 51.998604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683449, 44.038765, 52.229874>,  <40.692131, 44.145325, 52.615322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683449, 44.038765, 52.229874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943351, 0.313732, -0.107984,
		0.331085, -0.911376, 0.244494,
		-0.021708, -0.266395, -0.963619,
		40.676937, 43.958847, 51.940788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300568, 43.885319, 52.479858>,  <40.692131, 44.145325, 52.615322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300568, 43.885319, 52.479858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.172279, 43.948143, 52.106236>,  <41.095306, 43.985840, 51.882061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.172279, 43.948143, 52.106236>,  <41.300568, 43.885319, 52.479858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172279, 43.948143, 52.106236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915435, 0.304545, -0.263119,
		0.243137, -0.939459, -0.241455,
		-0.320724, 0.157063, -0.934060,
		41.076061, 43.995262, 51.826019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718712, 43.485195, 52.062881>,  <41.300568, 43.885319, 52.479858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718712, 43.485195, 52.062881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563141, 43.730370, 51.787769>,  <41.469799, 43.877472, 51.622700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563141, 43.730370, 51.787769>,  <41.718712, 43.485195, 52.062881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563141, 43.730370, 51.787769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900282, 0.094431, -0.424942,
		-0.195513, -0.784472, -0.588539,
		-0.388931, 0.612932, -0.687784,
		41.446461, 43.914249, 51.581432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127754, 43.397362, 51.524689>,  <41.718712, 43.485195, 52.062881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127754, 43.397362, 51.524689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952389, 43.745087, 51.433395>,  <41.847168, 43.953720, 51.378620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.952389, 43.745087, 51.433395>,  <42.127754, 43.397362, 51.524689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952389, 43.745087, 51.433395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789649, 0.251279, -0.559744,
		-0.429240, -0.425627, -0.796615,
		-0.438414, 0.869311, -0.228237,
		41.820866, 44.005878, 51.364925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444763, 43.552250, 50.904613>,  <42.127754, 43.397362, 51.524689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444763, 43.552250, 50.904613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.243923, 43.891502, 50.972214>,  <42.123417, 44.095055, 51.012775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.243923, 43.891502, 50.972214>,  <42.444763, 43.552250, 50.904613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243923, 43.891502, 50.972214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569889, 0.471487, -0.672998,
		-0.650476, -0.241600, -0.720077,
		-0.502104, 0.848133, 0.169005,
		42.093292, 44.145943, 51.022915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262497, 43.871101, 50.205090>,  <42.444763, 43.552250, 50.904613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262497, 43.871101, 50.205090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263763, 44.172623, 50.467930>,  <42.264523, 44.353535, 50.625633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.263763, 44.172623, 50.467930>,  <42.262497, 43.871101, 50.205090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263763, 44.172623, 50.467930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529726, 0.556067, -0.640453,
		-0.848163, 0.350109, -0.397547,
		0.003166, 0.753800, 0.657097,
		42.264713, 44.398762, 50.665058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009117, 44.484257, 49.899635>,  <42.262497, 43.871101, 50.205090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009117, 44.484257, 49.899635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267921, 44.597450, 50.182846>,  <42.423203, 44.665367, 50.352772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267921, 44.597450, 50.182846>,  <42.009117, 44.484257, 49.899635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267921, 44.597450, 50.182846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505449, 0.536055, -0.676141,
		-0.570876, 0.795340, 0.203800,
		0.647010, 0.282982, 0.708025,
		42.462025, 44.682346, 50.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200752, 45.084831, 49.650898>,  <42.009117, 44.484257, 49.899635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200752, 45.084831, 49.650898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473488, 45.088760, 49.943470>,  <42.637131, 45.091118, 50.119015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473488, 45.088760, 49.943470>,  <42.200752, 45.084831, 49.650898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473488, 45.088760, 49.943470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569629, 0.620191, -0.539339,
		-0.458927, 0.784389, 0.417276,
		0.681842, 0.009825, 0.731433,
		42.678040, 45.091709, 50.162899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440601, 45.825630, 49.774803>,  <42.200752, 45.084831, 49.650898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440601, 45.825630, 49.774803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721245, 45.569366, 49.899582>,  <42.889629, 45.415607, 49.974449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721245, 45.569366, 49.899582>,  <42.440601, 45.825630, 49.774803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721245, 45.569366, 49.899582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692281, 0.509130, -0.511404,
		0.168816, 0.574755, 0.800724,
		0.701605, -0.640658, 0.311942,
		42.931725, 45.377171, 49.993164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998508, 46.263378, 49.943226>,  <42.440601, 45.825630, 49.774803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998508, 46.263378, 49.943226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187447, 45.910866, 49.937012>,  <43.300808, 45.699360, 49.933285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187447, 45.910866, 49.937012>,  <42.998508, 46.263378, 49.943226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187447, 45.910866, 49.937012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782405, 0.427337, -0.453018,
		0.405873, 0.201827, 0.891366,
		0.472345, -0.881277, -0.015534,
		43.329151, 45.646484, 49.932350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694817, 46.372494, 50.258915>,  <42.998508, 46.263378, 49.943226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694817, 46.372494, 50.258915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.691559, 46.062180, 50.006535>,  <43.689602, 45.875992, 49.855106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.691559, 46.062180, 50.006535>,  <43.694817, 46.372494, 50.258915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691559, 46.062180, 50.006535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806173, 0.368212, -0.463146,
		0.591624, -0.512428, 0.622414,
		-0.008149, -0.775782, -0.630949,
		43.689114, 45.829445, 49.817249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350979, 46.471893, 50.052814>,  <43.694817, 46.372494, 50.258915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350979, 46.471893, 50.052814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179585, 46.205948, 49.808075>,  <44.076748, 46.046383, 49.661232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179585, 46.205948, 49.808075>,  <44.350979, 46.471893, 50.052814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179585, 46.205948, 49.808075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713954, 0.165897, -0.680255,
		0.553779, -0.728312, 0.403595,
		-0.428483, -0.664860, -0.611853,
		44.051041, 46.006489, 49.624519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826962, 45.949490, 49.941620>,  <44.350979, 46.471893, 50.052814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826962, 45.949490, 49.941620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591827, 46.010735, 49.623875>,  <44.450748, 46.047482, 49.433228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591827, 46.010735, 49.623875>,  <44.826962, 45.949490, 49.941620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591827, 46.010735, 49.623875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808979, 0.113950, -0.576687,
		0.002220, -0.981617, -0.190848,
		-0.587833, 0.153112, -0.794361,
		44.415478, 46.056667, 49.385567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377110, 45.496479, 50.122040>,  <44.826962, 45.949490, 49.941620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377110, 45.496479, 50.122040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623390, 45.510040, 50.436939>,  <45.771160, 45.518177, 50.625877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623390, 45.510040, 50.436939>,  <45.377110, 45.496479, 50.122040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623390, 45.510040, 50.436939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391569, -0.853824, 0.343013,
		0.683800, -0.519456, -0.512429,
		0.615705, 0.033901, 0.787248,
		45.808102, 45.520210, 50.673115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646011, 44.759369, 50.378902>,  <45.377110, 45.496479, 50.122040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646011, 44.759369, 50.378902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711784, 44.972687, 50.710823>,  <45.751247, 45.100677, 50.909973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711784, 44.972687, 50.710823>,  <45.646011, 44.759369, 50.378902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711784, 44.972687, 50.710823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311722, -0.770041, 0.556656,
		0.935838, -0.350196, 0.039622,
		0.164428, 0.533291, 0.829798,
		45.761112, 45.132675, 50.959763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009941, 44.271217, 50.868271>,  <45.646011, 44.759369, 50.378902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009941, 44.271217, 50.868271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.837395, 44.554489, 51.091843>,  <45.733868, 44.724453, 51.225986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.837395, 44.554489, 51.091843>,  <46.009941, 44.271217, 50.868271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837395, 44.554489, 51.091843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321804, -0.699561, 0.638010,
		0.842830, 0.095353, 0.529665,
		-0.431369, 0.708182, 0.558926,
		45.707985, 44.766945, 51.259521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147953, 44.176556, 51.602180>,  <46.009941, 44.271217, 50.868271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147953, 44.176556, 51.602180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.823784, 44.410454, 51.616520>,  <45.629280, 44.550793, 51.625126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.823784, 44.410454, 51.616520>,  <46.147953, 44.176556, 51.602180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823784, 44.410454, 51.616520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373279, -0.562577, 0.737678,
		0.451522, 0.584450, 0.674200,
		-0.810426, 0.584743, 0.035853,
		45.580658, 44.585876, 51.627277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982891, 44.191643, 52.381748>,  <46.147953, 44.176556, 51.602180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982891, 44.191643, 52.381748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.645775, 44.325012, 52.212738>,  <45.443504, 44.405033, 52.111332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.645775, 44.325012, 52.212738>,  <45.982891, 44.191643, 52.381748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645775, 44.325012, 52.212738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534795, -0.430063, 0.727352,
		0.060802, 0.838973, 0.540766,
		-0.842792, 0.333423, -0.422530,
		45.392937, 44.425037, 52.085979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516129, 44.444027, 52.946339>,  <45.982891, 44.191643, 52.381748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516129, 44.444027, 52.946339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293434, 44.347313, 52.628452>,  <45.159817, 44.289284, 52.437721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293434, 44.347313, 52.628452>,  <45.516129, 44.444027, 52.946339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293434, 44.347313, 52.628452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674716, -0.426446, 0.602413,
		-0.484561, 0.871598, 0.074281,
		-0.556739, -0.241787, -0.794721,
		45.126411, 44.274776, 52.390038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784752, 44.588032, 53.202400>,  <45.516129, 44.444027, 52.946339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784752, 44.588032, 53.202400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742386, 44.365273, 52.872879>,  <44.716969, 44.231617, 52.675167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742386, 44.365273, 52.872879>,  <44.784752, 44.588032, 53.202400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742386, 44.365273, 52.872879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703563, -0.543482, 0.457849,
		-0.702696, 0.628089, -0.334250,
		-0.105911, -0.556895, -0.823803,
		44.710613, 44.198204, 52.625740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082424, 44.482441, 53.085655>,  <44.784752, 44.588032, 53.202400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082424, 44.482441, 53.085655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241512, 44.186546, 52.868546>,  <44.336964, 44.009010, 52.738277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.241512, 44.186546, 52.868546>,  <44.082424, 44.482441, 53.085655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241512, 44.186546, 52.868546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640106, -0.647536, 0.413475,
		-0.657330, 0.182988, -0.731049,
		0.397720, -0.739738, -0.542776,
		44.360828, 43.964626, 52.705711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534115, 44.185448, 52.823574>,  <44.082424, 44.482441, 53.085655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534115, 44.185448, 52.823574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.829597, 43.916008, 52.813953>,  <44.006886, 43.754345, 52.808182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.829597, 43.916008, 52.813953>,  <43.534115, 44.185448, 52.823574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829597, 43.916008, 52.813953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606430, -0.679773, 0.412494,
		-0.294205, -0.290127, -0.910643,
		0.738706, -0.673599, -0.024051,
		44.051208, 43.713928, 52.806740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144958, 43.596592, 52.565990>,  <43.534115, 44.185448, 52.823574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144958, 43.596592, 52.565990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481125, 43.477364, 52.747036>,  <43.682823, 43.405827, 52.855663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481125, 43.477364, 52.747036>,  <43.144958, 43.596592, 52.565990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481125, 43.477364, 52.747036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522291, -0.668347, 0.529645,
		0.144628, -0.681516, -0.717369,
		0.840413, -0.298074, 0.452611,
		43.733250, 43.387943, 52.882820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075172, 42.929455, 52.492565>,  <43.144958, 43.596592, 52.565990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075172, 42.929455, 52.492565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.346508, 42.970932, 52.783524>,  <43.509308, 42.995819, 52.958099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.346508, 42.970932, 52.783524>,  <43.075172, 42.929455, 52.492565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346508, 42.970932, 52.783524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413371, -0.764601, 0.494480,
		0.607442, -0.636109, -0.475794,
		0.678335, 0.103688, 0.727399,
		43.550007, 43.002037, 53.001743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312267, 42.222916, 52.656376>,  <43.075172, 42.929455, 52.492565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312267, 42.222916, 52.656376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366894, 42.465065, 52.970032>,  <43.399670, 42.610355, 53.158226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.366894, 42.465065, 52.970032>,  <43.312267, 42.222916, 52.656376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366894, 42.465065, 52.970032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461527, -0.661520, 0.591088,
		0.876551, -0.442627, 0.189050,
		0.136571, 0.605370, 0.784140,
		43.407864, 42.646675, 53.205273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379250, 41.741238, 53.259850>,  <43.312267, 42.222916, 52.656376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379250, 41.741238, 53.259850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.314335, 42.094276, 53.436344>,  <43.275387, 42.306099, 53.542240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.314335, 42.094276, 53.436344>,  <43.379250, 41.741238, 53.259850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314335, 42.094276, 53.436344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374940, -0.468785, 0.799788,
		0.912733, -0.035642, 0.406998,
		-0.162288, 0.882593, 0.441239,
		43.265648, 42.359055, 53.568714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489819, 41.601139, 53.909901>,  <43.379250, 41.741238, 53.259850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489819, 41.601139, 53.909901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281044, 41.941803, 53.928928>,  <43.155781, 42.146202, 53.940346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281044, 41.941803, 53.928928>,  <43.489819, 41.601139, 53.909901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281044, 41.941803, 53.928928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594486, -0.403189, 0.695719,
		0.611695, 0.334840, 0.716737,
		-0.521935, 0.851658, 0.047571,
		43.124462, 42.197300, 53.943199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941830, 41.111172, 54.328056>,  <43.489819, 41.601139, 53.909901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941830, 41.111172, 54.328056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863132, 40.804504, 54.083591>,  <43.815914, 40.620502, 53.936913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863132, 40.804504, 54.083591>,  <43.941830, 41.111172, 54.328056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863132, 40.804504, 54.083591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801607, 0.233145, -0.550518,
		0.564553, -0.598217, 0.568697,
		-0.196740, -0.766668, -0.611157,
		43.804111, 40.574505, 53.900246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619213, 40.712360, 54.111019>,  <43.941830, 41.111172, 54.328056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619213, 40.712360, 54.111019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348755, 40.661888, 53.820663>,  <44.186481, 40.631603, 53.646450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.348755, 40.661888, 53.820663>,  <44.619213, 40.712360, 54.111019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348755, 40.661888, 53.820663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723881, 0.069710, -0.686394,
		0.137210, -0.989555, 0.044204,
		-0.676143, -0.126179, -0.725886,
		44.145912, 40.624035, 53.602898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962978, 40.215931, 53.580002>,  <44.619213, 40.712360, 54.111019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962978, 40.215931, 53.580002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658131, 40.365639, 53.368679>,  <44.475224, 40.455463, 53.241886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658131, 40.365639, 53.368679>,  <44.962978, 40.215931, 53.580002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658131, 40.365639, 53.368679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631510, 0.249810, -0.734023,
		-0.142744, -0.893040, -0.426737,
		-0.762115, 0.374266, -0.528305,
		44.429497, 40.477917, 53.210186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126701, 40.073589, 52.927502>,  <44.962978, 40.215931, 53.580002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126701, 40.073589, 52.927502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865276, 40.375259, 52.901939>,  <44.708424, 40.556259, 52.886600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865276, 40.375259, 52.901939>,  <45.126701, 40.073589, 52.927502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865276, 40.375259, 52.901939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482243, 0.349847, -0.803150,
		-0.583355, -0.555725, -0.592340,
		-0.653558, 0.754173, -0.063910,
		44.669209, 40.601513, 52.882767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849857, 40.030834, 52.196335>,  <45.126701, 40.073589, 52.927502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849857, 40.030834, 52.196335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793663, 40.409836, 52.311226>,  <44.759949, 40.637238, 52.380161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793663, 40.409836, 52.311226>,  <44.849857, 40.030834, 52.196335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793663, 40.409836, 52.311226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505445, 0.318090, -0.802087,
		-0.851346, 0.032501, -0.523597,
		-0.140482, 0.947504, 0.287232,
		44.751518, 40.694088, 52.397396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698261, 40.338474, 51.610405>,  <44.849857, 40.030834, 52.196335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698261, 40.338474, 51.610405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.808033, 40.635918, 51.854286>,  <44.873898, 40.814384, 52.000614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.808033, 40.635918, 51.854286>,  <44.698261, 40.338474, 51.610405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808033, 40.635918, 51.854286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647793, 0.325627, -0.688717,
		-0.710670, 0.583967, -0.392340,
		0.274432, 0.743605, 0.609703,
		44.890362, 40.859001, 52.037197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683647, 40.960659, 51.211674>,  <44.698261, 40.338474, 51.610405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683647, 40.960659, 51.211674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.925323, 41.063179, 51.513474>,  <45.070328, 41.124691, 51.694553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.925323, 41.063179, 51.513474>,  <44.683647, 40.960659, 51.211674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925323, 41.063179, 51.513474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582894, 0.503443, -0.637792,
		-0.543312, 0.825140, 0.154780,
		0.604191, 0.256300, 0.754496,
		45.106579, 41.140068, 51.739822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728817, 41.745831, 51.164127>,  <44.683647, 40.960659, 51.211674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728817, 41.745831, 51.164127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032440, 41.614677, 51.389099>,  <45.214615, 41.535984, 51.524082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032440, 41.614677, 51.389099>,  <44.728817, 41.745831, 51.164127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032440, 41.614677, 51.389099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600523, 0.686254, -0.410400,
		-0.251402, 0.649267, 0.717809,
		0.759058, -0.327885, 0.562425,
		45.260159, 41.516312, 51.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111652, 42.371231, 51.234726>,  <44.728817, 41.745831, 51.164127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111652, 42.371231, 51.234726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381638, 42.096786, 51.343304>,  <45.543629, 41.932121, 51.408451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381638, 42.096786, 51.343304>,  <45.111652, 42.371231, 51.234726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381638, 42.096786, 51.343304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712707, 0.511023, -0.480525,
		0.190979, 0.517795, 0.833916,
		0.674963, -0.686108, 0.271442,
		45.584126, 41.890953, 51.424736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770638, 42.767563, 51.239693>,  <45.111652, 42.371231, 51.234726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770638, 42.767563, 51.239693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857430, 42.378487, 51.206741>,  <45.909504, 42.145039, 51.186970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.857430, 42.378487, 51.206741>,  <45.770638, 42.767563, 51.239693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857430, 42.378487, 51.206741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739573, 0.218885, -0.636491,
		0.637143, 0.077181, 0.766872,
		0.216982, -0.972693, -0.082380,
		45.922523, 42.086678, 51.182026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483765, 42.725544, 51.439793>,  <45.770638, 42.767563, 51.239693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483765, 42.725544, 51.439793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372673, 42.420044, 51.206707>,  <46.306019, 42.236744, 51.066856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372673, 42.420044, 51.206707>,  <46.483765, 42.725544, 51.439793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372673, 42.420044, 51.206707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778510, 0.176445, -0.602320,
		0.562838, -0.620929, 0.545583,
		-0.277733, -0.763750, -0.582709,
		46.289352, 42.190918, 51.031895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086567, 42.264267, 51.259678>,  <46.483765, 42.725544, 51.439793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086567, 42.264267, 51.259678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.803925, 42.231079, 50.978588>,  <46.634338, 42.211166, 50.809933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.803925, 42.231079, 50.978588>,  <47.086567, 42.264267, 51.259678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803925, 42.231079, 50.978588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701404, 0.049106, -0.711070,
		0.093509, -0.995341, 0.023500,
		-0.706604, -0.082974, -0.702728,
		46.591942, 42.206188, 50.767769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.092793, 38.358318, 56.406578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863892, 38.371696, 56.078819>,  <41.726551, 38.379723, 55.882164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863892, 38.371696, 56.078819>,  <42.092793, 38.358318, 56.406578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863892, 38.371696, 56.078819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741335, 0.448307, -0.499444,
		0.350635, -0.893254, -0.281340,
		-0.572257, 0.033444, -0.819392,
		41.692215, 38.381729, 55.833000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598454, 38.294247, 55.889282>,  <42.092793, 38.358318, 56.406578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598454, 38.294247, 55.889282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281429, 38.406876, 55.672924>,  <42.091213, 38.474453, 55.543110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281429, 38.406876, 55.672924>,  <42.598454, 38.294247, 55.889282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281429, 38.406876, 55.672924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584560, 0.603352, -0.542454,
		0.173609, -0.746111, -0.642789,
		-0.792559, 0.281574, -0.540894,
		42.043663, 38.491348, 55.510654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750481, 38.096729, 55.119431>,  <42.598454, 38.294247, 55.889282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750481, 38.096729, 55.119431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483040, 38.392105, 55.154472>,  <42.322575, 38.569332, 55.175495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483040, 38.392105, 55.154472>,  <42.750481, 38.096729, 55.119431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483040, 38.392105, 55.154472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526958, 0.553621, -0.644840,
		-0.524674, -0.384981, -0.759280,
		-0.668605, 0.738440, 0.087602,
		42.282459, 38.613636, 55.180752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665451, 38.327358, 54.447723>,  <42.750481, 38.096729, 55.119431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665451, 38.327358, 54.447723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543125, 38.626831, 54.682995>,  <42.469730, 38.806515, 54.824158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543125, 38.626831, 54.682995>,  <42.665451, 38.327358, 54.447723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543125, 38.626831, 54.682995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466199, 0.656397, -0.593128,
		-0.830143, 0.092822, -0.549769,
		-0.305812, 0.748683, 0.588177,
		42.451382, 38.851437, 54.859447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441761, 38.918076, 53.980919>,  <42.665451, 38.327358, 54.447723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441761, 38.918076, 53.980919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512619, 39.080208, 54.339657>,  <42.555134, 39.177486, 54.554901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512619, 39.080208, 54.339657>,  <42.441761, 38.918076, 53.980919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512619, 39.080208, 54.339657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314503, 0.840162, -0.441832,
		-0.932581, 0.360328, 0.021353,
		0.177144, 0.405329, 0.896844,
		42.565762, 39.201805, 54.608711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308189, 39.481140, 53.830551>,  <42.441761, 38.918076, 53.980919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308189, 39.481140, 53.830551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511177, 39.534683, 54.171036>,  <42.632969, 39.566807, 54.375328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511177, 39.534683, 54.171036>,  <42.308189, 39.481140, 53.830551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511177, 39.534683, 54.171036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439069, 0.809825, -0.389103,
		-0.741416, 0.571197, 0.352187,
		0.507464, 0.133853, 0.851213,
		42.663418, 39.574841, 54.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251308, 40.224777, 53.970055>,  <42.308189, 39.481140, 53.830551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251308, 40.224777, 53.970055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563892, 40.065620, 54.162300>,  <42.751442, 39.970127, 54.277649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563892, 40.065620, 54.162300>,  <42.251308, 40.224777, 53.970055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563892, 40.065620, 54.162300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609526, 0.651486, -0.451711,
		-0.133382, 0.645945, 0.751641,
		0.781465, -0.397895, 0.480617,
		42.798332, 39.946251, 54.306484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620155, 40.811535, 54.249260>,  <42.251308, 40.224777, 53.970055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620155, 40.811535, 54.249260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874870, 40.503151, 54.244831>,  <43.027699, 40.318119, 54.242172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874870, 40.503151, 54.244831>,  <42.620155, 40.811535, 54.249260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874870, 40.503151, 54.244831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709896, 0.591833, -0.381814,
		0.300917, 0.235273, 0.924173,
		0.636787, -0.770961, -0.011073,
		43.065907, 40.271862, 54.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172539, 41.080376, 54.418373>,  <42.620155, 40.811535, 54.249260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172539, 41.080376, 54.418373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314011, 40.737221, 54.269279>,  <43.398895, 40.531326, 54.179825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314011, 40.737221, 54.269279>,  <43.172539, 41.080376, 54.418373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314011, 40.737221, 54.269279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785143, 0.488877, -0.380196,
		0.508387, -0.158178, 0.846476,
		0.353684, -0.857892, -0.372732,
		43.420116, 40.479855, 54.157459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530487, 41.612511, 54.649326>,  <43.172539, 41.080376, 54.418373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530487, 41.612511, 54.649326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233650, 41.842468, 54.511452>,  <43.055550, 41.980442, 54.428726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233650, 41.842468, 54.511452>,  <43.530487, 41.612511, 54.649326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233650, 41.842468, 54.511452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644598, -0.471021, 0.602190,
		0.183840, 0.669060, 0.720112,
		-0.742089, 0.574890, -0.344682,
		43.011024, 42.014935, 54.408047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173168, 41.835911, 55.256161>,  <43.530487, 41.612511, 54.649326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173168, 41.835911, 55.256161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911148, 41.908142, 54.962685>,  <42.753937, 41.951481, 54.786598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911148, 41.908142, 54.962685>,  <43.173168, 41.835911, 55.256161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911148, 41.908142, 54.962685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723351, -0.430477, 0.539864,
		-0.218348, 0.884353, 0.412606,
		-0.655048, 0.180581, -0.733691,
		42.714634, 41.962315, 54.742577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597908, 42.168236, 55.631519>,  <43.173168, 41.835911, 55.256161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597908, 42.168236, 55.631519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462570, 42.012939, 55.288639>,  <42.381367, 41.919762, 55.082909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462570, 42.012939, 55.288639>,  <42.597908, 42.168236, 55.631519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462570, 42.012939, 55.288639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828792, -0.308483, 0.466843,
		-0.445679, 0.868394, -0.217397,
		-0.338340, -0.388239, -0.857203,
		42.361069, 41.896469, 55.031479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994225, 42.484905, 55.511375>,  <42.597908, 42.168236, 55.631519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994225, 42.484905, 55.511375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002193, 42.123260, 55.340641>,  <42.006973, 41.906273, 55.238201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002193, 42.123260, 55.340641>,  <41.994225, 42.484905, 55.511375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002193, 42.123260, 55.340641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901945, -0.200456, 0.382508,
		-0.431391, 0.377360, -0.819452,
		0.019921, -0.904111, -0.426833,
		42.008171, 41.852028, 55.212593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250237, 42.395821, 55.278645>,  <41.994225, 42.484905, 55.511375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250237, 42.395821, 55.278645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400482, 42.026039, 55.252441>,  <41.490631, 41.804169, 55.236721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400482, 42.026039, 55.252441>,  <41.250237, 42.395821, 55.278645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400482, 42.026039, 55.252441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871060, -0.376287, 0.315694,
		-0.316494, -0.061523, -0.946597,
		0.375615, -0.924458, -0.065503,
		41.513168, 41.748703, 55.232792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754566, 42.119991, 54.903599>,  <41.250237, 42.395821, 55.278645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754566, 42.119991, 54.903599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961296, 41.827858, 55.082264>,  <41.085335, 41.652576, 55.189465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961296, 41.827858, 55.082264>,  <40.754566, 42.119991, 54.903599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961296, 41.827858, 55.082264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855805, -0.454252, 0.247492,
		0.022146, -0.510166, -0.859791,
		0.516824, -0.730333, 0.446662,
		41.116344, 41.608757, 55.216263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541241, 41.494473, 54.639465>,  <40.754566, 42.119991, 54.903599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541241, 41.494473, 54.639465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682175, 41.444313, 55.010437>,  <40.766735, 41.414219, 55.233021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682175, 41.444313, 55.010437>,  <40.541241, 41.494473, 54.639465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682175, 41.444313, 55.010437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817580, -0.523497, 0.239822,
		0.455435, -0.842749, -0.286971,
		0.352338, -0.125399, 0.927433,
		40.787876, 41.406693, 55.288666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224960, 40.934017, 54.879417>,  <40.541241, 41.494473, 54.639465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224960, 40.934017, 54.879417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371742, 41.034897, 55.237576>,  <40.459812, 41.095425, 55.452473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371742, 41.034897, 55.237576>,  <40.224960, 40.934017, 54.879417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371742, 41.034897, 55.237576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735349, -0.510885, 0.445262,
		0.569739, -0.821823, -0.002021,
		0.366959, 0.252197, 0.895398,
		40.481831, 41.110558, 55.506195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195484, 40.355598, 55.274845>,  <40.224960, 40.934017, 54.879417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195484, 40.355598, 55.274845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188057, 40.663864, 55.529633>,  <40.183601, 40.848824, 55.682507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188057, 40.663864, 55.529633>,  <40.195484, 40.355598, 55.274845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188057, 40.663864, 55.529633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640561, -0.498331, 0.584250,
		0.767683, -0.397171, 0.502909,
		-0.018568, 0.770663, 0.636973,
		40.182487, 40.895061, 55.720726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068192, 40.102802, 55.960220>,  <40.195484, 40.355598, 55.274845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068192, 40.102802, 55.960220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970146, 40.485565, 56.022514>,  <39.911320, 40.715221, 56.059891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970146, 40.485565, 56.022514>,  <40.068192, 40.102802, 55.960220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970146, 40.485565, 56.022514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700664, -0.285865, 0.653721,
		0.670067, 0.051120, 0.740538,
		-0.245112, 0.956905, 0.155731,
		39.896614, 40.772636, 56.069233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835018, 40.030357, 56.616871>,  <40.068192, 40.102802, 55.960220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835018, 40.030357, 56.616871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701992, 40.384155, 56.485985>,  <39.622177, 40.596436, 56.407452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701992, 40.384155, 56.485985>,  <39.835018, 40.030357, 56.616871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701992, 40.384155, 56.485985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817708, -0.097583, 0.567301,
		0.469845, 0.456231, 0.755711,
		-0.332565, 0.884495, -0.327215,
		39.602222, 40.649506, 56.387821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633221, 40.413654, 57.186615>,  <39.835018, 40.030357, 56.616871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633221, 40.413654, 57.186615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427158, 40.569656, 56.881325>,  <39.303520, 40.663258, 56.698151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427158, 40.569656, 56.881325>,  <39.633221, 40.413654, 57.186615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427158, 40.569656, 56.881325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832012, -0.013692, 0.554588,
		0.205841, 0.920712, 0.331541,
		-0.515156, 0.390003, -0.763225,
		39.272614, 40.686657, 56.652359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161453, 40.841141, 57.478989>,  <39.633221, 40.413654, 57.186615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161453, 40.841141, 57.478989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992775, 40.815491, 57.117203>,  <38.891567, 40.800102, 56.900131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992775, 40.815491, 57.117203>,  <39.161453, 40.841141, 57.478989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992775, 40.815491, 57.117203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903397, -0.055844, 0.425153,
		-0.077773, 0.996378, -0.034383,
		-0.421693, -0.064127, -0.904468,
		38.866268, 40.796253, 56.845863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597267, 41.376274, 57.458019>,  <39.161453, 40.841141, 57.478989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597267, 41.376274, 57.458019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520859, 41.088272, 57.191154>,  <38.475014, 40.915470, 57.031036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520859, 41.088272, 57.191154>,  <38.597267, 41.376274, 57.458019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520859, 41.088272, 57.191154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919728, -0.106179, 0.377924,
		-0.342947, 0.685794, -0.641930,
		-0.191018, -0.720009, -0.667157,
		38.463554, 40.872269, 56.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.981705, 36.544147, 51.100365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925823, 36.822853, 51.381790>,  <36.892296, 36.990078, 51.550644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925823, 36.822853, 51.381790>,  <36.981705, 36.544147, 51.100365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925823, 36.822853, 51.381790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323820, 0.703608, -0.632516,
		-0.935748, 0.139462, -0.323924,
		-0.139704, 0.696768, 0.703560,
		36.883911, 37.031883, 51.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869663, 37.100891, 50.719658>,  <36.981705, 36.544147, 51.100365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869663, 37.100891, 50.719658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959755, 37.250793, 51.079399>,  <37.013809, 37.340736, 51.295242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959755, 37.250793, 51.079399>,  <36.869663, 37.100891, 50.719658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959755, 37.250793, 51.079399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320697, 0.843114, -0.431639,
		-0.920014, 0.385636, 0.069709,
		0.225228, 0.374759, 0.899349,
		37.027325, 37.363220, 51.349205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686184, 37.760929, 50.782070>,  <36.869663, 37.100891, 50.719658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686184, 37.760929, 50.782070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951035, 37.748932, 51.081585>,  <37.109943, 37.741734, 51.261295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951035, 37.748932, 51.081585>,  <36.686184, 37.760929, 50.782070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951035, 37.748932, 51.081585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462919, 0.802135, -0.377207,
		-0.589317, 0.596388, 0.545001,
		0.662126, -0.029997, 0.748792,
		37.149673, 37.739933, 51.306221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742893, 38.442169, 50.943207>,  <36.686184, 37.760929, 50.782070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742893, 38.442169, 50.943207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.073299, 38.261696, 51.078339>,  <37.271542, 38.153412, 51.159420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.073299, 38.261696, 51.078339>,  <36.742893, 38.442169, 50.943207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073299, 38.261696, 51.078339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544244, 0.794351, -0.269826,
		-0.146615, 0.406743, 0.901701,
		0.826016, -0.451184, 0.337831,
		37.321106, 38.126339, 51.179688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064102, 38.966660, 51.342007>,  <36.742893, 38.442169, 50.943207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064102, 38.966660, 51.342007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333313, 38.688942, 51.240036>,  <37.494839, 38.522312, 51.178852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333313, 38.688942, 51.240036>,  <37.064102, 38.966660, 51.342007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333313, 38.688942, 51.240036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575341, 0.708056, -0.409439,
		0.464774, 0.128893, 0.875997,
		0.673029, -0.694294, -0.254929,
		37.535221, 38.480656, 51.163559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661018, 39.313896, 51.512104>,  <37.064102, 38.966660, 51.342007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661018, 39.313896, 51.512104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752251, 39.013206, 51.264595>,  <37.806992, 38.832790, 51.116089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752251, 39.013206, 51.264595>,  <37.661018, 39.313896, 51.512104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752251, 39.013206, 51.264595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565625, 0.619588, -0.544224,
		0.792494, -0.225864, 0.566515,
		0.228085, -0.751729, -0.618774,
		37.820675, 38.787689, 51.078964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360863, 39.482735, 51.329998>,  <37.661018, 39.313896, 51.512104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360863, 39.482735, 51.329998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255920, 39.219193, 51.047985>,  <38.192955, 39.061066, 50.878777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255920, 39.219193, 51.047985>,  <38.360863, 39.482735, 51.329998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255920, 39.219193, 51.047985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408058, 0.586341, -0.699781,
		0.874447, -0.471287, 0.115022,
		-0.262355, -0.658857, -0.705037,
		38.177216, 39.021534, 50.836475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925198, 39.069103, 51.128246>,  <38.360863, 39.482735, 51.329998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925198, 39.069103, 51.128246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675995, 39.055496, 50.815655>,  <38.526474, 39.047333, 50.628101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675995, 39.055496, 50.815655>,  <38.925198, 39.069103, 51.128246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675995, 39.055496, 50.815655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754904, 0.235556, -0.612073,
		0.204901, -0.971265, -0.121076,
		-0.623006, -0.034013, -0.781478,
		38.489094, 39.045292, 50.581211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321354, 38.755310, 50.554359>,  <38.925198, 39.069103, 51.128246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321354, 38.755310, 50.554359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029358, 38.954605, 50.367222>,  <38.854160, 39.074184, 50.254940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029358, 38.954605, 50.367222>,  <39.321354, 38.755310, 50.554359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029358, 38.954605, 50.367222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642611, 0.267254, -0.718072,
		-0.232740, -0.824823, -0.515266,
		-0.729989, 0.498240, -0.467839,
		38.810360, 39.104076, 50.226871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509087, 38.736649, 49.786415>,  <39.321354, 38.755310, 50.554359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509087, 38.736649, 49.786415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245022, 39.035110, 49.820900>,  <39.086582, 39.214188, 49.841591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245022, 39.035110, 49.820900>,  <39.509087, 38.736649, 49.786415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245022, 39.035110, 49.820900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512238, 0.531183, -0.674876,
		-0.549361, -0.401365, -0.732877,
		-0.660163, 0.746158, 0.086217,
		39.046974, 39.258957, 49.846764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514126, 38.957561, 49.138695>,  <39.509087, 38.736649, 49.786415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514126, 38.957561, 49.138695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.343143, 39.256973, 49.341473>,  <39.240555, 39.436619, 49.463139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.343143, 39.256973, 49.341473>,  <39.514126, 38.957561, 49.138695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343143, 39.256973, 49.341473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424008, 0.661250, -0.618842,
		-0.798434, -0.049583, -0.600038,
		-0.427459, 0.748526, 0.506940,
		39.214905, 39.481529, 49.493553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276863, 39.458652, 48.643608>,  <39.514126, 38.957561, 49.138695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276863, 39.458652, 48.643608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324261, 39.652786, 48.990112>,  <39.352699, 39.769264, 49.198017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324261, 39.652786, 48.990112>,  <39.276863, 39.458652, 48.643608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324261, 39.652786, 48.990112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296610, 0.815278, -0.497337,
		-0.947619, 0.315874, -0.047349,
		0.118493, 0.485330, 0.866265,
		39.359810, 39.798386, 49.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150963, 40.149746, 48.391434>,  <39.276863, 39.458652, 48.643608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150963, 40.149746, 48.391434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332245, 40.141670, 48.747906>,  <39.441013, 40.136826, 48.961788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332245, 40.141670, 48.747906>,  <39.150963, 40.149746, 48.391434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332245, 40.141670, 48.747906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594660, 0.751622, -0.285383,
		-0.664066, 0.659285, 0.352646,
		0.453206, -0.020191, 0.891177,
		39.468208, 40.135612, 49.015259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205612, 40.789639, 48.580814>,  <39.150963, 40.149746, 48.391434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205612, 40.789639, 48.580814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490776, 40.603149, 48.790344>,  <39.661873, 40.491257, 48.916061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490776, 40.603149, 48.790344>,  <39.205612, 40.789639, 48.580814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490776, 40.603149, 48.790344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663806, 0.689507, -0.289728,
		-0.226105, 0.554270, 0.801038,
		0.712909, -0.466224, 0.523829,
		39.704647, 40.463284, 48.947495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089073, 41.314835, 49.117378>,  <39.205612, 40.789639, 48.580814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089073, 41.314835, 49.117378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019676, 41.677429, 49.271355>,  <38.978039, 41.894985, 49.363743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019676, 41.677429, 49.271355>,  <39.089073, 41.314835, 49.117378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019676, 41.677429, 49.271355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743822, -0.376789, 0.552051,
		0.645469, -0.190554, 0.739634,
		-0.173490, 0.906487, 0.384944,
		38.967628, 41.949375, 49.386837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838436, 41.085529, 49.846455>,  <39.089073, 41.314835, 49.117378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838436, 41.085529, 49.846455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.709290, 41.452774, 49.754517>,  <38.631802, 41.673122, 49.699356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.709290, 41.452774, 49.754517>,  <38.838436, 41.085529, 49.846455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709290, 41.452774, 49.754517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875980, -0.197934, 0.439865,
		0.358352, 0.343356, 0.868154,
		-0.322868, 0.918111, -0.229843,
		38.612431, 41.728207, 49.685562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701538, 41.306744, 50.509209>,  <38.838436, 41.085529, 49.846455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701538, 41.306744, 50.509209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493038, 41.530167, 50.251122>,  <38.367939, 41.664219, 50.096268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493038, 41.530167, 50.251122>,  <38.701538, 41.306744, 50.509209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493038, 41.530167, 50.251122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853110, -0.360897, 0.376771,
		-0.022411, 0.746838, 0.664629,
		-0.521249, 0.558558, -0.645223,
		38.336662, 41.697735, 50.057556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288231, 41.772285, 50.977314>,  <38.701538, 41.306744, 50.509209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288231, 41.772285, 50.977314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113682, 41.758011, 50.617691>,  <38.008953, 41.749447, 50.401917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113682, 41.758011, 50.617691>,  <38.288231, 41.772285, 50.977314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113682, 41.758011, 50.617691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898203, -0.041636, 0.437605,
		-0.053052, 0.998495, -0.013888,
		-0.436368, -0.035689, -0.899060,
		37.982773, 41.747303, 50.347973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686939, 42.165436, 51.034424>,  <38.288231, 41.772285, 50.977314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686939, 42.165436, 51.034424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619316, 41.947449, 50.705929>,  <37.578743, 41.816658, 50.508831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619316, 41.947449, 50.705929>,  <37.686939, 42.165436, 51.034424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619316, 41.947449, 50.705929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899293, -0.255702, 0.354807,
		-0.403351, 0.798515, -0.446858,
		-0.169056, -0.544968, -0.821237,
		37.568600, 41.783958, 50.459557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039265, 42.345528, 50.690594>,  <37.686939, 42.165436, 51.034424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039265, 42.345528, 50.690594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113804, 41.967636, 50.582699>,  <37.158527, 41.740902, 50.517960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113804, 41.967636, 50.582699>,  <37.039265, 42.345528, 50.690594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113804, 41.967636, 50.582699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933335, -0.255972, 0.251722,
		-0.306855, 0.204851, -0.929449,
		0.186347, -0.944730, -0.269742,
		37.169708, 41.684216, 50.501778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376774, 42.082569, 50.524239>,  <37.039265, 42.345528, 50.690594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376774, 42.082569, 50.524239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.584404, 41.740730, 50.530266>,  <36.708981, 41.535625, 50.533882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.584404, 41.740730, 50.530266>,  <36.376774, 42.082569, 50.524239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584404, 41.740730, 50.530266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834633, -0.502989, 0.224478,
		-0.184258, -0.129098, -0.974363,
		0.519074, -0.854597, 0.015070,
		36.740128, 41.484352, 50.534786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961594, 41.523552, 50.120285>,  <36.376774, 42.082569, 50.524239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961594, 41.523552, 50.120285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191605, 41.347557, 50.396183>,  <36.329613, 41.241962, 50.561722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191605, 41.347557, 50.396183>,  <35.961594, 41.523552, 50.120285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191605, 41.347557, 50.396183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744437, -0.631080, 0.218064,
		0.339341, -0.638867, -0.690433,
		0.575032, -0.439985, 0.689747,
		36.364113, 41.215561, 50.603107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773296, 40.704632, 49.996536>,  <35.961594, 41.523552, 50.120285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773296, 40.704632, 49.996536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954239, 40.751938, 50.350121>,  <36.062805, 40.780319, 50.562271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954239, 40.751938, 50.350121>,  <35.773296, 40.704632, 49.996536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954239, 40.751938, 50.350121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505831, -0.782300, 0.363512,
		0.734514, -0.611572, -0.294056,
		0.452354, 0.118262, 0.883962,
		36.089947, 40.787415, 50.615311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956276, 40.019520, 50.150452>,  <35.773296, 40.704632, 49.996536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956276, 40.019520, 50.150452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952583, 40.230370, 50.490345>,  <35.950367, 40.356880, 50.694283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952583, 40.230370, 50.490345>,  <35.956276, 40.019520, 50.150452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952583, 40.230370, 50.490345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441288, -0.764697, 0.469579,
		0.897318, -0.370642, 0.239677,
		-0.009235, 0.527128, 0.849736,
		35.949814, 40.388508, 50.745266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994038, 39.579132, 50.609840>,  <35.956276, 40.019520, 50.150452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994038, 39.579132, 50.609840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879959, 39.878067, 50.849892>,  <35.811512, 40.057426, 50.993923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879959, 39.878067, 50.849892>,  <35.994038, 39.579132, 50.609840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879959, 39.878067, 50.849892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446468, -0.657639, 0.606776,
		0.848132, -0.094888, 0.521218,
		-0.285197, 0.747333, 0.600129,
		35.794399, 40.102268, 51.029930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198612, 39.416512, 51.313618>,  <35.994038, 39.579132, 50.609840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198612, 39.416512, 51.313618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887859, 39.666161, 51.346901>,  <35.701408, 39.815948, 51.366871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887859, 39.666161, 51.346901>,  <36.198612, 39.416512, 51.313618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887859, 39.666161, 51.346901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465360, -0.658169, 0.591822,
		0.424136, 0.421054, 0.801762,
		-0.776884, 0.624121, 0.083212,
		35.654793, 39.853397, 51.371864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032330, 39.497540, 52.046650>,  <36.198612, 39.416512, 51.313618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032330, 39.497540, 52.046650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701759, 39.572830, 51.834389>,  <35.503418, 39.618004, 51.707031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701759, 39.572830, 51.834389>,  <36.032330, 39.497540, 52.046650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701759, 39.572830, 51.834389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531657, -0.571152, 0.625401,
		-0.185364, 0.798972, 0.572088,
		-0.826427, 0.188228, -0.530650,
		35.453831, 39.629299, 51.675194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536835, 39.609406, 52.557873>,  <36.032330, 39.497540, 52.046650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536835, 39.609406, 52.557873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321651, 39.531960, 52.229698>,  <35.192543, 39.485493, 52.032795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321651, 39.531960, 52.229698>,  <35.536835, 39.609406, 52.557873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321651, 39.531960, 52.229698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648721, -0.526409, 0.549595,
		-0.538296, 0.827892, 0.157582,
		-0.537958, -0.193618, -0.820435,
		35.160263, 39.473873, 51.983566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396114, 40.310799, 52.862736>,  <35.536835, 39.609406, 52.557873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396114, 40.310799, 52.862736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496971, 40.476250, 53.212669>,  <35.557484, 40.575520, 53.422630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.496971, 40.476250, 53.212669>,  <35.396114, 40.310799, 52.862736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496971, 40.476250, 53.212669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896221, 0.241167, -0.372326,
		-0.364985, 0.877926, -0.309891,
		0.252139, 0.413624, 0.874838,
		35.572613, 40.600338, 53.475121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633545, 41.083496, 52.717701>,  <35.396114, 40.310799, 52.862736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633545, 41.083496, 52.717701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804218, 40.986969, 53.066345>,  <35.906620, 40.929054, 53.275532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804218, 40.986969, 53.066345>,  <35.633545, 41.083496, 52.717701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804218, 40.986969, 53.066345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828185, 0.491489, -0.269347,
		-0.363391, 0.836783, 0.409563,
		0.426681, -0.241315, 0.871614,
		35.932224, 40.914574, 53.327827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934330, 41.738117, 53.007595>,  <35.633545, 41.083496, 52.717701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934330, 41.738117, 53.007595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107330, 41.442383, 53.214020>,  <36.211132, 41.264942, 53.337875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107330, 41.442383, 53.214020>,  <35.934330, 41.738117, 53.007595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107330, 41.442383, 53.214020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852946, 0.521039, 0.031636,
		-0.292279, 0.426491, 0.855966,
		0.432499, -0.739340, 0.516063,
		36.237080, 41.220581, 53.368839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259079, 42.007408, 53.622086>,  <35.934330, 41.738117, 53.007595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259079, 42.007408, 53.622086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487064, 41.681732, 53.577835>,  <36.623856, 41.486328, 53.551285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487064, 41.681732, 53.577835>,  <36.259079, 42.007408, 53.622086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487064, 41.681732, 53.577835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819158, 0.573567, -0.000873,
		0.064159, -0.090119, 0.993862,
		0.569968, -0.814187, -0.110621,
		36.658054, 41.437477, 53.544647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816319, 41.924671, 54.075264>,  <36.259079, 42.007408, 53.622086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816319, 41.924671, 54.075264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942566, 41.699875, 53.769440>,  <37.018314, 41.564999, 53.585945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942566, 41.699875, 53.769440>,  <36.816319, 41.924671, 54.075264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942566, 41.699875, 53.769440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889149, 0.456534, 0.031477,
		0.331357, -0.689741, 0.643786,
		0.315621, -0.561991, -0.764558,
		37.037251, 41.531277, 53.540073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552818, 41.954823, 54.201298>,  <36.816319, 41.924671, 54.075264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552818, 41.954823, 54.201298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487198, 41.837532, 53.824554>,  <37.447826, 41.767159, 53.598507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487198, 41.837532, 53.824554>,  <37.552818, 41.954823, 54.201298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487198, 41.837532, 53.824554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785582, 0.538634, -0.304524,
		0.596614, -0.789867, 0.141992,
		-0.164052, -0.293230, -0.941862,
		37.437981, 41.749565, 53.541996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207718, 41.744869, 54.006744>,  <37.552818, 41.954823, 54.201298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207718, 41.744869, 54.006744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023922, 41.780640, 53.653278>,  <37.913643, 41.802101, 53.441196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.023922, 41.780640, 53.653278>,  <38.207718, 41.744869, 54.006744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023922, 41.780640, 53.653278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830801, 0.395085, -0.392018,
		0.314067, -0.914282, -0.255834,
		-0.459491, 0.089427, -0.883669,
		37.886074, 41.807468, 53.388176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730968, 41.542156, 53.450222>,  <38.207718, 41.744869, 54.006744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730968, 41.542156, 53.450222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464657, 41.793159, 53.288742>,  <38.304871, 41.943760, 53.191853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464657, 41.793159, 53.288742>,  <38.730968, 41.542156, 53.450222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464657, 41.793159, 53.288742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743348, 0.510984, -0.431658,
		-0.064582, -0.587481, -0.806657,
		-0.665780, 0.627504, -0.403702,
		38.264923, 41.981411, 53.167633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896263, 41.592236, 52.816242>,  <38.730968, 41.542156, 53.450222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896263, 41.592236, 52.816242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669479, 41.919365, 52.855659>,  <38.533409, 42.115643, 52.879311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669479, 41.919365, 52.855659>,  <38.896263, 41.592236, 52.816242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669479, 41.919365, 52.855659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646751, 0.516037, -0.561622,
		-0.510163, -0.254684, -0.821505,
		-0.566963, 0.817828, 0.098545,
		38.499390, 42.164715, 52.885223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777836, 41.949181, 52.138542>,  <38.896263, 41.592236, 52.816242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777836, 41.949181, 52.138542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.709682, 42.245361, 52.398605>,  <38.668793, 42.423069, 52.554642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.709682, 42.245361, 52.398605>,  <38.777836, 41.949181, 52.138542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709682, 42.245361, 52.398605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627567, 0.590226, -0.507732,
		-0.759690, 0.321510, -0.565245,
		-0.170382, 0.740449, 0.650158,
		38.658569, 42.467495, 52.593655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667667, 42.452881, 51.627804>,  <38.777836, 41.949181, 52.138542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667667, 42.452881, 51.627804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.709198, 42.647705, 51.974674>,  <38.734116, 42.764599, 52.182796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.709198, 42.647705, 51.974674>,  <38.667667, 42.452881, 51.627804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709198, 42.647705, 51.974674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669124, 0.610867, -0.423219,
		-0.735861, 0.624190, -0.262478,
		0.103830, 0.487061, 0.867174,
		38.740349, 42.793823, 52.234825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701588, 43.239132, 51.419193>,  <38.667667, 42.452881, 51.627804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701588, 43.239132, 51.419193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890480, 43.192345, 51.768665>,  <39.003815, 43.164272, 51.978348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890480, 43.192345, 51.768665>,  <38.701588, 43.239132, 51.419193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890480, 43.192345, 51.768665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735261, 0.598966, -0.317224,
		-0.486202, 0.792187, 0.368847,
		0.472227, -0.116963, 0.873682,
		39.032146, 43.157257, 52.030769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058022, 43.916988, 51.464241>,  <38.701588, 43.239132, 51.419193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058022, 43.916988, 51.464241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237724, 43.675781, 51.727921>,  <39.345547, 43.531055, 51.886127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237724, 43.675781, 51.727921>,  <39.058022, 43.916988, 51.464241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237724, 43.675781, 51.727921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844349, 0.527713, -0.092700,
		-0.291967, 0.598238, 0.746235,
		0.449254, -0.603018, 0.659196,
		39.372501, 43.494877, 51.925678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503208, 44.389656, 51.917442>,  <39.058022, 43.916988, 51.464241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503208, 44.389656, 51.917442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.679878, 44.031937, 51.946133>,  <39.785881, 43.817303, 51.963345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.679878, 44.031937, 51.946133>,  <39.503208, 44.389656, 51.917442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679878, 44.031937, 51.946133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894596, 0.432947, -0.110705,
		0.067952, 0.113058, 0.991262,
		0.441680, -0.894301, 0.071722,
		39.812382, 43.763645, 51.967648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.780495, 41.502831, 57.209541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889904, 41.140419, 57.080368>,  <37.955551, 40.922970, 57.002865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889904, 41.140419, 57.080368>,  <37.780495, 41.502831, 57.209541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889904, 41.140419, 57.080368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930885, -0.333874, 0.148264,
		-0.242152, 0.260063, -0.934735,
		0.273526, -0.906033, -0.322937,
		37.971962, 40.868610, 56.983486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344830, 41.281654, 56.698715>,  <37.780495, 41.502831, 57.209541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344830, 41.281654, 56.698715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501236, 40.939102, 56.833611>,  <37.595078, 40.733570, 56.914547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501236, 40.939102, 56.833611>,  <37.344830, 41.281654, 56.698715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501236, 40.939102, 56.833611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918270, -0.338157, 0.205985,
		-0.062362, -0.390217, -0.918609,
		0.391013, -0.856377, 0.337236,
		37.618538, 40.682190, 56.934780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948898, 40.816261, 56.388939>,  <37.344830, 41.281654, 56.698715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948898, 40.816261, 56.388939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118309, 40.620262, 56.693710>,  <37.219955, 40.502663, 56.876572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118309, 40.620262, 56.693710>,  <36.948898, 40.816261, 56.388939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118309, 40.620262, 56.693710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884057, -0.407090, 0.229611,
		0.197664, -0.770833, -0.605595,
		0.423524, -0.489995, 0.761927,
		37.245365, 40.473263, 56.922287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863651, 40.129219, 56.300648>,  <36.948898, 40.816261, 56.388939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863651, 40.129219, 56.300648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.899677, 40.167374, 56.697189>,  <36.921291, 40.190266, 56.935116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.899677, 40.167374, 56.697189>,  <36.863651, 40.129219, 56.300648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899677, 40.167374, 56.697189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872772, -0.471933, 0.124698,
		0.479748, -0.876460, 0.040744,
		0.090064, 0.095384, 0.991358,
		36.926697, 40.195988, 56.994598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773354, 39.405663, 56.716850>,  <36.863651, 40.129219, 56.300648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773354, 39.405663, 56.716850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709267, 39.671715, 57.008583>,  <36.670815, 39.831348, 57.183624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709267, 39.671715, 57.008583>,  <36.773354, 39.405663, 56.716850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709267, 39.671715, 57.008583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852515, -0.465675, 0.237412,
		0.497543, -0.583731, 0.641645,
		-0.160213, 0.665135, 0.729333,
		36.661201, 39.871254, 57.227383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648712, 39.000874, 57.213543>,  <36.773354, 39.405663, 56.716850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648712, 39.000874, 57.213543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482227, 39.347023, 57.325180>,  <36.382336, 39.554714, 57.392162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482227, 39.347023, 57.325180>,  <36.648712, 39.000874, 57.213543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482227, 39.347023, 57.325180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797771, -0.494817, 0.344555,
		0.436271, -0.079248, 0.896318,
		-0.416208, 0.865376, 0.279096,
		36.357365, 39.606636, 57.408909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402496, 38.872658, 57.914528>,  <36.648712, 39.000874, 57.213543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402496, 38.872658, 57.914528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215370, 39.198708, 57.777870>,  <36.103096, 39.394337, 57.695873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215370, 39.198708, 57.777870>,  <36.402496, 38.872658, 57.914528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215370, 39.198708, 57.777870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863209, -0.338375, 0.374663,
		0.189791, 0.470186, 0.861919,
		-0.467813, 0.815125, -0.341649,
		36.075027, 39.443245, 57.675377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995796, 39.051628, 58.459923>,  <36.402496, 38.872658, 57.914528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995796, 39.051628, 58.459923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.823967, 39.230988, 58.146385>,  <35.720871, 39.338604, 57.958263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.823967, 39.230988, 58.146385>,  <35.995796, 39.051628, 58.459923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823967, 39.230988, 58.146385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903021, -0.217589, 0.370417,
		-0.004461, 0.866947, 0.498381,
		-0.429574, 0.448395, -0.783842,
		35.695095, 39.365505, 57.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434532, 39.330353, 58.764141>,  <35.995796, 39.051628, 58.459923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434532, 39.330353, 58.764141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346695, 39.318794, 58.374077>,  <35.293991, 39.311859, 58.140038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346695, 39.318794, 58.374077>,  <35.434532, 39.330353, 58.764141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346695, 39.318794, 58.374077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939105, -0.264542, 0.219315,
		-0.264310, 0.963941, 0.030952,
		-0.219594, -0.028900, -0.975163,
		35.280815, 39.310123, 58.081528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830292, 39.616894, 58.683224>,  <35.434532, 39.330353, 58.764141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830292, 39.616894, 58.683224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857460, 39.384926, 58.358490>,  <34.873760, 39.245743, 58.163651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857460, 39.384926, 58.358490>,  <34.830292, 39.616894, 58.683224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857460, 39.384926, 58.358490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930019, -0.331380, 0.158907,
		-0.361180, 0.744230, -0.561847,
		0.067921, -0.579922, -0.811836,
		34.877834, 39.210949, 58.114941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244419, 39.714684, 58.367294>,  <34.830292, 39.616894, 58.683224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244419, 39.714684, 58.367294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346611, 39.364311, 58.203598>,  <34.407928, 39.154087, 58.105381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346611, 39.364311, 58.203598>,  <34.244419, 39.714684, 58.367294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346611, 39.364311, 58.203598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933375, -0.333822, 0.131807,
		-0.252068, 0.348303, -0.902855,
		0.255484, -0.875927, -0.409243,
		34.423256, 39.101532, 58.080826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616894, 39.457180, 57.850323>,  <34.244419, 39.714684, 58.367294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616894, 39.457180, 57.850323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841454, 39.128242, 57.887394>,  <33.976189, 38.930882, 57.909637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841454, 39.128242, 57.887394>,  <33.616894, 39.457180, 57.850323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841454, 39.128242, 57.887394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825392, -0.564489, -0.008947,
		0.059674, -0.071474, -0.995656,
		0.561397, -0.822341, 0.092679,
		34.009872, 38.881538, 57.915199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569187, 39.000374, 57.196884>,  <33.616894, 39.457180, 57.850323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569187, 39.000374, 57.196884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.653404, 38.769127, 57.512211>,  <33.703934, 38.630379, 57.701408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.653404, 38.769127, 57.512211>,  <33.569187, 39.000374, 57.196884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653404, 38.769127, 57.512211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907640, -0.415139, -0.062038,
		0.363129, -0.702450, -0.612129,
		0.210540, -0.578120, 0.788321,
		33.716568, 38.595692, 57.748707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164097, 38.327415, 57.128948>,  <33.569187, 39.000374, 57.196884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164097, 38.327415, 57.128948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259850, 38.339050, 57.517143>,  <33.317303, 38.346031, 57.750061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259850, 38.339050, 57.517143>,  <33.164097, 38.327415, 57.128948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259850, 38.339050, 57.517143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947585, -0.210848, 0.240055,
		0.211609, -0.977086, -0.022908,
		0.239384, 0.029091, 0.970489,
		33.331665, 38.347775, 57.808289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441940, 38.108810, 57.395420>,  <33.164097, 38.327415, 57.128948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441940, 38.108810, 57.395420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171844, 38.090073, 57.100975>,  <32.009789, 38.078831, 56.924309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171844, 38.090073, 57.100975>,  <32.441940, 38.108810, 57.395420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171844, 38.090073, 57.100975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585476, 0.572965, -0.573523,
		0.448632, -0.818239, -0.359461,
		-0.675239, -0.046845, -0.736111,
		31.969273, 38.076019, 56.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776821, 37.792656, 56.750332>,  <32.441940, 38.108810, 57.395420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776821, 37.792656, 56.750332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450085, 37.987373, 56.626530>,  <32.254044, 38.104202, 56.552246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450085, 37.987373, 56.626530>,  <32.776821, 37.792656, 56.750332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450085, 37.987373, 56.626530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545537, 0.477500, -0.688755,
		-0.187492, -0.731454, -0.655608,
		-0.816845, 0.486794, -0.309508,
		32.205032, 38.133411, 56.533676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780140, 37.764603, 55.959576>,  <32.776821, 37.792656, 56.750332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780140, 37.764603, 55.959576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538769, 38.069382, 56.053642>,  <32.393944, 38.252251, 56.110081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538769, 38.069382, 56.053642>,  <32.780140, 37.764603, 55.959576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538769, 38.069382, 56.053642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566897, 0.617313, -0.545484,
		-0.560800, -0.195849, -0.804454,
		-0.603432, 0.761950, 0.235163,
		32.357738, 38.297966, 56.124191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537338, 38.127972, 55.300339>,  <32.780140, 37.764603, 55.959576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537338, 38.127972, 55.300339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503433, 38.404610, 55.587257>,  <32.483089, 38.570591, 55.759411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503433, 38.404610, 55.587257>,  <32.537338, 38.127972, 55.300339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503433, 38.404610, 55.587257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526701, 0.642191, -0.556935,
		-0.845814, 0.330595, -0.418694,
		-0.084762, 0.691590, 0.717299,
		32.478004, 38.612087, 55.802448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437874, 38.686749, 54.930031>,  <32.537338, 38.127972, 55.300339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437874, 38.686749, 54.930031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.558517, 38.815285, 55.289089>,  <32.630901, 38.892406, 55.504524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.558517, 38.815285, 55.289089>,  <32.437874, 38.686749, 54.930031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558517, 38.815285, 55.289089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509539, 0.741438, -0.436622,
		-0.805856, 0.589075, 0.059886,
		0.301605, 0.321341, 0.897649,
		32.648998, 38.911686, 55.558384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476425, 39.426701, 54.768059>,  <32.437874, 38.686749, 54.930031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476425, 39.426701, 54.768059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667015, 39.365486, 55.114365>,  <32.781368, 39.328758, 55.322147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667015, 39.365486, 55.114365>,  <32.476425, 39.426701, 54.768059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667015, 39.365486, 55.114365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625319, 0.751203, -0.211355,
		-0.618021, 0.642085, 0.453627,
		0.476474, -0.153040, 0.865767,
		32.809956, 39.319572, 55.374096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407051, 40.017319, 55.106628>,  <32.476425, 39.426701, 54.768059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407051, 40.017319, 55.106628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728336, 39.817085, 55.235786>,  <32.921108, 39.696945, 55.313282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728336, 39.817085, 55.235786>,  <32.407051, 40.017319, 55.106628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728336, 39.817085, 55.235786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580863, 0.778366, -0.238211,
		-0.132084, 0.378892, 0.915967,
		0.803213, -0.500588, 0.322894,
		32.969299, 39.666908, 55.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843052, 40.507416, 55.426205>,  <32.407051, 40.017319, 55.106628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843052, 40.507416, 55.426205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053581, 40.188690, 55.307495>,  <33.179897, 39.997456, 55.236271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053581, 40.188690, 55.307495>,  <32.843052, 40.507416, 55.426205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053581, 40.188690, 55.307495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757310, 0.597986, -0.262478,
		0.386613, -0.086603, 0.918167,
		0.526320, -0.796814, -0.296774,
		33.211475, 39.949646, 55.218464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449837, 40.649883, 55.601372>,  <32.843052, 40.507416, 55.426205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449837, 40.649883, 55.601372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494873, 40.379013, 55.310509>,  <33.521896, 40.216492, 55.135990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494873, 40.379013, 55.310509>,  <33.449837, 40.649883, 55.601372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494873, 40.379013, 55.310509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829247, 0.467211, -0.306699,
		0.547423, -0.568458, 0.614153,
		0.112594, -0.677178, -0.727154,
		33.528652, 40.175861, 55.092361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178230, 40.491638, 55.581944>,  <33.449837, 40.649883, 55.601372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178230, 40.491638, 55.581944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.050812, 40.355789, 55.227955>,  <33.974361, 40.274281, 55.015560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.050812, 40.355789, 55.227955>,  <34.178230, 40.491638, 55.581944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050812, 40.355789, 55.227955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864189, 0.279569, -0.418353,
		0.389495, -0.898051, 0.204447,
		-0.318545, -0.339627, -0.884976,
		33.955250, 40.253902, 54.962463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822842, 40.205093, 55.330898>,  <34.178230, 40.491638, 55.581944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822842, 40.205093, 55.330898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585938, 40.201553, 55.008621>,  <34.443794, 40.199429, 54.815254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585938, 40.201553, 55.008621>,  <34.822842, 40.205093, 55.330898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585938, 40.201553, 55.008621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801701, 0.093569, -0.590356,
		0.080607, -0.995573, -0.048330,
		-0.592265, -0.008840, -0.805695,
		34.408257, 40.198898, 54.766914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091736, 39.652508, 54.806328>,  <34.822842, 40.205093, 55.330898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091736, 39.652508, 54.806328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893589, 39.912521, 54.575829>,  <34.774700, 40.068531, 54.437527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.893589, 39.912521, 54.575829>,  <35.091736, 39.652508, 54.806328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893589, 39.912521, 54.575829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823835, 0.141156, -0.548973,
		-0.275509, -0.746680, -0.605444,
		-0.495370, 0.650033, -0.576251,
		34.744980, 40.107533, 54.402954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150520, 39.495792, 54.011799>,  <35.091736, 39.652508, 54.806328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150520, 39.495792, 54.011799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053986, 39.883965, 54.010006>,  <34.996063, 40.116867, 54.008930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053986, 39.883965, 54.010006>,  <35.150520, 39.495792, 54.011799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053986, 39.883965, 54.010006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718027, 0.175460, -0.673536,
		-0.652835, -0.165766, -0.739141,
		-0.241339, 0.970431, -0.004478,
		34.981583, 40.175095, 54.008663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155918, 39.779686, 53.350857>,  <35.150520, 39.495792, 54.011799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155918, 39.779686, 53.350857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204376, 40.111481, 53.568947>,  <35.233452, 40.310558, 53.699799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.204376, 40.111481, 53.568947>,  <35.155918, 39.779686, 53.350857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204376, 40.111481, 53.568947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863610, 0.182724, -0.469882,
		-0.489388, 0.527784, -0.694221,
		0.121145, 0.829491, 0.545223,
		35.240719, 40.360329, 53.732513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780338, 39.858505, 52.701221>,  <35.155918, 39.779686, 53.350857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780338, 39.858505, 52.701221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743233, 39.597366, 52.400505>,  <34.720970, 39.440685, 52.220074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743233, 39.597366, 52.400505>,  <34.780338, 39.858505, 52.701221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743233, 39.597366, 52.400505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592118, -0.570858, 0.568786,
		-0.800494, 0.497914, -0.333604,
		-0.092766, -0.652843, -0.751792,
		34.715405, 39.401512, 52.174969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093433, 39.709503, 52.691681>,  <34.780338, 39.858505, 52.701221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093433, 39.709503, 52.691681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279167, 39.407227, 52.506931>,  <34.390610, 39.225861, 52.396080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.279167, 39.407227, 52.506931>,  <34.093433, 39.709503, 52.691681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279167, 39.407227, 52.506931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611920, -0.650752, 0.449529,
		-0.640266, 0.073892, -0.764591,
		0.464343, -0.755686, -0.461870,
		34.418468, 39.180519, 52.368370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582253, 39.285095, 52.363682>,  <34.093433, 39.709503, 52.691681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582253, 39.285095, 52.363682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898415, 39.040436, 52.350143>,  <34.088112, 38.893639, 52.342022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898415, 39.040436, 52.350143>,  <33.582253, 39.285095, 52.363682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898415, 39.040436, 52.350143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556284, -0.739794, 0.378487,
		-0.256540, -0.280330, -0.924988,
		0.790402, -0.611653, -0.033844,
		34.135536, 38.856941, 52.339989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341198, 38.675453, 52.115231>,  <33.582253, 39.285095, 52.363682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341198, 38.675453, 52.115231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681068, 38.542633, 52.279083>,  <33.884991, 38.462940, 52.377396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681068, 38.542633, 52.279083>,  <33.341198, 38.675453, 52.115231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681068, 38.542633, 52.279083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501635, -0.748447, 0.433809,
		0.162542, -0.574082, -0.802502,
		0.849672, -0.332051, 0.409634,
		33.935970, 38.443016, 52.401974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379208, 37.943977, 52.062950>,  <33.341198, 38.675453, 52.115231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379208, 37.943977, 52.062950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655975, 37.972374, 52.350338>,  <33.822037, 37.989414, 52.522770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.655975, 37.972374, 52.350338>,  <33.379208, 37.943977, 52.062950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655975, 37.972374, 52.350338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362666, -0.826309, 0.430915,
		0.624272, -0.558725, -0.545996,
		0.691924, 0.070994, 0.718472,
		33.863552, 37.993671, 52.565880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637119, 37.274651, 52.252735>,  <33.379208, 37.943977, 52.062950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637119, 37.274651, 52.252735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736290, 37.500938, 52.567314>,  <33.795792, 37.636711, 52.756062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736290, 37.500938, 52.567314>,  <33.637119, 37.274651, 52.252735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736290, 37.500938, 52.567314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380952, -0.689463, 0.616049,
		0.890735, -0.452331, 0.044577,
		0.247924, 0.565719, 0.786445,
		33.810669, 37.670654, 52.803249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904629, 36.863968, 52.742023>,  <33.637119, 37.274651, 52.252735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904629, 36.863968, 52.742023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.759827, 37.168274, 52.957500>,  <33.672943, 37.350857, 53.086784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.759827, 37.168274, 52.957500>,  <33.904629, 36.863968, 52.742023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759827, 37.168274, 52.957500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514233, -0.644979, 0.565301,
		0.777504, -0.072367, 0.624700,
		-0.362009, 0.760766, 0.538688,
		33.651222, 37.396503, 53.119106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465618, 36.479069, 53.147053>,  <33.904629, 36.863968, 52.742023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465618, 36.479069, 53.147053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733543, 36.194145, 53.230930>,  <34.894299, 36.023193, 53.281258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733543, 36.194145, 53.230930>,  <34.465618, 36.479069, 53.147053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733543, 36.194145, 53.230930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727815, 0.573873, -0.375440,
		0.147089, 0.404095, 0.902814,
		0.669813, -0.712305, 0.209696,
		34.934486, 35.980453, 53.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041626, 36.805962, 53.477333>,  <34.465618, 36.479069, 53.147053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041626, 36.805962, 53.477333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169655, 36.462791, 53.316574>,  <35.246471, 36.256889, 53.220119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169655, 36.462791, 53.316574>,  <35.041626, 36.805962, 53.477333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169655, 36.462791, 53.316574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733199, 0.492964, -0.468408,
		0.599979, -0.144748, 0.786812,
		0.320069, -0.857924, -0.401897,
		35.265675, 36.205414, 53.196003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673367, 36.956299, 53.425396>,  <35.041626, 36.805962, 53.477333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673367, 36.956299, 53.425396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636040, 36.633049, 53.192764>,  <35.613644, 36.439098, 53.053185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636040, 36.633049, 53.192764>,  <35.673367, 36.956299, 53.425396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636040, 36.633049, 53.192764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798419, 0.288236, -0.528629,
		0.594827, -0.513672, 0.618322,
		-0.093319, -0.808122, -0.581576,
		35.608044, 36.390614, 53.018291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320911, 36.681381, 53.326447>,  <35.673367, 36.956299, 53.425396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320911, 36.681381, 53.326447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114189, 36.538895, 53.015057>,  <35.990158, 36.453403, 52.828220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114189, 36.538895, 53.015057>,  <36.320911, 36.681381, 53.326447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114189, 36.538895, 53.015057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801959, 0.116822, -0.585845,
		0.299629, -0.927073, 0.225296,
		-0.516801, -0.356214, -0.778478,
		35.959148, 36.432030, 52.781513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852837, 36.384209, 53.045975>,  <36.320911, 36.681381, 53.326447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852837, 36.384209, 53.045975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557873, 36.453102, 52.784729>,  <36.380894, 36.494438, 52.627979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557873, 36.453102, 52.784729>,  <36.852837, 36.384209, 53.045975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557873, 36.453102, 52.784729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663382, 0.366616, -0.652316,
		0.127091, -0.914290, -0.384604,
		-0.737409, 0.172237, -0.653118,
		36.336651, 36.504772, 52.588795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063610, 36.135155, 52.410915>,  <36.852837, 36.384209, 53.045975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063610, 36.135155, 52.410915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768177, 36.380867, 52.299809>,  <36.590916, 36.528294, 52.233143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768177, 36.380867, 52.299809>,  <37.063610, 36.135155, 52.410915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768177, 36.380867, 52.299809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625504, 0.470718, -0.622229,
		-0.251470, -0.633315, -0.731898,
		-0.738585, 0.614277, -0.277770,
		36.546600, 36.565151, 52.216476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016144, 36.131260, 51.804367>,  <37.063610, 36.135155, 52.410915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016144, 36.131260, 51.804367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.860046, 36.488503, 51.893871>,  <36.766388, 36.702850, 51.947575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.860046, 36.488503, 51.893871>,  <37.016144, 36.131260, 51.804367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860046, 36.488503, 51.893871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525069, 0.415509, -0.742735,
		-0.756317, -0.172358, -0.631092,
		-0.390241, 0.893110, 0.223756,
		36.742973, 36.756435, 51.960999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.043022, 36.261559, 57.304447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.120132, 36.584373, 57.527706>,  <35.166401, 36.778065, 57.661659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.120132, 36.584373, 57.527706>,  <35.043022, 36.261559, 57.304447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120132, 36.584373, 57.527706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910591, 0.064795, -0.408199,
		-0.365597, 0.586932, -0.722391,
		0.192778, 0.807039, 0.558144,
		35.177967, 36.826485, 57.695148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453640, 36.564777, 56.846912>,  <35.043022, 36.261559, 57.304447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453640, 36.564777, 56.846912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.535988, 36.743874, 57.194969>,  <35.585396, 36.851334, 57.403801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.535988, 36.743874, 57.194969>,  <35.453640, 36.564777, 56.846912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535988, 36.743874, 57.194969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905686, 0.249573, -0.342704,
		-0.370607, 0.858626, -0.354134,
		0.205873, 0.447743, 0.870139,
		35.597748, 36.878197, 57.456013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740334, 37.153049, 56.663696>,  <35.453640, 36.564777, 56.846912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740334, 37.153049, 56.663696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872223, 37.104530, 57.038197>,  <35.951355, 37.075420, 57.262897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872223, 37.104530, 57.038197>,  <35.740334, 37.153049, 56.663696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872223, 37.104530, 57.038197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901258, 0.335728, -0.273899,
		-0.281103, 0.934116, 0.220018,
		0.329720, -0.121299, 0.936254,
		35.971138, 37.068142, 57.319073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077839, 37.761402, 56.761707>,  <35.740334, 37.153049, 56.663696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077839, 37.761402, 56.761707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229050, 37.493179, 57.017033>,  <36.319778, 37.332245, 57.170227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229050, 37.493179, 57.017033>,  <36.077839, 37.761402, 56.761707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229050, 37.493179, 57.017033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923397, 0.322678, -0.207886,
		-0.066569, 0.668003, 0.741175,
		0.378030, -0.670560, 0.638313,
		36.342457, 37.292011, 57.208527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603676, 38.144310, 57.240944>,  <36.077839, 37.761402, 56.761707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603676, 38.144310, 57.240944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677647, 37.751244, 57.246094>,  <36.722031, 37.515404, 57.249184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677647, 37.751244, 57.246094>,  <36.603676, 38.144310, 57.240944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677647, 37.751244, 57.246094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978156, 0.182783, -0.099002,
		0.094932, 0.030904, 0.995004,
		0.184930, -0.982668, 0.012877,
		36.733124, 37.456444, 57.249958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077007, 38.026447, 57.724854>,  <36.603676, 38.144310, 57.240944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077007, 38.026447, 57.724854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098991, 37.675812, 57.533619>,  <37.112183, 37.465431, 57.418877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098991, 37.675812, 57.533619>,  <37.077007, 38.026447, 57.724854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098991, 37.675812, 57.533619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964634, 0.170241, -0.201243,
		0.257798, -0.450118, 0.854947,
		0.054964, -0.876591, -0.478087,
		37.115482, 37.412834, 57.390194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642860, 37.670792, 57.993439>,  <37.077007, 38.026447, 57.724854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642860, 37.670792, 57.993439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.600559, 37.478424, 57.645294>,  <37.575180, 37.363003, 57.436409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.600559, 37.478424, 57.645294>,  <37.642860, 37.670792, 57.993439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600559, 37.478424, 57.645294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952186, 0.203323, -0.228040,
		0.286634, -0.852862, 0.436426,
		-0.105751, -0.480923, -0.870362,
		37.568832, 37.334148, 57.384186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194309, 37.262440, 57.887489>,  <37.642860, 37.670792, 57.993439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194309, 37.262440, 57.887489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.091843, 37.265594, 57.500851>,  <38.030361, 37.267487, 57.268867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.091843, 37.265594, 57.500851>,  <38.194309, 37.262440, 57.887489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091843, 37.265594, 57.500851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957430, 0.139728, -0.252595,
		0.133069, -0.990158, -0.043346,
		-0.256166, 0.007889, -0.966601,
		38.014992, 37.267960, 57.210869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609489, 36.787430, 57.577732>,  <38.194309, 37.262440, 57.887489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609489, 36.787430, 57.577732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493721, 37.030579, 57.281967>,  <38.424259, 37.176468, 57.104507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493721, 37.030579, 57.281967>,  <38.609489, 36.787430, 57.577732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493721, 37.030579, 57.281967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931558, 0.001259, -0.363592,
		-0.220087, -0.794032, -0.566635,
		-0.289417, 0.607875, -0.739409,
		38.406895, 37.212940, 57.060146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898365, 36.448212, 56.870747>,  <38.609489, 36.787430, 57.577732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898365, 36.448212, 56.870747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.825504, 36.833427, 56.791382>,  <38.781788, 37.064556, 56.743763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.825504, 36.833427, 56.791382>,  <38.898365, 36.448212, 56.870747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825504, 36.833427, 56.791382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898385, 0.080988, -0.431677,
		-0.399655, -0.256880, -0.879936,
		-0.182153, 0.963044, -0.198410,
		38.770859, 37.122341, 56.731857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244915, 36.558937, 56.219933>,  <38.898365, 36.448212, 56.870747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244915, 36.558937, 56.219933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203072, 36.918587, 56.389938>,  <39.177967, 37.134377, 56.491943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203072, 36.918587, 56.389938>,  <39.244915, 36.558937, 56.219933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203072, 36.918587, 56.389938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871778, 0.288563, -0.395897,
		-0.478603, 0.329106, -0.814020,
		-0.104604, 0.899122, 0.425015,
		39.171692, 37.188324, 56.517445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303764, 36.887859, 55.657543>,  <39.244915, 36.558937, 56.219933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303764, 36.887859, 55.657543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.376869, 37.137482, 55.961426>,  <39.420731, 37.287254, 56.143757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.376869, 37.137482, 55.961426>,  <39.303764, 36.887859, 55.657543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376869, 37.137482, 55.961426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868540, 0.259601, -0.422191,
		-0.460691, 0.736995, -0.494572,
		0.182762, 0.624056, 0.759706,
		39.431698, 37.324699, 56.189339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025131, 36.956226, 54.927311>,  <39.303764, 36.887859, 55.657543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025131, 36.956226, 54.927311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.101807, 36.650101, 54.681534>,  <39.147812, 36.466423, 54.534069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.101807, 36.650101, 54.681534>,  <39.025131, 36.956226, 54.927311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101807, 36.650101, 54.681534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754557, -0.515264, 0.406382,
		-0.627613, 0.385733, -0.676248,
		0.191691, -0.765319, -0.614444,
		39.159313, 36.420506, 54.497200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323860, 36.690529, 54.694008>,  <39.025131, 36.956226, 54.927311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323860, 36.690529, 54.694008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.588833, 36.395737, 54.640278>,  <38.747818, 36.218861, 54.608040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.588833, 36.395737, 54.640278>,  <38.323860, 36.690529, 54.694008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588833, 36.395737, 54.640278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658845, -0.658499, 0.363734,
		-0.356518, -0.152449, -0.921767,
		0.662433, -0.736979, -0.134326,
		38.787563, 36.174644, 54.599979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040146, 36.068859, 54.297344>,  <38.323860, 36.690529, 54.694008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040146, 36.068859, 54.297344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355160, 35.908836, 54.484848>,  <38.544170, 35.812824, 54.597351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355160, 35.908836, 54.484848>,  <38.040146, 36.068859, 54.297344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355160, 35.908836, 54.484848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576232, -0.747714, 0.329970,
		0.218493, -0.529980, -0.819379,
		0.787539, -0.400056, 0.468762,
		38.591423, 35.788818, 54.625477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809498, 35.440132, 54.340721>,  <38.040146, 36.068859, 54.297344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809498, 35.440132, 54.340721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112896, 35.439484, 54.601391>,  <38.294937, 35.439095, 54.757793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112896, 35.439484, 54.601391>,  <37.809498, 35.440132, 54.340721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112896, 35.439484, 54.601391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436415, -0.743906, 0.506108,
		0.483963, -0.668282, -0.564959,
		0.758499, -0.001619, 0.651671,
		38.340446, 35.438999, 54.796894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217304, 34.725025, 54.293472>,  <37.809498, 35.440132, 54.340721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217304, 34.725025, 54.293472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254833, 34.917068, 54.642342>,  <38.277351, 35.032295, 54.851665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254833, 34.917068, 54.642342>,  <38.217304, 34.725025, 54.293472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254833, 34.917068, 54.642342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648026, -0.635612, 0.419595,
		0.755818, -0.604558, 0.251493,
		0.093818, 0.480112, 0.872176,
		38.282978, 35.061104, 54.903996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081474, 34.147690, 54.799263>,  <38.217304, 34.725025, 54.293472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081474, 34.147690, 54.799263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.021568, 34.485077, 55.005615>,  <37.985626, 34.687511, 55.129425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.021568, 34.485077, 55.005615>,  <38.081474, 34.147690, 54.799263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021568, 34.485077, 55.005615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828788, -0.391609, 0.399690,
		0.539149, -0.367694, 0.757707,
		-0.149761, 0.843471, 0.515876,
		37.976639, 34.738117, 55.160378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845741, 33.978279, 55.544773>,  <38.081474, 34.147690, 54.799263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845741, 33.978279, 55.544773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710823, 34.351089, 55.491768>,  <37.629871, 34.574776, 55.459965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710823, 34.351089, 55.491768>,  <37.845741, 33.978279, 55.544773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710823, 34.351089, 55.491768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898398, -0.276627, 0.341114,
		0.281270, 0.234107, 0.930635,
		-0.337296, 0.932025, -0.132515,
		37.609634, 34.630695, 55.452015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361847, 33.966362, 56.029835>,  <37.845741, 33.978279, 55.544773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361847, 33.966362, 56.029835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265068, 34.320061, 55.870052>,  <37.207001, 34.532280, 55.774181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265068, 34.320061, 55.870052>,  <37.361847, 33.966362, 56.029835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265068, 34.320061, 55.870052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880675, -0.027324, 0.472931,
		0.407275, 0.466215, 0.785348,
		-0.241946, 0.884249, -0.399456,
		37.192486, 34.585335, 55.750217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997833, 34.309044, 56.576210>,  <37.361847, 33.966362, 56.029835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997833, 34.309044, 56.576210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.883537, 34.478020, 56.232140>,  <36.814960, 34.579407, 56.025700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.883537, 34.478020, 56.232140>,  <36.997833, 34.309044, 56.576210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883537, 34.478020, 56.232140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899544, 0.191250, 0.392739,
		0.330417, 0.885984, 0.325357,
		-0.285736, 0.422441, -0.860174,
		36.797817, 34.604752, 55.974087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668209, 34.958530, 56.773273>,  <36.997833, 34.309044, 56.576210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668209, 34.958530, 56.773273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.538452, 34.852402, 56.410095>,  <36.460598, 34.788723, 56.192188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.538452, 34.852402, 56.410095>,  <36.668209, 34.958530, 56.773273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538452, 34.852402, 56.410095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945909, 0.086079, 0.312804,
		-0.004838, 0.960310, -0.278894,
		-0.324395, -0.265322, -0.907950,
		36.441135, 34.772804, 56.137711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014767, 35.371925, 56.666035>,  <36.668209, 34.958530, 56.773273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014767, 35.371925, 56.666035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.001537, 35.072311, 56.401352>,  <35.993599, 34.892544, 56.242542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.001537, 35.072311, 56.401352>,  <36.014767, 35.371925, 56.666035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001537, 35.072311, 56.401352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958332, -0.164187, 0.233758,
		-0.283736, 0.641863, -0.712395,
		-0.033074, -0.749036, -0.661703,
		35.991615, 34.847599, 56.202843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415462, 35.541203, 56.429497>,  <36.014767, 35.371925, 56.666035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415462, 35.541203, 56.429497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.494179, 35.171516, 56.298592>,  <35.541409, 34.949703, 56.220051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.494179, 35.171516, 56.298592>,  <35.415462, 35.541203, 56.429497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494179, 35.171516, 56.298592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962202, -0.246143, 0.116539,
		-0.188260, 0.291955, -0.937721,
		0.196789, -0.924217, -0.327258,
		35.553215, 34.894253, 56.200413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968315, 35.452122, 55.936150>,  <35.415462, 35.541203, 56.429497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968315, 35.452122, 55.936150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.087894, 35.092392, 56.063797>,  <35.159641, 34.876553, 56.140385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.087894, 35.092392, 56.063797>,  <34.968315, 35.452122, 55.936150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087894, 35.092392, 56.063797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948140, -0.317770, -0.007310,
		0.107982, -0.300387, -0.947685,
		0.298950, -0.899327, 0.319123,
		35.177578, 34.822594, 56.159534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630562, 34.960815, 55.472675>,  <34.968315, 35.452122, 55.936150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630562, 34.960815, 55.472675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732910, 34.798309, 55.823555>,  <34.794319, 34.700806, 56.034084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732910, 34.798309, 55.823555>,  <34.630562, 34.960815, 55.472675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732910, 34.798309, 55.823555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959743, -0.215509, 0.180139,
		0.115861, -0.887979, -0.445050,
		0.255872, -0.406262, 0.877201,
		34.809673, 34.676430, 56.086716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877216, 34.221279, 55.540089>,  <34.630562, 34.960815, 55.472675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877216, 34.221279, 55.540089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.524834, 34.115906, 55.382854>,  <34.313404, 34.052681, 55.288513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.524834, 34.115906, 55.382854>,  <34.877216, 34.221279, 55.540089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524834, 34.115906, 55.382854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227536, 0.492528, -0.840026,
		0.414899, -0.829468, -0.373954,
		-0.880958, -0.263438, -0.393083,
		34.260548, 34.036873, 55.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978317, 33.934830, 54.885723>,  <34.877216, 34.221279, 55.540089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978317, 33.934830, 54.885723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.603924, 34.071945, 54.853645>,  <34.379288, 34.154213, 54.834396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.603924, 34.071945, 54.853645>,  <34.978317, 33.934830, 54.885723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603924, 34.071945, 54.853645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236632, 0.443934, -0.864250,
		-0.260650, -0.827902, -0.496629,
		-0.935985, 0.342785, -0.080197,
		34.323128, 34.174782, 54.829586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838779, 33.930977, 54.253273>,  <34.978317, 33.934830, 54.885723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838779, 33.930977, 54.253273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.595978, 34.212181, 54.401505>,  <34.450298, 34.380901, 54.490444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.595978, 34.212181, 54.401505>,  <34.838779, 33.930977, 54.253273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595978, 34.212181, 54.401505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214261, 0.593817, -0.775547,
		-0.765272, -0.391358, -0.511075,
		-0.607002, 0.703008, 0.370579,
		34.413876, 34.423084, 54.512680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482937, 34.053455, 53.707363>,  <34.838779, 33.930977, 54.253273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482937, 34.053455, 53.707363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.394817, 34.362366, 53.945709>,  <34.341946, 34.547714, 54.088715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.394817, 34.362366, 53.945709>,  <34.482937, 34.053455, 53.707363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394817, 34.362366, 53.945709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042333, 0.617865, -0.785143,
		-0.974513, -0.147744, -0.168809,
		-0.220301, 0.772279, 0.595863,
		34.328728, 34.594048, 54.124470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298702, 34.508095, 53.235165>,  <34.482937, 34.053455, 53.707363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298702, 34.508095, 53.235165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.353249, 34.735138, 53.559937>,  <34.385975, 34.871365, 53.754799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.353249, 34.735138, 53.559937>,  <34.298702, 34.508095, 53.235165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353249, 34.735138, 53.559937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207431, 0.785058, -0.583658,
		-0.968699, 0.248008, -0.010686,
		0.136363, 0.567606, 0.811929,
		34.394157, 34.905418, 53.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945831, 35.168430, 53.135868>,  <34.298702, 34.508095, 53.235165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945831, 35.168430, 53.135868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230099, 35.211357, 53.413986>,  <34.400658, 35.237114, 53.580856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230099, 35.211357, 53.413986>,  <33.945831, 35.168430, 53.135868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230099, 35.211357, 53.413986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442672, 0.699925, -0.560488,
		-0.546805, 0.706107, 0.449907,
		0.710666, 0.107317, 0.695297,
		34.443298, 35.243553, 53.622574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037392, 35.903690, 53.106075>,  <33.945831, 35.168430, 53.135868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037392, 35.903690, 53.106075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.360474, 35.741547, 53.277328>,  <34.554321, 35.644260, 53.380081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.360474, 35.741547, 53.277328>,  <34.037392, 35.903690, 53.106075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360474, 35.741547, 53.277328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585011, 0.641341, -0.496432,
		-0.073347, 0.651433, 0.755153,
		0.807702, -0.405360, 0.428136,
		34.602783, 35.619938, 53.405769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950668, 36.563065, 53.652901>,  <34.037392, 35.903690, 53.106075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950668, 36.563065, 53.652901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.748535, 36.907753, 53.634701>,  <33.627254, 37.114567, 53.623779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.748535, 36.907753, 53.634701>,  <33.950668, 36.563065, 53.652901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748535, 36.907753, 53.634701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597095, -0.311108, 0.739385,
		0.622992, 0.400801, 0.671744,
		-0.505331, 0.861726, -0.045499,
		33.596935, 37.166271, 53.621052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928215, 36.919754, 54.346733>,  <33.950668, 36.563065, 53.652901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928215, 36.919754, 54.346733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.611904, 37.013435, 54.120522>,  <33.422119, 37.069645, 53.984795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.611904, 37.013435, 54.120522>,  <33.928215, 36.919754, 54.346733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611904, 37.013435, 54.120522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611821, -0.330560, 0.718614,
		-0.018640, 0.914264, 0.404690,
		-0.790777, 0.234203, -0.565527,
		33.374672, 37.083694, 53.950863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445534, 37.085640, 54.842144>,  <33.928215, 36.919754, 54.346733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445534, 37.085640, 54.842144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.227669, 37.031769, 54.511036>,  <33.096951, 36.999447, 54.312370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.227669, 37.031769, 54.511036>,  <33.445534, 37.085640, 54.842144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227669, 37.031769, 54.511036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730753, -0.408104, 0.547222,
		-0.411518, 0.902947, 0.123859,
		-0.544659, -0.134681, -0.827773,
		33.064270, 36.991364, 54.262703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783726, 37.448048, 55.043495>,  <33.445534, 37.085640, 54.842144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783726, 37.448048, 55.043495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.686588, 37.207497, 54.739029>,  <32.628304, 37.063164, 54.556351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.686588, 37.207497, 54.739029>,  <32.783726, 37.448048, 55.043495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686588, 37.207497, 54.739029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772571, -0.354621, 0.526666,
		-0.586651, 0.715951, -0.378491,
		-0.242846, -0.601380, -0.761162,
		32.613735, 37.027084, 54.510681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097706, 37.518421, 54.943592>,  <32.783726, 37.448048, 55.043495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097706, 37.518421, 54.943592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.181293, 37.158722, 54.789875>,  <32.231445, 36.942902, 54.697643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.181293, 37.158722, 54.789875>,  <32.097706, 37.518421, 54.943592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181293, 37.158722, 54.789875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826660, -0.372383, 0.421859,
		-0.522461, 0.229528, -0.821189,
		0.208969, -0.899249, -0.384297,
		32.243984, 36.888947, 54.674587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423792, 37.237961, 54.896793>,  <32.097706, 37.518421, 54.943592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423792, 37.237961, 54.896793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677437, 36.929749, 54.870918>,  <31.829624, 36.744820, 54.855392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677437, 36.929749, 54.870918>,  <31.423792, 37.237961, 54.896793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677437, 36.929749, 54.870918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686783, -0.599678, 0.410750,
		-0.355290, -0.216033, -0.909450,
		0.634113, -0.770530, -0.064692,
		31.867670, 36.698589, 54.851509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022572, 36.607082, 54.616707>,  <31.423792, 37.237961, 54.896793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022572, 36.607082, 54.616707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340673, 36.481544, 54.824192>,  <31.531536, 36.406219, 54.948685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340673, 36.481544, 54.824192>,  <31.022572, 36.607082, 54.616707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340673, 36.481544, 54.824192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606201, -0.424751, 0.672389,
		0.009296, -0.849168, -0.528041,
		0.795257, -0.313848, 0.518715,
		31.579250, 36.387390, 54.979805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856895, 35.947578, 54.869564>,  <31.022572, 36.607082, 54.616707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856895, 35.947578, 54.869564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169598, 36.032654, 55.104042>,  <31.357218, 36.083698, 55.244728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.169598, 36.032654, 55.104042>,  <30.856895, 35.947578, 54.869564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169598, 36.032654, 55.104042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489586, -0.372879, 0.788205,
		0.386221, -0.903175, -0.187371,
		0.781754, 0.212686, 0.586195,
		31.404123, 36.096458, 55.279900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034206, 35.324322, 55.204617>,  <30.856895, 35.947578, 54.869564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034206, 35.324322, 55.204617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.176435, 35.628410, 55.422108>,  <31.261772, 35.810863, 55.552601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.176435, 35.628410, 55.422108>,  <31.034206, 35.324322, 55.204617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176435, 35.628410, 55.422108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355066, -0.428260, 0.830976,
		0.864579, -0.488529, 0.117651,
		0.355570, 0.760218, 0.543725,
		31.283106, 35.856476, 55.585224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.594067, 44.283485, 47.133202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.728859, 44.370331, 47.499657>,  <42.809734, 44.422436, 47.719528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.728859, 44.370331, 47.499657>,  <42.594067, 44.283485, 47.133202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728859, 44.370331, 47.499657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706345, -0.585066, 0.398465,
		0.622511, -0.781384, -0.043802,
		0.336982, 0.217110, 0.916137,
		42.829952, 44.435463, 47.774498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776493, 43.606766, 47.374664>,  <42.594067, 44.283485, 47.133202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776493, 43.606766, 47.374664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.696953, 43.856941, 47.676468>,  <42.649227, 44.007046, 47.857552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.696953, 43.856941, 47.676468>,  <42.776493, 43.606766, 47.374664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696953, 43.856941, 47.676468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766607, -0.578901, 0.277825,
		0.610548, -0.523166, 0.594582,
		-0.198855, 0.625437, 0.754510,
		42.637295, 44.044571, 47.902821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675716, 43.178196, 47.973179>,  <42.776493, 43.606766, 47.374664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675716, 43.178196, 47.973179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.473522, 43.512520, 48.058884>,  <42.352207, 43.713116, 48.110306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.473522, 43.512520, 48.058884>,  <42.675716, 43.178196, 47.973179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473522, 43.512520, 48.058884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715946, -0.544886, 0.436486,
		0.481570, 0.067234, 0.873825,
		-0.505482, 0.835811, 0.214265,
		42.321877, 43.763264, 48.123161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323784, 43.001156, 48.673664>,  <42.675716, 43.178196, 47.973179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323784, 43.001156, 48.673664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.138695, 43.323761, 48.526466>,  <42.027641, 43.517323, 48.438148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.138695, 43.323761, 48.526466>,  <42.323784, 43.001156, 48.673664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138695, 43.323761, 48.526466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853822, -0.293788, 0.429740,
		0.238480, 0.513053, 0.824563,
		-0.462727, 0.806514, -0.367994,
		41.999878, 43.565716, 48.416069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115795, 43.333660, 49.258518>,  <42.323784, 43.001156, 48.673664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115795, 43.333660, 49.258518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.889050, 43.455940, 48.952522>,  <41.753002, 43.529308, 48.768925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.889050, 43.455940, 48.952522>,  <42.115795, 43.333660, 49.258518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889050, 43.455940, 48.952522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815188, -0.074146, 0.574431,
		0.118883, 0.949236, 0.291233,
		-0.566865, 0.305700, -0.764992,
		41.718990, 43.547649, 48.723026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495148, 43.638470, 49.576641>,  <42.115795, 43.333660, 49.258518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495148, 43.638470, 49.576641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.382240, 43.561958, 49.200611>,  <41.314495, 43.516052, 48.974995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.382240, 43.561958, 49.200611>,  <41.495148, 43.638470, 49.576641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382240, 43.561958, 49.200611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956851, -0.014346, 0.290225,
		-0.069000, 0.981431, -0.178977,
		-0.282268, -0.191280, -0.940073,
		41.297562, 43.504574, 48.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808956, 43.941746, 49.482464>,  <41.495148, 43.638470, 49.576641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808956, 43.941746, 49.482464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.835320, 43.711166, 49.156677>,  <40.851135, 43.572819, 48.961205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.835320, 43.711166, 49.156677>,  <40.808956, 43.941746, 49.482464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835320, 43.711166, 49.156677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940165, -0.309326, 0.142852,
		-0.334284, 0.756321, -0.562346,
		0.065907, -0.576452, -0.814469,
		40.855091, 43.538231, 48.912338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173485, 43.992111, 49.130638>,  <40.808956, 43.941746, 49.482464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173485, 43.992111, 49.130638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.336666, 43.652832, 48.995506>,  <40.434574, 43.449265, 48.914425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.336666, 43.652832, 48.995506>,  <40.173485, 43.992111, 49.130638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336666, 43.652832, 48.995506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852208, -0.486526, 0.192442,
		-0.327594, 0.209398, -0.921322,
		0.407950, -0.848201, -0.337834,
		40.459049, 43.398373, 48.894157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654793, 43.660774, 48.850903>,  <40.173485, 43.992111, 49.130638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654793, 43.660774, 48.850903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.906219, 43.351952, 48.888512>,  <40.057076, 43.166660, 48.911079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.906219, 43.351952, 48.888512>,  <39.654793, 43.660774, 48.850903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906219, 43.351952, 48.888512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777076, -0.618352, 0.117444,
		-0.032532, -0.146886, -0.988618,
		0.628565, -0.772052, 0.094025,
		40.094788, 43.120335, 48.916718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357426, 43.138165, 48.394203>,  <39.654793, 43.660774, 48.850903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357426, 43.138165, 48.394203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600647, 42.951660, 48.651222>,  <39.746582, 42.839760, 48.805435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600647, 42.951660, 48.651222>,  <39.357426, 43.138165, 48.394203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600647, 42.951660, 48.651222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765181, -0.559900, 0.317821,
		0.211578, -0.684921, -0.697222,
		0.608056, -0.466257, 0.642551,
		39.783062, 42.811783, 48.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243904, 42.446136, 48.273895>,  <39.357426, 43.138165, 48.394203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243904, 42.446136, 48.273895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.415482, 42.457748, 48.635040>,  <39.518429, 42.464714, 48.851727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.415482, 42.457748, 48.635040>,  <39.243904, 42.446136, 48.273895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415482, 42.457748, 48.635040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682450, -0.644419, 0.344943,
		0.591837, -0.764121, -0.256607,
		0.428941, 0.029028, 0.902866,
		39.544163, 42.466457, 48.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298069, 41.763554, 48.555256>,  <39.243904, 42.446136, 48.273895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298069, 41.763554, 48.555256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.293816, 42.017128, 48.864582>,  <39.291264, 42.169273, 49.050179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.293816, 42.017128, 48.864582>,  <39.298069, 41.763554, 48.555256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293816, 42.017128, 48.864582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848248, -0.415230, 0.328723,
		0.529492, -0.652468, 0.542148,
		-0.010635, 0.633932, 0.773316,
		39.290627, 42.207306, 49.096577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834103, 41.457245, 48.948269>,  <39.298069, 41.763554, 48.555256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834103, 41.457245, 48.948269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969452, 41.081146, 48.963463>,  <40.050663, 40.855488, 48.972580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.969452, 41.081146, 48.963463>,  <39.834103, 41.457245, 48.948269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969452, 41.081146, 48.963463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755295, 0.247297, -0.606939,
		0.561276, 0.234064, 0.793840,
		0.338377, -0.940244, 0.037986,
		40.070965, 40.799072, 48.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578667, 41.470051, 49.322006>,  <39.834103, 41.457245, 48.948269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578667, 41.470051, 49.322006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.576660, 41.128204, 49.114311>,  <40.575455, 40.923096, 48.989697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.576660, 41.128204, 49.114311>,  <40.578667, 41.470051, 49.322006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576660, 41.128204, 49.114311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972214, 0.117358, -0.202552,
		0.234041, -0.505823, 0.830282,
		-0.005016, -0.854617, -0.519235,
		40.575157, 40.871819, 48.958542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198204, 41.250931, 49.419598>,  <40.578667, 41.470051, 49.322006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198204, 41.250931, 49.419598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.082371, 41.039497, 49.100414>,  <41.012871, 40.912636, 48.908905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.082371, 41.039497, 49.100414>,  <41.198204, 41.250931, 49.419598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082371, 41.039497, 49.100414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931371, 0.036583, -0.362229,
		0.220662, -0.848090, 0.481718,
		-0.289580, -0.528588, -0.797959,
		40.995499, 40.880920, 48.861027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729130, 40.776508, 49.351673>,  <41.198204, 41.250931, 49.419598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729130, 40.776508, 49.351673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.538361, 40.793236, 49.000492>,  <41.423901, 40.803272, 48.789783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.538361, 40.793236, 49.000492>,  <41.729130, 40.776508, 49.351673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538361, 40.793236, 49.000492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861322, 0.221264, -0.457347,
		0.175133, -0.974317, -0.141544,
		-0.476920, 0.041818, -0.877952,
		41.395287, 40.805782, 48.737106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111565, 40.386971, 48.898621>,  <41.729130, 40.776508, 49.351673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111565, 40.386971, 48.898621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.901894, 40.600388, 48.633118>,  <41.776093, 40.728439, 48.473816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.901894, 40.600388, 48.633118>,  <42.111565, 40.386971, 48.898621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901894, 40.600388, 48.633118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850307, 0.284781, -0.442581,
		-0.047112, -0.796385, -0.602952,
		-0.524174, 0.533545, -0.663756,
		41.744640, 40.760452, 48.433990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288284, 40.120987, 48.237999>,  <42.111565, 40.386971, 48.898621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288284, 40.120987, 48.237999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152687, 40.495079, 48.197144>,  <42.071331, 40.719536, 48.172630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152687, 40.495079, 48.197144>,  <42.288284, 40.120987, 48.237999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152687, 40.495079, 48.197144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778711, 0.218006, -0.588288,
		-0.527917, -0.278961, -0.802175,
		-0.338988, 0.935229, -0.102141,
		42.050991, 40.775646, 48.166500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404053, 40.221203, 47.509357>,  <42.288284, 40.120987, 48.237999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404053, 40.221203, 47.509357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.358498, 40.580681, 47.678768>,  <42.331165, 40.796368, 47.780415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.358498, 40.580681, 47.678768>,  <42.404053, 40.221203, 47.509357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358498, 40.580681, 47.678768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800997, 0.335248, -0.495996,
		-0.587736, 0.282754, -0.758034,
		-0.113885, 0.898698, 0.423523,
		42.324333, 40.850292, 47.805824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456512, 40.627689, 46.945217>,  <42.404053, 40.221203, 47.509357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456512, 40.627689, 46.945217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.543266, 40.871849, 47.249947>,  <42.595318, 41.018345, 47.432785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.543266, 40.871849, 47.249947>,  <42.456512, 40.627689, 46.945217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543266, 40.871849, 47.249947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786053, 0.353560, -0.507066,
		-0.578864, 0.708805, -0.403128,
		0.216881, 0.610402, 0.761821,
		42.608330, 41.054970, 47.478493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716095, 41.288090, 46.646641>,  <42.456512, 40.627689, 46.945217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716095, 41.288090, 46.646641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.851509, 41.280380, 47.022945>,  <42.932758, 41.275753, 47.248726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.851509, 41.280380, 47.022945>,  <42.716095, 41.288090, 46.646641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851509, 41.280380, 47.022945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903416, 0.286239, -0.319230,
		-0.263127, 0.957964, 0.114316,
		0.338533, -0.019277, 0.940757,
		42.953068, 41.274597, 47.305172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226315, 41.706444, 46.545391>,  <42.716095, 41.288090, 46.646641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226315, 41.706444, 46.545391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.304230, 41.514877, 46.887783>,  <43.350979, 41.399937, 47.093216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.304230, 41.514877, 46.887783>,  <43.226315, 41.706444, 46.545391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304230, 41.514877, 46.887783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980843, 0.093219, -0.171048,
		0.002125, 0.872897, 0.487901,
		0.194789, -0.478917, 0.855976,
		43.362667, 41.371201, 47.144577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578316, 42.164001, 46.891296>,  <43.226315, 41.706444, 46.545391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578316, 42.164001, 46.891296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.704456, 41.830101, 47.071846>,  <43.780140, 41.629761, 47.180176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.704456, 41.830101, 47.071846>,  <43.578316, 42.164001, 46.891296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704456, 41.830101, 47.071846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948709, 0.266045, -0.170799,
		0.022489, 0.482085, 0.875836,
		0.315351, -0.834754, 0.451376,
		43.799061, 41.579674, 47.207260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867092, 42.266846, 47.577717>,  <43.578316, 42.164001, 46.891296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867092, 42.266846, 47.577717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.049614, 41.961304, 47.395153>,  <44.159126, 41.777977, 47.285614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.049614, 41.961304, 47.395153>,  <43.867092, 42.266846, 47.577717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049614, 41.961304, 47.395153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861609, 0.507427, 0.012177,
		0.222292, -0.398801, 0.889687,
		0.456308, -0.763855, -0.456408,
		44.186508, 41.732147, 47.258232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591827, 42.331024, 47.779427>,  <43.867092, 42.266846, 47.577717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591827, 42.331024, 47.779427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.613731, 42.035744, 47.510483>,  <44.626873, 41.858578, 47.349117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.613731, 42.035744, 47.510483>,  <44.591827, 42.331024, 47.779427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613731, 42.035744, 47.510483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990847, 0.123381, -0.054762,
		0.123381, -0.663204, 0.738199,
		0.054762, -0.738199, -0.672356,
		44.630161, 41.814285, 47.308777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290733, 42.092010, 47.869701>,  <44.591827, 42.331024, 47.779427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290733, 42.092010, 47.869701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.198380, 41.885704, 47.539688>,  <45.142967, 41.761921, 47.341679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.198380, 41.885704, 47.539688>,  <45.290733, 42.092010, 47.869701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198380, 41.885704, 47.539688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950352, 0.062269, -0.304884,
		0.208622, -0.854464, 0.475781,
		-0.230886, -0.515765, -0.825032,
		45.129112, 41.730976, 47.292179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528633, 41.303177, 47.845924>,  <45.290733, 42.092010, 47.869701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528633, 41.303177, 47.845924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.501450, 41.553955, 47.535488>,  <45.485138, 41.704422, 47.349228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.501450, 41.553955, 47.535488>,  <45.528633, 41.303177, 47.845924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501450, 41.553955, 47.535488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996650, 0.078141, -0.024150,
		0.045504, -0.775133, -0.630158,
		-0.067960, 0.626947, -0.776092,
		45.481060, 41.742039, 47.302662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284393, 41.452919, 47.693027>,  <45.528633, 41.303177, 47.845924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284393, 41.452919, 47.693027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.489777, 41.502373, 48.032692>,  <46.613007, 41.532043, 48.236492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.489777, 41.502373, 48.032692>,  <46.284393, 41.452919, 47.693027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489777, 41.502373, 48.032692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724702, -0.467451, 0.506258,
		0.459532, -0.875331, -0.150419,
		0.513457, 0.123633, 0.849163,
		46.643814, 41.539463, 48.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531384, 40.737503, 47.966942>,  <46.284393, 41.452919, 47.693027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531384, 40.737503, 47.966942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.457794, 41.010818, 48.249577>,  <46.413639, 41.174809, 48.419159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.457794, 41.010818, 48.249577>,  <46.531384, 40.737503, 47.966942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457794, 41.010818, 48.249577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716480, -0.585353, 0.379498,
		0.672911, -0.436437, 0.597255,
		-0.183978, 0.683290, 0.706589,
		46.402599, 41.215805, 48.461552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255100, 40.343334, 48.623764>,  <46.531384, 40.737503, 47.966942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255100, 40.343334, 48.623764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.138641, 40.713387, 48.721230>,  <46.068764, 40.935417, 48.779709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.138641, 40.713387, 48.721230>,  <46.255100, 40.343334, 48.623764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138641, 40.713387, 48.721230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820756, -0.372405, 0.433215,
		0.491520, -0.073857, 0.867729,
		-0.291150, 0.925127, 0.243663,
		46.051296, 40.990925, 48.794327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057060, 40.343174, 49.254128>,  <46.255100, 40.343334, 48.623764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057060, 40.343174, 49.254128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.864716, 40.664444, 49.113461>,  <45.749310, 40.857208, 49.029060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.864716, 40.664444, 49.113461>,  <46.057060, 40.343174, 49.254128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864716, 40.664444, 49.113461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788768, -0.221109, 0.573547,
		0.382903, 0.553185, 0.739846,
		-0.480864, 0.803179, -0.351671,
		45.720455, 40.905399, 49.007957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727516, 40.535206, 49.871136>,  <46.057060, 40.343174, 49.254128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727516, 40.535206, 49.871136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.548347, 40.710487, 49.559406>,  <45.440845, 40.815655, 49.372368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.548347, 40.710487, 49.559406>,  <45.727516, 40.535206, 49.871136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548347, 40.710487, 49.559406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893471, -0.187466, 0.408126,
		0.032747, 0.879109, 0.475494,
		-0.447926, 0.438204, -0.779320,
		45.413971, 40.841949, 49.325611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283978, 41.029774, 50.139809>,  <45.727516, 40.535206, 49.871136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283978, 41.029774, 50.139809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.137745, 40.939255, 49.778667>,  <45.050007, 40.884941, 49.561985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.137745, 40.939255, 49.778667>,  <45.283978, 41.029774, 50.139809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137745, 40.939255, 49.778667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844201, -0.327912, 0.424026,
		-0.392013, 0.917203, -0.071164,
		-0.365583, -0.226300, -0.902849,
		45.028069, 40.871365, 49.507812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571465, 41.357204, 50.073494>,  <45.283978, 41.029774, 50.139809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571465, 41.357204, 50.073494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.565525, 41.053452, 49.813305>,  <44.561962, 40.871201, 49.657192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.565525, 41.053452, 49.813305>,  <44.571465, 41.357204, 50.073494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565525, 41.053452, 49.813305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906074, -0.264897, 0.329938,
		-0.422859, 0.594278, -0.684123,
		-0.014853, -0.759384, -0.650474,
		44.561069, 40.825638, 49.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964718, 41.388760, 49.763103>,  <44.571465, 41.357204, 50.073494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964718, 41.388760, 49.763103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.067886, 41.009140, 49.690674>,  <44.129787, 40.781368, 49.647217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.067886, 41.009140, 49.690674>,  <43.964718, 41.388760, 49.763103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067886, 41.009140, 49.690674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810088, -0.314557, 0.494785,
		-0.526532, 0.019072, -0.849941,
		0.257919, -0.949047, -0.181075,
		44.145264, 40.724426, 49.636353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262512, 41.111710, 49.779675>,  <43.964718, 41.388760, 49.763103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262512, 41.111710, 49.779675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.513592, 40.800331, 49.780571>,  <43.664242, 40.613503, 49.781109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.513592, 40.800331, 49.780571>,  <43.262512, 41.111710, 49.779675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513592, 40.800331, 49.780571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727260, -0.585395, 0.358337,
		-0.277638, -0.226556, -0.933589,
		0.627702, -0.778451, 0.002237,
		43.701900, 40.566795, 49.781242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002216, 40.487637, 49.434750>,  <43.262512, 41.111710, 49.779675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002216, 40.487637, 49.434750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261154, 40.350494, 49.707039>,  <43.416519, 40.268208, 49.870415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261154, 40.350494, 49.707039>,  <43.002216, 40.487637, 49.434750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261154, 40.350494, 49.707039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680583, -0.662100, 0.313737,
		0.343142, -0.666388, -0.661952,
		0.647349, -0.342857, 0.680727,
		43.455360, 40.247639, 49.911255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013680, 39.772659, 49.296188>,  <43.002216, 40.487637, 49.434750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013680, 39.772659, 49.296188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.142487, 39.861740, 49.664253>,  <43.219772, 39.915188, 49.885094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.142487, 39.861740, 49.664253>,  <43.013680, 39.772659, 49.296188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142487, 39.861740, 49.664253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575354, -0.725826, 0.377019,
		0.751845, -0.650829, -0.105594,
		0.322018, 0.222706, 0.920166,
		43.239094, 39.928551, 49.940304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130733, 39.099567, 49.597107>,  <43.013680, 39.772659, 49.296188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130733, 39.099567, 49.597107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.138542, 39.304893, 49.940300>,  <43.143227, 39.428089, 50.146214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.138542, 39.304893, 49.940300>,  <43.130733, 39.099567, 49.597107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138542, 39.304893, 49.940300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409337, -0.778822, 0.475267,
		0.912174, -0.360483, 0.194910,
		0.019525, 0.513311, 0.857981,
		43.144402, 39.458885, 50.197693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322231, 38.681374, 50.148418>,  <43.130733, 39.099567, 49.597107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322231, 38.681374, 50.148418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140663, 38.973343, 50.352837>,  <43.031723, 39.148525, 50.475487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140663, 38.973343, 50.352837>,  <43.322231, 38.681374, 50.148418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140663, 38.973343, 50.352837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535024, -0.681907, 0.498751,
		0.712535, -0.047028, 0.700059,
		-0.453919, 0.729926, 0.511044,
		43.004486, 39.192322, 50.506149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364086, 38.403774, 50.912746>,  <43.322231, 38.681374, 50.148418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364086, 38.403774, 50.912746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.084778, 38.688698, 50.884342>,  <42.917194, 38.859650, 50.867298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.084778, 38.688698, 50.884342>,  <43.364086, 38.403774, 50.912746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084778, 38.688698, 50.884342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608522, -0.538413, 0.582935,
		0.376993, 0.450257, 0.809410,
		-0.698267, 0.712306, -0.071013,
		42.875298, 38.902390, 50.863037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148327, 38.426834, 51.548176>,  <43.364086, 38.403774, 50.912746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148327, 38.426834, 51.548176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.852913, 38.594872, 51.337238>,  <42.675667, 38.695694, 51.210674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.852913, 38.594872, 51.337238>,  <43.148327, 38.426834, 51.548176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852913, 38.594872, 51.337238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673300, -0.500361, 0.544339,
		-0.035187, 0.757072, 0.652383,
		-0.738531, 0.420096, -0.527343,
		42.631355, 38.720901, 51.179035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709667, 38.669735, 52.092724>,  <43.148327, 38.426834, 51.548176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709667, 38.669735, 52.092724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.479893, 38.637421, 51.766903>,  <42.342030, 38.618031, 51.571411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.479893, 38.637421, 51.766903>,  <42.709667, 38.669735, 52.092724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479893, 38.637421, 51.766903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759419, -0.318754, 0.567167,
		-0.305463, 0.944388, 0.121750,
		-0.574434, -0.080789, -0.814554,
		42.307564, 38.613182, 51.522537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050781, 38.978298, 52.293961>,  <42.709667, 38.669735, 52.092724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050781, 38.978298, 52.293961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978104, 38.759300, 51.967220>,  <41.934498, 38.627903, 51.771175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.978104, 38.759300, 51.967220>,  <42.050781, 38.978298, 52.293961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978104, 38.759300, 51.967220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797080, -0.404481, 0.448395,
		-0.575892, 0.732564, -0.362903,
		-0.181691, -0.547490, -0.816849,
		41.923595, 38.595055, 51.722164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285389, 39.023022, 52.110332>,  <42.050781, 38.978298, 52.293961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285389, 39.023022, 52.110332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.423271, 38.702965, 51.913986>,  <41.506001, 38.510929, 51.796177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.423271, 38.702965, 51.913986>,  <41.285389, 39.023022, 52.110332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423271, 38.702965, 51.913986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805575, -0.520594, 0.282896,
		-0.481898, 0.297911, -0.824029,
		0.344706, -0.800144, -0.490863,
		41.526684, 38.462921, 51.766727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700573, 38.795013, 51.860535>,  <41.285389, 39.023022, 52.110332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700573, 38.795013, 51.860535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.971603, 38.500893, 51.866447>,  <41.134220, 38.324421, 51.869995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.971603, 38.500893, 51.866447>,  <40.700573, 38.795013, 51.860535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971603, 38.500893, 51.866447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634524, -0.574312, 0.517247,
		-0.371846, -0.359851, -0.855709,
		0.677576, -0.735304, 0.014778,
		41.174877, 38.280300, 51.870880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411709, 38.145809, 51.702816>,  <40.700573, 38.795013, 51.860535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411709, 38.145809, 51.702816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.724312, 38.022438, 51.919746>,  <40.911873, 37.948414, 52.049904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.724312, 38.022438, 51.919746>,  <40.411709, 38.145809, 51.702816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724312, 38.022438, 51.919746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606047, -0.581737, 0.542483,
		0.148174, -0.752630, -0.641554,
		0.781506, -0.308430, 0.542329,
		40.958763, 37.929909, 52.082443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315994, 37.464561, 51.774818>,  <40.411709, 38.145809, 51.702816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315994, 37.464561, 51.774818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.577248, 37.530914, 52.070358>,  <40.734001, 37.570724, 52.247681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.577248, 37.530914, 52.070358>,  <40.315994, 37.464561, 51.774818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577248, 37.530914, 52.070358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494546, -0.645443, 0.582089,
		0.573442, -0.745577, -0.339527,
		0.653138, 0.165882, 0.738846,
		40.773190, 37.580677, 52.292011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371700, 36.834274, 52.119572>,  <40.315994, 37.464561, 51.774818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371700, 36.834274, 52.119572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.501587, 37.079216, 52.407898>,  <40.579521, 37.226181, 52.580894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.501587, 37.079216, 52.407898>,  <40.371700, 36.834274, 52.119572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501587, 37.079216, 52.407898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408848, -0.596356, 0.690799,
		0.852878, -0.519021, 0.056712,
		0.324718, 0.612353, 0.720820,
		40.599003, 37.262920, 52.624146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601097, 36.359718, 52.616322>,  <40.371700, 36.834274, 52.119572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601097, 36.359718, 52.616322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.540035, 36.716713, 52.786106>,  <40.503399, 36.930908, 52.887978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.540035, 36.716713, 52.786106>,  <40.601097, 36.359718, 52.616322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540035, 36.716713, 52.786106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445890, -0.445491, 0.776350,
		0.881974, -0.070748, 0.465957,
		-0.152654, 0.892487, 0.424457,
		40.494240, 36.984459, 52.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811672, 36.204659, 53.336857>,  <40.601097, 36.359718, 52.616322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811672, 36.204659, 53.336857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575779, 36.527634, 53.330421>,  <40.434242, 36.721420, 53.326561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575779, 36.527634, 53.330421>,  <40.811672, 36.204659, 53.336857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575779, 36.527634, 53.330421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520038, -0.364429, 0.772497,
		0.617881, 0.463933, 0.634814,
		-0.589731, 0.807439, -0.016089,
		40.398861, 36.769867, 53.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709686, 36.300179, 54.035698>,  <40.811672, 36.204659, 53.336857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709686, 36.300179, 54.035698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.432491, 36.539291, 53.874489>,  <40.266174, 36.682758, 53.777763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.432491, 36.539291, 53.874489>,  <40.709686, 36.300179, 54.035698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432491, 36.539291, 53.874489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633639, -0.238351, 0.735996,
		0.343904, 0.765406, 0.543952,
		-0.692987, 0.597781, -0.403021,
		40.224594, 36.718624, 53.753582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434315, 36.753555, 54.607414>,  <40.709686, 36.300179, 54.035698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434315, 36.753555, 54.607414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.152477, 36.724617, 54.325050>,  <39.983376, 36.707256, 54.155632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.152477, 36.724617, 54.325050>,  <40.434315, 36.753555, 54.607414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152477, 36.724617, 54.325050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662205, -0.290460, 0.690736,
		-0.255010, 0.954149, 0.156751,
		-0.704595, -0.072343, -0.705912,
		39.941097, 36.702915, 54.113277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743378, 37.020260, 54.888874>,  <40.434315, 36.753555, 54.607414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743378, 37.020260, 54.888874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638359, 36.800362, 54.571674>,  <39.575348, 36.668423, 54.381355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638359, 36.800362, 54.571674>,  <39.743378, 37.020260, 54.888874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638359, 36.800362, 54.571674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698016, -0.459213, 0.549452,
		-0.666214, 0.697785, -0.263164,
		-0.262551, -0.549745, -0.792999,
		39.559593, 36.635437, 54.333775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577423, 37.553940, 55.345402>,  <39.743378, 37.020260, 54.888874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577423, 37.553940, 55.345402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.680626, 37.601929, 55.728867>,  <39.742546, 37.630722, 55.958946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.680626, 37.601929, 55.728867>,  <39.577423, 37.553940, 55.345402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680626, 37.601929, 55.728867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845426, 0.452247, -0.284126,
		-0.467640, 0.883787, 0.015259,
		0.258008, 0.119969, 0.958665,
		39.758030, 37.637920, 56.016468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807167, 38.195190, 55.322468>,  <39.577423, 37.553940, 55.345402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807167, 38.195190, 55.322468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.962425, 37.993484, 55.631027>,  <40.055580, 37.872459, 55.816162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.962425, 37.993484, 55.631027>,  <39.807167, 38.195190, 55.322468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962425, 37.993484, 55.631027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836943, 0.543299, -0.065971,
		-0.385832, 0.671222, 0.632925,
		0.388149, -0.504268, 0.771397,
		40.078869, 37.842205, 55.862446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112534, 38.786209, 55.709705>,  <39.807167, 38.195190, 55.322468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112534, 38.786209, 55.709705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.279884, 38.451210, 55.850311>,  <40.380295, 38.250210, 55.934673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.279884, 38.451210, 55.850311>,  <40.112534, 38.786209, 55.709705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279884, 38.451210, 55.850311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899228, 0.436418, -0.030482,
		-0.127879, 0.328845, 0.935686,
		0.418373, -0.837497, 0.351516,
		40.405396, 38.199963, 55.955765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481956, 39.007767, 56.385395>,  <40.112534, 38.786209, 55.709705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481956, 39.007767, 56.385395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644917, 38.672775, 56.239708>,  <40.742691, 38.471779, 56.152294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644917, 38.672775, 56.239708>,  <40.481956, 39.007767, 56.385395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644917, 38.672775, 56.239708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888655, 0.455469, -0.053291,
		0.210519, -0.301952, 0.929788,
		0.407398, -0.837480, -0.364216,
		40.767136, 38.421532, 56.130444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179413, 38.986675, 56.654087>,  <40.481956, 39.007767, 56.385395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179413, 38.986675, 56.654087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.178291, 38.740005, 56.339203>,  <41.177620, 38.592003, 56.150272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.178291, 38.740005, 56.339203>,  <41.179413, 38.986675, 56.654087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178291, 38.740005, 56.339203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884244, 0.366115, -0.289953,
		0.467017, -0.696900, 0.544265,
		-0.002804, -0.616676, -0.787212,
		41.177448, 38.555004, 56.103039>
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
