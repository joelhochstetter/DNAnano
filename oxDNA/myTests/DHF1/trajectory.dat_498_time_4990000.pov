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
	<3.819754, 1.968477, 4.085425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794459, 1.611336, 3.907070>,  <3.779283, 1.397051, 3.800057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794459, 1.611336, 3.907070>,  <3.819754, 1.968477, 4.085425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.794459, 1.611336, 3.907070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098957, -0.450189, 0.887433,
		-0.993080, 0.011994, 0.116822,
		-0.063236, -0.892853, -0.445887,
		3.775489, 1.343480, 3.773304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.649091, 1.554149, 4.568718>,  <3.819754, 1.968477, 4.085425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.649091, 1.554149, 4.568718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.774163, 1.262848, 4.324791>,  <3.849207, 1.088067, 4.178435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.774163, 1.262848, 4.324791>,  <3.649091, 1.554149, 4.568718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.774163, 1.262848, 4.324791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243990, -0.558887, 0.792536,
		-0.917986, -0.396601, 0.002933,
		0.312681, -0.728253, -0.609818,
		3.867968, 1.044372, 4.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.270726, 0.901099, 4.541480>,  <3.649091, 1.554149, 4.568718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.270726, 0.901099, 4.541480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.635441, 0.785023, 4.425251>,  <3.854270, 0.715377, 4.355514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.635441, 0.785023, 4.425251>,  <3.270726, 0.901099, 4.541480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.635441, 0.785023, 4.425251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037898, -0.764013, 0.644087,
		-0.408908, -0.576259, -0.707615,
		0.911788, -0.290190, -0.290572,
		3.908977, 0.697966, 4.338079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.284208, 0.289071, 4.038834>,  <3.270726, 0.901099, 4.541480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.284208, 0.289071, 4.038834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567384, 0.316631, 4.319996>,  <3.737289, 0.333167, 4.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567384, 0.316631, 4.319996>,  <3.284208, 0.289071, 4.038834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567384, 0.316631, 4.319996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326855, -0.850279, 0.412542,
		0.626089, -0.521803, -0.579425,
		0.707939, 0.068900, 0.702905,
		3.779766, 0.337301, 4.530867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.476932, -0.406622, 4.130837>,  <3.284208, 0.289071, 4.038834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.476932, -0.406622, 4.130837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.570373, -0.195908, 4.457745>,  <3.626437, -0.069479, 4.653889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.570373, -0.195908, 4.457745>,  <3.476932, -0.406622, 4.130837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.570373, -0.195908, 4.457745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436329, -0.694350, 0.572272,
		0.868935, -0.490281, 0.067651,
		0.233601, 0.526786, 0.817269,
		3.640453, -0.037872, 4.702925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.883085, -0.882941, 4.528460>,  <3.476932, -0.406622, 4.130837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.883085, -0.882941, 4.528460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.740067, -0.600861, 4.773361>,  <3.654257, -0.431612, 4.920302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.740067, -0.600861, 4.773361>,  <3.883085, -0.882941, 4.528460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.740067, -0.600861, 4.773361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381990, -0.708673, 0.593183,
		0.852201, -0.021787, 0.522761,
		-0.357543, 0.705200, 0.612255,
		3.632805, -0.389300, 4.957037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.156139, -1.017607, 5.198290>,  <3.883085, -0.882941, 4.528460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.156139, -1.017607, 5.198290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.822396, -0.800797, 5.238400>,  <3.622150, -0.670710, 5.262465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.822396, -0.800797, 5.238400>,  <4.156139, -1.017607, 5.198290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.822396, -0.800797, 5.238400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403647, -0.724668, 0.558502,
		0.375389, 0.425515, 0.823420,
		-0.834357, 0.542027, 0.100274,
		3.572089, -0.638188, 5.268482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.925796, -1.185609, 5.923571>,  <4.156139, -1.017607, 5.198290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.925796, -1.185609, 5.923571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.610689, -1.002838, 5.758335>,  <3.421625, -0.893176, 5.659194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.610689, -1.002838, 5.758335>,  <3.925796, -1.185609, 5.923571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.610689, -1.002838, 5.758335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608795, -0.475456, 0.635067,
		0.093774, 0.751771, 0.652723,
		-0.787766, 0.456928, -0.413089,
		3.374359, -0.865760, 5.634408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.303186, 3.330487, 1.008169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.906631, 3.380081, 1.025036>,  <2.668699, 3.409838, 1.035156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.906631, 3.380081, 1.025036>,  <3.303186, 3.330487, 1.008169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.906631, 3.380081, 1.025036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095957, 0.906842, -0.410401,
		-0.089123, -0.402820, -0.910930,
		-0.991388, 0.123987, 0.042167,
		2.609215, 3.417277, 1.037686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.814819, 3.333811, 0.384751>,  <3.303186, 3.330487, 1.008169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.814819, 3.333811, 0.384751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.722187, 3.572002, 0.692459>,  <2.666608, 3.714917, 0.877084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.722187, 3.572002, 0.692459>,  <2.814819, 3.333811, 0.384751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.722187, 3.572002, 0.692459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263083, 0.799636, -0.539786,
		-0.936568, 0.077379, -0.341839,
		-0.231579, 0.595478, 0.769270,
		2.652714, 3.750646, 0.923240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508065, 3.831125, 0.023826>,  <2.814819, 3.333811, 0.384751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508065, 3.831125, 0.023826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623547, 3.969460, 0.380936>,  <2.692836, 4.052461, 0.595201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.623547, 3.969460, 0.380936>,  <2.508065, 3.831125, 0.023826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.623547, 3.969460, 0.380936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276915, 0.862464, -0.423645,
		-0.916497, 0.369531, 0.153230,
		0.288705, 0.345837, 0.892774,
		2.710158, 4.073211, 0.648768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.385553, 4.552585, -0.001670>,  <2.508065, 3.831125, 0.023826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.385553, 4.552585, -0.001670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670559, 4.448730, 0.259071>,  <2.841562, 4.386418, 0.415516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670559, 4.448730, 0.259071>,  <2.385553, 4.552585, -0.001670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.670559, 4.448730, 0.259071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600351, 0.706453, -0.374837,
		-0.363183, 0.658418, 0.659230,
		0.712514, -0.259636, 0.651853,
		2.884313, 4.370840, 0.454627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.569737, 5.154292, 0.486399>,  <2.385553, 4.552585, -0.001670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.569737, 5.154292, 0.486399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885635, 4.920052, 0.413326>,  <3.075175, 4.779508, 0.369482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885635, 4.920052, 0.413326>,  <2.569737, 5.154292, 0.486399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885635, 4.920052, 0.413326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537444, 0.804089, -0.254155,
		0.295726, 0.102537, 0.949754,
		0.789747, -0.585600, -0.182683,
		3.122559, 4.744371, 0.358521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.099440, 5.577432, 0.711399>,  <2.569737, 5.154292, 0.486399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.099440, 5.577432, 0.711399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.261696, 5.286934, 0.489399>,  <3.359049, 5.112635, 0.356199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.261696, 5.286934, 0.489399>,  <3.099440, 5.577432, 0.711399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.261696, 5.286934, 0.489399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709983, 0.632762, -0.309089,
		0.575657, -0.268661, 0.772295,
		0.405639, -0.726246, -0.554999,
		3.383388, 5.069060, 0.322899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.795737, 5.645064, 0.851422>,  <3.099440, 5.577432, 0.711399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.795737, 5.645064, 0.851422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.761597, 5.440193, 0.509571>,  <3.741112, 5.317270, 0.304460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.761597, 5.440193, 0.509571>,  <3.795737, 5.645064, 0.851422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.761597, 5.440193, 0.509571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626416, 0.639442, -0.445777,
		0.774802, -0.573400, 0.266259,
		-0.085351, -0.512178, -0.854628,
		3.735991, 5.286540, 0.253183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.429447, 5.544807, 0.640458>,  <3.795737, 5.645064, 0.851422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.429447, 5.544807, 0.640458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.222580, 5.477268, 0.304832>,  <4.098460, 5.436745, 0.103457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.222580, 5.477268, 0.304832>,  <4.429447, 5.544807, 0.640458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.222580, 5.477268, 0.304832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687603, 0.501794, -0.524790,
		0.509647, -0.848347, -0.143410,
		-0.517167, -0.168849, -0.839064,
		4.067430, 5.426614, 0.053113>
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
