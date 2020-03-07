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
	<36.700920, 52.875885, 49.713367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792629, 52.732849, 50.075485>,  <36.847652, 52.647030, 50.292755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792629, 52.732849, 50.075485>,  <36.700920, 52.875885, 49.713367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792629, 52.732849, 50.075485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076549, -0.920569, -0.383006,
		0.970348, 0.157112, -0.183686,
		0.229270, -0.357588, 0.905299,
		36.861412, 52.625572, 50.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362720, 52.692097, 49.831665>,  <36.700920, 52.875885, 49.713367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362720, 52.692097, 49.831665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088032, 52.479279, 50.029793>,  <36.923218, 52.351589, 50.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088032, 52.479279, 50.029793>,  <37.362720, 52.692097, 49.831665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088032, 52.479279, 50.029793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182759, -0.785873, -0.590764,
		0.703570, -0.315167, 0.636913,
		-0.686722, -0.532046, 0.495317,
		36.882015, 52.319664, 50.178387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715508, 52.147705, 50.027645>,  <37.362720, 52.692097, 49.831665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715508, 52.147705, 50.027645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335300, 52.072853, 49.928452>,  <37.107174, 52.027943, 49.868935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335300, 52.072853, 49.928452>,  <37.715508, 52.147705, 50.027645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335300, 52.072853, 49.928452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310641, -0.581485, -0.751916,
		-0.003494, -0.791744, 0.610842,
		-0.950521, -0.187126, -0.247980,
		37.050144, 52.016716, 49.854057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320770, 51.835094, 50.106937>,  <37.715508, 52.147705, 50.027645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320770, 51.835094, 50.106937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426620, 51.691788, 50.465069>,  <38.490131, 51.605804, 50.679947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426620, 51.691788, 50.465069>,  <38.320770, 51.835094, 50.106937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426620, 51.691788, 50.465069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153856, 0.900850, 0.405953,
		-0.951998, -0.245178, 0.183267,
		0.264627, -0.358270, 0.895330,
		38.506008, 51.584309, 50.733669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938251, 52.264538, 50.040562>,  <38.320770, 51.835094, 50.106937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938251, 52.264538, 50.040562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081989, 52.402168, 50.387547>,  <39.168232, 52.484745, 50.595737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081989, 52.402168, 50.387547>,  <38.938251, 52.264538, 50.040562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081989, 52.402168, 50.387547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879098, 0.187110, -0.438379,
		-0.313145, 0.920110, -0.235239,
		0.359341, 0.344074, 0.867460,
		39.189793, 52.505390, 50.647785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611320, 52.268768, 49.613880>,  <38.938251, 52.264538, 50.040562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611320, 52.268768, 49.613880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830875, 51.963547, 49.477367>,  <39.962608, 51.780415, 49.395458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830875, 51.963547, 49.477367>,  <39.611320, 52.268768, 49.613880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830875, 51.963547, 49.477367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597007, 0.643632, -0.478873,
		0.585065, 0.059100, 0.808830,
		0.548890, -0.763049, -0.341284,
		39.995544, 51.734631, 49.374981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298641, 52.180851, 49.960037>,  <39.611320, 52.268768, 49.613880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298641, 52.180851, 49.960037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311028, 52.057186, 49.579834>,  <40.318459, 51.982986, 49.351711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311028, 52.057186, 49.579834>,  <40.298641, 52.180851, 49.960037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311028, 52.057186, 49.579834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666264, 0.715260, -0.210941,
		0.745073, -0.626756, 0.228130,
		0.030964, -0.309161, -0.950505,
		40.320316, 51.964439, 49.294682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003380, 51.982941, 49.670387>,  <40.298641, 52.180851, 49.960037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003380, 51.982941, 49.670387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782078, 52.086956, 49.353836>,  <40.649296, 52.149364, 49.163906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782078, 52.086956, 49.353836>,  <41.003380, 51.982941, 49.670387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782078, 52.086956, 49.353836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672120, 0.700578, -0.239677,
		0.492099, -0.664507, -0.562378,
		-0.553257, 0.260041, -0.791382,
		40.616100, 52.164967, 49.116421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180988, 52.535114, 49.109470>,  <41.003380, 51.982941, 49.670387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180988, 52.535114, 49.109470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130203, 52.881664, 49.302666>,  <41.099731, 53.089596, 49.418583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130203, 52.881664, 49.302666>,  <41.180988, 52.535114, 49.109470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130203, 52.881664, 49.302666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973420, 0.015249, 0.228519,
		0.190618, 0.499164, -0.845281,
		-0.126958, 0.866373, 0.482989,
		41.092117, 53.141575, 49.447563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557728, 53.178013, 48.776508>,  <41.180988, 52.535114, 49.109470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557728, 53.178013, 48.776508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549709, 53.147774, 49.175282>,  <41.544899, 53.129631, 49.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549709, 53.147774, 49.175282>,  <41.557728, 53.178013, 48.776508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549709, 53.147774, 49.175282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996267, 0.082231, 0.026268,
		-0.083965, 0.993742, 0.073663,
		-0.020046, -0.075594, 0.996937,
		41.543697, 53.125095, 49.474361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328835, 53.937145, 48.903831>,  <41.557728, 53.178013, 48.776508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328835, 53.937145, 48.903831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071312, 54.192513, 48.735104>,  <40.916798, 54.345734, 48.633865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071312, 54.192513, 48.735104>,  <41.328835, 53.937145, 48.903831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071312, 54.192513, 48.735104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708673, 0.705398, -0.014008,
		0.288607, -0.307950, -0.906572,
		-0.643808, 0.638420, -0.421819,
		40.878170, 54.384037, 48.608559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735626, 54.478485, 48.389793>,  <41.328835, 53.937145, 48.903831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735626, 54.478485, 48.389793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385136, 54.579117, 48.554199>,  <41.174843, 54.639496, 48.652843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385136, 54.579117, 48.554199>,  <41.735626, 54.478485, 48.389793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385136, 54.579117, 48.554199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421619, 0.813278, 0.401020,
		-0.233382, 0.524676, -0.818687,
		-0.876225, 0.251583, 0.411018,
		41.122269, 54.654591, 48.677505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975815, 55.073532, 48.685696>,  <41.735626, 54.478485, 48.389793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975815, 55.073532, 48.685696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595242, 55.069641, 48.808781>,  <41.366898, 55.067307, 48.882629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595242, 55.069641, 48.808781>,  <41.975815, 55.073532, 48.685696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595242, 55.069641, 48.808781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117845, 0.911874, 0.393189,
		-0.284416, 0.410354, -0.866439,
		-0.951431, -0.009724, 0.307710,
		41.309811, 55.066723, 48.901093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740486, 55.195522, 48.430698>,  <41.975815, 55.073532, 48.685696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740486, 55.195522, 48.430698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891773, 54.864185, 48.596008>,  <42.982548, 54.665382, 48.695194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891773, 54.864185, 48.596008>,  <42.740486, 55.195522, 48.430698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891773, 54.864185, 48.596008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337887, -0.292108, -0.894710,
		0.861848, 0.478037, 0.169406,
		0.378220, -0.828344, 0.413275,
		43.005238, 54.615681, 48.719990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546150, 55.031834, 48.295677>,  <42.740486, 55.195522, 48.430698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546150, 55.031834, 48.295677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351578, 54.686089, 48.346680>,  <43.234833, 54.478642, 48.377281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351578, 54.686089, 48.346680>,  <43.546150, 55.031834, 48.295677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351578, 54.686089, 48.346680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507259, -0.398209, -0.764276,
		0.711387, -0.307091, 0.632158,
		-0.486434, -0.864364, 0.127506,
		43.205647, 54.426781, 48.384930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074268, 54.463654, 48.166599>,  <43.546150, 55.031834, 48.295677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074268, 54.463654, 48.166599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707878, 54.306000, 48.136524>,  <43.488045, 54.211407, 48.118481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707878, 54.306000, 48.136524>,  <44.074268, 54.463654, 48.166599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707878, 54.306000, 48.136524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243622, -0.397409, -0.884711,
		0.318811, -0.828690, 0.460035,
		-0.915974, -0.394130, -0.075189,
		43.433086, 54.187759, 48.113968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321686, 54.789871, 48.754555>,  <44.074268, 54.463654, 48.166599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321686, 54.789871, 48.754555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526627, 54.520752, 48.541073>,  <44.649593, 54.359280, 48.412983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526627, 54.520752, 48.541073>,  <44.321686, 54.789871, 48.754555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526627, 54.520752, 48.541073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822357, -0.563434, -0.079187,
		-0.247430, 0.479466, -0.841956,
		0.512355, -0.672796, -0.533703,
		44.680332, 54.318913, 48.380962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951611, 54.776070, 49.141174>,  <44.321686, 54.789871, 48.754555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951611, 54.776070, 49.141174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792068, 54.802914, 49.506996>,  <44.696342, 54.819019, 49.726490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792068, 54.802914, 49.506996>,  <44.951611, 54.776070, 49.141174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792068, 54.802914, 49.506996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876743, -0.320215, -0.358865,
		0.268773, -0.944965, 0.186553,
		-0.398852, 0.067106, 0.914557,
		44.672413, 54.823048, 49.781364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576130, 54.851086, 48.755146>,  <44.951611, 54.776070, 49.141174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576130, 54.851086, 48.755146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645302, 55.242477, 48.800182>,  <45.686806, 55.477310, 48.827206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645302, 55.242477, 48.800182>,  <45.576130, 54.851086, 48.755146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645302, 55.242477, 48.800182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340543, -0.166662, 0.925340,
		0.924189, -0.121679, -0.362035,
		0.172932, 0.978478, 0.112590,
		45.697182, 55.536022, 48.833958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262737, 54.958771, 49.074749>,  <45.576130, 54.851086, 48.755146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262737, 54.958771, 49.074749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060291, 55.290337, 49.170036>,  <45.938824, 55.489277, 49.227207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060291, 55.290337, 49.170036>,  <46.262737, 54.958771, 49.074749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060291, 55.290337, 49.170036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376459, -0.036182, 0.925726,
		0.775966, 0.558206, -0.293740,
		-0.506118, 0.828913, 0.238218,
		45.908455, 55.539009, 49.241501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733166, 55.401249, 49.352413>,  <46.262737, 54.958771, 49.074749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733166, 55.401249, 49.352413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360077, 55.479031, 49.473877>,  <46.136223, 55.525700, 49.546757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360077, 55.479031, 49.473877>,  <46.733166, 55.401249, 49.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360077, 55.479031, 49.473877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272277, -0.172316, 0.946664,
		0.236406, 0.965658, 0.107779,
		-0.932726, 0.194451, 0.303663,
		46.080257, 55.537365, 49.564976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742706, 55.448063, 50.128799>,  <46.733166, 55.401249, 49.352413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742706, 55.448063, 50.128799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352524, 55.389858, 50.062706>,  <46.118412, 55.354935, 50.023048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352524, 55.389858, 50.062706>,  <46.742706, 55.448063, 50.128799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352524, 55.389858, 50.062706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126857, -0.241929, 0.961965,
		-0.179955, 0.959320, 0.217533,
		-0.975461, -0.145515, -0.165233,
		46.059887, 55.346203, 50.013138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335922, 55.990452, 50.517883>,  <46.742706, 55.448063, 50.128799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335922, 55.990452, 50.517883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177238, 55.628384, 50.456856>,  <46.082027, 55.411140, 50.420238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177238, 55.628384, 50.456856>,  <46.335922, 55.990452, 50.517883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177238, 55.628384, 50.456856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028268, -0.178177, 0.983592,
		-0.917507, 0.385892, 0.096273,
		-0.396714, -0.905174, -0.152570,
		46.058224, 55.356831, 50.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801044, 55.845329, 51.087315>,  <46.335922, 55.990452, 50.517883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801044, 55.845329, 51.087315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004116, 55.530380, 50.947426>,  <46.125957, 55.341412, 50.863491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004116, 55.530380, 50.947426>,  <45.801044, 55.845329, 51.087315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004116, 55.530380, 50.947426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116261, -0.339600, 0.933357,
		-0.853667, -0.514503, -0.080866,
		0.507677, -0.787375, -0.349722,
		46.156418, 55.294167, 50.842510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466900, 55.227215, 51.383678>,  <45.801044, 55.845329, 51.087315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466900, 55.227215, 51.383678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856186, 55.250786, 51.294796>,  <46.089760, 55.264931, 51.241467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856186, 55.250786, 51.294796>,  <45.466900, 55.227215, 51.383678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856186, 55.250786, 51.294796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228120, -0.127899, 0.965196,
		0.028461, -0.990035, -0.137917,
		0.973217, 0.058932, -0.222206,
		46.148151, 55.268467, 51.228134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838413, 54.615891, 51.564869>,  <45.466900, 55.227215, 51.383678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838413, 54.615891, 51.564869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110561, 54.908943, 51.557381>,  <46.273849, 55.084774, 51.552887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110561, 54.908943, 51.557381>,  <45.838413, 54.615891, 51.564869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110561, 54.908943, 51.557381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352504, -0.304751, 0.884798,
		0.642525, -0.608588, -0.465599,
		0.680370, 0.732630, -0.018720,
		46.314671, 55.128731, 51.551765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513996, 54.404362, 51.763412>,  <45.838413, 54.615891, 51.564869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513996, 54.404362, 51.763412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496391, 54.799057, 51.825905>,  <46.485828, 55.035873, 51.863400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496391, 54.799057, 51.825905>,  <46.513996, 54.404362, 51.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496391, 54.799057, 51.825905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313128, -0.134877, 0.940085,
		0.948691, 0.090293, -0.303040,
		-0.044010, 0.986740, 0.156230,
		46.483189, 55.095078, 51.872772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306728, 54.487812, 51.891739>,  <46.513996, 54.404362, 51.763412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306728, 54.487812, 51.891739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607395, 54.721832, 51.769939>,  <47.787796, 54.862244, 51.696861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607395, 54.721832, 51.769939>,  <47.306728, 54.487812, 51.891739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.607395, 54.721832, 51.769939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064110, 0.394682, 0.916579,
		0.656423, -0.708481, 0.259161,
		0.751664, 0.585049, -0.304499,
		47.832893, 54.897346, 51.678589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.906540, 54.339977, 52.266300>,  <47.306728, 54.487812, 51.891739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.906540, 54.339977, 52.266300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917465, 54.719269, 52.139732>,  <47.924019, 54.946842, 52.063793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917465, 54.719269, 52.139732>,  <47.906540, 54.339977, 52.266300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.917465, 54.719269, 52.139732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092159, 0.317576, 0.943744,
		0.995370, 0.003384, 0.096062,
		0.027314, 0.948227, -0.316417,
		47.925659, 55.003738, 52.044807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.441685, 54.922977, 52.450050>,  <47.906540, 54.339977, 52.266300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.441685, 54.922977, 52.450050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.158562, 55.193504, 52.368458>,  <47.988689, 55.355820, 52.319504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.158562, 55.193504, 52.368458>,  <48.441685, 54.922977, 52.450050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.158562, 55.193504, 52.368458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150376, 0.426393, 0.891951,
		0.690217, 0.600653, -0.403505,
		-0.707805, 0.676317, -0.203980,
		47.946220, 55.396400, 52.307262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.730068, 55.565437, 52.606743>,  <48.441685, 54.922977, 52.450050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.730068, 55.565437, 52.606743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.335590, 55.631618, 52.609150>,  <48.098904, 55.671329, 52.610592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.335590, 55.631618, 52.609150>,  <48.730068, 55.565437, 52.606743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.335590, 55.631618, 52.609150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093274, 0.525211, 0.845845,
		0.136790, 0.834732, -0.533395,
		-0.986199, 0.165455, 0.006016,
		48.039730, 55.681255, 52.610954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.563980, 56.404842, 52.675838>,  <48.730068, 55.565437, 52.606743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.563980, 56.404842, 52.675838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.313156, 56.133232, 52.828526>,  <48.162663, 55.970264, 52.920139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.313156, 56.133232, 52.828526>,  <48.563980, 56.404842, 52.675838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.313156, 56.133232, 52.828526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052912, 0.451771, 0.890563,
		-0.777168, 0.578638, -0.247361,
		-0.627064, -0.679029, 0.381719,
		48.125038, 55.929523, 52.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.022785, 56.834911, 52.981380>,  <48.563980, 56.404842, 52.675838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.022785, 56.834911, 52.981380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.105072, 56.484436, 53.155724>,  <48.154446, 56.274151, 53.260330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.105072, 56.484436, 53.155724>,  <48.022785, 56.834911, 52.981380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.105072, 56.484436, 53.155724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411545, 0.481542, 0.773788,
		-0.887869, 0.020192, 0.459654,
		0.205718, -0.876191, 0.435856,
		48.166786, 56.221581, 53.286480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.722015, 56.912487, 53.682716>,  <48.022785, 56.834911, 52.981380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.722015, 56.912487, 53.682716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.011974, 56.638809, 53.714706>,  <48.185951, 56.474602, 53.733898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.011974, 56.638809, 53.714706>,  <47.722015, 56.912487, 53.682716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.011974, 56.638809, 53.714706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310678, 0.428338, 0.848531,
		-0.614818, -0.590254, 0.523067,
		0.724898, -0.684198, 0.079971,
		48.229443, 56.433548, 53.738697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866566, 56.773514, 54.330189>,  <47.722015, 56.912487, 53.682716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866566, 56.773514, 54.330189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214481, 56.682846, 54.154881>,  <48.423233, 56.628445, 54.049694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214481, 56.682846, 54.154881>,  <47.866566, 56.773514, 54.330189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.214481, 56.682846, 54.154881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487949, 0.527042, 0.695796,
		0.073274, -0.819053, 0.569019,
		0.869792, -0.226668, -0.438274,
		48.475418, 56.614845, 54.023399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.329910, 56.672173, 54.796547>,  <47.866566, 56.773514, 54.330189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.329910, 56.672173, 54.796547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.550945, 56.755684, 54.473793>,  <48.683567, 56.805790, 54.280140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.550945, 56.755684, 54.473793>,  <48.329910, 56.672173, 54.796547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.550945, 56.755684, 54.473793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539825, 0.647953, 0.537351,
		0.635009, -0.732508, 0.245346,
		0.552587, 0.208779, -0.806882,
		48.716721, 56.818317, 54.231728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.007179, 56.592339, 55.102634>,  <48.329910, 56.672173, 54.796547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.007179, 56.592339, 55.102634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.043114, 56.876385, 54.823303>,  <49.064674, 57.046814, 54.655704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.043114, 56.876385, 54.823303>,  <49.007179, 56.592339, 55.102634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.043114, 56.876385, 54.823303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590132, 0.526865, 0.611684,
		0.802293, -0.467058, -0.371731,
		0.089840, 0.710120, -0.698326,
		49.070065, 57.089420, 54.613804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.693745, 56.867325, 55.052670>,  <49.007179, 56.592339, 55.102634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.693745, 56.867325, 55.052670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.438423, 57.148632, 54.927460>,  <49.285229, 57.317417, 54.852333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.438423, 57.148632, 54.927460>,  <49.693745, 56.867325, 55.052670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.438423, 57.148632, 54.927460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255425, 0.577098, 0.775703,
		0.726171, 0.415181, -0.547997,
		-0.638305, 0.703266, -0.313024,
		49.246933, 57.359612, 54.833553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.095894, 57.413506, 55.315865>,  <49.693745, 56.867325, 55.052670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.095894, 57.413506, 55.315865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.709862, 57.483860, 55.238220>,  <49.478241, 57.526073, 55.191635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.709862, 57.483860, 55.238220>,  <50.095894, 57.413506, 55.315865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.709862, 57.483860, 55.238220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102687, 0.427683, 0.898077,
		0.240972, 0.886653, -0.394689,
		-0.965084, 0.175882, -0.194108,
		49.420338, 57.536625, 55.179989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.395718, 56.629734, 55.534687>,  <50.095894, 57.413506, 55.315865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.395718, 56.629734, 55.534687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.686508, 56.504658, 55.779221>,  <50.860981, 56.429611, 55.925941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.686508, 56.504658, 55.779221>,  <50.395718, 56.629734, 55.534687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.686508, 56.504658, 55.779221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004438, -0.892418, -0.451188,
		0.686647, 0.325291, -0.650156,
		0.726978, -0.312692, 0.611332,
		50.904602, 56.410851, 55.962620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.863625, 56.255707, 55.081818>,  <50.395718, 56.629734, 55.534687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.863625, 56.255707, 55.081818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.901134, 56.131409, 55.460159>,  <50.923641, 56.056831, 55.687164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.901134, 56.131409, 55.460159>,  <50.863625, 56.255707, 55.081818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.901134, 56.131409, 55.460159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223712, -0.919173, -0.324152,
		0.970134, 0.241996, -0.016675,
		0.093771, -0.310741, 0.945858,
		50.929264, 56.038185, 55.743916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.496727, 55.935722, 55.078438>,  <50.863625, 56.255707, 55.081818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.496727, 55.935722, 55.078438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.291737, 55.789513, 55.389244>,  <51.168743, 55.701786, 55.575729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.291737, 55.789513, 55.389244>,  <51.496727, 55.935722, 55.078438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.291737, 55.789513, 55.389244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299381, -0.924157, -0.237286,
		0.804822, 0.111021, 0.583040,
		-0.512476, -0.365524, 0.777020,
		51.137993, 55.679855, 55.622349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.989594, 55.668491, 55.480549>,  <51.496727, 55.935722, 55.078438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.989594, 55.668491, 55.480549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.633526, 55.511200, 55.572601>,  <51.419884, 55.416824, 55.627834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.633526, 55.511200, 55.572601>,  <51.989594, 55.668491, 55.480549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.633526, 55.511200, 55.572601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356575, -0.915688, -0.185392,
		0.283632, -0.082972, 0.955337,
		-0.890173, -0.393232, 0.230133,
		51.366474, 55.393230, 55.641640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.233311, 55.134819, 56.008205>,  <51.989594, 55.668491, 55.480549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.233311, 55.134819, 56.008205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.880478, 55.054855, 55.837570>,  <51.668777, 55.006878, 55.735191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.880478, 55.054855, 55.837570>,  <52.233311, 55.134819, 56.008205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.880478, 55.054855, 55.837570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263230, -0.960106, -0.094375,
		-0.390701, -0.195536, 0.899510,
		-0.882079, -0.199906, -0.426586,
		51.615856, 54.994884, 55.709595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.884537, 54.614487, 56.420841>,  <52.233311, 55.134819, 56.008205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.884537, 54.614487, 56.420841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.843571, 54.581482, 56.024315>,  <51.818993, 54.561680, 55.786400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.843571, 54.581482, 56.024315>,  <51.884537, 54.614487, 56.420841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.843571, 54.581482, 56.024315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389838, -0.920167, 0.036312,
		-0.915171, -0.382733, 0.126404,
		-0.102415, -0.082509, -0.991314,
		51.812847, 54.556728, 55.726921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.839748, 53.878586, 56.316406>,  <51.884537, 54.614487, 56.420841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.839748, 53.878586, 56.316406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.963669, 54.001709, 55.956566>,  <52.038021, 54.075584, 55.740662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.963669, 54.001709, 55.956566>,  <51.839748, 53.878586, 56.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.963669, 54.001709, 55.956566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465915, -0.873912, -0.138569,
		-0.828824, -0.376208, -0.414149,
		0.309799, 0.307807, -0.899600,
		52.056610, 54.094051, 55.686687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.671108, 53.390976, 55.854801>,  <51.839748, 53.878586, 56.316406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.671108, 53.390976, 55.854801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.006741, 53.580902, 55.748604>,  <52.208122, 53.694859, 55.684887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.006741, 53.580902, 55.748604>,  <51.671108, 53.390976, 55.854801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.006741, 53.580902, 55.748604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416484, -0.874664, -0.247999,
		-0.349973, 0.097517, -0.931670,
		0.839083, 0.474819, -0.265494,
		52.258465, 53.723347, 55.668957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.801453, 53.298820, 55.192940>,  <51.671108, 53.390976, 55.854801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.801453, 53.298820, 55.192940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.164478, 53.271179, 55.358612>,  <52.382294, 53.254593, 55.458015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.164478, 53.271179, 55.358612>,  <51.801453, 53.298820, 55.192940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.164478, 53.271179, 55.358612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176193, -0.832665, -0.525001,
		0.381153, 0.549449, -0.743524,
		0.907567, -0.069102, 0.414182,
		52.436749, 53.250450, 55.482868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.405781, 53.364182, 54.706715>,  <51.801453, 53.298820, 55.192940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.405781, 53.364182, 54.706715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.469532, 53.111595, 55.010254>,  <52.507782, 52.960045, 55.192379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.469532, 53.111595, 55.010254>,  <52.405781, 53.364182, 54.706715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.469532, 53.111595, 55.010254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263726, -0.713507, -0.649119,
		0.951340, 0.303583, 0.052817,
		0.159376, -0.631462, 0.758851,
		52.517345, 52.922157, 55.237907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.065647, 53.125111, 54.692944>,  <52.405781, 53.364182, 54.706715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.065647, 53.125111, 54.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.819622, 52.844162, 54.836258>,  <52.672009, 52.675591, 54.922245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.819622, 52.844162, 54.836258>,  <53.065647, 53.125111, 54.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.819622, 52.844162, 54.836258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273292, -0.616135, -0.738708,
		0.739601, -0.356436, 0.570916,
		-0.615063, -0.702375, 0.358282,
		52.635101, 52.633450, 54.943741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.344223, 52.487007, 54.587757>,  <53.065647, 53.125111, 54.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.344223, 52.487007, 54.587757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.962181, 52.395332, 54.662849>,  <52.732956, 52.340328, 54.707905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.962181, 52.395332, 54.662849>,  <53.344223, 52.487007, 54.587757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.962181, 52.395332, 54.662849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144346, -0.913370, -0.380682,
		0.258716, -0.336494, 0.905449,
		-0.955108, -0.229187, 0.187732,
		52.675648, 52.326576, 54.719170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.074017, 52.245831, 54.569489>,  <53.344223, 52.487007, 54.587757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.074017, 52.245831, 54.569489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.997917, 52.555080, 54.811508>,  <53.952255, 52.740631, 54.956718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.997917, 52.555080, 54.811508>,  <54.074017, 52.245831, 54.569489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.997917, 52.555080, 54.811508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933494, 0.333280, -0.132336,
		-0.303963, 0.539632, -0.785114,
		-0.190250, 0.773125, 0.605048,
		53.940842, 52.787018, 54.993023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.261147, 52.827633, 54.289165>,  <54.074017, 52.245831, 54.569489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.261147, 52.827633, 54.289165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.296638, 52.914951, 54.677902>,  <54.317932, 52.967342, 54.911144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.296638, 52.914951, 54.677902>,  <54.261147, 52.827633, 54.289165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.296638, 52.914951, 54.677902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967647, 0.212468, -0.136072,
		-0.236189, 0.952473, -0.192379,
		0.088731, 0.218294, 0.971841,
		54.323257, 52.980438, 54.969456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.556316, 53.545624, 54.543312>,  <54.261147, 52.827633, 54.289165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.556316, 53.545624, 54.543312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.629616, 53.261501, 54.815159>,  <54.673595, 53.091026, 54.978268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.629616, 53.261501, 54.815159>,  <54.556316, 53.545624, 54.543312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.629616, 53.261501, 54.815159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982876, 0.145996, -0.112426,
		-0.019364, 0.688585, 0.724897,
		0.183247, -0.710307, 0.679621,
		54.684589, 53.048409, 55.019047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.889954, 53.885910, 55.049721>,  <54.556316, 53.545624, 54.543312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.889954, 53.885910, 55.049721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.994469, 53.499840, 55.044609>,  <55.057178, 53.268196, 55.041542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.994469, 53.499840, 55.044609>,  <54.889954, 53.885910, 55.049721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.994469, 53.499840, 55.044609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956643, 0.260701, -0.129880,
		0.128688, 0.021713, 0.991447,
		0.261291, -0.965175, -0.012777,
		55.072857, 53.210289, 55.040775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.520576, 53.820210, 55.474293>,  <54.889954, 53.885910, 55.049721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.520576, 53.820210, 55.474293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.497345, 53.507900, 55.225449>,  <55.483406, 53.320515, 55.076141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.497345, 53.507900, 55.225449>,  <55.520576, 53.820210, 55.474293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.497345, 53.507900, 55.225449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918876, 0.201793, -0.339037,
		0.390248, -0.591334, 0.705713,
		-0.058076, -0.780771, -0.622112,
		55.479923, 53.273670, 55.038815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.179298, 53.390347, 55.523544>,  <55.520576, 53.820210, 55.474293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.179298, 53.390347, 55.523544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.988678, 53.336452, 55.176041>,  <55.874306, 53.304115, 54.967537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.988678, 53.336452, 55.176041>,  <56.179298, 53.390347, 55.523544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.988678, 53.336452, 55.176041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821932, 0.282379, -0.494661,
		0.311970, -0.949794, -0.023821,
		-0.476552, -0.134740, -0.868759,
		55.845711, 53.296032, 54.915413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.094650, 53.795033, 56.245815>,  <56.179298, 53.390347, 55.523544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.094650, 53.795033, 56.245815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.226006, 53.833149, 56.621704>,  <56.304817, 53.856018, 56.847237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.226006, 53.833149, 56.621704>,  <56.094650, 53.795033, 56.245815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.226006, 53.833149, 56.621704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394421, 0.917839, 0.044763,
		-0.858251, -0.385347, 0.338988,
		0.328386, 0.095286, 0.939725,
		56.324520, 53.861736, 56.903622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.025631, 54.547672, 56.142033>,  <56.094650, 53.795033, 56.245815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.025631, 54.547672, 56.142033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.809845, 54.731335, 56.424355>,  <55.680374, 54.841534, 56.593746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.809845, 54.731335, 56.424355>,  <56.025631, 54.547672, 56.142033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.809845, 54.731335, 56.424355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806293, 0.040154, 0.590152,
		0.242630, 0.887448, -0.391876,
		-0.539465, 0.459155, 0.705801,
		55.648006, 54.869080, 56.636093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.229233, 55.321804, 56.210293>,  <56.025631, 54.547672, 56.142033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.229233, 55.321804, 56.210293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.117569, 55.106861, 56.528618>,  <56.050571, 54.977894, 56.719612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.117569, 55.106861, 56.528618>,  <56.229233, 55.321804, 56.210293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.117569, 55.106861, 56.528618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959231, -0.118023, 0.256799,
		-0.044069, 0.835055, 0.548399,
		-0.279164, -0.537359, 0.795810,
		56.033821, 54.945652, 56.767361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.543144, 55.674103, 56.876869>,  <56.229233, 55.321804, 56.210293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.543144, 55.674103, 56.876869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.472305, 55.281082, 56.899597>,  <56.429802, 55.045269, 56.913235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.472305, 55.281082, 56.899597>,  <56.543144, 55.674103, 56.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.472305, 55.281082, 56.899597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935809, -0.150232, 0.318889,
		-0.304789, 0.109651, 0.946087,
		-0.177099, -0.982551, 0.056823,
		56.419174, 54.986317, 56.916645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.976650, 55.330685, 57.465256>,  <56.543144, 55.674103, 56.876869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.976650, 55.330685, 57.465256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.858971, 55.050461, 57.205208>,  <56.788364, 54.882324, 57.049179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.858971, 55.050461, 57.205208>,  <56.976650, 55.330685, 57.465256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.858971, 55.050461, 57.205208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817150, -0.537174, 0.209069,
		-0.495695, -0.469741, 0.730499,
		-0.294197, -0.700562, -0.650124,
		56.770710, 54.840294, 57.010170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.930279, 54.805485, 57.830372>,  <56.976650, 55.330685, 57.465256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.930279, 54.805485, 57.830372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.949684, 54.493202, 58.079575>,  <56.961327, 54.305832, 58.229095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.949684, 54.493202, 58.079575>,  <56.930279, 54.805485, 57.830372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.949684, 54.493202, 58.079575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336405, -0.600075, -0.725770,
		0.940467, -0.174372, -0.291747,
		0.048516, -0.780708, 0.623010,
		56.964237, 54.258991, 58.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.560059, 54.335804, 57.632191>,  <56.930279, 54.805485, 57.830372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.560059, 54.335804, 57.632191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.493919, 53.971741, 57.784126>,  <57.454235, 53.753304, 57.875290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.493919, 53.971741, 57.784126>,  <57.560059, 54.335804, 57.632191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.493919, 53.971741, 57.784126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982281, -0.186433, -0.019135,
		0.088231, 0.369949, 0.924853,
		-0.165344, -0.910154, 0.379844,
		57.444317, 53.698696, 57.898079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.985962, 54.316685, 58.204010>,  <57.560059, 54.335804, 57.632191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.985962, 54.316685, 58.204010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.913170, 53.928715, 58.139343>,  <57.869495, 53.695934, 58.100544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.913170, 53.928715, 58.139343>,  <57.985962, 54.316685, 58.204010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.913170, 53.928715, 58.139343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983292, -0.178699, -0.034709,
		0.004774, -0.165283, 0.986235,
		-0.181976, -0.969922, -0.161668,
		57.858578, 53.637737, 58.090843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.429504, 53.897434, 58.600166>,  <57.985962, 54.316685, 58.204010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.429504, 53.897434, 58.600166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.333694, 53.674496, 58.282173>,  <58.276207, 53.540733, 58.091377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.333694, 53.674496, 58.282173>,  <58.429504, 53.897434, 58.600166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.333694, 53.674496, 58.282173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965964, -0.219182, -0.137378,
		-0.097678, -0.800828, 0.590876,
		-0.239526, -0.557346, -0.794980,
		58.261837, 53.507294, 58.043678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.095528, 54.068134, 58.723133>,  <58.429504, 53.897434, 58.600166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.095528, 54.068134, 58.723133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.963234, 54.145695, 59.092567>,  <58.883858, 54.192230, 59.314228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.963234, 54.145695, 59.092567>,  <59.095528, 54.068134, 58.723133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.963234, 54.145695, 59.092567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330673, 0.940431, -0.079020,
		-0.883894, 0.279272, -0.375151,
		-0.330736, 0.193898, 0.923589,
		58.864014, 54.203865, 59.369644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.737541, 54.413189, 58.870430>,  <59.095528, 54.068134, 58.723133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.737541, 54.413189, 58.870430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.867584, 54.202587, 58.556206>,  <59.945610, 54.076225, 58.367672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.867584, 54.202587, 58.556206>,  <59.737541, 54.413189, 58.870430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.867584, 54.202587, 58.556206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887740, -0.116377, 0.445393,
		-0.325921, -0.842171, 0.429562,
		0.325106, -0.526502, -0.785558,
		59.965115, 54.044636, 58.320538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.978241, 53.719704, 59.077541>,  <59.737541, 54.413189, 58.870430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.978241, 53.719704, 59.077541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.199936, 53.818176, 58.759491>,  <60.332951, 53.877258, 58.568661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.199936, 53.818176, 58.759491>,  <59.978241, 53.719704, 59.077541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.199936, 53.818176, 58.759491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800319, 0.104888, 0.590329,
		0.228727, -0.963532, -0.138891,
		0.554233, 0.246181, -0.795123,
		60.366207, 53.892029, 58.520954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.607807, 53.507408, 59.307617>,  <59.978241, 53.719704, 59.077541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.607807, 53.507408, 59.307617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.663918, 53.783550, 59.023720>,  <60.697582, 53.949234, 58.853382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.663918, 53.783550, 59.023720>,  <60.607807, 53.507408, 59.307617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.663918, 53.783550, 59.023720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857297, 0.273936, 0.435891,
		0.495343, -0.669607, -0.553409,
		0.140277, 0.690351, -0.709745,
		60.706001, 53.990654, 58.810795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.245312, 53.491779, 58.861275>,  <60.607807, 53.507408, 59.307617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.245312, 53.491779, 58.861275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.169685, 53.880390, 58.918388>,  <61.124310, 54.113556, 58.952656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.169685, 53.880390, 58.918388>,  <61.245312, 53.491779, 58.861275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.169685, 53.880390, 58.918388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928567, 0.129585, 0.347810,
		0.319405, 0.198342, -0.926629,
		-0.189063, 0.971529, 0.142783,
		61.112968, 54.171848, 58.961224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.833153, 53.914520, 58.634720>,  <61.245312, 53.491779, 58.861275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.833153, 53.914520, 58.634720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.633797, 54.105423, 58.924225>,  <61.514183, 54.219963, 59.097927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.633797, 54.105423, 58.924225>,  <61.833153, 53.914520, 58.634720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.633797, 54.105423, 58.924225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847114, 0.090513, 0.523646,
		0.184404, 0.874090, -0.449401,
		-0.498390, 0.477256, 0.723763,
		61.484280, 54.248600, 59.141354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.270416, 54.568695, 58.727066>,  <61.833153, 53.914520, 58.634720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.270416, 54.568695, 58.727066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.063843, 54.421669, 59.036438>,  <61.939899, 54.333454, 59.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.063843, 54.421669, 59.036438>,  <62.270416, 54.568695, 58.727066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.063843, 54.421669, 59.036438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856327, -0.221898, 0.466331,
		0.000214, 0.903137, 0.429353,
		-0.516434, -0.367567, 0.773428,
		61.908913, 54.311398, 59.268467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.461819, 54.940308, 59.291279>,  <62.270416, 54.568695, 58.727066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.461819, 54.940308, 59.291279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.376198, 54.557014, 59.367149>,  <62.324825, 54.327038, 59.412674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.376198, 54.557014, 59.367149>,  <62.461819, 54.940308, 59.291279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.376198, 54.557014, 59.367149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969609, -0.184868, 0.160255,
		-0.118496, 0.218217, 0.968680,
		-0.214048, -0.958230, 0.189679,
		62.311985, 54.269547, 59.424053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.663143, 54.763428, 59.980885>,  <62.461819, 54.940308, 59.291279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.663143, 54.763428, 59.980885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.669304, 54.481892, 59.696808>,  <62.673000, 54.312969, 59.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.669304, 54.481892, 59.696808>,  <62.663143, 54.763428, 59.980885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.669304, 54.481892, 59.696808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992950, -0.072724, 0.093602,
		-0.117529, -0.706630, 0.697754,
		0.015399, -0.703836, -0.710196,
		62.673923, 54.270741, 59.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.066528, 54.262344, 60.153503>,  <62.663143, 54.763428, 59.980885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.066528, 54.262344, 60.153503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.085289, 54.281494, 59.754402>,  <63.096546, 54.292984, 59.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.085289, 54.281494, 59.754402>,  <63.066528, 54.262344, 60.153503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.085289, 54.281494, 59.754402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990149, 0.129695, 0.052770,
		0.131930, -0.990398, -0.041315,
		0.046905, 0.047870, -0.997752,
		63.099361, 54.295856, 59.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.510056, 53.787369, 59.902584>,  <63.066528, 54.262344, 60.153503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.510056, 53.787369, 59.902584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.489288, 54.103760, 59.658730>,  <63.476830, 54.293594, 59.512417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.489288, 54.103760, 59.658730>,  <63.510056, 53.787369, 59.902584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.489288, 54.103760, 59.658730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952161, 0.223297, 0.208633,
		0.301154, -0.569640, -0.764733,
		-0.051917, 0.790980, -0.609636,
		63.473713, 54.341053, 59.475838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.086807, 53.863304, 59.311134>,  <63.510056, 53.787369, 59.902584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.086807, 53.863304, 59.311134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.984421, 54.234806, 59.418396>,  <63.922989, 54.457706, 59.482754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.984421, 54.234806, 59.418396>,  <64.086807, 53.863304, 59.311134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.984421, 54.234806, 59.418396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957060, 0.282518, -0.064961,
		-0.136090, 0.240012, -0.961183,
		-0.255961, 0.928751, 0.268154,
		63.907631, 54.513432, 59.498840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.284737, 54.334038, 58.828629>,  <64.086807, 53.863304, 59.311134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.284737, 54.334038, 58.828629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.273911, 54.540115, 59.171288>,  <64.267410, 54.663761, 59.376881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.273911, 54.540115, 59.171288>,  <64.284737, 54.334038, 58.828629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.273911, 54.540115, 59.171288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947464, 0.286450, -0.142335,
		-0.318716, 0.807786, -0.495885,
		-0.027070, 0.515198, 0.856644,
		64.265793, 54.694675, 59.428280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.497253, 55.079247, 58.790428>,  <64.284737, 54.334038, 58.828629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.497253, 55.079247, 58.790428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.574524, 54.908413, 59.143761>,  <64.620888, 54.805912, 59.355762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.574524, 54.908413, 59.143761>,  <64.497253, 55.079247, 58.790428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.574524, 54.908413, 59.143761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981142, 0.078235, -0.176750,
		0.006378, 0.900822, 0.434141,
		0.193185, -0.427081, 0.883335,
		64.632477, 54.780289, 59.408760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.924812, 55.474602, 59.288216>,  <64.497253, 55.079247, 58.790428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.924812, 55.474602, 59.288216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981285, 55.078690, 59.296143>,  <65.015167, 54.841141, 59.300900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981285, 55.078690, 59.296143>,  <64.924812, 55.474602, 59.288216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.981285, 55.078690, 59.296143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943171, 0.128402, -0.306500,
		0.300825, 0.061962, 0.951664,
		0.141187, -0.989785, 0.019814,
		65.023643, 54.781754, 59.302086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.292000, 55.919609, 58.753784>,  <64.924812, 55.474602, 59.288216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.292000, 55.919609, 58.753784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.205742, 56.255005, 58.553612>,  <65.153992, 56.456245, 58.433510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.205742, 56.255005, 58.553612>,  <65.292000, 55.919609, 58.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.205742, 56.255005, 58.553612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020324, 0.516227, 0.856211,
		0.976262, 0.174462, -0.128361,
		-0.215639, 0.838494, -0.500427,
		65.141052, 56.506554, 58.403484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.876724, 56.468113, 58.807861>,  <65.292000, 55.919609, 58.753784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.876724, 56.468113, 58.807861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.503990, 56.609699, 58.775879>,  <65.280350, 56.694653, 58.756687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.503990, 56.609699, 58.775879>,  <65.876724, 56.468113, 58.807861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.503990, 56.609699, 58.775879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098580, 0.458980, 0.882961,
		0.349237, 0.814890, -0.462587,
		-0.931834, 0.353964, -0.079961,
		65.224442, 56.715889, 58.751892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.416580, 56.450047, 59.448349>,  <65.876724, 56.468113, 58.807861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.416580, 56.450047, 59.448349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.590828, 56.121498, 59.595642>,  <66.695374, 55.924370, 59.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.590828, 56.121498, 59.595642>,  <66.416580, 56.450047, 59.448349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.590828, 56.121498, 59.595642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487560, -0.128573, -0.863571,
		0.756653, 0.555721, 0.344457,
		0.435616, -0.821367, 0.368232,
		66.721512, 55.875088, 59.706112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.221100, 56.422791, 59.278282>,  <66.416580, 56.450047, 59.448349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.221100, 56.422791, 59.278282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.035370, 56.069782, 59.248444>,  <66.923935, 55.857975, 59.230541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.035370, 56.069782, 59.248444>,  <67.221100, 56.422791, 59.278282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.035370, 56.069782, 59.248444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351941, -0.106563, -0.929937,
		0.812741, -0.458037, 0.360075,
		-0.464316, -0.882523, -0.074594,
		66.896072, 55.805027, 59.226067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.735329, 55.955742, 59.099712>,  <67.221100, 56.422791, 59.278282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.735329, 55.955742, 59.099712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.382622, 55.826462, 58.962296>,  <67.170998, 55.748894, 58.879845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.382622, 55.826462, 58.962296>,  <67.735329, 55.955742, 59.099712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.382622, 55.826462, 58.962296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435374, -0.277483, -0.856419,
		0.181470, -0.904734, 0.385390,
		-0.881770, -0.323204, -0.343543,
		67.118088, 55.729500, 58.859234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.953178, 56.252762, 58.412323>,  <67.735329, 55.955742, 59.099712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.953178, 56.252762, 58.412323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.272430, 56.120255, 58.211029>,  <68.463982, 56.040749, 58.090252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.272430, 56.120255, 58.211029>,  <67.953178, 56.252762, 58.412323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.272430, 56.120255, 58.211029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512545, 0.812366, 0.278136,
		0.316676, -0.479921, 0.818165,
		0.798132, -0.331267, -0.503237,
		68.511871, 56.020874, 58.060059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.501953, 56.426743, 58.880661>,  <67.953178, 56.252762, 58.412323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.501953, 56.426743, 58.880661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.677895, 56.363708, 58.527008>,  <68.783463, 56.325890, 58.314816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.677895, 56.363708, 58.527008>,  <68.501953, 56.426743, 58.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.677895, 56.363708, 58.527008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689277, 0.690328, 0.219875,
		0.575695, -0.706127, 0.412262,
		0.439855, -0.157582, -0.884135,
		68.809853, 56.316433, 58.261768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.206024, 56.184780, 58.851406>,  <68.501953, 56.426743, 58.880661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.206024, 56.184780, 58.851406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.134026, 56.419033, 58.535271>,  <69.090828, 56.559586, 58.345589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.134026, 56.419033, 58.535271>,  <69.206024, 56.184780, 58.851406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.134026, 56.419033, 58.535271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580409, 0.711922, 0.395339,
		0.794184, -0.387565, -0.468044,
		-0.179992, 0.585629, -0.790343,
		69.080025, 56.594723, 58.298168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.951462, 56.473568, 58.682896>,  <69.206024, 56.184780, 58.851406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.951462, 56.473568, 58.682896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.614395, 56.673615, 58.603088>,  <69.412155, 56.793644, 58.555206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.614395, 56.673615, 58.603088>,  <69.951462, 56.473568, 58.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.614395, 56.673615, 58.603088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241848, 0.682604, 0.689609,
		0.481076, 0.532853, -0.696156,
		-0.842659, 0.500119, -0.199515,
		69.361595, 56.823650, 58.543232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.027061, 57.245129, 58.594036>,  <69.951462, 56.473568, 58.682896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.027061, 57.245129, 58.594036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.675407, 57.149933, 58.759186>,  <69.464417, 57.092815, 58.858276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.675407, 57.149933, 58.759186>,  <70.027061, 57.245129, 58.594036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.675407, 57.149933, 58.759186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303307, 0.388823, 0.869955,
		-0.367575, 0.890044, -0.269648,
		-0.879144, -0.237988, 0.412878,
		69.411667, 57.078537, 58.883049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.698082, 57.803345, 59.174313>,  <70.027061, 57.245129, 58.594036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.698082, 57.803345, 59.174313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.588028, 57.433094, 59.278244>,  <69.521996, 57.210941, 59.340603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.588028, 57.433094, 59.278244>,  <69.698082, 57.803345, 59.174313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.588028, 57.433094, 59.278244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167158, 0.220085, 0.961052,
		-0.946763, 0.307849, 0.094174,
		-0.275132, -0.925631, 0.259827,
		69.505486, 57.155403, 59.356194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.304070, 57.877380, 58.874256>,  <69.698082, 57.803345, 59.174313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.304070, 57.877380, 58.874256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.628906, 58.110779, 58.876801>,  <70.823807, 58.250816, 58.878326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.628906, 58.110779, 58.876801>,  <70.304070, 57.877380, 58.874256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.628906, 58.110779, 58.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053507, -0.085317, 0.994916,
		0.581070, -0.807624, -0.100506,
		0.812093, 0.583494, 0.006362,
		70.872536, 58.285828, 58.878708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.478104, 58.502567, 59.185402>,  <70.304070, 57.877380, 58.874256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.478104, 58.502567, 59.185402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.537140, 58.147930, 59.360748>,  <70.572563, 57.935146, 59.465958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.537140, 58.147930, 59.360748>,  <70.478104, 58.502567, 59.185402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.537140, 58.147930, 59.360748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903390, 0.301271, 0.305160,
		-0.402621, 0.350980, 0.845405,
		0.147591, -0.886594, 0.438370,
		70.581421, 57.881950, 59.492260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.647423, 58.639091, 59.788101>,  <70.478104, 58.502567, 59.185402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.647423, 58.639091, 59.788101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.804260, 58.273582, 59.745636>,  <70.898361, 58.054276, 59.720158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.804260, 58.273582, 59.745636>,  <70.647423, 58.639091, 59.788101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.804260, 58.273582, 59.745636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893470, 0.350801, 0.280445,
		-0.219021, -0.204818, 0.953981,
		0.392097, -0.913777, -0.106166,
		70.921890, 57.999451, 59.713787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.745705, 58.279774, 60.425697>,  <70.647423, 58.639091, 59.788101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.745705, 58.279774, 60.425697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.016891, 58.167564, 60.153915>,  <71.179604, 58.100239, 59.990845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.016891, 58.167564, 60.153915>,  <70.745705, 58.279774, 60.425697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.016891, 58.167564, 60.153915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730456, 0.360682, 0.579950,
		0.082377, -0.889502, 0.449444,
		0.677973, -0.280525, -0.679455,
		71.220284, 58.083408, 59.950077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.350670, 57.825840, 60.624428>,  <70.745705, 58.279774, 60.425697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.350670, 57.825840, 60.624428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.481956, 58.037502, 60.311440>,  <71.560730, 58.164501, 60.123646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.481956, 58.037502, 60.311440>,  <71.350670, 57.825840, 60.624428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.481956, 58.037502, 60.311440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824296, 0.244094, 0.510837,
		0.461310, -0.812656, -0.356066,
		0.328222, 0.529158, -0.782472,
		71.580421, 58.196251, 60.076698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.065514, 58.177677, 60.455109>,  <71.350670, 57.825840, 60.624428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.065514, 58.177677, 60.455109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.133766, 57.831703, 60.266312>,  <72.174721, 57.624119, 60.153034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.133766, 57.831703, 60.266312>,  <72.065514, 58.177677, 60.455109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.133766, 57.831703, 60.266312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723690, 0.215069, -0.655757,
		0.668697, 0.453470, -0.589245,
		0.170638, -0.864934, -0.471988,
		72.184959, 57.572224, 60.124714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.384850, 58.236416, 59.805412>,  <72.065514, 58.177677, 60.455109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.384850, 58.236416, 59.805412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.181328, 57.892128, 59.798851>,  <72.059212, 57.685555, 59.794914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.181328, 57.892128, 59.798851>,  <72.384850, 58.236416, 59.805412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.181328, 57.892128, 59.798851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600393, 0.368442, -0.709774,
		0.616962, -0.351292, -0.704238,
		-0.508809, -0.860723, -0.016402,
		72.028687, 57.633911, 59.793930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.769089, 57.489178, 59.774246>,  <72.384850, 58.236416, 59.805412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.769089, 57.489178, 59.774246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.123222, 57.441124, 59.594582>,  <73.335701, 57.412292, 59.486782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.123222, 57.441124, 59.594582>,  <72.769089, 57.489178, 59.774246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.123222, 57.441124, 59.594582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464756, 0.200645, 0.862405,
		-0.013479, -0.972271, 0.233470,
		0.885336, -0.120131, -0.449164,
		73.388824, 57.405087, 59.459831>
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
