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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
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
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.805519, 34.341454, 50.109550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842907, 34.398853, 49.715458>,  <39.865341, 34.433292, 49.479004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842907, 34.398853, 49.715458>,  <39.805519, 34.341454, 50.109550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842907, 34.398853, 49.715458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876773, -0.480726, 0.013163,
		-0.471735, -0.865050, -0.170746,
		0.093469, 0.143495, -0.985227,
		39.870949, 34.441902, 49.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036976, 33.841732, 49.681362>,  <39.805519, 34.341454, 50.109550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036976, 33.841732, 49.681362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187618, 34.161137, 49.493511>,  <40.278004, 34.352779, 49.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187618, 34.161137, 49.493511>,  <40.036976, 33.841732, 49.681362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187618, 34.161137, 49.493511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908191, -0.418200, 0.017227,
		-0.182643, -0.432999, -0.882697,
		0.376603, 0.798511, -0.469627,
		40.300598, 34.400688, 49.352623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552025, 33.614162, 49.327812>,  <40.036976, 33.841732, 49.681362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552025, 33.614162, 49.327812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632919, 34.005535, 49.344639>,  <40.681454, 34.240360, 49.354736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632919, 34.005535, 49.344639>,  <40.552025, 33.614162, 49.327812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632919, 34.005535, 49.344639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928222, -0.205196, 0.310320,
		0.312260, -0.023709, -0.949701,
		0.202232, 0.978434, 0.042067,
		40.693588, 34.299065, 49.357258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255287, 33.724190, 48.967144>,  <40.552025, 33.614162, 49.327812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255287, 33.724190, 48.967144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184551, 34.037098, 49.206070>,  <41.142109, 34.224842, 49.349426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184551, 34.037098, 49.206070>,  <41.255287, 33.724190, 48.967144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184551, 34.037098, 49.206070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922051, -0.080629, 0.378578,
		0.344311, 0.617701, -0.707033,
		-0.176841, 0.782269, 0.597313,
		41.131500, 34.271778, 49.385265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789669, 34.105057, 48.854092>,  <41.255287, 33.724190, 48.967144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789669, 34.105057, 48.854092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660431, 34.282566, 49.188438>,  <41.582890, 34.389072, 49.389046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660431, 34.282566, 49.188438>,  <41.789669, 34.105057, 48.854092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660431, 34.282566, 49.188438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925672, -0.035513, 0.376657,
		0.196834, 0.895435, -0.399315,
		-0.323091, 0.443773, 0.835869,
		41.563503, 34.415699, 49.439198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283543, 34.688648, 49.076588>,  <41.789669, 34.105057, 48.854092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283543, 34.688648, 49.076588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097965, 34.577175, 49.412945>,  <41.986618, 34.510292, 49.614758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097965, 34.577175, 49.412945>,  <42.283543, 34.688648, 49.076588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097965, 34.577175, 49.412945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880962, -0.045401, 0.471003,
		-0.093084, 0.959309, 0.266575,
		-0.463941, -0.278685, 0.840889,
		41.958782, 34.493568, 49.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285046, 35.245724, 49.564583>,  <42.283543, 34.688648, 49.076588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285046, 35.245724, 49.564583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254925, 34.915668, 49.788540>,  <42.236855, 34.717636, 49.922913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254925, 34.915668, 49.788540>,  <42.285046, 35.245724, 49.564583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254925, 34.915668, 49.788540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892312, 0.194868, 0.407192,
		-0.445094, 0.530261, 0.721606,
		-0.075300, -0.825136, 0.559893,
		42.232334, 34.668129, 49.956509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616451, 35.487827, 50.136169>,  <42.285046, 35.245724, 49.564583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616451, 35.487827, 50.136169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573589, 35.107216, 50.251484>,  <42.547874, 34.878849, 50.320675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573589, 35.107216, 50.251484>,  <42.616451, 35.487827, 50.136169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573589, 35.107216, 50.251484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827356, 0.075463, 0.556586,
		-0.551363, 0.298158, 0.779167,
		-0.107152, -0.951529, 0.288290,
		42.541443, 34.821758, 50.337971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781597, 35.419838, 50.949989>,  <42.616451, 35.487827, 50.136169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781597, 35.419838, 50.949989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846569, 35.071033, 50.765289>,  <42.885551, 34.861752, 50.654469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846569, 35.071033, 50.765289>,  <42.781597, 35.419838, 50.949989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846569, 35.071033, 50.765289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870247, -0.093961, 0.483571,
		-0.465066, -0.480383, 0.743604,
		0.162430, -0.872011, -0.461749,
		42.895298, 34.809429, 50.626766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923969, 34.899448, 51.506699>,  <42.781597, 35.419838, 50.949989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923969, 34.899448, 51.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091072, 34.814957, 51.153233>,  <43.191334, 34.764259, 50.941154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091072, 34.814957, 51.153233>,  <42.923969, 34.899448, 51.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091072, 34.814957, 51.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891399, -0.092849, 0.443607,
		-0.175751, -0.973016, 0.149504,
		0.417756, -0.211233, -0.883663,
		43.216400, 34.751587, 50.888134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399178, 34.468842, 51.722298>,  <42.923969, 34.899448, 51.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399178, 34.468842, 51.722298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512253, 34.553207, 51.348003>,  <43.580097, 34.603825, 51.123428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512253, 34.553207, 51.348003>,  <43.399178, 34.468842, 51.722298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512253, 34.553207, 51.348003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958211, -0.106625, 0.265449,
		-0.043787, -0.971673, -0.232239,
		0.282692, 0.210910, -0.935736,
		43.597061, 34.616482, 51.067284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970741, 33.979355, 51.563133>,  <43.399178, 34.468842, 51.722298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970741, 33.979355, 51.563133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008839, 34.268852, 51.289749>,  <44.031696, 34.442551, 51.125717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008839, 34.268852, 51.289749>,  <43.970741, 33.979355, 51.563133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008839, 34.268852, 51.289749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985716, 0.027227, 0.166203,
		0.138897, -0.689529, -0.710815,
		0.095248, 0.723746, -0.683461,
		44.037415, 34.485977, 51.084709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532810, 33.792061, 51.156494>,  <43.970741, 33.979355, 51.563133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532810, 33.792061, 51.156494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483654, 34.179283, 51.069077>,  <44.454159, 34.411617, 51.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483654, 34.179283, 51.069077>,  <44.532810, 33.792061, 51.156494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483654, 34.179283, 51.069077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983788, 0.147813, 0.101548,
		0.130608, -0.202521, -0.970529,
		-0.122892, 0.968058, -0.218543,
		44.446785, 34.469700, 51.003513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170784, 33.911037, 50.758560>,  <44.532810, 33.792061, 51.156494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170784, 33.911037, 50.758560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053787, 34.283421, 50.845974>,  <44.983589, 34.506851, 50.898422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053787, 34.283421, 50.845974>,  <45.170784, 33.911037, 50.758560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053787, 34.283421, 50.845974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953969, 0.268232, 0.134147,
		0.066267, 0.247716, -0.966564,
		-0.292493, 0.930961, 0.218538,
		44.966038, 34.562710, 50.911537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529110, 34.362507, 50.224762>,  <45.170784, 33.911037, 50.758560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529110, 34.362507, 50.224762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424561, 34.629227, 50.503918>,  <45.361832, 34.789261, 50.671413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424561, 34.629227, 50.503918>,  <45.529110, 34.362507, 50.224762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424561, 34.629227, 50.503918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964106, 0.215347, 0.155324,
		-0.046719, 0.713442, -0.699156,
		-0.261376, 0.666803, 0.697894,
		45.346149, 34.829269, 50.713287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810703, 35.102203, 50.033474>,  <45.529110, 34.362507, 50.224762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810703, 35.102203, 50.033474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761379, 35.058697, 50.428028>,  <45.731785, 35.032593, 50.664761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761379, 35.058697, 50.428028>,  <45.810703, 35.102203, 50.033474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761379, 35.058697, 50.428028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938210, 0.311097, 0.151592,
		-0.323350, 0.944134, 0.063680,
		-0.123313, -0.108763, 0.986390,
		45.724384, 35.026070, 50.723946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245274, 35.591881, 50.227760>,  <45.810703, 35.102203, 50.033474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245274, 35.591881, 50.227760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146259, 35.383778, 50.554699>,  <46.086849, 35.258915, 50.750862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146259, 35.383778, 50.554699>,  <46.245274, 35.591881, 50.227760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146259, 35.383778, 50.554699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918625, 0.142136, 0.368680,
		-0.307984, 0.842097, 0.442741,
		-0.247534, -0.520260, 0.817347,
		46.071999, 35.227699, 50.799904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607677, 35.960217, 50.755238>,  <46.245274, 35.591881, 50.227760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607677, 35.960217, 50.755238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520821, 35.593777, 50.890064>,  <46.468708, 35.373913, 50.970963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520821, 35.593777, 50.890064>,  <46.607677, 35.960217, 50.755238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520821, 35.593777, 50.890064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880002, -0.034278, 0.473732,
		-0.422431, 0.399486, 0.813611,
		-0.217139, -0.916098, 0.337068,
		46.455681, 35.318947, 50.991184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814014, 36.036545, 51.456387>,  <46.607677, 35.960217, 50.755238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814014, 36.036545, 51.456387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808609, 35.658905, 51.324638>,  <46.805367, 35.432320, 51.245590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808609, 35.658905, 51.324638>,  <46.814014, 36.036545, 51.456387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808609, 35.658905, 51.324638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823367, -0.197407, 0.532068,
		-0.567347, -0.264009, 0.780010,
		-0.013509, -0.944102, -0.329375,
		46.804558, 35.375675, 51.225826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.982632, 35.545887, 52.048843>,  <46.814014, 36.036545, 51.456387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.982632, 35.545887, 52.048843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095959, 35.357220, 51.714832>,  <47.163956, 35.244019, 51.514427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095959, 35.357220, 51.714832>,  <46.982632, 35.545887, 52.048843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.095959, 35.357220, 51.714832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859175, -0.262012, 0.439509,
		-0.426087, -0.841952, 0.331010,
		0.283317, -0.471665, -0.835024,
		47.180954, 35.215721, 51.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231133, 35.063484, 52.332050>,  <46.982632, 35.545887, 52.048843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231133, 35.063484, 52.332050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407887, 35.073162, 51.973354>,  <47.513939, 35.078968, 51.758137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407887, 35.073162, 51.973354>,  <47.231133, 35.063484, 52.332050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407887, 35.073162, 51.973354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885239, -0.173575, 0.431537,
		-0.145210, -0.984523, -0.098120,
		0.441889, 0.024196, -0.896743,
		47.540455, 35.080421, 51.704330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.097742, 35.276058, 51.488495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.240858, 34.991051, 51.729923>,  <24.326727, 34.820045, 51.874783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.240858, 34.991051, 51.729923>,  <24.097742, 35.276058, 51.488495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240858, 34.991051, 51.729923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931266, 0.224649, -0.286840,
		0.068788, 0.664716, 0.743923,
		0.357789, -0.712521, 0.603574,
		24.348194, 34.777294, 51.910995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644598, 35.593582, 51.864830>,  <24.097742, 35.276058, 51.488495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644598, 35.593582, 51.864830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.695385, 35.198254, 51.898548>,  <24.725857, 34.961056, 51.918777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.695385, 35.198254, 51.898548>,  <24.644598, 35.593582, 51.864830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695385, 35.198254, 51.898548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976433, 0.109581, -0.185931,
		0.174522, 0.105915, 0.978940,
		0.126966, -0.988319, 0.084295,
		24.733475, 34.901756, 51.923836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254839, 35.603233, 52.221252>,  <24.644598, 35.593582, 51.864830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254839, 35.603233, 52.221252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.227087, 35.227192, 52.087753>,  <25.210436, 35.001568, 52.007652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.227087, 35.227192, 52.087753>,  <25.254839, 35.603233, 52.221252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227087, 35.227192, 52.087753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991493, -0.028048, -0.127101,
		0.110127, -0.339730, 0.934053,
		-0.069378, -0.940105, -0.333751,
		25.206274, 34.945160, 51.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704027, 35.110462, 52.579445>,  <25.254839, 35.603233, 52.221252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704027, 35.110462, 52.579445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.648710, 34.932518, 52.225502>,  <25.615520, 34.825752, 52.013134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.648710, 34.932518, 52.225502>,  <25.704027, 35.110462, 52.579445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648710, 34.932518, 52.225502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982754, -0.172380, -0.066927,
		-0.122758, -0.878854, 0.461027,
		-0.138291, -0.444860, -0.884859,
		25.607224, 34.799061, 51.960045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143045, 34.457455, 52.600666>,  <25.704027, 35.110462, 52.579445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143045, 34.457455, 52.600666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.071188, 34.521866, 52.212482>,  <26.028072, 34.560513, 51.979572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.071188, 34.521866, 52.212482>,  <26.143045, 34.457455, 52.600666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071188, 34.521866, 52.212482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966601, -0.154403, -0.204552,
		-0.182782, -0.974797, -0.127915,
		-0.179646, 0.161032, -0.970462,
		26.017294, 34.570175, 51.921345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587856, 33.942566, 52.205925>,  <26.143045, 34.457455, 52.600666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587856, 33.942566, 52.205925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.521263, 34.247734, 51.956051>,  <26.481306, 34.430836, 51.806126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.521263, 34.247734, 51.956051>,  <26.587856, 33.942566, 52.205925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521263, 34.247734, 51.956051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974054, 0.028749, -0.224484,
		-0.153305, -0.645850, -0.747914,
		-0.166484, 0.762923, -0.624685,
		26.471317, 34.476612, 51.768646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044146, 33.813824, 51.694298>,  <26.587856, 33.942566, 52.205925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044146, 33.813824, 51.694298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.955994, 34.188408, 51.585133>,  <26.903103, 34.413158, 51.519634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.955994, 34.188408, 51.585133>,  <27.044146, 33.813824, 51.694298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955994, 34.188408, 51.585133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927335, 0.114393, -0.356320,
		-0.302459, -0.331607, -0.893619,
		-0.220382, 0.936457, -0.272911,
		26.889879, 34.469345, 51.503258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207067, 33.961315, 50.979237>,  <27.044146, 33.813824, 51.694298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207067, 33.961315, 50.979237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.244402, 34.311840, 51.168285>,  <27.266802, 34.522156, 51.281715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.244402, 34.311840, 51.168285>,  <27.207067, 33.961315, 50.979237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244402, 34.311840, 51.168285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929749, 0.093098, -0.356229,
		-0.356167, 0.472666, -0.806060,
		0.093335, 0.876310, 0.472620,
		27.272402, 34.574734, 51.310070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869316, 34.237400, 50.600262>,  <27.207067, 33.961315, 50.979237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869316, 34.237400, 50.600262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.798286, 34.467777, 50.919449>,  <27.755669, 34.606003, 51.110962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.798286, 34.467777, 50.919449>,  <27.869316, 34.237400, 50.600262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798286, 34.467777, 50.919449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950207, 0.311338, -0.013262,
		-0.256077, 0.755883, -0.602549,
		-0.177572, 0.575943, 0.797971,
		27.745014, 34.640560, 51.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220800, 34.787823, 50.357605>,  <27.869316, 34.237400, 50.600262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220800, 34.787823, 50.357605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.189373, 34.834995, 50.753567>,  <28.170517, 34.863300, 50.991146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.189373, 34.834995, 50.753567>,  <28.220800, 34.787823, 50.357605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189373, 34.834995, 50.753567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905833, 0.423089, 0.021492,
		-0.416284, 0.898380, -0.140073,
		-0.078571, 0.117936, 0.989908,
		28.165802, 34.870377, 51.050541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463202, 35.429508, 50.409954>,  <28.220800, 34.787823, 50.357605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463202, 35.429508, 50.409954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.503433, 35.249752, 50.765015>,  <28.527573, 35.141899, 50.978050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.503433, 35.249752, 50.765015>,  <28.463202, 35.429508, 50.409954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503433, 35.249752, 50.765015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967779, 0.251192, 0.017511,
		-0.230841, 0.857293, 0.460175,
		0.100580, -0.449390, 0.887656,
		28.533607, 35.114937, 51.031311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931700, 35.876850, 50.670490>,  <28.463202, 35.429508, 50.409954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931700, 35.876850, 50.670490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.987303, 35.557755, 50.905197>,  <29.020664, 35.366299, 51.046021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.987303, 35.557755, 50.905197>,  <28.931700, 35.876850, 50.670490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987303, 35.557755, 50.905197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982408, 0.036472, -0.183153,
		0.124708, 0.601900, 0.788774,
		0.139008, -0.797738, 0.586763,
		29.029005, 35.318432, 51.081226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533026, 36.032578, 51.085548>,  <28.931700, 35.876850, 50.670490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533026, 36.032578, 51.085548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.502514, 35.633854, 51.095005>,  <29.484207, 35.394619, 51.100681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.502514, 35.633854, 51.095005>,  <29.533026, 36.032578, 51.085548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502514, 35.633854, 51.095005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993140, -0.073851, 0.090654,
		-0.088618, 0.030399, 0.995602,
		-0.076282, -0.996806, 0.023646,
		29.479630, 35.334812, 51.102100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117334, 35.830265, 51.508190>,  <29.533026, 36.032578, 51.085548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117334, 35.830265, 51.508190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.015707, 35.483353, 51.336945>,  <29.954731, 35.275208, 51.234200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.015707, 35.483353, 51.336945>,  <30.117334, 35.830265, 51.508190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015707, 35.483353, 51.336945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952842, -0.300395, 0.043068,
		-0.165954, -0.396978, 0.902700,
		-0.254070, -0.867278, -0.428109,
		29.939486, 35.223167, 51.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527281, 35.280979, 51.844765>,  <30.117334, 35.830265, 51.508190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527281, 35.280979, 51.844765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432219, 35.135422, 51.484520>,  <30.375181, 35.048088, 51.268372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432219, 35.135422, 51.484520>,  <30.527281, 35.280979, 51.844765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432219, 35.135422, 51.484520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939114, -0.322953, -0.117325,
		-0.248161, -0.873659, 0.418492,
		-0.237655, -0.363896, -0.900611,
		30.360922, 35.026253, 51.214336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893505, 34.667522, 51.748184>,  <30.527281, 35.280979, 51.844765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893505, 34.667522, 51.748184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.781393, 34.769646, 51.378048>,  <30.714125, 34.830921, 51.155964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.781393, 34.769646, 51.378048>,  <30.893505, 34.667522, 51.748184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781393, 34.769646, 51.378048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927440, -0.176605, -0.329644,
		-0.247582, -0.950593, -0.187287,
		-0.280281, 0.255311, -0.925343,
		30.697309, 34.846241, 51.100445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105444, 34.232590, 51.386314>,  <30.893505, 34.667522, 51.748184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105444, 34.232590, 51.386314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.024181, 34.482197, 51.084496>,  <30.975424, 34.631962, 50.903404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.024181, 34.482197, 51.084496>,  <31.105444, 34.232590, 51.386314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024181, 34.482197, 51.084496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887230, -0.208656, -0.411443,
		-0.414186, -0.753041, -0.511253,
		-0.203157, 0.624013, -0.754543,
		30.963234, 34.669399, 50.858131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241899, 33.832737, 50.831223>,  <31.105444, 34.232590, 51.386314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241899, 33.832737, 50.831223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.248806, 34.213589, 50.709141>,  <31.252951, 34.442101, 50.635891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.248806, 34.213589, 50.709141>,  <31.241899, 33.832737, 50.831223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248806, 34.213589, 50.709141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813923, -0.190676, -0.548792,
		-0.580716, -0.238937, -0.778253,
		0.017267, 0.952130, -0.305205,
		31.253986, 34.499229, 50.617580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231295, 33.786713, 50.130024>,  <31.241899, 33.832737, 50.831223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231295, 33.786713, 50.130024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.391375, 34.141075, 50.223839>,  <31.487423, 34.353691, 50.280128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.391375, 34.141075, 50.223839>,  <31.231295, 33.786713, 50.130024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391375, 34.141075, 50.223839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827986, -0.239846, -0.506865,
		-0.392781, 0.397045, -0.829505,
		0.400201, 0.885906, 0.234541,
		31.511435, 34.406845, 50.294201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514425, 34.048748, 49.501465>,  <31.231295, 33.786713, 50.130024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514425, 34.048748, 49.501465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.698593, 34.253109, 49.791843>,  <31.809093, 34.375725, 49.966068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.698593, 34.253109, 49.791843>,  <31.514425, 34.048748, 49.501465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698593, 34.253109, 49.791843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869828, -0.096381, -0.483848,
		-0.177230, 0.854221, -0.488770,
		0.460422, 0.510899, 0.725944,
		31.836720, 34.406380, 50.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874609, 34.636013, 49.217861>,  <31.514425, 34.048748, 49.501465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874609, 34.636013, 49.217861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059673, 34.572674, 49.566772>,  <32.170712, 34.534672, 49.776119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059673, 34.572674, 49.566772>,  <31.874609, 34.636013, 49.217861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059673, 34.572674, 49.566772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880880, -0.028847, -0.472459,
		0.099976, 0.986962, 0.126140,
		0.462661, -0.158348, 0.872279,
		32.198471, 34.525169, 49.828457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.899504, 35.183289, 34.753452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.187904, 35.052097, 34.997612>,  <24.360945, 34.973385, 35.144108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.187904, 35.052097, 34.997612>,  <23.899504, 35.183289, 34.753452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.187904, 35.052097, 34.997612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452740, -0.889841, 0.056652,
		0.524580, -0.317199, -0.790063,
		0.721001, -0.327975, 0.610402,
		24.404205, 34.953705, 35.180733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114002, 34.507118, 34.642963>,  <23.899504, 35.183289, 34.753452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.114002, 34.507118, 34.642963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.185347, 34.599297, 35.025604>,  <24.228153, 34.654606, 35.255188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.185347, 34.599297, 35.025604>,  <24.114002, 34.507118, 34.642963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.185347, 34.599297, 35.025604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403082, -0.869759, 0.284684,
		0.897614, -0.436365, -0.062243,
		0.178362, 0.230447, 0.956599,
		24.238855, 34.668430, 35.312584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441238, 33.906036, 35.045048>,  <24.114002, 34.507118, 34.642963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441238, 33.906036, 35.045048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.286207, 34.137699, 35.331924>,  <24.193188, 34.276695, 35.504051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.286207, 34.137699, 35.331924>,  <24.441238, 33.906036, 35.045048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286207, 34.137699, 35.331924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282298, -0.815190, 0.505740,
		0.877547, -0.006446, 0.479447,
		-0.387580, 0.579158, 0.717187,
		24.169933, 34.311447, 35.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649694, 33.809982, 35.804497>,  <24.441238, 33.906036, 35.045048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649694, 33.809982, 35.804497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.281940, 33.959484, 35.853558>,  <24.061289, 34.049187, 35.882992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.281940, 33.959484, 35.853558>,  <24.649694, 33.809982, 35.804497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.281940, 33.959484, 35.853558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205159, -0.721629, 0.661182,
		0.335627, 0.582717, 0.740132,
		-0.919383, 0.373755, 0.122649,
		24.006126, 34.071609, 35.890354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753475, 33.128582, 36.333622>,  <24.649694, 33.809982, 35.804497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753475, 33.128582, 36.333622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.049583, 32.871098, 36.411217>,  <25.227249, 32.716606, 36.457771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.049583, 32.871098, 36.411217>,  <24.753475, 33.128582, 36.333622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049583, 32.871098, 36.411217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580176, 0.465871, -0.668102,
		0.339695, 0.607122, 0.718339,
		0.740272, -0.643714, 0.193984,
		25.271666, 32.677982, 36.469410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228294, 33.469032, 36.640087>,  <24.753475, 33.128582, 36.333622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228294, 33.469032, 36.640087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.406401, 33.156467, 36.465210>,  <25.513264, 32.968929, 36.360283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.406401, 33.156467, 36.465210>,  <25.228294, 33.469032, 36.640087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406401, 33.156467, 36.465210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677692, 0.613219, -0.405827,
		0.585213, -0.115583, 0.802600,
		0.445264, -0.781411, -0.437193,
		25.539980, 32.922043, 36.334053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357716, 32.843082, 37.085533>,  <25.228294, 33.469032, 36.640087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357716, 32.843082, 37.085533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.105888, 33.153683, 37.074993>,  <24.954792, 33.340042, 37.068668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.105888, 33.153683, 37.074993>,  <25.357716, 32.843082, 37.085533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105888, 33.153683, 37.074993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267485, 0.248464, 0.930977,
		0.729450, 0.579064, -0.364127,
		-0.629567, 0.776499, -0.026351,
		24.917019, 33.386631, 37.067089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616457, 33.139633, 37.642982>,  <25.357716, 32.843082, 37.085533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616457, 33.139633, 37.642982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.272684, 33.327248, 37.561607>,  <25.066420, 33.439816, 37.512783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.272684, 33.327248, 37.561607>,  <25.616457, 33.139633, 37.642982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272684, 33.327248, 37.561607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155551, 0.139157, 0.977977,
		0.487013, 0.872149, -0.046637,
		-0.859431, 0.469033, -0.203434,
		25.014854, 33.467957, 37.500576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416836, 32.656296, 38.204960>,  <25.616457, 33.139633, 37.642982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416836, 32.656296, 38.204960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.309586, 32.748348, 38.579159>,  <25.245235, 32.803577, 38.803677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.309586, 32.748348, 38.579159>,  <25.416836, 32.656296, 38.204960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309586, 32.748348, 38.579159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681648, 0.731518, 0.015420,
		-0.680782, 0.641813, -0.353004,
		-0.268125, 0.230127, 0.935495,
		25.229149, 32.817387, 38.859806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182035, 33.406708, 38.269871>,  <25.416836, 32.656296, 38.204960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182035, 33.406708, 38.269871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.410883, 33.280876, 38.572849>,  <25.548191, 33.205376, 38.754635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.410883, 33.280876, 38.572849>,  <25.182035, 33.406708, 38.269871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410883, 33.280876, 38.572849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517543, 0.854906, -0.035857,
		-0.636263, 0.412524, 0.651915,
		0.572118, -0.314579, 0.757444,
		25.582518, 33.186501, 38.800083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162256, 33.925797, 38.838699>,  <25.182035, 33.406708, 38.269871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162256, 33.925797, 38.838699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491932, 33.701321, 38.808296>,  <25.689737, 33.566635, 38.790054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491932, 33.701321, 38.808296>,  <25.162256, 33.925797, 38.838699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491932, 33.701321, 38.808296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562742, 0.826632, -0.001190,
		0.063498, -0.041792, 0.997106,
		0.824190, -0.561189, -0.076008,
		25.739189, 33.532963, 38.785496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587095, 34.190052, 39.300285>,  <25.162256, 33.925797, 38.838699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587095, 34.190052, 39.300285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.845125, 34.025379, 39.042793>,  <25.999943, 33.926575, 38.888298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.845125, 34.025379, 39.042793>,  <25.587095, 34.190052, 39.300285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845125, 34.025379, 39.042793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699598, 0.657016, 0.280879,
		0.307308, -0.631543, 0.711840,
		0.645077, -0.411685, -0.643732,
		26.038649, 33.901875, 38.849674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196182, 33.906296, 39.627834>,  <25.587095, 34.190052, 39.300285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196182, 33.906296, 39.627834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.240818, 34.067413, 39.264450>,  <26.267599, 34.164082, 39.046417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.240818, 34.067413, 39.264450>,  <26.196182, 33.906296, 39.627834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240818, 34.067413, 39.264450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485939, 0.775306, 0.403440,
		0.866840, -0.486477, -0.109216,
		0.111588, 0.402790, -0.908465,
		26.274294, 34.188251, 38.991909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614918, 34.146019, 40.166698>,  <26.196182, 33.906296, 39.627834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614918, 34.146019, 40.166698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.769135, 33.778034, 40.138325>,  <26.861664, 33.557243, 40.121300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.769135, 33.778034, 40.138325>,  <26.614918, 34.146019, 40.166698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769135, 33.778034, 40.138325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297318, -0.196637, 0.934310,
		-0.873476, -0.339126, -0.349332,
		0.385540, -0.919960, -0.070930,
		26.884796, 33.502045, 40.117046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294842, 34.115467, 40.558872>,  <26.614918, 34.146019, 40.166698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294842, 34.115467, 40.558872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354214, 34.079159, 40.952770>,  <27.389837, 34.057373, 41.189110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354214, 34.079159, 40.952770>,  <27.294842, 34.115467, 40.558872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354214, 34.079159, 40.952770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716731, -0.676218, -0.170367,
		0.681369, 0.731088, -0.035312,
		0.148432, -0.090773, 0.984748,
		27.398743, 34.051926, 41.248196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961308, 34.233665, 40.709358>,  <27.294842, 34.115467, 40.558872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961308, 34.233665, 40.709358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.871027, 34.023926, 41.037777>,  <27.816858, 33.898083, 41.234829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.871027, 34.023926, 41.037777>,  <27.961308, 34.233665, 40.709358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871027, 34.023926, 41.037777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921699, -0.387864, 0.005669,
		0.315482, 0.758038, 0.570832,
		-0.225702, -0.524347, 0.821047,
		27.803316, 33.866623, 41.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627888, 34.163807, 40.994095>,  <27.961308, 34.233665, 40.709358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627888, 34.163807, 40.994095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.398603, 33.906277, 41.196842>,  <28.261032, 33.751759, 41.318489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.398603, 33.906277, 41.196842>,  <28.627888, 34.163807, 40.994095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398603, 33.906277, 41.196842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806082, -0.554164, 0.207688,
		0.147174, 0.527627, 0.836630,
		-0.573212, -0.643826, 0.506869,
		28.226641, 33.713127, 41.348904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963409, 33.931713, 41.713551>,  <28.627888, 34.163807, 40.994095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963409, 33.931713, 41.713551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782761, 33.649216, 41.495468>,  <28.674372, 33.479717, 41.364616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782761, 33.649216, 41.495468>,  <28.963409, 33.931713, 41.713551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782761, 33.649216, 41.495468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681431, -0.667491, 0.300179,
		-0.575923, -0.235955, 0.782712,
		-0.451624, -0.706245, -0.545210,
		28.647274, 33.437344, 41.331905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429951, 33.630657, 42.258781>,  <28.963409, 33.931713, 41.713551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429951, 33.630657, 42.258781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676588, 33.375114, 42.074753>,  <29.824572, 33.221786, 41.964336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676588, 33.375114, 42.074753>,  <29.429951, 33.630657, 42.258781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676588, 33.375114, 42.074753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613975, 0.756001, -0.226931,
		0.492793, -0.142549, 0.858391,
		0.616595, -0.638861, -0.460073,
		29.861567, 33.183456, 41.936729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088589, 33.921806, 42.403301>,  <29.429951, 33.630657, 42.258781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088589, 33.921806, 42.403301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146292, 33.656429, 42.109627>,  <30.180914, 33.497204, 41.933422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146292, 33.656429, 42.109627>,  <30.088589, 33.921806, 42.403301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146292, 33.656429, 42.109627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705263, 0.589373, -0.394010,
		0.694114, -0.460956, 0.552924,
		0.144257, -0.663445, -0.734187,
		30.189569, 33.457397, 41.889370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748993, 33.607964, 42.485107>,  <30.088589, 33.921806, 42.403301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748993, 33.607964, 42.485107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616259, 33.722073, 42.125439>,  <30.536619, 33.790539, 41.909637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616259, 33.722073, 42.125439>,  <30.748993, 33.607964, 42.485107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616259, 33.722073, 42.125439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773535, 0.627853, -0.086277,
		0.539935, -0.724169, -0.429010,
		-0.331834, 0.285270, -0.899170,
		30.516708, 33.807655, 41.855686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277380, 33.487167, 42.037708>,  <30.748993, 33.607964, 42.485107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277380, 33.487167, 42.037708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005383, 33.779739, 42.058163>,  <30.842184, 33.955284, 42.070435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005383, 33.779739, 42.058163>,  <31.277380, 33.487167, 42.037708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005383, 33.779739, 42.058163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672005, 0.593807, 0.442496,
		0.293292, 0.335257, -0.895311,
		-0.679992, 0.731434, 0.051135,
		30.801386, 33.999168, 42.073502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910847, 33.706631, 42.336761>,  <31.277380, 33.487167, 42.037708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910847, 33.706631, 42.336761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605988, 33.952702, 42.256073>,  <31.423073, 34.100346, 42.207661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605988, 33.952702, 42.256073>,  <31.910847, 33.706631, 42.336761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605988, 33.952702, 42.256073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191162, 0.511524, 0.837735,
		0.618540, 0.599916, -0.507454,
		-0.762146, 0.615178, -0.201717,
		31.377344, 34.137257, 42.195557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172897, 34.475616, 42.314438>,  <31.910847, 33.706631, 42.336761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172897, 34.475616, 42.314438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786228, 34.455811, 42.414909>,  <31.554226, 34.443928, 42.475193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786228, 34.455811, 42.414909>,  <32.172897, 34.475616, 42.314438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786228, 34.455811, 42.414909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157701, 0.657712, 0.736576,
		-0.201676, 0.751640, -0.627984,
		-0.966673, -0.049515, 0.251179,
		31.496225, 34.440956, 42.490265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094925, 35.062920, 42.630051>,  <32.172897, 34.475616, 42.314438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094925, 35.062920, 42.630051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.795424, 34.825127, 42.747326>,  <31.615723, 34.682453, 42.817692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.795424, 34.825127, 42.747326>,  <32.094925, 35.062920, 42.630051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795424, 34.825127, 42.747326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026328, 0.468639, 0.882998,
		-0.662323, 0.653430, -0.366547,
		-0.748756, -0.594480, 0.293187,
		31.570797, 34.646782, 42.835281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474863, 35.458633, 42.836967>,  <32.094925, 35.062920, 42.630051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474863, 35.458633, 42.836967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497070, 35.110546, 43.032776>,  <31.510395, 34.901691, 43.150261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497070, 35.110546, 43.032776>,  <31.474863, 35.458633, 42.836967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497070, 35.110546, 43.032776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118767, 0.481040, 0.868617,
		-0.991369, -0.106361, -0.076648,
		0.055516, -0.870223, 0.489520,
		31.513725, 34.849480, 43.179630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798670, 35.141273, 42.702175>,  <31.474863, 35.458633, 42.836967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798670, 35.141273, 42.702175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.949083, 34.883980, 42.968964>,  <31.039331, 34.729603, 43.129036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.949083, 34.883980, 42.968964>,  <30.798670, 35.141273, 42.702175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949083, 34.883980, 42.968964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475691, 0.483698, 0.734679,
		-0.795183, -0.593536, -0.124093,
		0.376035, -0.643234, 0.666969,
		31.061893, 34.691010, 43.169056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386963, 34.706753, 43.146011>,  <30.798670, 35.141273, 42.702175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386963, 34.706753, 43.146011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718132, 34.797482, 43.351181>,  <30.916834, 34.851921, 43.474281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718132, 34.797482, 43.351181>,  <30.386963, 34.706753, 43.146011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718132, 34.797482, 43.351181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560733, 0.316877, 0.764962,
		0.010978, -0.920945, 0.389538,
		0.827924, 0.226825, 0.512926,
		30.966509, 34.865528, 43.505058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395792, 34.407986, 43.824062>,  <30.386963, 34.706753, 43.146011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395792, 34.407986, 43.824062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618553, 34.740215, 43.825500>,  <30.752211, 34.939552, 43.826363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618553, 34.740215, 43.825500>,  <30.395792, 34.407986, 43.824062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618553, 34.740215, 43.825500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615096, 0.409512, 0.673763,
		0.558136, -0.377430, 0.738939,
		0.556902, 0.830570, 0.003592,
		30.785624, 34.989388, 43.826580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837402, 34.544899, 44.539513>,  <30.395792, 34.407986, 43.824062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837402, 34.544899, 44.539513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711952, 34.859447, 44.326622>,  <30.636683, 35.048176, 44.198887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711952, 34.859447, 44.326622>,  <30.837402, 34.544899, 44.539513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711952, 34.859447, 44.326622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475569, 0.355057, 0.804840,
		0.821871, 0.505529, 0.262617,
		-0.313626, 0.786368, -0.532225,
		30.617865, 35.095356, 44.166954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279152, 34.181343, 44.972080>,  <30.837402, 34.544899, 44.539513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279152, 34.181343, 44.972080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376762, 34.566833, 45.015331>,  <31.435328, 34.798126, 45.041283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376762, 34.566833, 45.015331>,  <31.279152, 34.181343, 44.972080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376762, 34.566833, 45.015331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924666, -0.264832, 0.273601,
		0.292310, 0.033215, -0.955747,
		0.244024, 0.963722, 0.108125,
		31.449970, 34.855949, 45.047768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954386, 34.399296, 44.604649>,  <31.279152, 34.181343, 44.972080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954386, 34.399296, 44.604649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891685, 34.641891, 44.916443>,  <31.854065, 34.787449, 45.103519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891685, 34.641891, 44.916443>,  <31.954386, 34.399296, 44.604649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891685, 34.641891, 44.916443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891958, -0.251959, 0.375403,
		0.424077, 0.754115, -0.501467,
		-0.156749, 0.606487, 0.779489,
		31.844662, 34.823837, 45.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541355, 34.863579, 44.790333>,  <31.954386, 34.399296, 44.604649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541355, 34.863579, 44.790333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.315262, 34.771908, 45.107315>,  <32.179607, 34.716908, 45.297504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.315262, 34.771908, 45.107315>,  <32.541355, 34.863579, 44.790333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315262, 34.771908, 45.107315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818436, -0.276117, 0.503906,
		0.103329, 0.933401, 0.343635,
		-0.565230, -0.229176, 0.792460,
		32.145691, 34.703156, 45.345055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710449, 35.206215, 45.378021>,  <32.541355, 34.863579, 44.790333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710449, 35.206215, 45.378021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567520, 34.857918, 45.513149>,  <32.481762, 34.648937, 45.594227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567520, 34.857918, 45.513149>,  <32.710449, 35.206215, 45.378021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567520, 34.857918, 45.513149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931747, -0.307345, 0.193355,
		-0.064537, 0.383849, 0.921138,
		-0.357326, -0.870746, 0.337815,
		32.460323, 34.596695, 45.614494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924664, 35.112579, 46.134789>,  <32.710449, 35.206215, 45.378021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924664, 35.112579, 46.134789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877483, 34.784813, 45.910416>,  <32.849174, 34.588154, 45.775791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877483, 34.784813, 45.910416>,  <32.924664, 35.112579, 46.134789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877483, 34.784813, 45.910416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928855, -0.290800, 0.229484,
		-0.351163, -0.493960, 0.795417,
		-0.117951, -0.819414, -0.560936,
		32.842098, 34.538990, 45.742134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714825, 35.170425, 46.876137>,  <32.924664, 35.112579, 46.134789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714825, 35.170425, 46.876137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622646, 34.798649, 46.991398>,  <32.567341, 34.575581, 47.060555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.622646, 34.798649, 46.991398>,  <32.714825, 35.170425, 46.876137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622646, 34.798649, 46.991398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961171, -0.171213, 0.216417,
		-0.151812, 0.326834, 0.932809,
		-0.230442, -0.929444, 0.288151,
		32.553513, 34.519817, 47.077843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939056, 34.996704, 47.594997>,  <32.714825, 35.170425, 46.876137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939056, 34.996704, 47.594997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.925205, 34.675354, 47.357212>,  <32.916893, 34.482544, 47.214542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.925205, 34.675354, 47.357212>,  <32.939056, 34.996704, 47.594997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925205, 34.675354, 47.357212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930002, -0.243690, 0.275156,
		-0.365919, -0.543324, 0.755581,
		-0.034629, -0.803377, -0.594463,
		32.914818, 34.434341, 47.178871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954266, 34.303852, 47.966324>,  <32.939056, 34.996704, 47.594997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954266, 34.303852, 47.966324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115719, 34.350910, 47.603394>,  <33.212589, 34.379147, 47.385635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115719, 34.350910, 47.603394>,  <32.954266, 34.303852, 47.966324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115719, 34.350910, 47.603394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914134, -0.092974, 0.394608,
		-0.037932, -0.988693, -0.145076,
		0.403634, 0.117651, -0.907324,
		33.236809, 34.386204, 47.331196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801662, 34.701134, 48.616337>,  <32.954266, 34.303852, 47.966324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801662, 34.701134, 48.616337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850563, 34.981594, 48.335354>,  <32.879902, 35.149872, 48.166763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850563, 34.981594, 48.335354>,  <32.801662, 34.701134, 48.616337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850563, 34.981594, 48.335354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472039, 0.663665, 0.580282,
		0.873060, 0.260645, 0.412105,
		0.122252, 0.701151, -0.702454,
		32.887238, 35.191940, 48.124619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451637, 35.066517, 49.112118>,  <32.801662, 34.701134, 48.616337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451637, 35.066517, 49.112118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507919, 34.831768, 49.431065>,  <32.541691, 34.690918, 49.622433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507919, 34.831768, 49.431065>,  <32.451637, 35.066517, 49.112118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507919, 34.831768, 49.431065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942211, -0.167951, -0.289882,
		0.304040, 0.792073, 0.529321,
		0.140707, -0.586868, 0.797363,
		32.550133, 34.655708, 49.670273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148335, 35.170380, 49.372799>,  <32.451637, 35.066517, 49.112118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148335, 35.170380, 49.372799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068432, 34.804928, 49.514431>,  <33.020489, 34.585655, 49.599411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068432, 34.804928, 49.514431>,  <33.148335, 35.170380, 49.372799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068432, 34.804928, 49.514431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947468, -0.272232, -0.167915,
		0.249804, 0.301933, 0.920019,
		-0.199759, -0.913634, 0.354076,
		33.008503, 34.530838, 49.620655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567974, 35.091148, 49.956104>,  <33.148335, 35.170380, 49.372799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567974, 35.091148, 49.956104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474766, 34.728115, 49.816395>,  <33.418842, 34.510296, 49.732567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474766, 34.728115, 49.816395>,  <33.567974, 35.091148, 49.956104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474766, 34.728115, 49.816395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971827, -0.230414, -0.049627,
		-0.035438, -0.351002, 0.935704,
		-0.233018, -0.907583, -0.349278,
		33.404861, 34.455841, 49.711613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116039, 34.742321, 50.148159>,  <33.567974, 35.091148, 49.956104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116039, 34.742321, 50.148159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.958057, 34.488220, 49.882690>,  <33.863270, 34.335758, 49.723408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.958057, 34.488220, 49.882690>,  <34.116039, 34.742321, 50.148159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958057, 34.488220, 49.882690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914908, -0.337558, -0.221357,
		-0.083410, -0.694626, 0.714520,
		-0.394952, -0.635256, -0.663674,
		33.839573, 34.297642, 49.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630634, 34.226307, 50.065987>,  <34.116039, 34.742321, 50.148159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630634, 34.226307, 50.065987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413639, 34.165791, 49.735455>,  <34.283440, 34.129482, 49.537136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413639, 34.165791, 49.735455>,  <34.630634, 34.226307, 50.065987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413639, 34.165791, 49.735455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823567, -0.289749, -0.487630,
		-0.165654, -0.945070, 0.281783,
		-0.542491, -0.151289, -0.826327,
		34.250893, 34.120403, 49.487556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800354, 33.589931, 49.798389>,  <34.630634, 34.226307, 50.065987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800354, 33.589931, 49.798389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634243, 33.768261, 49.481205>,  <34.534576, 33.875259, 49.290894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634243, 33.768261, 49.481205>,  <34.800354, 33.589931, 49.798389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634243, 33.768261, 49.481205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827583, -0.176758, -0.532788,
		-0.377691, -0.877496, -0.295551,
		-0.415279, 0.445822, -0.792960,
		34.509659, 33.902008, 49.243317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815884, 33.153049, 49.280930>,  <34.800354, 33.589931, 49.798389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815884, 33.153049, 49.280930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791435, 33.518295, 49.119690>,  <34.776768, 33.737442, 49.022945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791435, 33.518295, 49.119690>,  <34.815884, 33.153049, 49.280930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791435, 33.518295, 49.119690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795698, -0.199249, -0.571983,
		-0.602602, -0.355708, -0.714383,
		-0.061119, 0.913111, -0.403104,
		34.773098, 33.792229, 48.998760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195438, 33.033234, 48.610798>,  <34.815884, 33.153049, 49.280930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195438, 33.033234, 48.610798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191113, 33.431206, 48.650776>,  <35.188515, 33.669991, 48.674763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191113, 33.431206, 48.650776>,  <35.195438, 33.033234, 48.610798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191113, 33.431206, 48.650776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858802, 0.060441, -0.508729,
		-0.512193, 0.080330, -0.855106,
		-0.010817, 0.994934, 0.099945,
		35.187866, 33.729687, 48.680759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236439, 33.208412, 47.956440>,  <35.195438, 33.033234, 48.610798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236439, 33.208412, 47.956440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369011, 33.519028, 48.170780>,  <35.448555, 33.705399, 48.299385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369011, 33.519028, 48.170780>,  <35.236439, 33.208412, 47.956440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369011, 33.519028, 48.170780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697346, 0.180928, -0.693522,
		-0.635499, 0.603530, -0.481553,
		0.331435, 0.776542, 0.535849,
		35.468441, 33.751991, 48.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483692, 33.607281, 47.475330>,  <35.236439, 33.208412, 47.956440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483692, 33.607281, 47.475330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633411, 33.779591, 47.803802>,  <35.723244, 33.882977, 48.000885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633411, 33.779591, 47.803802>,  <35.483692, 33.607281, 47.475330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633411, 33.779591, 47.803802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738577, 0.396980, -0.544895,
		-0.560717, 0.810459, -0.169568,
		0.374300, 0.430771, 0.821180,
		35.745701, 33.908821, 48.050156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513794, 34.310394, 47.278961>,  <35.483692, 33.607281, 47.475330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513794, 34.310394, 47.278961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768951, 34.283367, 47.585823>,  <35.922047, 34.267151, 47.769939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768951, 34.283367, 47.585823>,  <35.513794, 34.310394, 47.278961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768951, 34.283367, 47.585823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732055, 0.362536, -0.576770,
		-0.239150, 0.929517, 0.280722,
		0.637890, -0.067569, 0.767158,
		35.960320, 34.263096, 47.815971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978115, 34.824326, 47.170013>,  <35.513794, 34.310394, 47.278961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978115, 34.824326, 47.170013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189980, 34.565746, 47.389671>,  <36.317097, 34.410599, 47.521465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189980, 34.565746, 47.389671>,  <35.978115, 34.824326, 47.170013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189980, 34.565746, 47.389671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803618, 0.175293, -0.568745,
		0.271403, 0.742547, 0.612343,
		0.529660, -0.646449, 0.549149,
		36.348877, 34.371811, 47.554417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647896, 35.064682, 47.257553>,  <35.978115, 34.824326, 47.170013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647896, 35.064682, 47.257553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714882, 34.679649, 47.342773>,  <36.755074, 34.448631, 47.393906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714882, 34.679649, 47.342773>,  <36.647896, 35.064682, 47.257553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714882, 34.679649, 47.342773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908728, 0.066909, -0.411991,
		0.382319, 0.262603, 0.885930,
		0.167466, -0.962581, 0.213054,
		36.765121, 34.390877, 47.406689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297062, 35.037212, 47.539909>,  <36.647896, 35.064682, 47.257553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297062, 35.037212, 47.539909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229824, 34.672798, 47.389305>,  <37.189480, 34.454151, 47.298943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229824, 34.672798, 47.389305>,  <37.297062, 35.037212, 47.539909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229824, 34.672798, 47.389305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721117, 0.146771, -0.677088,
		0.672112, -0.385320, 0.632292,
		-0.168094, -0.911036, -0.376507,
		37.179398, 34.399487, 47.276352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976124, 34.734783, 47.357922>,  <37.297062, 35.037212, 47.539909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976124, 34.734783, 47.357922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.704800, 34.539101, 47.138622>,  <37.542004, 34.421692, 47.007042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.704800, 34.539101, 47.138622>,  <37.976124, 34.734783, 47.357922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704800, 34.539101, 47.138622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611741, 0.037332, -0.790177,
		0.407025, -0.871370, 0.273944,
		-0.678310, -0.489204, -0.548247,
		37.501308, 34.392338, 46.974148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343174, 34.407150, 46.884724>,  <37.976124, 34.734783, 47.357922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343174, 34.407150, 46.884724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985188, 34.319588, 46.729233>,  <37.770393, 34.267052, 46.635937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985188, 34.319588, 46.729233>,  <38.343174, 34.407150, 46.884724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985188, 34.319588, 46.729233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422520, -0.136223, -0.896058,
		0.143200, -0.966190, 0.214409,
		-0.894970, -0.218908, -0.388727,
		37.716698, 34.253914, 46.612614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879650, 34.855770, 46.726856>,  <38.343174, 34.407150, 46.884724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879650, 34.855770, 46.726856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779102, 35.065533, 46.401447>,  <38.718773, 35.191391, 46.206203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.779102, 35.065533, 46.401447>,  <38.879650, 34.855770, 46.726856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779102, 35.065533, 46.401447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811750, -0.343543, -0.472271,
		-0.527140, -0.779088, -0.339331,
		-0.251366, 0.524405, -0.813520,
		38.703693, 35.222855, 46.157391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262310, 34.136875, 46.794746>,  <38.879650, 34.855770, 46.726856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262310, 34.136875, 46.794746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317898, 34.259243, 46.418003>,  <39.351250, 34.332664, 46.191956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317898, 34.259243, 46.418003>,  <39.262310, 34.136875, 46.794746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317898, 34.259243, 46.418003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827587, 0.486456, 0.280107,
		0.543864, -0.818398, -0.185572,
		0.138966, 0.305917, -0.941861,
		39.359589, 34.351017, 46.135445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635468, 33.925148, 47.397369>,  <39.262310, 34.136875, 46.794746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635468, 33.925148, 47.397369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889381, 34.234055, 47.407593>,  <40.041729, 34.419399, 47.413727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889381, 34.234055, 47.407593>,  <39.635468, 33.925148, 47.397369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889381, 34.234055, 47.407593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541631, 0.421122, 0.727525,
		0.551082, -0.475662, 0.685605,
		0.634779, 0.772271, 0.025561,
		40.079815, 34.465736, 47.415260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751766, 33.731300, 48.107315>,  <39.635468, 33.925148, 47.397369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751766, 33.731300, 48.107315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694149, 33.542389, 47.759476>,  <39.659580, 33.429043, 47.550770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694149, 33.542389, 47.759476>,  <39.751766, 33.731300, 48.107315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694149, 33.542389, 47.759476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013822, -0.877721, 0.478973,
		-0.989475, 0.081011, 0.119898,
		-0.144039, -0.472274, -0.869603,
		39.650936, 33.400707, 47.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706833, 33.930920, 48.845573>,  <39.751766, 33.731300, 48.107315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706833, 33.930920, 48.845573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447670, 34.201515, 48.705528>,  <39.292171, 34.363873, 48.621502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447670, 34.201515, 48.705528>,  <39.706833, 33.930920, 48.845573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447670, 34.201515, 48.705528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583789, -0.145756, 0.798715,
		0.489287, 0.721889, 0.489361,
		-0.647911, 0.676484, -0.350114,
		39.253296, 34.404461, 48.600494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384804, 34.178398, 49.404545>,  <39.706833, 33.930920, 48.845573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384804, 34.178398, 49.404545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121735, 34.321098, 49.139156>,  <38.963894, 34.406719, 48.979923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121735, 34.321098, 49.139156>,  <39.384804, 34.178398, 49.404545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121735, 34.321098, 49.139156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734705, -0.109256, 0.669531,
		0.166369, 0.927788, 0.333962,
		-0.657670, 0.356753, -0.663474,
		38.924435, 34.428123, 48.940113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930714, 34.652802, 49.787231>,  <39.384804, 34.178398, 49.404545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930714, 34.652802, 49.787231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737865, 34.540737, 49.455189>,  <38.622158, 34.473499, 49.255962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737865, 34.540737, 49.455189>,  <38.930714, 34.652802, 49.787231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737865, 34.540737, 49.455189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784107, -0.284676, 0.551484,
		-0.390815, 0.916771, -0.082428,
		-0.482120, -0.280160, -0.830103,
		38.593231, 34.456688, 49.206158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303829, 35.004829, 49.921577>,  <38.930714, 34.652802, 49.787231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303829, 35.004829, 49.921577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221783, 34.713478, 49.660076>,  <38.172554, 34.538670, 49.503174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221783, 34.713478, 49.660076>,  <38.303829, 35.004829, 49.921577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221783, 34.713478, 49.660076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758911, -0.303436, 0.576177,
		-0.618047, 0.614324, -0.490534,
		-0.205114, -0.728376, -0.653755,
		38.160248, 34.494965, 49.463951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653969, 35.016258, 49.835567>,  <38.303829, 35.004829, 49.921577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653969, 35.016258, 49.835567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747952, 34.645775, 49.717632>,  <37.804340, 34.423485, 49.646870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747952, 34.645775, 49.717632>,  <37.653969, 35.016258, 49.835567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747952, 34.645775, 49.717632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702381, -0.371462, 0.607188,
		-0.671905, 0.064426, -0.737830,
		0.234957, -0.926210, -0.294838,
		37.818439, 34.367912, 49.629181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963932, 34.651825, 49.804260>,  <37.653969, 35.016258, 49.835567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963932, 34.651825, 49.804260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229996, 34.353146, 49.803844>,  <37.389633, 34.173939, 49.803596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229996, 34.353146, 49.803844>,  <36.963932, 34.651825, 49.804260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229996, 34.353146, 49.803844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666517, -0.594362, 0.449988,
		-0.336622, -0.298624, -0.893034,
		0.665162, -0.746698, -0.001037,
		37.429546, 34.129135, 49.803532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503082, 34.081181, 49.689240>,  <36.963932, 34.651825, 49.804260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503082, 34.081181, 49.689240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838886, 33.937431, 49.852249>,  <37.040367, 33.851181, 49.950054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838886, 33.937431, 49.852249>,  <36.503082, 34.081181, 49.689240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838886, 33.937431, 49.852249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534970, -0.415493, 0.735644,
		-0.095043, -0.835595, -0.541062,
		0.839508, -0.359371, 0.407529,
		37.090740, 33.829620, 49.974506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405895, 33.378677, 49.836422>,  <36.503082, 34.081181, 49.689240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405895, 33.378677, 49.836422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701523, 33.523949, 50.063362>,  <36.878899, 33.611111, 50.199524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701523, 33.523949, 50.063362>,  <36.405895, 33.378677, 49.836422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701523, 33.523949, 50.063362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466195, -0.332191, 0.819946,
		0.486258, -0.870487, -0.076197,
		0.739064, 0.363182, 0.567347,
		36.923241, 33.632904, 50.233566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445812, 32.907066, 50.263992>,  <36.405895, 33.378677, 49.836422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445812, 32.907066, 50.263992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584156, 33.241302, 50.434715>,  <36.667164, 33.441845, 50.537148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584156, 33.241302, 50.434715>,  <36.445812, 32.907066, 50.263992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584156, 33.241302, 50.434715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498884, -0.221488, 0.837889,
		0.794666, -0.502722, 0.340259,
		0.345862, 0.835592, 0.426809,
		36.687916, 33.491982, 50.562759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601265, 32.625420, 50.983799>,  <36.445812, 32.907066, 50.263992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601265, 32.625420, 50.983799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558128, 33.023071, 50.980091>,  <36.532246, 33.261662, 50.977867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558128, 33.023071, 50.980091>,  <36.601265, 32.625420, 50.983799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558128, 33.023071, 50.980091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313800, -0.025192, 0.949155,
		0.943345, 0.105267, 0.314673,
		-0.107842, 0.994125, -0.009267,
		36.525776, 33.321308, 50.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916042, 32.882374, 51.670078>,  <36.601265, 32.625420, 50.983799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916042, 32.882374, 51.670078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672527, 33.158943, 51.514484>,  <36.526417, 33.324886, 51.421127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672527, 33.158943, 51.514484>,  <36.916042, 32.882374, 51.670078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672527, 33.158943, 51.514484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403906, 0.151871, 0.902106,
		0.682812, 0.706306, 0.186812,
		-0.608792, 0.691424, -0.388981,
		36.489891, 33.366371, 51.397789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836918, 33.307835, 52.230534>,  <36.916042, 32.882374, 51.670078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836918, 33.307835, 52.230534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539516, 33.414902, 51.985401>,  <36.361076, 33.479141, 51.838322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539516, 33.414902, 51.985401>,  <36.836918, 33.307835, 52.230534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539516, 33.414902, 51.985401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549829, 0.276955, 0.788025,
		0.380653, 0.922850, -0.058747,
		-0.743500, 0.267664, -0.612833,
		36.316467, 33.495201, 51.801552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612488, 34.005962, 52.379211>,  <36.836918, 33.307835, 52.230534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612488, 34.005962, 52.379211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296219, 33.857784, 52.184231>,  <36.106457, 33.768879, 52.067242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296219, 33.857784, 52.184231>,  <36.612488, 34.005962, 52.379211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296219, 33.857784, 52.184231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608652, 0.389571, 0.691215,
		-0.066158, 0.843213, -0.533493,
		-0.790674, -0.370441, -0.487450,
		36.059017, 33.746651, 52.037994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217121, 34.688232, 52.138077>,  <36.612488, 34.005962, 52.379211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217121, 34.688232, 52.138077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013268, 34.346531, 52.179100>,  <35.890957, 34.141510, 52.203716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013268, 34.346531, 52.179100>,  <36.217121, 34.688232, 52.138077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013268, 34.346531, 52.179100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732280, 0.493241, 0.469552,
		-0.451705, 0.164195, -0.876928,
		-0.509635, -0.854256, 0.102563,
		35.860378, 34.090256, 52.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577366, 34.914749, 51.932869>,  <36.217121, 34.688232, 52.138077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577366, 34.914749, 51.932869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520016, 34.581917, 52.147190>,  <35.485607, 34.382217, 52.275784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520016, 34.581917, 52.147190>,  <35.577366, 34.914749, 51.932869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520016, 34.581917, 52.147190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773127, 0.432156, 0.464236,
		-0.617833, -0.347687, -0.705263,
		-0.143375, -0.832079, 0.535806,
		35.477005, 34.332294, 52.307934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930134, 34.783440, 51.732044>,  <35.577366, 34.914749, 51.932869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930134, 34.783440, 51.732044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002045, 34.596024, 52.078026>,  <35.045193, 34.483574, 52.285614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002045, 34.596024, 52.078026>,  <34.930134, 34.783440, 51.732044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002045, 34.596024, 52.078026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903814, 0.268429, 0.333264,
		-0.388327, -0.841674, -0.375216,
		0.179781, -0.468541, 0.864955,
		35.055981, 34.455460, 52.337513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387398, 34.431976, 51.931499>,  <34.930134, 34.783440, 51.732044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387398, 34.431976, 51.931499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515896, 34.401646, 52.309082>,  <34.592995, 34.383446, 52.535633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515896, 34.401646, 52.309082>,  <34.387398, 34.431976, 51.931499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515896, 34.401646, 52.309082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924553, 0.190616, 0.329950,
		-0.204954, -0.978731, -0.008875,
		0.321241, -0.075830, 0.943957,
		34.612267, 34.378895, 52.592270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824509, 34.179916, 52.238575>,  <34.387398, 34.431976, 51.931499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824509, 34.179916, 52.238575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042961, 34.322918, 52.541611>,  <34.174034, 34.408718, 52.723431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042961, 34.322918, 52.541611>,  <33.824509, 34.179916, 52.238575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042961, 34.322918, 52.541611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835319, 0.300549, 0.460339,
		-0.063120, -0.884231, 0.462765,
		0.546130, 0.357500, 0.757586,
		34.206799, 34.430168, 52.768887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555332, 33.902206, 52.852592>,  <33.824509, 34.179916, 52.238575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555332, 33.902206, 52.852592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748165, 34.241188, 52.941513>,  <33.863865, 34.444576, 52.994865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748165, 34.241188, 52.941513>,  <33.555332, 33.902206, 52.852592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748165, 34.241188, 52.941513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834482, 0.366848, 0.411172,
		0.266895, -0.383732, 0.884035,
		0.482086, 0.847451, 0.222307,
		33.892792, 34.495422, 53.008205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263641, 34.127361, 53.553432>,  <33.555332, 33.902206, 52.852592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263641, 34.127361, 53.553432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445961, 34.451714, 53.406616>,  <33.555351, 34.646324, 53.318527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445961, 34.451714, 53.406616>,  <33.263641, 34.127361, 53.553432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445961, 34.451714, 53.406616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714493, 0.579239, 0.392404,
		0.530796, 0.083388, 0.843387,
		0.455801, 0.810881, -0.367038,
		33.582703, 34.694977, 53.296505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329815, 34.538631, 54.121986>,  <33.263641, 34.127361, 53.553432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329815, 34.538631, 54.121986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338314, 34.783791, 53.806034>,  <33.343414, 34.930885, 53.616463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338314, 34.783791, 53.806034>,  <33.329815, 34.538631, 54.121986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338314, 34.783791, 53.806034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727615, 0.551311, 0.408206,
		0.685656, 0.566054, 0.457666,
		0.021249, 0.612894, -0.789880,
		33.344688, 34.967659, 53.569069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417477, 35.207890, 54.452721>,  <33.329815, 34.538631, 54.121986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417477, 35.207890, 54.452721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281311, 35.282139, 54.084011>,  <33.199612, 35.326691, 53.862785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281311, 35.282139, 54.084011>,  <33.417477, 35.207890, 54.452721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281311, 35.282139, 54.084011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532481, 0.769919, 0.351693,
		0.774972, 0.610547, -0.163249,
		-0.340413, 0.185625, -0.921771,
		33.179188, 35.337826, 53.807480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509842, 35.772221, 54.404781>,  <33.417477, 35.207890, 54.452721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509842, 35.772221, 54.404781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265835, 35.762589, 54.087975>,  <33.119431, 35.756809, 53.897888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265835, 35.762589, 54.087975>,  <33.509842, 35.772221, 54.404781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265835, 35.762589, 54.087975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283384, 0.940061, 0.189682,
		0.739978, 0.340156, -0.580281,
		-0.610021, -0.024082, -0.792019,
		33.082829, 35.755363, 53.850368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719696, 36.315376, 53.896057>,  <33.509842, 35.772221, 54.404781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719696, 36.315376, 53.896057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.329567, 36.241035, 53.848389>,  <33.095490, 36.196430, 53.819786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.329567, 36.241035, 53.848389>,  <33.719696, 36.315376, 53.896057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329567, 36.241035, 53.848389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206257, 0.959572, 0.191519,
		0.078762, 0.211373, -0.974227,
		-0.975323, -0.185856, -0.119175,
		33.036968, 36.185280, 53.812637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522171, 36.970264, 53.609993>,  <33.719696, 36.315376, 53.896057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522171, 36.970264, 53.609993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176708, 36.774338, 53.657604>,  <32.969429, 36.656780, 53.686172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176708, 36.774338, 53.657604>,  <33.522171, 36.970264, 53.609993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176708, 36.774338, 53.657604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468491, 0.867138, 0.169081,
		-0.186036, 0.090263, -0.978388,
		-0.863659, -0.489821, 0.119031,
		32.917610, 36.627392, 53.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991463, 37.284168, 53.162777>,  <33.522171, 36.970264, 53.609993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991463, 37.284168, 53.162777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.808517, 37.088360, 53.459747>,  <32.698750, 36.970875, 53.637928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.808517, 37.088360, 53.459747>,  <32.991463, 37.284168, 53.162777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808517, 37.088360, 53.459747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536690, 0.817619, 0.208479,
		-0.709075, -0.303102, -0.636664,
		-0.457358, -0.489518, 0.742426,
		32.671310, 36.941505, 53.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201382, 37.404778, 53.097008>,  <32.991463, 37.284168, 53.162777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201382, 37.404778, 53.097008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226795, 37.314461, 53.485847>,  <32.242043, 37.260273, 53.719151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226795, 37.314461, 53.485847>,  <32.201382, 37.404778, 53.097008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226795, 37.314461, 53.485847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593167, 0.774797, 0.218729,
		-0.802568, -0.590516, -0.084706,
		0.063532, -0.225790, 0.972102,
		32.245853, 37.246723, 53.777477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601242, 37.376415, 53.247543>,  <32.201382, 37.404778, 53.097008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601242, 37.376415, 53.247543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778780, 37.404625, 53.604874>,  <31.885302, 37.421551, 53.819271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778780, 37.404625, 53.604874>,  <31.601242, 37.376415, 53.247543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778780, 37.404625, 53.604874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639659, 0.723090, 0.260724,
		-0.627567, -0.687144, 0.366051,
		0.443843, 0.070526, 0.893325,
		31.911934, 37.425781, 53.872871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092993, 37.431751, 53.737007>,  <31.601242, 37.376415, 53.247543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092993, 37.431751, 53.737007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407566, 37.605328, 53.912838>,  <31.596310, 37.709473, 54.018337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407566, 37.605328, 53.912838>,  <31.092993, 37.431751, 53.737007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407566, 37.605328, 53.912838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599219, 0.708659, 0.372477,
		-0.149876, -0.556328, 0.817335,
		0.786431, 0.433937, 0.439573,
		31.643496, 37.735508, 54.044708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806355, 37.836365, 54.257347>,  <31.092993, 37.431751, 53.737007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806355, 37.836365, 54.257347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183622, 37.968636, 54.244183>,  <31.409983, 38.047997, 54.236282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183622, 37.968636, 54.244183>,  <30.806355, 37.836365, 54.257347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183622, 37.968636, 54.244183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281402, 0.847444, 0.450169,
		0.176753, -0.415323, 0.892337,
		0.943171, 0.330674, -0.032916,
		31.466574, 38.067837, 54.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918598, 38.000561, 54.897362>,  <30.806355, 37.836365, 54.257347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918598, 38.000561, 54.897362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211676, 38.185509, 54.697613>,  <31.387522, 38.296478, 54.577763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211676, 38.185509, 54.697613>,  <30.918598, 38.000561, 54.897362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211676, 38.185509, 54.697613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208784, 0.851100, 0.481702,
		0.647744, -0.248678, 0.720130,
		0.732692, 0.462372, -0.499375,
		31.431482, 38.324219, 54.547802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458830, 38.287052, 55.371986>,  <30.918598, 38.000561, 54.897362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458830, 38.287052, 55.371986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451454, 38.496140, 55.031063>,  <31.447029, 38.621593, 54.826511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451454, 38.496140, 55.031063>,  <31.458830, 38.287052, 55.371986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451454, 38.496140, 55.031063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199315, 0.833419, 0.515447,
		0.979762, 0.179382, 0.088817,
		-0.018440, 0.522718, -0.852306,
		31.445923, 38.652954, 54.775372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941072, 38.754204, 55.514839>,  <31.458830, 38.287052, 55.371986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941072, 38.754204, 55.514839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.696434, 38.869343, 55.220058>,  <31.549652, 38.938427, 55.043190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.696434, 38.869343, 55.220058>,  <31.941072, 38.754204, 55.514839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696434, 38.869343, 55.220058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075460, 0.906000, 0.416496,
		0.787564, 0.310337, -0.532384,
		-0.611594, 0.287844, -0.736952,
		31.512957, 38.955696, 54.998974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141365, 39.448345, 55.331314>,  <31.941072, 38.754204, 55.514839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141365, 39.448345, 55.331314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.760544, 39.395332, 55.221012>,  <31.532053, 39.363525, 55.154831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.760544, 39.395332, 55.221012>,  <32.141365, 39.448345, 55.331314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760544, 39.395332, 55.221012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214625, 0.931636, 0.293241,
		0.218036, 0.338362, -0.915407,
		-0.952048, -0.132532, -0.275751,
		31.474930, 39.355572, 55.138287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836882, 40.213734, 55.225018>,  <32.141365, 39.448345, 55.331314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836882, 40.213734, 55.225018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490108, 40.015919, 55.200169>,  <31.282045, 39.897228, 55.185261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490108, 40.015919, 55.200169>,  <31.836882, 40.213734, 55.225018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490108, 40.015919, 55.200169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481429, 0.798574, 0.361257,
		-0.129046, 0.343093, -0.930395,
		-0.866933, -0.494538, -0.062122,
		31.230028, 39.867558, 55.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312918, 40.654156, 54.922142>,  <31.836882, 40.213734, 55.225018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312918, 40.654156, 54.922142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109221, 40.382755, 55.133919>,  <30.987001, 40.219913, 55.260986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.109221, 40.382755, 55.133919>,  <31.312918, 40.654156, 54.922142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109221, 40.382755, 55.133919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671632, 0.697976, 0.248475,
		-0.538128, -0.229055, -0.811142,
		-0.509243, -0.678500, 0.529442,
		30.956448, 40.179207, 55.292751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568918, 40.522633, 54.692280>,  <31.312918, 40.654156, 54.922142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568918, 40.522633, 54.692280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587288, 40.470520, 55.088444>,  <30.598310, 40.439251, 55.326141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587288, 40.470520, 55.088444>,  <30.568918, 40.522633, 54.692280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587288, 40.470520, 55.088444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722763, 0.680067, 0.122973,
		-0.689568, -0.721481, -0.062934,
		0.045923, -0.130285, 0.990412,
		30.601065, 40.431435, 55.385567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910570, 40.496761, 54.899330>,  <30.568918, 40.522633, 54.692280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910570, 40.496761, 54.899330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120331, 40.602619, 55.223049>,  <30.246187, 40.666134, 55.417282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120331, 40.602619, 55.223049>,  <29.910570, 40.496761, 54.899330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120331, 40.602619, 55.223049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713943, 0.654603, 0.248555,
		-0.463991, -0.708137, 0.532216,
		0.524401, 0.264645, 0.809300,
		30.277651, 40.682014, 55.465839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408560, 40.710297, 55.528713>,  <29.910570, 40.496761, 54.899330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408560, 40.710297, 55.528713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760916, 40.852268, 55.653969>,  <29.972330, 40.937450, 55.729122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.760916, 40.852268, 55.653969>,  <29.408560, 40.710297, 55.528713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760916, 40.852268, 55.653969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462719, 0.785009, 0.411889,
		-0.099626, -0.507725, 0.855740,
		0.880889, 0.354932, 0.313141,
		30.025183, 40.958748, 55.747910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270702, 40.849155, 56.193180>,  <29.408560, 40.710297, 55.528713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270702, 40.849155, 56.193180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.586311, 41.058960, 56.065220>,  <29.775677, 41.184841, 55.988445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.586311, 41.058960, 56.065220>,  <29.270702, 40.849155, 56.193180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586311, 41.058960, 56.065220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482820, 0.851373, 0.205057,
		0.379908, -0.007341, 0.924995,
		0.789022, 0.524509, -0.319899,
		29.823017, 41.216312, 55.969250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301311, 41.241982, 56.699577>,  <29.270702, 40.849155, 56.193180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301311, 41.241982, 56.699577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528116, 41.425121, 56.425682>,  <29.664200, 41.535007, 56.261345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.528116, 41.425121, 56.425682>,  <29.301311, 41.241982, 56.699577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528116, 41.425121, 56.425682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496210, 0.853384, 0.159723,
		0.657475, 0.249209, 0.711071,
		0.567012, 0.457854, -0.684739,
		29.698219, 41.562477, 56.220261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660727, 41.824028, 57.021992>,  <29.301311, 41.241982, 56.699577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660727, 41.824028, 57.021992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.585749, 41.888390, 56.634388>,  <29.540762, 41.927006, 56.401825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.585749, 41.888390, 56.634388>,  <29.660727, 41.824028, 57.021992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585749, 41.888390, 56.634388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349832, 0.910873, 0.218924,
		0.917868, 0.380026, -0.114448,
		-0.187445, 0.160906, -0.969007,
		29.529514, 41.936661, 56.343685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866516, 42.528496, 56.948997>,  <29.660727, 41.824028, 57.021992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866516, 42.528496, 56.948997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598660, 42.404678, 56.678955>,  <29.437946, 42.330387, 56.516930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598660, 42.404678, 56.678955>,  <29.866516, 42.528496, 56.948997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598660, 42.404678, 56.678955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503533, 0.857409, 0.106325,
		0.545928, 0.411137, -0.730020,
		-0.669639, -0.309543, -0.675105,
		29.397768, 42.311817, 56.476425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818575, 42.992401, 56.350891>,  <29.866516, 42.528496, 56.948997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818575, 42.992401, 56.350891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.483841, 42.794220, 56.444038>,  <29.283001, 42.675312, 56.499928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.483841, 42.794220, 56.444038>,  <29.818575, 42.992401, 56.350891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483841, 42.794220, 56.444038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417741, 0.852833, 0.313319,
		-0.353831, 0.164920, -0.920655,
		-0.836837, -0.495457, 0.232865,
		29.232790, 42.645584, 56.513897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343191, 43.551846, 56.200115>,  <29.818575, 42.992401, 56.350891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343191, 43.551846, 56.200115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.184456, 43.273941, 56.440056>,  <29.089214, 43.107197, 56.584019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.184456, 43.273941, 56.440056>,  <29.343191, 43.551846, 56.200115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184456, 43.273941, 56.440056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431983, 0.717978, 0.545801,
		-0.809882, -0.042529, -0.585049,
		-0.396840, -0.694766, 0.599849,
		29.065405, 43.065510, 56.620010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566336, 43.632114, 56.263256>,  <29.343191, 43.551846, 56.200115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566336, 43.632114, 56.263256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695694, 43.433872, 56.585697>,  <28.773308, 43.314926, 56.779160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695694, 43.433872, 56.585697>,  <28.566336, 43.632114, 56.263256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695694, 43.433872, 56.585697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494648, 0.637678, 0.590499,
		-0.806684, -0.589700, -0.038927,
		0.323395, -0.495601, 0.806099,
		28.792713, 43.285191, 56.827526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059357, 43.150681, 56.642281>,  <28.566336, 43.632114, 56.263256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059357, 43.150681, 56.642281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.346714, 43.329437, 56.855522>,  <28.519129, 43.436691, 56.983467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.346714, 43.329437, 56.855522>,  <28.059357, 43.150681, 56.642281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346714, 43.329437, 56.855522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695363, 0.482869, 0.532266,
		-0.019555, -0.753078, 0.657641,
		0.718393, 0.446891, 0.533105,
		28.562231, 43.463505, 57.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830639, 43.225704, 57.252289>,  <28.059357, 43.150681, 56.642281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830639, 43.225704, 57.252289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.113623, 43.507778, 57.271122>,  <28.283413, 43.677021, 57.282421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.113623, 43.507778, 57.271122>,  <27.830639, 43.225704, 57.252289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113623, 43.507778, 57.271122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531161, 0.486568, 0.693628,
		0.466220, -0.515728, 0.718793,
		0.707465, 0.705178, 0.047087,
		28.325861, 43.719334, 57.285244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546684, 43.749466, 56.842155>,  <27.830639, 43.225704, 57.252289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546684, 43.749466, 56.842155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.458221, 43.996471, 56.540222>,  <27.405144, 44.144672, 56.359062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.458221, 43.996471, 56.540222>,  <27.546684, 43.749466, 56.842155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458221, 43.996471, 56.540222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722377, -0.416258, -0.552178,
		-0.655180, -0.667392, -0.354016,
		-0.221157, 0.617509, -0.754833,
		27.391874, 44.181725, 56.313774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400549, 43.386013, 56.236000>,  <27.546684, 43.749466, 56.842155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400549, 43.386013, 56.236000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.536222, 43.752129, 56.149101>,  <27.617626, 43.971798, 56.096962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.536222, 43.752129, 56.149101>,  <27.400549, 43.386013, 56.236000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536222, 43.752129, 56.149101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511328, -0.373219, -0.774113,
		-0.789619, 0.151483, -0.594604,
		0.339183, 0.915293, -0.217243,
		27.637978, 44.026718, 56.083927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288441, 43.569321, 55.528255>,  <27.400549, 43.386013, 56.236000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288441, 43.569321, 55.528255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.601122, 43.793888, 55.636883>,  <27.788731, 43.928627, 55.702061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.601122, 43.793888, 55.636883>,  <27.288441, 43.569321, 55.528255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601122, 43.793888, 55.636883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433033, -0.175247, -0.884178,
		-0.448802, 0.808763, -0.380104,
		0.781703, 0.561419, 0.271570,
		27.835632, 43.962315, 55.718353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591219, 43.387596, 54.989285>,  <27.288441, 43.569321, 55.528255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591219, 43.387596, 54.989285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.845850, 43.669518, 55.114517>,  <27.998629, 43.838673, 55.189655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.845850, 43.669518, 55.114517>,  <27.591219, 43.387596, 54.989285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845850, 43.669518, 55.114517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498574, -0.066383, -0.864302,
		-0.588383, 0.706287, -0.393656,
		0.636577, 0.704807, 0.313077,
		28.036823, 43.880959, 55.208439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528652, 43.969925, 54.564423>,  <27.591219, 43.387596, 54.989285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528652, 43.969925, 54.564423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873205, 43.852707, 54.730385>,  <28.079937, 43.782375, 54.829964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873205, 43.852707, 54.730385>,  <27.528652, 43.969925, 54.564423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873205, 43.852707, 54.730385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333799, -0.289130, -0.897208,
		0.382887, 0.911332, -0.151231,
		0.861380, -0.293049, 0.414906,
		28.131618, 43.764793, 54.854858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096109, 44.192753, 54.055019>,  <27.528652, 43.969925, 54.564423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096109, 44.192753, 54.055019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.130188, 43.859592, 54.273746>,  <28.150635, 43.659695, 54.404984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.130188, 43.859592, 54.273746>,  <28.096109, 44.192753, 54.055019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130188, 43.859592, 54.273746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245705, -0.514302, -0.821659,
		0.965593, 0.204360, 0.160831,
		0.085198, -0.832905, 0.546818,
		28.155748, 43.609722, 54.437794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842241, 43.992897, 54.148888>,  <28.096109, 44.192753, 54.055019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842241, 43.992897, 54.148888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.627499, 43.657112, 54.182564>,  <28.498653, 43.455643, 54.202770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.627499, 43.657112, 54.182564>,  <28.842241, 43.992897, 54.148888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627499, 43.657112, 54.182564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589270, -0.444511, -0.674663,
		0.603777, -0.312589, 0.733309,
		-0.536856, -0.839463, 0.084186,
		28.466442, 43.405273, 54.207821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319927, 43.514545, 54.372074>,  <28.842241, 43.992897, 54.148888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319927, 43.514545, 54.372074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.017866, 43.335213, 54.180767>,  <28.836630, 43.227612, 54.065983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.017866, 43.335213, 54.180767>,  <29.319927, 43.514545, 54.372074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017866, 43.335213, 54.180767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637472, -0.332063, -0.695243,
		0.152888, -0.829897, 0.536560,
		-0.755152, -0.448337, -0.478268,
		28.791321, 43.200710, 54.037285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635538, 43.098007, 53.888626>,  <29.319927, 43.514545, 54.372074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635538, 43.098007, 53.888626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261078, 43.020538, 53.771248>,  <29.036402, 42.974056, 53.700821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261078, 43.020538, 53.771248>,  <29.635538, 43.098007, 53.888626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261078, 43.020538, 53.771248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346367, -0.364618, -0.864340,
		0.060403, -0.910794, 0.408420,
		-0.936152, -0.193672, -0.293445,
		28.980232, 42.962437, 53.683216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663015, 42.440117, 53.605125>,  <29.635538, 43.098007, 53.888626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663015, 42.440117, 53.605125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359959, 42.641251, 53.438686>,  <29.178125, 42.761929, 53.338821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359959, 42.641251, 53.438686>,  <29.663015, 42.440117, 53.605125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359959, 42.641251, 53.438686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241041, -0.376894, -0.894343,
		-0.606529, -0.777889, 0.164348,
		-0.757642, 0.502831, -0.416101,
		29.132666, 42.792099, 53.313858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230886, 42.012554, 53.210445>,  <29.663015, 42.440117, 53.605125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230886, 42.012554, 53.210445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177019, 42.376160, 53.052685>,  <29.144699, 42.594322, 52.958031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177019, 42.376160, 53.052685>,  <29.230886, 42.012554, 53.210445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177019, 42.376160, 53.052685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137667, -0.377000, -0.915925,
		-0.981281, -0.177643, -0.074371,
		-0.134670, 0.909018, -0.394398,
		29.136618, 42.648865, 52.934364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770351, 41.846550, 52.681046>,  <29.230886, 42.012554, 53.210445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770351, 41.846550, 52.681046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.934153, 42.204975, 52.612480>,  <29.032433, 42.420029, 52.571339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.934153, 42.204975, 52.612480>,  <28.770351, 41.846550, 52.681046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934153, 42.204975, 52.612480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291080, -0.306402, -0.906306,
		-0.864627, 0.321239, -0.386298,
		0.409503, 0.896060, -0.171417,
		29.057003, 42.473793, 52.561054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602652, 41.954796, 52.086697>,  <28.770351, 41.846550, 52.681046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602652, 41.954796, 52.086697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.899660, 42.217789, 52.137890>,  <29.077866, 42.375584, 52.168606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.899660, 42.217789, 52.137890>,  <28.602652, 41.954796, 52.086697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899660, 42.217789, 52.137890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391737, -0.271269, -0.879178,
		-0.543326, 0.702945, -0.458983,
		0.742522, 0.657481, 0.127982,
		29.122417, 42.415031, 52.176285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627508, 42.328167, 51.424038>,  <28.602652, 41.954796, 52.086697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627508, 42.328167, 51.424038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983477, 42.385494, 51.597244>,  <29.197058, 42.419891, 51.701168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983477, 42.385494, 51.597244>,  <28.627508, 42.328167, 51.424038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983477, 42.385494, 51.597244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453712, -0.375448, -0.808198,
		0.046748, 0.915696, -0.399143,
		0.889922, 0.143314, 0.433013,
		29.250454, 42.428490, 51.727150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058342, 42.637756, 51.020962>,  <28.627508, 42.328167, 51.424038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058342, 42.637756, 51.020962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345739, 42.478699, 51.249226>,  <29.518177, 42.383263, 51.386185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.345739, 42.478699, 51.249226>,  <29.058342, 42.637756, 51.020962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345739, 42.478699, 51.249226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496404, -0.281522, -0.821175,
		0.487188, 0.873283, -0.004879,
		0.718492, -0.397645, 0.570655,
		29.561287, 42.359406, 51.420422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602055, 42.836163, 50.679825>,  <29.058342, 42.637756, 51.020962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602055, 42.836163, 50.679825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.731190, 42.541191, 50.917133>,  <29.808672, 42.364208, 51.059517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.731190, 42.541191, 50.917133>,  <29.602055, 42.836163, 50.679825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731190, 42.541191, 50.917133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482360, -0.411119, -0.773505,
		0.814312, 0.535888, 0.222982,
		0.322840, -0.737432, 0.593270,
		29.828041, 42.319962, 51.095116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320089, 42.690113, 50.519001>,  <29.602055, 42.836163, 50.679825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320089, 42.690113, 50.519001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179508, 42.360241, 50.696262>,  <30.095160, 42.162319, 50.802620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179508, 42.360241, 50.696262>,  <30.320089, 42.690113, 50.519001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179508, 42.360241, 50.696262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519885, -0.565571, -0.640194,
		0.778590, 0.005390, 0.627510,
		-0.351451, -0.824682, 0.443150,
		30.074072, 42.112835, 50.829208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840878, 42.329319, 50.675053>,  <30.320089, 42.690113, 50.519001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840878, 42.329319, 50.675053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561546, 42.043465, 50.658913>,  <30.393948, 41.871952, 50.649227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561546, 42.043465, 50.658913>,  <30.840878, 42.329319, 50.675053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561546, 42.043465, 50.658913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625424, -0.581790, -0.519967,
		0.348114, -0.388343, 0.853233,
		-0.698328, -0.714640, -0.040350,
		30.352049, 41.829071, 50.646809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307175, 41.762386, 50.635017>,  <30.840878, 42.329319, 50.675053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307175, 41.762386, 50.635017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955904, 41.604961, 50.526272>,  <30.745142, 41.510506, 50.461025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955904, 41.604961, 50.526272>,  <31.307175, 41.762386, 50.635017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955904, 41.604961, 50.526272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472918, -0.629056, -0.616958,
		0.071793, -0.670370, 0.738546,
		-0.878177, -0.393565, -0.271868,
		30.692451, 41.486893, 50.444710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268703, 40.967388, 50.589924>,  <31.307175, 41.762386, 50.635017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268703, 40.967388, 50.589924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030006, 41.184689, 50.353695>,  <30.886787, 41.315067, 50.211956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.030006, 41.184689, 50.353695>,  <31.268703, 40.967388, 50.589924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030006, 41.184689, 50.353695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428055, -0.407005, -0.806918,
		-0.678723, -0.734321, 0.010337,
		-0.596744, 0.543249, -0.590574,
		30.850983, 41.347664, 50.176521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090326, 40.450459, 50.165169>,  <31.268703, 40.967388, 50.589924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090326, 40.450459, 50.165169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046310, 40.815456, 50.007568>,  <31.019901, 41.034454, 49.913006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046310, 40.815456, 50.007568>,  <31.090326, 40.450459, 50.165169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046310, 40.815456, 50.007568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424976, -0.315151, -0.848572,
		-0.898491, -0.260819, -0.353110,
		-0.110041, 0.912498, -0.394003,
		31.013298, 41.089207, 49.889366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777338, 40.378754, 49.521210>,  <31.090326, 40.450459, 50.165169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777338, 40.378754, 49.521210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967577, 40.729298, 49.490765>,  <31.081720, 40.939625, 49.472496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967577, 40.729298, 49.490765>,  <30.777338, 40.378754, 49.521210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967577, 40.729298, 49.490765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526084, -0.352716, -0.773839,
		-0.705011, 0.327994, -0.628792,
		0.475599, 0.876363, -0.076116,
		31.110256, 40.992207, 49.467930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756067, 40.566452, 48.822205>,  <30.777338, 40.378754, 49.521210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756067, 40.566452, 48.822205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.067001, 40.764763, 48.977104>,  <31.253561, 40.883751, 49.070042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.067001, 40.764763, 48.977104>,  <30.756067, 40.566452, 48.822205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067001, 40.764763, 48.977104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591129, -0.365047, -0.719241,
		-0.215220, 0.788002, -0.576830,
		0.777333, 0.495776, 0.387245,
		31.300201, 40.913494, 49.093277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052773, 41.027454, 48.283993>,  <30.756067, 40.566452, 48.822205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052773, 41.027454, 48.283993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340151, 40.986610, 48.559212>,  <31.512577, 40.962105, 48.724342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340151, 40.986610, 48.559212>,  <31.052773, 41.027454, 48.283993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340151, 40.986610, 48.559212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678034, -0.118000, -0.725497,
		0.155270, 0.987750, -0.015542,
		0.718444, -0.102110, 0.688049,
		31.555683, 40.955978, 48.765625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606661, 41.318062, 47.998882>,  <31.052773, 41.027454, 48.283993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606661, 41.318062, 47.998882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762543, 41.103100, 48.298035>,  <31.856071, 40.974125, 48.477528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762543, 41.103100, 48.298035>,  <31.606661, 41.318062, 47.998882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762543, 41.103100, 48.298035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848317, -0.106611, -0.518645,
		0.358453, 0.836561, 0.414339,
		0.389705, -0.537401, 0.747884,
		31.879454, 40.941879, 48.522400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287418, 41.654030, 48.177284>,  <31.606661, 41.318062, 47.998882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287418, 41.654030, 48.177284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267506, 41.267082, 48.276653>,  <32.255558, 41.034912, 48.336273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267506, 41.267082, 48.276653>,  <32.287418, 41.654030, 48.177284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267506, 41.267082, 48.276653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889895, -0.155882, -0.428705,
		0.453442, 0.199727, 0.868619,
		-0.049778, -0.967372, 0.248420,
		32.252571, 40.976871, 48.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957439, 41.545616, 48.296410>,  <32.287418, 41.654030, 48.177284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957439, 41.545616, 48.296410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.819962, 41.169983, 48.297375>,  <32.737476, 40.944603, 48.297955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.819962, 41.169983, 48.297375>,  <32.957439, 41.545616, 48.296410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819962, 41.169983, 48.297375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887291, -0.325576, -0.326674,
		0.307557, -0.110137, 0.945134,
		-0.343692, -0.939079, 0.002410,
		32.716854, 40.888260, 48.298100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507648, 41.171864, 48.632851>,  <32.957439, 41.545616, 48.296410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507648, 41.171864, 48.632851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288002, 40.900257, 48.437950>,  <33.156216, 40.737293, 48.321011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.288002, 40.900257, 48.437950>,  <33.507648, 41.171864, 48.632851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288002, 40.900257, 48.437950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835066, -0.422215, -0.352703,
		0.033765, -0.600562, 0.798865,
		-0.549112, -0.679014, -0.487253,
		33.123268, 40.696552, 48.291775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726204, 40.524094, 48.813671>,  <33.507648, 41.171864, 48.632851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726204, 40.524094, 48.813671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541878, 40.452053, 48.466061>,  <33.431282, 40.408829, 48.257492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541878, 40.452053, 48.466061>,  <33.726204, 40.524094, 48.813671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541878, 40.452053, 48.466061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734993, -0.626266, -0.259952,
		-0.497426, -0.758521, 0.420966,
		-0.460816, -0.180100, -0.869029,
		33.403633, 40.398022, 48.205353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713406, 39.834637, 48.841103>,  <33.726204, 40.524094, 48.813671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713406, 39.834637, 48.841103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663338, 39.939381, 48.458321>,  <33.633297, 40.002228, 48.228653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663338, 39.939381, 48.458321>,  <33.713406, 39.834637, 48.841103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663338, 39.939381, 48.458321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567749, -0.772093, -0.285542,
		-0.813630, -0.579050, -0.052029,
		-0.125172, 0.261864, -0.956953,
		33.625786, 40.017941, 48.171234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604412, 39.208946, 48.494831>,  <33.713406, 39.834637, 48.841103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604412, 39.208946, 48.494831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703457, 39.475010, 48.213051>,  <33.762882, 39.634647, 48.043983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703457, 39.475010, 48.213051>,  <33.604412, 39.208946, 48.494831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703457, 39.475010, 48.213051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756949, -0.586650, -0.287872,
		-0.604746, -0.461952, -0.648754,
		0.247609, 0.665163, -0.704449,
		33.777740, 39.674561, 48.001717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573868, 38.877823, 47.862858>,  <33.604412, 39.208946, 48.494831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573868, 38.877823, 47.862858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819668, 39.189888, 47.815960>,  <33.967148, 39.377125, 47.787823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.819668, 39.189888, 47.815960>,  <33.573868, 38.877823, 47.862858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819668, 39.189888, 47.815960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733191, -0.619610, -0.280206,
		-0.291250, 0.086224, -0.952753,
		0.614496, 0.780160, -0.117243,
		34.004017, 39.423935, 47.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989723, 38.846039, 47.192299>,  <33.573868, 38.877823, 47.862858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989723, 38.846039, 47.192299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201805, 39.068779, 47.448051>,  <34.329052, 39.202423, 47.601501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201805, 39.068779, 47.448051>,  <33.989723, 38.846039, 47.192299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201805, 39.068779, 47.448051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820432, -0.527240, -0.221153,
		0.213956, 0.641822, -0.736402,
		0.530201, 0.556851, 0.639378,
		34.360867, 39.235836, 47.639866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577469, 38.901230, 46.812649>,  <33.989723, 38.846039, 47.192299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577469, 38.901230, 46.812649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663357, 38.985161, 47.194195>,  <34.714890, 39.035519, 47.423122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663357, 38.985161, 47.194195>,  <34.577469, 38.901230, 46.812649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663357, 38.985161, 47.194195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912268, -0.391882, -0.119148,
		0.348803, 0.895767, -0.275566,
		0.214719, 0.209831, 0.953869,
		34.727772, 39.048111, 47.480354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280960, 39.133450, 46.742149>,  <34.577469, 38.901230, 46.812649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280960, 39.133450, 46.742149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236900, 39.084827, 47.136730>,  <35.210464, 39.055656, 47.373478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.236900, 39.084827, 47.136730>,  <35.280960, 39.133450, 46.742149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236900, 39.084827, 47.136730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896070, -0.441561, 0.045643,
		0.430032, 0.888959, 0.157555,
		-0.110145, -0.121553, 0.986455,
		35.203857, 39.048363, 47.432667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945805, 39.258228, 47.001968>,  <35.280960, 39.133450, 46.742149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945805, 39.258228, 47.001968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766605, 39.045021, 47.289074>,  <35.659088, 38.917095, 47.461338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766605, 39.045021, 47.289074>,  <35.945805, 39.258228, 47.001968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766605, 39.045021, 47.289074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835129, -0.536093, 0.123140,
		0.319153, 0.654593, 0.685310,
		-0.447996, -0.533022, 0.717766,
		35.632206, 38.885113, 47.504402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445248, 39.161385, 47.450230>,  <35.945805, 39.258228, 47.001968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445248, 39.161385, 47.450230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177170, 38.902290, 47.595154>,  <36.016323, 38.746834, 47.682110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177170, 38.902290, 47.595154>,  <36.445248, 39.161385, 47.450230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177170, 38.902290, 47.595154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733514, -0.652475, 0.190352,
		0.113103, 0.393336, 0.912412,
		-0.670198, -0.647737, 0.362314,
		35.976109, 38.707970, 47.703850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716721, 38.857384, 48.131863>,  <36.445248, 39.161385, 47.450230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716721, 38.857384, 48.131863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439365, 38.594894, 48.012814>,  <36.272953, 38.437401, 47.941383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439365, 38.594894, 48.012814>,  <36.716721, 38.857384, 48.131863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439365, 38.594894, 48.012814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538802, -0.746443, 0.390532,
		-0.478436, 0.110431, 0.871151,
		-0.693392, -0.656222, -0.297625,
		36.231346, 38.398029, 47.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697643, 38.427769, 48.643509>,  <36.716721, 38.857384, 48.131863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697643, 38.427769, 48.643509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546944, 38.224167, 48.333935>,  <36.456524, 38.102005, 48.148190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546944, 38.224167, 48.333935>,  <36.697643, 38.427769, 48.643509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546944, 38.224167, 48.333935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625588, -0.755990, 0.192661,
		-0.683152, -0.411578, 0.603247,
		-0.376754, -0.509001, -0.773935,
		36.433918, 38.071468, 48.101753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681862, 37.695698, 48.723469>,  <36.697643, 38.427769, 48.643509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681862, 37.695698, 48.723469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661106, 37.671642, 48.324734>,  <36.648651, 37.657211, 48.085491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661106, 37.671642, 48.324734>,  <36.681862, 37.695698, 48.723469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661106, 37.671642, 48.324734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633741, -0.773425, 0.013670,
		-0.771804, -0.631029, 0.078242,
		-0.051888, -0.060136, -0.996841,
		36.645538, 37.653603, 48.025681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714779, 36.979660, 48.571766>,  <36.681862, 37.695698, 48.723469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714779, 36.979660, 48.571766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770153, 37.126232, 48.203728>,  <36.803375, 37.214176, 47.982906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770153, 37.126232, 48.203728>,  <36.714779, 36.979660, 48.571766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770153, 37.126232, 48.203728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529351, -0.812570, -0.243962,
		-0.837033, -0.453279, -0.306453,
		0.138432, 0.366426, -0.920092,
		36.811684, 37.236160, 47.927700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490761, 36.419899, 48.043324>,  <36.714779, 36.979660, 48.571766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490761, 36.419899, 48.043324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.740993, 36.677166, 47.866695>,  <36.891132, 36.831528, 47.760719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.740993, 36.677166, 47.866695>,  <36.490761, 36.419899, 48.043324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740993, 36.677166, 47.866695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630976, -0.749984, -0.198477,
		-0.458826, -0.154458, -0.874998,
		0.625579, 0.643169, -0.441571,
		36.928665, 36.870117, 47.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737698, 36.119816, 47.476521>,  <36.490761, 36.419899, 48.043324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737698, 36.119816, 47.476521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.029327, 36.392864, 47.496410>,  <37.204308, 36.556694, 47.508343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.029327, 36.392864, 47.496410>,  <36.737698, 36.119816, 47.476521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029327, 36.392864, 47.496410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662660, -0.685840, -0.300841,
		-0.171259, 0.252285, -0.952377,
		0.729076, 0.682624, 0.049723,
		37.248051, 36.597652, 47.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142170, 36.139057, 46.850010>,  <36.737698, 36.119816, 47.476521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142170, 36.139057, 46.850010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364487, 36.283329, 47.149612>,  <37.497875, 36.369892, 47.329372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364487, 36.283329, 47.149612>,  <37.142170, 36.139057, 46.850010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364487, 36.283329, 47.149612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761341, -0.582664, -0.284361,
		0.333854, 0.728293, -0.598440,
		0.555788, 0.360682, 0.749004,
		37.531223, 36.391533, 47.374313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060619, 36.719017, 46.320438>,  <37.142170, 36.139057, 46.850010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060619, 36.719017, 46.320438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265957, 36.983952, 46.538723>,  <37.389160, 37.142910, 46.669693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265957, 36.983952, 46.538723>,  <37.060619, 36.719017, 46.320438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265957, 36.983952, 46.538723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662055, -0.710243, 0.239242,
		0.546043, 0.238476, -0.803097,
		0.513341, 0.662332, 0.545708,
		37.419960, 37.182652, 46.702435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544811, 36.543842, 45.815220>,  <37.060619, 36.719017, 46.320438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544811, 36.543842, 45.815220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388805, 36.310146, 45.530529>,  <36.295204, 36.169930, 45.359715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388805, 36.310146, 45.530529>,  <36.544811, 36.543842, 45.815220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388805, 36.310146, 45.530529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916921, 0.317378, 0.241925,
		0.084544, 0.746950, -0.659483,
		-0.390011, -0.584240, -0.711727,
		36.271801, 36.134872, 45.317013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062046, 36.961468, 45.392170>,  <36.544811, 36.543842, 45.815220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062046, 36.961468, 45.392170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967140, 36.574688, 45.354843>,  <35.910194, 36.342621, 45.332447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.967140, 36.574688, 45.354843>,  <36.062046, 36.961468, 45.392170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967140, 36.574688, 45.354843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911463, 0.188356, 0.365727,
		-0.336063, 0.171834, -0.926032,
		-0.237268, -0.966951, -0.093321,
		35.895958, 36.284603, 45.326847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447987, 36.986023, 45.114140>,  <36.062046, 36.961468, 45.392170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447987, 36.986023, 45.114140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479355, 36.619942, 45.272259>,  <35.498177, 36.400295, 45.367130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.479355, 36.619942, 45.272259>,  <35.447987, 36.986023, 45.114140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479355, 36.619942, 45.272259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905288, 0.100681, 0.412694,
		-0.417497, -0.390220, -0.820625,
		0.078420, -0.915200, 0.395295,
		35.502880, 36.345383, 45.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867237, 36.696033, 44.811760>,  <35.447987, 36.986023, 45.114140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867237, 36.696033, 44.811760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975853, 36.465668, 45.120197>,  <35.041023, 36.327450, 45.305260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975853, 36.465668, 45.120197>,  <34.867237, 36.696033, 44.811760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975853, 36.465668, 45.120197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933126, 0.038655, 0.357466,
		-0.235677, -0.816595, -0.526905,
		0.271538, -0.575915, 0.771096,
		35.057316, 36.292892, 45.351524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593357, 35.952679, 44.754749>,  <34.867237, 36.696033, 44.811760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593357, 35.952679, 44.754749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673073, 36.053066, 45.133652>,  <34.720901, 36.113297, 45.360992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673073, 36.053066, 45.133652>,  <34.593357, 35.952679, 44.754749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673073, 36.053066, 45.133652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931992, -0.250132, 0.262344,
		0.302780, -0.935120, 0.184051,
		0.199286, 0.250967, 0.947260,
		34.732857, 36.128357, 45.417831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239117, 35.450336, 45.272148>,  <34.593357, 35.952679, 44.754749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239117, 35.450336, 45.272148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320587, 35.764996, 45.505283>,  <34.369469, 35.953793, 45.645164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320587, 35.764996, 45.505283>,  <34.239117, 35.450336, 45.272148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320587, 35.764996, 45.505283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862521, -0.137491, 0.486984,
		0.463220, -0.601897, 0.650498,
		0.203676, 0.786649, 0.582837,
		34.381691, 36.000992, 45.680134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892132, 35.233269, 45.905880>,  <34.239117, 35.450336, 45.272148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892132, 35.233269, 45.905880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970211, 35.616879, 45.988029>,  <34.017059, 35.847042, 46.037319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970211, 35.616879, 45.988029>,  <33.892132, 35.233269, 45.905880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970211, 35.616879, 45.988029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892908, 0.087144, 0.441725,
		0.405727, -0.269599, 0.873328,
		0.195194, 0.959022, 0.205371,
		34.028770, 35.904587, 46.049641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647415, 35.420921, 46.687977>,  <33.892132, 35.233269, 45.905880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647415, 35.420921, 46.687977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659081, 35.756180, 46.470112>,  <33.666080, 35.957336, 46.339394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659081, 35.756180, 46.470112>,  <33.647415, 35.420921, 46.687977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659081, 35.756180, 46.470112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949973, 0.192759, 0.245754,
		0.310966, 0.510245, 0.801841,
		0.029167, 0.838149, -0.544661,
		33.667831, 36.007626, 46.306713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201557, 35.865067, 47.170235>,  <33.647415, 35.420921, 46.687977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201557, 35.865067, 47.170235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239807, 36.063046, 46.824780>,  <33.262756, 36.181835, 46.617504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239807, 36.063046, 46.824780>,  <33.201557, 35.865067, 47.170235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239807, 36.063046, 46.824780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897594, 0.417953, 0.140139,
		0.430324, 0.761800, 0.484233,
		0.095629, 0.494950, -0.863643,
		33.268497, 36.211533, 46.565685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046501, 36.516239, 47.370819>,  <33.201557, 35.865067, 47.170235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046501, 36.516239, 47.370819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007809, 36.496937, 46.973164>,  <32.984592, 36.485355, 46.734570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007809, 36.496937, 46.973164>,  <33.046501, 36.516239, 47.370819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007809, 36.496937, 46.973164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892045, 0.447235, 0.065091,
		0.441473, 0.893114, -0.086310,
		-0.096734, -0.048256, -0.994140,
		32.978790, 36.482460, 46.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900124, 37.226089, 47.033291>,  <33.046501, 36.516239, 47.370819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900124, 37.226089, 47.033291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761101, 36.935497, 46.796165>,  <32.677689, 36.761143, 46.653889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761101, 36.935497, 46.796165>,  <32.900124, 37.226089, 47.033291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761101, 36.935497, 46.796165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900463, 0.434904, -0.005037,
		0.261477, 0.532058, -0.805322,
		-0.347558, -0.726480, -0.592816,
		32.656834, 36.717552, 46.618320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431007, 37.591755, 46.653759>,  <32.900124, 37.226089, 47.033291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431007, 37.591755, 46.653759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319729, 37.216705, 46.570370>,  <32.252960, 36.991676, 46.520336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319729, 37.216705, 46.570370>,  <32.431007, 37.591755, 46.653759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319729, 37.216705, 46.570370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958142, 0.286169, -0.008483,
		0.067612, 0.197384, -0.977992,
		-0.278196, -0.937628, -0.208471,
		32.236271, 36.935417, 46.507828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109104, 37.611794, 46.001949>,  <32.431007, 37.591755, 46.653759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109104, 37.611794, 46.001949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956270, 37.316273, 46.224007>,  <31.864571, 37.138962, 46.357243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956270, 37.316273, 46.224007>,  <32.109104, 37.611794, 46.001949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956270, 37.316273, 46.224007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838816, 0.529357, 0.127159,
		-0.387815, -0.417079, -0.821976,
		-0.382083, -0.738801, 0.555145,
		31.841646, 37.094631, 46.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310402, 37.678303, 45.952312>,  <32.109104, 37.611794, 46.001949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310402, 37.678303, 45.952312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384708, 37.427174, 46.254658>,  <31.429293, 37.276497, 46.436066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384708, 37.427174, 46.254658>,  <31.310402, 37.678303, 45.952312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384708, 37.427174, 46.254658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784186, 0.368788, 0.499046,
		-0.592067, -0.685440, -0.423826,
		0.185765, -0.627827, 0.755860,
		31.440437, 37.238827, 46.481415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686550, 37.287956, 46.127201>,  <31.310402, 37.678303, 45.952312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686550, 37.287956, 46.127201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916853, 37.268738, 46.453686>,  <31.055035, 37.257206, 46.649574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916853, 37.268738, 46.453686>,  <30.686550, 37.287956, 46.127201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916853, 37.268738, 46.453686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736794, 0.402279, 0.543420,
		-0.354455, -0.914255, 0.196211,
		0.575757, -0.048050, 0.816208,
		31.089581, 37.254322, 46.698547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215981, 36.971138, 46.649162>,  <30.686550, 37.287956, 46.127201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215981, 36.971138, 46.649162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513103, 37.181843, 46.814453>,  <30.691378, 37.308266, 46.913628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513103, 37.181843, 46.814453>,  <30.215981, 36.971138, 46.649162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513103, 37.181843, 46.814453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659949, 0.472199, 0.584376,
		0.112699, -0.706791, 0.698388,
		0.742810, 0.526759, 0.413229,
		30.735947, 37.339870, 46.938423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127342, 37.015350, 47.444416>,  <30.215981, 36.971138, 46.649162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127342, 37.015350, 47.444416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380119, 37.318272, 47.378517>,  <30.531786, 37.500023, 47.338978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380119, 37.318272, 47.378517>,  <30.127342, 37.015350, 47.444416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380119, 37.318272, 47.378517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499624, 0.560586, 0.660392,
		0.592474, -0.335016, 0.732625,
		0.631942, 0.757303, -0.164750,
		30.569702, 37.545464, 47.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337233, 37.244965, 47.972603>,  <30.127342, 37.015350, 47.444416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337233, 37.244965, 47.972603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447094, 37.569923, 47.766857>,  <30.513010, 37.764900, 47.643410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447094, 37.569923, 47.766857>,  <30.337233, 37.244965, 47.972603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447094, 37.569923, 47.766857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589267, 0.564926, 0.577601,
		0.759822, 0.144461, 0.633878,
		0.274653, 0.812398, -0.514369,
		30.529490, 37.813644, 47.612545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612606, 37.760086, 48.467571>,  <30.337233, 37.244965, 47.972603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612606, 37.760086, 48.467571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.522123, 37.985950, 48.150085>,  <30.467834, 38.121468, 47.959595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.522123, 37.985950, 48.150085>,  <30.612606, 37.760086, 48.467571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522123, 37.985950, 48.150085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455838, 0.658747, 0.598552,
		0.860839, 0.497203, 0.108381,
		-0.226206, 0.564660, -0.793719,
		30.454262, 38.155350, 47.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856056, 38.453293, 48.490463>,  <30.612606, 37.760086, 48.467571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856056, 38.453293, 48.490463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550602, 38.458477, 48.232258>,  <30.367329, 38.461590, 48.077335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550602, 38.458477, 48.232258>,  <30.856056, 38.453293, 48.490463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550602, 38.458477, 48.232258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423117, 0.745134, 0.515507,
		0.487679, 0.666789, -0.563526,
		-0.763637, 0.012965, -0.645516,
		30.321510, 38.462368, 48.038605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624401, 39.065247, 48.536144>,  <30.856056, 38.453293, 48.490463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624401, 39.065247, 48.536144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316368, 38.893089, 48.347790>,  <30.131548, 38.789795, 48.234776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316368, 38.893089, 48.347790>,  <30.624401, 39.065247, 48.536144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316368, 38.893089, 48.347790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622058, 0.670309, 0.404635,
		0.141490, 0.604522, -0.783922,
		-0.770081, -0.430393, -0.470890,
		30.085344, 38.763973, 48.206524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202349, 39.592327, 48.371391>,  <30.624401, 39.065247, 48.536144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202349, 39.592327, 48.371391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968203, 39.268047, 48.375729>,  <29.827715, 39.073479, 48.378330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968203, 39.268047, 48.375729>,  <30.202349, 39.592327, 48.371391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968203, 39.268047, 48.375729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659233, 0.483699, 0.575714,
		-0.471972, 0.329858, -0.817579,
		-0.585367, -0.810696, 0.010839,
		29.792593, 39.024837, 48.378979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532505, 39.930290, 48.429066>,  <30.202349, 39.592327, 48.371391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532505, 39.930290, 48.429066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480471, 39.554989, 48.557289>,  <29.449249, 39.329807, 48.634224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480471, 39.554989, 48.557289>,  <29.532505, 39.930290, 48.429066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480471, 39.554989, 48.557289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597456, 0.332199, 0.729856,
		-0.791280, -0.096577, -0.603779,
		-0.130087, -0.938252, 0.320563,
		29.441444, 39.273514, 48.653458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814953, 39.884853, 48.494133>,  <29.532505, 39.930290, 48.429066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814953, 39.884853, 48.494133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.950516, 39.582794, 48.718597>,  <29.031853, 39.401558, 48.853275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.950516, 39.582794, 48.718597>,  <28.814953, 39.884853, 48.494133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950516, 39.582794, 48.718597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606490, 0.280626, 0.743922,
		-0.719244, -0.592457, -0.362881,
		0.338908, -0.755144, 0.561158,
		29.052189, 39.356251, 48.886944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245979, 39.546902, 48.629257>,  <28.814953, 39.884853, 48.494133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245979, 39.546902, 48.629257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.499432, 39.436237, 48.918247>,  <28.651503, 39.369839, 49.091640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.499432, 39.436237, 48.918247>,  <28.245979, 39.546902, 48.629257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499432, 39.436237, 48.918247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688223, 0.224965, 0.689739,
		-0.353356, -0.934264, -0.047860,
		0.633631, -0.276662, 0.722475,
		28.689522, 39.353237, 49.134991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742779, 39.397125, 49.192532>,  <28.245979, 39.546902, 48.629257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742779, 39.397125, 49.192532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.102718, 39.396454, 49.367012>,  <28.318682, 39.396049, 49.471699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.102718, 39.396454, 49.367012>,  <27.742779, 39.397125, 49.192532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102718, 39.396454, 49.367012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430131, 0.162879, 0.887951,
		-0.072544, -0.986645, 0.145842,
		0.899847, -0.001684, 0.436202,
		28.372673, 39.395950, 49.497871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688366, 38.917217, 49.740036>,  <27.742779, 39.397125, 49.192532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688366, 38.917217, 49.740036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990889, 39.167465, 49.816559>,  <28.172403, 39.317616, 49.862473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990889, 39.167465, 49.816559>,  <27.688366, 38.917217, 49.740036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990889, 39.167465, 49.816559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381385, 0.184040, 0.905911,
		0.531548, -0.758109, 0.377793,
		0.756309, 0.625619, 0.191306,
		28.217781, 39.355152, 49.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894026, 38.821960, 50.434029>,  <27.688366, 38.917217, 49.740036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894026, 38.821960, 50.434029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.038000, 39.181541, 50.334167>,  <28.124384, 39.397289, 50.274250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.038000, 39.181541, 50.334167>,  <27.894026, 38.821960, 50.434029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038000, 39.181541, 50.334167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252922, 0.351582, 0.901344,
		0.898040, -0.261284, 0.353912,
		0.359936, 0.898955, -0.249650,
		28.145981, 39.451229, 50.259274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124458, 39.148033, 51.181229>,  <27.894026, 38.821960, 50.434029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124458, 39.148033, 51.181229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099936, 39.446320, 50.915852>,  <28.085222, 39.625290, 50.756626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099936, 39.446320, 50.915852>,  <28.124458, 39.148033, 51.181229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099936, 39.446320, 50.915852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443745, 0.575024, 0.687342,
		0.894054, 0.336536, 0.295654,
		-0.061307, 0.745715, -0.663438,
		28.081543, 39.670033, 50.716820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319153, 39.741840, 51.538044>,  <28.124458, 39.148033, 51.181229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319153, 39.741840, 51.538044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.085510, 39.849148, 51.231621>,  <27.945324, 39.913532, 51.047768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.085510, 39.849148, 51.231621>,  <28.319153, 39.741840, 51.538044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085510, 39.849148, 51.231621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613819, 0.471534, 0.633153,
		0.531081, 0.840052, -0.110756,
		-0.584106, 0.268271, -0.766062,
		27.910278, 39.929630, 51.001801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388685, 40.488449, 51.569550>,  <28.319153, 39.741840, 51.538044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388685, 40.488449, 51.569550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061150, 40.373352, 51.370869>,  <27.864628, 40.304295, 51.251659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061150, 40.373352, 51.370869>,  <28.388685, 40.488449, 51.569550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061150, 40.373352, 51.370869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569139, 0.519622, 0.637239,
		0.074735, 0.804485, -0.589251,
		-0.818838, -0.287742, -0.496698,
		27.815498, 40.287029, 51.221859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948219, 41.093925, 51.442413>,  <28.388685, 40.488449, 51.569550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948219, 41.093925, 51.442413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.704548, 40.777851, 51.415535>,  <27.558346, 40.588207, 51.399406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.704548, 40.777851, 51.415535>,  <27.948219, 41.093925, 51.442413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704548, 40.777851, 51.415535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658248, 0.456561, 0.598550,
		-0.442283, 0.408857, -0.798262,
		-0.609177, -0.790182, -0.067200,
		27.521795, 40.540798, 51.395374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333408, 41.449703, 51.418926>,  <27.948219, 41.093925, 51.442413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333408, 41.449703, 51.418926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208403, 41.072021, 51.460510>,  <27.133398, 40.845413, 51.485462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208403, 41.072021, 51.460510>,  <27.333408, 41.449703, 51.418926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208403, 41.072021, 51.460510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804620, 0.321296, 0.499355,
		-0.504897, 0.072407, -0.860138,
		-0.312516, -0.944207, 0.103961,
		27.114649, 40.788761, 51.491699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689051, 41.464085, 51.179646>,  <27.333408, 41.449703, 51.418926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689051, 41.464085, 51.179646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.751366, 41.159615, 51.431469>,  <26.788754, 40.976933, 51.582565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.751366, 41.159615, 51.431469>,  <26.689051, 41.464085, 51.179646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751366, 41.159615, 51.431469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732684, 0.338414, 0.590465,
		-0.662498, -0.553256, -0.504979,
		0.155786, -0.761173, 0.629560,
		26.798101, 40.931263, 51.620338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015848, 41.312298, 51.352734>,  <26.689051, 41.464085, 51.179646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015848, 41.312298, 51.352734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.240063, 41.112438, 51.616901>,  <26.374592, 40.992523, 51.775402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.240063, 41.112438, 51.616901>,  <26.015848, 41.312298, 51.352734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240063, 41.112438, 51.616901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654199, 0.221808, 0.723067,
		-0.507763, -0.837351, -0.202536,
		0.560536, -0.499645, 0.660419,
		26.408224, 40.962543, 51.815025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579138, 40.756763, 51.659576>,  <26.015848, 41.312298, 51.352734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579138, 40.756763, 51.659576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.863777, 40.860909, 51.920601>,  <26.034561, 40.923397, 52.077217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.863777, 40.860909, 51.920601>,  <25.579138, 40.756763, 51.659576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863777, 40.860909, 51.920601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693583, 0.112114, 0.711599,
		0.112114, -0.958979, 0.260366,
		-0.711599, -0.260366, -0.652562,
		26.077257, 40.939018, 52.116371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445875, 40.236000, 52.165936>,  <25.579138, 40.756763, 51.659576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445875, 40.236000, 52.165936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.639788, 40.559116, 52.300072>,  <25.756136, 40.752987, 52.380554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.639788, 40.559116, 52.300072>,  <25.445875, 40.236000, 52.165936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639788, 40.559116, 52.300072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719754, 0.150610, 0.677695,
		0.496932, -0.569899, 0.654426,
		0.484781, 0.807794, 0.335345,
		25.785221, 40.801456, 52.400677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412697, 40.203030, 52.789742>,  <25.445875, 40.236000, 52.165936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412697, 40.203030, 52.789742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491899, 40.594872, 52.803432>,  <25.539421, 40.829975, 52.811646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491899, 40.594872, 52.803432>,  <25.412697, 40.203030, 52.789742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491899, 40.594872, 52.803432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583248, 0.089683, 0.807328,
		0.787792, -0.179817, 0.589109,
		0.198004, 0.979603, 0.034227,
		25.551300, 40.888752, 52.813702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897879, 39.928944, 53.212711>,  <25.412697, 40.203030, 52.789742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897879, 39.928944, 53.212711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.562513, 39.719799, 53.274265>,  <25.361294, 39.594315, 53.311195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.562513, 39.719799, 53.274265>,  <25.897879, 39.928944, 53.212711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562513, 39.719799, 53.274265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182257, -0.535039, -0.824934,
		0.513658, -0.663590, 0.543879,
		-0.838414, -0.522860, 0.153883,
		25.310989, 39.562943, 53.320431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097246, 39.343544, 53.110786>,  <25.897879, 39.928944, 53.212711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097246, 39.343544, 53.110786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.701328, 39.316956, 53.060375>,  <25.463778, 39.301003, 53.030128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.701328, 39.316956, 53.060375>,  <26.097246, 39.343544, 53.110786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701328, 39.316956, 53.060375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141544, -0.357167, -0.923253,
		0.016359, -0.931672, 0.362932,
		-0.989797, -0.066475, -0.126030,
		25.404388, 39.297012, 53.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926460, 38.710228, 52.925232>,  <26.097246, 39.343544, 53.110786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926460, 38.710228, 52.925232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.611078, 38.913036, 52.785938>,  <25.421848, 39.034721, 52.702362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.611078, 38.913036, 52.785938>,  <25.926460, 38.710228, 52.925232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611078, 38.913036, 52.785938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176719, -0.355553, -0.917798,
		-0.589159, -0.785183, 0.190737,
		-0.788456, 0.507022, -0.348233,
		25.374542, 39.065144, 52.681469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465715, 38.279690, 52.764870>,  <25.926460, 38.710228, 52.925232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465715, 38.279690, 52.764870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.331154, 38.587467, 52.547695>,  <25.250418, 38.772133, 52.417389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.331154, 38.587467, 52.547695>,  <25.465715, 38.279690, 52.764870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331154, 38.587467, 52.547695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062184, -0.557135, -0.828091,
		-0.939663, -0.312333, 0.139574,
		-0.336402, 0.769447, -0.542941,
		25.230234, 38.818302, 52.384811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994797, 38.001251, 52.388405>,  <25.465715, 38.279690, 52.764870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994797, 38.001251, 52.388405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.150963, 38.325760, 52.214317>,  <25.244663, 38.520466, 52.109863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.150963, 38.325760, 52.214317>,  <24.994797, 38.001251, 52.388405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150963, 38.325760, 52.214317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007256, -0.470010, -0.882631,
		-0.920609, 0.347753, -0.177613,
		0.390417, 0.811270, -0.435219,
		25.268087, 38.569141, 52.083752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.681747, 37.883781, 51.710709>,  <24.994797, 38.001251, 52.388405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.681747, 37.883781, 51.710709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.967525, 38.161034, 51.672474>,  <25.138992, 38.327385, 51.649532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.967525, 38.161034, 51.672474>,  <24.681747, 37.883781, 51.710709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967525, 38.161034, 51.672474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252831, -0.383124, -0.888421,
		-0.652413, 0.610562, -0.448966,
		0.714446, 0.693130, -0.095586,
		25.181860, 38.368973, 51.643799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507299, 38.101711, 51.061707>,  <24.681747, 37.883781, 51.710709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507299, 38.101711, 51.061707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.893444, 38.177689, 51.133259>,  <25.125132, 38.223274, 51.176189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.893444, 38.177689, 51.133259>,  <24.507299, 38.101711, 51.061707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893444, 38.177689, 51.133259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244446, -0.418663, -0.874624,
		-0.091237, 0.888056, -0.450592,
		0.965361, 0.189944, 0.178884,
		25.183052, 38.234673, 51.186924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680929, 38.563160, 50.452946>,  <24.507299, 38.101711, 51.061707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680929, 38.563160, 50.452946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.031431, 38.435081, 50.596973>,  <25.241732, 38.358234, 50.683392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.031431, 38.435081, 50.596973>,  <24.680929, 38.563160, 50.452946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031431, 38.435081, 50.596973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301039, -0.219684, -0.927962,
		0.376234, 0.921527, -0.096106,
		0.876255, -0.320199, 0.360068,
		25.294308, 38.339020, 50.704994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053396, 38.735909, 50.050781>,  <24.680929, 38.563160, 50.452946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053396, 38.735909, 50.050781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.288410, 38.464905, 50.227768>,  <25.429419, 38.302303, 50.333961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.288410, 38.464905, 50.227768>,  <25.053396, 38.735909, 50.050781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288410, 38.464905, 50.227768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295598, -0.329311, -0.896759,
		0.753274, 0.657672, 0.006788,
		0.587537, -0.677512, 0.442468,
		25.464672, 38.261650, 50.360508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617882, 38.642265, 49.756760>,  <25.053396, 38.735909, 50.050781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617882, 38.642265, 49.756760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.641418, 38.272816, 49.908260>,  <25.655540, 38.051144, 49.999161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.641418, 38.272816, 49.908260>,  <25.617882, 38.642265, 49.756760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641418, 38.272816, 49.908260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502414, -0.300456, -0.810745,
		0.862623, 0.237995, 0.446363,
		0.058841, -0.923626, 0.378752,
		25.659071, 37.995728, 50.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206999, 38.510860, 49.631119>,  <25.617882, 38.642265, 49.756760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206999, 38.510860, 49.631119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.084614, 38.140854, 49.721210>,  <26.011183, 37.918850, 49.775265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.084614, 38.140854, 49.721210>,  <26.206999, 38.510860, 49.631119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084614, 38.140854, 49.721210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571421, -0.367647, -0.733699,
		0.761489, -0.095785, 0.641061,
		-0.305962, -0.925019, 0.225226,
		25.992825, 37.863350, 49.788776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795996, 38.179462, 49.576965>,  <26.206999, 38.510860, 49.631119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795996, 38.179462, 49.576965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.513454, 37.896847, 49.559723>,  <26.343929, 37.727276, 49.549377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.513454, 37.896847, 49.559723>,  <26.795996, 38.179462, 49.576965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513454, 37.896847, 49.559723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545915, -0.504978, -0.668562,
		0.450599, -0.495776, 0.742406,
		-0.706355, -0.706544, -0.043109,
		26.301548, 37.684883, 49.546791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073124, 37.630695, 49.880596>,  <26.795996, 38.179462, 49.576965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073124, 37.630695, 49.880596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.791967, 37.518082, 49.619312>,  <26.623274, 37.450512, 49.462543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.791967, 37.518082, 49.619312>,  <27.073124, 37.630695, 49.880596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791967, 37.518082, 49.619312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700860, -0.430862, -0.568466,
		-0.121400, -0.857378, 0.500165,
		-0.702892, -0.281534, -0.653208,
		26.581100, 37.433620, 49.423351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228783, 36.868759, 49.718254>,  <27.073124, 37.630695, 49.880596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228783, 36.868759, 49.718254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.990080, 36.995163, 49.423222>,  <26.846859, 37.071003, 49.246204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.990080, 36.995163, 49.423222>,  <27.228783, 36.868759, 49.718254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990080, 36.995163, 49.423222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672343, -0.304814, -0.674569,
		-0.437992, -0.898459, -0.030566,
		-0.596756, 0.316007, -0.737579,
		26.811052, 37.089966, 49.201946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251806, 36.257458, 49.295937>,  <27.228783, 36.868759, 49.718254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251806, 36.257458, 49.295937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.130377, 36.565159, 49.071045>,  <27.057520, 36.749779, 48.936111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.130377, 36.565159, 49.071045>,  <27.251806, 36.257458, 49.295937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130377, 36.565159, 49.071045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682437, -0.236245, -0.691713,
		-0.664924, -0.593669, -0.453247,
		-0.303572, 0.769250, -0.562227,
		27.039305, 36.795933, 48.902378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156420, 36.060680, 48.596989>,  <27.251806, 36.257458, 49.295937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156420, 36.060680, 48.596989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.222813, 36.453003, 48.556080>,  <27.262650, 36.688396, 48.531536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.222813, 36.453003, 48.556080>,  <27.156420, 36.060680, 48.596989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222813, 36.453003, 48.556080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861088, -0.194700, -0.469700,
		-0.480600, -0.010103, -0.876882,
		0.165984, 0.980811, -0.102273,
		27.272608, 36.747246, 48.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235403, 36.250019, 47.876530>,  <27.156420, 36.060680, 48.596989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235403, 36.250019, 47.876530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.417549, 36.523399, 48.104755>,  <27.526836, 36.687428, 48.241692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.417549, 36.523399, 48.104755>,  <27.235403, 36.250019, 47.876530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417549, 36.523399, 48.104755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848670, -0.139526, -0.510188,
		-0.269078, 0.716542, -0.643556,
		0.455364, 0.683447, 0.570564,
		27.554159, 36.728432, 48.275925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495930, 36.508446, 47.359615>,  <27.235403, 36.250019, 47.876530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495930, 36.508446, 47.359615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.687229, 36.624210, 47.691284>,  <27.802008, 36.693668, 47.890285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.687229, 36.624210, 47.691284>,  <27.495930, 36.508446, 47.359615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687229, 36.624210, 47.691284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875686, -0.228882, -0.425190,
		0.066728, 0.929438, -0.362894,
		0.478248, 0.289409, 0.829169,
		27.830704, 36.711033, 47.940037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063824, 36.812534, 47.123093>,  <27.495930, 36.508446, 47.359615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063824, 36.812534, 47.123093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.167955, 36.702156, 47.493191>,  <28.230434, 36.635929, 47.715248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.167955, 36.702156, 47.493191>,  <28.063824, 36.812534, 47.123093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167955, 36.702156, 47.493191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923979, -0.206863, -0.321669,
		0.280164, 0.938648, 0.201119,
		0.260329, -0.275950, 0.925246,
		28.246054, 36.619370, 47.770763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718744, 36.989670, 47.086395>,  <28.063824, 36.812534, 47.123093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718744, 36.989670, 47.086395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668535, 36.751644, 47.403923>,  <28.638409, 36.608829, 47.594440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668535, 36.751644, 47.403923>,  <28.718744, 36.989670, 47.086395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668535, 36.751644, 47.403923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879753, -0.436606, -0.188175,
		0.458561, 0.674743, 0.578311,
		-0.125524, -0.595061, 0.793817,
		28.630878, 36.573124, 47.642067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328789, 37.084427, 47.358673>,  <28.718744, 36.989670, 47.086395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328789, 37.084427, 47.358673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170315, 36.746143, 47.501671>,  <29.075230, 36.543171, 47.587471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170315, 36.746143, 47.501671>,  <29.328789, 37.084427, 47.358673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170315, 36.746143, 47.501671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904820, -0.425771, -0.004482,
		0.156003, 0.321696, 0.933903,
		-0.396187, -0.845713, 0.357499,
		29.051458, 36.492428, 47.608921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713898, 36.815147, 48.001839>,  <29.328789, 37.084427, 47.358673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713898, 36.815147, 48.001839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536009, 36.497093, 47.836926>,  <29.429276, 36.306259, 47.737980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536009, 36.497093, 47.836926>,  <29.713898, 36.815147, 48.001839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536009, 36.497093, 47.836926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877446, -0.479152, -0.022385,
		-0.179745, -0.371708, 0.910783,
		-0.444724, -0.795139, -0.412279,
		29.402592, 36.258553, 47.713242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188496, 36.333088, 48.145103>,  <29.713898, 36.815147, 48.001839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188496, 36.333088, 48.145103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928543, 36.116917, 47.931339>,  <29.772572, 35.987213, 47.803082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928543, 36.116917, 47.931339>,  <30.188496, 36.333088, 48.145103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928543, 36.116917, 47.931339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718395, -0.666329, -0.199786,
		-0.248124, -0.513756, 0.821273,
		-0.649879, -0.540426, -0.534412,
		29.733580, 35.954788, 47.771015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121355, 35.637543, 48.440075>,  <30.188496, 36.333088, 48.145103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121355, 35.637543, 48.440075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049675, 35.637680, 48.046551>,  <30.006668, 35.637764, 47.810436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049675, 35.637680, 48.046551>,  <30.121355, 35.637543, 48.440075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049675, 35.637680, 48.046551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623426, -0.773553, -0.113825,
		-0.761070, -0.633732, 0.138405,
		-0.179198, 0.000343, -0.983813,
		29.995916, 35.637783, 47.751408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058964, 34.903400, 48.263779>,  <30.121355, 35.637543, 48.440075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058964, 34.903400, 48.263779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115362, 35.077152, 47.907928>,  <30.149200, 35.181404, 47.694420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115362, 35.077152, 47.907928>,  <30.058964, 34.903400, 48.263779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115362, 35.077152, 47.907928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575494, -0.767145, -0.283364,
		-0.805560, -0.472021, -0.358146,
		0.140996, 0.434378, -0.889627,
		30.157661, 35.207466, 47.641041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009724, 34.375534, 47.857826>,  <30.058964, 34.903400, 48.263779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009724, 34.375534, 47.857826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172987, 34.643707, 47.609978>,  <30.270945, 34.804611, 47.461269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172987, 34.643707, 47.609978>,  <30.009724, 34.375534, 47.857826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172987, 34.643707, 47.609978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519323, -0.728722, -0.446395,
		-0.750807, -0.139582, -0.645605,
		0.408157, 0.670434, -0.619618,
		30.295435, 34.844837, 47.424091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901026, 34.151215, 47.222221>,  <30.009724, 34.375534, 47.857826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901026, 34.151215, 47.222221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223680, 34.386650, 47.200684>,  <30.417273, 34.527912, 47.187759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223680, 34.386650, 47.200684>,  <29.901026, 34.151215, 47.222221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223680, 34.386650, 47.200684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507811, -0.736773, -0.446423,
		-0.302434, 0.332757, -0.893200,
		0.806636, 0.588591, -0.053847,
		30.465672, 34.563229, 47.184528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118923, 33.971035, 46.634563>,  <29.901026, 34.151215, 47.222221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118923, 33.971035, 46.634563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.428587, 34.142841, 46.820549>,  <30.614386, 34.245926, 46.932140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.428587, 34.142841, 46.820549>,  <30.118923, 33.971035, 46.634563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428587, 34.142841, 46.820549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600056, -0.731824, -0.323058,
		0.201514, 0.529104, -0.824282,
		0.774161, 0.429514, 0.464965,
		30.660835, 34.271694, 46.960037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654606, 33.745026, 46.199329>,  <30.118923, 33.971035, 46.634563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654606, 33.745026, 46.199329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847641, 33.859013, 46.530605>,  <30.963463, 33.927406, 46.729370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847641, 33.859013, 46.530605>,  <30.654606, 33.745026, 46.199329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847641, 33.859013, 46.530605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654842, -0.745337, -0.125115,
		0.581628, 0.602713, -0.546302,
		0.482587, 0.284972, 0.828191,
		30.992416, 33.944504, 46.779064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314142, 33.748863, 46.085964>,  <30.654606, 33.745026, 46.199329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314142, 33.748863, 46.085964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344900, 33.709663, 46.482849>,  <31.363354, 33.686142, 46.720982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344900, 33.709663, 46.482849>,  <31.314142, 33.748863, 46.085964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344900, 33.709663, 46.482849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731931, -0.670200, -0.122919,
		0.677027, 0.735681, 0.020197,
		0.076893, -0.098003, 0.992211,
		31.367968, 33.680264, 46.780514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985895, 33.715237, 46.245861>,  <31.314142, 33.748863, 46.085964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985895, 33.715237, 46.245861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.804720, 33.535664, 46.553967>,  <31.696014, 33.427917, 46.738831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.804720, 33.535664, 46.553967>,  <31.985895, 33.715237, 46.245861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804720, 33.535664, 46.553967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659093, -0.750411, -0.049798,
		0.600369, 0.485119, 0.635781,
		-0.452939, -0.448936, 0.770262,
		31.668839, 33.400982, 46.785046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604095, 33.456028, 46.561913>,  <31.985895, 33.715237, 46.245861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604095, 33.456028, 46.561913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302540, 33.253540, 46.729435>,  <32.121609, 33.132050, 46.829948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302540, 33.253540, 46.729435>,  <32.604095, 33.456028, 46.561913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302540, 33.253540, 46.729435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594850, -0.796551, 0.107977,
		0.278943, 0.330531, 0.901632,
		-0.753886, -0.506216, 0.418809,
		32.076374, 33.101677, 46.855076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837490, 33.212448, 47.205647>,  <32.604095, 33.456028, 46.561913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837490, 33.212448, 47.205647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531715, 32.983402, 47.087154>,  <32.348251, 32.845978, 47.016060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531715, 32.983402, 47.087154>,  <32.837490, 33.212448, 47.205647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531715, 32.983402, 47.087154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491071, -0.814882, 0.307923,
		-0.417709, 0.089920, 0.904120,
		-0.764440, -0.572610, -0.296227,
		32.302383, 32.811619, 46.998287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793018, 32.704021, 47.711952>,  <32.837490, 33.212448, 47.205647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793018, 32.704021, 47.711952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610245, 32.537857, 47.397339>,  <32.500580, 32.438156, 47.208569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610245, 32.537857, 47.397339>,  <32.793018, 32.704021, 47.711952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610245, 32.537857, 47.397339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369623, -0.892964, 0.256892,
		-0.809065, -0.173338, 0.561576,
		-0.456938, -0.415414, -0.786536,
		32.473164, 32.413235, 47.161377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633179, 32.127033, 48.001575>,  <32.793018, 32.704021, 47.711952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633179, 32.127033, 48.001575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599739, 32.049339, 47.610622>,  <32.579674, 32.002724, 47.376049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599739, 32.049339, 47.610622>,  <32.633179, 32.127033, 48.001575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599739, 32.049339, 47.610622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236528, -0.956657, 0.169888,
		-0.968021, -0.216976, 0.125921,
		-0.083602, -0.194239, -0.977385,
		32.574657, 31.991068, 47.317406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502804, 31.428883, 48.051918>,  <32.633179, 32.127033, 48.001575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502804, 31.428883, 48.051918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609390, 31.514084, 47.675915>,  <32.673344, 31.565205, 47.450310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609390, 31.514084, 47.675915>,  <32.502804, 31.428883, 48.051918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609390, 31.514084, 47.675915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695372, -0.717823, 0.034465,
		-0.667421, -0.662843, -0.339393,
		0.266469, 0.213002, -0.940013,
		32.689331, 31.577984, 47.393909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359196, 30.743296, 47.631691>,  <32.502804, 31.428883, 48.051918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359196, 30.743296, 47.631691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617245, 30.985569, 47.445374>,  <32.772076, 31.130934, 47.333584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617245, 30.985569, 47.445374>,  <32.359196, 30.743296, 47.631691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617245, 30.985569, 47.445374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639278, -0.761755, -0.105132,
		-0.418495, -0.229946, -0.878628,
		0.645125, 0.605684, -0.465790,
		32.810783, 31.167274, 47.305637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504662, 30.348721, 47.125938>,  <32.359196, 30.743296, 47.631691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504662, 30.348721, 47.125938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794701, 30.623959, 47.136967>,  <32.968723, 30.789103, 47.143585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794701, 30.623959, 47.136967>,  <32.504662, 30.348721, 47.125938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794701, 30.623959, 47.136967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688355, -0.723035, -0.058196,
		-0.020110, 0.061176, -0.997924,
		0.725095, 0.688097, 0.027570,
		33.012230, 30.830387, 47.145237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018982, 30.186668, 46.573055>,  <32.504662, 30.348721, 47.125938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018982, 30.186668, 46.573055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228737, 30.425797, 46.815586>,  <33.354591, 30.569273, 46.961105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.228737, 30.425797, 46.815586>,  <33.018982, 30.186668, 46.573055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228737, 30.425797, 46.815586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771335, -0.635114, -0.040893,
		0.360638, 0.489123, -0.794165,
		0.524387, 0.597820, 0.606324,
		33.386051, 30.605143, 46.997482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615765, 30.365171, 46.212952>,  <33.018982, 30.186668, 46.573055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615765, 30.365171, 46.212952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700245, 30.396070, 46.602707>,  <33.750935, 30.414610, 46.836559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700245, 30.396070, 46.602707>,  <33.615765, 30.365171, 46.212952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700245, 30.396070, 46.602707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807284, -0.575817, -0.129331,
		0.551078, 0.813921, -0.183974,
		0.211201, 0.077248, 0.974385,
		33.763607, 30.419245, 46.895023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388054, 30.399683, 46.266441>,  <33.615765, 30.365171, 46.212952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388054, 30.399683, 46.266441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.265694, 30.286888, 46.630180>,  <34.192276, 30.219212, 46.848423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.265694, 30.286888, 46.630180>,  <34.388054, 30.399683, 46.266441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265694, 30.286888, 46.630180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811616, -0.576541, 0.094238,
		0.497700, 0.766866, 0.405231,
		-0.305900, -0.281989, 0.909344,
		34.173923, 30.202291, 46.902985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979706, 30.352463, 46.715858>,  <34.388054, 30.399683, 46.266441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979706, 30.352463, 46.715858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692585, 30.106133, 46.845791>,  <34.520313, 29.958334, 46.923752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692585, 30.106133, 46.845791>,  <34.979706, 30.352463, 46.715858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692585, 30.106133, 46.845791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618885, -0.778087, -0.107528,
		0.318965, 0.123849, 0.939640,
		-0.717804, -0.615827, 0.324830,
		34.477245, 29.921385, 46.943241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203888, 29.977230, 47.232624>,  <34.979706, 30.352463, 46.715858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203888, 29.977230, 47.232624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923161, 29.755480, 47.053684>,  <34.754723, 29.622429, 46.946320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923161, 29.755480, 47.053684>,  <35.203888, 29.977230, 47.232624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923161, 29.755480, 47.053684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647297, -0.758485, -0.075550,
		-0.297421, -0.342588, 0.891165,
		-0.701817, -0.554378, -0.447345,
		34.712616, 29.589167, 46.919479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240475, 29.224665, 47.307472>,  <35.203888, 29.977230, 47.232624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240475, 29.224665, 47.307472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566338, 29.012068, 47.214642>,  <35.761856, 28.884510, 47.158943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566338, 29.012068, 47.214642>,  <35.240475, 29.224665, 47.307472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566338, 29.012068, 47.214642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442768, 0.828434, -0.343006,
		0.374561, 0.176677, 0.910214,
		0.814654, -0.531490, -0.232073,
		35.810734, 28.852621, 47.145020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939545, 29.497244, 47.595795>,  <35.240475, 29.224665, 47.307472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939545, 29.497244, 47.595795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964684, 29.344538, 47.226948>,  <35.979767, 29.252914, 47.005638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964684, 29.344538, 47.226948>,  <35.939545, 29.497244, 47.595795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964684, 29.344538, 47.226948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392843, 0.858822, -0.328783,
		0.917455, -0.341585, 0.203949,
		0.062848, -0.381764, -0.922121,
		35.983540, 29.230009, 46.950310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602623, 29.524349, 47.417870>,  <35.939545, 29.497244, 47.595795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602623, 29.524349, 47.417870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366287, 29.531281, 47.095230>,  <36.224483, 29.535440, 46.901646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366287, 29.531281, 47.095230>,  <36.602623, 29.524349, 47.417870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366287, 29.531281, 47.095230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319946, 0.922827, -0.214536,
		0.740634, -0.384826, -0.550791,
		-0.590843, 0.017331, -0.806600,
		36.189034, 29.536480, 46.853249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921463, 29.448120, 46.700596>,  <36.602623, 29.524349, 47.417870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921463, 29.448120, 46.700596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597511, 29.682325, 46.714817>,  <36.403141, 29.822849, 46.723351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597511, 29.682325, 46.714817>,  <36.921463, 29.448120, 46.700596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597511, 29.682325, 46.714817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548311, 0.777174, -0.308797,
		-0.208440, -0.230593, -0.950463,
		-0.809882, 0.585515, 0.035558,
		36.354546, 29.857979, 46.725483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925266, 29.661982, 46.069160>,  <36.921463, 29.448120, 46.700596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925266, 29.661982, 46.069160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728706, 29.908962, 46.314854>,  <36.610771, 30.057150, 46.462269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.728706, 29.908962, 46.314854>,  <36.925266, 29.661982, 46.069160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728706, 29.908962, 46.314854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536661, 0.770125, -0.344821,
		-0.685944, 0.160187, -0.709803,
		-0.491402, 0.617452, 0.614229,
		36.581287, 30.094198, 46.499123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705765, 30.276644, 45.711815>,  <36.925266, 29.661982, 46.069160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705765, 30.276644, 45.711815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.738907, 30.381725, 46.096340>,  <36.758793, 30.444775, 46.327057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.738907, 30.381725, 46.096340>,  <36.705765, 30.276644, 45.711815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738907, 30.381725, 46.096340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426118, 0.862660, -0.272473,
		-0.900865, 0.432210, -0.040464,
		0.082859, 0.262704, 0.961312,
		36.763763, 30.460537, 46.384735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615921, 30.920528, 45.659367>,  <36.705765, 30.276644, 45.711815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615921, 30.920528, 45.659367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765560, 30.892258, 46.029243>,  <36.855343, 30.875296, 46.251171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765560, 30.892258, 46.029243>,  <36.615921, 30.920528, 45.659367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765560, 30.892258, 46.029243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296931, 0.953730, -0.047229,
		-0.878568, 0.292238, 0.377776,
		0.374099, -0.070679, 0.924692,
		36.877789, 30.871054, 46.306652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590702, 31.564178, 45.924755>,  <36.615921, 30.920528, 45.659367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590702, 31.564178, 45.924755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838085, 31.403227, 46.194748>,  <36.986515, 31.306656, 46.356743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838085, 31.403227, 46.194748>,  <36.590702, 31.564178, 45.924755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838085, 31.403227, 46.194748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452081, 0.884763, 0.113209,
		-0.642750, 0.235130, 0.729100,
		0.618462, -0.402377, 0.674979,
		37.023624, 31.282515, 46.397243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650986, 32.049999, 46.473801>,  <36.590702, 31.564178, 45.924755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650986, 32.049999, 46.473801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971313, 31.810560, 46.481487>,  <37.163509, 31.666897, 46.486099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971313, 31.810560, 46.481487>,  <36.650986, 32.049999, 46.473801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971313, 31.810560, 46.481487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582429, 0.785857, 0.207856,
		-0.139527, -0.155261, 0.977970,
		0.800817, -0.598600, 0.019219,
		37.211559, 31.630980, 46.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061584, 32.233795, 47.077126>,  <36.650986, 32.049999, 46.473801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061584, 32.233795, 47.077126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316597, 32.061497, 46.821621>,  <37.469604, 31.958118, 46.668316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316597, 32.061497, 46.821621>,  <37.061584, 32.233795, 47.077126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316597, 32.061497, 46.821621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715371, 0.638761, 0.283246,
		0.286011, -0.637530, 0.715370,
		0.637528, -0.430744, -0.638763,
		37.507854, 31.932274, 46.629993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695683, 32.011398, 47.490837>,  <37.061584, 32.233795, 47.077126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695683, 32.011398, 47.490837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768986, 32.071701, 47.102264>,  <37.812969, 32.107883, 46.869118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768986, 32.071701, 47.102264>,  <37.695683, 32.011398, 47.490837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768986, 32.071701, 47.102264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803951, 0.545711, 0.236351,
		0.565755, -0.824301, -0.021196,
		0.183257, 0.150758, -0.971437,
		37.823963, 32.116928, 46.810833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384758, 32.208790, 47.521568>,  <37.695683, 32.011398, 47.490837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384758, 32.208790, 47.521568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288246, 32.294357, 47.142933>,  <38.230339, 32.345695, 46.915752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288246, 32.294357, 47.142933>,  <38.384758, 32.208790, 47.521568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288246, 32.294357, 47.142933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776323, 0.627844, -0.055993,
		0.582331, -0.748366, -0.317551,
		-0.241275, 0.213915, -0.946587,
		38.215862, 32.358532, 46.858955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050732, 32.270504, 47.223011>,  <38.384758, 32.208790, 47.521568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050732, 32.270504, 47.223011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786259, 32.450859, 46.983162>,  <38.627575, 32.559071, 46.839252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786259, 32.450859, 46.983162>,  <39.050732, 32.270504, 47.223011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786259, 32.450859, 46.983162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613266, 0.785203, -0.085792,
		0.432143, -0.424452, -0.795671,
		-0.661178, 0.450884, -0.599622,
		38.587906, 32.586124, 46.803276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373474, 32.367901, 46.593056>,  <39.050732, 32.270504, 47.223011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373474, 32.367901, 46.593056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076195, 32.633865, 46.622845>,  <38.897827, 32.793446, 46.640717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076195, 32.633865, 46.622845>,  <39.373474, 32.367901, 46.593056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076195, 32.633865, 46.622845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664297, 0.746583, -0.036371,
		-0.079782, 0.022440, -0.996560,
		-0.743198, 0.664914, 0.074471,
		38.853233, 32.833340, 46.645187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637180, 32.847115, 46.208672>,  <39.373474, 32.367901, 46.593056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637180, 32.847115, 46.208672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328762, 33.029259, 46.386723>,  <39.143711, 33.138546, 46.493553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328762, 33.029259, 46.386723>,  <39.637180, 32.847115, 46.208672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328762, 33.029259, 46.386723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452540, 0.883627, -0.120045,
		-0.447987, 0.108876, -0.887386,
		-0.771048, 0.455356, 0.445124,
		39.097446, 33.165867, 46.520260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271862, 33.227951, 45.730530>,  <39.637180, 32.847115, 46.208672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271862, 33.227951, 45.730530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193058, 33.382133, 46.091110>,  <39.145775, 33.474644, 46.307457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193058, 33.382133, 46.091110>,  <39.271862, 33.227951, 45.730530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193058, 33.382133, 46.091110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382912, 0.876692, -0.291187,
		-0.902532, 0.287807, -0.320317,
		-0.197013, 0.385459, 0.901447,
		39.133953, 33.497772, 46.361546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369747, 33.931396, 45.280712>,  <39.271862, 33.227951, 45.730530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369747, 33.931396, 45.280712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050644, 33.955406, 45.040718>,  <38.859184, 33.969810, 44.896721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050644, 33.955406, 45.040718>,  <39.369747, 33.931396, 45.280712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050644, 33.955406, 45.040718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558643, 0.448077, -0.697958,
		0.226949, -0.891978, -0.390986,
		-0.797755, 0.060021, -0.599988,
		38.811317, 33.973412, 44.860722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616669, 33.815548, 44.671810>,  <39.369747, 33.931396, 45.280712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616669, 33.815548, 44.671810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.270893, 34.000618, 44.593151>,  <39.063427, 34.111660, 44.545956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.270893, 34.000618, 44.593151>,  <39.616669, 33.815548, 44.671810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270893, 34.000618, 44.593151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409630, 0.421467, -0.809054,
		-0.291450, -0.779933, -0.553860,
		-0.864442, 0.462676, -0.196648,
		39.011559, 34.139420, 44.534157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544472, 33.710144, 44.001701>,  <39.616669, 33.815548, 44.671810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544472, 33.710144, 44.001701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388332, 34.048973, 44.145977>,  <39.294647, 34.252270, 44.232540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388332, 34.048973, 44.145977>,  <39.544472, 33.710144, 44.001701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388332, 34.048973, 44.145977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443955, 0.516395, -0.732284,
		-0.806554, -0.125718, -0.577637,
		-0.390351, 0.847072, 0.360687,
		39.271229, 34.303093, 44.254185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226620, 34.100937, 43.435829>,  <39.544472, 33.710144, 44.001701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226620, 34.100937, 43.435829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333218, 34.374649, 43.707340>,  <39.397175, 34.538876, 43.870247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333218, 34.374649, 43.707340>,  <39.226620, 34.100937, 43.435829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333218, 34.374649, 43.707340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432203, 0.544627, -0.718736,
		-0.861499, 0.484908, -0.150610,
		0.266495, 0.684284, 0.678775,
		39.413166, 34.579933, 43.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058613, 34.819977, 43.269196>,  <39.226620, 34.100937, 43.435829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058613, 34.819977, 43.269196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402981, 34.799999, 43.471710>,  <39.609600, 34.788013, 43.593220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402981, 34.799999, 43.471710>,  <39.058613, 34.819977, 43.269196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402981, 34.799999, 43.471710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426731, 0.612713, -0.665194,
		-0.276988, 0.788726, 0.548807,
		0.860917, -0.049942, 0.506288,
		39.661255, 34.785015, 43.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343407, 35.521652, 43.285053>,  <39.058613, 34.819977, 43.269196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343407, 35.521652, 43.285053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658749, 35.276432, 43.305721>,  <39.847954, 35.129299, 43.318123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658749, 35.276432, 43.305721>,  <39.343407, 35.521652, 43.285053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658749, 35.276432, 43.305721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500764, 0.590620, -0.632775,
		0.357406, 0.524723, 0.772610,
		0.788350, -0.613053, 0.051671,
		39.895252, 35.092518, 43.321224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932899, 35.852642, 43.447140>,  <39.343407, 35.521652, 43.285053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932899, 35.852642, 43.447140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023033, 35.560982, 43.188660>,  <40.077114, 35.385986, 43.033573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023033, 35.560982, 43.188660>,  <39.932899, 35.852642, 43.447140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023033, 35.560982, 43.188660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487720, 0.658587, -0.573056,
		0.843418, -0.186036, 0.504020,
		0.225332, -0.729146, -0.646197,
		40.090633, 35.342239, 42.994801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602818, 35.847160, 43.459442>,  <39.932899, 35.852642, 43.447140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602818, 35.847160, 43.459442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488724, 35.700577, 43.105186>,  <40.420269, 35.612629, 42.892632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488724, 35.700577, 43.105186>,  <40.602818, 35.847160, 43.459442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488724, 35.700577, 43.105186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681396, 0.572303, -0.456256,
		0.674050, -0.733608, 0.086462,
		-0.285230, -0.366454, -0.885638,
		40.403156, 35.590641, 42.839497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203823, 35.565758, 43.087215>,  <40.602818, 35.847160, 43.459442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203823, 35.565758, 43.087215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887081, 35.735458, 42.911499>,  <40.697037, 35.837280, 42.806068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887081, 35.735458, 42.911499>,  <41.203823, 35.565758, 43.087215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887081, 35.735458, 42.911499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606186, 0.633386, -0.481001,
		0.074174, -0.647174, -0.758725,
		-0.791857, 0.424250, -0.439289,
		40.649525, 35.862732, 42.779713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806213, 35.342991, 43.532227>,  <41.203823, 35.565758, 43.087215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806213, 35.342991, 43.532227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.645981, 34.997616, 43.409576>,  <41.549843, 34.790390, 43.335987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.645981, 34.997616, 43.409576>,  <41.806213, 35.342991, 43.532227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645981, 34.997616, 43.409576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856633, -0.234164, -0.459725,
		0.325141, -0.446822, 0.833447,
		-0.400578, -0.863434, -0.306626,
		41.525806, 34.738586, 43.317589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373024, 34.901737, 43.546268>,  <41.806213, 35.342991, 43.532227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373024, 34.901737, 43.546268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.095921, 34.762890, 43.293415>,  <41.929657, 34.679581, 43.141705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.095921, 34.762890, 43.293415>,  <42.373024, 34.901737, 43.546268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095921, 34.762890, 43.293415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718933, -0.401415, -0.567452,
		-0.056773, -0.847568, 0.527641,
		-0.692757, -0.347122, -0.632134,
		41.888092, 34.658752, 43.103775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542652, 34.315113, 43.415585>,  <42.373024, 34.901737, 43.546268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542652, 34.315113, 43.415585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.345676, 34.404274, 43.079060>,  <42.227489, 34.457771, 42.877144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.345676, 34.404274, 43.079060>,  <42.542652, 34.315113, 43.415585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345676, 34.404274, 43.079060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761108, -0.358574, -0.540499,
		-0.422156, -0.906497, 0.006921,
		-0.492443, 0.222908, -0.841316,
		42.197945, 34.471146, 42.826664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641499, 33.760555, 42.849903>,  <42.542652, 34.315113, 43.415585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641499, 33.760555, 42.849903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527538, 34.072754, 42.627319>,  <42.459160, 34.260075, 42.493767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527538, 34.072754, 42.627319>,  <42.641499, 33.760555, 42.849903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527538, 34.072754, 42.627319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569778, -0.328940, -0.753095,
		-0.770832, -0.531620, -0.350995,
		-0.284904, 0.780499, -0.556463,
		42.442066, 34.306904, 42.460381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854733, 33.151516, 42.950649>,  <42.641499, 33.760555, 42.849903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854733, 33.151516, 42.950649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049755, 32.995319, 42.638290>,  <43.166771, 32.901600, 42.450874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049755, 32.995319, 42.638290>,  <42.854733, 33.151516, 42.950649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049755, 32.995319, 42.638290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608568, 0.793325, -0.016742,
		0.626043, -0.467066, 0.624435,
		0.487561, -0.390492, -0.780897,
		43.196022, 32.878170, 42.404022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585232, 33.162609, 43.264133>,  <42.854733, 33.151516, 42.950649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585232, 33.162609, 43.264133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512932, 33.177643, 42.871010>,  <43.469551, 33.186661, 42.635136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512932, 33.177643, 42.871010>,  <43.585232, 33.162609, 43.264133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512932, 33.177643, 42.871010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419843, 0.906599, -0.042549,
		0.889415, -0.420317, -0.179650,
		-0.180755, 0.037581, -0.982810,
		43.458706, 33.188915, 42.576168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224754, 33.349972, 42.915249>,  <43.585232, 33.162609, 43.264133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224754, 33.349972, 42.915249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.927303, 33.457924, 42.670570>,  <43.748833, 33.522697, 42.523762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.927303, 33.457924, 42.670570>,  <44.224754, 33.349972, 42.915249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927303, 33.457924, 42.670570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423986, 0.897772, -0.119333,
		0.516962, -0.348092, -0.782037,
		-0.743630, 0.269882, -0.611701,
		43.704216, 33.538887, 42.487061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608421, 33.982090, 42.894062>,  <44.224754, 33.349972, 42.915249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608421, 33.982090, 42.894062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.986877, 33.877930, 42.971004>,  <45.213951, 33.815434, 43.017170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.986877, 33.877930, 42.971004>,  <44.608421, 33.982090, 42.894062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986877, 33.877930, 42.971004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077447, -0.394861, -0.915471,
		0.314347, 0.881064, -0.353428,
		0.946144, -0.260404, 0.192359,
		45.270721, 33.799809, 43.028713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074039, 34.325821, 42.375202>,  <44.608421, 33.982090, 42.894062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074039, 34.325821, 42.375202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.185745, 33.974442, 42.530296>,  <45.252769, 33.763615, 42.623352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.185745, 33.974442, 42.530296>,  <45.074039, 34.325821, 42.375202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185745, 33.974442, 42.530296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023230, -0.409864, -0.911851,
		0.959934, 0.245639, -0.134867,
		0.279263, -0.878449, 0.387736,
		45.269524, 33.710907, 42.646618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700737, 34.079048, 42.126667>,  <45.074039, 34.325821, 42.375202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700737, 34.079048, 42.126667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458576, 33.774261, 42.218666>,  <45.313282, 33.591389, 42.273865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.458576, 33.774261, 42.218666>,  <45.700737, 34.079048, 42.126667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458576, 33.774261, 42.218666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017179, -0.301407, -0.953341,
		0.795737, -0.573200, 0.195561,
		-0.605399, -0.761968, 0.229994,
		45.276955, 33.545670, 42.287663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980328, 33.555996, 41.770336>,  <45.700737, 34.079048, 42.126667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980328, 33.555996, 41.770336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.595184, 33.492004, 41.857334>,  <45.364098, 33.453609, 41.909531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.595184, 33.492004, 41.857334>,  <45.980328, 33.555996, 41.770336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595184, 33.492004, 41.857334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161948, -0.302328, -0.939346,
		0.216034, -0.939683, 0.265191,
		-0.962862, -0.159984, 0.217492,
		45.306324, 33.444008, 41.922581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761856, 32.805683, 41.592350>,  <45.980328, 33.555996, 41.770336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761856, 32.805683, 41.592350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.489410, 33.096573, 41.558350>,  <45.325943, 33.271107, 41.537949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.489410, 33.096573, 41.558350>,  <45.761856, 32.805683, 41.592350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489410, 33.096573, 41.558350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079773, -0.189107, -0.978711,
		-0.727820, -0.659832, 0.186816,
		-0.681113, 0.727228, -0.084999,
		45.285076, 33.314743, 41.532848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477444, 32.646484, 41.055485>,  <45.761856, 32.805683, 41.592350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477444, 32.646484, 41.055485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.300713, 33.003712, 41.089443>,  <45.194672, 33.218048, 41.109818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.300713, 33.003712, 41.089443>,  <45.477444, 32.646484, 41.055485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300713, 33.003712, 41.089443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347794, -0.083292, -0.933864,
		-0.826937, -0.442135, 0.347406,
		-0.441830, 0.893073, 0.084895,
		45.168163, 33.271633, 41.114910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830730, 32.753761, 40.584034>,  <45.477444, 32.646484, 41.055485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830730, 32.753761, 40.584034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.940826, 33.130833, 40.659512>,  <45.006886, 33.357075, 40.704796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.940826, 33.130833, 40.659512>,  <44.830730, 32.753761, 40.584034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940826, 33.130833, 40.659512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063025, 0.213544, -0.974898,
		-0.959306, 0.256442, 0.118189,
		0.275244, 0.942675, 0.188692,
		45.023399, 33.413635, 40.716118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581867, 33.165573, 40.070995>,  <44.830730, 32.753761, 40.584034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581867, 33.165573, 40.070995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.892078, 33.371700, 40.216873>,  <45.078205, 33.495377, 40.304401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.892078, 33.371700, 40.216873>,  <44.581867, 33.165573, 40.070995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892078, 33.371700, 40.216873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160372, 0.397917, -0.903296,
		-0.610602, 0.759019, 0.225954,
		0.775530, 0.515317, 0.364694,
		45.124737, 33.526295, 40.326283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535229, 33.922340, 39.930244>,  <44.581867, 33.165573, 40.070995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535229, 33.922340, 39.930244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.915176, 33.798374, 39.913746>,  <45.143147, 33.723995, 39.903847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.915176, 33.798374, 39.913746>,  <44.535229, 33.922340, 39.930244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915176, 33.798374, 39.913746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126207, 0.500792, -0.856317,
		0.286043, 0.808183, 0.514800,
		0.949869, -0.309915, -0.041250,
		45.200138, 33.705399, 39.901371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949539, 34.512676, 39.823597>,  <44.535229, 33.922340, 39.930244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949539, 34.512676, 39.823597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.072453, 34.166393, 39.665546>,  <45.146202, 33.958622, 39.570717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.072453, 34.166393, 39.665546>,  <44.949539, 34.512676, 39.823597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072453, 34.166393, 39.665546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455019, 0.498335, -0.737984,
		0.835784, 0.046981, 0.547044,
		0.307282, -0.865711, -0.395123,
		45.164639, 33.906681, 39.547009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439732, 34.724712, 39.456184>,  <44.949539, 34.512676, 39.823597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439732, 34.724712, 39.456184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.415737, 34.346912, 39.326988>,  <45.401340, 34.120232, 39.249470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.415737, 34.346912, 39.326988>,  <45.439732, 34.724712, 39.456184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415737, 34.346912, 39.326988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394549, 0.274788, -0.876825,
		0.916915, -0.180032, 0.356168,
		-0.059986, -0.944500, -0.322988,
		45.397743, 34.063560, 39.230091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103989, 34.513332, 39.224155>,  <45.439732, 34.724712, 39.456184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103989, 34.513332, 39.224155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.822231, 34.300282, 39.036480>,  <45.653175, 34.172451, 38.923874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.822231, 34.300282, 39.036480>,  <46.103989, 34.513332, 39.224155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822231, 34.300282, 39.036480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349497, 0.315069, -0.882374,
		0.617799, -0.785521, -0.035783,
		-0.704397, -0.532624, -0.469187,
		45.610912, 34.140495, 38.895725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387489, 33.977924, 38.682331>,  <46.103989, 34.513332, 39.224155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387489, 33.977924, 38.682331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.024063, 34.122475, 38.598503>,  <45.806007, 34.209206, 38.548206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.024063, 34.122475, 38.598503>,  <46.387489, 33.977924, 38.682331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024063, 34.122475, 38.598503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286192, 0.173020, -0.942422,
		-0.304306, -0.916228, -0.260622,
		-0.908566, 0.361373, -0.209566,
		45.751492, 34.230885, 38.535633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115345, 33.562645, 38.182354>,  <46.387489, 33.977924, 38.682331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115345, 33.562645, 38.182354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.981873, 33.939186, 38.162308>,  <45.901791, 34.165112, 38.150280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.981873, 33.939186, 38.162308>,  <46.115345, 33.562645, 38.182354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981873, 33.939186, 38.162308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449422, 0.112125, -0.886255,
		-0.828661, -0.318246, -0.460479,
		-0.333678, 0.941354, -0.050113,
		45.881767, 34.221592, 38.147274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976582, 33.607712, 37.521900>,  <46.115345, 33.562645, 38.182354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976582, 33.607712, 37.521900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.953266, 33.986004, 37.649769>,  <45.939278, 34.212978, 37.726490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.953266, 33.986004, 37.649769>,  <45.976582, 33.607712, 37.521900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953266, 33.986004, 37.649769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222159, 0.324473, -0.919436,
		-0.973266, 0.017423, -0.229018,
		-0.058290, 0.945735, 0.319669,
		45.935780, 34.269726, 37.745670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446053, 34.101112, 37.137512>,  <45.976582, 33.607712, 37.521900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446053, 34.101112, 37.137512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.796047, 34.226448, 37.285145>,  <46.006042, 34.301647, 37.373722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.796047, 34.226448, 37.285145>,  <45.446053, 34.101112, 37.137512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796047, 34.226448, 37.285145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338830, 0.148209, -0.929101,
		-0.345821, 0.938006, 0.023514,
		0.874987, 0.313336, 0.369078,
		46.058544, 34.320450, 37.395866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715397, 34.774483, 36.990189>,  <45.446053, 34.101112, 37.137512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715397, 34.774483, 36.990189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.056091, 34.581806, 37.072666>,  <46.260509, 34.466202, 37.122154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.056091, 34.581806, 37.072666>,  <45.715397, 34.774483, 36.990189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056091, 34.581806, 37.072666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391944, 0.324541, -0.860844,
		0.347743, 0.814030, 0.465220,
		0.851736, -0.481692, 0.206198,
		46.311611, 34.437298, 37.134525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282867, 35.216923, 36.889389>,  <45.715397, 34.774483, 36.990189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282867, 35.216923, 36.889389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.438881, 34.853527, 36.829357>,  <46.532490, 34.635490, 36.793339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.438881, 34.853527, 36.829357>,  <46.282867, 35.216923, 36.889389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438881, 34.853527, 36.829357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511935, 0.349420, -0.784747,
		0.765373, 0.229249, 0.601372,
		0.390034, -0.908488, -0.150076,
		46.555889, 34.580982, 36.784336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977673, 35.352062, 36.959663>,  <46.282867, 35.216923, 36.889389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977673, 35.352062, 36.959663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.893047, 35.031372, 36.736065>,  <46.842274, 34.838959, 36.601906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.893047, 35.031372, 36.736065>,  <46.977673, 35.352062, 36.959663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893047, 35.031372, 36.736065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550209, 0.375006, -0.746083,
		0.807782, -0.465406, 0.361781,
		-0.211562, -0.801728, -0.558994,
		46.829578, 34.790855, 36.568367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551437, 35.309986, 36.634262>,  <46.977673, 35.352062, 36.959663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551437, 35.309986, 36.634262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.315536, 35.043865, 36.451145>,  <47.173996, 34.884193, 36.341274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.315536, 35.043865, 36.451145>,  <47.551437, 35.309986, 36.634262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315536, 35.043865, 36.451145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462403, 0.186562, -0.866821,
		0.662102, -0.722891, 0.197611,
		-0.589750, -0.665300, -0.457790,
		47.138611, 34.844276, 36.313808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.952564, 34.723808, 36.392349>,  <47.551437, 35.309986, 36.634262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.952564, 34.723808, 36.392349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.627220, 34.832253, 36.186462>,  <47.432014, 34.897320, 36.062931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.627220, 34.832253, 36.186462>,  <47.952564, 34.723808, 36.392349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627220, 34.832253, 36.186462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577820, 0.273758, -0.768883,
		-0.067546, -0.922797, -0.379319,
		-0.813364, 0.271113, -0.514719,
		47.383209, 34.913586, 36.032047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.399319, 34.260765, 35.978844>,  <47.952564, 34.723808, 36.392349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.399319, 34.260765, 35.978844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.582680, 34.517651, 36.224583>,  <48.692696, 34.671783, 36.372025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.582680, 34.517651, 36.224583>,  <48.399319, 34.260765, 35.978844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.582680, 34.517651, 36.224583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769932, -0.632246, 0.086427,
		0.443924, 0.433388, -0.784287,
		0.458406, 0.642215, 0.614348,
		48.720203, 34.710316, 36.408886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.404312, 34.938755, 35.858608>,  <48.399319, 34.260765, 35.978844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.404312, 34.938755, 35.858608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.050865, 34.916553, 35.672646>,  <47.838799, 34.903233, 35.561069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.050865, 34.916553, 35.672646>,  <48.404312, 34.938755, 35.858608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.050865, 34.916553, 35.672646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468168, -0.091788, -0.878859,
		0.006111, -0.994230, 0.107092,
		-0.883618, -0.055508, -0.464906,
		47.785778, 34.899902, 35.533173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.542900, 35.353977, 35.270103>,  <48.404312, 34.938755, 35.858608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.542900, 35.353977, 35.270103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.372349, 35.085522, 35.027527>,  <48.270020, 34.924450, 34.881981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.372349, 35.085522, 35.027527>,  <48.542900, 35.353977, 35.270103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.372349, 35.085522, 35.027527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903484, 0.283529, 0.321448,
		-0.043792, 0.684971, -0.727254,
		-0.426380, -0.671138, -0.606443,
		48.244434, 34.884182, 34.845592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.019333, 35.645786, 34.935863>,  <48.542900, 35.353977, 35.270103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.019333, 35.645786, 34.935863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.933380, 35.255318, 34.947964>,  <47.881809, 35.021038, 34.955223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.933380, 35.255318, 34.947964>,  <48.019333, 35.645786, 34.935863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.933380, 35.255318, 34.947964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915170, 0.212075, 0.342765,
		-0.341014, 0.045966, -0.938934,
		-0.214880, -0.976172, 0.030254,
		47.868916, 34.962467, 34.957039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.559694, 33.593651, 55.512646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.858513, 33.850403, 55.581818>,  <32.037804, 34.004456, 55.623322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.858513, 33.850403, 55.581818>,  <31.559694, 33.593651, 55.512646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858513, 33.850403, 55.581818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636986, -0.616763, -0.462442,
		-0.190177, 0.455620, -0.869622,
		0.747048, 0.641884, 0.172929,
		32.082626, 34.042969, 55.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793814, 33.801399, 54.953384>,  <31.559694, 33.593651, 55.512646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793814, 33.801399, 54.953384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.108727, 33.849400, 55.195305>,  <32.297672, 33.878201, 55.340458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.108727, 33.849400, 55.195305>,  <31.793814, 33.801399, 54.953384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108727, 33.849400, 55.195305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527923, -0.637965, -0.560623,
		0.318567, 0.760658, -0.565610,
		0.787282, 0.120002, 0.604803,
		32.344910, 33.885399, 55.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330395, 33.594471, 54.555134>,  <31.793814, 33.801399, 54.953384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330395, 33.594471, 54.555134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.509995, 33.616589, 54.911861>,  <32.617756, 33.629860, 55.125896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.509995, 33.616589, 54.911861>,  <32.330395, 33.594471, 54.555134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509995, 33.616589, 54.911861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772750, -0.525135, -0.356498,
		0.448615, 0.849221, -0.278511,
		0.449001, 0.055289, 0.891819,
		32.644695, 33.633175, 55.179405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935760, 33.952122, 54.461952>,  <32.330395, 33.594471, 54.555134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935760, 33.952122, 54.461952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009514, 33.732006, 54.787697>,  <33.053764, 33.599937, 54.983143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009514, 33.732006, 54.787697>,  <32.935760, 33.952122, 54.461952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009514, 33.732006, 54.787697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729588, -0.478548, -0.488562,
		0.658562, 0.684229, 0.313252,
		0.184382, -0.550294, 0.814359,
		33.064827, 33.566917, 55.032005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702816, 33.947803, 54.618767>,  <32.935760, 33.952122, 54.461952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702816, 33.947803, 54.618767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.539909, 33.636292, 54.809612>,  <33.442165, 33.449387, 54.924118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.539909, 33.636292, 54.809612>,  <33.702816, 33.947803, 54.618767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539909, 33.636292, 54.809612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709132, -0.598854, -0.372164,
		0.575555, 0.186766, 0.796150,
		-0.407270, -0.778776, 0.477115,
		33.417728, 33.402660, 54.952747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312973, 33.679646, 54.845745>,  <33.702816, 33.947803, 54.618767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312973, 33.679646, 54.845745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015221, 33.412796, 54.857391>,  <33.836571, 33.252686, 54.864380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015221, 33.412796, 54.857391>,  <34.312973, 33.679646, 54.845745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015221, 33.412796, 54.857391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600976, -0.688303, -0.406286,
		0.291079, -0.284935, 0.913283,
		-0.744380, -0.667122, 0.029111,
		33.791908, 33.212658, 54.866123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512592, 33.104271, 55.309811>,  <34.312973, 33.679646, 54.845745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512592, 33.104271, 55.309811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.246487, 32.980579, 55.037987>,  <34.086823, 32.906364, 54.874893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.246487, 32.980579, 55.037987>,  <34.512592, 33.104271, 55.309811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246487, 32.980579, 55.037987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693584, -0.592861, -0.409216,
		-0.276339, -0.743566, 0.608889,
		-0.665265, -0.309233, -0.679556,
		34.046906, 32.887810, 54.834122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883263, 32.585308, 55.055183>,  <34.512592, 33.104271, 55.309811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883263, 32.585308, 55.055183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.575306, 32.596798, 54.800171>,  <34.390533, 32.603691, 54.647163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.575306, 32.596798, 54.800171>,  <34.883263, 32.585308, 55.055183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575306, 32.596798, 54.800171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515927, -0.559974, -0.648265,
		-0.375621, -0.828012, 0.416300,
		-0.769888, 0.028722, -0.637532,
		34.344341, 32.605415, 54.608910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910442, 31.937693, 54.828854>,  <34.883263, 32.585308, 55.055183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910442, 31.937693, 54.828854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.686138, 32.132256, 54.560837>,  <34.551556, 32.248993, 54.400028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.686138, 32.132256, 54.560837>,  <34.910442, 31.937693, 54.828854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686138, 32.132256, 54.560837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496708, -0.449833, -0.742247,
		-0.662442, -0.749038, 0.010646,
		-0.560760, 0.486408, -0.670041,
		34.517910, 32.278179, 54.359825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667027, 31.407221, 54.354664>,  <34.910442, 31.937693, 54.828854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667027, 31.407221, 54.354664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626591, 31.749655, 54.151924>,  <34.602329, 31.955114, 54.030281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.626591, 31.749655, 54.151924>,  <34.667027, 31.407221, 54.354664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626591, 31.749655, 54.151924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363246, -0.442529, -0.819891,
		-0.926193, -0.266998, -0.266232,
		-0.101094, 0.856084, -0.506853,
		34.596264, 32.006481, 53.999866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374104, 31.192650, 53.752811>,  <34.667027, 31.407221, 54.354664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374104, 31.192650, 53.752811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554325, 31.540009, 53.669971>,  <34.662457, 31.748425, 53.620266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.554325, 31.540009, 53.669971>,  <34.374104, 31.192650, 53.752811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554325, 31.540009, 53.669971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392203, -0.400932, -0.827907,
		-0.801986, 0.291788, -0.521228,
		0.450550, 0.868397, -0.207102,
		34.689491, 31.800528, 53.607841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227070, 31.400352, 53.029560>,  <34.374104, 31.192650, 53.752811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227070, 31.400352, 53.029560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563442, 31.594894, 53.124466>,  <34.765266, 31.711618, 53.181408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.563442, 31.594894, 53.124466>,  <34.227070, 31.400352, 53.029560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563442, 31.594894, 53.124466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400875, -0.265368, -0.876858,
		-0.363501, 0.832490, -0.418123,
		0.840932, 0.486353, 0.237263,
		34.815723, 31.740801, 53.195644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394211, 31.836838, 52.508045>,  <34.227070, 31.400352, 53.029560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394211, 31.836838, 52.508045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.734989, 31.762362, 52.703812>,  <34.939457, 31.717676, 52.821270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.734989, 31.762362, 52.703812>,  <34.394211, 31.836838, 52.508045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734989, 31.762362, 52.703812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442905, -0.242373, -0.863186,
		0.279339, 0.952149, -0.124023,
		0.851942, -0.186191, 0.489416,
		34.990570, 31.706505, 52.850636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867298, 32.057217, 52.017658>,  <34.394211, 31.836838, 52.508045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867298, 32.057217, 52.017658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.079029, 31.852268, 52.288151>,  <35.206070, 31.729300, 52.450447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.079029, 31.852268, 52.288151>,  <34.867298, 32.057217, 52.017658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079029, 31.852268, 52.288151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571150, -0.374187, -0.730597,
		0.627373, 0.772954, 0.094573,
		0.529330, -0.512373, 0.676228,
		35.237827, 31.698557, 52.491020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529415, 32.064350, 51.756729>,  <34.867298, 32.057217, 52.017658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529415, 32.064350, 51.756729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.510658, 31.752523, 52.006557>,  <35.499405, 31.565428, 52.156452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.510658, 31.752523, 52.006557>,  <35.529415, 32.064350, 51.756729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510658, 31.752523, 52.006557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614829, -0.515306, -0.597031,
		0.787266, 0.356007, 0.503460,
		-0.046889, -0.779563, 0.624566,
		35.496593, 31.518654, 52.193928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230515, 31.725279, 51.794956>,  <35.529415, 32.064350, 51.756729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230515, 31.725279, 51.794956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.013947, 31.409752, 51.911327>,  <35.884007, 31.220436, 51.981148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.013947, 31.409752, 51.911327>,  <36.230515, 31.725279, 51.794956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013947, 31.409752, 51.911327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596307, -0.604213, -0.528530,
		0.592695, -0.112674, 0.797507,
		-0.541416, -0.788816, 0.290926,
		35.851521, 31.173107, 51.998604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646793, 31.145975, 51.934948>,  <36.230515, 31.725279, 51.794956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646793, 31.145975, 51.934948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.292004, 30.966488, 51.891247>,  <36.079132, 30.858795, 51.865028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.292004, 30.966488, 51.891247>,  <36.646793, 31.145975, 51.934948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292004, 30.966488, 51.891247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396897, -0.619684, -0.677100,
		0.236127, -0.643928, 0.727736,
		-0.886971, -0.448718, -0.109249,
		36.025913, 30.831873, 51.858471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815357, 30.410925, 52.043613>,  <36.646793, 31.145975, 51.934948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815357, 30.410925, 52.043613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475746, 30.414373, 51.832298>,  <36.271980, 30.416443, 51.705509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475746, 30.414373, 51.832298>,  <36.815357, 30.410925, 52.043613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475746, 30.414373, 51.832298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315381, -0.793931, -0.519816,
		-0.423902, -0.607947, 0.671347,
		-0.849024, 0.008621, -0.528284,
		36.221039, 30.416960, 51.673813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446712, 29.840887, 52.069847>,  <36.815357, 30.410925, 52.043613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446712, 29.840887, 52.069847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.316635, 29.994877, 51.724354>,  <36.238586, 30.087271, 51.517056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.316635, 29.994877, 51.724354>,  <36.446712, 29.840887, 52.069847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316635, 29.994877, 51.724354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321112, -0.814156, -0.483774,
		-0.889457, -0.434678, 0.141141,
		-0.325196, 0.384974, -0.863737,
		36.219074, 30.110369, 51.465233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338856, 29.303598, 51.655201>,  <36.446712, 29.840887, 52.069847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338856, 29.303598, 51.655201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283394, 29.593533, 51.385273>,  <36.250114, 29.767494, 51.223316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283394, 29.593533, 51.385273>,  <36.338856, 29.303598, 51.655201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283394, 29.593533, 51.385273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130043, -0.662179, -0.737975,
		-0.981765, -0.190082, -0.002443,
		-0.138659, 0.724836, -0.674823,
		36.241795, 29.810984, 51.182827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861904, 29.008631, 51.157768>,  <36.338856, 29.303598, 51.655201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861904, 29.008631, 51.157768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059460, 29.313089, 50.989609>,  <36.177994, 29.495764, 50.888714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059460, 29.313089, 50.989609>,  <35.861904, 29.008631, 51.157768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059460, 29.313089, 50.989609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053821, -0.509312, -0.858897,
		-0.867859, 0.401571, -0.292508,
		0.493886, 0.761145, -0.420398,
		36.207626, 29.541433, 50.863491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509571, 29.043854, 50.466316>,  <35.861904, 29.008631, 51.157768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509571, 29.043854, 50.466316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.885323, 29.171701, 50.416656>,  <36.110775, 29.248411, 50.386860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.885323, 29.171701, 50.416656>,  <35.509571, 29.043854, 50.466316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885323, 29.171701, 50.416656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091803, -0.583294, -0.807056,
		-0.330367, 0.746733, -0.577276,
		0.939377, 0.319620, -0.124149,
		36.167137, 29.267588, 50.379414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921593, 28.795418, 50.022865>,  <35.509571, 29.043854, 50.466316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921593, 28.795418, 50.022865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.718948, 28.897902, 49.693573>,  <34.597363, 28.959391, 49.495998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.718948, 28.897902, 49.693573>,  <34.921593, 28.795418, 50.022865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718948, 28.897902, 49.693573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784075, 0.260191, 0.563496,
		0.358567, 0.930945, 0.069070,
		-0.506612, 0.256207, -0.823227,
		34.566963, 28.974764, 49.446606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591553, 29.392225, 50.233337>,  <34.921593, 28.795418, 50.022865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591553, 29.392225, 50.233337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.382412, 29.268284, 49.915691>,  <34.256927, 29.193920, 49.725101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.382412, 29.268284, 49.915691>,  <34.591553, 29.392225, 50.233337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382412, 29.268284, 49.915691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852029, 0.218414, 0.475755,
		0.026032, 0.925358, -0.378200,
		-0.522848, -0.309852, -0.794117,
		34.225559, 29.175327, 49.677456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114738, 30.010843, 50.018093>,  <34.591553, 29.392225, 50.233337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114738, 30.010843, 50.018093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.969563, 29.662809, 49.884689>,  <33.882458, 29.453989, 49.804649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.969563, 29.662809, 49.884689>,  <34.114738, 30.010843, 50.018093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969563, 29.662809, 49.884689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797446, 0.104875, 0.594206,
		-0.482034, 0.481613, -0.731910,
		-0.362937, -0.870086, -0.333507,
		33.860683, 29.401783, 49.784637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495346, 30.104397, 49.799400>,  <34.114738, 30.010843, 50.018093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495346, 30.104397, 49.799400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.481468, 29.708887, 49.857529>,  <33.473141, 29.471581, 49.892406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.481468, 29.708887, 49.857529>,  <33.495346, 30.104397, 49.799400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481468, 29.708887, 49.857529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885476, 0.097832, 0.454270,
		-0.463389, -0.112917, -0.878932,
		-0.034692, -0.988776, 0.145319,
		33.471062, 29.412254, 49.901123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881039, 30.002563, 49.605862>,  <33.495346, 30.104397, 49.799400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881039, 30.002563, 49.605862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.982018, 29.691019, 49.835522>,  <33.042606, 29.504093, 49.973316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.982018, 29.691019, 49.835522>,  <32.881039, 30.002563, 49.605862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982018, 29.691019, 49.835522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838205, 0.120411, 0.531896,
		-0.483407, -0.615530, -0.622447,
		0.252449, -0.778861, 0.574148,
		33.057751, 29.457361, 50.007767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302532, 29.555372, 49.646168>,  <32.881039, 30.002563, 49.605862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302532, 29.555372, 49.646168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.525719, 29.479359, 49.969292>,  <32.659630, 29.433750, 50.163166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.525719, 29.479359, 49.969292>,  <32.302532, 29.555372, 49.646168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525719, 29.479359, 49.969292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805987, 0.107727, 0.582048,
		-0.197632, -0.975850, -0.093056,
		0.557967, -0.190034, 0.807812,
		32.693108, 29.422350, 50.211636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831179, 29.200895, 50.083904>,  <32.302532, 29.555372, 49.646168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831179, 29.200895, 50.083904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.137405, 29.326979, 50.308243>,  <32.321140, 29.402628, 50.442848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.137405, 29.326979, 50.308243>,  <31.831179, 29.200895, 50.083904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137405, 29.326979, 50.308243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636628, 0.245417, 0.731078,
		0.092798, -0.916742, 0.388552,
		0.765567, 0.315206, 0.560849,
		32.367077, 29.421541, 50.476498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630861, 29.019873, 50.753155>,  <31.831179, 29.200895, 50.083904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630861, 29.019873, 50.753155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.902370, 29.310589, 50.795200>,  <32.065277, 29.485018, 50.820427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.902370, 29.310589, 50.795200>,  <31.630861, 29.019873, 50.753155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902370, 29.310589, 50.795200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425576, 0.272665, 0.862867,
		0.598461, -0.630422, 0.494381,
		0.678771, 0.726788, 0.105114,
		32.106003, 29.528625, 50.826733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602432, 29.155439, 51.428673>,  <31.630861, 29.019873, 50.753155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602432, 29.155439, 51.428673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.825335, 29.471249, 51.325817>,  <31.959076, 29.660734, 51.264103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.825335, 29.471249, 51.325817>,  <31.602432, 29.155439, 51.428673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825335, 29.471249, 51.325817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235222, 0.447093, 0.863006,
		0.796326, -0.420431, 0.434858,
		0.557257, 0.789522, -0.257137,
		31.992512, 29.708105, 51.248676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965261, 29.359100, 52.010582>,  <31.602432, 29.155439, 51.428673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965261, 29.359100, 52.010582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.970493, 29.697725, 51.797729>,  <31.973633, 29.900900, 51.670017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.970493, 29.697725, 51.797729>,  <31.965261, 29.359100, 52.010582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970493, 29.697725, 51.797729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166122, 0.526622, 0.833710,
		0.986019, 0.077494, 0.147520,
		0.013080, 0.846560, -0.532132,
		31.974417, 29.951693, 51.638088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439854, 29.838427, 52.434494>,  <31.965261, 29.359100, 52.010582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439854, 29.838427, 52.434494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.226799, 30.047443, 52.168186>,  <32.098969, 30.172853, 52.008400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.226799, 30.047443, 52.168186>,  <32.439854, 29.838427, 52.434494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226799, 30.047443, 52.168186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409505, 0.529312, 0.743058,
		0.740680, 0.668414, -0.067945,
		-0.532634, 0.522544, -0.665769,
		32.067009, 30.204206, 51.968456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475510, 30.617054, 52.619946>,  <32.439854, 29.838427, 52.434494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475510, 30.617054, 52.619946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.151093, 30.567781, 52.391197>,  <31.956444, 30.538218, 52.253948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.151093, 30.567781, 52.391197>,  <32.475510, 30.617054, 52.619946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151093, 30.567781, 52.391197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475394, 0.708470, 0.521604,
		0.340904, 0.694907, -0.633158,
		-0.811040, -0.123182, -0.571875,
		31.907780, 30.530827, 52.219635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285992, 31.283346, 52.413963>,  <32.475510, 30.617054, 52.619946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285992, 31.283346, 52.413963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.952974, 31.070061, 52.353901>,  <31.753162, 30.942089, 52.317863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.952974, 31.070061, 52.353901>,  <32.285992, 31.283346, 52.413963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952974, 31.070061, 52.353901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553187, 0.786019, 0.275966,
		-0.029127, 0.312817, -0.949367,
		-0.832547, -0.533216, -0.150152,
		31.703211, 30.910095, 52.308857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801035, 31.637312, 51.983490>,  <32.285992, 31.283346, 52.413963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801035, 31.637312, 51.983490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.576649, 31.378746, 52.190357>,  <31.442017, 31.223606, 52.314480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.576649, 31.378746, 52.190357>,  <31.801035, 31.637312, 51.983490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576649, 31.378746, 52.190357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606252, 0.746187, 0.275069,
		-0.563716, -0.159233, -0.810475,
		-0.560966, -0.646413, 0.517172,
		31.408360, 31.184822, 52.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210342, 31.719000, 51.828506>,  <31.801035, 31.637312, 51.983490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210342, 31.719000, 51.828506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.145058, 31.547380, 52.183872>,  <31.105886, 31.444408, 52.397091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.145058, 31.547380, 52.183872>,  <31.210342, 31.719000, 51.828506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145058, 31.547380, 52.183872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477620, 0.822294, 0.309371,
		-0.863273, -0.373831, -0.339132,
		-0.163214, -0.429048, 0.888414,
		31.096094, 31.418667, 52.450397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470274, 31.800661, 51.942417>,  <31.210342, 31.719000, 51.828506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470274, 31.800661, 51.942417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.600752, 31.702082, 52.307461>,  <30.679039, 31.642935, 52.526489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.600752, 31.702082, 52.307461>,  <30.470274, 31.800661, 51.942417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600752, 31.702082, 52.307461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500625, 0.773880, 0.387923,
		-0.801855, -0.583415, 0.129058,
		0.326196, -0.246448, 0.912612,
		30.698610, 31.628147, 52.581245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920355, 31.713423, 52.435669>,  <30.470274, 31.800661, 51.942417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920355, 31.713423, 52.435669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.230047, 31.811218, 52.669178>,  <30.415863, 31.869896, 52.809284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.230047, 31.811218, 52.669178>,  <29.920355, 31.713423, 52.435669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230047, 31.811218, 52.669178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533013, 0.749228, 0.393133,
		-0.341263, -0.615535, 0.710392,
		0.774232, 0.244486, 0.583772,
		30.462317, 31.884563, 52.844311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732264, 31.602346, 53.153305>,  <29.920355, 31.713423, 52.435669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732264, 31.602346, 53.153305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.044012, 31.851727, 53.178242>,  <30.231062, 32.001354, 53.193203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.044012, 31.851727, 53.178242>,  <29.732264, 31.602346, 53.153305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044012, 31.851727, 53.178242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535007, 0.610397, 0.584109,
		0.326109, -0.488593, 0.809277,
		0.779372, 0.623452, 0.062344,
		30.277824, 32.038761, 53.196945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.023531, 32.162426, 54.193760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235352, 32.356392, 53.915356>,  <30.362444, 32.472771, 53.748314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235352, 32.356392, 53.915356>,  <30.023531, 32.162426, 54.193760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235352, 32.356392, 53.915356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188808, 0.867297, 0.460595,
		0.826999, -0.112496, 0.550833,
		0.529551, 0.484913, -0.696013,
		30.394217, 32.501865, 53.706551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589102, 32.516823, 54.558430>,  <30.023531, 32.162426, 54.193760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589102, 32.516823, 54.558430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492455, 32.706078, 54.219547>,  <30.434465, 32.819630, 54.016216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492455, 32.706078, 54.219547>,  <30.589102, 32.516823, 54.558430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492455, 32.706078, 54.219547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003106, 0.873447, 0.486909,
		0.970366, 0.115015, -0.212510,
		-0.241618, 0.473140, -0.847207,
		30.419970, 32.848019, 53.965385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015697, 33.128304, 54.559433>,  <30.589102, 32.516823, 54.558430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015697, 33.128304, 54.559433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723625, 33.216228, 54.300659>,  <30.548382, 33.268982, 54.145397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723625, 33.216228, 54.300659>,  <31.015697, 33.128304, 54.559433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723625, 33.216228, 54.300659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170182, 0.858486, 0.483777,
		0.661722, 0.463340, -0.589441,
		-0.730179, 0.219814, -0.646931,
		30.504572, 33.282173, 54.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105185, 33.874077, 54.331783>,  <31.015697, 33.128304, 54.559433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105185, 33.874077, 54.331783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731186, 33.820385, 54.200474>,  <30.506786, 33.788170, 54.121689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731186, 33.820385, 54.200474>,  <31.105185, 33.874077, 54.331783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731186, 33.820385, 54.200474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244960, 0.913773, 0.324059,
		0.256464, 0.383407, -0.887257,
		-0.934998, -0.134233, -0.328269,
		30.450687, 33.780117, 54.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854063, 34.457767, 54.145531>,  <31.105185, 33.874077, 54.331783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854063, 34.457767, 54.145531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507597, 34.261120, 54.181450>,  <30.299717, 34.143131, 54.202999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507597, 34.261120, 54.181450>,  <30.854063, 34.457767, 54.145531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507597, 34.261120, 54.181450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422600, 0.816430, 0.393511,
		-0.266770, 0.302898, -0.914924,
		-0.866166, -0.491623, 0.089794,
		30.247747, 34.113632, 54.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454287, 34.920193, 53.890266>,  <30.854063, 34.457767, 54.145531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454287, 34.920193, 53.890266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240959, 34.682327, 54.130917>,  <30.112963, 34.539608, 54.275307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240959, 34.682327, 54.130917>,  <30.454287, 34.920193, 53.890266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240959, 34.682327, 54.130917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461138, 0.800619, 0.382573,
		-0.709172, -0.073399, -0.701204,
		-0.533317, -0.594662, 0.601623,
		30.080965, 34.503929, 54.311405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790590, 35.118645, 53.881828>,  <30.454287, 34.920193, 53.890266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790590, 35.118645, 53.881828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732508, 34.874512, 54.193317>,  <29.697659, 34.728031, 54.380211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732508, 34.874512, 54.193317>,  <29.790590, 35.118645, 53.881828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732508, 34.874512, 54.193317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630217, 0.663795, 0.402743,
		-0.762720, -0.432283, -0.481030,
		-0.145207, -0.610334, 0.778722,
		29.688946, 34.691410, 54.426933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157652, 35.067638, 53.899132>,  <29.790590, 35.118645, 53.881828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157652, 35.067638, 53.899132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311678, 35.017426, 54.264854>,  <29.404095, 34.987297, 54.484287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311678, 35.017426, 54.264854>,  <29.157652, 35.067638, 53.899132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311678, 35.017426, 54.264854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618580, 0.700118, 0.356643,
		-0.684896, -0.702906, 0.191940,
		0.385067, -0.125534, 0.914311,
		29.427198, 34.979767, 54.539146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592846, 34.893734, 54.328545>,  <29.157652, 35.067638, 53.899132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592846, 34.893734, 54.328545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879948, 35.009735, 54.581757>,  <29.052208, 35.079334, 54.733685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879948, 35.009735, 54.581757>,  <28.592846, 34.893734, 54.328545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879948, 35.009735, 54.581757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634692, 0.646372, 0.423520,
		-0.286352, -0.705763, 0.647997,
		0.717752, 0.290003, 0.633033,
		29.095274, 35.096737, 54.771667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390665, 34.800446, 55.110661>,  <28.592846, 34.893734, 54.328545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390665, 34.800446, 55.110661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655470, 35.091530, 55.038902>,  <28.814352, 35.266182, 54.995850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655470, 35.091530, 55.038902>,  <28.390665, 34.800446, 55.110661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655470, 35.091530, 55.038902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694417, 0.685592, 0.218516,
		0.282005, -0.020087, 0.959203,
		0.662011, 0.727709, -0.179391,
		28.854073, 35.309841, 54.985085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401588, 35.186703, 55.730194>,  <28.390665, 34.800446, 55.110661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401588, 35.186703, 55.730194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554020, 35.426060, 55.448284>,  <28.645479, 35.569675, 55.279140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554020, 35.426060, 55.448284>,  <28.401588, 35.186703, 55.730194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554020, 35.426060, 55.448284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690122, 0.691373, 0.213858,
		0.615231, 0.404881, 0.676433,
		0.381080, 0.598393, -0.704771,
		28.668344, 35.605579, 55.236851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324245, 35.863045, 56.080700>,  <28.401588, 35.186703, 55.730194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324245, 35.863045, 56.080700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393276, 35.923443, 55.691357>,  <28.434694, 35.959682, 55.457752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393276, 35.923443, 55.691357>,  <28.324245, 35.863045, 56.080700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393276, 35.923443, 55.691357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607124, 0.794453, 0.015599,
		0.775640, 0.588255, 0.228776,
		0.172576, 0.150994, -0.973354,
		28.445049, 35.968742, 55.399349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443827, 36.627529, 56.055550>,  <28.324245, 35.863045, 56.080700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443827, 36.627529, 56.055550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359108, 36.499264, 55.686264>,  <28.308277, 36.422302, 55.464695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359108, 36.499264, 55.686264>,  <28.443827, 36.627529, 56.055550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359108, 36.499264, 55.686264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557958, 0.815235, -0.155160,
		0.802388, 0.482250, -0.351580,
		-0.211795, -0.320665, -0.923210,
		28.295568, 36.403065, 55.409302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616577, 37.154541, 55.560043>,  <28.443827, 36.627529, 56.055550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616577, 37.154541, 55.560043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323458, 36.930546, 55.405422>,  <28.147587, 36.796150, 55.312649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323458, 36.930546, 55.405422>,  <28.616577, 37.154541, 55.560043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323458, 36.930546, 55.405422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602400, 0.798069, -0.014150,
		0.316421, 0.222491, -0.922158,
		-0.732798, -0.559985, -0.386554,
		28.103619, 36.762550, 55.289455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216562, 37.626328, 55.160507>,  <28.616577, 37.154541, 55.560043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216562, 37.626328, 55.160507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962040, 37.320095, 55.198441>,  <27.809326, 37.136356, 55.221199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962040, 37.320095, 55.198441>,  <28.216562, 37.626328, 55.160507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962040, 37.320095, 55.198441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770420, 0.636958, -0.027177,
		-0.039599, -0.090355, -0.995122,
		-0.636307, -0.765586, 0.094834,
		27.771149, 37.090420, 55.226891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719276, 37.958248, 54.713394>,  <28.216562, 37.626328, 55.160507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719276, 37.958248, 54.713394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559500, 37.660835, 54.927914>,  <27.463634, 37.482388, 55.056625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559500, 37.660835, 54.927914>,  <27.719276, 37.958248, 54.713394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559500, 37.660835, 54.927914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868651, 0.493975, 0.037868,
		-0.293072, -0.450727, -0.843181,
		-0.399442, -0.743528, 0.536294,
		27.439667, 37.437778, 55.088802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157021, 37.773247, 54.336578>,  <27.719276, 37.958248, 54.713394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157021, 37.773247, 54.336578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081221, 37.638630, 54.705540>,  <27.035740, 37.557861, 54.926918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081221, 37.638630, 54.705540>,  <27.157021, 37.773247, 54.336578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081221, 37.638630, 54.705540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840768, 0.540837, 0.024596,
		-0.507147, -0.770866, -0.385444,
		-0.189502, -0.336543, 0.922403,
		27.024370, 37.537666, 54.982262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469957, 37.690914, 54.339958>,  <27.157021, 37.773247, 54.336578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469957, 37.690914, 54.339958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603182, 37.727127, 54.715378>,  <26.683117, 37.748856, 54.940628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603182, 37.727127, 54.715378>,  <26.469957, 37.690914, 54.339958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603182, 37.727127, 54.715378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794470, 0.563032, 0.227623,
		-0.507825, -0.821461, 0.259453,
		0.333063, 0.090535, 0.938547,
		26.703100, 37.754288, 54.996941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761698, 37.511028, 54.763073>,  <26.469957, 37.690914, 54.339958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761698, 37.511028, 54.763073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011013, 37.729851, 54.986588>,  <26.160603, 37.861145, 55.120697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011013, 37.729851, 54.986588>,  <25.761698, 37.511028, 54.763073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011013, 37.729851, 54.986588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722919, 0.675546, 0.145002,
		-0.298163, -0.494336, 0.816536,
		0.623288, 0.547055, 0.558787,
		26.198000, 37.893967, 55.154224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360689, 37.659222, 55.332108>,  <25.761698, 37.511028, 54.763073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360689, 37.659222, 55.332108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645870, 37.939705, 55.332233>,  <25.816978, 38.107994, 55.332310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645870, 37.939705, 55.332233>,  <25.360689, 37.659222, 55.332108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645870, 37.939705, 55.332233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695703, 0.707295, 0.125420,
		0.087720, -0.089640, 0.992104,
		0.712953, 0.701212, 0.000319,
		25.859756, 38.150070, 55.332329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120794, 38.203201, 55.788754>,  <25.360689, 37.659222, 55.332108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120794, 38.203201, 55.788754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396835, 38.385395, 55.563793>,  <25.562460, 38.494713, 55.428818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396835, 38.385395, 55.563793>,  <25.120794, 38.203201, 55.788754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396835, 38.385395, 55.563793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669457, 0.696985, -0.256979,
		0.274931, 0.553842, 0.785920,
		0.690101, 0.455488, -0.562397,
		25.603867, 38.522041, 55.395073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290735, 38.852207, 56.223434>,  <25.120794, 38.203201, 55.788754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290735, 38.852207, 56.223434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362242, 38.862980, 55.830025>,  <25.405146, 38.869446, 55.593979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362242, 38.862980, 55.830025>,  <25.290735, 38.852207, 56.223434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362242, 38.862980, 55.830025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699273, 0.706689, -0.107746,
		0.692142, 0.707012, 0.145168,
		0.178766, 0.026936, -0.983523,
		25.415871, 38.871059, 55.534969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888748, 38.896667, 56.613705>,  <25.290735, 38.852207, 56.223434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888748, 38.896667, 56.613705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908945, 38.991913, 56.225735>,  <25.921062, 39.049061, 55.992954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908945, 38.991913, 56.225735>,  <25.888748, 38.896667, 56.613705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908945, 38.991913, 56.225735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790764, -0.602731, -0.106804,
		-0.610035, -0.761588, -0.218725,
		0.050492, 0.238115, -0.969924,
		25.924093, 39.063347, 55.934757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473862, 38.759506, 57.132156>,  <25.888748, 38.896667, 56.613705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473862, 38.759506, 57.132156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837027, 38.820938, 57.288162>,  <27.054926, 38.857796, 57.381763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837027, 38.820938, 57.288162>,  <26.473862, 38.759506, 57.132156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837027, 38.820938, 57.288162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074969, -0.855958, 0.511581,
		0.412402, -0.493709, -0.765621,
		0.907912, 0.153580, 0.390012,
		27.109400, 38.867012, 57.405167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778004, 38.481426, 57.823582>,  <26.473862, 38.759506, 57.132156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778004, 38.481426, 57.823582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039330, 38.543091, 58.120071>,  <27.196125, 38.580090, 58.297966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039330, 38.543091, 58.120071>,  <26.778004, 38.481426, 57.823582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039330, 38.543091, 58.120071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497657, 0.650365, -0.573901,
		-0.570539, 0.743814, 0.348175,
		0.653316, 0.154161, 0.741223,
		27.235325, 38.589340, 58.342438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968981, 39.237446, 57.798145>,  <26.778004, 38.481426, 57.823582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968981, 39.237446, 57.798145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270559, 39.052998, 57.985306>,  <27.451508, 38.942329, 58.097603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270559, 39.052998, 57.985306>,  <26.968981, 39.237446, 57.798145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270559, 39.052998, 57.985306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656125, 0.563897, -0.501517,
		-0.032592, 0.685122, 0.727699,
		0.753948, -0.461116, 0.467904,
		27.496744, 38.914661, 58.125675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483149, 39.785877, 57.930302>,  <26.968981, 39.237446, 57.798145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483149, 39.785877, 57.930302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683756, 39.440704, 57.955032>,  <27.804121, 39.233601, 57.969872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683756, 39.440704, 57.955032>,  <27.483149, 39.785877, 57.930302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683756, 39.440704, 57.955032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763123, 0.407580, -0.501520,
		0.407580, 0.298701, 0.862934,
		0.501520, -0.862934, 0.061824,
		27.834211, 39.181824, 57.973579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131962, 40.045284, 58.099300>,  <27.483149, 39.785877, 57.930302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131962, 40.045284, 58.099300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198595, 39.670559, 57.976254>,  <28.238575, 39.445724, 57.902428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198595, 39.670559, 57.976254>,  <28.131962, 40.045284, 58.099300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198595, 39.670559, 57.976254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916684, 0.262064, -0.301685,
		0.363238, -0.231728, 0.902419,
		0.166582, -0.936816, -0.307613,
		28.248569, 39.389515, 57.883968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825893, 40.020954, 58.105663>,  <28.131962, 40.045284, 58.099300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825893, 40.020954, 58.105663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719215, 39.684322, 57.917778>,  <28.655209, 39.482346, 57.805046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719215, 39.684322, 57.917778>,  <28.825893, 40.020954, 58.105663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719215, 39.684322, 57.917778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912110, -0.062956, -0.405083,
		0.311337, -0.536458, 0.784399,
		-0.266693, -0.841575, -0.469708,
		28.639208, 39.431850, 57.776867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413343, 39.458096, 58.215809>,  <28.825893, 40.020954, 58.105663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413343, 39.458096, 58.215809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205278, 39.404858, 57.878357>,  <29.080439, 39.372913, 57.675884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205278, 39.404858, 57.878357>,  <29.413343, 39.458096, 58.215809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205278, 39.404858, 57.878357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854055, -0.075714, -0.514643,
		0.004623, -0.988207, 0.153055,
		-0.520162, -0.133097, -0.843633,
		29.049229, 39.364929, 57.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748379, 38.864429, 57.901001>,  <29.413343, 39.458096, 58.215809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748379, 38.864429, 57.901001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540871, 39.024303, 57.598709>,  <29.416367, 39.120228, 57.417332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540871, 39.024303, 57.598709>,  <29.748379, 38.864429, 57.901001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540871, 39.024303, 57.598709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756165, -0.197913, -0.623735,
		-0.398867, -0.895032, -0.199557,
		-0.518768, 0.399685, -0.755733,
		29.385241, 39.144207, 57.371990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821907, 38.383469, 57.337360>,  <29.748379, 38.864429, 57.901001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821907, 38.383469, 57.337360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722757, 38.746387, 57.201492>,  <29.663267, 38.964138, 57.119972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722757, 38.746387, 57.201492>,  <29.821907, 38.383469, 57.337360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722757, 38.746387, 57.201492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840252, 0.026821, -0.541532,
		-0.482220, -0.419635, -0.769006,
		-0.247872, 0.907296, -0.339666,
		29.648396, 39.018578, 57.099594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522549, 38.267483, 56.607265>,  <29.821907, 38.383469, 57.337360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522549, 38.267483, 56.607265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624729, 38.654057, 56.596348>,  <29.686037, 38.886002, 56.589798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624729, 38.654057, 56.596348>,  <29.522549, 38.267483, 56.607265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624729, 38.654057, 56.596348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797448, -0.226579, -0.559231,
		-0.546645, 0.121092, -0.828562,
		0.255453, 0.966436, -0.027293,
		29.701365, 38.943989, 56.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381262, 37.426136, 56.602478>,  <29.522549, 38.267483, 56.607265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381262, 37.426136, 56.602478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688686, 37.657078, 56.492222>,  <29.873140, 37.795643, 56.426067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688686, 37.657078, 56.492222>,  <29.381262, 37.426136, 56.602478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688686, 37.657078, 56.492222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596598, -0.802358, -0.017131,
		-0.231054, -0.151282, -0.961107,
		0.768560, 0.577353, -0.275643,
		29.919254, 37.830284, 56.409531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671701, 37.121983, 55.960548>,  <29.381262, 37.426136, 56.602478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671701, 37.121983, 55.960548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951677, 37.327564, 56.158916>,  <30.119663, 37.450912, 56.277939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951677, 37.327564, 56.158916>,  <29.671701, 37.121983, 55.960548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951677, 37.327564, 56.158916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626177, -0.775564, -0.080021,
		0.343493, 0.366545, -0.864672,
		0.699939, 0.513951, 0.495923,
		30.161659, 37.481750, 56.307693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254412, 37.089645, 55.629623>,  <29.671701, 37.121983, 55.960548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254412, 37.089645, 55.629623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375906, 37.175888, 56.000839>,  <30.448803, 37.227634, 56.223568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375906, 37.175888, 56.000839>,  <30.254412, 37.089645, 55.629623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375906, 37.175888, 56.000839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601776, -0.798583, -0.011421,
		0.738654, 0.561940, -0.372307,
		0.303736, 0.215610, 0.928039,
		30.467028, 37.240570, 56.279251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911268, 37.105766, 55.543358>,  <30.254412, 37.089645, 55.629623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911268, 37.105766, 55.543358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845415, 37.034870, 55.931477>,  <30.805902, 36.992332, 56.164349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845415, 37.034870, 55.931477>,  <30.911268, 37.105766, 55.543358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845415, 37.034870, 55.931477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554945, -0.829901, -0.057439,
		0.815433, 0.529006, 0.234991,
		-0.164633, -0.177245, 0.970299,
		30.796024, 36.981697, 56.222565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558428, 36.848686, 55.716530>,  <30.911268, 37.105766, 55.543358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558428, 36.848686, 55.716530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316833, 36.727299, 56.011314>,  <31.171877, 36.654465, 56.188183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316833, 36.727299, 56.011314>,  <31.558428, 36.848686, 55.716530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316833, 36.727299, 56.011314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480680, -0.876270, 0.033115,
		0.635725, 0.374242, 0.675127,
		-0.603987, -0.303469, 0.736958,
		31.135637, 36.636257, 56.232403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980722, 36.446140, 56.172653>,  <31.558428, 36.848686, 55.716530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980722, 36.446140, 56.172653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608847, 36.331833, 56.265614>,  <31.385721, 36.263248, 56.321388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608847, 36.331833, 56.265614>,  <31.980722, 36.446140, 56.172653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608847, 36.331833, 56.265614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321589, -0.937373, 0.133839,
		0.179595, 0.199166, 0.963368,
		-0.929691, -0.285772, 0.232397,
		31.329939, 36.246101, 56.335331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110916, 35.983383, 56.611275>,  <31.980722, 36.446140, 56.172653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110916, 35.983383, 56.611275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732372, 35.896675, 56.515434>,  <31.505245, 35.844650, 56.457932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732372, 35.896675, 56.515434>,  <32.110916, 35.983383, 56.611275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732372, 35.896675, 56.515434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236360, -0.970053, -0.055951,
		-0.220297, -0.109583, 0.969258,
		-0.946363, -0.216768, -0.239601,
		31.448463, 35.831646, 56.443554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949114, 35.543369, 57.025265>,  <32.110916, 35.983383, 56.611275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949114, 35.543369, 57.025265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709959, 35.458576, 56.716049>,  <31.566465, 35.407700, 56.530518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709959, 35.458576, 56.716049>,  <31.949114, 35.543369, 57.025265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709959, 35.458576, 56.716049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411607, -0.908733, -0.069159,
		-0.687829, -0.359539, 0.630573,
		-0.597888, -0.211979, -0.773043,
		31.530592, 35.394981, 56.484135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769545, 34.809925, 57.179153>,  <31.949114, 35.543369, 57.025265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769545, 34.809925, 57.179153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675797, 34.873665, 56.795555>,  <31.619549, 34.911911, 56.565395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675797, 34.873665, 56.795555>,  <31.769545, 34.809925, 57.179153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675797, 34.873665, 56.795555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496534, -0.828472, -0.259012,
		-0.835779, -0.536880, 0.115041,
		-0.234366, 0.159355, -0.958999,
		31.605486, 34.921471, 56.507854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693535, 34.182434, 56.868156>,  <31.769545, 34.809925, 57.179153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693535, 34.182434, 56.868156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764963, 34.384258, 56.530273>,  <31.807819, 34.505352, 56.327545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764963, 34.384258, 56.530273>,  <31.693535, 34.182434, 56.868156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764963, 34.384258, 56.530273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432334, -0.811426, -0.393288,
		-0.883855, -0.294965, -0.363036,
		0.178571, 0.504562, -0.844707,
		31.818535, 34.535625, 56.276863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555006, 33.738338, 56.231087>,  <31.693535, 34.182434, 56.868156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555006, 33.738338, 56.231087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768461, 34.040016, 56.078026>,  <31.896534, 34.221024, 55.986191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768461, 34.040016, 56.078026>,  <31.555006, 33.738338, 56.231087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768461, 34.040016, 56.078026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490693, -0.644628, -0.586239,
		-0.688804, 0.125076, -0.714076,
		0.533637, 0.754196, -0.382649,
		31.928553, 34.266273, 55.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.948318, 34.824734, 50.435051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.872631, 34.923916, 50.815094>,  <47.827217, 34.983425, 51.043121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.872631, 34.923916, 50.815094>,  <47.948318, 34.824734, 50.435051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.872631, 34.923916, 50.815094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979686, 0.017768, -0.199747,
		-0.066411, -0.968608, 0.239560,
		-0.189219, 0.247959, 0.950112,
		47.815865, 34.998302, 51.100128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403389, 34.539959, 50.398544>,  <47.948318, 34.824734, 50.435051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403389, 34.539959, 50.398544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.343704, 34.727722, 50.746658>,  <47.307896, 34.840382, 50.955524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.343704, 34.727722, 50.746658>,  <47.403389, 34.539959, 50.398544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343704, 34.727722, 50.746658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979534, 0.050079, -0.194951,
		-0.135094, -0.881560, 0.452330,
		-0.149209, 0.469409, 0.870283,
		47.298943, 34.868546, 51.007744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993313, 34.101944, 50.862370>,  <47.403389, 34.539959, 50.398544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993313, 34.101944, 50.862370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.934113, 34.485054, 50.960964>,  <46.898594, 34.714920, 51.020123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.934113, 34.485054, 50.960964>,  <46.993313, 34.101944, 50.862370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934113, 34.485054, 50.960964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987472, -0.156902, 0.016776,
		0.054742, -0.240916, 0.969001,
		-0.147997, 0.957779, 0.246487,
		46.889713, 34.772388, 51.034912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.404682, 34.119770, 51.338463>,  <46.993313, 34.101944, 50.862370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.404682, 34.119770, 51.338463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.406219, 34.512951, 51.264927>,  <46.407143, 34.748859, 51.220806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.406219, 34.512951, 51.264927>,  <46.404682, 34.119770, 51.338463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406219, 34.512951, 51.264927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979271, 0.040933, 0.198375,
		0.202518, 0.179263, 0.962731,
		0.003846, 0.982949, -0.183836,
		46.407375, 34.807835, 51.209778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979527, 34.490116, 51.879311>,  <46.404682, 34.119770, 51.338463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979527, 34.490116, 51.879311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.007221, 34.726601, 51.557896>,  <46.023838, 34.868492, 51.365047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.007221, 34.726601, 51.557896>,  <45.979527, 34.490116, 51.879311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007221, 34.726601, 51.557896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997410, 0.056744, -0.044188,
		0.019471, 0.804515, 0.593613,
		0.069234, 0.591216, -0.803536,
		46.027992, 34.903965, 51.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595711, 35.042881, 52.059303>,  <45.979527, 34.490116, 51.879311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595711, 35.042881, 52.059303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.625828, 35.040627, 51.660446>,  <45.643898, 35.039272, 51.421131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.625828, 35.040627, 51.660446>,  <45.595711, 35.042881, 52.059303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625828, 35.040627, 51.660446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984437, 0.158819, -0.075232,
		0.158790, 0.987292, 0.006407,
		0.075293, -0.005639, -0.997146,
		45.648415, 35.038937, 51.361301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039066, 35.443100, 51.840904>,  <45.595711, 35.042881, 52.059303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039066, 35.443100, 51.840904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.123756, 35.230751, 51.512672>,  <45.174568, 35.103340, 51.315735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.123756, 35.230751, 51.512672>,  <45.039066, 35.443100, 51.840904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123756, 35.230751, 51.512672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934382, 0.136212, -0.329206,
		0.286539, 0.836434, -0.467197,
		0.211721, -0.530871, -0.820579,
		45.187271, 35.071491, 51.266499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698383, 35.792580, 51.384254>,  <45.039066, 35.443100, 51.840904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698383, 35.792580, 51.384254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.750679, 35.438091, 51.206478>,  <44.782059, 35.225399, 51.099812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.750679, 35.438091, 51.206478>,  <44.698383, 35.792580, 51.384254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750679, 35.438091, 51.206478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949651, 0.016798, -0.312860,
		0.284727, 0.462964, -0.839401,
		0.130743, -0.886218, -0.444437,
		44.789902, 35.172226, 51.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379623, 35.748154, 50.709820>,  <44.698383, 35.792580, 51.384254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379623, 35.748154, 50.709820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.408478, 35.357258, 50.789627>,  <44.425793, 35.122723, 50.837513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.408478, 35.357258, 50.789627>,  <44.379623, 35.748154, 50.709820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408478, 35.357258, 50.789627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788785, -0.178324, -0.588234,
		0.610422, -0.114942, -0.783693,
		0.072139, -0.977235, 0.199517,
		44.430119, 35.064087, 50.849483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247272, 35.350113, 50.118248>,  <44.379623, 35.748154, 50.709820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247272, 35.350113, 50.118248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.193668, 35.093311, 50.420208>,  <44.161507, 34.939232, 50.601383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.193668, 35.093311, 50.420208>,  <44.247272, 35.350113, 50.118248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193668, 35.093311, 50.420208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839300, -0.331493, -0.430914,
		0.526892, -0.691335, -0.494410,
		-0.134012, -0.642004, 0.754899,
		44.153465, 34.900711, 50.646679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928795, 34.812210, 49.799515>,  <44.247272, 35.350113, 50.118248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928795, 34.812210, 49.799515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.826965, 34.743366, 50.180161>,  <43.765869, 34.702061, 50.408546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.826965, 34.743366, 50.180161>,  <43.928795, 34.812210, 49.799515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826965, 34.743366, 50.180161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907961, -0.296172, -0.296461,
		0.332867, -0.939499, -0.080877,
		-0.254571, -0.172115, 0.951614,
		43.750595, 34.691730, 50.465645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576878, 34.165588, 49.758156>,  <43.928795, 34.812210, 49.799515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576878, 34.165588, 49.758156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.496227, 34.341980, 50.107986>,  <43.447838, 34.447815, 50.317886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.496227, 34.341980, 50.107986>,  <43.576878, 34.165588, 49.758156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496227, 34.341980, 50.107986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975697, -0.168646, -0.139908,
		0.085798, -0.881533, 0.464262,
		-0.201629, 0.440975, 0.874578,
		43.435738, 34.474274, 50.370361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173637, 33.672737, 50.076618>,  <43.576878, 34.165588, 49.758156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173637, 33.672737, 50.076618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.087696, 34.021103, 50.253407>,  <43.036133, 34.230122, 50.359482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.087696, 34.021103, 50.253407>,  <43.173637, 33.672737, 50.076618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087696, 34.021103, 50.253407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970597, -0.140111, -0.195733,
		-0.108541, -0.471033, 0.875412,
		-0.214851, 0.870917, 0.441976,
		43.023239, 34.282379, 50.385998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561321, 33.535198, 50.571499>,  <43.173637, 33.672737, 50.076618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561321, 33.535198, 50.571499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.543762, 33.928623, 50.501438>,  <42.533226, 34.164677, 50.459400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.543762, 33.928623, 50.501438>,  <42.561321, 33.535198, 50.571499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543762, 33.928623, 50.501438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955991, -0.092266, -0.278511,
		-0.290093, 0.155217, 0.944327,
		-0.043900, 0.983562, -0.175151,
		42.530594, 34.223690, 50.448895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925163, 33.699921, 50.778511>,  <42.561321, 33.535198, 50.571499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925163, 33.699921, 50.778511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.031296, 34.000645, 50.537056>,  <42.094975, 34.181080, 50.392181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.031296, 34.000645, 50.537056>,  <41.925163, 33.699921, 50.778511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031296, 34.000645, 50.537056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949295, 0.094205, -0.299940,
		-0.168631, 0.652619, 0.738682,
		0.265334, 0.751807, -0.603642,
		42.110897, 34.226189, 50.355965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377617, 34.216805, 50.814949>,  <41.925163, 33.699921, 50.778511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377617, 34.216805, 50.814949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.562828, 34.293564, 50.468819>,  <41.673954, 34.339619, 50.261143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.562828, 34.293564, 50.468819>,  <41.377617, 34.216805, 50.814949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562828, 34.293564, 50.468819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869160, 0.289621, -0.400851,
		0.173692, 0.937707, 0.300892,
		0.463025, 0.191899, -0.865322,
		41.701736, 34.351135, 50.209221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176773, 34.799076, 50.606995>,  <41.377617, 34.216805, 50.814949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176773, 34.799076, 50.606995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317387, 34.702122, 50.245293>,  <41.401756, 34.643951, 50.028271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317387, 34.702122, 50.245293>,  <41.176773, 34.799076, 50.606995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317387, 34.702122, 50.245293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751841, 0.502431, -0.426963,
		0.557813, 0.829948, -0.005610,
		0.351538, -0.242383, -0.904252,
		41.422848, 34.629406, 49.974018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115013, 35.343391, 50.158493>,  <41.176773, 34.799076, 50.606995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115013, 35.343391, 50.158493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.108891, 35.012592, 49.933697>,  <41.105217, 34.814114, 49.798820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.108891, 35.012592, 49.933697>,  <41.115013, 35.343391, 50.158493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108891, 35.012592, 49.933697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864941, 0.292934, -0.407513,
		0.501640, 0.479851, -0.719791,
		-0.015306, -0.827002, -0.561991,
		41.104298, 34.764492, 49.765099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853653, 35.560165, 49.544880>,  <41.115013, 35.343391, 50.158493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853653, 35.560165, 49.544880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.805328, 35.173725, 49.453617>,  <40.776333, 34.941860, 49.398857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.805328, 35.173725, 49.453617>,  <40.853653, 35.560165, 49.544880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805328, 35.173725, 49.453617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788427, 0.233036, -0.569278,
		0.603148, 0.111112, -0.789852,
		-0.120810, -0.966100, -0.228159,
		40.769085, 34.883896, 49.385170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905235, 35.460743, 48.797680>,  <40.853653, 35.560165, 49.544880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905235, 35.460743, 48.797680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683975, 35.173088, 48.965904>,  <40.551220, 35.000496, 49.066837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683975, 35.173088, 48.965904>,  <40.905235, 35.460743, 48.797680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683975, 35.173088, 48.965904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810571, 0.348034, -0.471007,
		0.192348, -0.601431, -0.775424,
		-0.553153, -0.719134, 0.420559,
		40.518028, 34.957348, 49.092072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589302, 35.094883, 48.327408>,  <40.905235, 35.460743, 48.797680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589302, 35.094883, 48.327408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.332947, 35.076885, 48.633934>,  <40.179134, 35.066086, 48.817848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.332947, 35.076885, 48.633934>,  <40.589302, 35.094883, 48.327408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332947, 35.076885, 48.633934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754395, 0.221518, -0.617915,
		-0.141949, -0.974118, -0.175913,
		-0.640889, -0.044995, 0.766313,
		40.140678, 35.063385, 48.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990337, 34.499916, 48.150009>,  <40.589302, 35.094883, 48.327408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990337, 34.499916, 48.150009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.885368, 34.840225, 48.332138>,  <39.822388, 35.044411, 48.441414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.885368, 34.840225, 48.332138>,  <39.990337, 34.499916, 48.150009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885368, 34.840225, 48.332138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541134, 0.260928, -0.799431,
		-0.798942, -0.456177, 0.391911,
		-0.262422, 0.850775, 0.455319,
		39.806641, 35.095459, 48.468735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293449, 34.520638, 47.921532>,  <39.990337, 34.499916, 48.150009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293449, 34.520638, 47.921532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498787, 34.857880, 47.985592>,  <39.621990, 35.060226, 48.024029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498787, 34.857880, 47.985592>,  <39.293449, 34.520638, 47.921532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498787, 34.857880, 47.985592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472710, 0.433555, -0.767187,
		-0.716254, 0.318126, 0.621108,
		0.513346, 0.843105, 0.160154,
		39.652790, 35.110809, 48.033638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931736, 33.741085, 47.668312>,  <39.293449, 34.520638, 47.921532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931736, 33.741085, 47.668312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.966095, 33.703259, 47.271591>,  <38.986710, 33.680561, 47.033558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.966095, 33.703259, 47.271591>,  <38.931736, 33.741085, 47.668312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966095, 33.703259, 47.271591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743140, -0.669136, -0.000562,
		-0.663600, 0.737099, -0.127752,
		0.085898, -0.094565, -0.991806,
		38.991863, 33.674889, 46.974049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248959, 33.712822, 47.325729>,  <38.931736, 33.741085, 47.668312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248959, 33.712822, 47.325729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494801, 33.545708, 47.058083>,  <38.642307, 33.445438, 46.897495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494801, 33.545708, 47.058083>,  <38.248959, 33.712822, 47.325729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494801, 33.545708, 47.058083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727618, -0.627876, -0.276302,
		-0.304685, 0.656677, -0.689886,
		0.614604, -0.417789, -0.669115,
		38.679180, 33.420372, 46.857349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807537, 33.536407, 46.734066>,  <38.248959, 33.712822, 47.325729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807537, 33.536407, 46.734066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139408, 33.323116, 46.667965>,  <38.338531, 33.195141, 46.628304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.139408, 33.323116, 46.667965>,  <37.807537, 33.536407, 46.734066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139408, 33.323116, 46.667965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550295, -0.731419, -0.402743,
		0.093887, 0.425082, -0.900273,
		0.829675, -0.533228, -0.165250,
		38.388309, 33.163147, 46.618389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804291, 33.159309, 45.970921>,  <37.807537, 33.536407, 46.734066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804291, 33.159309, 45.970921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032112, 32.968494, 46.238667>,  <38.168804, 32.854004, 46.399315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032112, 32.968494, 46.238667>,  <37.804291, 33.159309, 45.970921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032112, 32.968494, 46.238667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374192, -0.875553, -0.305592,
		0.731840, -0.076418, -0.677178,
		0.569553, -0.477039, 0.669360,
		38.202976, 32.825382, 46.439476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000164, 32.618507, 45.572304>,  <37.804291, 33.159309, 45.970921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000164, 32.618507, 45.572304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072742, 32.534241, 45.956532>,  <38.116291, 32.483681, 46.187069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072742, 32.534241, 45.956532>,  <38.000164, 32.618507, 45.572304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072742, 32.534241, 45.956532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447599, -0.887433, -0.110079,
		0.875632, -0.409976, -0.255321,
		0.181451, -0.210670, 0.960570,
		38.127178, 32.471039, 46.244701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225609, 31.951147, 45.643761>,  <38.000164, 32.618507, 45.572304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225609, 31.951147, 45.643761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104099, 31.993216, 46.022530>,  <38.031193, 32.018456, 46.249790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.104099, 31.993216, 46.022530>,  <38.225609, 31.951147, 45.643761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104099, 31.993216, 46.022530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427718, -0.903159, -0.036899,
		0.851340, -0.416224, 0.319339,
		-0.303772, 0.105173, 0.946922,
		38.012966, 32.024769, 46.306606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363281, 31.280373, 45.972172>,  <38.225609, 31.951147, 45.643761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363281, 31.280373, 45.972172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096149, 31.482166, 46.191078>,  <37.935871, 31.603243, 46.322422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096149, 31.482166, 46.191078>,  <38.363281, 31.280373, 45.972172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096149, 31.482166, 46.191078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505105, -0.847215, 0.164605,
		0.546691, -0.166498, 0.820614,
		-0.667830, 0.504484, 0.547264,
		37.895802, 31.633512, 46.355259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258732, 30.830542, 46.509262>,  <38.363281, 31.280373, 45.972172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258732, 30.830542, 46.509262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944084, 31.077179, 46.522198>,  <37.755295, 31.225163, 46.529957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944084, 31.077179, 46.522198>,  <38.258732, 30.830542, 46.509262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944084, 31.077179, 46.522198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588058, -0.764116, 0.265167,
		0.188210, 0.189569, 0.963660,
		-0.786616, 0.616595, 0.032337,
		37.708099, 31.262157, 46.531898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949108, 30.771072, 47.205601>,  <38.258732, 30.830542, 46.509262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949108, 30.771072, 47.205601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673615, 30.912468, 46.952400>,  <37.508320, 30.997305, 46.800480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673615, 30.912468, 46.952400>,  <37.949108, 30.771072, 47.205601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673615, 30.912468, 46.952400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654634, -0.678455, 0.333397,
		-0.311613, 0.644007, 0.698679,
		-0.688732, 0.353488, -0.633004,
		37.466995, 31.018515, 46.762501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414352, 30.711143, 47.599762>,  <37.949108, 30.771072, 47.205601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414352, 30.711143, 47.599762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271877, 30.741268, 47.227211>,  <37.186394, 30.759344, 47.003681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271877, 30.741268, 47.227211>,  <37.414352, 30.711143, 47.599762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271877, 30.741268, 47.227211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746817, -0.622007, 0.235311,
		-0.561600, 0.779381, 0.277797,
		-0.356189, 0.075313, -0.931374,
		37.165020, 30.763863, 46.947800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767113, 30.743635, 47.665867>,  <37.414352, 30.711143, 47.599762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767113, 30.743635, 47.665867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779793, 30.630199, 47.282497>,  <36.787399, 30.562138, 47.052475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779793, 30.630199, 47.282497>,  <36.767113, 30.743635, 47.665867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779793, 30.630199, 47.282497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766483, -0.622325, 0.158794,
		-0.641482, 0.729581, -0.237093,
		0.031696, -0.283591, -0.958421,
		36.789303, 30.545122, 46.994972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125412, 30.951038, 47.445602>,  <36.767113, 30.743635, 47.665867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125412, 30.951038, 47.445602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280296, 30.633820, 47.257496>,  <36.373226, 30.443489, 47.144634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280296, 30.633820, 47.257496>,  <36.125412, 30.951038, 47.445602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280296, 30.633820, 47.257496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695375, -0.586112, 0.415845,
		-0.605410, 0.165990, -0.778412,
		0.387210, -0.793045, -0.470264,
		36.396458, 30.395906, 47.116417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.831013, 30.408100, 51.484093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.154819, 30.440952, 51.716625>,  <31.349104, 30.460665, 51.856144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.154819, 30.440952, 51.716625>,  <30.831013, 30.408100, 51.484093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154819, 30.440952, 51.716625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580063, -0.264738, -0.770351,
		0.090629, 0.960816, -0.261951,
		0.809514, 0.082131, 0.581327,
		31.397675, 30.465591, 51.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316895, 30.854528, 51.145500>,  <30.831013, 30.408100, 51.484093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316895, 30.854528, 51.145500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541231, 30.635906, 51.394253>,  <31.675833, 30.504734, 51.543503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541231, 30.635906, 51.394253>,  <31.316895, 30.854528, 51.145500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541231, 30.635906, 51.394253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616031, -0.226351, -0.754501,
		0.553138, 0.806253, 0.209747,
		0.560843, -0.546554, 0.621880,
		31.709484, 30.471941, 51.580818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021935, 31.028482, 50.902874>,  <31.316895, 30.854528, 51.145500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021935, 31.028482, 50.902874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039124, 30.696358, 51.125130>,  <32.049438, 30.497084, 51.258484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039124, 30.696358, 51.125130>,  <32.021935, 31.028482, 50.902874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039124, 30.696358, 51.125130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679614, -0.383360, -0.625427,
		0.732310, 0.404496, 0.547818,
		0.042971, -0.830312, 0.555640,
		32.052013, 30.447264, 51.291821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618332, 30.870583, 50.878391>,  <32.021935, 31.028482, 50.902874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618332, 30.870583, 50.878391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449768, 30.526966, 50.994640>,  <32.348629, 30.320797, 51.064392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449768, 30.526966, 50.994640>,  <32.618332, 30.870583, 50.878391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449768, 30.526966, 50.994640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633506, -0.508166, -0.583470,
		0.648911, -0.061764, 0.758353,
		-0.421407, -0.859042, 0.290627,
		32.323345, 30.269253, 51.081829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148659, 30.363159, 51.265934>,  <32.618332, 30.870583, 50.878391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148659, 30.363159, 51.265934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840397, 30.151543, 51.123829>,  <32.655441, 30.024572, 51.038567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840397, 30.151543, 51.123829>,  <33.148659, 30.363159, 51.265934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840397, 30.151543, 51.123829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636618, -0.664058, -0.392102,
		-0.028475, -0.528339, 0.848556,
		-0.770653, -0.529041, -0.355260,
		32.609200, 29.992830, 51.017250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443703, 29.731390, 51.282463>,  <33.148659, 30.363159, 51.265934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443703, 29.731390, 51.282463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118881, 29.656233, 51.061462>,  <32.923988, 29.611139, 50.928860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118881, 29.656233, 51.061462>,  <33.443703, 29.731390, 51.282463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118881, 29.656233, 51.061462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562737, -0.502873, -0.656083,
		-0.154565, -0.843691, 0.514096,
		-0.812057, -0.187893, -0.552503,
		32.875263, 29.599865, 50.895710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418003, 29.033993, 51.246250>,  <33.443703, 29.731390, 51.282463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418003, 29.033993, 51.246250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195862, 29.149986, 50.934483>,  <33.062576, 29.219584, 50.747421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195862, 29.149986, 50.934483>,  <33.418003, 29.033993, 51.246250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195862, 29.149986, 50.934483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656448, -0.422529, -0.624936,
		-0.510549, -0.858707, 0.044292,
		-0.555352, 0.289985, -0.779418,
		33.029255, 29.236982, 50.700657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505665, 28.485785, 50.778954>,  <33.418003, 29.033993, 51.246250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505665, 28.485785, 50.778954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370903, 28.779701, 50.543472>,  <33.290047, 28.956051, 50.402184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370903, 28.779701, 50.543472>,  <33.505665, 28.485785, 50.778954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370903, 28.779701, 50.543472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469136, -0.411106, -0.781603,
		-0.816337, -0.539508, -0.206214,
		-0.336905, 0.734794, -0.588704,
		33.269833, 29.000139, 50.366859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337936, 28.157578, 50.091171>,  <33.505665, 28.485785, 50.778954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337936, 28.157578, 50.091171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397774, 28.551859, 50.060173>,  <33.433678, 28.788427, 50.041573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397774, 28.551859, 50.060173>,  <33.337936, 28.157578, 50.091171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397774, 28.551859, 50.060173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586169, -0.151534, -0.795892,
		-0.796259, 0.073634, -0.600458,
		0.149594, 0.985706, -0.077498,
		33.442654, 28.847570, 50.036922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295273, 28.359777, 49.336060>,  <33.337936, 28.157578, 50.091171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295273, 28.359777, 49.336060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485584, 28.679541, 49.482800>,  <33.599773, 28.871399, 49.570843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485584, 28.679541, 49.482800>,  <33.295273, 28.359777, 49.336060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485584, 28.679541, 49.482800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520341, 0.080447, -0.850160,
		-0.709139, 0.595376, -0.377691,
		0.475781, 0.799410, 0.366847,
		33.628319, 28.919363, 49.592854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412098, 28.704449, 48.762001>,  <33.295273, 28.359777, 49.336060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412098, 28.704449, 48.762001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668747, 28.866751, 49.022366>,  <33.822739, 28.964132, 49.178585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.668747, 28.866751, 49.022366>,  <33.412098, 28.704449, 48.762001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668747, 28.866751, 49.022366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707744, 0.013922, -0.706332,
		-0.295659, 0.913877, -0.278237,
		0.641626, 0.405753, 0.650907,
		33.861237, 28.988478, 49.217636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785164, 29.274956, 48.443123>,  <33.412098, 28.704449, 48.762001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785164, 29.274956, 48.443123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022503, 29.179203, 48.750534>,  <34.164906, 29.121752, 48.934982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022503, 29.179203, 48.750534>,  <33.785164, 29.274956, 48.443123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022503, 29.179203, 48.750534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795483, 0.028401, -0.605310,
		0.123074, 0.970510, 0.207277,
		0.593347, -0.239383, 0.768528,
		34.200508, 29.107388, 48.981094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304390, 29.779959, 48.635929>,  <33.785164, 29.274956, 48.443123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304390, 29.779959, 48.635929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431557, 29.409286, 48.716118>,  <34.507854, 29.186882, 48.764233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431557, 29.409286, 48.716118>,  <34.304390, 29.779959, 48.635929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431557, 29.409286, 48.716118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753703, 0.118732, -0.646400,
		0.575205, 0.356598, 0.736191,
		0.317915, -0.926683, 0.200474,
		34.526932, 29.131281, 48.776260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743946, 29.943552, 48.152203>,  <34.304390, 29.779959, 48.635929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743946, 29.943552, 48.152203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.891029, 30.016470, 47.787445>,  <33.979279, 30.060221, 47.568588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.891029, 30.016470, 47.787445>,  <33.743946, 29.943552, 48.152203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891029, 30.016470, 47.787445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606520, 0.790341, -0.086573,
		0.704928, 0.584918, 0.401182,
		0.367709, 0.182297, -0.911898,
		34.001343, 30.071159, 47.513874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050549, 30.599638, 48.152744>,  <33.743946, 29.943552, 48.152203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050549, 30.599638, 48.152744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950199, 30.535021, 47.770966>,  <33.889988, 30.496250, 47.541901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950199, 30.535021, 47.770966>,  <34.050549, 30.599638, 48.152744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950199, 30.535021, 47.770966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573575, 0.819063, 0.012134,
		0.779790, 0.550490, -0.298142,
		-0.250877, -0.161545, -0.954444,
		33.874935, 30.486557, 47.484631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908409, 31.364546, 47.872822>,  <34.050549, 30.599638, 48.152744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908409, 31.364546, 47.872822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768887, 31.120623, 47.588154>,  <33.685173, 30.974268, 47.417355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768887, 31.120623, 47.588154>,  <33.908409, 31.364546, 47.872822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768887, 31.120623, 47.588154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683190, 0.685260, -0.252331,
		0.641549, 0.398188, -0.655638,
		-0.348807, -0.609808, -0.711666,
		33.664246, 30.937681, 47.374653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987423, 31.683428, 47.097565>,  <33.908409, 31.364546, 47.872822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987423, 31.683428, 47.097565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689663, 31.417669, 47.124229>,  <33.511005, 31.258215, 47.140228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689663, 31.417669, 47.124229>,  <33.987423, 31.683428, 47.097565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689663, 31.417669, 47.124229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606368, 0.630808, -0.484148,
		0.279613, -0.400824, -0.872443,
		-0.744402, -0.664395, 0.066665,
		33.466343, 31.218351, 47.144230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629601, 31.837101, 46.587059>,  <33.987423, 31.683428, 47.097565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629601, 31.837101, 46.587059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.368244, 31.618404, 46.796497>,  <33.211430, 31.487186, 46.922161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.368244, 31.618404, 46.796497>,  <33.629601, 31.837101, 46.587059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368244, 31.618404, 46.796497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748145, 0.571970, -0.336347,
		-0.115587, -0.611492, -0.782763,
		-0.653390, -0.546743, 0.523597,
		33.172226, 31.454382, 46.953575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198837, 31.815971, 46.189415>,  <33.629601, 31.837101, 46.587059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198837, 31.815971, 46.189415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016933, 31.732830, 46.535824>,  <32.907791, 31.682945, 46.743668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016933, 31.732830, 46.535824>,  <33.198837, 31.815971, 46.189415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016933, 31.732830, 46.535824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704066, 0.679400, -0.206654,
		-0.545420, -0.703713, -0.455307,
		-0.454761, -0.207853, 0.866019,
		32.880505, 31.670473, 46.795631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447628, 31.680866, 46.051498>,  <33.198837, 31.815971, 46.189415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447628, 31.680866, 46.051498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489250, 31.781769, 46.436317>,  <32.514221, 31.842310, 46.667210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489250, 31.781769, 46.436317>,  <32.447628, 31.680866, 46.051498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489250, 31.781769, 46.436317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720639, 0.685785, -0.101874,
		-0.685458, -0.682690, 0.253143,
		0.104053, 0.252255, 0.962050,
		32.520466, 31.857445, 46.724934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779951, 31.851004, 46.163673>,  <32.447628, 31.680866, 46.051498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779951, 31.851004, 46.163673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990253, 32.027294, 46.454697>,  <32.116436, 32.133068, 46.629311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990253, 32.027294, 46.454697>,  <31.779951, 31.851004, 46.163673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990253, 32.027294, 46.454697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713918, 0.693658, 0.095704,
		-0.462497, -0.569734, 0.679338,
		0.525754, 0.440728, 0.727558,
		32.147980, 32.159512, 46.672966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324516, 31.935461, 46.779308>,  <31.779951, 31.851004, 46.163673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324516, 31.935461, 46.779308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.624668, 32.198044, 46.810280>,  <31.804760, 32.355595, 46.828861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.624668, 32.198044, 46.810280>,  <31.324516, 31.935461, 46.779308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624668, 32.198044, 46.810280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660784, 0.741930, 0.113595,
		0.017126, -0.136402, 0.990506,
		0.750380, 0.656456, 0.077426,
		31.849783, 32.394981, 46.833508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034203, 32.350567, 47.230831>,  <31.324516, 31.935461, 46.779308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034203, 32.350567, 47.230831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355234, 32.568607, 47.133892>,  <31.547853, 32.699432, 47.075729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355234, 32.568607, 47.133892>,  <31.034203, 32.350567, 47.230831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355234, 32.568607, 47.133892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543073, 0.835741, 0.081293,
		0.246851, 0.066367, 0.966778,
		0.802581, 0.545098, -0.242346,
		31.596008, 32.732136, 47.061188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110918, 32.831882, 47.778530>,  <31.034203, 32.350567, 47.230831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110918, 32.831882, 47.778530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315302, 33.014431, 47.487148>,  <31.437931, 33.123959, 47.312317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315302, 33.014431, 47.487148>,  <31.110918, 32.831882, 47.778530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315302, 33.014431, 47.487148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352189, 0.884183, 0.306894,
		0.784146, 0.099744, 0.612508,
		0.510958, 0.456368, -0.728457,
		31.468590, 33.151340, 47.268612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188683, 33.487247, 48.024750>,  <31.110918, 32.831882, 47.778530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188683, 33.487247, 48.024750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247683, 33.566780, 47.637203>,  <31.283083, 33.614502, 47.404675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247683, 33.566780, 47.637203>,  <31.188683, 33.487247, 48.024750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247683, 33.566780, 47.637203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419606, 0.899640, 0.120745,
		0.895642, 0.388734, 0.216128,
		0.147499, 0.198833, -0.968870,
		31.291933, 33.626431, 47.346542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570698, 34.161884, 47.934704>,  <31.188683, 33.487247, 48.024750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570698, 34.161884, 47.934704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.392395, 34.094826, 47.582977>,  <31.285414, 34.054588, 47.371941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.392395, 34.094826, 47.582977>,  <31.570698, 34.161884, 47.934704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392395, 34.094826, 47.582977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324361, 0.945800, -0.015893,
		0.834320, 0.278131, -0.475977,
		-0.445758, -0.167648, -0.879314,
		31.258667, 34.044533, 47.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708572, 34.794907, 47.534241>,  <31.570698, 34.161884, 47.934704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708572, 34.794907, 47.534241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.383791, 34.629025, 47.369923>,  <31.188923, 34.529495, 47.271332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.383791, 34.629025, 47.369923>,  <31.708572, 34.794907, 47.534241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383791, 34.629025, 47.369923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414117, 0.905220, -0.095316,
		0.411387, 0.092724, -0.906732,
		-0.811954, -0.414705, -0.410794,
		31.140205, 34.504612, 47.246685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497004, 35.258183, 47.005268>,  <31.708572, 34.794907, 47.534241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497004, 35.258183, 47.005268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.165085, 35.056305, 47.100536>,  <30.965933, 34.935181, 47.157700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.165085, 35.056305, 47.100536>,  <31.497004, 35.258183, 47.005268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165085, 35.056305, 47.100536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495207, 0.862681, 0.102722,
		-0.257310, -0.032706, -0.965775,
		-0.829796, -0.504690, 0.238173,
		30.916145, 34.904900, 47.171989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917717, 35.702431, 46.600956>,  <31.497004, 35.258183, 47.005268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917717, 35.702431, 46.600956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.017315, 36.086510, 46.550323>,  <32.077072, 36.316956, 46.519943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.017315, 36.086510, 46.550323>,  <31.917717, 35.702431, 46.600956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017315, 36.086510, 46.550323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793436, -0.277185, -0.541874,
		-0.555392, 0.034490, -0.830873,
		0.248995, 0.960197, -0.126581,
		32.092014, 36.374569, 46.512348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211346, 35.767147, 45.853085>,  <31.917717, 35.702431, 46.600956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211346, 35.767147, 45.853085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337757, 36.065365, 46.087791>,  <32.413605, 36.244293, 46.228615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337757, 36.065365, 46.087791>,  <32.211346, 35.767147, 45.853085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337757, 36.065365, 46.087791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890589, -0.019907, -0.454374,
		-0.327073, 0.666164, -0.670261,
		0.316030, 0.745540, 0.586767,
		32.432568, 36.289028, 46.263821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625908, 36.280293, 45.396168>,  <32.211346, 35.767147, 45.853085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625908, 36.280293, 45.396168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.744984, 36.337284, 45.773758>,  <32.816429, 36.371479, 46.000313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.744984, 36.337284, 45.773758>,  <32.625908, 36.280293, 45.396168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744984, 36.337284, 45.773758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954228, -0.014570, -0.298725,
		-0.028808, 0.989691, -0.140294,
		0.297689, 0.142478, 0.943971,
		32.834290, 36.380028, 46.056950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277260, 36.733143, 45.348637>,  <32.625908, 36.280293, 45.396168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277260, 36.733143, 45.348637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296528, 36.588531, 45.721085>,  <33.308090, 36.501766, 45.944553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296528, 36.588531, 45.721085>,  <33.277260, 36.733143, 45.348637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296528, 36.588531, 45.721085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995037, -0.063893, -0.076287,
		0.087072, 0.930171, 0.356652,
		0.048172, -0.361525, 0.931117,
		33.310978, 36.480076, 46.000420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803223, 37.082661, 45.656868>,  <33.277260, 36.733143, 45.348637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803223, 37.082661, 45.656868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757523, 36.749092, 45.872837>,  <33.730103, 36.548950, 46.002419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.757523, 36.749092, 45.872837>,  <33.803223, 37.082661, 45.656868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757523, 36.749092, 45.872837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989305, -0.145108, -0.014782,
		0.090674, 0.532459, 0.841585,
		-0.114250, -0.833925, 0.539922,
		33.723248, 36.498913, 46.034813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237507, 37.184017, 46.215839>,  <33.803223, 37.082661, 45.656868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237507, 37.184017, 46.215839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.185829, 36.790642, 46.164997>,  <34.154823, 36.554615, 46.134491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.185829, 36.790642, 46.164997>,  <34.237507, 37.184017, 46.215839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185829, 36.790642, 46.164997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989962, -0.120511, -0.073839,
		0.057298, -0.135371, 0.989137,
		-0.129197, -0.983439, -0.127107,
		34.147068, 36.495609, 46.126865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807732, 36.838570, 46.546078>,  <34.237507, 37.184017, 46.215839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807732, 36.838570, 46.546078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663914, 36.568142, 46.288815>,  <34.577625, 36.405884, 46.134457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663914, 36.568142, 46.288815>,  <34.807732, 36.838570, 46.546078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663914, 36.568142, 46.288815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931922, -0.295207, -0.210653,
		-0.047450, -0.675115, 0.736185,
		-0.359542, -0.676071, -0.643162,
		34.556053, 36.365322, 46.095867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224121, 36.220581, 46.656227>,  <34.807732, 36.838570, 46.546078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224121, 36.220581, 46.656227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.055923, 36.236122, 46.293644>,  <34.955006, 36.245449, 46.076092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.055923, 36.236122, 46.293644>,  <35.224121, 36.220581, 46.656227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055923, 36.236122, 46.293644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830981, -0.384571, -0.401966,
		-0.364218, -0.922277, 0.129422,
		-0.420496, 0.038856, -0.906462,
		34.929775, 36.247780, 46.021706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533031, 35.694672, 46.392525>,  <35.224121, 36.220581, 46.656227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533031, 35.694672, 46.392525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377758, 35.883205, 46.075752>,  <35.284595, 35.996326, 45.885689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377758, 35.883205, 46.075752>,  <35.533031, 35.694672, 46.392525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377758, 35.883205, 46.075752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765609, -0.313398, -0.561805,
		-0.512989, -0.824393, -0.239203,
		-0.388182, 0.471336, -0.791932,
		35.261303, 36.024605, 45.838173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663200, 35.194984, 45.975330>,  <35.533031, 35.694672, 46.392525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663200, 35.194984, 45.975330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616913, 35.552788, 45.802601>,  <35.589142, 35.767467, 45.698963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616913, 35.552788, 45.802601>,  <35.663200, 35.194984, 45.975330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616913, 35.552788, 45.802601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715083, -0.226712, -0.661255,
		-0.689395, -0.385308, -0.613410,
		-0.115720, 0.894505, -0.431821,
		35.582195, 35.821140, 45.673054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588226, 35.049870, 45.246120>,  <35.663200, 35.194984, 45.975330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588226, 35.049870, 45.246120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699589, 35.431675, 45.288826>,  <35.766407, 35.660759, 45.314449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699589, 35.431675, 45.288826>,  <35.588226, 35.049870, 45.246120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699589, 35.431675, 45.288826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764204, -0.152816, -0.626610,
		-0.581792, 0.256040, -0.771986,
		0.278409, 0.954511, 0.106760,
		35.783112, 35.718029, 45.320854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708126, 35.260830, 44.584438>,  <35.588226, 35.049870, 45.246120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708126, 35.260830, 44.584438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917683, 35.486637, 44.839581>,  <36.043415, 35.622124, 44.992664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917683, 35.486637, 44.839581>,  <35.708126, 35.260830, 44.584438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917683, 35.486637, 44.839581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824503, -0.148082, -0.546138,
		-0.213851, 0.812028, -0.543027,
		0.523892, 0.564520, 0.637852,
		36.074852, 35.655994, 45.030937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.525251, 39.755802, 50.069950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196417, 39.616821, 49.889526>,  <28.999117, 39.533432, 49.781273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196417, 39.616821, 49.889526>,  <29.525251, 39.755802, 50.069950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196417, 39.616821, 49.889526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569364, -0.501765, -0.651197,
		-0.000062, -0.792154, 0.610322,
		-0.822086, -0.347454, -0.451055,
		28.949791, 39.512585, 49.754211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630463, 39.014397, 49.970459>,  <29.525251, 39.755802, 50.069950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630463, 39.014397, 49.970459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349911, 39.111332, 49.702328>,  <29.181580, 39.169491, 49.541447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349911, 39.111332, 49.702328>,  <29.630463, 39.014397, 49.970459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349911, 39.111332, 49.702328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476468, -0.540051, -0.693774,
		-0.530146, -0.805987, 0.263308,
		-0.701373, 0.242344, -0.670333,
		29.139498, 39.184032, 49.501228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588999, 38.371449, 49.547077>,  <29.630463, 39.014397, 49.970459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588999, 38.371449, 49.547077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407322, 38.662743, 49.341793>,  <29.298315, 38.837521, 49.218624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407322, 38.662743, 49.341793>,  <29.588999, 38.371449, 49.547077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407322, 38.662743, 49.341793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204641, -0.475369, -0.855655,
		-0.867082, -0.493656, 0.066882,
		-0.454193, 0.728236, -0.513206,
		29.271065, 38.881214, 49.187832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185957, 38.097977, 49.029366>,  <29.588999, 38.371449, 49.547077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185957, 38.097977, 49.029366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262482, 38.468410, 48.899281>,  <29.308395, 38.690670, 48.821228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262482, 38.468410, 48.899281>,  <29.185957, 38.097977, 49.029366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262482, 38.468410, 48.899281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317115, -0.371882, -0.872434,
		-0.928891, 0.063776, -0.364821,
		0.191310, 0.926086, -0.325214,
		29.319876, 38.746235, 48.801716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983292, 38.062199, 48.330559>,  <29.185957, 38.097977, 49.029366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983292, 38.062199, 48.330559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216509, 38.387169, 48.332684>,  <29.356440, 38.582150, 48.333958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216509, 38.387169, 48.332684>,  <28.983292, 38.062199, 48.330559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216509, 38.387169, 48.332684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498453, -0.352540, -0.791998,
		-0.641566, 0.464416, -0.610501,
		0.583043, 0.812424, 0.005312,
		29.391422, 38.630898, 48.334278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002855, 38.276634, 47.685307>,  <28.983292, 38.062199, 48.330559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002855, 38.276634, 47.685307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331600, 38.429462, 47.854336>,  <29.528847, 38.521160, 47.955753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331600, 38.429462, 47.854336>,  <29.002855, 38.276634, 47.685307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331600, 38.429462, 47.854336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533289, -0.255081, -0.806558,
		-0.200368, 0.888234, -0.413393,
		0.821861, 0.382067, 0.422575,
		29.578159, 38.544083, 47.981110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417015, 38.567543, 47.155643>,  <29.002855, 38.276634, 47.685307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417015, 38.567543, 47.155643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705856, 38.543221, 47.431286>,  <29.879162, 38.528625, 47.596672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705856, 38.543221, 47.431286>,  <29.417015, 38.567543, 47.155643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705856, 38.543221, 47.431286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629618, -0.354940, -0.691086,
		0.286614, 0.932910, -0.218019,
		0.722104, -0.060806, 0.689107,
		29.922487, 38.524979, 47.638020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000654, 38.606255, 46.802135>,  <29.417015, 38.567543, 47.155643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000654, 38.606255, 46.802135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.140066, 38.495808, 47.160416>,  <30.223713, 38.429539, 47.375385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.140066, 38.495808, 47.160416>,  <30.000654, 38.606255, 46.802135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140066, 38.495808, 47.160416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724935, -0.526341, -0.444335,
		0.594135, 0.804191, 0.016723,
		0.348528, -0.276119, 0.895705,
		30.244625, 38.412971, 47.429127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775187, 38.762184, 46.811016>,  <30.000654, 38.606255, 46.802135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775187, 38.762184, 46.811016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.692200, 38.464355, 47.064812>,  <30.642406, 38.285660, 47.217087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.692200, 38.464355, 47.064812>,  <30.775187, 38.762184, 46.811016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692200, 38.464355, 47.064812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689826, -0.571234, -0.444783,
		0.693612, 0.345406, 0.632137,
		-0.207468, -0.744571, 0.634485,
		30.629959, 38.240986, 47.255157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462507, 38.511066, 47.038002>,  <30.775187, 38.762184, 46.811016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462507, 38.511066, 47.038002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193123, 38.224060, 47.109131>,  <31.031492, 38.051857, 47.151806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.193123, 38.224060, 47.109131>,  <31.462507, 38.511066, 47.038002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193123, 38.224060, 47.109131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689029, -0.696425, -0.200578,
		0.267755, -0.012559, 0.963405,
		-0.673459, -0.717520, 0.177818,
		30.991085, 38.008804, 47.162476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774801, 37.995930, 47.452251>,  <31.462507, 38.511066, 47.038002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774801, 37.995930, 47.452251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.460508, 37.812889, 47.285770>,  <31.271933, 37.703064, 47.185883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.460508, 37.812889, 47.285770>,  <31.774801, 37.995930, 47.452251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460508, 37.812889, 47.285770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599155, -0.730260, -0.328228,
		-0.153742, -0.507272, 0.847961,
		-0.785733, -0.457598, -0.416206,
		31.224789, 37.675610, 47.160908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832958, 37.238728, 47.752556>,  <31.774801, 37.995930, 47.452251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832958, 37.238728, 47.752556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.607145, 37.236710, 47.422398>,  <31.471657, 37.235497, 47.224304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.607145, 37.236710, 47.422398>,  <31.832958, 37.238728, 47.752556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607145, 37.236710, 47.422398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575444, -0.719307, -0.389181,
		-0.591748, -0.694674, 0.408979,
		-0.564535, -0.005048, -0.825394,
		31.437784, 37.235195, 47.174778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609056, 36.532097, 47.542179>,  <31.832958, 37.238728, 47.752556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609056, 36.532097, 47.542179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579584, 36.760307, 47.214993>,  <31.561901, 36.897236, 47.018681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579584, 36.760307, 47.214993>,  <31.609056, 36.532097, 47.542179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579584, 36.760307, 47.214993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473232, -0.701968, -0.532252,
		-0.877851, -0.426305, -0.218271,
		-0.073683, 0.570530, -0.817965,
		31.557480, 36.931465, 46.969604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387306, 36.117153, 47.095901>,  <31.609056, 36.532097, 47.542179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387306, 36.117153, 47.095901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.542713, 36.405701, 46.866581>,  <31.635958, 36.578831, 46.728989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.542713, 36.405701, 46.866581>,  <31.387306, 36.117153, 47.095901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542713, 36.405701, 46.866581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665875, -0.649862, -0.366456,
		-0.636920, -0.239374, -0.732825,
		0.388515, 0.721373, -0.573303,
		31.659267, 36.622112, 46.694592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926012, 35.691296, 46.737339>,  <31.387306, 36.117153, 47.095901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926012, 35.691296, 46.737339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.709223, 35.402615, 46.909576>,  <30.579149, 35.229404, 47.012917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.709223, 35.402615, 46.909576>,  <30.926012, 35.691296, 46.737339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709223, 35.402615, 46.909576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641576, 0.686258, 0.342681,
		-0.542811, -0.090533, -0.834961,
		-0.541974, -0.721702, 0.430592,
		30.546631, 35.186104, 47.038754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204426, 35.843155, 46.521835>,  <30.926012, 35.691296, 46.737339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204426, 35.843155, 46.521835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.208397, 35.636105, 46.864056>,  <30.210779, 35.511875, 47.069389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.208397, 35.636105, 46.864056>,  <30.204426, 35.843155, 46.521835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208397, 35.636105, 46.864056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782659, 0.528502, 0.328833,
		-0.622372, -0.672868, -0.399877,
		0.009925, -0.517623, 0.855551,
		30.211374, 35.480816, 47.120720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582806, 35.382080, 46.504734>,  <30.204426, 35.843155, 46.521835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582806, 35.382080, 46.504734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.698854, 35.480446, 46.874676>,  <29.768484, 35.539463, 47.096642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.698854, 35.480446, 46.874676>,  <29.582806, 35.382080, 46.504734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698854, 35.480446, 46.874676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893663, 0.415329, 0.169904,
		-0.342338, -0.875802, 0.340259,
		0.290121, 0.245913, 0.924855,
		29.785891, 35.554218, 47.152134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037245, 35.193562, 46.942070>,  <29.582806, 35.382080, 46.504734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037245, 35.193562, 46.942070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248384, 35.431644, 47.184425>,  <29.375069, 35.574493, 47.329838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248384, 35.431644, 47.184425>,  <29.037245, 35.193562, 46.942070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248384, 35.431644, 47.184425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848107, 0.407754, 0.338307,
		-0.045688, -0.692431, 0.720036,
		0.527851, 0.595211, 0.605885,
		29.406740, 35.610207, 47.366192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769524, 35.187042, 47.525860>,  <29.037245, 35.193562, 46.942070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769524, 35.187042, 47.525860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993496, 35.508911, 47.604828>,  <29.127880, 35.702034, 47.652206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993496, 35.508911, 47.604828>,  <28.769524, 35.187042, 47.525860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993496, 35.508911, 47.604828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777614, 0.428133, 0.460454,
		0.285995, -0.411338, 0.865453,
		0.559931, 0.804676, 0.197418,
		29.161476, 35.750313, 47.664055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539070, 35.391460, 48.123440>,  <28.769524, 35.187042, 47.525860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539070, 35.391460, 48.123440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697104, 35.717571, 47.954098>,  <28.791924, 35.913239, 47.852493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697104, 35.717571, 47.954098>,  <28.539070, 35.391460, 48.123440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697104, 35.717571, 47.954098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711011, 0.563194, 0.421042,
		0.581702, 0.134672, 0.802176,
		0.395079, 0.815277, -0.423364,
		28.815628, 35.962154, 47.827091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692877, 35.763458, 48.665241>,  <28.539070, 35.391460, 48.123440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692877, 35.763458, 48.665241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664850, 36.033138, 48.371155>,  <28.648033, 36.194946, 48.194702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664850, 36.033138, 48.371155>,  <28.692877, 35.763458, 48.665241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664850, 36.033138, 48.371155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704717, 0.488184, 0.514831,
		0.706021, 0.554192, 0.440915,
		-0.070067, 0.674201, -0.735217,
		28.643829, 36.235397, 48.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595804, 36.390900, 48.992146>,  <28.692877, 35.763458, 48.665241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595804, 36.390900, 48.992146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495089, 36.481701, 48.615833>,  <28.434660, 36.536182, 48.390045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495089, 36.481701, 48.615833>,  <28.595804, 36.390900, 48.992146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495089, 36.481701, 48.615833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697898, 0.630882, 0.339007,
		0.670478, 0.741929, -0.000425,
		-0.251787, 0.227001, -0.940784,
		28.419552, 36.549801, 48.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365034, 36.967796, 49.150314>,  <28.595804, 36.390900, 48.992146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365034, 36.967796, 49.150314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227213, 36.908398, 48.779537>,  <28.144520, 36.872757, 48.557072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227213, 36.908398, 48.779537>,  <28.365034, 36.967796, 49.150314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227213, 36.908398, 48.779537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859618, 0.446739, 0.247956,
		0.377282, 0.882254, -0.281578,
		-0.344552, -0.148500, -0.926947,
		28.123848, 36.863846, 48.501453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174667, 37.691135, 48.907547>,  <28.365034, 36.967796, 49.150314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174667, 37.691135, 48.907547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988815, 37.391766, 48.718239>,  <27.877304, 37.212143, 48.604652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.988815, 37.391766, 48.718239>,  <28.174667, 37.691135, 48.907547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988815, 37.391766, 48.718239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885018, 0.410214, 0.220154,
		0.029373, 0.521142, -0.852965,
		-0.464629, -0.748422, -0.473270,
		27.849426, 37.167240, 48.576260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518251, 38.023312, 48.564125>,  <28.174667, 37.691135, 48.907547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518251, 38.023312, 48.564125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.433775, 37.632343, 48.561436>,  <27.383089, 37.397762, 48.559822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.433775, 37.632343, 48.561436>,  <27.518251, 38.023312, 48.564125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433775, 37.632343, 48.561436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956574, 0.205264, 0.206961,
		-0.200908, 0.050143, -0.978326,
		-0.211193, -0.977421, -0.006727,
		27.370417, 37.339115, 48.559418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747894, 37.889889, 48.307312>,  <27.518251, 38.023312, 48.564125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747894, 37.889889, 48.307312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858740, 37.560646, 48.505589>,  <26.925247, 37.363102, 48.624554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858740, 37.560646, 48.505589>,  <26.747894, 37.889889, 48.307312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858740, 37.560646, 48.505589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887170, -0.021085, 0.460961,
		-0.368967, -0.567500, -0.736075,
		0.277116, -0.823103, 0.495689,
		26.941875, 37.313717, 48.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176188, 37.473026, 48.176529>,  <26.747894, 37.889889, 48.307312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176188, 37.473026, 48.176529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.378103, 37.375202, 48.507679>,  <26.499252, 37.316509, 48.706367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.378103, 37.375202, 48.507679>,  <26.176188, 37.473026, 48.176529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378103, 37.375202, 48.507679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777309, 0.288360, 0.559141,
		-0.375470, -0.925764, -0.044538,
		0.504789, -0.244561, 0.827875,
		26.529541, 37.301834, 48.756042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720894, 37.041389, 48.554375>,  <26.176188, 37.473026, 48.176529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720894, 37.041389, 48.554375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.980312, 37.170975, 48.829891>,  <26.135963, 37.248726, 48.995201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.980312, 37.170975, 48.829891>,  <25.720894, 37.041389, 48.554375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980312, 37.170975, 48.829891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738285, 0.047485, 0.672816,
		0.185264, -0.944875, 0.269978,
		0.648547, 0.323969, 0.688789,
		26.174877, 37.268166, 49.036530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.625916, 38.247990, 54.649155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334408, 38.086983, 54.427570>,  <32.159504, 37.990379, 54.294621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334408, 38.086983, 54.427570>,  <32.625916, 38.247990, 54.649155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334408, 38.086983, 54.427570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536111, -0.838685, -0.095877,
		-0.426005, -0.366856, 0.827004,
		-0.728770, -0.402522, -0.553960,
		32.115776, 37.966225, 54.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531044, 37.608593, 54.963779>,  <32.625916, 38.247990, 54.649155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531044, 37.608593, 54.963779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341717, 37.547329, 54.616791>,  <32.228119, 37.510571, 54.408596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341717, 37.547329, 54.616791>,  <32.531044, 37.608593, 54.963779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341717, 37.547329, 54.616791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442545, -0.892820, -0.083831,
		-0.761660, -0.423575, 0.490366,
		-0.473317, -0.153159, -0.867475,
		32.199722, 37.501381, 54.356548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367802, 36.896561, 54.971710>,  <32.531044, 37.608593, 54.963779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367802, 36.896561, 54.971710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339668, 37.006580, 54.588169>,  <32.322788, 37.072590, 54.358044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339668, 37.006580, 54.588169>,  <32.367802, 36.896561, 54.971710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339668, 37.006580, 54.588169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279666, -0.917248, -0.283625,
		-0.957518, -0.288108, -0.012403,
		-0.070338, 0.275045, -0.958855,
		32.318565, 37.089092, 54.300514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978662, 36.408138, 54.633125>,  <32.367802, 36.896561, 54.971710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978662, 36.408138, 54.633125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212475, 36.560844, 54.346748>,  <32.352764, 36.652470, 54.174923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212475, 36.560844, 54.346748>,  <31.978662, 36.408138, 54.633125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212475, 36.560844, 54.346748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257215, -0.924065, -0.282744,
		-0.769520, -0.018879, -0.638343,
		0.584533, 0.381769, -0.715943,
		32.387836, 36.675377, 54.131966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831606, 36.091576, 54.061893>,  <31.978662, 36.408138, 54.633125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831606, 36.091576, 54.061893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192661, 36.234245, 53.965538>,  <32.409294, 36.319847, 53.907726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192661, 36.234245, 53.965538>,  <31.831606, 36.091576, 54.061893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192661, 36.234245, 53.965538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178711, -0.819747, -0.544130,
		-0.391543, 0.448103, -0.803677,
		0.902638, 0.356676, -0.240885,
		32.463451, 36.341248, 53.893272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869179, 35.820839, 53.421680>,  <31.831606, 36.091576, 54.061893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869179, 35.820839, 53.421680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229210, 35.956356, 53.531281>,  <32.445229, 36.037666, 53.597042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229210, 35.956356, 53.531281>,  <31.869179, 35.820839, 53.421680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229210, 35.956356, 53.531281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434561, -0.743915, -0.507689,
		0.031835, 0.576031, -0.816808,
		0.900080, 0.338790, 0.274003,
		32.499233, 36.057995, 53.613480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212105, 35.783432, 52.866867>,  <31.869179, 35.820839, 53.421680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212105, 35.783432, 52.866867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463634, 35.765030, 53.177341>,  <32.614552, 35.753990, 53.363625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463634, 35.765030, 53.177341>,  <32.212105, 35.783432, 52.866867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463634, 35.765030, 53.177341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504358, -0.735616, -0.452207,
		0.591778, 0.675834, -0.439371,
		0.628825, -0.046006, 0.776184,
		32.652283, 35.751228, 53.410198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750656, 35.423092, 52.620770>,  <32.212105, 35.783432, 52.866867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750656, 35.423092, 52.620770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894428, 35.427601, 52.994011>,  <32.980694, 35.430305, 53.217957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.894428, 35.427601, 52.994011>,  <32.750656, 35.423092, 52.620770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894428, 35.427601, 52.994011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726911, -0.630399, -0.272391,
		0.585155, 0.776189, -0.234785,
		0.359435, 0.011277, 0.933102,
		33.002258, 35.430984, 53.273941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427296, 35.708607, 52.522015>,  <32.750656, 35.423092, 52.620770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427296, 35.708607, 52.522015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427643, 35.493942, 52.859535>,  <33.427849, 35.365143, 53.062046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427643, 35.493942, 52.859535>,  <33.427296, 35.708607, 52.522015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427643, 35.493942, 52.859535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778268, -0.529487, -0.337554,
		0.627932, 0.656992, 0.417209,
		0.000863, -0.536661, 0.843797,
		33.427902, 35.332943, 53.112675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166920, 35.705708, 52.812881>,  <33.427296, 35.708607, 52.522015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166920, 35.705708, 52.812881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950153, 35.390469, 52.929649>,  <33.820091, 35.201324, 52.999710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950153, 35.390469, 52.929649>,  <34.166920, 35.705708, 52.812881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950153, 35.390469, 52.929649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805324, -0.586293, -0.087823,
		0.240365, 0.187498, 0.952402,
		-0.541920, -0.788102, 0.291921,
		33.787579, 35.154037, 53.017227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550251, 35.578766, 53.323147>,  <34.166920, 35.705708, 52.812881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550251, 35.578766, 53.323147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342327, 35.258282, 53.204582>,  <34.217571, 35.065990, 53.133442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342327, 35.258282, 53.204582>,  <34.550251, 35.578766, 53.323147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342327, 35.258282, 53.204582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854204, -0.482851, -0.192849,
		0.011389, -0.353443, 0.935387,
		-0.519814, -0.801207, -0.296413,
		34.186382, 35.017918, 53.115658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920700, 35.076771, 53.636501>,  <34.550251, 35.578766, 53.323147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920700, 35.076771, 53.636501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710781, 34.876820, 53.360905>,  <34.584831, 34.756847, 53.195545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710781, 34.876820, 53.360905>,  <34.920700, 35.076771, 53.636501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710781, 34.876820, 53.360905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837338, -0.448780, -0.312189,
		-0.153149, -0.740754, 0.654087,
		-0.524796, -0.499880, -0.688992,
		34.553341, 34.726856, 53.154205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222935, 34.458416, 53.656158>,  <34.920700, 35.076771, 53.636501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222935, 34.458416, 53.656158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020119, 34.435001, 53.312183>,  <34.898430, 34.420952, 53.105801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020119, 34.435001, 53.312183>,  <35.222935, 34.458416, 53.656158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020119, 34.435001, 53.312183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780163, -0.455296, -0.429012,
		-0.366412, -0.888414, 0.276521,
		-0.507039, -0.058536, -0.859933,
		34.868008, 34.417442, 53.054203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255177, 33.740589, 53.405239>,  <35.222935, 34.458416, 53.656158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255177, 33.740589, 53.405239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198517, 33.976639, 53.087322>,  <35.164520, 34.118267, 52.896572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198517, 33.976639, 53.087322>,  <35.255177, 33.740589, 53.405239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198517, 33.976639, 53.087322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651258, -0.549111, -0.523774,
		-0.745519, -0.591807, -0.306539,
		-0.141649, 0.590120, -0.794792,
		35.156021, 34.153675, 52.848885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687202, 33.211246, 53.598850>,  <35.255177, 33.740589, 53.405239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687202, 33.211246, 53.598850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657455, 32.823174, 53.691132>,  <34.639606, 32.590332, 53.746502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657455, 32.823174, 53.691132>,  <34.687202, 33.211246, 53.598850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657455, 32.823174, 53.691132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758007, 0.205320, 0.619087,
		-0.647993, -0.128835, -0.750671,
		-0.074368, -0.970178, 0.230704,
		34.635143, 32.532120, 53.760342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985661, 33.026726, 53.360920>,  <34.687202, 33.211246, 53.598850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985661, 33.026726, 53.360920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134014, 32.804249, 53.658401>,  <34.223026, 32.670761, 53.836891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134014, 32.804249, 53.658401>,  <33.985661, 33.026726, 53.360920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134014, 32.804249, 53.658401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716392, 0.338243, 0.610225,
		-0.590956, -0.759104, -0.273005,
		0.370883, -0.556195, 0.743703,
		34.245277, 32.637390, 53.881512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418797, 32.683155, 53.676655>,  <33.985661, 33.026726, 53.360920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418797, 32.683155, 53.676655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710892, 32.673542, 53.949764>,  <33.886150, 32.667774, 54.113628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710892, 32.673542, 53.949764>,  <33.418797, 32.683155, 53.676655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710892, 32.673542, 53.949764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613192, 0.417614, 0.670519,
		-0.301246, -0.908307, 0.290223,
		0.730238, -0.024028, 0.682771,
		33.929962, 32.666332, 54.154594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086617, 32.298870, 54.214462>,  <33.418797, 32.683155, 53.676655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086617, 32.298870, 54.214462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381287, 32.506866, 54.387394>,  <33.558090, 32.631664, 54.491154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381287, 32.506866, 54.387394>,  <33.086617, 32.298870, 54.214462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381287, 32.506866, 54.387394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629371, 0.293331, 0.719617,
		0.247380, -0.802224, 0.543360,
		0.736678, 0.519994, 0.432332,
		33.602291, 32.662865, 54.517094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905556, 32.278339, 54.909840>,  <33.086617, 32.298870, 54.214462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905556, 32.278339, 54.909840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181549, 32.567844, 54.906147>,  <33.347145, 32.741547, 54.903931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181549, 32.567844, 54.906147>,  <32.905556, 32.278339, 54.909840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181549, 32.567844, 54.906147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548366, 0.531013, 0.646003,
		0.472454, -0.440673, 0.763279,
		0.689987, 0.723763, -0.009229,
		33.388546, 32.784973, 54.903378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046402, 32.409863, 55.643894>,  <32.905556, 32.278339, 54.909840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046402, 32.409863, 55.643894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125843, 32.715034, 55.397808>,  <33.173508, 32.898140, 55.250156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125843, 32.715034, 55.397808>,  <33.046402, 32.409863, 55.643894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125843, 32.715034, 55.397808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355551, 0.641043, 0.680181,
		0.913313, 0.083658, 0.398573,
		0.198600, 0.762932, -0.615218,
		33.185425, 32.943913, 55.213242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321072, 32.890999, 56.069263>,  <33.046402, 32.409863, 55.643894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321072, 32.890999, 56.069263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219749, 33.101891, 55.744827>,  <33.158955, 33.228424, 55.550167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219749, 33.101891, 55.744827>,  <33.321072, 32.890999, 56.069263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219749, 33.101891, 55.744827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400354, 0.706131, 0.584034,
		0.880654, 0.472663, 0.032209,
		-0.253308, 0.527227, -0.811090,
		33.143757, 33.260059, 55.501499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290207, 33.524670, 56.297558>,  <33.321072, 32.890999, 56.069263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290207, 33.524670, 56.297558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093861, 33.583233, 55.954021>,  <32.976051, 33.618370, 55.747898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093861, 33.583233, 55.954021>,  <33.290207, 33.524670, 56.297558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093861, 33.583233, 55.954021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520496, 0.741241, 0.423846,
		0.698664, 0.655077, -0.287649,
		-0.490869, 0.146405, -0.858844,
		32.946598, 33.627155, 55.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208549, 34.235603, 56.308189>,  <33.290207, 33.524670, 56.297558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208549, 34.235603, 56.308189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969482, 34.137451, 56.002884>,  <32.826042, 34.078560, 55.819698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969482, 34.137451, 56.002884>,  <33.208549, 34.235603, 56.308189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969482, 34.137451, 56.002884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583067, 0.786466, 0.203724,
		0.550294, 0.566796, -0.613122,
		-0.597670, -0.245383, -0.763268,
		32.790180, 34.063835, 55.773903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089706, 34.822769, 55.907524>,  <33.208549, 34.235603, 56.308189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089706, 34.822769, 55.907524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776001, 34.586849, 55.830524>,  <32.587776, 34.445297, 55.784325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776001, 34.586849, 55.830524>,  <33.089706, 34.822769, 55.907524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776001, 34.586849, 55.830524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620414, 0.743926, 0.248314,
		-0.003249, 0.314176, -0.949359,
		-0.784267, -0.589803, -0.192503,
		32.540722, 34.409908, 55.772774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606133, 35.262218, 55.536594>,  <33.089706, 34.822769, 55.907524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606133, 35.262218, 55.536594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394272, 34.948364, 55.665474>,  <32.267155, 34.760052, 55.742802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394272, 34.948364, 55.665474>,  <32.606133, 35.262218, 55.536594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394272, 34.948364, 55.665474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736659, 0.613817, 0.283834,
		-0.420476, -0.087016, -0.903121,
		-0.529654, -0.784638, 0.322197,
		32.235374, 34.712975, 55.762135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003780, 35.149693, 55.152260>,  <32.606133, 35.262218, 55.536594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003780, 35.149693, 55.152260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940958, 34.976254, 55.507187>,  <31.903265, 34.872192, 55.720142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940958, 34.976254, 55.507187>,  <32.003780, 35.149693, 55.152260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940958, 34.976254, 55.507187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797556, 0.585565, 0.144975,
		-0.582442, -0.684915, -0.437782,
		-0.157055, -0.433595, 0.887316,
		31.893841, 34.846176, 55.773380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357470, 35.121864, 55.231258>,  <32.003780, 35.149693, 55.152260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357470, 35.121864, 55.231258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439560, 35.043190, 55.614758>,  <31.488815, 34.995987, 55.844856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439560, 35.043190, 55.614758>,  <31.357470, 35.121864, 55.231258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439560, 35.043190, 55.614758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651932, 0.703165, 0.283802,
		-0.729978, -0.683282, 0.016085,
		0.205227, -0.196683, 0.958748,
		31.501127, 34.984184, 55.902382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697695, 35.107250, 55.577076>,  <31.357470, 35.121864, 55.231258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697695, 35.107250, 55.577076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987848, 35.197411, 55.837234>,  <31.161940, 35.251507, 55.993328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987848, 35.197411, 55.837234>,  <30.697695, 35.107250, 55.577076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987848, 35.197411, 55.837234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440866, 0.877770, 0.187500,
		-0.528635, -0.422746, 0.736091,
		0.725384, 0.225399, 0.650395,
		31.205463, 35.265030, 56.032352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994362, 34.870888, 55.714794>,  <30.697695, 35.107250, 55.577076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994362, 34.870888, 55.714794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795660, 34.895889, 55.368538>,  <29.676439, 34.910889, 55.160786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795660, 34.895889, 55.368538>,  <29.994362, 34.870888, 55.714794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795660, 34.895889, 55.368538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331252, -0.908242, -0.255674,
		-0.802188, -0.413751, 0.430470,
		-0.496756, 0.062505, -0.865637,
		29.646633, 34.914642, 55.108849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948881, 34.192932, 55.547062>,  <29.994362, 34.870888, 55.714794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948881, 34.192932, 55.547062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.849178, 34.360874, 55.197983>,  <29.789356, 34.461639, 54.988537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.849178, 34.360874, 55.197983>,  <29.948881, 34.192932, 55.547062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849178, 34.360874, 55.197983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153580, -0.872596, -0.463671,
		-0.956182, -0.249601, 0.153019,
		-0.249257, 0.419853, -0.872694,
		29.774401, 34.486832, 54.936176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340624, 33.790176, 55.153683>,  <29.948881, 34.192932, 55.547062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340624, 33.790176, 55.153683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547077, 34.000542, 54.883266>,  <29.670950, 34.126759, 54.721016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547077, 34.000542, 54.883266>,  <29.340624, 33.790176, 55.153683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547077, 34.000542, 54.883266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177701, -0.837871, -0.516134,
		-0.837871, 0.146262, -0.525909,
		0.516134, 0.525909, -0.676037,
		29.701918, 34.158314, 54.680454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155972, 33.495163, 54.454983>,  <29.340624, 33.790176, 55.153683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155972, 33.495163, 54.454983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.488176, 33.696819, 54.360252>,  <29.687500, 33.817814, 54.303413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.488176, 33.696819, 54.360252>,  <29.155972, 33.495163, 54.454983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488176, 33.696819, 54.360252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250371, -0.717701, -0.649784,
		-0.497557, 0.480358, -0.722283,
		0.830513, 0.504143, -0.236829,
		29.737329, 33.848061, 54.289204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184748, 33.588303, 53.774414>,  <29.155972, 33.495163, 54.454983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184748, 33.588303, 53.774414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.570942, 33.629654, 53.870037>,  <29.802658, 33.654465, 53.927410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.570942, 33.629654, 53.870037>,  <29.184748, 33.588303, 53.774414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570942, 33.629654, 53.870037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240284, -0.707697, -0.664401,
		0.100494, 0.698912, -0.708112,
		0.965487, 0.103379, 0.239056,
		29.860588, 33.660667, 53.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647263, 33.545914, 53.167625>,  <29.184748, 33.588303, 53.774414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647263, 33.545914, 53.167625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897730, 33.451324, 53.464809>,  <30.048010, 33.394569, 53.643120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.897730, 33.451324, 53.464809>,  <29.647263, 33.545914, 53.167625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897730, 33.451324, 53.464809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358316, -0.759033, -0.543580,
		0.692477, 0.606587, -0.390548,
		0.626167, -0.236477, 0.742963,
		30.085581, 33.380383, 53.687698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182570, 33.381275, 52.814049>,  <29.647263, 33.545914, 53.167625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182570, 33.381275, 52.814049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.263109, 33.205139, 53.164036>,  <30.311432, 33.099457, 53.374027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.263109, 33.205139, 53.164036>,  <30.182570, 33.381275, 52.814049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263109, 33.205139, 53.164036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395106, -0.780854, -0.483899,
		0.896298, 0.443135, 0.016757,
		0.201348, -0.440339, 0.874963,
		30.323513, 33.073036, 53.426525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913376, 33.167946, 52.787331>,  <30.182570, 33.381275, 52.814049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913376, 33.167946, 52.787331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769814, 32.956581, 53.095089>,  <30.683676, 32.829762, 53.279743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.769814, 32.956581, 53.095089>,  <30.913376, 33.167946, 52.787331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769814, 32.956581, 53.095089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382818, -0.835130, -0.394979,
		0.851256, 0.152779, 0.502017,
		-0.358905, -0.528410, 0.769396,
		30.662142, 32.798058, 53.325909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378012, 32.696537, 53.140007>,  <30.913376, 33.167946, 52.787331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378012, 32.696537, 53.140007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019152, 32.519848, 53.139576>,  <30.803835, 32.413834, 53.139317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019152, 32.519848, 53.139576>,  <31.378012, 32.696537, 53.140007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019152, 32.519848, 53.139576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413548, -0.839066, -0.353477,
		0.155235, -0.317568, 0.935443,
		-0.897151, -0.441723, -0.001078,
		30.750006, 32.387333, 53.139252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523527, 32.070850, 53.587372>,  <31.378012, 32.696537, 53.140007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523527, 32.070850, 53.587372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190744, 32.019611, 53.371433>,  <30.991074, 31.988869, 53.241871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.190744, 32.019611, 53.371433>,  <31.523527, 32.070850, 53.587372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190744, 32.019611, 53.371433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214228, -0.971694, -0.099581,
		-0.511813, -0.198498, 0.835850,
		-0.831958, -0.128095, -0.539850,
		30.941156, 31.981182, 53.209476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258160, 31.509424, 53.723927>,  <31.523527, 32.070850, 53.587372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258160, 31.509424, 53.723927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.098478, 31.562643, 53.361065>,  <31.002670, 31.594574, 53.143349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.098478, 31.562643, 53.361065>,  <31.258160, 31.509424, 53.723927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098478, 31.562643, 53.361065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225419, -0.944804, -0.237764,
		-0.888720, -0.299406, 0.347179,
		-0.399204, 0.133045, -0.907158,
		30.978718, 31.602556, 53.088917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800808, 30.947586, 53.581818>,  <31.258160, 31.509424, 53.723927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800808, 30.947586, 53.581818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.929338, 31.097624, 53.234013>,  <31.006456, 31.187647, 53.025330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.929338, 31.097624, 53.234013>,  <30.800808, 30.947586, 53.581818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929338, 31.097624, 53.234013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291484, -0.912803, -0.286054,
		-0.900991, -0.161532, -0.402644,
		0.321328, 0.375096, -0.869512,
		31.025736, 31.210154, 52.973160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684328, 30.336536, 52.999981>,  <30.800808, 30.947586, 53.581818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684328, 30.336536, 52.999981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924070, 30.602221, 52.821274>,  <31.067915, 30.761631, 52.714050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924070, 30.602221, 52.821274>,  <30.684328, 30.336536, 52.999981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924070, 30.602221, 52.821274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507293, -0.746903, -0.429872,
		-0.619214, 0.031006, -0.784610,
		0.599356, 0.664210, -0.446764,
		31.103876, 30.801483, 52.687244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659229, 30.135365, 52.292084>,  <30.684328, 30.336536, 52.999981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659229, 30.135365, 52.292084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987095, 30.364323, 52.301155>,  <31.183815, 30.501698, 52.306599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.987095, 30.364323, 52.301155>,  <30.659229, 30.135365, 52.292084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987095, 30.364323, 52.301155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417873, -0.570378, -0.707143,
		-0.391830, 0.589097, -0.706707,
		0.819666, 0.572393, 0.022677,
		31.232994, 30.536041, 52.307957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.280119, 36.942154, 49.345135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.609827, 37.157070, 49.416569>,  <25.807652, 37.286022, 49.459427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.609827, 37.157070, 49.416569>,  <25.280119, 36.942154, 49.345135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609827, 37.157070, 49.416569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361383, 0.256443, 0.896459,
		0.435867, -0.803462, 0.405548,
		0.824271, 0.537295, 0.178582,
		25.857109, 37.318260, 49.470142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449991, 36.703743, 49.918674>,  <25.280119, 36.942154, 49.345135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449991, 36.703743, 49.918674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.647835, 37.051193, 49.907009>,  <25.766541, 37.259663, 49.900009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.647835, 37.051193, 49.907009>,  <25.449991, 36.703743, 49.918674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647835, 37.051193, 49.907009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294848, 0.199267, 0.934536,
		0.817575, -0.453629, 0.354672,
		0.494607, 0.868627, -0.029164,
		25.796217, 37.311783, 49.898258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915400, 36.846302, 50.521660>,  <25.449991, 36.703743, 49.918674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915400, 36.846302, 50.521660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.817465, 37.205589, 50.375645>,  <25.758705, 37.421162, 50.288036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.817465, 37.205589, 50.375645>,  <25.915400, 36.846302, 50.521660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817465, 37.205589, 50.375645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356134, 0.266866, 0.895517,
		0.901790, 0.349257, 0.254549,
		-0.244835, 0.898222, -0.365039,
		25.744015, 37.475056, 50.266132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990829, 37.303719, 51.093193>,  <25.915400, 36.846302, 50.521660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990829, 37.303719, 51.093193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.846636, 37.596264, 50.861622>,  <25.760120, 37.771793, 50.722679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.846636, 37.596264, 50.861622>,  <25.990829, 37.303719, 51.093193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846636, 37.596264, 50.861622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027792, 0.611957, 0.790402,
		0.932351, 0.301017, -0.200275,
		-0.360484, 0.731366, -0.578925,
		25.738491, 37.815674, 50.687943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464184, 37.910130, 51.204922>,  <25.990829, 37.303719, 51.093193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464184, 37.910130, 51.204922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.108839, 38.034561, 51.069839>,  <25.895632, 38.109219, 50.988792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.108839, 38.034561, 51.069839>,  <26.464184, 37.910130, 51.204922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108839, 38.034561, 51.069839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002855, 0.739237, 0.673439,
		0.459132, 0.597295, -0.657599,
		-0.888363, 0.311075, -0.337703,
		25.842331, 38.127884, 50.968529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419914, 38.571011, 51.406540>,  <26.464184, 37.910130, 51.204922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419914, 38.571011, 51.406540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.036533, 38.477055, 51.341801>,  <25.806505, 38.420681, 51.302956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.036533, 38.477055, 51.341801>,  <26.419914, 38.571011, 51.406540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036533, 38.477055, 51.341801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280828, 0.677479, 0.679822,
		-0.050029, 0.697031, -0.715294,
		-0.958453, -0.234885, -0.161852,
		25.748997, 38.406590, 51.293243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044188, 39.294472, 51.491608>,  <26.419914, 38.571011, 51.406540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044188, 39.294472, 51.491608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.772552, 39.003941, 51.534111>,  <25.609571, 38.829620, 51.559612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.772552, 39.003941, 51.534111>,  <26.044188, 39.294472, 51.491608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772552, 39.003941, 51.534111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447429, 0.524314, 0.724502,
		-0.581936, 0.444458, -0.681034,
		-0.679086, -0.726328, 0.106254,
		25.568827, 38.786041, 51.565987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403357, 39.650742, 51.343964>,  <26.044188, 39.294472, 51.491608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403357, 39.650742, 51.343964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.359711, 39.333374, 51.583488>,  <25.333523, 39.142952, 51.727203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.359711, 39.333374, 51.583488>,  <25.403357, 39.650742, 51.343964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359711, 39.333374, 51.583488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325205, 0.597750, 0.732759,
		-0.939327, -0.114783, -0.323248,
		-0.109113, -0.793423, 0.598811,
		25.326977, 39.095348, 51.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716316, 39.815243, 51.712074>,  <25.403357, 39.650742, 51.343964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716316, 39.815243, 51.712074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.871763, 39.508274, 51.916050>,  <24.965033, 39.324093, 52.038433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.871763, 39.508274, 51.916050>,  <24.716316, 39.815243, 51.712074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871763, 39.508274, 51.916050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378112, 0.371865, 0.847790,
		-0.840242, -0.522281, -0.145658,
		0.388619, -0.767424, 0.509937,
		24.988350, 39.278046, 52.069031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284609, 39.535202, 52.261608>,  <24.716316, 39.815243, 51.712074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284609, 39.535202, 52.261608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.651665, 39.443428, 52.391407>,  <24.871899, 39.388363, 52.469288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.651665, 39.443428, 52.391407>,  <24.284609, 39.535202, 52.261608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651665, 39.443428, 52.391407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260652, 0.268910, 0.927226,
		-0.299997, -0.935440, 0.186960,
		0.917639, -0.229433, 0.324497,
		24.926956, 39.374599, 52.488754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.187309, 38.992565, 52.790810>,  <24.284609, 39.535202, 52.261608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.187309, 38.992565, 52.790810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.552340, 39.138233, 52.865204>,  <24.771357, 39.225632, 52.909840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.552340, 39.138233, 52.865204>,  <24.187309, 38.992565, 52.790810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.552340, 39.138233, 52.865204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277764, 0.218266, 0.935525,
		0.300094, -0.905396, 0.300336,
		0.912574, 0.364168, 0.185986,
		24.826113, 39.247482, 52.921001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.139179, 39.010742, 53.436386>,  <24.187309, 38.992565, 52.790810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.139179, 39.010742, 53.436386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.499811, 39.181145, 53.406254>,  <24.716190, 39.283386, 53.388176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.499811, 39.181145, 53.406254>,  <24.139179, 39.010742, 53.436386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499811, 39.181145, 53.406254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085199, 0.345555, 0.934523,
		0.424143, -0.836128, 0.347840,
		0.901578, 0.426007, -0.075328,
		24.770285, 39.308945, 53.383656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408560, 39.017384, 54.134331>,  <24.139179, 39.010742, 53.436386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408560, 39.017384, 54.134331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.603884, 39.313805, 53.949986>,  <24.721079, 39.491657, 53.839378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.603884, 39.313805, 53.949986>,  <24.408560, 39.017384, 54.134331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603884, 39.313805, 53.949986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083080, 0.486232, 0.869871,
		0.868706, -0.463056, 0.175866,
		0.488311, 0.741052, -0.460863,
		24.750378, 39.536121, 53.811726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205166, 39.102642, 54.267159>,  <24.408560, 39.017384, 54.134331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205166, 39.102642, 54.267159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.251333, 39.210236, 54.649639>,  <25.279034, 39.274792, 54.879128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.251333, 39.210236, 54.649639>,  <25.205166, 39.102642, 54.267159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251333, 39.210236, 54.649639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738354, -0.667173, 0.098553,
		0.664463, 0.694643, -0.275608,
		0.115419, 0.268981, 0.956205,
		25.285959, 39.290932, 54.936501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927368, 39.199093, 54.323544>,  <25.205166, 39.102642, 54.267159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927368, 39.199093, 54.323544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.754976, 39.104984, 54.672005>,  <25.651541, 39.048519, 54.881081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.754976, 39.104984, 54.672005>,  <25.927368, 39.199093, 54.323544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754976, 39.104984, 54.672005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755302, -0.622289, 0.205608,
		0.493734, 0.746595, 0.445896,
		-0.430982, -0.235270, 0.871150,
		25.625681, 39.034405, 54.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499023, 39.159168, 54.700665>,  <25.927368, 39.199093, 54.323544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499023, 39.159168, 54.700665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.229315, 38.956676, 54.915730>,  <26.067490, 38.835182, 55.044769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.229315, 38.956676, 54.915730>,  <26.499023, 39.159168, 54.700665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229315, 38.956676, 54.915730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673707, -0.719856, 0.167111,
		0.302445, 0.474908, 0.826431,
		-0.674274, -0.506231, 0.537666,
		26.027033, 38.804806, 55.077030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823450, 38.993122, 55.298454>,  <26.499023, 39.159168, 54.700665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823450, 38.993122, 55.298454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.526379, 38.726135, 55.276878>,  <26.348135, 38.565941, 55.263935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.526379, 38.726135, 55.276878>,  <26.823450, 38.993122, 55.298454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526379, 38.726135, 55.276878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656996, -0.741865, 0.134131,
		-0.129543, 0.064180, 0.989495,
		-0.742680, -0.667470, -0.053938,
		26.303574, 38.525894, 55.260696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975929, 38.585152, 55.902439>,  <26.823450, 38.993122, 55.298454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975929, 38.585152, 55.902439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.737478, 38.364986, 55.668625>,  <26.594408, 38.232887, 55.528336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.737478, 38.364986, 55.668625>,  <26.975929, 38.585152, 55.902439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737478, 38.364986, 55.668625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435564, -0.833294, 0.340447,
		-0.674475, -0.051652, 0.736488,
		-0.596127, -0.550411, -0.584534,
		26.558640, 38.199863, 55.493263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925476, 37.919521, 56.263020>,  <26.975929, 38.585152, 55.902439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925476, 37.919521, 56.263020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.864630, 37.871250, 55.870632>,  <26.828121, 37.842289, 55.635201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.864630, 37.871250, 55.870632>,  <26.925476, 37.919521, 56.263020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864630, 37.871250, 55.870632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563196, -0.826199, 0.014302,
		-0.812201, -0.550302, 0.193641,
		-0.152116, -0.120674, -0.980968,
		26.818995, 37.835049, 55.576344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704424, 37.239132, 56.188412>,  <26.925476, 37.919521, 56.263020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704424, 37.239132, 56.188412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.829334, 37.348331, 55.824444>,  <26.904280, 37.413853, 55.606064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.829334, 37.348331, 55.824444>,  <26.704424, 37.239132, 56.188412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829334, 37.348331, 55.824444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606883, -0.794224, -0.030013,
		-0.730874, -0.542843, -0.413696,
		0.312276, 0.273001, -0.909920,
		26.923018, 37.430233, 55.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783199, 36.566071, 55.786186>,  <26.704424, 37.239132, 56.188412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783199, 36.566071, 55.786186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.985476, 36.841145, 55.577812>,  <27.106840, 37.006187, 55.452789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.985476, 36.841145, 55.577812>,  <26.783199, 36.566071, 55.786186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985476, 36.841145, 55.577812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663876, -0.695806, -0.274084,
		-0.550952, -0.207234, -0.808397,
		0.505689, 0.687683, -0.520933,
		27.137182, 37.047451, 55.421532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955343, 36.095375, 55.245644>,  <26.783199, 36.566071, 55.786186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955343, 36.095375, 55.245644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.210253, 36.403629, 55.245232>,  <27.363199, 36.588581, 55.244984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.210253, 36.403629, 55.245232>,  <26.955343, 36.095375, 55.245644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210253, 36.403629, 55.245232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734299, -0.607631, -0.302639,
		-0.233850, 0.192108, -0.953105,
		0.637275, 0.770636, -0.001030,
		27.401436, 36.634819, 55.244923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246477, 35.871590, 54.763912>,  <26.955343, 36.095375, 55.245644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246477, 35.871590, 54.763912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.492647, 36.153721, 54.904636>,  <27.640348, 36.322998, 54.989071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.492647, 36.153721, 54.904636>,  <27.246477, 35.871590, 54.763912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492647, 36.153721, 54.904636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772794, -0.627762, -0.093294,
		0.155051, 0.329293, -0.931410,
		0.615425, 0.705323, 0.351811,
		27.677275, 36.365318, 55.010181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812546, 35.934719, 54.328545>,  <27.246477, 35.871590, 54.763912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812546, 35.934719, 54.328545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.984970, 36.104610, 54.646988>,  <28.088425, 36.206547, 54.838055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.984970, 36.104610, 54.646988>,  <27.812546, 35.934719, 54.328545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984970, 36.104610, 54.646988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774586, -0.626725, -0.085044,
		0.462820, 0.653314, -0.599148,
		0.431061, 0.424731, 0.796109,
		28.114288, 36.232029, 54.885822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534950, 36.236404, 54.158752>,  <27.812546, 35.934719, 54.328545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534950, 36.236404, 54.158752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.499809, 36.187389, 54.554180>,  <28.478725, 36.157982, 54.791435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.499809, 36.187389, 54.554180>,  <28.534950, 36.236404, 54.158752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499809, 36.187389, 54.554180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731011, -0.682085, -0.019581,
		0.676687, 0.720934, 0.149497,
		-0.087853, -0.122534, 0.988568,
		28.473454, 36.150627, 54.850750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300594, 36.313763, 54.343971>,  <28.534950, 36.236404, 54.158752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300594, 36.313763, 54.343971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.098383, 36.105122, 54.618889>,  <28.977057, 35.979939, 54.783840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.098383, 36.105122, 54.618889>,  <29.300594, 36.313763, 54.343971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098383, 36.105122, 54.618889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656987, -0.749067, -0.085244,
		0.559294, 0.408452, 0.721358,
		-0.505527, -0.521600, 0.687296,
		28.946724, 35.948643, 54.825077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770800, 36.213837, 54.830505>,  <29.300594, 36.313763, 54.343971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770800, 36.213837, 54.830505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.494505, 35.936317, 54.912014>,  <29.328728, 35.769806, 54.960918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.494505, 35.936317, 54.912014>,  <29.770800, 36.213837, 54.830505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494505, 35.936317, 54.912014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722688, -0.671929, 0.161970,
		0.024542, 0.259139, 0.965528,
		-0.690739, -0.693800, 0.203767,
		29.287283, 35.728176, 54.973145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020199, 35.796093, 55.461639>,  <29.770800, 36.213837, 54.830505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020199, 35.796093, 55.461639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767601, 35.568943, 55.250462>,  <29.616041, 35.432652, 55.123753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767601, 35.568943, 55.250462>,  <30.020199, 35.796093, 55.461639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767601, 35.568943, 55.250462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728283, -0.668093, -0.152501,
		-0.266116, -0.480799, 0.835473,
		-0.631496, -0.567877, -0.527948,
		29.578152, 35.398579, 55.092079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266468, 35.538094, 56.136894>,  <30.020199, 35.796093, 55.461639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266468, 35.538094, 56.136894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.647795, 35.628666, 56.216812>,  <30.876591, 35.683010, 56.264763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.647795, 35.628666, 56.216812>,  <30.266468, 35.538094, 56.136894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647795, 35.628666, 56.216812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250224, 0.962707, 0.102876,
		-0.169047, -0.148067, 0.974423,
		0.953316, 0.226433, 0.199792,
		30.933790, 35.696594, 56.276749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211351, 35.843796, 56.856808>,  <30.266468, 35.538094, 56.136894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211351, 35.843796, 56.856808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.532890, 35.973450, 56.657303>,  <30.725813, 36.051243, 56.537601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.532890, 35.973450, 56.657303>,  <30.211351, 35.843796, 56.856808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532890, 35.973450, 56.657303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263921, 0.945787, 0.189292,
		0.533081, -0.020527, 0.845815,
		0.803847, 0.324136, -0.498763,
		30.774044, 36.070690, 56.507675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417496, 36.362663, 57.253231>,  <30.211351, 35.843796, 56.856808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417496, 36.362663, 57.253231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.631142, 36.440208, 56.924076>,  <30.759329, 36.486736, 56.726585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.631142, 36.440208, 56.924076>,  <30.417496, 36.362663, 57.253231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631142, 36.440208, 56.924076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075393, 0.980398, 0.182030,
		0.842043, -0.035185, 0.538262,
		0.534116, 0.193858, -0.822885,
		30.791376, 36.498367, 56.677212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884207, 36.918568, 57.512779>,  <30.417496, 36.362663, 57.253231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884207, 36.918568, 57.512779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.860521, 36.937012, 57.113907>,  <30.846310, 36.948078, 56.874584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.860521, 36.937012, 57.113907>,  <30.884207, 36.918568, 57.512779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860521, 36.937012, 57.113907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097952, 0.993843, 0.051775,
		0.993428, 0.100741, -0.054332,
		-0.059213, 0.046113, -0.997180,
		30.842758, 36.950844, 56.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043005, 37.645203, 57.383411>,  <30.884207, 36.918568, 57.512779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043005, 37.645203, 57.383411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.866228, 37.505444, 57.052933>,  <30.760162, 37.421589, 56.854645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.866228, 37.505444, 57.052933>,  <31.043005, 37.645203, 57.383411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866228, 37.505444, 57.052933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426055, 0.892269, -0.149441,
		0.789407, 0.285961, -0.543197,
		-0.441944, -0.349402, -0.826199,
		30.733644, 37.400623, 56.805073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029007, 38.312798, 56.913609>,  <31.043005, 37.645203, 57.383411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029007, 38.312798, 56.913609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.766125, 38.064812, 56.742157>,  <30.608397, 37.916019, 56.639286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.766125, 38.064812, 56.742157>,  <31.029007, 38.312798, 56.913609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766125, 38.064812, 56.742157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436043, 0.776606, -0.454698,
		0.614775, -0.111927, -0.780720,
		-0.657205, -0.619964, -0.428633,
		30.568964, 37.878822, 56.613567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992916, 38.499001, 56.195312>,  <31.029007, 38.312798, 56.913609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992916, 38.499001, 56.195312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.658281, 38.290665, 56.263248>,  <30.457500, 38.165665, 56.304008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.658281, 38.290665, 56.263248>,  <30.992916, 38.499001, 56.195312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658281, 38.290665, 56.263248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524915, 0.673371, -0.520610,
		0.156790, -0.524687, -0.836732,
		-0.836589, -0.520840, 0.169838,
		30.407305, 38.134411, 56.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611654, 39.006908, 55.775906>,  <30.992916, 38.499001, 56.195312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611654, 39.006908, 55.775906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.654085, 39.380295, 55.638859>,  <30.679543, 39.604328, 55.556629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.654085, 39.380295, 55.638859>,  <30.611654, 39.006908, 55.775906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654085, 39.380295, 55.638859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190389, -0.357252, -0.914398,
		-0.975961, 0.031766, -0.215618,
		0.106076, 0.933468, -0.342616,
		30.685907, 39.660336, 55.536076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123495, 39.146500, 55.180984>,  <30.611654, 39.006908, 55.775906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123495, 39.146500, 55.180984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455444, 39.369545, 55.173138>,  <30.654613, 39.503372, 55.168430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455444, 39.369545, 55.173138>,  <30.123495, 39.146500, 55.180984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455444, 39.369545, 55.173138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332718, -0.522780, -0.784857,
		-0.447898, 0.644804, -0.619367,
		0.829871, 0.557610, -0.019614,
		30.704405, 39.536827, 55.167252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299900, 39.278160, 54.537464>,  <30.123495, 39.146500, 55.180984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299900, 39.278160, 54.537464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.659399, 39.325291, 54.706398>,  <30.875099, 39.353569, 54.807758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.659399, 39.325291, 54.706398>,  <30.299900, 39.278160, 54.537464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659399, 39.325291, 54.706398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401592, -0.607832, -0.685029,
		0.175993, 0.785275, -0.593607,
		0.898750, 0.117827, 0.422334,
		30.929024, 39.360638, 54.833099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746458, 39.268776, 53.939491>,  <30.299900, 39.278160, 54.537464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746458, 39.268776, 53.939491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993341, 39.209625, 54.248604>,  <31.141472, 39.174133, 54.434071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993341, 39.209625, 54.248604>,  <30.746458, 39.268776, 53.939491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993341, 39.209625, 54.248604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627118, -0.500696, -0.596679,
		0.475163, 0.852899, -0.216297,
		0.617206, -0.147876, 0.772780,
		31.178503, 39.165264, 54.480438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396490, 39.288174, 53.658291>,  <30.746458, 39.268776, 53.939491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396490, 39.288174, 53.658291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418364, 39.097229, 54.009090>,  <31.431488, 38.982662, 54.219570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418364, 39.097229, 54.009090>,  <31.396490, 39.288174, 53.658291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418364, 39.097229, 54.009090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694177, -0.613159, -0.377033,
		0.717724, 0.629412, 0.297845,
		0.054683, -0.477363, 0.877003,
		31.434769, 38.954021, 54.272190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074409, 39.117962, 53.656963>,  <31.396490, 39.288174, 53.658291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074409, 39.117962, 53.656963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.898478, 38.883247, 53.928917>,  <31.792919, 38.742420, 54.092087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.898478, 38.883247, 53.928917>,  <32.074409, 39.117962, 53.656963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898478, 38.883247, 53.928917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533379, -0.779731, -0.327912,
		0.722538, 0.218410, 0.655924,
		-0.439825, -0.586785, 0.679880,
		31.766529, 38.707211, 54.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546856, 38.769070, 54.155201>,  <32.074409, 39.117962, 53.656963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546856, 38.769070, 54.155201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.218361, 38.541080, 54.165787>,  <32.021263, 38.404285, 54.172138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.218361, 38.541080, 54.165787>,  <32.546856, 38.769070, 54.155201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218361, 38.541080, 54.165787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552173, -0.805565, -0.214872,
		0.143787, -0.161850, 0.976284,
		-0.821237, -0.569973, 0.026461,
		31.971991, 38.370087, 54.173725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<25.943174, 42.054493, 52.697563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809578, 41.680458, 52.745007>,  <25.729420, 41.456039, 52.773472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809578, 41.680458, 52.745007>,  <25.943174, 42.054493, 52.697563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809578, 41.680458, 52.745007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796583, -0.347287, -0.494820,
		0.503891, -0.070782, 0.860862,
		-0.333991, -0.935084, 0.118611,
		25.709381, 41.399933, 52.780590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503302, 41.763519, 52.965958>,  <25.943174, 42.054493, 52.697563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503302, 41.763519, 52.965958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276157, 41.487671, 52.786198>,  <26.139872, 41.322163, 52.678341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276157, 41.487671, 52.786198>,  <26.503302, 41.763519, 52.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276157, 41.487671, 52.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823072, -0.469505, -0.319558,
		0.009378, -0.551353, 0.834219,
		-0.567860, -0.689619, -0.449400,
		26.105799, 41.280785, 52.651379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993231, 41.249413, 52.929150>,  <26.503302, 41.763519, 52.965958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993231, 41.249413, 52.929150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698658, 41.154697, 52.675663>,  <26.521914, 41.097866, 52.523571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698658, 41.154697, 52.675663>,  <26.993231, 41.249413, 52.929150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698658, 41.154697, 52.675663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638106, -0.554261, -0.534430,
		-0.224697, -0.797950, 0.559273,
		-0.736432, -0.236791, -0.633718,
		26.477728, 41.083660, 52.485546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196411, 40.549309, 52.831207>,  <26.993231, 41.249413, 52.929150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196411, 40.549309, 52.831207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962351, 40.691101, 52.539471>,  <26.821915, 40.776176, 52.364429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962351, 40.691101, 52.539471>,  <27.196411, 40.549309, 52.831207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962351, 40.691101, 52.539471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554399, -0.481510, -0.678816,
		-0.591812, -0.801557, 0.085233,
		-0.585150, 0.354479, -0.729345,
		26.786806, 40.797443, 52.320667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958941, 39.985023, 52.451546>,  <27.196411, 40.549309, 52.831207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958941, 39.985023, 52.451546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928566, 40.284233, 52.187820>,  <26.910341, 40.463760, 52.029587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928566, 40.284233, 52.187820>,  <26.958941, 39.985023, 52.451546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928566, 40.284233, 52.187820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398108, -0.583488, -0.707850,
		-0.914190, -0.316227, -0.253489,
		-0.075934, 0.748026, -0.659311,
		26.905787, 40.508640, 51.990028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807844, 39.585350, 51.810066>,  <26.958941, 39.985023, 52.451546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807844, 39.585350, 51.810066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926075, 39.957523, 51.723415>,  <26.997013, 40.180828, 51.671425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926075, 39.957523, 51.723415>,  <26.807844, 39.585350, 51.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926075, 39.957523, 51.723415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514214, -0.346062, -0.784746,
		-0.805121, 0.120557, -0.580729,
		0.295575, 0.930434, -0.216629,
		27.014748, 40.236652, 51.658428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703154, 39.601006, 51.134579>,  <26.807844, 39.585350, 51.810066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703154, 39.601006, 51.134579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954010, 39.900414, 51.220749>,  <27.104523, 40.080059, 51.272449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954010, 39.900414, 51.220749>,  <26.703154, 39.601006, 51.134579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954010, 39.900414, 51.220749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574100, -0.257293, -0.777309,
		-0.526408, 0.611156, -0.591087,
		0.627140, 0.748524, 0.215424,
		27.142153, 40.124969, 51.285378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803751, 39.947346, 50.496632>,  <26.703154, 39.601006, 51.134579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803751, 39.947346, 50.496632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119862, 40.063293, 50.712574>,  <27.309528, 40.132862, 50.842140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119862, 40.063293, 50.712574>,  <26.803751, 39.947346, 50.496632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119862, 40.063293, 50.712574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575331, -0.047853, -0.816520,
		-0.210851, 0.955869, -0.204588,
		0.790276, 0.289869, 0.539851,
		27.356945, 40.150253, 50.874531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178459, 40.341476, 50.040768>,  <26.803751, 39.947346, 50.496632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178459, 40.341476, 50.040768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429441, 40.256252, 50.340343>,  <27.580030, 40.205116, 50.520088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429441, 40.256252, 50.340343>,  <27.178459, 40.341476, 50.040768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429441, 40.256252, 50.340343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709838, -0.238825, -0.662641,
		0.320049, 0.947400, 0.001388,
		0.627454, -0.213063, 0.748936,
		27.617678, 40.192333, 50.565025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775497, 40.647243, 49.888279>,  <27.178459, 40.341476, 50.040768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775497, 40.647243, 49.888279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850025, 40.328632, 50.118347>,  <27.894741, 40.137466, 50.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850025, 40.328632, 50.118347>,  <27.775497, 40.647243, 49.888279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850025, 40.328632, 50.118347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741795, -0.269818, -0.613953,
		0.644225, 0.541051, 0.540591,
		0.186318, -0.796531, 0.575172,
		27.905920, 40.089672, 50.290897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549942, 40.615864, 49.925709>,  <27.775497, 40.647243, 49.888279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549942, 40.615864, 49.925709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410591, 40.253284, 50.021198>,  <28.326981, 40.035736, 50.078491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410591, 40.253284, 50.021198>,  <28.549942, 40.615864, 49.925709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410591, 40.253284, 50.021198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556842, -0.405003, -0.725189,
		0.754029, -0.119706, 0.645841,
		-0.348377, -0.906445, 0.238727,
		28.306078, 39.981350, 50.092815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154064, 40.385193, 49.899044>,  <28.549942, 40.615864, 49.925709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154064, 40.385193, 49.899044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886486, 40.087894, 49.902912>,  <28.725939, 39.909515, 49.905235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886486, 40.087894, 49.902912>,  <29.154064, 40.385193, 49.899044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886486, 40.087894, 49.902912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620494, -0.565534, -0.543285,
		0.409268, -0.357424, 0.839493,
		-0.668945, -0.743249, 0.009675,
		28.685802, 39.864922, 49.905815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563965, 40.954247, 50.155312>,  <29.154064, 40.385193, 49.899044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563965, 40.954247, 50.155312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907227, 41.137711, 50.247574>,  <30.113184, 41.247787, 50.302933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907227, 41.137711, 50.247574>,  <29.563965, 40.954247, 50.155312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907227, 41.137711, 50.247574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424094, 0.380114, 0.821984,
		0.289329, -0.803212, 0.520710,
		0.858157, 0.458654, 0.230659,
		30.164673, 41.275307, 50.316772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486147, 40.982220, 50.801960>,  <29.563965, 40.954247, 50.155312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486147, 40.982220, 50.801960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794605, 41.231537, 50.750050>,  <29.979679, 41.381126, 50.718903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794605, 41.231537, 50.750050>,  <29.486147, 40.982220, 50.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794605, 41.231537, 50.750050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151024, 0.377106, 0.913774,
		0.618489, -0.685052, 0.384935,
		0.771144, 0.623294, -0.129777,
		30.025948, 41.418526, 50.711117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896084, 40.995632, 51.419006>,  <29.486147, 40.982220, 50.801960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896084, 40.995632, 51.419006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962360, 41.341190, 51.228756>,  <30.002127, 41.548527, 51.114605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962360, 41.341190, 51.228756>,  <29.896084, 40.995632, 51.419006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962360, 41.341190, 51.228756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176210, 0.500470, 0.847632,
		0.970308, -0.056634, 0.235150,
		0.165690, 0.863900, -0.475630,
		30.012068, 41.600361, 51.086067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271242, 41.362411, 51.817360>,  <29.896084, 40.995632, 51.419006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271242, 41.362411, 51.817360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127596, 41.666409, 51.600674>,  <30.041409, 41.848804, 51.470661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127596, 41.666409, 51.600674>,  <30.271242, 41.362411, 51.817360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127596, 41.666409, 51.600674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215699, 0.497131, 0.840437,
		0.908026, 0.418660, -0.014598,
		-0.359114, 0.759990, -0.541712,
		30.019861, 41.894405, 51.438160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448984, 41.852802, 52.207081>,  <30.271242, 41.362411, 51.817360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448984, 41.852802, 52.207081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180820, 42.021896, 51.963165>,  <30.019922, 42.123352, 51.816814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180820, 42.021896, 51.963165>,  <30.448984, 41.852802, 52.207081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180820, 42.021896, 51.963165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179073, 0.705352, 0.685865,
		0.720058, 0.569008, -0.397174,
		-0.670410, 0.422739, -0.609789,
		29.979698, 42.148720, 51.780228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413761, 42.567524, 52.363346>,  <30.448984, 41.852802, 52.207081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413761, 42.567524, 52.363346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055696, 42.514729, 52.193047>,  <29.840857, 42.483051, 52.090866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055696, 42.514729, 52.193047>,  <30.413761, 42.567524, 52.363346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055696, 42.514729, 52.193047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422161, 0.557571, 0.714769,
		0.143046, 0.819569, -0.554837,
		-0.895164, -0.131986, -0.425748,
		29.787148, 42.475132, 52.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169710, 43.228504, 52.185383>,  <30.413761, 42.567524, 52.363346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169710, 43.228504, 52.185383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845537, 42.995346, 52.208809>,  <29.651033, 42.855450, 52.222862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845537, 42.995346, 52.208809>,  <30.169710, 43.228504, 52.185383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845537, 42.995346, 52.208809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371932, 0.589182, 0.717308,
		-0.452620, 0.559549, -0.694291,
		-0.810433, -0.582897, 0.058562,
		29.602407, 42.820477, 52.226376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559874, 43.669937, 52.308693>,  <30.169710, 43.228504, 52.185383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559874, 43.669937, 52.308693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445820, 43.296345, 52.394833>,  <29.377388, 43.072189, 52.446514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445820, 43.296345, 52.394833>,  <29.559874, 43.669937, 52.308693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445820, 43.296345, 52.394833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524670, 0.340113, 0.780413,
		-0.802135, 0.109536, -0.587011,
		-0.285133, -0.933984, 0.215346,
		29.360279, 43.016151, 52.459435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855648, 43.771378, 52.409294>,  <29.559874, 43.669937, 52.308693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855648, 43.771378, 52.409294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949213, 43.416370, 52.568089>,  <29.005352, 43.203365, 52.663364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949213, 43.416370, 52.568089>,  <28.855648, 43.771378, 52.409294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949213, 43.416370, 52.568089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507111, 0.237002, 0.828654,
		-0.829532, -0.395148, -0.394633,
		0.233912, -0.887518, 0.396985,
		29.019386, 43.150116, 52.687183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254347, 43.477436, 52.628529>,  <28.855648, 43.771378, 52.409294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254347, 43.477436, 52.628529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530029, 43.281330, 52.841934>,  <28.695438, 43.163666, 52.969978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530029, 43.281330, 52.841934>,  <28.254347, 43.477436, 52.628529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530029, 43.281330, 52.841934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528872, 0.162911, 0.832919,
		-0.495266, -0.856213, -0.147007,
		0.689207, -0.490264, 0.533511,
		28.736792, 43.134251, 53.001987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817484, 43.000984, 53.165287>,  <28.254347, 43.477436, 52.628529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817484, 43.000984, 53.165287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185999, 43.013203, 53.320358>,  <28.407108, 43.020535, 53.413399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185999, 43.013203, 53.320358>,  <27.817484, 43.000984, 53.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185999, 43.013203, 53.320358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387292, 0.162015, 0.907610,
		-0.035082, -0.986315, 0.161094,
		0.921290, 0.030550, 0.387676,
		28.462385, 43.022369, 53.436661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735746, 42.571327, 53.616974>,  <27.817484, 43.000984, 53.165287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735746, 42.571327, 53.616974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057808, 42.776279, 53.736435>,  <28.251045, 42.899250, 53.808109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057808, 42.776279, 53.736435>,  <27.735746, 42.571327, 53.616974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057808, 42.776279, 53.736435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434979, 0.167891, 0.884650,
		0.403140, -0.842185, 0.358054,
		0.805153, 0.512383, 0.298650,
		28.299355, 42.929993, 53.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777828, 42.368645, 54.327995>,  <27.735746, 42.571327, 53.616974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777828, 42.368645, 54.327995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987150, 42.707989, 54.295895>,  <28.112743, 42.911594, 54.276634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987150, 42.707989, 54.295895>,  <27.777828, 42.368645, 54.327995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987150, 42.707989, 54.295895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271979, 0.255529, 0.927757,
		0.807575, -0.463675, 0.364455,
		0.523306, 0.848358, -0.080249,
		28.144142, 42.962498, 54.271820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191845, 42.547821, 55.106503>,  <27.777828, 42.368645, 54.327995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191845, 42.547821, 55.106503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191849, 42.902172, 54.920933>,  <28.191851, 43.114780, 54.809589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191849, 42.902172, 54.920933>,  <28.191845, 42.547821, 55.106503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191849, 42.902172, 54.920933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277181, 0.445752, 0.851162,
		0.960818, 0.128585, 0.245551,
		0.000009, 0.885873, -0.463927,
		28.191851, 43.167934, 54.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916140, 42.427212, 55.465324>,  <28.191845, 42.547821, 55.106503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916140, 42.427212, 55.465324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204470, 42.450504, 55.741589>,  <29.377468, 42.464481, 55.907349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204470, 42.450504, 55.741589>,  <28.916140, 42.427212, 55.465324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204470, 42.450504, 55.741589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391159, -0.856795, -0.336002,
		0.572192, 0.512359, -0.640379,
		0.720827, 0.058232, 0.690665,
		29.420717, 42.467976, 55.948788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533319, 42.248768, 55.129429>,  <28.916140, 42.427212, 55.465324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533319, 42.248768, 55.129429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568630, 42.160851, 55.518047>,  <29.589817, 42.108101, 55.751217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568630, 42.160851, 55.518047>,  <29.533319, 42.248768, 55.129429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568630, 42.160851, 55.518047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646528, -0.729342, -0.223746,
		0.757766, 0.647882, 0.077718,
		0.088277, -0.219794, 0.971544,
		29.595114, 42.094913, 55.809509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311020, 42.258987, 55.295483>,  <29.533319, 42.248768, 55.129429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311020, 42.258987, 55.295483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129818, 42.040016, 55.576935>,  <30.021097, 41.908634, 55.745808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129818, 42.040016, 55.576935>,  <30.311020, 42.258987, 55.295483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129818, 42.040016, 55.576935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741952, -0.669080, -0.042873,
		0.494258, 0.502642, 0.709267,
		-0.453007, -0.547433, 0.703635,
		29.993916, 41.875786, 55.788025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836418, 41.981964, 55.720772>,  <30.311020, 42.258987, 55.295483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836418, 41.981964, 55.720772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523426, 41.742775, 55.790234>,  <30.335630, 41.599262, 55.831909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523426, 41.742775, 55.790234>,  <30.836418, 41.981964, 55.720772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523426, 41.742775, 55.790234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618776, -0.777888, 0.109573,
		0.069562, 0.193191, 0.978692,
		-0.782482, -0.597969, 0.173653,
		30.288681, 41.563385, 55.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162191, 41.412266, 56.020790>,  <30.836418, 41.981964, 55.720772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162191, 41.412266, 56.020790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797022, 41.259293, 55.963783>,  <30.577919, 41.167507, 55.929581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797022, 41.259293, 55.963783>,  <31.162191, 41.412266, 56.020790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797022, 41.259293, 55.963783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386730, -0.922189, -0.002665,
		-0.130408, -0.057549, 0.989789,
		-0.912926, -0.382433, -0.142517,
		30.523144, 41.144562, 55.921028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111063, 40.884731, 56.502991>,  <31.162191, 41.412266, 56.020790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111063, 40.884731, 56.502991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856991, 40.838127, 56.197582>,  <30.704548, 40.810165, 56.014336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856991, 40.838127, 56.197582>,  <31.111063, 40.884731, 56.502991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856991, 40.838127, 56.197582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517879, -0.797657, -0.309104,
		-0.573015, -0.591750, 0.566997,
		-0.635182, -0.116514, -0.763524,
		30.666437, 40.803173, 55.968525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779497, 40.127293, 56.550205>,  <31.111063, 40.884731, 56.502991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779497, 40.127293, 56.550205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747934, 40.270599, 56.178093>,  <30.728996, 40.356583, 55.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747934, 40.270599, 56.178093>,  <30.779497, 40.127293, 56.550205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747934, 40.270599, 56.178093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463758, -0.812866, -0.352389,
		-0.882441, -0.459231, -0.102007,
		-0.078909, 0.358269, -0.930278,
		30.724262, 40.378078, 55.899010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064491, 40.140881, 56.721619>,  <30.779497, 40.127293, 56.550205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064491, 40.140881, 56.721619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929985, 39.770603, 56.652321>,  <29.849281, 39.548435, 56.610741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929985, 39.770603, 56.652321>,  <30.064491, 40.140881, 56.721619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929985, 39.770603, 56.652321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794374, 0.179987, 0.580150,
		-0.505860, 0.332707, -0.795872,
		-0.336267, -0.925695, -0.173245,
		29.829105, 39.492893, 56.600346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296133, 40.138836, 56.530075>,  <30.064491, 40.140881, 56.721619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296133, 40.138836, 56.530075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401512, 39.788040, 56.690815>,  <29.464741, 39.577560, 56.787258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401512, 39.788040, 56.690815>,  <29.296133, 40.138836, 56.530075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401512, 39.788040, 56.690815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856853, -0.021367, 0.515118,
		-0.443167, -0.480031, -0.757082,
		0.263449, -0.876992, 0.401847,
		29.480547, 39.524944, 56.811371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692194, 39.781181, 56.535397>,  <29.296133, 40.138836, 56.530075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692194, 39.781181, 56.535397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907440, 39.537842, 56.768749>,  <29.036589, 39.391838, 56.908760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907440, 39.537842, 56.768749>,  <28.692194, 39.781181, 56.535397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907440, 39.537842, 56.768749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827002, -0.247402, 0.504837,
		-0.162788, -0.754122, -0.636239,
		0.538116, -0.608353, 0.583386,
		29.068874, 39.355335, 56.943764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424582, 39.063587, 56.504711>,  <28.692194, 39.781181, 56.535397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424582, 39.063587, 56.504711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614353, 39.152802, 56.845337>,  <28.728216, 39.206329, 57.049713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614353, 39.152802, 56.845337>,  <28.424582, 39.063587, 56.504711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614353, 39.152802, 56.845337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840668, -0.172175, 0.513452,
		0.261138, -0.959484, 0.105817,
		0.474430, 0.223039, 0.851569,
		28.756681, 39.219711, 57.100807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253920, 38.596710, 56.935650>,  <28.424582, 39.063587, 56.504711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253920, 38.596710, 56.935650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434290, 38.802448, 57.227436>,  <28.542511, 38.925892, 57.402508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434290, 38.802448, 57.227436>,  <28.253920, 38.596710, 56.935650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434290, 38.802448, 57.227436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702733, -0.299297, 0.645436,
		0.550303, -0.803660, 0.226488,
		0.450924, 0.514346, 0.729462,
		28.569567, 38.956753, 57.446274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338972, 38.133839, 57.423363>,  <28.253920, 38.596710, 56.935650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338972, 38.133839, 57.423363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333763, 38.500450, 57.583263>,  <28.330637, 38.720417, 57.679203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333763, 38.500450, 57.583263>,  <28.338972, 38.133839, 57.423363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333763, 38.500450, 57.583263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750805, -0.273002, 0.601466,
		0.660396, -0.292303, 0.691691,
		-0.013023, 0.916531, 0.399752,
		28.329857, 38.775410, 57.703190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465475, 38.072556, 58.118561>,  <28.338972, 38.133839, 57.423363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465475, 38.072556, 58.118561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268639, 38.413822, 58.049335>,  <28.150537, 38.618584, 58.007801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268639, 38.413822, 58.049335>,  <28.465475, 38.072556, 58.118561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268639, 38.413822, 58.049335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730380, -0.296444, 0.615359,
		0.473701, 0.429214, 0.769014,
		-0.492091, 0.853168, -0.173064,
		28.121012, 38.669773, 57.997417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412060, 38.336674, 58.825226>,  <28.465475, 38.072556, 58.118561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412060, 38.336674, 58.825226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126652, 38.503574, 58.600086>,  <27.955408, 38.603714, 58.465004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126652, 38.503574, 58.600086>,  <28.412060, 38.336674, 58.825226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126652, 38.503574, 58.600086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652457, -0.102949, 0.750801,
		0.255328, 0.902941, 0.345694,
		-0.713518, 0.417251, -0.562844,
		27.912596, 38.628750, 58.431232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109579, 38.718521, 59.280186>,  <28.412060, 38.336674, 58.825226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109579, 38.718521, 59.280186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840971, 38.662670, 58.989101>,  <27.679806, 38.629158, 58.814449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840971, 38.662670, 58.989101>,  <28.109579, 38.718521, 59.280186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840971, 38.662670, 58.989101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668207, -0.310343, 0.676156,
		-0.320251, 0.940314, 0.115100,
		-0.671519, -0.139629, -0.727713,
		27.639515, 38.620781, 58.770786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.797367, 33.204044, 46.976528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959953, 33.557896, 47.067932>,  <37.057507, 33.770206, 47.122772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959953, 33.557896, 47.067932>,  <36.797367, 33.204044, 46.976528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959953, 33.557896, 47.067932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381673, -0.062831, 0.922159,
		0.830128, -0.462039, 0.312101,
		0.406464, 0.884631, 0.228506,
		37.081894, 33.823284, 47.136482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995651, 33.108898, 47.665302>,  <36.797367, 33.204044, 46.976528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995651, 33.108898, 47.665302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911461, 33.489330, 47.574844>,  <36.860947, 33.717590, 47.520569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911461, 33.489330, 47.574844>,  <36.995651, 33.108898, 47.665302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911461, 33.489330, 47.574844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633963, 0.043300, 0.772151,
		0.744171, 0.305885, 0.593838,
		-0.210477, 0.951083, -0.226142,
		36.848316, 33.774654, 47.507000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828041, 33.382324, 48.244827>,  <36.995651, 33.108898, 47.665302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828041, 33.382324, 48.244827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677296, 33.690418, 48.039024>,  <36.586849, 33.875275, 47.915543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677296, 33.690418, 48.039024>,  <36.828041, 33.382324, 48.244827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677296, 33.690418, 48.039024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635363, 0.189226, 0.748670,
		0.674008, 0.609043, 0.418066,
		-0.376864, 0.770233, -0.514504,
		36.564236, 33.921490, 47.884674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802727, 33.930019, 48.750401>,  <36.828041, 33.382324, 48.244827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802727, 33.930019, 48.750401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550560, 34.038063, 48.459301>,  <36.399261, 34.102890, 48.284641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550560, 34.038063, 48.459301>,  <36.802727, 33.930019, 48.750401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550560, 34.038063, 48.459301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701664, 0.202717, 0.683062,
		0.332025, 0.941249, 0.061726,
		-0.630418, 0.270105, -0.727747,
		36.361435, 34.119095, 48.240978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340649, 34.438484, 49.029919>,  <36.802727, 33.930019, 48.750401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340649, 34.438484, 49.029919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152641, 34.271515, 48.718830>,  <36.039837, 34.171333, 48.532177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152641, 34.271515, 48.718830>,  <36.340649, 34.438484, 49.029919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152641, 34.271515, 48.718830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876761, 0.119115, 0.465941,
		-0.101857, 0.900872, -0.421966,
		-0.470016, -0.417422, -0.777717,
		36.011635, 34.146290, 48.485516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721767, 34.863232, 48.891182>,  <36.340649, 34.438484, 49.029919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721767, 34.863232, 48.891182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654461, 34.500793, 48.735916>,  <35.614079, 34.283329, 48.642757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654461, 34.500793, 48.735916>,  <35.721767, 34.863232, 48.891182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654461, 34.500793, 48.735916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901068, -0.018290, 0.433292,
		-0.399705, 0.422672, -0.813378,
		-0.168264, -0.906098, -0.388167,
		35.603981, 34.228966, 48.619465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103748, 35.029472, 48.756878>,  <35.721767, 34.863232, 48.891182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103748, 35.029472, 48.756878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118874, 34.632130, 48.713390>,  <35.127949, 34.393726, 48.687298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118874, 34.632130, 48.713390>,  <35.103748, 35.029472, 48.756878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118874, 34.632130, 48.713390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970260, -0.062526, 0.233852,
		-0.239096, 0.096648, -0.966174,
		0.037810, -0.993352, -0.108723,
		35.130215, 34.334126, 48.680775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591438, 34.864605, 48.273853>,  <35.103748, 35.029472, 48.756878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591438, 34.864605, 48.273853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651810, 34.551712, 48.515621>,  <34.688034, 34.363976, 48.660683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651810, 34.551712, 48.515621>,  <34.591438, 34.864605, 48.273853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651810, 34.551712, 48.515621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978878, -0.032965, 0.201769,
		-0.137906, -0.622109, -0.770689,
		0.150928, -0.782236, 0.604423,
		34.697086, 34.317039, 48.696949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939217, 34.686649, 48.390957>,  <34.591438, 34.864605, 48.273853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939217, 34.686649, 48.390957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112835, 34.428825, 48.642719>,  <34.217007, 34.274132, 48.793777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112835, 34.428825, 48.642719>,  <33.939217, 34.686649, 48.390957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112835, 34.428825, 48.642719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846886, -0.053666, 0.529060,
		-0.307231, -0.762672, -0.569158,
		0.434044, -0.644555, 0.629408,
		34.243050, 34.235458, 48.831543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444897, 34.067142, 48.448227>,  <33.939217, 34.686649, 48.390957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444897, 34.067142, 48.448227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696613, 34.071346, 48.759064>,  <33.847645, 34.073868, 48.945568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696613, 34.071346, 48.759064>,  <33.444897, 34.067142, 48.448227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696613, 34.071346, 48.759064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774015, -0.081497, 0.627901,
		0.069927, -0.996618, -0.043154,
		0.629294, 0.010506, 0.777096,
		33.885403, 34.074497, 48.992191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129765, 33.604710, 48.898540>,  <33.444897, 34.067142, 48.448227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129765, 33.604710, 48.898540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379425, 33.799183, 49.143181>,  <33.529221, 33.915867, 49.289967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379425, 33.799183, 49.143181>,  <33.129765, 33.604710, 48.898540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379425, 33.799183, 49.143181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731528, 0.088721, 0.676014,
		0.274402, -0.869344, 0.411029,
		0.624155, 0.486179, 0.611604,
		33.566673, 33.945038, 49.326664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103367, 33.253220, 49.458862>,  <33.129765, 33.604710, 48.898540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103367, 33.253220, 49.458862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207603, 33.627937, 49.552246>,  <33.270145, 33.852768, 49.608276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207603, 33.627937, 49.552246>,  <33.103367, 33.253220, 49.458862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207603, 33.627937, 49.552246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775195, 0.058893, 0.628971,
		0.575470, -0.344880, 0.741548,
		0.260591, 0.936798, 0.233458,
		33.285782, 33.908978, 49.622284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912960, 33.418037, 50.186371>,  <33.103367, 33.253220, 49.458862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912960, 33.418037, 50.186371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.925056, 33.782482, 50.021950>,  <32.932316, 34.001148, 49.923298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.925056, 33.782482, 50.021950>,  <32.912960, 33.418037, 50.186371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925056, 33.782482, 50.021950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729868, 0.301101, 0.613702,
		0.682918, 0.281458, 0.674095,
		0.030239, 0.911109, -0.411055,
		32.934128, 34.055817, 49.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849567, 33.840881, 50.705433>,  <32.912960, 33.418037, 50.186371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849567, 33.840881, 50.705433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772148, 34.098339, 50.409256>,  <32.725697, 34.252815, 50.231548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.772148, 34.098339, 50.409256>,  <32.849567, 33.840881, 50.705433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772148, 34.098339, 50.409256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712071, 0.427015, 0.557327,
		0.674902, 0.635121, 0.375671,
		-0.193553, 0.643646, -0.740444,
		32.714081, 34.291431, 50.187122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768631, 34.544373, 50.941044>,  <32.849567, 33.840881, 50.705433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768631, 34.544373, 50.941044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594551, 34.550552, 50.580963>,  <32.490105, 34.554260, 50.364914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594551, 34.550552, 50.580963>,  <32.768631, 34.544373, 50.941044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594551, 34.550552, 50.580963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855329, 0.305076, 0.418738,
		0.281100, 0.952203, -0.119553,
		-0.435196, 0.015450, -0.900203,
		32.463993, 34.555187, 50.310902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393394, 35.085136, 50.987270>,  <32.768631, 34.544373, 50.941044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393394, 35.085136, 50.987270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.225311, 34.872093, 50.693398>,  <32.124462, 34.744267, 50.517075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.225311, 34.872093, 50.693398>,  <32.393394, 35.085136, 50.987270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225311, 34.872093, 50.693398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906144, 0.289376, 0.308488,
		0.048296, 0.795354, -0.604217,
		-0.420204, -0.532609, -0.734681,
		32.099251, 34.712311, 50.472992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945150, 35.557011, 50.624939>,  <32.393394, 35.085136, 50.987270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945150, 35.557011, 50.624939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.806742, 35.200359, 50.508141>,  <31.723696, 34.986366, 50.438061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.806742, 35.200359, 50.508141>,  <31.945150, 35.557011, 50.624939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806742, 35.200359, 50.508141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919706, 0.260818, 0.293451,
		-0.185492, 0.370091, -0.910288,
		-0.346023, -0.891631, -0.291995,
		31.702934, 34.932869, 50.420544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419651, 35.664978, 50.135090>,  <31.945150, 35.557011, 50.624939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419651, 35.664978, 50.135090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.349236, 35.306854, 50.298763>,  <31.306986, 35.091980, 50.396969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.349236, 35.306854, 50.298763>,  <31.419651, 35.664978, 50.135090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349236, 35.306854, 50.298763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938621, 0.277933, 0.204313,
		-0.296650, -0.348104, -0.889282,
		-0.176039, -0.895308, 0.409186,
		31.296423, 35.038261, 50.421520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911774, 35.455986, 49.845245>,  <31.419651, 35.664978, 50.135090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911774, 35.455986, 49.845245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.903391, 35.201660, 50.153870>,  <30.898361, 35.049065, 50.339043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.903391, 35.201660, 50.153870>,  <30.911774, 35.455986, 49.845245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903391, 35.201660, 50.153870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995202, 0.087041, 0.044695,
		-0.095575, -0.766919, -0.634587,
		-0.020958, -0.635814, 0.771558,
		30.897104, 35.010918, 50.385338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294542, 35.145405, 49.887463>,  <30.911774, 35.455986, 49.845245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294542, 35.145405, 49.887463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425692, 35.041008, 50.250645>,  <30.504381, 34.978371, 50.468555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425692, 35.041008, 50.250645>,  <30.294542, 35.145405, 49.887463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425692, 35.041008, 50.250645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928798, -0.264767, 0.259292,
		0.172724, -0.928323, -0.329215,
		0.327872, -0.260988, 0.907956,
		30.524054, 34.962711, 50.523033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959536, 34.455555, 50.135597>,  <30.294542, 35.145405, 49.887463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959536, 34.455555, 50.135597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.079008, 34.637299, 50.471298>,  <30.150692, 34.746346, 50.672718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.079008, 34.637299, 50.471298>,  <29.959536, 34.455555, 50.135597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079008, 34.637299, 50.471298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899525, -0.159746, 0.406615,
		0.318817, -0.876379, 0.360994,
		0.298681, 0.454358, 0.839255,
		30.168612, 34.773605, 50.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501694, 34.130981, 50.595898>,  <29.959536, 34.455555, 50.135597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501694, 34.130981, 50.595898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.654837, 34.450615, 50.781322>,  <29.746721, 34.642395, 50.892578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.654837, 34.450615, 50.781322>,  <29.501694, 34.130981, 50.595898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654837, 34.450615, 50.781322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859255, 0.123741, 0.496355,
		0.339266, -0.588352, 0.733989,
		0.382856, 0.799080, 0.463564,
		29.769693, 34.690338, 50.920391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263845, 34.043133, 51.190853>,  <29.501694, 34.130981, 50.595898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263845, 34.043133, 51.190853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.348499, 34.432396, 51.154690>,  <29.399292, 34.665955, 51.132992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.348499, 34.432396, 51.154690>,  <29.263845, 34.043133, 51.190853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348499, 34.432396, 51.154690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887670, 0.230101, 0.398869,
		0.408966, -0.004161, 0.912540,
		0.211636, 0.973158, -0.090410,
		29.411991, 34.724342, 51.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282524, 34.239155, 51.820080>,  <29.263845, 34.043133, 51.190853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282524, 34.239155, 51.820080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.199762, 34.559383, 51.595127>,  <29.150105, 34.751522, 51.460155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.199762, 34.559383, 51.595127>,  <29.282524, 34.239155, 51.820080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199762, 34.559383, 51.595127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936107, 0.005110, 0.351677,
		0.284418, 0.599211, 0.748367,
		-0.206904, 0.800575, -0.562379,
		29.137691, 34.799557, 51.426414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822912, 34.735828, 52.209869>,  <29.282524, 34.239155, 51.820080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822912, 34.735828, 52.209869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.721218, 34.861053, 51.843842>,  <28.660202, 34.936188, 51.624226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.721218, 34.861053, 51.843842>,  <28.822912, 34.735828, 52.209869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721218, 34.861053, 51.843842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967127, -0.076982, 0.242361,
		0.005430, 0.946608, 0.322342,
		-0.254235, 0.313061, -0.915073,
		28.644947, 34.954971, 51.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090294, 34.907227, 52.357052>,  <28.822912, 34.735828, 52.209869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090294, 34.907227, 52.357052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.118040, 34.915604, 51.958103>,  <28.134687, 34.920631, 51.718735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.118040, 34.915604, 51.958103>,  <28.090294, 34.907227, 52.357052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118040, 34.915604, 51.958103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994020, -0.083070, -0.070879,
		-0.084337, 0.996324, 0.015059,
		0.069368, 0.020946, -0.997371,
		28.138851, 34.921886, 51.658894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638720, 35.430290, 52.211117>,  <28.090294, 34.907227, 52.357052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638720, 35.430290, 52.211117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.665623, 35.203339, 51.882835>,  <27.681765, 35.067169, 51.685867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.665623, 35.203339, 51.882835>,  <27.638720, 35.430290, 52.211117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665623, 35.203339, 51.882835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997274, -0.063232, -0.038016,
		-0.030325, 0.821026, -0.570085,
		0.067260, -0.567378, -0.820706,
		27.685801, 35.033127, 51.636623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157988, 35.761459, 51.740959>,  <27.638720, 35.430290, 52.211117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157988, 35.761459, 51.740959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.200514, 35.379322, 51.630676>,  <27.226028, 35.150040, 51.564507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.200514, 35.379322, 51.630676>,  <27.157988, 35.761459, 51.740959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200514, 35.379322, 51.630676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984395, -0.140227, 0.106313,
		-0.140227, 0.260099, -0.955345,
		-0.106313, 0.955345, 0.275703,
		27.232409, 35.092720, 51.547966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585569, 35.721519, 51.349274>,  <27.157988, 35.761459, 51.740959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585569, 35.721519, 51.349274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.673071, 35.331951, 51.373360>,  <26.725573, 35.098209, 51.387810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.673071, 35.331951, 51.373360>,  <26.585569, 35.721519, 51.349274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673071, 35.331951, 51.373360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975509, -0.216825, 0.036992,
		-0.022972, -0.066828, -0.997500,
		0.218755, -0.973920, 0.060211,
		26.738697, 35.039776, 51.391422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264565, 35.367649, 50.897179>,  <26.585569, 35.721519, 51.349274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264565, 35.367649, 50.897179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.309259, 35.097664, 51.188915>,  <26.336077, 34.935673, 51.363956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.309259, 35.097664, 51.188915>,  <26.264565, 35.367649, 50.897179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309259, 35.097664, 51.188915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987968, -0.154429, 0.008441,
		0.106934, -0.721506, -0.684101,
		0.111735, -0.674967, 0.729339,
		26.342779, 34.895172, 51.407719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821198, 34.871075, 50.663406>,  <26.264565, 35.367649, 50.897179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821198, 34.871075, 50.663406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.880461, 34.781757, 51.048775>,  <25.916019, 34.728165, 51.279995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.880461, 34.781757, 51.048775>,  <25.821198, 34.871075, 50.663406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880461, 34.781757, 51.048775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974290, -0.200147, 0.103441,
		0.169729, -0.953981, -0.247209,
		0.148159, -0.223296, 0.963425,
		25.924908, 34.714767, 51.337803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510668, 34.128368, 50.885540>,  <25.821198, 34.871075, 50.663406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510668, 34.128368, 50.885540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.546736, 34.351215, 51.215748>,  <25.568377, 34.484924, 51.413872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.546736, 34.351215, 51.215748>,  <25.510668, 34.128368, 50.885540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546736, 34.351215, 51.215748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876446, -0.349267, 0.331443,
		0.472982, -0.753411, 0.456793,
		0.090170, 0.557121, 0.825521,
		25.573786, 34.518353, 51.463406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221287, 33.692226, 51.382751>,  <25.510668, 34.128368, 50.885540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221287, 33.692226, 51.382751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.199352, 34.046371, 51.567413>,  <25.186192, 34.258858, 51.678211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.199352, 34.046371, 51.567413>,  <25.221287, 33.692226, 51.382751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199352, 34.046371, 51.567413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876880, -0.263842, 0.401832,
		0.477571, -0.382783, 0.790824,
		-0.054838, 0.885361, 0.461659,
		25.182901, 34.311981, 51.705910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038347, 33.610249, 52.123272>,  <25.221287, 33.692226, 51.382751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038347, 33.610249, 52.123272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.944702, 33.993351, 52.056458>,  <24.888515, 34.223213, 52.016369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.944702, 33.993351, 52.056458>,  <25.038347, 33.610249, 52.123272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944702, 33.993351, 52.056458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847429, -0.116822, 0.517897,
		0.476505, 0.262793, 0.838977,
		-0.234111, 0.957754, -0.167032,
		24.874468, 34.280678, 52.006348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789049, 33.810879, 52.739166>,  <25.038347, 33.610249, 52.123272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789049, 33.810879, 52.739166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.650167, 34.092728, 52.491631>,  <24.566839, 34.261837, 52.343109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.650167, 34.092728, 52.491631>,  <24.789049, 33.810879, 52.739166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650167, 34.092728, 52.491631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844778, 0.051524, 0.532631,
		0.407186, 0.707714, 0.577356,
		-0.347203, 0.704618, -0.618841,
		24.546007, 34.304111, 52.305977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<37.364979, 29.692469, 50.410812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971962, 29.621649, 50.387966>,  <36.736153, 29.579157, 50.374260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971962, 29.621649, 50.387966>,  <37.364979, 29.692469, 50.410812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971962, 29.621649, 50.387966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181750, 0.848035, 0.497798,
		-0.039698, 0.499489, -0.865410,
		-0.982543, -0.177050, -0.057117,
		36.677200, 29.568533, 50.370831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962639, 30.323952, 50.173725>,  <37.364979, 29.692469, 50.410812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962639, 30.323952, 50.173725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707569, 30.091791, 50.376312>,  <36.554527, 29.952496, 50.497864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707569, 30.091791, 50.376312>,  <36.962639, 30.323952, 50.173725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707569, 30.091791, 50.376312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204024, 0.761262, 0.615511,
		-0.742799, 0.289161, -0.603850,
		-0.637670, -0.580401, 0.506469,
		36.516270, 29.917671, 50.528252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262447, 30.679607, 50.231972>,  <36.962639, 30.323952, 50.173725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262447, 30.679607, 50.231972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268150, 30.403923, 50.521740>,  <36.271572, 30.238512, 50.695602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.268150, 30.403923, 50.521740>,  <36.262447, 30.679607, 50.231972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268150, 30.403923, 50.521740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312047, 0.685242, 0.658080,
		-0.949960, -0.235438, -0.205294,
		0.014261, -0.689211, 0.724420,
		36.272430, 30.197159, 50.739067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540192, 30.654848, 50.552502>,  <36.262447, 30.679607, 50.231972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540192, 30.654848, 50.552502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777767, 30.496763, 50.832798>,  <35.920311, 30.401913, 51.000977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777767, 30.496763, 50.832798>,  <35.540192, 30.654848, 50.552502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777767, 30.496763, 50.832798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562605, 0.418580, 0.712928,
		-0.575075, -0.817679, 0.026263,
		0.593939, -0.395212, 0.700745,
		35.955948, 30.378201, 51.043022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127613, 30.611078, 51.031708>,  <35.540192, 30.654848, 50.552502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127613, 30.611078, 51.031708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464535, 30.537975, 51.234539>,  <35.666687, 30.494114, 51.356236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464535, 30.537975, 51.234539>,  <35.127613, 30.611078, 51.031708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464535, 30.537975, 51.234539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388216, 0.446922, 0.805946,
		-0.373915, -0.875706, 0.305495,
		0.842304, -0.182757, 0.507073,
		35.717224, 30.483149, 51.386662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812672, 30.452406, 51.574867>,  <35.127613, 30.611078, 51.031708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812672, 30.452406, 51.574867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184681, 30.576622, 51.653477>,  <35.407887, 30.651152, 51.700642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184681, 30.576622, 51.653477>,  <34.812672, 30.452406, 51.574867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184681, 30.576622, 51.653477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338409, 0.515151, 0.787464,
		0.143302, -0.798864, 0.584192,
		0.930024, 0.310541, 0.196520,
		35.463688, 30.669785, 51.712433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086472, 30.244196, 52.224834>,  <34.812672, 30.452406, 51.574867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086472, 30.244196, 52.224834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.300476, 30.573627, 52.149490>,  <35.428879, 30.771286, 52.104282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.300476, 30.573627, 52.149490>,  <35.086472, 30.244196, 52.224834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300476, 30.573627, 52.149490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277118, 0.381690, 0.881770,
		0.798103, -0.419558, 0.432437,
		0.535011, 0.823580, -0.188361,
		35.460979, 30.820702, 52.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378807, 30.432791, 52.889473>,  <35.086472, 30.244196, 52.224834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378807, 30.432791, 52.889473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432854, 30.775320, 52.690090>,  <35.465282, 30.980837, 52.570461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432854, 30.775320, 52.690090>,  <35.378807, 30.432791, 52.889473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432854, 30.775320, 52.690090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126962, 0.513883, 0.848413,
		0.982662, -0.051349, 0.178154,
		0.135116, 0.856322, -0.498454,
		35.473389, 31.032217, 52.540554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937782, 30.912224, 53.259224>,  <35.378807, 30.432791, 52.889473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937782, 30.912224, 53.259224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715549, 31.157860, 53.035004>,  <35.582211, 31.305243, 52.900471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715549, 31.157860, 53.035004>,  <35.937782, 30.912224, 53.259224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715549, 31.157860, 53.035004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111855, 0.612848, 0.782244,
		0.823903, 0.497302, -0.271799,
		-0.555583, 0.614091, -0.560553,
		35.548874, 31.342087, 52.866837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147667, 31.614861, 53.349579>,  <35.937782, 30.912224, 53.259224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147667, 31.614861, 53.349579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771236, 31.627754, 53.214916>,  <35.545380, 31.635490, 53.134117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771236, 31.627754, 53.214916>,  <36.147667, 31.614861, 53.349579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771236, 31.627754, 53.214916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251758, 0.597914, 0.760997,
		0.225824, 0.800912, -0.554567,
		-0.941075, 0.032235, -0.336659,
		35.488914, 31.637424, 53.113918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941837, 32.391685, 53.387367>,  <36.147667, 31.614861, 53.349579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941837, 32.391685, 53.387367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599258, 32.189163, 53.347069>,  <35.393711, 32.067650, 53.322887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599258, 32.189163, 53.347069>,  <35.941837, 32.391685, 53.387367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599258, 32.189163, 53.347069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370583, 0.467116, 0.802789,
		-0.359396, 0.724883, -0.587689,
		-0.856448, -0.506306, -0.100750,
		35.342323, 32.037270, 53.316845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423725, 32.940033, 53.544994>,  <35.941837, 32.391685, 53.387367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423725, 32.940033, 53.544994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203194, 32.607059, 53.567257>,  <35.070877, 32.407276, 53.580616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203194, 32.607059, 53.567257>,  <35.423725, 32.940033, 53.544994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203194, 32.607059, 53.567257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646661, 0.468531, 0.601920,
		-0.527135, 0.295863, -0.796614,
		-0.551324, -0.832433, 0.055656,
		35.037796, 32.357330, 53.583954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138969, 33.206863, 52.889763>,  <35.423725, 32.940033, 53.544994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138969, 33.206863, 52.889763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254070, 33.561428, 52.744728>,  <35.323132, 33.774166, 52.657707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.254070, 33.561428, 52.744728>,  <35.138969, 33.206863, 52.889763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254070, 33.561428, 52.744728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440925, -0.458712, -0.771471,
		-0.850165, 0.062121, -0.522839,
		0.287757, 0.886411, -0.362591,
		35.340397, 33.827351, 52.635952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996307, 33.061123, 52.180172>,  <35.138969, 33.206863, 52.889763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996307, 33.061123, 52.180172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231094, 33.384945, 52.176537>,  <35.371967, 33.579239, 52.174355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231094, 33.384945, 52.176537>,  <34.996307, 33.061123, 52.180172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231094, 33.384945, 52.176537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463509, -0.345228, -0.816074,
		-0.663798, 0.474797, -0.577875,
		0.586969, 0.809559, -0.009089,
		35.407185, 33.627811, 52.173809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979641, 33.420517, 51.436836>,  <34.996307, 33.061123, 52.180172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979641, 33.420517, 51.436836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.315334, 33.536625, 51.620758>,  <35.516750, 33.606289, 51.731113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.315334, 33.536625, 51.620758>,  <34.979641, 33.420517, 51.436836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315334, 33.536625, 51.620758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519543, -0.178474, -0.835597,
		-0.160484, 0.940154, -0.300590,
		0.839238, 0.290270, 0.459808,
		35.567104, 33.623707, 51.758701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392105, 33.731869, 50.878464>,  <34.979641, 33.420517, 51.436836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392105, 33.731869, 50.878464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653759, 33.692772, 51.178478>,  <35.810753, 33.669315, 51.358486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653759, 33.692772, 51.178478>,  <35.392105, 33.731869, 50.878464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653759, 33.692772, 51.178478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756378, 0.084759, -0.648620,
		-0.000174, 0.991596, 0.129374,
		0.654135, -0.097742, 0.750036,
		35.849998, 33.663448, 51.403488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784527, 34.367950, 50.956856>,  <35.392105, 33.731869, 50.878464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784527, 34.367950, 50.956856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969955, 34.034447, 51.076820>,  <36.081211, 33.834343, 51.148800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969955, 34.034447, 51.076820>,  <35.784527, 34.367950, 50.956856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969955, 34.034447, 51.076820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742770, 0.181117, -0.644584,
		0.483111, 0.521572, 0.703254,
		0.463568, -0.833762, 0.299909,
		36.109028, 33.784317, 51.166794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524418, 34.673859, 51.000900>,  <35.784527, 34.367950, 50.956856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524418, 34.673859, 51.000900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526943, 34.273964, 50.992043>,  <36.528458, 34.034027, 50.986729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.526943, 34.273964, 50.992043>,  <36.524418, 34.673859, 51.000900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526943, 34.273964, 50.992043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738923, 0.019579, -0.673506,
		0.673760, -0.012110, 0.738850,
		0.006310, -0.999735, -0.022141,
		36.528835, 33.974045, 50.985401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219009, 34.471619, 51.139854>,  <36.524418, 34.673859, 51.000900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219009, 34.471619, 51.139854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065411, 34.159874, 50.941803>,  <36.973251, 33.972828, 50.822971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065411, 34.159874, 50.941803>,  <37.219009, 34.471619, 51.139854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065411, 34.159874, 50.941803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767985, 0.028110, -0.639851,
		0.512590, -0.625949, 0.587740,
		-0.383993, -0.779357, -0.495128,
		36.950214, 33.926067, 50.793266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809956, 34.127529, 50.972382>,  <37.219009, 34.471619, 51.139854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809956, 34.127529, 50.972382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.539913, 33.980209, 50.716698>,  <37.377888, 33.891815, 50.563290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.539913, 33.980209, 50.716698>,  <37.809956, 34.127529, 50.972382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539913, 33.980209, 50.716698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679422, 0.027178, -0.733244,
		0.287427, -0.929309, 0.231885,
		-0.675108, -0.368302, -0.639205,
		37.337379, 33.869720, 50.524937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184380, 33.559063, 50.605598>,  <37.809956, 34.127529, 50.972382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184380, 33.559063, 50.605598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848557, 33.639664, 50.403790>,  <37.647064, 33.688023, 50.282703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848557, 33.639664, 50.403790>,  <38.184380, 33.559063, 50.605598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848557, 33.639664, 50.403790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533916, 0.134454, -0.834779,
		-0.100372, -0.970217, -0.220466,
		-0.839559, 0.201499, -0.504519,
		37.596687, 33.700111, 50.252434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341377, 33.212109, 49.905258>,  <38.184380, 33.559063, 50.605598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341377, 33.212109, 49.905258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049427, 33.481594, 49.858978>,  <37.874256, 33.643288, 49.831211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049427, 33.481594, 49.858978>,  <38.341377, 33.212109, 49.905258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049427, 33.481594, 49.858978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381387, 0.260875, -0.886841,
		-0.567297, -0.691411, -0.447354,
		-0.729875, 0.673717, -0.115702,
		37.830463, 33.683708, 49.824268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171658, 33.172176, 49.217941>,  <38.341377, 33.212109, 49.905258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171658, 33.172176, 49.217941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058754, 33.535744, 49.340702>,  <37.991013, 33.753883, 49.414360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058754, 33.535744, 49.340702>,  <38.171658, 33.172176, 49.217941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058754, 33.535744, 49.340702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411564, 0.403705, -0.817091,
		-0.866570, -0.104322, -0.488029,
		-0.282260, 0.908922, 0.306904,
		37.974075, 33.808422, 49.432774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905872, 33.530228, 48.635780>,  <38.171658, 33.172176, 49.217941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905872, 33.530228, 48.635780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.997910, 33.814610, 48.901592>,  <38.053131, 33.985237, 49.061081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.997910, 33.814610, 48.901592>,  <37.905872, 33.530228, 48.635780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997910, 33.814610, 48.901592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490123, 0.505269, -0.710269,
		-0.840736, 0.489130, -0.232195,
		0.230093, 0.710953, 0.664532,
		38.066936, 34.027897, 49.100952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861176, 34.186947, 48.215954>,  <37.905872, 33.530228, 48.635780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861176, 34.186947, 48.215954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096416, 34.284843, 48.524300>,  <38.237560, 34.343582, 48.709309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096416, 34.284843, 48.524300>,  <37.861176, 34.186947, 48.215954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096416, 34.284843, 48.524300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521470, 0.613813, -0.592708,
		-0.618227, 0.750558, 0.233362,
		0.588103, 0.244737, 0.770869,
		38.272846, 34.358265, 48.755562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002518, 35.006084, 48.193676>,  <37.861176, 34.186947, 48.215954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002518, 35.006084, 48.193676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286072, 34.810501, 48.397007>,  <38.456203, 34.693150, 48.519005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286072, 34.810501, 48.397007>,  <38.002518, 35.006084, 48.193676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286072, 34.810501, 48.397007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705310, 0.487549, -0.514620,
		0.003794, 0.723336, 0.690486,
		0.708889, -0.488959, 0.508327,
		38.498737, 34.663815, 48.549503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549221, 35.328079, 48.054337>,  <38.002518, 35.006084, 48.193676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549221, 35.328079, 48.054337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730453, 35.017895, 48.230236>,  <38.839191, 34.831783, 48.335777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730453, 35.017895, 48.230236>,  <38.549221, 35.328079, 48.054337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730453, 35.017895, 48.230236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873844, 0.288715, -0.391204,
		0.176399, 0.561521, 0.808441,
		0.453079, -0.775459, 0.439753,
		38.866379, 34.785255, 48.362164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889156, 35.665741, 47.559330>,  <38.549221, 35.328079, 48.054337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889156, 35.665741, 47.559330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186954, 35.889046, 47.412868>,  <38.365635, 36.023029, 47.324993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186954, 35.889046, 47.412868>,  <37.889156, 35.665741, 47.559330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186954, 35.889046, 47.412868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495762, 0.829609, 0.256845,
		0.447151, -0.009695, 0.894406,
		0.744497, 0.558260, -0.366153,
		38.410305, 36.056522, 47.303020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063972, 36.167828, 48.062748>,  <37.889156, 35.665741, 47.559330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063972, 36.167828, 48.062748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134026, 36.304359, 47.693356>,  <38.176060, 36.386276, 47.471718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134026, 36.304359, 47.693356>,  <38.063972, 36.167828, 48.062748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134026, 36.304359, 47.693356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568846, 0.800657, 0.188050,
		0.803580, 0.492384, 0.334390,
		0.175140, 0.341330, -0.923483,
		38.186565, 36.406757, 47.416309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267159, 36.920135, 48.049622>,  <38.063972, 36.167828, 48.062748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267159, 36.920135, 48.049622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089104, 36.816505, 47.706753>,  <37.982273, 36.754326, 47.501034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089104, 36.816505, 47.706753>,  <38.267159, 36.920135, 48.049622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089104, 36.816505, 47.706753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586446, 0.807732, 0.060412,
		0.676711, 0.529574, -0.511483,
		-0.445133, -0.259076, -0.857167,
		37.955563, 36.738781, 47.449604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169117, 37.535889, 47.584209>,  <38.267159, 36.920135, 48.049622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169117, 37.535889, 47.584209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895573, 37.245003, 47.560532>,  <37.731445, 37.070473, 47.546326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895573, 37.245003, 47.560532>,  <38.169117, 37.535889, 47.584209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895573, 37.245003, 47.560532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728929, 0.677439, 0.098684,
		-0.031665, 0.110633, -0.993357,
		-0.683856, -0.727212, -0.059193,
		37.690414, 37.026840, 47.542774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710739, 37.692074, 46.973888>,  <38.169117, 37.535889, 47.584209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710739, 37.692074, 46.973888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478024, 37.469673, 47.211334>,  <37.338394, 37.336231, 47.353802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478024, 37.469673, 47.211334>,  <37.710739, 37.692074, 46.973888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478024, 37.469673, 47.211334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725098, 0.685193, -0.068870,
		-0.368451, -0.470499, -0.801795,
		-0.581787, -0.556005, 0.593618,
		37.303486, 37.302872, 47.389420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064671, 37.912350, 46.821926>,  <37.710739, 37.692074, 46.973888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064671, 37.912350, 46.821926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984280, 37.695728, 47.148441>,  <36.936043, 37.565754, 47.344349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.984280, 37.695728, 47.148441>,  <37.064671, 37.912350, 46.821926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984280, 37.695728, 47.148441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926830, 0.374920, 0.020540,
		-0.317166, -0.752431, -0.577281,
		-0.200979, -0.541556, 0.816287,
		36.923985, 37.533260, 47.393326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400803, 37.579384, 46.750137>,  <37.064671, 37.912350, 46.821926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400803, 37.579384, 46.750137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.491241, 37.606899, 47.138805>,  <36.545506, 37.623409, 47.372005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.491241, 37.606899, 47.138805>,  <36.400803, 37.579384, 46.750137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491241, 37.606899, 47.138805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910421, 0.369675, 0.185672,
		-0.346432, -0.926612, 0.146205,
		0.226094, 0.068786, 0.971674,
		36.559071, 37.627533, 47.430309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858284, 37.374985, 47.179077>,  <36.400803, 37.579384, 46.750137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858284, 37.374985, 47.179077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050777, 37.610626, 47.438732>,  <36.166271, 37.752010, 47.594524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050777, 37.610626, 47.438732>,  <35.858284, 37.374985, 47.179077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050777, 37.610626, 47.438732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828551, 0.547468, 0.117402,
		-0.286219, -0.594339, 0.751558,
		0.481230, 0.589101, 0.649136,
		36.195145, 37.787357, 47.633472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347321, 37.518482, 47.568935>,  <35.858284, 37.374985, 47.179077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347321, 37.518482, 47.568935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624092, 37.782032, 47.687000>,  <35.790154, 37.940163, 47.757839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624092, 37.782032, 47.687000>,  <35.347321, 37.518482, 47.568935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624092, 37.782032, 47.687000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705708, 0.703517, 0.083906,
		-0.152370, -0.266356, 0.951755,
		0.691924, 0.658877, 0.295164,
		35.831669, 37.979694, 47.775551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043312, 37.806000, 48.065678>,  <35.347321, 37.518482, 47.568935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043312, 37.806000, 48.065678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337280, 38.063469, 47.980293>,  <35.513660, 38.217953, 47.929062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337280, 38.063469, 47.980293>,  <35.043312, 37.806000, 48.065678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337280, 38.063469, 47.980293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587919, 0.761635, 0.272515,
		0.337990, -0.074781, 0.938174,
		0.734924, 0.643677, -0.213460,
		35.557758, 38.256573, 47.916256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235931, 38.253841, 48.645100>,  <35.043312, 37.806000, 48.065678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235931, 38.253841, 48.645100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302143, 38.438477, 48.296494>,  <35.341869, 38.549255, 48.087330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302143, 38.438477, 48.296494>,  <35.235931, 38.253841, 48.645100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302143, 38.438477, 48.296494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535735, 0.784033, 0.313497,
		0.828002, 0.415009, 0.377067,
		0.165529, 0.461584, -0.871516,
		35.351803, 38.576950, 48.035038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998642, 38.918621, 48.696762>,  <35.235931, 38.253841, 48.645100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998642, 38.918621, 48.696762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065388, 38.953091, 48.303879>,  <35.105434, 38.973770, 48.068150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065388, 38.953091, 48.303879>,  <34.998642, 38.918621, 48.696762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065388, 38.953091, 48.303879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572686, 0.819381, -0.025404,
		0.802614, 0.566735, 0.186073,
		0.166862, 0.086172, -0.982207,
		35.115448, 38.978943, 48.009216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133568, 39.521774, 48.600586>,  <34.998642, 38.918621, 48.696762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133568, 39.521774, 48.600586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013969, 39.402321, 48.238056>,  <34.942211, 39.330650, 48.020538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013969, 39.402321, 48.238056>,  <35.133568, 39.521774, 48.600586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013969, 39.402321, 48.238056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779844, 0.623834, 0.051716,
		0.549953, 0.722254, -0.419405,
		-0.298992, -0.298629, -0.906325,
		34.924271, 39.312733, 47.966160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990711, 40.111660, 48.254692>,  <35.133568, 39.521774, 48.600586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990711, 40.111660, 48.254692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786095, 39.841934, 48.041668>,  <34.663322, 39.680099, 47.913853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786095, 39.841934, 48.041668>,  <34.990711, 40.111660, 48.254692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786095, 39.841934, 48.041668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749045, 0.653636, -0.108133,
		0.421015, 0.343595, -0.839457,
		-0.511546, -0.674317, -0.532559,
		34.632629, 39.639641, 47.881901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663208, 40.524281, 47.785240>,  <34.990711, 40.111660, 48.254692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663208, 40.524281, 47.785240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479702, 40.169392, 47.765759>,  <34.369598, 39.956459, 47.754070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479702, 40.169392, 47.765759>,  <34.663208, 40.524281, 47.785240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479702, 40.169392, 47.765759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873061, 0.460280, -0.160957,
		0.165220, -0.031323, -0.985759,
		-0.458767, -0.887221, -0.048700,
		34.342072, 39.903225, 47.751148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180870, 40.586594, 47.187931>,  <34.663208, 40.524281, 47.785240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180870, 40.586594, 47.187931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050896, 40.296600, 47.430851>,  <33.972912, 40.122604, 47.576603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050896, 40.296600, 47.430851>,  <34.180870, 40.586594, 47.187931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050896, 40.296600, 47.430851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894831, 0.443519, 0.050685,
		-0.306093, -0.526958, -0.792857,
		-0.324938, -0.724987, 0.607297,
		33.953415, 40.079105, 47.613041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595688, 40.406296, 46.877064>,  <34.180870, 40.586594, 47.187931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595688, 40.406296, 46.877064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592224, 40.298069, 47.262127>,  <33.590145, 40.233131, 47.493164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592224, 40.298069, 47.262127>,  <33.595688, 40.406296, 46.877064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592224, 40.298069, 47.262127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899507, 0.422651, 0.110698,
		-0.436821, -0.864961, -0.247042,
		-0.008663, -0.270571, 0.962661,
		33.589626, 40.216896, 47.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876499, 40.210648, 47.047348>,  <33.595688, 40.406296, 46.877064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876499, 40.210648, 47.047348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044762, 40.282688, 47.403015>,  <33.145718, 40.325912, 47.616413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044762, 40.282688, 47.403015>,  <32.876499, 40.210648, 47.047348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044762, 40.282688, 47.403015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847641, 0.427347, 0.314452,
		-0.323348, -0.885967, 0.332427,
		0.420656, 0.180102, 0.889164,
		33.170959, 40.336720, 47.669765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397598, 39.961758, 47.479137>,  <32.876499, 40.210648, 47.047348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397598, 39.961758, 47.479137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618320, 40.185028, 47.726994>,  <32.750755, 40.318989, 47.875706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618320, 40.185028, 47.726994>,  <32.397598, 39.961758, 47.479137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618320, 40.185028, 47.726994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812001, 0.190169, 0.551806,
		0.190169, -0.807635, 0.558177,
		-0.551806, -0.558177, -0.619636,
		32.783863, 40.352482, 47.912884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346298, 39.665169, 48.090080>,  <32.397598, 39.961758, 47.479137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346298, 39.665169, 48.090080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440598, 40.048744, 48.153149>,  <32.497177, 40.278889, 48.190990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440598, 40.048744, 48.153149>,  <32.346298, 39.665169, 48.090080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440598, 40.048744, 48.153149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760382, 0.080978, 0.644408,
		0.605180, -0.271806, 0.748250,
		0.235746, 0.958939, 0.157670,
		32.511322, 40.336426, 48.200451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245434, 39.772278, 48.804070>,  <32.346298, 39.665169, 48.090080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245434, 39.772278, 48.804070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274872, 40.153942, 48.688026>,  <32.292534, 40.382938, 48.618401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274872, 40.153942, 48.688026>,  <32.245434, 39.772278, 48.804070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274872, 40.153942, 48.688026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653917, 0.265808, 0.708336,
		0.752978, 0.137575, 0.643503,
		0.073599, 0.954159, -0.290110,
		32.296951, 40.440189, 48.600994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473068, 40.148762, 49.321033>,  <32.245434, 39.772278, 48.804070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473068, 40.148762, 49.321033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267807, 40.399857, 49.086895>,  <32.144650, 40.550514, 48.946411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267807, 40.399857, 49.086895>,  <32.473068, 40.148762, 49.321033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267807, 40.399857, 49.086895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603561, 0.220960, 0.766088,
		0.610236, 0.746410, 0.265489,
		-0.513153, 0.627733, -0.585342,
		32.113861, 40.588177, 48.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379883, 40.625122, 49.818169>,  <32.473068, 40.148762, 49.321033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379883, 40.625122, 49.818169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159126, 40.748730, 49.508350>,  <32.026672, 40.822895, 49.322460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159126, 40.748730, 49.508350>,  <32.379883, 40.625122, 49.818169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159126, 40.748730, 49.508350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615312, 0.475997, 0.628346,
		0.562852, 0.823367, -0.072556,
		-0.551896, 0.309021, -0.774543,
		31.993557, 40.841434, 49.275986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315189, 41.394241, 49.758247>,  <32.379883, 40.625122, 49.818169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315189, 41.394241, 49.758247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.003605, 41.254498, 49.549953>,  <31.816652, 41.170650, 49.424976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.003605, 41.254498, 49.549953>,  <32.315189, 41.394241, 49.758247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003605, 41.254498, 49.549953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623273, 0.522572, 0.581764,
		0.068874, 0.777731, -0.624812,
		-0.778965, -0.349360, -0.520731,
		31.769915, 41.149689, 49.393734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942499, 41.991310, 49.549282>,  <32.315189, 41.394241, 49.758247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942499, 41.991310, 49.549282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.698965, 41.673992, 49.549355>,  <31.552845, 41.483601, 49.549397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.698965, 41.673992, 49.549355>,  <31.942499, 41.991310, 49.549282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698965, 41.673992, 49.549355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643245, 0.493812, 0.585137,
		-0.464277, 0.356136, -0.810934,
		-0.608837, -0.793295, 0.000182,
		31.516314, 41.436005, 49.549408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257751, 42.277493, 49.423145>,  <31.942499, 41.991310, 49.549282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257751, 42.277493, 49.423145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.210136, 41.912792, 49.580391>,  <31.181566, 41.693970, 49.674736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.210136, 41.912792, 49.580391>,  <31.257751, 42.277493, 49.423145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210136, 41.912792, 49.580391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677790, 0.363946, 0.638862,
		-0.725556, -0.190398, -0.661300,
		-0.119039, -0.911752, 0.393112,
		31.174425, 41.639267, 49.698326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974548, 42.888889, 49.368622>,  <31.257751, 42.277493, 49.423145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974548, 42.888889, 49.368622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190157, 43.194698, 49.227222>,  <31.319521, 43.378185, 49.142384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190157, 43.194698, 49.227222>,  <30.974548, 42.888889, 49.368622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190157, 43.194698, 49.227222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597869, 0.051651, -0.799928,
		-0.593304, 0.642524, 0.484925,
		0.539020, 0.764522, -0.353501,
		31.351864, 43.424053, 49.121174>
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
