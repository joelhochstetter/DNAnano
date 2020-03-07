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
	<36.179253, 52.789917, 49.651760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060764, 53.150181, 49.778923>,  <35.989674, 53.366341, 49.855221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060764, 53.150181, 49.778923>,  <36.179253, 52.789917, 49.651760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060764, 53.150181, 49.778923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935038, 0.205560, 0.288876,
		0.194831, 0.382823, -0.903044,
		-0.296218, 0.900662, 0.317904,
		35.971897, 53.420380, 49.874294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640190, 53.318668, 49.390381>,  <36.179253, 52.789917, 49.651760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640190, 53.318668, 49.390381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493263, 53.485790, 49.722771>,  <36.405106, 53.586063, 49.922203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493263, 53.485790, 49.722771>,  <36.640190, 53.318668, 49.390381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493263, 53.485790, 49.722771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886724, 0.426952, 0.177296,
		-0.280711, 0.801968, -0.527303,
		-0.367318, 0.417803, 0.830974,
		36.383068, 53.611130, 49.972061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760361, 53.986835, 49.459793>,  <36.640190, 53.318668, 49.390381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760361, 53.986835, 49.459793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710384, 53.896023, 49.846130>,  <36.680397, 53.841534, 50.077930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710384, 53.896023, 49.846130>,  <36.760361, 53.986835, 49.459793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710384, 53.896023, 49.846130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811407, 0.536830, 0.231153,
		-0.570971, 0.812570, 0.117141,
		-0.124943, -0.227031, 0.965840,
		36.672901, 53.827915, 50.135883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045681, 54.191566, 50.188633>,  <36.760361, 53.986835, 49.459793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045681, 54.191566, 50.188633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396637, 54.047432, 50.061920>,  <37.607212, 53.960953, 49.985893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396637, 54.047432, 50.061920>,  <37.045681, 54.191566, 50.188633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396637, 54.047432, 50.061920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372389, 0.927769, -0.023917,
		0.302516, -0.096981, 0.948198,
		0.877389, -0.360334, -0.316779,
		37.659855, 53.939331, 49.966885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651569, 54.499245, 50.489204>,  <37.045681, 54.191566, 50.188633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651569, 54.499245, 50.489204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826744, 54.346348, 50.163727>,  <37.931847, 54.254608, 49.968441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826744, 54.346348, 50.163727>,  <37.651569, 54.499245, 50.489204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826744, 54.346348, 50.163727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632445, 0.774254, -0.023333,
		0.638926, -0.504400, 0.580822,
		0.437935, -0.382246, -0.813696,
		37.958126, 54.231674, 49.919617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325981, 54.338936, 50.659485>,  <37.651569, 54.499245, 50.489204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325981, 54.338936, 50.659485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258995, 54.409336, 50.271469>,  <38.218803, 54.451576, 50.038658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258995, 54.409336, 50.271469>,  <38.325981, 54.338936, 50.659485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258995, 54.409336, 50.271469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713110, 0.701040, 0.004086,
		0.680757, -0.691061, -0.242908,
		-0.167465, 0.176002, -0.970041,
		38.208755, 54.462135, 49.980457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940746, 54.166286, 50.056797>,  <38.325981, 54.338936, 50.659485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940746, 54.166286, 50.056797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678741, 54.465797, 50.016220>,  <38.521538, 54.645504, 49.991875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678741, 54.465797, 50.016220>,  <38.940746, 54.166286, 50.056797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678741, 54.465797, 50.016220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731792, 0.662063, 0.161718,
		0.188249, 0.031696, -0.981610,
		-0.655013, 0.748778, -0.101438,
		38.482239, 54.690430, 49.985790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483212, 54.255989, 49.446983>,  <38.940746, 54.166286, 50.056797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483212, 54.255989, 49.446983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308422, 54.311939, 49.091572>,  <38.203548, 54.345509, 48.878326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308422, 54.311939, 49.091572>,  <38.483212, 54.255989, 49.446983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308422, 54.311939, 49.091572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124738, 0.968866, 0.213866,
		0.890781, 0.204288, -0.405926,
		-0.436978, 0.139874, -0.888530,
		38.177330, 54.353901, 48.825012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901272, 54.858177, 49.146679>,  <38.483212, 54.255989, 49.446983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901272, 54.858177, 49.146679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558990, 54.817207, 48.943790>,  <38.353622, 54.792625, 48.822056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558990, 54.817207, 48.943790>,  <38.901272, 54.858177, 49.146679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558990, 54.817207, 48.943790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021829, 0.986486, -0.162382,
		0.517004, -0.127879, -0.846377,
		-0.855705, -0.102428, -0.507226,
		38.302280, 54.786480, 48.791622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337090, 54.668724, 49.549381>,  <38.901272, 54.858177, 49.146679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337090, 54.668724, 49.549381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256874, 54.634731, 49.158985>,  <39.208744, 54.614338, 48.924747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256874, 54.634731, 49.158985>,  <39.337090, 54.668724, 49.549381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256874, 54.634731, 49.158985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916732, 0.335085, -0.217534,
		0.345526, -0.938348, 0.010705,
		-0.200535, -0.084977, -0.975994,
		39.196712, 54.609238, 48.866188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867535, 54.262238, 49.252148>,  <39.337090, 54.668724, 49.549381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867535, 54.262238, 49.252148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702702, 54.512646, 48.987335>,  <39.603802, 54.662891, 48.828445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702702, 54.512646, 48.987335>,  <39.867535, 54.262238, 49.252148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702702, 54.512646, 48.987335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909993, 0.319333, -0.264462,
		0.045850, -0.711425, -0.701265,
		-0.412081, 0.626020, -0.662033,
		39.579079, 54.700451, 48.788727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252357, 54.307278, 48.712593>,  <39.867535, 54.262238, 49.252148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252357, 54.307278, 48.712593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080517, 54.668285, 48.700584>,  <39.977413, 54.884888, 48.693378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080517, 54.668285, 48.700584>,  <40.252357, 54.307278, 48.712593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080517, 54.668285, 48.700584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854147, 0.395343, -0.337842,
		-0.293039, -0.170782, -0.940724,
		-0.429606, 0.902517, -0.030022,
		39.951633, 54.939041, 48.691578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863216, 54.434475, 49.167645>,  <40.252357, 54.307278, 48.712593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863216, 54.434475, 49.167645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809868, 54.053658, 49.057495>,  <40.777859, 53.825169, 48.991405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809868, 54.053658, 49.057495>,  <40.863216, 54.434475, 49.167645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809868, 54.053658, 49.057495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933648, -0.213899, 0.287312,
		-0.332434, -0.218780, 0.917400,
		-0.133373, -0.952041, -0.275370,
		40.769855, 53.768044, 48.974884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041691, 54.050213, 49.737209>,  <40.863216, 54.434475, 49.167645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041691, 54.050213, 49.737209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101578, 53.844025, 49.399719>,  <41.137512, 53.720310, 49.197224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101578, 53.844025, 49.399719>,  <41.041691, 54.050213, 49.737209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101578, 53.844025, 49.399719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980903, -0.029707, 0.192214,
		-0.124145, -0.856392, 0.501180,
		0.149722, -0.515471, -0.843725,
		41.146496, 53.689384, 49.146603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608269, 53.382030, 49.746220>,  <41.041691, 54.050213, 49.737209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608269, 53.382030, 49.746220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611385, 53.619804, 49.424576>,  <41.613255, 53.762466, 49.231590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611385, 53.619804, 49.424576>,  <41.608269, 53.382030, 49.746220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611385, 53.619804, 49.424576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996776, 0.059602, 0.053714,
		0.079856, -0.801935, -0.592050,
		0.007788, 0.594430, -0.804109,
		41.613720, 53.798134, 49.183342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961288, 53.062607, 49.160564>,  <41.608269, 53.382030, 49.746220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961288, 53.062607, 49.160564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950684, 53.460987, 49.194939>,  <41.944321, 53.700016, 49.215565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950684, 53.460987, 49.194939>,  <41.961288, 53.062607, 49.160564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950684, 53.460987, 49.194939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995399, 0.034224, -0.089496,
		-0.092074, 0.083170, -0.992273,
		-0.026517, 0.995948, 0.085939,
		41.942730, 53.759773, 49.220722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526573, 53.400539, 48.695480>,  <41.961288, 53.062607, 49.160564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526573, 53.400539, 48.695480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426952, 53.641270, 48.999001>,  <42.367180, 53.785709, 49.181114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426952, 53.641270, 48.999001>,  <42.526573, 53.400539, 48.695480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426952, 53.641270, 48.999001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968223, 0.136326, 0.209666,
		0.022739, 0.786905, -0.616655,
		-0.249053, 0.601827, 0.758799,
		42.352238, 53.821819, 49.226639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729992, 54.147881, 48.480190>,  <42.526573, 53.400539, 48.695480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729992, 54.147881, 48.480190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753559, 54.057732, 48.869186>,  <42.767700, 54.003643, 49.102585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753559, 54.057732, 48.869186>,  <42.729992, 54.147881, 48.480190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753559, 54.057732, 48.869186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994801, -0.067809, -0.075986,
		0.083068, 0.971910, 0.220204,
		0.058919, -0.225371, 0.972490,
		42.771236, 53.990120, 49.160934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169544, 54.635204, 48.936104>,  <42.729992, 54.147881, 48.480190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169544, 54.635204, 48.936104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181374, 54.265335, 49.087952>,  <43.188469, 54.043415, 49.179062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181374, 54.265335, 49.087952>,  <43.169544, 54.635204, 48.936104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181374, 54.265335, 49.087952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997781, 0.004641, -0.066414,
		0.059649, 0.380744, 0.922754,
		0.029569, -0.924669, 0.379623,
		43.190243, 53.987934, 49.201839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583488, 54.629047, 49.553902>,  <43.169544, 54.635204, 48.936104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583488, 54.629047, 49.553902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594276, 54.275169, 49.367744>,  <43.600750, 54.062843, 49.256050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594276, 54.275169, 49.367744>,  <43.583488, 54.629047, 49.553902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594276, 54.275169, 49.367744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999561, 0.029567, 0.001718,
		0.012240, -0.465232, 0.885104,
		0.026969, -0.884695, -0.465390,
		43.602367, 54.009762, 49.228127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955597, 54.086830, 49.911045>,  <43.583488, 54.629047, 49.553902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955597, 54.086830, 49.911045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976334, 53.999310, 49.521290>,  <43.988777, 53.946796, 49.287437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976334, 53.999310, 49.521290>,  <43.955597, 54.086830, 49.911045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976334, 53.999310, 49.521290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991740, 0.125899, 0.024494,
		0.117315, -0.967614, 0.223519,
		0.051841, -0.218800, -0.974392,
		43.991886, 53.933670, 49.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592728, 53.616592, 49.760086>,  <43.955597, 54.086830, 49.911045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592728, 53.616592, 49.760086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551464, 53.806938, 49.410706>,  <44.526707, 53.921146, 49.201077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551464, 53.806938, 49.410706>,  <44.592728, 53.616592, 49.760086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551464, 53.806938, 49.410706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989852, 0.135400, -0.043138,
		0.097737, -0.869033, -0.485005,
		-0.103158, 0.475866, -0.873447,
		44.520515, 53.949699, 49.148670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749756, 53.157410, 49.190491>,  <44.592728, 53.616592, 49.760086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749756, 53.157410, 49.190491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818695, 53.549568, 49.152275>,  <44.860058, 53.784863, 49.129345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818695, 53.549568, 49.152275>,  <44.749756, 53.157410, 49.190491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818695, 53.549568, 49.152275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957318, -0.143858, 0.250692,
		0.232033, -0.134664, -0.963341,
		0.172344, 0.980393, -0.095536,
		44.870399, 53.843685, 49.123615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429668, 53.222942, 48.919781>,  <44.749756, 53.157410, 49.190491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429668, 53.222942, 48.919781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352425, 53.545265, 49.143703>,  <45.306080, 53.738659, 49.278057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352425, 53.545265, 49.143703>,  <45.429668, 53.222942, 48.919781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352425, 53.545265, 49.143703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957653, 0.030606, 0.286294,
		0.213565, 0.591383, -0.777596,
		-0.193109, 0.805810, 0.559803,
		45.294491, 53.787006, 49.311646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087578, 53.579987, 48.932014>,  <45.429668, 53.222942, 48.919781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087578, 53.579987, 48.932014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865765, 53.747261, 49.219795>,  <45.732677, 53.847626, 49.392464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865765, 53.747261, 49.219795>,  <46.087578, 53.579987, 48.932014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865765, 53.747261, 49.219795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831942, 0.258599, 0.490917,
		0.019245, 0.870773, -0.491308,
		-0.554529, 0.418187, 0.719456,
		45.699406, 53.872719, 49.435631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385391, 54.242474, 49.060493>,  <46.087578, 53.579987, 48.932014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385391, 54.242474, 49.060493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172104, 54.138672, 49.382568>,  <46.044132, 54.076389, 49.575813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172104, 54.138672, 49.382568>,  <46.385391, 54.242474, 49.060493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172104, 54.138672, 49.382568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824492, 0.053730, 0.563317,
		-0.189448, 0.964245, 0.185313,
		-0.533219, -0.259508, 0.805191,
		46.012138, 54.060818, 49.624126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297230, 54.769127, 49.606869>,  <46.385391, 54.242474, 49.060493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297230, 54.769127, 49.606869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315830, 54.396168, 49.750244>,  <46.326992, 54.172394, 49.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315830, 54.396168, 49.750244>,  <46.297230, 54.769127, 49.606869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315830, 54.396168, 49.750244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757028, 0.267006, 0.596336,
		-0.651725, 0.243615, 0.718266,
		0.046505, -0.932394, 0.358438,
		46.329781, 54.116451, 49.857777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053425, 54.621407, 50.243290>,  <46.297230, 54.769127, 49.606869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053425, 54.621407, 50.243290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340378, 54.347618, 50.191353>,  <46.512550, 54.183346, 50.160191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.340378, 54.347618, 50.191353>,  <46.053425, 54.621407, 50.243290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340378, 54.347618, 50.191353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643792, 0.580079, 0.499039,
		-0.266263, -0.441590, 0.856798,
		0.717381, -0.684475, -0.129838,
		46.555592, 54.142277, 50.152401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.614601, 54.966061, 50.427719>,  <46.053425, 54.621407, 50.243290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.614601, 54.966061, 50.427719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753319, 54.597855, 50.355743>,  <46.836552, 54.376930, 50.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753319, 54.597855, 50.355743>,  <46.614601, 54.966061, 50.427719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753319, 54.597855, 50.355743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914460, 0.289179, 0.283087,
		-0.208551, -0.262723, 0.942063,
		0.346798, -0.920517, -0.179941,
		46.857357, 54.321701, 50.301762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.098331, 54.596077, 51.027561>,  <46.614601, 54.966061, 50.427719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.098331, 54.596077, 51.027561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166092, 54.499981, 50.645233>,  <47.206749, 54.442326, 50.415836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166092, 54.499981, 50.645233>,  <47.098331, 54.596077, 51.027561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166092, 54.499981, 50.645233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900861, 0.431063, 0.051320,
		0.399688, -0.869754, 0.289444,
		0.169404, -0.240237, -0.955818,
		47.216911, 54.427910, 50.358486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.618896, 54.694023, 50.706810>,  <47.098331, 54.596077, 51.027561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.618896, 54.694023, 50.706810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.367622, 54.935070, 50.509937>,  <47.216858, 55.079697, 50.391815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.367622, 54.935070, 50.509937>,  <47.618896, 54.694023, 50.706810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.367622, 54.935070, 50.509937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642475, -0.758551, -0.108748,
		-0.438875, 0.247898, 0.863676,
		-0.628183, 0.602617, -0.492177,
		47.179169, 55.115856, 50.362286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.010647, 54.723553, 49.971161>,  <47.618896, 54.694023, 50.706810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.010647, 54.723553, 49.971161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.081837, 54.361019, 50.124462>,  <48.124550, 54.143497, 50.216442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.081837, 54.361019, 50.124462>,  <48.010647, 54.723553, 49.971161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.081837, 54.361019, 50.124462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960277, 0.074902, -0.268807,
		0.214923, 0.415867, 0.883664,
		0.177976, -0.906336, 0.383249,
		48.135231, 54.089119, 50.239437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.457130, 54.786091, 50.527405>,  <48.010647, 54.723553, 49.971161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.457130, 54.786091, 50.527405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.500233, 54.425114, 50.360558>,  <48.526096, 54.208527, 50.260448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.500233, 54.425114, 50.360558>,  <48.457130, 54.786091, 50.527405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.500233, 54.425114, 50.360558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989101, 0.054975, 0.136590,
		-0.100334, -0.427287, 0.898531,
		0.107759, -0.902443, -0.417114,
		48.532562, 54.154381, 50.235424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.947296, 55.082714, 51.086143>,  <48.457130, 54.786091, 50.527405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.947296, 55.082714, 51.086143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.122414, 54.730637, 51.159470>,  <49.227486, 54.519390, 51.203465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.122414, 54.730637, 51.159470>,  <48.947296, 55.082714, 51.086143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.122414, 54.730637, 51.159470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267364, -0.067214, -0.961249,
		0.858402, 0.469839, 0.205905,
		0.437793, -0.880189, 0.183315,
		49.253750, 54.466579, 51.214462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.963310, 55.017677, 51.896130>,  <48.947296, 55.082714, 51.086143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.963310, 55.017677, 51.896130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.868954, 55.184128, 52.247398>,  <48.812340, 55.283997, 52.458160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.868954, 55.184128, 52.247398>,  <48.963310, 55.017677, 51.896130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.868954, 55.184128, 52.247398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923686, 0.376780, 0.069577,
		-0.301926, 0.827572, -0.473250,
		-0.235891, 0.416127, 0.878176,
		48.798187, 55.308968, 52.510853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.975872, 55.672920, 51.881161>,  <48.963310, 55.017677, 51.896130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.975872, 55.672920, 51.881161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.004543, 55.625195, 52.277267>,  <49.021748, 55.596558, 52.514931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.004543, 55.625195, 52.277267>,  <48.975872, 55.672920, 51.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.004543, 55.625195, 52.277267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709989, 0.703422, 0.033362,
		-0.700555, 0.700687, 0.135132,
		0.071678, -0.119314, 0.990266,
		49.026047, 55.589401, 52.574348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.101009, 56.318661, 52.151852>,  <48.975872, 55.672920, 51.881161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.101009, 56.318661, 52.151852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.232788, 56.082199, 52.446335>,  <49.311855, 55.940323, 52.623024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.232788, 56.082199, 52.446335>,  <49.101009, 56.318661, 52.151852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.232788, 56.082199, 52.446335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758636, 0.629926, 0.166325,
		-0.562081, 0.503720, 0.655996,
		0.329448, -0.591151, 0.736210,
		49.331623, 55.904854, 52.667198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.179028, 56.651314, 52.877663>,  <49.101009, 56.318661, 52.151852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.179028, 56.651314, 52.877663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433193, 56.343716, 52.849693>,  <49.585693, 56.159157, 52.832912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433193, 56.343716, 52.849693>,  <49.179028, 56.651314, 52.877663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.433193, 56.343716, 52.849693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669074, 0.503112, 0.547009,
		-0.385470, -0.394360, 0.834202,
		0.635415, -0.768998, -0.069922,
		49.623817, 56.113018, 52.828716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.111813, 56.578014, 53.461048>,  <49.179028, 56.651314, 52.877663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.111813, 56.578014, 53.461048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460270, 56.465134, 53.300316>,  <49.669346, 56.397408, 53.203876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.460270, 56.465134, 53.300316>,  <49.111813, 56.578014, 53.461048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.460270, 56.465134, 53.300316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477172, 0.679529, 0.557268,
		0.115794, -0.677204, 0.726627,
		0.871148, -0.282198, -0.401829,
		49.721615, 56.380474, 53.179768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.662148, 56.481892, 53.940746>,  <49.111813, 56.578014, 53.461048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.662148, 56.481892, 53.940746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.875336, 56.575340, 53.615448>,  <50.003246, 56.631409, 53.420269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.875336, 56.575340, 53.615448>,  <49.662148, 56.481892, 53.940746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.875336, 56.575340, 53.615448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416884, 0.763874, 0.492650,
		0.736311, -0.601595, 0.309725,
		0.532967, 0.233624, -0.813244,
		50.035225, 56.645428, 53.371475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.212585, 56.803612, 54.255096>,  <49.662148, 56.481892, 53.940746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.212585, 56.803612, 54.255096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.241638, 56.898121, 53.867508>,  <50.259068, 56.954826, 53.634956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.241638, 56.898121, 53.867508>,  <50.212585, 56.803612, 54.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.241638, 56.898121, 53.867508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479146, 0.843809, 0.241672,
		0.874725, -0.481829, -0.051925,
		0.072630, 0.236276, -0.968968,
		50.263428, 56.969006, 53.576817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.901405, 56.803196, 53.877495>,  <50.212585, 56.803612, 54.255096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.901405, 56.803196, 53.877495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.653492, 57.089279, 53.748283>,  <50.504745, 57.260929, 53.670757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.653492, 57.089279, 53.748283>,  <50.901405, 56.803196, 53.877495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.653492, 57.089279, 53.748283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625523, 0.698793, 0.347001,
		0.473907, 0.013004, -0.880479,
		-0.619785, 0.715206, -0.323028,
		50.467556, 57.303841, 53.651375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.341408, 57.373932, 53.633190>,  <50.901405, 56.803196, 53.877495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.341408, 57.373932, 53.633190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.979633, 57.499504, 53.748730>,  <50.762569, 57.574848, 53.818054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.979633, 57.499504, 53.748730>,  <51.341408, 57.373932, 53.633190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.979633, 57.499504, 53.748730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420241, 0.772153, 0.476631,
		-0.073407, 0.552471, -0.830293,
		-0.904439, 0.313935, 0.288852,
		50.708302, 57.593685, 53.835384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.109226, 58.119198, 53.417980>,  <51.341408, 57.373932, 53.633190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.109226, 58.119198, 53.417980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.973698, 57.983421, 53.768974>,  <50.892380, 57.901955, 53.979572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.973698, 57.983421, 53.768974>,  <51.109226, 58.119198, 53.417980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.973698, 57.983421, 53.768974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520304, 0.709461, 0.475342,
		-0.783893, 0.617613, -0.063766,
		-0.338817, -0.339439, 0.877487,
		50.872051, 57.881588, 54.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.263714, 58.769047, 53.034195>,  <51.109226, 58.119198, 53.417980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.263714, 58.769047, 53.034195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.539913, 58.851837, 53.311432>,  <51.705631, 58.901512, 53.477776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.539913, 58.851837, 53.311432>,  <51.263714, 58.769047, 53.034195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.539913, 58.851837, 53.311432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179465, 0.879209, -0.441343,
		-0.700721, 0.429131, 0.569944,
		0.690494, 0.206974, 0.693095,
		51.747063, 58.913929, 53.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.162785, 59.486259, 53.384274>,  <51.263714, 58.769047, 53.034195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.162785, 59.486259, 53.384274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.549915, 59.414818, 53.455170>,  <51.782192, 59.371952, 53.497707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.549915, 59.414818, 53.455170>,  <51.162785, 59.486259, 53.384274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.549915, 59.414818, 53.455170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229279, 0.916144, -0.328803,
		-0.103648, 0.358861, 0.927618,
		0.967827, -0.178603, 0.177236,
		51.840263, 59.361237, 53.508339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.319130, 60.130280, 53.036068>,  <51.162785, 59.486259, 53.384274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.319130, 60.130280, 53.036068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.176899, 60.214169, 53.400394>,  <51.091560, 60.264500, 53.618988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.176899, 60.214169, 53.400394>,  <51.319130, 60.130280, 53.036068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.176899, 60.214169, 53.400394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809374, -0.418253, 0.412284,
		0.467414, 0.883789, -0.021018,
		-0.355581, 0.209718, 0.910813,
		51.070225, 60.277084, 53.673637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.800976, 60.607044, 53.446922>,  <51.319130, 60.130280, 53.036068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.800976, 60.607044, 53.446922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.573235, 60.384968, 53.689442>,  <51.436588, 60.251720, 53.834953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.573235, 60.384968, 53.689442>,  <51.800976, 60.607044, 53.446922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.573235, 60.384968, 53.689442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821072, -0.347321, 0.453000,
		-0.040922, 0.755731, 0.653602,
		-0.569356, -0.555192, 0.606297,
		51.402428, 60.218410, 53.871330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.807472, 60.875221, 54.091862>,  <51.800976, 60.607044, 53.446922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.807472, 60.875221, 54.091862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.736900, 60.482136, 54.114285>,  <51.694557, 60.246284, 54.127739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.736900, 60.482136, 54.114285>,  <51.807472, 60.875221, 54.091862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.736900, 60.482136, 54.114285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848340, -0.122926, 0.514984,
		-0.499193, 0.138412, 0.855365,
		-0.176427, -0.982716, 0.056057,
		51.683971, 60.187321, 54.131100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.847214, 60.617802, 54.847317>,  <51.807472, 60.875221, 54.091862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.847214, 60.617802, 54.847317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.911915, 60.335049, 54.571880>,  <51.950737, 60.165398, 54.406620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.911915, 60.335049, 54.571880>,  <51.847214, 60.617802, 54.847317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.911915, 60.335049, 54.571880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929883, -0.124433, 0.346170,
		-0.330383, -0.696304, 0.637188,
		0.161752, -0.706879, -0.688592,
		51.960442, 60.122986, 54.365303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.982723, 59.880516, 55.161064>,  <51.847214, 60.617802, 54.847317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.982723, 59.880516, 55.161064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.178867, 59.930340, 54.816032>,  <52.296555, 59.960232, 54.609013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.178867, 59.930340, 54.816032>,  <51.982723, 59.880516, 55.161064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.178867, 59.930340, 54.816032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863606, 0.063648, 0.500133,
		0.117195, -0.990169, -0.076357,
		0.490356, 0.124556, -0.862575,
		52.325974, 59.967705, 54.557259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.533287, 59.437973, 55.084587>,  <51.982723, 59.880516, 55.161064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.533287, 59.437973, 55.084587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.618370, 59.769810, 54.878082>,  <52.669418, 59.968914, 54.754177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.618370, 59.769810, 54.878082>,  <52.533287, 59.437973, 55.084587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.618370, 59.769810, 54.878082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903210, 0.034643, 0.427798,
		0.372784, -0.557291, -0.741929,
		0.212705, 0.829594, -0.516265,
		52.682182, 60.018688, 54.723202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.131569, 59.311153, 54.630795>,  <52.533287, 59.437973, 55.084587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.131569, 59.311153, 54.630795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.103237, 59.708736, 54.664337>,  <53.086239, 59.947285, 54.684464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.103237, 59.708736, 54.664337>,  <53.131569, 59.311153, 54.630795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.103237, 59.708736, 54.664337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995372, 0.064950, 0.070825,
		0.064950, 0.088489, -0.993957,
		-0.070825, 0.993957, 0.083861,
		53.081989, 60.006924, 54.689495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.317772, 59.644459, 54.071758>,  <53.131569, 59.311153, 54.630795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.317772, 59.644459, 54.071758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.405907, 59.851524, 54.402447>,  <53.458786, 59.975765, 54.600861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.405907, 59.851524, 54.402447>,  <53.317772, 59.644459, 54.071758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.405907, 59.851524, 54.402447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973424, -0.062439, -0.220332,
		-0.062439, 0.853301, -0.517667,
		0.220332, 0.517667, 0.826725,
		53.472008, 60.006824, 54.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.838001, 60.109852, 53.948345>,  <53.317772, 59.644459, 54.071758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.838001, 60.109852, 53.948345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.849789, 60.109894, 54.348171>,  <53.856861, 60.109921, 54.588066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.849789, 60.109894, 54.348171>,  <53.838001, 60.109852, 53.948345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.849789, 60.109894, 54.348171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996852, 0.073636, -0.029393,
		-0.073607, 0.997285, 0.002063,
		0.029465, 0.000107, 0.999566,
		53.858627, 60.109924, 54.648041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.397072, 60.483051, 54.055527>,  <53.838001, 60.109852, 53.948345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.397072, 60.483051, 54.055527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.329430, 60.364891, 54.431641>,  <54.288845, 60.293995, 54.657310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.329430, 60.364891, 54.431641>,  <54.397072, 60.483051, 54.055527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.329430, 60.364891, 54.431641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935800, 0.251296, 0.247242,
		-0.309326, 0.921732, 0.233940,
		-0.169103, -0.295399, 0.940289,
		54.278698, 60.276272, 54.713726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.469913, 61.098003, 54.586311>,  <54.397072, 60.483051, 54.055527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.469913, 61.098003, 54.586311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.549721, 60.743069, 54.752602>,  <54.597607, 60.530109, 54.852375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.549721, 60.743069, 54.752602>,  <54.469913, 61.098003, 54.586311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.549721, 60.743069, 54.752602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906519, 0.328223, 0.265504,
		-0.372042, 0.323891, 0.869873,
		0.199518, -0.887335, 0.415727,
		54.609577, 60.476868, 54.877319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.805973, 61.174351, 55.285942>,  <54.469913, 61.098003, 54.586311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.805973, 61.174351, 55.285942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.938774, 60.855133, 55.084785>,  <55.018456, 60.663605, 54.964092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.938774, 60.855133, 55.084785>,  <54.805973, 61.174351, 55.285942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.938774, 60.855133, 55.084785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939277, 0.230647, 0.254088,
		-0.086782, -0.556714, 0.826159,
		0.332005, -0.798042, -0.502892,
		55.038376, 60.615719, 54.933918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.400608, 60.987896, 55.618507>,  <54.805973, 61.174351, 55.285942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.400608, 60.987896, 55.618507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.450523, 60.812622, 55.262436>,  <55.480473, 60.707458, 55.048794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.450523, 60.812622, 55.262436>,  <55.400608, 60.987896, 55.618507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.450523, 60.812622, 55.262436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991882, 0.032971, 0.122813,
		-0.024464, -0.898282, 0.438738,
		0.124786, -0.438181, -0.890183,
		55.487961, 60.681168, 54.995380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.894802, 60.429695, 55.779514>,  <55.400608, 60.987896, 55.618507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.894802, 60.429695, 55.779514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.886780, 60.492027, 55.384483>,  <55.881966, 60.529427, 55.147465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.886780, 60.492027, 55.384483>,  <55.894802, 60.429695, 55.779514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.886780, 60.492027, 55.384483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999787, -0.001755, -0.020580,
		-0.004940, -0.987782, -0.155761,
		-0.020055, 0.155829, -0.987580,
		55.880764, 60.538776, 55.088211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.155285, 59.891781, 55.233711>,  <55.894802, 60.429695, 55.779514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.155285, 59.891781, 55.233711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.222176, 60.275726, 55.143654>,  <56.262310, 60.506096, 55.089619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.222176, 60.275726, 55.143654>,  <56.155285, 59.891781, 55.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.222176, 60.275726, 55.143654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959903, -0.106398, 0.259355,
		0.224991, -0.259487, -0.939173,
		0.167225, 0.959868, -0.225144,
		56.272343, 60.563686, 55.076111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.689064, 60.026917, 54.756321>,  <56.155285, 59.891781, 55.233711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.689064, 60.026917, 54.756321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.675735, 60.348480, 54.993851>,  <56.667740, 60.541416, 55.136368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.675735, 60.348480, 54.993851>,  <56.689064, 60.026917, 54.756321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.675735, 60.348480, 54.993851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988279, -0.062062, 0.139472,
		0.148976, 0.591508, -0.792417,
		-0.033320, 0.803907, 0.593821,
		56.665741, 60.589653, 55.171997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.218025, 60.615341, 54.563854>,  <56.689064, 60.026917, 54.756321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.218025, 60.615341, 54.563854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.132141, 60.639473, 54.953781>,  <57.080612, 60.653954, 55.187737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.132141, 60.639473, 54.953781>,  <57.218025, 60.615341, 54.563854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.132141, 60.639473, 54.953781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973870, 0.088861, 0.208999,
		-0.074014, 0.994215, -0.077833,
		-0.214706, 0.060330, 0.974814,
		57.067730, 60.657574, 55.246223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.482487, 61.216770, 54.996338>,  <57.218025, 60.615341, 54.563854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.482487, 61.216770, 54.996338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.466545, 60.911942, 55.254845>,  <57.456982, 60.729046, 55.409946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.466545, 60.911942, 55.254845>,  <57.482487, 61.216770, 54.996338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.466545, 60.911942, 55.254845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990781, 0.053670, 0.124390,
		-0.129479, 0.645264, 0.752907,
		-0.039855, -0.762072, 0.646264,
		57.454590, 60.683319, 55.448723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.111744, 61.275055, 55.455990>,  <57.482487, 61.216770, 54.996338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.111744, 61.275055, 55.455990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.990158, 60.903637, 55.541237>,  <57.917206, 60.680786, 55.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.990158, 60.903637, 55.541237>,  <58.111744, 61.275055, 55.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.990158, 60.903637, 55.541237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938397, -0.253216, 0.235142,
		-0.164373, 0.271466, 0.948308,
		-0.303960, -0.928541, 0.213121,
		57.898972, 60.625076, 55.605175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.072906, 61.062534, 56.208279>,  <58.111744, 61.275055, 55.455990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.072906, 61.062534, 56.208279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.153732, 60.757629, 55.962311>,  <58.202229, 60.574688, 55.814728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.153732, 60.757629, 55.962311>,  <58.072906, 61.062534, 56.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.153732, 60.757629, 55.962311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953263, 0.009061, 0.302006,
		-0.224636, -0.647205, 0.728467,
		0.202060, -0.762262, -0.614922,
		58.214352, 60.528950, 55.777836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.404659, 60.502518, 56.614262>,  <58.072906, 61.062534, 56.208279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.404659, 60.502518, 56.614262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.524414, 60.483414, 56.233086>,  <58.596268, 60.471951, 56.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.524414, 60.483414, 56.233086>,  <58.404659, 60.502518, 56.614262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.524414, 60.483414, 56.233086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953645, -0.016910, 0.300458,
		-0.030463, -0.998716, 0.040482,
		0.299388, -0.047758, -0.952936,
		58.614231, 60.469086, 55.947205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.701710, 59.916985, 57.002506>,  <58.404659, 60.502518, 56.614262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.701710, 59.916985, 57.002506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.929733, 59.588600, 57.015526>,  <59.066547, 59.391571, 57.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.929733, 59.588600, 57.015526>,  <58.701710, 59.916985, 57.002506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.929733, 59.588600, 57.015526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267254, 0.222751, 0.937527,
		-0.776924, -0.525743, 0.346385,
		0.570056, -0.820960, 0.032553,
		59.100750, 59.342312, 57.025291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.833633, 59.955269, 57.764240>,  <58.701710, 59.916985, 57.002506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.833633, 59.955269, 57.764240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.078796, 59.690548, 57.591560>,  <59.225895, 59.531715, 57.487953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.078796, 59.690548, 57.591560>,  <58.833633, 59.955269, 57.764240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.078796, 59.690548, 57.591560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517928, -0.076121, 0.852031,
		-0.596734, -0.745807, 0.296108,
		0.612910, -0.661798, -0.431699,
		59.262669, 59.492008, 57.462051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.938084, 59.287975, 58.228584>,  <58.833633, 59.955269, 57.764240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.938084, 59.287975, 58.228584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.266846, 59.356007, 58.011131>,  <59.464104, 59.396824, 57.880657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.266846, 59.356007, 58.011131>,  <58.938084, 59.287975, 58.228584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.266846, 59.356007, 58.011131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565005, -0.364650, 0.740135,
		-0.072356, -0.915480, -0.395804,
		0.821908, 0.170078, -0.543636,
		59.513420, 59.407028, 57.848042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.090244, 58.624283, 58.271660>,  <58.938084, 59.287975, 58.228584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.090244, 58.624283, 58.271660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.398521, 58.869476, 58.202049>,  <59.583488, 59.016590, 58.160282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.398521, 58.869476, 58.202049>,  <59.090244, 58.624283, 58.271660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.398521, 58.869476, 58.202049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555237, -0.512030, 0.655391,
		0.312635, -0.601732, -0.734968,
		0.770696, 0.612979, -0.174025,
		59.629730, 59.053371, 58.149841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.771648, 58.278469, 58.239399>,  <59.090244, 58.624283, 58.271660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.771648, 58.278469, 58.239399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.840759, 58.658394, 58.343704>,  <59.882225, 58.886349, 58.406288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.840759, 58.658394, 58.343704>,  <59.771648, 58.278469, 58.239399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.840759, 58.658394, 58.343704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739356, -0.299985, 0.602795,
		0.650770, 0.088647, -0.754083,
		0.172777, 0.949816, 0.260763,
		59.892593, 58.943340, 58.421932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.465126, 58.147663, 58.483875>,  <59.771648, 58.278469, 58.239399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.465126, 58.147663, 58.483875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.352867, 58.495461, 58.646469>,  <60.285511, 58.704140, 58.744026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.352867, 58.495461, 58.646469>,  <60.465126, 58.147663, 58.483875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.352867, 58.495461, 58.646469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615017, -0.162231, 0.771645,
		0.736881, 0.466549, -0.489222,
		-0.280643, 0.869490, 0.406480,
		60.268673, 58.756310, 58.768414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.167038, 57.702335, 58.419617>,  <60.465126, 58.147663, 58.483875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.167038, 57.702335, 58.419617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.288155, 57.706921, 58.038422>,  <61.360825, 57.709671, 57.809704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.288155, 57.706921, 58.038422>,  <61.167038, 57.702335, 58.419617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.288155, 57.706921, 58.038422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471352, 0.867274, 0.160197,
		0.828338, -0.497699, 0.257200,
		0.302793, 0.011465, -0.952988,
		61.378994, 57.710361, 57.752525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.614803, 57.148033, 58.510117>,  <61.167038, 57.702335, 58.419617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.614803, 57.148033, 58.510117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.767578, 56.910156, 58.227142>,  <61.859241, 56.767429, 58.057358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.767578, 56.910156, 58.227142>,  <61.614803, 57.148033, 58.510117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.767578, 56.910156, 58.227142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862525, -0.045552, 0.503960,
		-0.331927, -0.802661, 0.495540,
		0.381936, -0.594694, -0.707435,
		61.882160, 56.731747, 58.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.918659, 57.291676, 59.196159>,  <61.614803, 57.148033, 58.510117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.918659, 57.291676, 59.196159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.046509, 56.969704, 58.996185>,  <62.123219, 56.776520, 58.876202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.046509, 56.969704, 58.996185>,  <61.918659, 57.291676, 59.196159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.046509, 56.969704, 58.996185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946813, 0.292028, 0.135151,
		0.037207, -0.516539, 0.855455,
		0.319627, -0.804927, -0.499931,
		62.142399, 56.728226, 58.846207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.330166, 56.938190, 59.674873>,  <61.918659, 57.291676, 59.196159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.330166, 56.938190, 59.674873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.430122, 56.856056, 59.296371>,  <62.490097, 56.806778, 59.069271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.430122, 56.856056, 59.296371>,  <62.330166, 56.938190, 59.674873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.430122, 56.856056, 59.296371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967999, 0.076202, 0.239103,
		0.023011, -0.975721, 0.217803,
		0.249895, -0.205331, -0.946251,
		62.505093, 56.794456, 59.012497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.064636, 57.095776, 59.634468>,  <62.330166, 56.938190, 59.674873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.064636, 57.095776, 59.634468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.017021, 56.923393, 59.276672>,  <62.988453, 56.819965, 59.061996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.017021, 56.923393, 59.276672>,  <63.064636, 57.095776, 59.634468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.017021, 56.923393, 59.276672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981185, 0.086868, -0.172427,
		0.152010, -0.898183, 0.412504,
		-0.119037, -0.430953, -0.894488,
		62.981312, 56.794106, 59.008327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.754074, 56.839569, 59.462086>,  <63.064636, 57.095776, 59.634468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.754074, 56.839569, 59.462086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.577515, 56.885410, 59.106102>,  <63.471577, 56.912914, 58.892513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.577515, 56.885410, 59.106102>,  <63.754074, 56.839569, 59.462086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.577515, 56.885410, 59.106102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882064, -0.126633, -0.453793,
		-0.164706, -0.985307, -0.045194,
		-0.441402, 0.114606, -0.889961,
		63.445095, 56.919792, 58.839115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.812996, 56.263443, 58.898388>,  <63.754074, 56.839569, 59.462086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.812996, 56.263443, 58.898388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.774612, 56.621002, 58.723236>,  <63.751583, 56.835537, 58.618145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.774612, 56.621002, 58.723236>,  <63.812996, 56.263443, 58.898388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.774612, 56.621002, 58.723236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822348, -0.176666, -0.540863,
		-0.560834, -0.411993, -0.718141,
		-0.095961, 0.893896, -0.437883,
		63.745823, 56.889172, 58.591873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.757034, 56.368965, 58.103275>,  <63.812996, 56.263443, 58.898388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.757034, 56.368965, 58.103275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.970840, 56.626217, 58.322609>,  <64.099129, 56.780567, 58.454208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.970840, 56.626217, 58.322609>,  <63.757034, 56.368965, 58.103275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.970840, 56.626217, 58.322609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818140, -0.231015, -0.526572,
		-0.211980, 0.730080, -0.649652,
		0.534520, 0.643129, 0.548337,
		64.131195, 56.819157, 58.487110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.063393, 57.047173, 57.736320>,  <63.757034, 56.368965, 58.103275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.063393, 57.047173, 57.736320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.270882, 56.913185, 58.050957>,  <64.395370, 56.832794, 58.239738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.270882, 56.913185, 58.050957>,  <64.063393, 57.047173, 57.736320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.270882, 56.913185, 58.050957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779604, -0.192323, -0.596011,
		0.350924, 0.922393, 0.161381,
		0.518719, -0.334967, 0.786592,
		64.426498, 56.812695, 58.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.750137, 57.359737, 57.821259>,  <64.063393, 57.047173, 57.736320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.750137, 57.359737, 57.821259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.767700, 56.991562, 57.976624>,  <64.778236, 56.770657, 58.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.767700, 56.991562, 57.976624>,  <64.750137, 57.359737, 57.821259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.767700, 56.991562, 57.976624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785777, -0.208272, -0.582389,
		0.616949, 0.330784, 0.714112,
		0.043915, -0.920437, 0.388416,
		64.780876, 56.715431, 58.093147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.451897, 57.251507, 58.050503>,  <64.750137, 57.359737, 57.821259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.451897, 57.251507, 58.050503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.303413, 56.881538, 58.017700>,  <65.214325, 56.659557, 57.998016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.303413, 56.881538, 58.017700>,  <65.451897, 57.251507, 58.050503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.303413, 56.881538, 58.017700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783794, -0.264764, -0.561753,
		0.497862, -0.272810, 0.823230,
		-0.371214, -0.924919, -0.082011,
		65.192047, 56.604061, 57.993095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.894402, 56.706234, 58.219337>,  <65.451897, 57.251507, 58.050503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.894402, 56.706234, 58.219337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.650658, 56.580803, 57.928040>,  <65.504410, 56.505547, 57.753262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.650658, 56.580803, 57.928040>,  <65.894402, 56.706234, 58.219337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.650658, 56.580803, 57.928040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774301, -0.433048, -0.461440,
		-0.170670, -0.845069, 0.506686,
		-0.609368, -0.313573, -0.728246,
		65.467850, 56.486732, 57.709564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.373055, 56.705299, 58.799461>,  <65.894402, 56.706234, 58.219337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.373055, 56.705299, 58.799461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.731522, 56.604366, 58.653473>,  <66.946602, 56.543804, 58.565880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.731522, 56.604366, 58.653473>,  <66.373055, 56.705299, 58.799461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.731522, 56.604366, 58.653473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427859, 0.273570, 0.861450,
		-0.117530, -0.928163, 0.353130,
		0.896171, -0.252336, -0.364970,
		67.000374, 56.528667, 58.543983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.816261, 56.136696, 59.246113>,  <66.373055, 56.705299, 58.799461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.816261, 56.136696, 59.246113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.061493, 56.369888, 59.032845>,  <67.208633, 56.509804, 58.904884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.061493, 56.369888, 59.032845>,  <66.816261, 56.136696, 59.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.061493, 56.369888, 59.032845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524128, 0.204832, 0.826640,
		0.591128, -0.786241, -0.179981,
		0.613073, 0.582983, -0.533173,
		67.245415, 56.544785, 58.872894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.598152, 55.936398, 59.146938>,  <66.816261, 56.136696, 59.246113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.598152, 55.936398, 59.146938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.543694, 56.332535, 59.157356>,  <67.511017, 56.570217, 59.163609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.543694, 56.332535, 59.157356>,  <67.598152, 55.936398, 59.146938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.543694, 56.332535, 59.157356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678316, 0.074021, 0.731032,
		0.722047, 0.117196, -0.681845,
		-0.136145, 0.990346, 0.026049,
		67.502853, 56.629639, 59.165173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.056694, 56.440353, 58.962444>,  <67.598152, 55.936398, 59.146938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.056694, 56.440353, 58.962444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.910072, 56.808029, 58.904861>,  <67.822098, 57.028637, 58.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.910072, 56.808029, 58.904861>,  <68.056694, 56.440353, 58.962444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.910072, 56.808029, 58.904861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930249, 0.364839, -0.039101,
		0.016579, -0.148244, -0.988812,
		-0.366554, 0.919193, -0.143953,
		67.800110, 57.083786, 58.861675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.575081, 56.903435, 58.829983>,  <68.056694, 56.440353, 58.962444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.575081, 56.903435, 58.829983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.294853, 57.187096, 58.798256>,  <68.126717, 57.357292, 58.779221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.294853, 57.187096, 58.798256>,  <68.575081, 56.903435, 58.829983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.294853, 57.187096, 58.798256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690604, 0.645842, -0.325506,
		-0.179605, -0.282821, -0.942207,
		-0.700577, 0.709154, -0.079321,
		68.084679, 57.399841, 58.774460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.942688, 57.521847, 58.951424>,  <68.575081, 56.903435, 58.829983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.942688, 57.521847, 58.951424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.943413, 57.199406, 59.188133>,  <68.943848, 57.005939, 59.330158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.943413, 57.199406, 59.188133>,  <68.942688, 57.521847, 58.951424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.943413, 57.199406, 59.188133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149010, 0.584951, 0.797263,
		-0.988834, -0.089623, -0.119058,
		0.001810, -0.806102, 0.591774,
		68.943954, 56.957577, 59.365665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.686897, 57.445091, 58.940983>,  <68.942688, 57.521847, 58.951424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.686897, 57.445091, 58.940983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.859764, 57.601578, 59.265991>,  <69.963486, 57.695469, 59.460995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.859764, 57.601578, 59.265991>,  <69.686897, 57.445091, 58.940983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.859764, 57.601578, 59.265991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808423, -0.567326, -0.156821,
		0.399612, 0.724631, -0.561446,
		0.432160, 0.391218, 0.812518,
		69.989410, 57.718945, 59.509747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.325081, 57.668949, 58.725288>,  <69.686897, 57.445091, 58.940983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.325081, 57.668949, 58.725288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.359550, 57.611034, 59.119568>,  <70.380234, 57.576286, 59.356136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.359550, 57.611034, 59.119568>,  <70.325081, 57.668949, 58.725288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.359550, 57.611034, 59.119568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790642, -0.592050, -0.156084,
		0.606184, 0.792789, 0.063454,
		0.086174, -0.144785, 0.985703,
		70.385399, 57.567600, 59.415279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.997147, 57.948174, 59.172234>,  <70.325081, 57.668949, 58.725288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.997147, 57.948174, 59.172234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.801582, 57.621155, 59.293938>,  <70.684242, 57.424942, 59.366962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.801582, 57.621155, 59.293938>,  <70.997147, 57.948174, 59.172234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.801582, 57.621155, 59.293938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785890, -0.564183, -0.253127,
		0.378605, 0.115362, 0.918341,
		-0.488911, -0.817550, 0.304264,
		70.654907, 57.375889, 59.385216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.324806, 57.542770, 59.838520>,  <70.997147, 57.948174, 59.172234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.324806, 57.542770, 59.838520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.120972, 57.343819, 59.557686>,  <70.998672, 57.224449, 59.389183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.120972, 57.343819, 59.557686>,  <71.324806, 57.542770, 59.838520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.120972, 57.343819, 59.557686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838889, -0.468590, -0.276927,
		-0.191253, -0.730094, 0.656037,
		-0.509595, -0.497380, -0.702087,
		70.968094, 57.194603, 59.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.282364, 58.162445, 60.332565>,  <71.324806, 57.542770, 59.838520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.282364, 58.162445, 60.332565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.435989, 58.186314, 60.701118>,  <71.528160, 58.200634, 60.922249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.435989, 58.186314, 60.701118>,  <71.282364, 58.162445, 60.332565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.435989, 58.186314, 60.701118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915971, 0.100935, -0.388342,
		-0.116174, 0.993102, -0.015897,
		0.384058, 0.059676, 0.921378,
		71.551208, 58.204216, 60.977531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.584900, 58.865974, 60.517757>,  <71.282364, 58.162445, 60.332565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.584900, 58.865974, 60.517757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.761520, 58.550720, 60.689285>,  <71.867493, 58.361568, 60.792202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.761520, 58.550720, 60.689285>,  <71.584900, 58.865974, 60.517757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.761520, 58.550720, 60.689285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818289, 0.157696, -0.552752,
		0.368018, 0.594964, 0.714550,
		0.441549, -0.788131, 0.428818,
		71.893982, 58.314281, 60.817932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.265434, 58.939732, 60.892574>,  <71.584900, 58.865974, 60.517757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.265434, 58.939732, 60.892574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.252625, 58.567589, 60.746475>,  <72.244942, 58.344303, 60.658817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.252625, 58.567589, 60.746475>,  <72.265434, 58.939732, 60.892574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.252625, 58.567589, 60.746475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804428, 0.192889, -0.561863,
		0.593187, -0.311805, 0.742231,
		-0.032023, -0.930361, -0.365243,
		72.243019, 58.288479, 60.636902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.984871, 58.512070, 60.895061>,  <72.265434, 58.939732, 60.892574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.984871, 58.512070, 60.895061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.729591, 58.444386, 60.594643>,  <72.576424, 58.403774, 60.414391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.729591, 58.444386, 60.594643>,  <72.984871, 58.512070, 60.895061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.729591, 58.444386, 60.594643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747824, 0.095547, -0.656986,
		0.182929, -0.980938, 0.065561,
		-0.638198, -0.169210, -0.751047,
		72.538132, 58.393623, 60.369328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.402687, 58.247864, 60.446003>,  <72.984871, 58.512070, 60.895061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.402687, 58.247864, 60.446003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.064964, 58.317440, 60.243271>,  <72.862328, 58.359184, 60.121632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.064964, 58.317440, 60.243271>,  <73.402687, 58.247864, 60.446003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.064964, 58.317440, 60.243271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522092, 0.054117, -0.851170,
		-0.120626, -0.983268, -0.136505,
		-0.844316, 0.173941, -0.506829,
		72.811668, 58.369621, 60.091221>
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
