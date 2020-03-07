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
	<36.745609, 52.447353, 49.299267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426498, 52.270187, 49.462914>,  <36.235031, 52.163887, 49.561100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426498, 52.270187, 49.462914>,  <36.745609, 52.447353, 49.299267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426498, 52.270187, 49.462914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398365, -0.896525, -0.193773,
		0.452608, 0.008389, 0.891670,
		-0.797779, -0.442913, 0.409116,
		36.187164, 52.137314, 49.585648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002453, 52.078293, 49.936058>,  <36.745609, 52.447353, 49.299267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002453, 52.078293, 49.936058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664955, 51.917393, 49.793907>,  <36.462456, 51.820854, 49.708618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664955, 51.917393, 49.793907>,  <37.002453, 52.078293, 49.936058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664955, 51.917393, 49.793907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456639, -0.885920, -0.081402,
		-0.282090, -0.230961, 0.931172,
		-0.843745, -0.402247, -0.355375,
		36.411831, 51.796719, 49.687294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927753, 51.434296, 50.318707>,  <37.002453, 52.078293, 49.936058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927753, 51.434296, 50.318707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727573, 51.410690, 49.973206>,  <36.607464, 51.396526, 49.765903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727573, 51.410690, 49.973206>,  <36.927753, 51.434296, 50.318707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727573, 51.410690, 49.973206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434267, -0.880200, -0.191468,
		-0.748975, -0.470919, 0.466124,
		-0.500449, -0.059018, -0.863752,
		36.577438, 51.392986, 49.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645779, 51.246372, 50.530891>,  <36.927753, 51.434296, 50.318707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645779, 51.246372, 50.530891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597370, 50.911621, 50.744431>,  <37.568325, 50.710770, 50.872555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597370, 50.911621, 50.744431>,  <37.645779, 51.246372, 50.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597370, 50.911621, 50.744431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876763, 0.162053, 0.452797,
		-0.465447, 0.522853, 0.714131,
		-0.121019, -0.836877, 0.533846,
		37.561066, 50.660557, 50.904583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043896, 51.370632, 51.083092>,  <37.645779, 51.246372, 50.530891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043896, 51.370632, 51.083092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020241, 50.974251, 51.034904>,  <38.006050, 50.736423, 51.005993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020241, 50.974251, 51.034904>,  <38.043896, 51.370632, 51.083092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020241, 50.974251, 51.034904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912588, -0.102572, 0.395806,
		-0.404582, -0.086529, 0.910399,
		-0.059133, -0.990955, -0.120464,
		38.002502, 50.676964, 50.998764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002071, 50.941303, 51.743294>,  <38.043896, 51.370632, 51.083092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002071, 50.941303, 51.743294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209080, 50.774502, 51.444420>,  <38.333286, 50.674423, 51.265095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209080, 50.774502, 51.444420>,  <38.002071, 50.941303, 51.743294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209080, 50.774502, 51.444420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816381, -0.020938, 0.577134,
		-0.256311, -0.908665, 0.329596,
		0.517520, -0.417001, -0.747183,
		38.364334, 50.649403, 51.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288013, 50.324753, 51.847191>,  <38.002071, 50.941303, 51.743294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288013, 50.324753, 51.847191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562801, 50.457169, 51.588428>,  <38.727673, 50.536617, 51.433170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562801, 50.457169, 51.588428>,  <38.288013, 50.324753, 51.847191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562801, 50.457169, 51.588428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726682, -0.316091, 0.609935,
		-0.002569, -0.889101, -0.457704,
		0.686969, 0.331038, -0.646905,
		38.768890, 50.556480, 51.394356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748127, 49.756203, 51.434593>,  <38.288013, 50.324753, 51.847191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748127, 49.756203, 51.434593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914764, 50.100052, 51.552914>,  <39.014748, 50.306362, 51.623905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914764, 50.100052, 51.552914>,  <38.748127, 49.756203, 51.434593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914764, 50.100052, 51.552914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686564, -0.510779, 0.517431,
		0.595886, -0.012469, -0.802972,
		0.416594, 0.859621, 0.295805,
		39.039742, 50.357937, 51.641655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467079, 49.806980, 51.231377>,  <38.748127, 49.756203, 51.434593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467079, 49.806980, 51.231377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392445, 50.031567, 51.553852>,  <39.347664, 50.166317, 51.747337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392445, 50.031567, 51.553852>,  <39.467079, 49.806980, 51.231377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392445, 50.031567, 51.553852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670611, -0.526901, 0.522164,
		0.717960, 0.638069, -0.278212,
		-0.186586, 0.561465, 0.806190,
		39.336468, 50.200005, 51.795708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054333, 50.174191, 51.389378>,  <39.467079, 49.806980, 51.231377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054333, 50.174191, 51.389378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851070, 50.142715, 51.732445>,  <39.729115, 50.123833, 51.938286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851070, 50.142715, 51.732445>,  <40.054333, 50.174191, 51.389378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851070, 50.142715, 51.732445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795938, -0.423341, 0.432742,
		0.329034, 0.902547, 0.277749,
		-0.508153, -0.078684, 0.857665,
		39.698624, 50.119110, 51.989746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251221, 50.777283, 51.826324>,  <40.054333, 50.174191, 51.389378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251221, 50.777283, 51.826324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117615, 50.431591, 51.976814>,  <40.037449, 50.224178, 52.067108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117615, 50.431591, 51.976814>,  <40.251221, 50.777283, 51.826324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117615, 50.431591, 51.976814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898137, -0.170717, 0.405224,
		-0.285977, 0.473254, 0.833215,
		-0.334018, -0.864226, 0.376226,
		40.017410, 50.172325, 52.089684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251125, 50.712349, 52.541676>,  <40.251221, 50.777283, 51.826324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251125, 50.712349, 52.541676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315483, 50.372540, 52.340706>,  <40.354099, 50.168655, 52.220123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315483, 50.372540, 52.340706>,  <40.251125, 50.712349, 52.541676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315483, 50.372540, 52.340706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859141, -0.130002, 0.494951,
		-0.485787, -0.511285, 0.708942,
		0.160897, -0.849521, -0.502420,
		40.363750, 50.117683, 52.189980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521362, 50.109146, 53.000683>,  <40.251125, 50.712349, 52.541676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521362, 50.109146, 53.000683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617626, 50.025978, 52.621452>,  <40.675385, 49.976078, 52.393913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617626, 50.025978, 52.621452>,  <40.521362, 50.109146, 53.000683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617626, 50.025978, 52.621452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880853, -0.363460, 0.303307,
		-0.407651, -0.908112, 0.095672,
		0.240664, -0.207916, -0.948078,
		40.689827, 49.963604, 52.337029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796295, 49.454208, 53.065105>,  <40.521362, 50.109146, 53.000683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796295, 49.454208, 53.065105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997673, 49.676208, 52.800220>,  <41.118500, 49.809406, 52.641289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997673, 49.676208, 52.800220>,  <40.796295, 49.454208, 53.065105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997673, 49.676208, 52.800220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863003, -0.285724, 0.416639,
		0.042024, -0.781243, -0.622811,
		0.503449, 0.554996, -0.662208,
		41.148708, 49.842709, 52.601559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251514, 49.091286, 52.507206>,  <40.796295, 49.454208, 53.065105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251514, 49.091286, 52.507206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411236, 49.441212, 52.616932>,  <41.507069, 49.651169, 52.682770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411236, 49.441212, 52.616932>,  <41.251514, 49.091286, 52.507206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411236, 49.441212, 52.616932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803636, -0.477990, 0.354534,
		0.441274, 0.078885, -0.893898,
		0.399307, 0.874816, 0.274319,
		41.531029, 49.703655, 52.699226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903561, 49.168217, 52.181774>,  <41.251514, 49.091286, 52.507206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903561, 49.168217, 52.181774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887249, 49.339516, 52.542870>,  <41.877464, 49.442295, 52.759529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887249, 49.339516, 52.542870>,  <41.903561, 49.168217, 52.181774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887249, 49.339516, 52.542870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872317, -0.425325, 0.241167,
		0.487237, 0.797312, -0.356221,
		-0.040776, 0.428244, 0.902743,
		41.875015, 49.467987, 52.813694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641773, 49.223553, 52.231071>,  <41.903561, 49.168217, 52.181774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641773, 49.223553, 52.231071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469521, 49.242126, 52.591606>,  <42.366169, 49.253269, 52.807926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469521, 49.242126, 52.591606>,  <42.641773, 49.223553, 52.231071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469521, 49.242126, 52.591606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731162, -0.567532, 0.378562,
		0.529113, 0.822041, 0.210445,
		-0.430628, 0.046432, 0.901334,
		42.340332, 49.256058, 52.862007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181343, 49.400517, 52.804142>,  <42.641773, 49.223553, 52.231071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181343, 49.400517, 52.804142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884991, 49.230278, 53.011971>,  <42.707180, 49.128136, 53.136669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884991, 49.230278, 53.011971>,  <43.181343, 49.400517, 52.804142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884991, 49.230278, 53.011971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658325, -0.306946, 0.687308,
		-0.133033, 0.851265, 0.507591,
		-0.740885, -0.425595, 0.519575,
		42.662724, 49.102600, 53.167843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240356, 49.643330, 53.489899>,  <43.181343, 49.400517, 52.804142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240356, 49.643330, 53.489899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085274, 49.275246, 53.468346>,  <42.992222, 49.054398, 53.455414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085274, 49.275246, 53.468346>,  <43.240356, 49.643330, 53.489899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085274, 49.275246, 53.468346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761326, -0.352625, 0.544094,
		-0.519678, 0.169931, 0.837292,
		-0.387708, -0.920206, -0.053878,
		42.968960, 48.999184, 53.452183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206390, 49.324879, 54.203232>,  <43.240356, 49.643330, 53.489899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206390, 49.324879, 54.203232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212383, 49.009033, 53.957863>,  <43.215977, 48.819527, 53.810642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212383, 49.009033, 53.957863>,  <43.206390, 49.324879, 54.203232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212383, 49.009033, 53.957863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793162, -0.364167, 0.488136,
		-0.608827, -0.493852, 0.620838,
		0.014979, -0.789616, -0.613419,
		43.216877, 48.772148, 53.773838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190105, 48.776131, 54.683380>,  <43.206390, 49.324879, 54.203232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190105, 48.776131, 54.683380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381004, 48.757832, 54.332352>,  <43.495544, 48.746853, 54.121735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381004, 48.757832, 54.332352>,  <43.190105, 48.776131, 54.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381004, 48.757832, 54.332352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844491, -0.252313, 0.472412,
		-0.243031, -0.966564, -0.081791,
		0.477253, -0.045739, -0.877575,
		43.524181, 48.744110, 54.069080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519238, 48.225529, 54.646854>,  <43.190105, 48.776131, 54.683380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519238, 48.225529, 54.646854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722664, 48.464462, 54.398804>,  <43.844719, 48.607822, 54.249973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722664, 48.464462, 54.398804>,  <43.519238, 48.225529, 54.646854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722664, 48.464462, 54.398804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852957, -0.251153, 0.457587,
		0.117585, -0.761653, -0.637226,
		0.508564, 0.597332, -0.620126,
		43.875233, 48.643661, 54.212765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093082, 47.881512, 54.413670>,  <43.519238, 48.225529, 54.646854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093082, 47.881512, 54.413670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196800, 48.267796, 54.408344>,  <44.259033, 48.499565, 54.405151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196800, 48.267796, 54.408344>,  <44.093082, 47.881512, 54.413670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196800, 48.267796, 54.408344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841506, -0.219142, 0.493806,
		0.473954, -0.139244, -0.869471,
		0.259297, 0.965706, -0.013311,
		44.274590, 48.557507, 54.404350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825119, 48.073372, 54.094185>,  <44.093082, 47.881512, 54.413670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825119, 48.073372, 54.094185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763725, 48.358765, 54.367645>,  <44.726891, 48.530003, 54.531723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763725, 48.358765, 54.367645>,  <44.825119, 48.073372, 54.094185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763725, 48.358765, 54.367645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828683, -0.283926, 0.482359,
		0.538263, 0.640566, -0.547675,
		-0.153483, 0.713485, 0.683653,
		44.717682, 48.572811, 54.572742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520897, 48.441822, 54.070812>,  <44.825119, 48.073372, 54.094185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520897, 48.441822, 54.070812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322792, 48.588116, 54.386017>,  <45.203930, 48.675892, 54.575138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322792, 48.588116, 54.386017>,  <45.520897, 48.441822, 54.070812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322792, 48.588116, 54.386017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843729, 0.418599, 0.336000,
		-0.206974, 0.831273, -0.515894,
		-0.495260, 0.365732, 0.788009,
		45.174213, 48.697834, 54.622421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385754, 49.206913, 54.039284>,  <45.520897, 48.441822, 54.070812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385754, 49.206913, 54.039284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413284, 49.033051, 54.398468>,  <45.429802, 48.928734, 54.613979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413284, 49.033051, 54.398468>,  <45.385754, 49.206913, 54.039284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413284, 49.033051, 54.398468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956249, 0.285288, 0.064797,
		-0.284342, 0.854217, 0.435273,
		0.068828, -0.434654, 0.897964,
		45.433933, 48.902653, 54.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601196, 49.578461, 54.624325>,  <45.385754, 49.206913, 54.039284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601196, 49.578461, 54.624325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710518, 49.208244, 54.729156>,  <45.776112, 48.986115, 54.792053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710518, 49.208244, 54.729156>,  <45.601196, 49.578461, 54.624325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710518, 49.208244, 54.729156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958038, 0.286376, 0.012279,
		-0.086417, 0.247722, 0.964969,
		0.273303, -0.925539, 0.262075,
		45.792507, 48.930584, 54.807777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.241341, 49.681164, 54.894432>,  <45.601196, 49.578461, 54.624325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.241341, 49.681164, 54.894432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254303, 49.291183, 54.806412>,  <46.262081, 49.057194, 54.753601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254303, 49.291183, 54.806412>,  <46.241341, 49.681164, 54.894432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254303, 49.291183, 54.806412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959657, -0.031177, 0.279440,
		-0.279301, -0.220226, 0.934608,
		0.032401, -0.974951, -0.220049,
		46.264023, 48.998699, 54.740398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534973, 49.408916, 55.436123>,  <46.241341, 49.681164, 54.894432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534973, 49.408916, 55.436123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614662, 49.187260, 55.112831>,  <46.662476, 49.054264, 54.918858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614662, 49.187260, 55.112831>,  <46.534973, 49.408916, 55.436123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614662, 49.187260, 55.112831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965962, -0.027822, 0.257183,
		-0.165003, -0.831954, 0.529741,
		0.199226, -0.554146, -0.808227,
		46.674431, 49.021015, 54.870361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014835, 48.860615, 55.602921>,  <46.534973, 49.408916, 55.436123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014835, 48.860615, 55.602921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053513, 48.875206, 55.205063>,  <47.076721, 48.883961, 54.966347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.053513, 48.875206, 55.205063>,  <47.014835, 48.860615, 55.602921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053513, 48.875206, 55.205063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933451, -0.350143, 0.077906,
		-0.345426, -0.935986, -0.067906,
		0.096696, 0.036476, -0.994645,
		47.082520, 48.886150, 54.906670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203072, 48.195713, 55.325603>,  <47.014835, 48.860615, 55.602921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203072, 48.195713, 55.325603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332508, 48.484867, 55.081398>,  <47.410168, 48.658360, 54.934875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332508, 48.484867, 55.081398>,  <47.203072, 48.195713, 55.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332508, 48.484867, 55.081398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932415, -0.353344, 0.075823,
		-0.160910, -0.593787, -0.788368,
		0.323588, 0.722886, -0.610513,
		47.429585, 48.701733, 54.898243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591225, 47.913628, 54.710812>,  <47.203072, 48.195713, 55.325603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591225, 47.913628, 54.710812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691235, 48.273796, 54.853210>,  <47.751240, 48.489895, 54.938652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691235, 48.273796, 54.853210>,  <47.591225, 47.913628, 54.710812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691235, 48.273796, 54.853210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925590, -0.330189, 0.185087,
		0.284204, 0.283235, -0.915973,
		0.250021, 0.900418, 0.356000,
		47.766239, 48.543922, 54.960011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.216331, 48.190704, 54.354736>,  <47.591225, 47.913628, 54.710812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.216331, 48.190704, 54.354736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.183311, 48.327339, 54.729225>,  <48.163502, 48.409321, 54.953918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.183311, 48.327339, 54.729225>,  <48.216331, 48.190704, 54.354736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.183311, 48.327339, 54.729225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860832, -0.448908, 0.239689,
		0.502150, 0.825711, -0.256995,
		-0.082547, 0.341589, 0.936217,
		48.158546, 48.429817, 55.010090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.826111, 48.008148, 54.612247>,  <48.216331, 48.190704, 54.354736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.826111, 48.008148, 54.612247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.633373, 48.097565, 54.951153>,  <48.517731, 48.151215, 55.154495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.633373, 48.097565, 54.951153>,  <48.826111, 48.008148, 54.612247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.633373, 48.097565, 54.951153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701088, -0.481678, 0.525796,
		0.525644, 0.847359, 0.075374,
		-0.481844, 0.223537, 0.847265,
		48.488819, 48.164627, 55.205334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.554970, 48.222610, 54.427078>,  <48.826111, 48.008148, 54.612247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.554970, 48.222610, 54.427078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.328613, 48.551460, 54.402145>,  <49.192799, 48.748768, 54.387184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.328613, 48.551460, 54.402145>,  <49.554970, 48.222610, 54.427078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.328613, 48.551460, 54.402145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264102, -0.109129, 0.958301,
		0.781036, 0.558756, 0.278879,
		-0.565890, 0.822120, -0.062335,
		49.158848, 48.798096, 54.383446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.893574, 48.904484, 54.865025>,  <49.554970, 48.222610, 54.427078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.893574, 48.904484, 54.865025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.512180, 48.812702, 54.786819>,  <49.283344, 48.757633, 54.739895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.512180, 48.812702, 54.786819>,  <49.893574, 48.904484, 54.865025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.512180, 48.812702, 54.786819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195125, -0.024608, 0.980470,
		-0.229782, 0.973009, -0.021309,
		-0.953481, -0.229453, -0.195513,
		49.226135, 48.743866, 54.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.430096, 48.405880, 54.963772>,  <49.893574, 48.904484, 54.865025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.430096, 48.405880, 54.963772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.579147, 48.679726, 54.713188>,  <50.668579, 48.844032, 54.562840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.579147, 48.679726, 54.713188>,  <50.430096, 48.405880, 54.963772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.579147, 48.679726, 54.713188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744234, 0.182774, 0.642425,
		0.554313, -0.705620, -0.441405,
		0.372630, 0.684613, -0.626460,
		50.690937, 48.885109, 54.525249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.153084, 48.287506, 54.722202>,  <50.430096, 48.405880, 54.963772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.153084, 48.287506, 54.722202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.036026, 48.661320, 54.803196>,  <50.965790, 48.885609, 54.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.036026, 48.661320, 54.803196>,  <51.153084, 48.287506, 54.722202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.036026, 48.661320, 54.803196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688560, 0.059014, 0.722774,
		0.663510, 0.350939, -0.660755,
		-0.292643, 0.934537, 0.202486,
		50.948235, 48.941681, 54.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.769554, 48.695644, 54.931034>,  <51.153084, 48.287506, 54.722202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.769554, 48.695644, 54.931034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.470921, 48.939362, 55.037903>,  <51.291740, 49.085590, 55.102024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.470921, 48.939362, 55.037903>,  <51.769554, 48.695644, 54.931034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.470921, 48.939362, 55.037903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500459, 0.249739, 0.828958,
		0.438354, 0.752592, -0.491376,
		-0.746583, 0.609291, 0.267168,
		51.246944, 49.122150, 55.118053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.333263, 49.122551, 54.814957>,  <51.769554, 48.695644, 54.931034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.333263, 49.122551, 54.814957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.547657, 49.110153, 55.152420>,  <52.676292, 49.102715, 55.354897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.547657, 49.110153, 55.152420>,  <52.333263, 49.122551, 54.814957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.547657, 49.110153, 55.152420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638429, -0.638985, -0.429077,
		0.552384, 0.768594, -0.322700,
		0.535986, -0.030994, 0.843658,
		52.708454, 49.100857, 55.405518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.804424, 49.577618, 54.591393>,  <52.333263, 49.122551, 54.814957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.804424, 49.577618, 54.591393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.059742, 49.465836, 54.304482>,  <52.212933, 49.398766, 54.132336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.059742, 49.465836, 54.304482>,  <51.804424, 49.577618, 54.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.059742, 49.465836, 54.304482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212653, 0.831507, -0.513200,
		0.739839, 0.480103, 0.471317,
		0.638292, -0.279459, -0.717277,
		52.251228, 49.381996, 54.089298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.449734, 49.987324, 54.506683>,  <51.804424, 49.577618, 54.591393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.449734, 49.987324, 54.506683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.374744, 49.837257, 54.143562>,  <52.329750, 49.747215, 53.925690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.374744, 49.837257, 54.143562>,  <52.449734, 49.987324, 54.506683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.374744, 49.837257, 54.143562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039528, 0.926320, -0.374658,
		0.981473, -0.034356, -0.188494,
		-0.187478, -0.375168, -0.907800,
		52.318501, 49.724709, 53.871223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.917786, 50.220783, 53.980255>,  <52.449734, 49.987324, 54.506683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.917786, 50.220783, 53.980255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.568478, 50.132095, 53.806709>,  <52.358894, 50.078884, 53.702579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.568478, 50.132095, 53.806709>,  <52.917786, 50.220783, 53.980255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.568478, 50.132095, 53.806709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065710, 0.828740, -0.555763,
		0.482783, -0.513841, -0.709146,
		-0.873271, -0.221715, -0.433866,
		52.306496, 50.065582, 53.676548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.801376, 50.294006, 53.241486>,  <52.917786, 50.220783, 53.980255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.801376, 50.294006, 53.241486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.418087, 50.380238, 53.316677>,  <52.188114, 50.431976, 53.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.418087, 50.380238, 53.316677>,  <52.801376, 50.294006, 53.241486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.418087, 50.380238, 53.316677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058942, 0.791939, -0.607748,
		-0.279881, -0.571279, -0.771562,
		-0.958224, 0.215574, 0.187976,
		52.130619, 50.444908, 53.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.804443, 50.972374, 53.579678>,  <52.801376, 50.294006, 53.241486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.804443, 50.972374, 53.579678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.912788, 51.148514, 53.922073>,  <52.977795, 51.254200, 54.127510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.912788, 51.148514, 53.922073>,  <52.804443, 50.972374, 53.579678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.912788, 51.148514, 53.922073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950691, -0.261923, -0.166084,
		0.151069, 0.858770, -0.489585,
		0.270861, 0.440354, 0.855992,
		52.994045, 51.280621, 54.178871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.203865, 51.592365, 53.542515>,  <52.804443, 50.972374, 53.579678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.203865, 51.592365, 53.542515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.299095, 51.358536, 53.852764>,  <53.356236, 51.218239, 54.038914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.299095, 51.358536, 53.852764>,  <53.203865, 51.592365, 53.542515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.299095, 51.358536, 53.852764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851684, -0.258208, -0.456030,
		0.466855, 0.769157, 0.436398,
		0.238077, -0.584573, 0.775624,
		53.370518, 51.183163, 54.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.735924, 51.897530, 53.936962>,  <53.203865, 51.592365, 53.542515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.735924, 51.897530, 53.936962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.697414, 51.499622, 53.923286>,  <53.674309, 51.260880, 53.915081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.697414, 51.499622, 53.923286>,  <53.735924, 51.897530, 53.936962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.697414, 51.499622, 53.923286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870190, -0.067439, -0.488079,
		0.483219, -0.076741, 0.872130,
		-0.096271, -0.994768, -0.034192,
		53.668533, 51.201191, 53.913029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.307331, 51.763977, 54.192684>,  <53.735924, 51.897530, 53.936962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.307331, 51.763977, 54.192684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.170418, 51.427681, 54.024872>,  <54.088268, 51.225903, 53.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.170418, 51.427681, 54.024872>,  <54.307331, 51.763977, 54.192684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.170418, 51.427681, 54.024872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807668, -0.035112, -0.588591,
		0.480119, -0.540306, 0.691054,
		-0.342284, -0.840736, -0.419530,
		54.067734, 51.175461, 53.899014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.926846, 51.366665, 54.085110>,  <54.307331, 51.763977, 54.192684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.926846, 51.366665, 54.085110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.639946, 51.179222, 53.878822>,  <54.467808, 51.066757, 53.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.639946, 51.179222, 53.878822>,  <54.926846, 51.366665, 54.085110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.639946, 51.179222, 53.878822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668022, -0.251837, -0.700232,
		0.198259, -0.846748, 0.493671,
		-0.717245, -0.468611, -0.515717,
		54.424774, 51.038639, 53.724106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.170212, 50.710659, 54.052315>,  <54.926846, 51.366665, 54.085110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.170212, 50.710659, 54.052315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.933372, 50.789303, 53.739708>,  <54.791267, 50.836487, 53.552143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.933372, 50.789303, 53.739708>,  <55.170212, 50.710659, 54.052315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.933372, 50.789303, 53.739708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639632, -0.475242, -0.604166,
		-0.490191, -0.857608, 0.155636,
		-0.592102, 0.196606, -0.781512,
		54.755741, 50.848286, 53.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.830074, 51.093185, 54.183823>,  <55.170212, 50.710659, 54.052315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.830074, 51.093185, 54.183823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977791, 51.200531, 54.539711>,  <56.066422, 51.264938, 54.753242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977791, 51.200531, 54.539711>,  <55.830074, 51.093185, 54.183823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.977791, 51.200531, 54.539711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519717, 0.734042, -0.437123,
		-0.770399, 0.623830, 0.131607,
		0.369296, 0.268360, 0.889721,
		56.088581, 51.281040, 54.806629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.561958, 51.821781, 54.255875>,  <55.830074, 51.093185, 54.183823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.561958, 51.821781, 54.255875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893150, 51.697212, 54.442406>,  <56.091866, 51.622471, 54.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893150, 51.697212, 54.442406>,  <55.561958, 51.821781, 54.255875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.893150, 51.697212, 54.442406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544185, 0.646913, -0.534196,
		-0.135313, 0.696074, 0.705104,
		0.827981, -0.311423, 0.466329,
		56.141544, 51.603786, 54.582306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.988590, 52.359219, 54.352219>,  <55.561958, 51.821781, 54.255875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.988590, 52.359219, 54.352219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.259804, 52.076775, 54.270554>,  <56.422531, 51.907307, 54.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.259804, 52.076775, 54.270554>,  <55.988590, 52.359219, 54.352219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.259804, 52.076775, 54.270554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501703, 0.647582, -0.573525,
		0.537186, 0.286437, 0.793338,
		0.678030, -0.706110, -0.204166,
		56.463211, 51.864941, 54.209305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.504677, 52.757797, 54.590237>,  <55.988590, 52.359219, 54.352219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.504677, 52.757797, 54.590237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.556534, 52.487350, 54.300117>,  <56.587650, 52.325085, 54.126045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.556534, 52.487350, 54.300117>,  <56.504677, 52.757797, 54.590237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.556534, 52.487350, 54.300117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600028, 0.635839, -0.485464,
		0.789404, -0.372263, 0.488121,
		0.129646, -0.676113, -0.725302,
		56.595428, 52.284515, 54.082527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.241104, 52.738007, 54.424641>,  <56.504677, 52.757797, 54.590237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.241104, 52.738007, 54.424641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.009201, 52.655254, 54.109406>,  <56.870060, 52.605602, 53.920265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.009201, 52.655254, 54.109406>,  <57.241104, 52.738007, 54.424641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.009201, 52.655254, 54.109406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531506, 0.637073, -0.558246,
		0.617562, -0.742520, -0.259387,
		-0.579757, -0.206886, -0.788086,
		56.835274, 52.593189, 53.872978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.561283, 52.459812, 53.716011>,  <57.241104, 52.738007, 54.424641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.561283, 52.459812, 53.716011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.244331, 52.694256, 53.648354>,  <57.054161, 52.834923, 53.607761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.244331, 52.694256, 53.648354>,  <57.561283, 52.459812, 53.716011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.244331, 52.694256, 53.648354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584495, 0.650082, -0.485550,
		-0.174629, -0.483603, -0.857690,
		-0.792383, 0.586107, -0.169140,
		57.006615, 52.870087, 53.597610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.387691, 52.612732, 52.971333>,  <57.561283, 52.459812, 53.716011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.387691, 52.612732, 52.971333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.293617, 52.907501, 53.224831>,  <57.237171, 53.084362, 53.376930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.293617, 52.907501, 53.224831>,  <57.387691, 52.612732, 52.971333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.293617, 52.907501, 53.224831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672069, 0.594333, -0.441692,
		-0.702148, 0.322038, -0.635044,
		-0.235185, 0.736926, 0.633741,
		57.223061, 53.128578, 53.414951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.465137, 53.353611, 52.689491>,  <57.387691, 52.612732, 52.971333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.465137, 53.353611, 52.689491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.498421, 53.422138, 53.082169>,  <57.518391, 53.463257, 53.317776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.498421, 53.422138, 53.082169>,  <57.465137, 53.353611, 52.689491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.498421, 53.422138, 53.082169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796533, 0.580545, -0.168825,
		-0.598842, 0.796000, -0.088160,
		0.083204, 0.171322, 0.981695,
		57.523380, 53.473534, 53.376678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.178715, 53.977112, 53.117802>,  <57.465137, 53.353611, 52.689491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.178715, 53.977112, 53.117802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.925247, 54.031395, 52.813156>,  <56.773167, 54.063965, 52.630371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.925247, 54.031395, 52.813156>,  <57.178715, 53.977112, 53.117802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.925247, 54.031395, 52.813156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061707, -0.990224, -0.125097,
		-0.771141, -0.032273, 0.635845,
		-0.633666, 0.135704, -0.761611,
		56.735146, 54.072105, 52.584671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.749313, 54.580841, 52.817768>,  <57.178715, 53.977112, 53.117802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.749313, 54.580841, 52.817768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.765526, 54.966782, 52.713905>,  <56.775253, 55.198345, 52.651588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.765526, 54.966782, 52.713905>,  <56.749313, 54.580841, 52.817768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.765526, 54.966782, 52.713905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912197, 0.070313, 0.403675,
		0.407743, -0.253217, -0.877284,
		0.040533, 0.964851, -0.259654,
		56.777687, 55.256237, 52.636009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.447430, 54.704777, 52.579590>,  <56.749313, 54.580841, 52.817768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.447430, 54.704777, 52.579590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.291901, 55.055653, 52.692268>,  <57.198582, 55.266178, 52.759876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.291901, 55.055653, 52.692268>,  <57.447430, 54.704777, 52.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.291901, 55.055653, 52.692268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852986, 0.227202, 0.469887,
		0.348178, 0.422986, -0.836573,
		-0.388827, 0.877190, 0.281695,
		57.175251, 55.318810, 52.776775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.882137, 55.270119, 52.954239>,  <57.447430, 54.704777, 52.579590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.882137, 55.270119, 52.954239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.201027, 55.385139, 53.166557>,  <58.392361, 55.454151, 53.293949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.201027, 55.385139, 53.166557>,  <57.882137, 55.270119, 52.954239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.201027, 55.385139, 53.166557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568193, 0.060397, 0.820676,
		0.203925, -0.955860, 0.211533,
		0.797227, 0.287548, 0.530797,
		58.440193, 55.471405, 53.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.058090, 54.735886, 53.493217>,  <57.882137, 55.270119, 52.954239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.058090, 54.735886, 53.493217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.167679, 55.091007, 53.641136>,  <58.233433, 55.304081, 53.729885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.167679, 55.091007, 53.641136>,  <58.058090, 54.735886, 53.493217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.167679, 55.091007, 53.641136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431538, -0.230143, 0.872244,
		0.859485, -0.398549, 0.320068,
		0.273971, 0.887802, 0.369794,
		58.249870, 55.357349, 53.752075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.624962, 54.456760, 53.899643>,  <58.058090, 54.735886, 53.493217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.624962, 54.456760, 53.899643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.524376, 54.185860, 54.176220>,  <58.464024, 54.023319, 54.342167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.524376, 54.185860, 54.176220>,  <58.624962, 54.456760, 53.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.524376, 54.185860, 54.176220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912691, -0.071831, -0.402287,
		0.322117, -0.732237, -0.600057,
		-0.251467, -0.677251, 0.691445,
		58.448936, 53.982685, 54.383652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.288239, 54.793106, 54.077614>,  <58.624962, 54.456760, 53.899643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.288239, 54.793106, 54.077614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.407394, 55.032120, 53.779831>,  <59.478889, 55.175529, 53.601162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.407394, 55.032120, 53.779831>,  <59.288239, 54.793106, 54.077614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.407394, 55.032120, 53.779831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627974, 0.464695, 0.624265,
		0.718965, -0.653462, -0.236808,
		0.297890, 0.597533, -0.744457,
		59.496761, 55.211380, 53.556496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.895359, 54.961430, 54.248486>,  <59.288239, 54.793106, 54.077614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.895359, 54.961430, 54.248486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.822090, 55.250069, 53.981426>,  <59.778130, 55.423252, 53.821190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.822090, 55.250069, 53.981426>,  <59.895359, 54.961430, 54.248486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.822090, 55.250069, 53.981426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505417, 0.651632, 0.565624,
		0.843209, -0.233830, -0.484068,
		-0.183174, 0.721595, -0.667644,
		59.767139, 55.466549, 53.781132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.513016, 55.365334, 54.346485>,  <59.895359, 54.961430, 54.248486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.513016, 55.365334, 54.346485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.241188, 55.582577, 54.149216>,  <60.078091, 55.712921, 54.030853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.241188, 55.582577, 54.149216>,  <60.513016, 55.365334, 54.346485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.241188, 55.582577, 54.149216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276757, 0.812380, 0.513268,
		0.679402, 0.212314, -0.702379,
		-0.679573, 0.543104, -0.493173,
		60.037315, 55.745506, 54.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.762745, 55.949505, 53.984619>,  <60.513016, 55.365334, 54.346485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.762745, 55.949505, 53.984619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.391441, 56.022079, 54.114487>,  <60.168659, 56.065624, 54.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.391441, 56.022079, 54.114487>,  <60.762745, 55.949505, 53.984619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.391441, 56.022079, 54.114487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341099, 0.763292, 0.548669,
		-0.148269, 0.620053, -0.770423,
		-0.928261, 0.181440, 0.324672,
		60.112965, 56.076511, 54.211887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.589386, 56.593189, 53.869396>,  <60.762745, 55.949505, 53.984619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.589386, 56.593189, 53.869396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.400520, 56.459030, 54.195480>,  <60.287201, 56.378536, 54.391132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.400520, 56.459030, 54.195480>,  <60.589386, 56.593189, 53.869396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.400520, 56.459030, 54.195480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412135, 0.733500, 0.540484,
		-0.779235, 0.591174, -0.208101,
		-0.472162, -0.335399, 0.815212,
		60.258873, 56.358410, 54.440044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.815281, 56.876862, 54.512257>,  <60.589386, 56.593189, 53.869396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.815281, 56.876862, 54.512257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.124626, 56.914360, 54.261459>,  <61.310234, 56.936859, 54.110981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.124626, 56.914360, 54.261459>,  <60.815281, 56.876862, 54.512257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.124626, 56.914360, 54.261459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341446, 0.771716, 0.536534,
		0.534160, -0.629021, 0.564807,
		0.773361, 0.093744, -0.626996,
		61.356636, 56.942482, 54.073360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.464035, 57.013157, 54.834873>,  <60.815281, 56.876862, 54.512257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.464035, 57.013157, 54.834873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.470764, 57.184937, 54.473701>,  <61.474800, 57.288006, 54.256996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.470764, 57.184937, 54.473701>,  <61.464035, 57.013157, 54.834873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.470764, 57.184937, 54.473701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384023, 0.831022, 0.402405,
		0.923170, -0.353516, -0.150939,
		0.016823, 0.429453, -0.902933,
		61.475811, 57.313774, 54.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.980274, 56.532066, 54.490662>,  <61.464035, 57.013157, 54.834873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.980274, 56.532066, 54.490662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.009369, 56.134621, 54.525146>,  <62.026825, 55.896152, 54.545837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.009369, 56.134621, 54.525146>,  <61.980274, 56.532066, 54.490662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.009369, 56.134621, 54.525146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691499, 0.112532, 0.713559,
		-0.718706, 0.007716, 0.695271,
		0.072735, -0.993618, 0.086213,
		62.031189, 55.836536, 54.551010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.904633, 56.352791, 55.249294>,  <61.980274, 56.532066, 54.490662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.904633, 56.352791, 55.249294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.115601, 56.101883, 55.020081>,  <62.242180, 55.951340, 54.882553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.115601, 56.101883, 55.020081>,  <61.904633, 56.352791, 55.249294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.115601, 56.101883, 55.020081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728250, -0.013612, 0.685176,
		-0.437587, -0.778686, 0.449627,
		0.527417, -0.627266, -0.573035,
		62.273827, 55.913704, 54.848171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.188351, 55.758678, 55.658520>,  <61.904633, 56.352791, 55.249294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.188351, 55.758678, 55.658520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.429871, 55.860027, 55.356201>,  <62.574783, 55.920837, 55.174809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.429871, 55.860027, 55.356201>,  <62.188351, 55.758678, 55.658520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.429871, 55.860027, 55.356201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702402, 0.279192, 0.654739,
		0.376906, -0.926204, -0.009394,
		0.603799, 0.253374, -0.755796,
		62.611012, 55.936039, 55.129463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.858498, 55.731457, 55.967285>,  <62.188351, 55.758678, 55.658520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.858498, 55.731457, 55.967285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.889816, 55.929176, 55.620979>,  <62.908607, 56.047806, 55.413197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.889816, 55.929176, 55.620979>,  <62.858498, 55.731457, 55.967285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.889816, 55.929176, 55.620979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821890, 0.459507, 0.336675,
		0.564240, -0.737919, -0.370282,
		0.078292, 0.494297, -0.865760,
		62.913303, 56.077465, 55.361252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.447533, 55.911419, 55.891647>,  <62.858498, 55.731457, 55.967285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.447533, 55.911419, 55.891647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.322693, 56.148670, 55.594788>,  <63.247787, 56.291023, 55.416672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.322693, 56.148670, 55.594788>,  <63.447533, 55.911419, 55.891647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.322693, 56.148670, 55.594788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863028, 0.503606, 0.039547,
		0.397208, -0.628154, -0.669065,
		-0.312104, 0.593130, -0.742151,
		63.229061, 56.326611, 55.372143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.918755, 55.867107, 55.416737>,  <63.447533, 55.911419, 55.891647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.918755, 55.867107, 55.416737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.744308, 56.227013, 55.410606>,  <63.639641, 56.442955, 55.406929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.744308, 56.227013, 55.410606>,  <63.918755, 55.867107, 55.416737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.744308, 56.227013, 55.410606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866607, 0.424511, 0.262264,
		0.242482, 0.101092, -0.964874,
		-0.436113, 0.899761, -0.015330,
		63.613476, 56.496941, 55.406006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.511131, 56.293781, 55.185188>,  <63.918755, 55.867107, 55.416737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.511131, 56.293781, 55.185188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.228561, 56.545956, 55.313881>,  <64.059021, 56.697258, 55.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.228561, 56.545956, 55.313881>,  <64.511131, 56.293781, 55.185188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.228561, 56.545956, 55.313881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702423, 0.680300, 0.209269,
		-0.086945, 0.373827, -0.923414,
		-0.706429, 0.630433, 0.321733,
		64.016632, 56.735085, 55.410400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.317162, 56.382626, 56.011395>,  <64.511131, 56.293781, 55.185188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.317162, 56.382626, 56.011395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.135681, 56.732021, 56.082008>,  <64.026794, 56.941658, 56.124378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.135681, 56.732021, 56.082008>,  <64.317162, 56.382626, 56.011395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.135681, 56.732021, 56.082008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565082, 0.435180, -0.700929,
		-0.689079, -0.218259, -0.691037,
		-0.453710, 0.873488, 0.176539,
		63.999569, 56.994068, 56.134972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.552177, 57.104240, 56.223072>,  <64.317162, 56.382626, 56.011395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.552177, 57.104240, 56.223072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.694206, 57.436775, 56.394096>,  <64.779419, 57.636295, 56.496712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.694206, 57.436775, 56.394096>,  <64.552177, 57.104240, 56.223072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.694206, 57.436775, 56.394096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832965, -0.073717, -0.548394,
		-0.424379, 0.550863, -0.718646,
		0.355067, 0.831334, 0.427566,
		64.800728, 57.686176, 56.522366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.580338, 57.696083, 55.710339>,  <64.552177, 57.104240, 56.223072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.580338, 57.696083, 55.710339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.848969, 57.721184, 56.005646>,  <65.010147, 57.736244, 56.182831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.848969, 57.721184, 56.005646>,  <64.580338, 57.696083, 55.710339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.848969, 57.721184, 56.005646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738236, 0.028268, -0.673950,
		-0.063159, 0.997629, -0.027339,
		0.671579, 0.062748, 0.738271,
		65.050446, 57.740009, 56.227127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.090393, 58.209137, 55.615032>,  <64.580338, 57.696083, 55.710339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.090393, 58.209137, 55.615032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.272575, 57.928139, 55.833778>,  <65.381882, 57.759541, 55.965027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.272575, 57.928139, 55.833778>,  <65.090393, 58.209137, 55.615032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.272575, 57.928139, 55.833778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815911, 0.083634, -0.572096,
		0.356158, 0.706758, 0.611265,
		0.455456, -0.702495, 0.546865,
		65.409210, 57.717392, 55.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.657700, 58.574558, 55.861088>,  <65.090393, 58.209137, 55.615032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.657700, 58.574558, 55.861088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.693558, 58.179543, 55.809341>,  <65.715073, 57.942535, 55.778294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.693558, 58.179543, 55.809341>,  <65.657700, 58.574558, 55.861088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.693558, 58.179543, 55.809341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861962, 0.142003, -0.486679,
		0.498983, -0.067877, 0.863949,
		0.089649, -0.987536, -0.129365,
		65.720451, 57.883282, 55.770531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.277817, 58.365154, 56.060280>,  <65.657700, 58.574558, 55.861088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.277817, 58.365154, 56.060280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.145622, 58.110832, 55.781273>,  <66.066307, 57.958237, 55.613869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.145622, 58.110832, 55.781273>,  <66.277817, 58.365154, 56.060280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.145622, 58.110832, 55.781273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758739, 0.260575, -0.597006,
		0.561337, -0.726532, 0.396298,
		-0.330478, -0.635808, -0.697518,
		66.046478, 57.920090, 55.572018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.854362, 57.782993, 55.784977>,  <66.277817, 58.365154, 56.060280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.854362, 57.782993, 55.784977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.563736, 57.871758, 55.524872>,  <66.389359, 57.925014, 55.368809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.563736, 57.871758, 55.524872>,  <66.854362, 57.782993, 55.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.563736, 57.871758, 55.524872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686212, 0.282146, -0.670453,
		0.034688, -0.933354, -0.357278,
		-0.726574, 0.221912, -0.650266,
		66.345764, 57.938332, 55.329792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.412323, 57.519138, 56.269581>,  <66.854362, 57.782993, 55.784977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.412323, 57.519138, 56.269581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.293098, 57.845825, 56.467224>,  <67.221565, 58.041836, 56.585812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.293098, 57.845825, 56.467224>,  <67.412323, 57.519138, 56.269581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.293098, 57.845825, 56.467224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802278, -0.066142, 0.593275,
		0.517217, 0.573241, -0.635517,
		-0.298055, 0.816713, 0.494108,
		67.203682, 58.090839, 56.615456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.882523, 58.156807, 56.151546>,  <67.412323, 57.519138, 56.269581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.882523, 58.156807, 56.151546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.703934, 58.126480, 56.508179>,  <67.596779, 58.108284, 56.722157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.703934, 58.126480, 56.508179>,  <67.882523, 58.156807, 56.151546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.703934, 58.126480, 56.508179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893747, -0.086000, 0.440251,
		0.043297, 0.993406, 0.106159,
		-0.446477, -0.075818, 0.891577,
		67.569992, 58.103733, 56.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.146324, 58.582016, 56.614460>,  <67.882523, 58.156807, 56.151546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.146324, 58.582016, 56.614460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.002708, 58.268547, 56.817215>,  <67.916534, 58.080463, 56.938869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.002708, 58.268547, 56.817215>,  <68.146324, 58.582016, 56.614460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.002708, 58.268547, 56.817215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882938, -0.109177, 0.456618,
		-0.302500, 0.611500, 0.731137,
		-0.359045, -0.783676, 0.506891,
		67.894997, 58.033443, 56.969284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.295532, 58.651855, 57.313263>,  <68.146324, 58.582016, 56.614460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.295532, 58.651855, 57.313263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.251656, 58.257183, 57.265228>,  <68.225334, 58.020378, 57.236408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.251656, 58.257183, 57.265228>,  <68.295532, 58.651855, 57.313263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.251656, 58.257183, 57.265228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807198, -0.158923, 0.568485,
		-0.580000, -0.034579, 0.813882,
		-0.109687, -0.986685, -0.120087,
		68.218750, 57.961178, 57.229202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.280388, 58.301651, 57.984062>,  <68.295532, 58.651855, 57.313263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.280388, 58.301651, 57.984062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.454292, 58.079201, 57.700737>,  <68.558632, 57.945728, 57.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.454292, 58.079201, 57.700737>,  <68.280388, 58.301651, 57.984062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.454292, 58.079201, 57.700737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882318, 0.105607, 0.458653,
		-0.180268, -0.824358, 0.536597,
		0.434763, -0.556130, -0.708308,
		68.584724, 57.912361, 57.488243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.685265, 57.744114, 58.343941>,  <68.280388, 58.301651, 57.984062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.685265, 57.744114, 58.343941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.836441, 57.806789, 57.978951>,  <68.927147, 57.844395, 57.759956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.836441, 57.806789, 57.978951>,  <68.685265, 57.744114, 58.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.836441, 57.806789, 57.978951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913567, 0.096741, 0.395014,
		0.150168, -0.982898, -0.106583,
		0.377948, 0.156689, -0.912471,
		68.949829, 57.853798, 57.705208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.864098, 57.449795, 59.019871>,  <68.685265, 57.744114, 58.343941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.864098, 57.449795, 59.019871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.555145, 57.196930, 58.995186>,  <68.369774, 57.045212, 58.980377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.555145, 57.196930, 58.995186>,  <68.864098, 57.449795, 59.019871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.555145, 57.196930, 58.995186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586608, -0.672699, -0.450962,
		0.243570, -0.384511, 0.890407,
		-0.772376, -0.632160, -0.061708,
		68.323433, 57.007282, 58.976673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.424828, 57.720783, 58.485062>,  <68.864098, 57.449795, 59.019871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.424828, 57.720783, 58.485062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.594048, 57.448586, 58.724380>,  <69.695580, 57.285267, 58.867970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.594048, 57.448586, 58.724380>,  <69.424828, 57.720783, 58.485062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.594048, 57.448586, 58.724380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684563, -0.192553, -0.703062,
		0.593633, 0.707001, 0.384382,
		0.423052, -0.680494, 0.598293,
		69.720963, 57.244438, 58.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.142677, 57.872730, 58.529671>,  <69.424828, 57.720783, 58.485062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.142677, 57.872730, 58.529671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.083389, 57.484241, 58.604240>,  <70.047813, 57.251148, 58.648983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.083389, 57.484241, 58.604240>,  <70.142677, 57.872730, 58.529671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.083389, 57.484241, 58.604240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780876, -0.230616, -0.580559,
		0.606845, 0.059520, 0.792588,
		-0.148229, -0.971223, 0.186425,
		70.038918, 57.192875, 58.660168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.669640, 57.625740, 58.237007>,  <70.142677, 57.872730, 58.529671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.669640, 57.625740, 58.237007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.507233, 57.279869, 58.355316>,  <70.409790, 57.072346, 58.426300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.507233, 57.279869, 58.355316>,  <70.669640, 57.625740, 58.237007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.507233, 57.279869, 58.355316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758831, -0.499343, -0.418129,
		0.509237, 0.054670, 0.858888,
		-0.406021, -0.864678, 0.295769,
		70.385429, 57.020466, 58.444046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.168175, 57.312054, 58.604267>,  <70.669640, 57.625740, 58.237007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.168175, 57.312054, 58.604267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.947067, 57.010601, 58.462013>,  <70.814400, 56.829727, 58.376659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.947067, 57.010601, 58.462013>,  <71.168175, 57.312054, 58.604267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.947067, 57.010601, 58.462013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829254, -0.455299, -0.324101,
		0.082333, -0.474067, 0.876631,
		-0.552774, -0.753633, -0.355636,
		70.781235, 56.784512, 58.355324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.598488, 56.679260, 58.700500>,  <71.168175, 57.312054, 58.604267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.598488, 56.679260, 58.700500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.366714, 56.613316, 58.381233>,  <71.227646, 56.573750, 58.189674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.366714, 56.613316, 58.381233>,  <71.598488, 56.679260, 58.700500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.366714, 56.613316, 58.381233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794435, -0.332931, -0.507967,
		-0.181990, -0.928428, 0.323885,
		-0.579442, -0.164860, -0.798165,
		71.192879, 56.563858, 58.141785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.961983, 57.309742, 59.080524>,  <71.598488, 56.679260, 58.700500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.961983, 57.309742, 59.080524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.198570, 57.027924, 59.237381>,  <72.340523, 56.858833, 59.331493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.198570, 57.027924, 59.237381>,  <71.961983, 57.309742, 59.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.198570, 57.027924, 59.237381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725318, 0.677347, 0.122948,
		-0.352235, 0.211703, 0.911654,
		0.591477, -0.704545, 0.392137,
		72.376015, 56.816559, 59.355022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.145294, 57.597790, 59.747707>,  <71.961983, 57.309742, 59.080524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.145294, 57.597790, 59.747707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.419060, 57.335838, 59.619507>,  <72.583321, 57.178669, 59.542587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.419060, 57.335838, 59.619507>,  <72.145294, 57.597790, 59.747707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.419060, 57.335838, 59.619507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714113, 0.690767, 0.113505,
		0.147058, -0.306555, 0.940424,
		0.684410, -0.654878, -0.320498,
		72.624382, 57.139374, 59.523357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.618362, 57.705936, 60.232334>,  <72.145294, 57.597790, 59.747707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.618362, 57.705936, 60.232334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.777222, 57.530991, 59.909599>,  <72.872536, 57.426025, 59.715958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.777222, 57.530991, 59.909599>,  <72.618362, 57.705936, 60.232334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.777222, 57.530991, 59.909599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849160, 0.508609, 0.142281,
		0.348137, -0.741642, 0.573383,
		0.397150, -0.437360, -0.806838,
		72.896370, 57.399784, 59.667549>
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
