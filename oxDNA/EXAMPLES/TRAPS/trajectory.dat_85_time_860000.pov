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
	<36.536861, 53.082306, 50.415154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557484, 53.071793, 50.015823>,  <36.569859, 53.065487, 49.776226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557484, 53.071793, 50.015823>,  <36.536861, 53.082306, 50.415154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557484, 53.071793, 50.015823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902694, 0.426377, -0.057844,
		0.427183, 0.904164, -0.001738,
		0.051560, -0.026279, -0.998324,
		36.572952, 53.063908, 49.716328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633614, 53.092075, 51.112759>,  <36.536861, 53.082306, 50.415154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633614, 53.092075, 51.112759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642689, 52.734520, 51.291843>,  <36.648136, 52.519985, 51.399296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642689, 52.734520, 51.291843>,  <36.633614, 53.092075, 51.112759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642689, 52.734520, 51.291843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886477, -0.189057, -0.422394,
		0.462217, 0.406475, 0.788121,
		0.022692, -0.893888, 0.447716,
		36.649498, 52.466354, 51.426159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356064, 53.062027, 51.299515>,  <36.633614, 53.092075, 51.112759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356064, 53.062027, 51.299515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255241, 52.675640, 51.276276>,  <37.194748, 52.443810, 51.262333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255241, 52.675640, 51.276276>,  <37.356064, 53.062027, 51.299515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255241, 52.675640, 51.276276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966842, -0.248834, -0.057427,
		0.041016, -0.070646, 0.996658,
		-0.252060, -0.965966, -0.058098,
		37.179623, 52.385849, 51.258846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729191, 52.644989, 51.864109>,  <37.356064, 53.062027, 51.299515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729191, 52.644989, 51.864109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618496, 52.413776, 51.557045>,  <37.552078, 52.275051, 51.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618496, 52.413776, 51.557045>,  <37.729191, 52.644989, 51.864109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618496, 52.413776, 51.557045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960922, -0.172089, -0.216829,
		-0.006772, -0.797663, 0.603065,
		-0.276737, -0.578030, -0.767657,
		37.535473, 52.240368, 51.326748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059696, 51.907578, 51.834808>,  <37.729191, 52.644989, 51.864109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059696, 51.907578, 51.834808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974609, 52.016113, 51.459335>,  <37.923557, 52.081234, 51.234051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974609, 52.016113, 51.459335>,  <38.059696, 51.907578, 51.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974609, 52.016113, 51.459335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918425, -0.272398, -0.286869,
		-0.333534, -0.923134, -0.191257,
		-0.212720, 0.271336, -0.938683,
		37.910793, 52.097515, 51.177731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105419, 51.422340, 51.359375>,  <38.059696, 51.907578, 51.834808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105419, 51.422340, 51.359375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180084, 51.768772, 51.173878>,  <38.224884, 51.976631, 51.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180084, 51.768772, 51.173878>,  <38.105419, 51.422340, 51.359375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180084, 51.768772, 51.173878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969892, -0.237613, -0.053370,
		-0.156414, -0.439817, -0.884362,
		0.186663, 0.866084, -0.463741,
		38.236084, 52.028599, 51.034756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726715, 51.303177, 50.887428>,  <38.105419, 51.422340, 51.359375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726715, 51.303177, 50.887428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691010, 51.692596, 50.971550>,  <38.669586, 51.926250, 51.022022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691010, 51.692596, 50.971550>,  <38.726715, 51.303177, 50.887428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691010, 51.692596, 50.971550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995998, 0.086280, 0.023322,
		0.004560, 0.211546, -0.977357,
		-0.089260, 0.973552, 0.210306,
		38.664230, 51.984661, 51.034641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370720, 51.499142, 50.739868>,  <38.726715, 51.303177, 50.887428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370720, 51.499142, 50.739868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197243, 51.854958, 50.797318>,  <39.093155, 52.068447, 50.831787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197243, 51.854958, 50.797318>,  <39.370720, 51.499142, 50.739868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197243, 51.854958, 50.797318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900082, 0.420254, 0.115065,
		0.041995, 0.179179, -0.982920,
		-0.433693, 0.889540, 0.143627,
		39.067135, 52.121819, 50.840405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714394, 52.015121, 50.307568>,  <39.370720, 51.499142, 50.739868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714394, 52.015121, 50.307568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564194, 52.165730, 50.646324>,  <39.474075, 52.256096, 50.849579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564194, 52.165730, 50.646324>,  <39.714394, 52.015121, 50.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564194, 52.165730, 50.646324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912746, 0.308886, 0.267365,
		-0.160925, 0.873396, -0.459656,
		-0.375496, 0.376523, 0.846896,
		39.451546, 52.278687, 50.900394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947124, 52.660042, 50.333553>,  <39.714394, 52.015121, 50.307568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947124, 52.660042, 50.333553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891560, 52.545185, 50.712658>,  <39.858219, 52.476273, 50.940121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891560, 52.545185, 50.712658>,  <39.947124, 52.660042, 50.333553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891560, 52.545185, 50.712658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892800, 0.377794, 0.245316,
		-0.428499, 0.880240, 0.203880,
		-0.138912, -0.287141, 0.947762,
		39.849884, 52.459042, 50.996986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912399, 53.259632, 50.873894>,  <39.947124, 52.660042, 50.333553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912399, 53.259632, 50.873894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052277, 52.896114, 50.964935>,  <40.136204, 52.678005, 51.019562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052277, 52.896114, 50.964935>,  <39.912399, 53.259632, 50.873894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052277, 52.896114, 50.964935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936455, 0.346236, -0.056321,
		-0.027621, 0.232838, 0.972123,
		0.349698, -0.908794, 0.227605,
		40.157185, 52.623474, 51.033218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621674, 53.343105, 51.212326>,  <39.912399, 53.259632, 50.873894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621674, 53.343105, 51.212326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529518, 52.976135, 51.342094>,  <40.474224, 52.755951, 51.419956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529518, 52.976135, 51.342094>,  <40.621674, 53.343105, 51.212326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529518, 52.976135, 51.342094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787936, 0.019759, 0.615440,
		-0.571032, 0.397413, 0.718321,
		-0.230390, -0.917427, 0.324419,
		40.460400, 52.700909, 51.439419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720249, 53.260029, 51.964767>,  <40.621674, 53.343105, 51.212326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720249, 53.260029, 51.964767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780910, 52.910400, 51.780159>,  <40.817307, 52.700623, 51.669395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780910, 52.910400, 51.780159>,  <40.720249, 53.260029, 51.964767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780910, 52.910400, 51.780159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848959, -0.123950, 0.513716,
		-0.506230, -0.469718, 0.723254,
		0.151654, -0.874072, -0.461518,
		40.826408, 52.648178, 51.641705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963318, 52.821053, 52.443130>,  <40.720249, 53.260029, 51.964767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963318, 52.821053, 52.443130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079853, 52.629860, 52.111671>,  <41.149773, 52.515144, 51.912796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079853, 52.629860, 52.111671>,  <40.963318, 52.821053, 52.443130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079853, 52.629860, 52.111671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856711, -0.255052, 0.448325,
		-0.425640, -0.840524, 0.335186,
		0.291338, -0.477983, -0.828646,
		41.167255, 52.486465, 51.863079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117287, 52.057785, 52.511967>,  <40.963318, 52.821053, 52.443130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117287, 52.057785, 52.511967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361019, 52.164421, 52.213261>,  <41.507259, 52.228401, 52.034039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361019, 52.164421, 52.213261>,  <41.117287, 52.057785, 52.511967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361019, 52.164421, 52.213261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779795, -0.372111, 0.503441,
		-0.143667, -0.889081, -0.434621,
		0.609327, 0.266587, -0.746761,
		41.543816, 52.244396, 51.989231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334671, 51.493469, 52.147793>,  <41.117287, 52.057785, 52.511967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334671, 51.493469, 52.147793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607502, 51.785103, 52.170437>,  <41.771202, 51.960083, 52.184025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607502, 51.785103, 52.170437>,  <41.334671, 51.493469, 52.147793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607502, 51.785103, 52.170437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547218, -0.560226, 0.621851,
		0.485094, -0.393176, -0.781087,
		0.682082, 0.729081, 0.056609,
		41.812126, 52.003826, 52.187420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148148, 51.386189, 51.797112>,  <41.334671, 51.493469, 52.147793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148148, 51.386189, 51.797112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096527, 51.583866, 52.140999>,  <42.065556, 51.702473, 52.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096527, 51.583866, 52.140999>,  <42.148148, 51.386189, 51.797112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096527, 51.583866, 52.140999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534344, -0.695679, 0.480112,
		0.835358, 0.521344, -0.174292,
		-0.129052, 0.494197, 0.859718,
		42.057812, 51.732124, 52.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732071, 51.494553, 52.187332>,  <42.148148, 51.386189, 51.797112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732071, 51.494553, 52.187332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462013, 51.489937, 52.482368>,  <42.299980, 51.487167, 52.659389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462013, 51.489937, 52.482368>,  <42.732071, 51.494553, 52.187332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462013, 51.489937, 52.482368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302028, -0.916556, 0.262117,
		0.673022, 0.399741, 0.622293,
		-0.675145, -0.011540, 0.737595,
		42.259468, 51.486473, 52.703648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875423, 51.652035, 52.825378>,  <42.732071, 51.494553, 52.187332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875423, 51.652035, 52.825378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176994, 51.902084, 52.744560>,  <43.357937, 52.052113, 52.696068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176994, 51.902084, 52.744560>,  <42.875423, 51.652035, 52.825378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176994, 51.902084, 52.744560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630938, -0.603261, 0.487845,
		0.183075, -0.495277, -0.849225,
		0.753923, 0.625121, -0.202047,
		43.403172, 52.089622, 52.683945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541012, 51.359287, 52.588184>,  <42.875423, 51.652035, 52.825378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541012, 51.359287, 52.588184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642544, 51.683601, 52.799160>,  <43.703461, 51.878189, 52.925747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642544, 51.683601, 52.799160>,  <43.541012, 51.359287, 52.588184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642544, 51.683601, 52.799160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664901, -0.542292, 0.513640,
		0.702480, 0.220319, -0.676744,
		0.253828, 0.810789, 0.527440,
		43.718693, 51.926838, 52.957394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009338, 51.130825, 52.971085>,  <43.541012, 51.359287, 52.588184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009338, 51.130825, 52.971085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052559, 51.483730, 53.154358>,  <44.078491, 51.695473, 53.264320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052559, 51.483730, 53.154358>,  <44.009338, 51.130825, 52.971085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052559, 51.483730, 53.154358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582615, -0.429638, 0.689906,
		0.805534, 0.192402, -0.560443,
		0.108049, 0.882266, 0.458184,
		44.084972, 51.748409, 53.291813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734245, 51.259003, 53.131905>,  <44.009338, 51.130825, 52.971085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734245, 51.259003, 53.131905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514912, 51.494183, 53.369781>,  <44.383312, 51.635288, 53.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514912, 51.494183, 53.369781>,  <44.734245, 51.259003, 53.131905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514912, 51.494183, 53.369781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332996, -0.498809, 0.800190,
		0.767104, 0.636797, 0.077729,
		-0.548330, 0.587945, 0.594689,
		44.350414, 51.670567, 53.548187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118443, 51.407909, 53.764244>,  <44.734245, 51.259003, 53.131905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118443, 51.407909, 53.764244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727016, 51.450447, 53.834793>,  <44.492161, 51.475967, 53.877121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727016, 51.450447, 53.834793>,  <45.118443, 51.407909, 53.764244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727016, 51.450447, 53.834793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128922, -0.351525, 0.927259,
		0.160603, 0.930119, 0.330279,
		-0.978563, 0.106341, 0.176369,
		44.433449, 51.482349, 53.887703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892708, 51.838566, 54.313595>,  <45.118443, 51.407909, 53.764244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892708, 51.838566, 54.313595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692570, 51.496635, 54.258568>,  <44.572487, 51.291477, 54.225552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692570, 51.496635, 54.258568>,  <44.892708, 51.838566, 54.313595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692570, 51.496635, 54.258568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154796, -0.244646, 0.957176,
		-0.851876, 0.457624, 0.254732,
		-0.500346, -0.854827, -0.137569,
		44.542465, 51.240189, 54.217297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048992, 51.810032, 54.978523>,  <44.892708, 51.838566, 54.313595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048992, 51.810032, 54.978523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891445, 52.177696, 54.977524>,  <44.796917, 52.398296, 54.976925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891445, 52.177696, 54.977524>,  <45.048992, 51.810032, 54.978523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891445, 52.177696, 54.977524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556965, -0.236502, 0.796152,
		0.731203, 0.314969, 0.605092,
		-0.393868, 0.919164, -0.002496,
		44.773285, 52.453445, 54.976776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290253, 52.373821, 54.551731>,  <45.048992, 51.810032, 54.978523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290253, 52.373821, 54.551731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538094, 52.656910, 54.415955>,  <45.686798, 52.826763, 54.334488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538094, 52.656910, 54.415955>,  <45.290253, 52.373821, 54.551731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538094, 52.656910, 54.415955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776554, -0.615675, 0.133823,
		-0.114274, -0.346509, -0.931060,
		0.619601, 0.707726, -0.339439,
		45.723972, 52.869228, 54.314121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536568, 52.176498, 53.938808>,  <45.290253, 52.373821, 54.551731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536568, 52.176498, 53.938808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780994, 52.396027, 54.166985>,  <45.927650, 52.527744, 54.303890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780994, 52.396027, 54.166985>,  <45.536568, 52.176498, 53.938808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780994, 52.396027, 54.166985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607943, -0.786896, 0.105835,
		0.506958, 0.282121, -0.814494,
		0.611064, 0.548820, 0.570436,
		45.964314, 52.560673, 54.338116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273212, 52.033054, 53.805775>,  <45.536568, 52.176498, 53.938808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273212, 52.033054, 53.805775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282322, 52.175591, 54.179405>,  <46.287788, 52.261112, 54.403584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282322, 52.175591, 54.179405>,  <46.273212, 52.033054, 53.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282322, 52.175591, 54.179405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666052, -0.702178, 0.251636,
		0.745558, 0.616415, -0.253331,
		0.022771, 0.356340, 0.934079,
		46.289154, 52.282494, 54.459629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939064, 52.193657, 54.146454>,  <46.273212, 52.033054, 53.805775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939064, 52.193657, 54.146454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686497, 52.092094, 54.439529>,  <46.534954, 52.031158, 54.615376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686497, 52.092094, 54.439529>,  <46.939064, 52.193657, 54.146454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686497, 52.092094, 54.439529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695081, -0.604193, 0.389632,
		0.343759, 0.755303, 0.557985,
		-0.631421, -0.253905, 0.732694,
		46.497070, 52.015923, 54.659336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347866, 51.565548, 54.013336>,  <46.939064, 52.193657, 54.146454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347866, 51.565548, 54.013336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416573, 51.849030, 53.739624>,  <47.457794, 52.019119, 53.575397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416573, 51.849030, 53.739624>,  <47.347866, 51.565548, 54.013336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416573, 51.849030, 53.739624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961253, 0.031457, 0.273866,
		0.215615, -0.704806, -0.675839,
		0.171762, 0.708702, -0.684280,
		47.468102, 52.061642, 53.534340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904015, 51.386623, 53.403748>,  <47.347866, 51.565548, 54.013336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904015, 51.386623, 53.403748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879784, 51.774612, 53.497974>,  <47.865246, 52.007404, 53.554508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879784, 51.774612, 53.497974>,  <47.904015, 51.386623, 53.403748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.879784, 51.774612, 53.497974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970955, 0.002540, 0.239250,
		0.231467, 0.243217, -0.941949,
		-0.060582, 0.969969, 0.235565,
		47.861610, 52.065601, 53.568645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.447552, 51.829483, 53.044800>,  <47.904015, 51.386623, 53.403748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.447552, 51.829483, 53.044800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.331146, 51.986008, 53.394012>,  <48.261303, 52.079922, 53.603539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.331146, 51.986008, 53.394012>,  <48.447552, 51.829483, 53.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.331146, 51.986008, 53.394012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943094, -0.036117, 0.330558,
		0.160882, 0.919549, -0.358533,
		-0.291015, 0.391311, 0.873033,
		48.243843, 52.103401, 53.655922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.827698, 52.463112, 53.304344>,  <48.447552, 51.829483, 53.044800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.827698, 52.463112, 53.304344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.700977, 52.226032, 53.600548>,  <48.624947, 52.083786, 53.778271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.700977, 52.226032, 53.600548>,  <48.827698, 52.463112, 53.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.700977, 52.226032, 53.600548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887975, 0.089075, 0.451182,
		-0.333375, 0.800485, 0.498081,
		-0.316798, -0.592696, 0.740507,
		48.605938, 52.048222, 53.822701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.970097, 52.781837, 53.982315>,  <48.827698, 52.463112, 53.304344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.970097, 52.781837, 53.982315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.010311, 52.384335, 53.962997>,  <49.034439, 52.145832, 53.951405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.010311, 52.384335, 53.962997>,  <48.970097, 52.781837, 53.982315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.010311, 52.384335, 53.962997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961253, 0.084491, 0.262400,
		-0.256682, -0.072805, 0.963750,
		0.100533, -0.993761, -0.048297,
		49.040470, 52.086205, 53.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.201729, 52.487404, 54.648926>,  <48.970097, 52.781837, 53.982315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.201729, 52.487404, 54.648926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.316662, 52.254879, 54.344421>,  <49.385620, 52.115364, 54.161720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.316662, 52.254879, 54.344421>,  <49.201729, 52.487404, 54.648926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.316662, 52.254879, 54.344421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919571, -0.054965, 0.389060,
		-0.268009, -0.811821, 0.518766,
		0.287333, -0.581314, -0.761258,
		49.402863, 52.080486, 54.116043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.810261, 52.031513, 54.912132>,  <49.201729, 52.487404, 54.648926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.810261, 52.031513, 54.912132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.793804, 52.014179, 54.512848>,  <49.783932, 52.003780, 54.273277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.793804, 52.014179, 54.512848>,  <49.810261, 52.031513, 54.912132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.793804, 52.014179, 54.512848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998679, 0.029001, -0.042417,
		0.030787, -0.998639, 0.042087,
		-0.041139, -0.043337, -0.998213,
		49.781464, 52.001179, 54.213383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.084019, 51.385830, 54.749916>,  <49.810261, 52.031513, 54.912132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.084019, 51.385830, 54.749916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.151737, 51.701469, 54.513725>,  <50.192368, 51.890854, 54.372009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.151737, 51.701469, 54.513725>,  <50.084019, 51.385830, 54.749916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.151737, 51.701469, 54.513725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967988, -0.020486, 0.250158,
		0.185302, -0.613929, -0.767303,
		0.169298, 0.789095, -0.590480,
		50.202526, 51.938198, 54.336582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.620628, 51.242680, 54.249260>,  <50.084019, 51.385830, 54.749916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.620628, 51.242680, 54.249260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.586395, 51.624237, 54.364326>,  <50.565857, 51.853172, 54.433369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.586395, 51.624237, 54.364326>,  <50.620628, 51.242680, 54.249260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.586395, 51.624237, 54.364326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960543, 0.002305, 0.278122,
		0.264637, 0.300122, -0.916457,
		-0.085583, 0.953898, 0.287670,
		50.560719, 51.910408, 54.450626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.135147, 51.721916, 53.859806>,  <50.620628, 51.242680, 54.249260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.135147, 51.721916, 53.859806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.036514, 51.840065, 54.229012>,  <50.977333, 51.910954, 54.450535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.036514, 51.840065, 54.229012>,  <51.135147, 51.721916, 53.859806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.036514, 51.840065, 54.229012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967257, 0.134059, 0.215502,
		-0.060086, 0.945931, -0.318753,
		-0.246582, 0.295368, 0.923014,
		50.962540, 51.928677, 54.505917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.451763, 52.473904, 54.054794>,  <51.135147, 51.721916, 53.859806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.451763, 52.473904, 54.054794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.396858, 52.237000, 54.372383>,  <51.363914, 52.094856, 54.562935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.396858, 52.237000, 54.372383>,  <51.451763, 52.473904, 54.054794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.396858, 52.237000, 54.372383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934078, 0.189349, 0.302730,
		-0.329632, 0.783185, 0.527223,
		-0.137265, -0.592256, 0.793972,
		51.355679, 52.059322, 54.610573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.950954, 52.571411, 54.461819>,  <51.451763, 52.473904, 54.054794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.950954, 52.571411, 54.461819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.837376, 52.252769, 54.675282>,  <51.769226, 52.061584, 54.803360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.837376, 52.252769, 54.675282>,  <51.950954, 52.571411, 54.461819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.837376, 52.252769, 54.675282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958493, -0.220873, 0.180296,
		-0.025756, 0.562699, 0.826261,
		-0.283951, -0.796609, 0.533654,
		51.752190, 52.013786, 54.835377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.183987, 52.580524, 55.193932>,  <51.950954, 52.571411, 54.461819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.183987, 52.580524, 55.193932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.153400, 52.205246, 55.058914>,  <52.135048, 51.980080, 54.977905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.153400, 52.205246, 55.058914>,  <52.183987, 52.580524, 55.193932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.153400, 52.205246, 55.058914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951683, -0.169656, 0.255960,
		-0.297407, -0.301657, 0.905843,
		-0.076470, -0.938200, -0.337539,
		52.130459, 51.923786, 54.957653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.512512, 52.113686, 55.647003>,  <52.183987, 52.580524, 55.193932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.512512, 52.113686, 55.647003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.543423, 51.890400, 55.316566>,  <52.561970, 51.756428, 55.118305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.543423, 51.890400, 55.316566>,  <52.512512, 52.113686, 55.647003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.543423, 51.890400, 55.316566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854841, -0.389323, 0.343039,
		-0.513104, -0.732686, 0.447096,
		0.077275, -0.558211, -0.826093,
		52.566605, 51.722939, 55.068737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.790905, 51.423321, 55.882080>,  <52.512512, 52.113686, 55.647003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.790905, 51.423321, 55.882080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.861874, 51.516529, 55.499619>,  <52.904457, 51.572453, 55.270142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.861874, 51.516529, 55.499619>,  <52.790905, 51.423321, 55.882080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.861874, 51.516529, 55.499619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978727, -0.143492, 0.146643,
		-0.103029, -0.961827, -0.253524,
		0.177423, 0.233022, -0.956149,
		52.915100, 51.586437, 55.212772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.427334, 50.947758, 55.629574>,  <52.790905, 51.423321, 55.882080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.427334, 50.947758, 55.629574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.379143, 51.287651, 55.424271>,  <53.350227, 51.491589, 55.301086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.379143, 51.287651, 55.424271>,  <53.427334, 50.947758, 55.629574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.379143, 51.287651, 55.424271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991242, 0.074802, -0.108834,
		-0.054087, -0.521879, -0.851303,
		-0.120477, 0.849733, -0.513263,
		53.342999, 51.542572, 55.270290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.072834, 51.222733, 55.425491>,  <53.427334, 50.947758, 55.629574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.072834, 51.222733, 55.425491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.846561, 51.525070, 55.293610>,  <53.710796, 51.706470, 55.214481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.846561, 51.525070, 55.293610>,  <54.072834, 51.222733, 55.425491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.846561, 51.525070, 55.293610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819563, 0.471107, -0.326150,
		-0.091194, -0.454709, -0.885959,
		-0.565685, 0.755842, -0.329701,
		53.676857, 51.751823, 55.194698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.090073, 51.260380, 54.646248>,  <54.072834, 51.222733, 55.425491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.090073, 51.260380, 54.646248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.028069, 51.622433, 54.804588>,  <53.990868, 51.839664, 54.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.028069, 51.622433, 54.804588>,  <54.090073, 51.260380, 54.646248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.028069, 51.622433, 54.804588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771679, 0.361122, -0.523548,
		-0.616834, 0.224319, -0.754451,
		-0.155007, 0.905137, 0.395854,
		53.981567, 51.893974, 54.923344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.030163, 51.777756, 54.001892>,  <54.090073, 51.260380, 54.646248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.030163, 51.777756, 54.001892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.203796, 51.849281, 54.355072>,  <54.307976, 51.892197, 54.566978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.203796, 51.849281, 54.355072>,  <54.030163, 51.777756, 54.001892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.203796, 51.849281, 54.355072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832966, 0.293640, -0.468981,
		-0.343127, 0.939043, -0.021477,
		0.434087, 0.178810, 0.882947,
		54.334023, 51.902924, 54.619957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.232086, 52.510727, 53.980103>,  <54.030163, 51.777756, 54.001892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.232086, 52.510727, 53.980103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.454002, 52.285961, 54.225525>,  <54.587154, 52.151100, 54.372780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.454002, 52.285961, 54.225525>,  <54.232086, 52.510727, 53.980103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.454002, 52.285961, 54.225525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809245, 0.193205, -0.554792,
		0.193205, 0.804314, 0.561917,
		0.554792, -0.561917, 0.613559,
		54.620441, 52.117386, 54.409592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.955719, 52.704651, 54.102325>,  <54.232086, 52.510727, 53.980103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.955719, 52.704651, 54.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.026306, 52.319664, 54.184799>,  <55.068661, 52.088673, 54.234283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.026306, 52.319664, 54.184799>,  <54.955719, 52.704651, 54.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.026306, 52.319664, 54.184799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847986, 0.042303, -0.528328,
		0.499778, 0.268073, 0.823625,
		0.176472, -0.962469, 0.206180,
		55.079247, 52.030922, 54.246655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.639153, 52.590397, 54.275757>,  <54.955719, 52.704651, 54.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.639153, 52.590397, 54.275757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.513626, 52.243801, 54.120468>,  <55.438309, 52.035843, 54.027294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.513626, 52.243801, 54.120468>,  <55.639153, 52.590397, 54.275757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.513626, 52.243801, 54.120468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807524, -0.028496, -0.589146,
		0.499425, -0.498384, 0.708652,
		-0.313815, -0.866488, -0.388225,
		55.419483, 51.983856, 54.004002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.447166, 52.641624, 54.294796>,  <55.639153, 52.590397, 54.275757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.447166, 52.641624, 54.294796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.224083, 52.573708, 53.969803>,  <56.090233, 52.532959, 53.774807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.224083, 52.573708, 53.969803>,  <56.447166, 52.641624, 54.294796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.224083, 52.573708, 53.969803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643385, -0.530017, 0.552393,
		-0.524423, 0.830814, 0.186354,
		-0.557706, -0.169790, -0.812487,
		56.056770, 52.522770, 53.726055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.155029, 52.828537, 54.738281>,  <56.447166, 52.641624, 54.294796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.155029, 52.828537, 54.738281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.368034, 53.164566, 54.779663>,  <57.495838, 53.366184, 54.804493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.368034, 53.164566, 54.779663>,  <57.155029, 52.828537, 54.738281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.368034, 53.164566, 54.779663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272840, 0.054659, 0.960505,
		0.801242, -0.539708, 0.258313,
		0.532512, 0.840076, 0.103459,
		57.527786, 53.416588, 54.810699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.565758, 52.767986, 55.257481>,  <57.155029, 52.828537, 54.738281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.565758, 52.767986, 55.257481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.499092, 53.160873, 55.222885>,  <57.459091, 53.396606, 55.202129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.499092, 53.160873, 55.222885>,  <57.565758, 52.767986, 55.257481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.499092, 53.160873, 55.222885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074341, 0.074944, 0.994413,
		0.983207, 0.172163, 0.060529,
		-0.166665, 0.982213, -0.086485,
		57.449093, 53.455536, 55.196941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.245930, 52.611938, 55.191521>,  <57.565758, 52.767986, 55.257481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.245930, 52.611938, 55.191521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.353920, 52.277344, 55.000778>,  <58.418716, 52.076588, 54.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.353920, 52.277344, 55.000778>,  <58.245930, 52.611938, 55.191521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.353920, 52.277344, 55.000778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559220, 0.539381, -0.629556,
		0.783827, -0.096702, 0.613404,
		0.269979, -0.836490, -0.476859,
		58.434914, 52.026398, 54.857719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.998920, 52.508854, 55.139595>,  <58.245930, 52.611938, 55.191521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.998920, 52.508854, 55.139595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.849937, 52.286804, 54.842110>,  <58.760548, 52.153576, 54.663620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.849937, 52.286804, 54.842110>,  <58.998920, 52.508854, 55.139595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.849937, 52.286804, 54.842110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727355, 0.323105, -0.605440,
		0.576392, -0.766447, 0.283428,
		-0.372460, -0.555124, -0.743714,
		58.738201, 52.120266, 54.618996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.469341, 51.905762, 54.804970>,  <58.998920, 52.508854, 55.139595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.469341, 51.905762, 54.804970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.199280, 52.104599, 54.586956>,  <59.037243, 52.223904, 54.456146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.199280, 52.104599, 54.586956>,  <59.469341, 51.905762, 54.804970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.199280, 52.104599, 54.586956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737629, 0.446363, -0.506619,
		-0.008555, -0.744080, -0.668036,
		-0.675152, 0.497097, -0.545036,
		58.996735, 52.253727, 54.423447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.547009, 51.675426, 54.152107>,  <59.469341, 51.905762, 54.804970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.547009, 51.675426, 54.152107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.371857, 52.032101, 54.106213>,  <59.266766, 52.246105, 54.078678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.371857, 52.032101, 54.106213>,  <59.547009, 51.675426, 54.152107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.371857, 52.032101, 54.106213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691469, 0.252471, -0.676852,
		-0.574570, -0.375716, -0.727123,
		-0.437881, 0.891682, -0.114734,
		59.240494, 52.299606, 54.071793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.477058, 51.944550, 53.424244>,  <59.547009, 51.675426, 54.152107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.477058, 51.944550, 53.424244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.493111, 52.273746, 53.650894>,  <59.502739, 52.471264, 53.786884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.493111, 52.273746, 53.650894>,  <59.477058, 51.944550, 53.424244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.493111, 52.273746, 53.650894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891817, 0.226243, -0.391761,
		-0.450613, 0.521047, -0.724885,
		0.040126, 0.822997, 0.566627,
		59.505150, 52.520645, 53.820881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.735264, 52.443806, 53.025818>,  <59.477058, 51.944550, 53.424244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.735264, 52.443806, 53.025818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.837601, 52.518867, 53.405151>,  <59.899002, 52.563904, 53.632751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.837601, 52.518867, 53.405151>,  <59.735264, 52.443806, 53.025818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.837601, 52.518867, 53.405151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886775, 0.345061, -0.307512,
		-0.384938, 0.919629, -0.078128,
		0.255838, 0.187655, 0.948331,
		59.914352, 52.575165, 53.689651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.977276, 53.173630, 53.139885>,  <59.735264, 52.443806, 53.025818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.977276, 53.173630, 53.139885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.137497, 52.914501, 53.399078>,  <60.233631, 52.759022, 53.554592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.137497, 52.914501, 53.399078>,  <59.977276, 53.173630, 53.139885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.137497, 52.914501, 53.399078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914143, 0.330745, -0.234416,
		-0.062456, 0.686243, 0.724686,
		0.400553, -0.647826, 0.647981,
		60.257664, 52.720154, 53.593472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.543926, 53.491257, 53.615543>,  <59.977276, 53.173630, 53.139885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.543926, 53.491257, 53.615543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.599869, 53.104206, 53.531502>,  <60.633434, 52.871975, 53.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.599869, 53.104206, 53.531502>,  <60.543926, 53.491257, 53.615543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.599869, 53.104206, 53.531502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989890, 0.131564, 0.052997,
		-0.023639, -0.215391, 0.976242,
		0.139853, -0.967625, -0.210103,
		60.641827, 52.813919, 53.468472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.053627, 53.303707, 54.045235>,  <60.543926, 53.491257, 53.615543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.053627, 53.303707, 54.045235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.034790, 53.022766, 53.761124>,  <61.023487, 52.854202, 53.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.034790, 53.022766, 53.761124>,  <61.053627, 53.303707, 54.045235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.034790, 53.022766, 53.761124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977298, -0.179443, 0.112646,
		-0.206571, -0.688844, 0.694854,
		-0.047091, -0.702349, -0.710274,
		61.020664, 52.812061, 53.548042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.332760, 52.638184, 54.220840>,  <61.053627, 53.303707, 54.045235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.332760, 52.638184, 54.220840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.401588, 52.700436, 53.831757>,  <61.442886, 52.737785, 53.598305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.401588, 52.700436, 53.831757>,  <61.332760, 52.638184, 54.220840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.401588, 52.700436, 53.831757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983961, 0.019989, 0.177259,
		0.047030, -0.987613, -0.149695,
		0.172071, 0.155630, -0.972713,
		61.453209, 52.747124, 53.539944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.057362, 52.472816, 54.210915>,  <61.332760, 52.638184, 54.220840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.057362, 52.472816, 54.210915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.993622, 52.618481, 53.843872>,  <61.955379, 52.705879, 53.623646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.993622, 52.618481, 53.843872>,  <62.057362, 52.472816, 54.210915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.993622, 52.618481, 53.843872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986880, 0.034256, -0.157781,
		-0.026024, -0.930705, -0.364843,
		-0.159346, 0.364162, -0.917603,
		61.945820, 52.727730, 53.568592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.083759, 51.998325, 53.701359>,  <62.057362, 52.472816, 54.210915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.083759, 51.998325, 53.701359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.216148, 52.356693, 53.582844>,  <62.295582, 52.571712, 53.511734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.216148, 52.356693, 53.582844>,  <62.083759, 51.998325, 53.701359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.216148, 52.356693, 53.582844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926456, -0.368160, -0.078344,
		-0.179270, -0.248565, -0.951881,
		0.330971, 0.895921, -0.296284,
		62.315441, 52.625469, 53.493958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.780716, 51.825218, 53.859413>,  <62.083759, 51.998325, 53.701359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.780716, 51.825218, 53.859413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.151146, 51.944923, 53.767471>,  <63.373402, 52.016747, 53.712307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.151146, 51.944923, 53.767471>,  <62.780716, 51.825218, 53.859413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.151146, 51.944923, 53.767471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200181, 0.905975, 0.373011,
		0.319869, -0.299423, 0.898905,
		0.926073, 0.299259, -0.229854,
		63.428967, 52.034702, 53.698513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.975681, 52.356091, 54.390831>,  <62.780716, 51.825218, 53.859413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.975681, 52.356091, 54.390831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.200706, 52.423840, 54.067146>,  <63.335724, 52.464489, 53.872936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.200706, 52.423840, 54.067146>,  <62.975681, 52.356091, 54.390831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.200706, 52.423840, 54.067146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190916, 0.978949, 0.072178,
		0.804406, 0.113888, 0.583061,
		0.562567, 0.169376, -0.809216,
		63.369476, 52.474651, 53.824383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.439205, 52.901493, 54.489666>,  <62.975681, 52.356091, 54.390831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.439205, 52.901493, 54.489666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.412460, 52.882957, 54.090992>,  <63.396412, 52.871838, 53.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.412460, 52.882957, 54.090992>,  <63.439205, 52.901493, 54.489666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.412460, 52.882957, 54.090992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108737, 0.993310, -0.038884,
		0.991819, 0.105776, -0.071457,
		-0.066866, -0.046336, -0.996685,
		63.392399, 52.869057, 53.791985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.957325, 53.244366, 54.236485>,  <63.439205, 52.901493, 54.489666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.957325, 53.244366, 54.236485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.677696, 53.236752, 53.950565>,  <63.509918, 53.232185, 53.779015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.677696, 53.236752, 53.950565>,  <63.957325, 53.244366, 54.236485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.677696, 53.236752, 53.950565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047361, 0.998683, 0.019727,
		0.713482, 0.047644, -0.699052,
		-0.699071, -0.019032, -0.714799,
		63.467976, 53.231041, 53.736126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.590164, 53.373039, 53.805016>,  <63.957325, 53.244366, 54.236485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.590164, 53.373039, 53.805016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.511162, 53.505066, 54.174240>,  <64.463760, 53.584282, 54.395775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.511162, 53.505066, 54.174240>,  <64.590164, 53.373039, 53.805016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.511162, 53.505066, 54.174240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847759, -0.415298, 0.329896,
		0.492235, 0.847692, -0.197794,
		-0.197506, 0.330068, 0.923064,
		64.451912, 53.604088, 54.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.149483, 53.696770, 54.073231>,  <64.590164, 53.373039, 53.805016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.149483, 53.696770, 54.073231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.950516, 53.565697, 54.394531>,  <64.831139, 53.487053, 54.587311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.950516, 53.565697, 54.394531>,  <65.149483, 53.696770, 54.073231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.950516, 53.565697, 54.394531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840832, -0.409983, 0.353434,
		0.213506, 0.851200, 0.479451,
		-0.497410, -0.327678, 0.803250,
		64.801292, 53.467392, 54.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.066406, 54.404480, 54.076515>,  <65.149483, 53.696770, 54.073231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.066406, 54.404480, 54.076515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899017, 54.205597, 54.380531>,  <64.798584, 54.086266, 54.562943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899017, 54.205597, 54.380531>,  <65.066406, 54.404480, 54.076515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.899017, 54.205597, 54.380531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656960, 0.412116, 0.631319,
		-0.627124, 0.763505, 0.154190,
		-0.418471, -0.497212, 0.760041,
		64.773476, 54.056435, 54.608543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.966904, 54.874519, 54.587860>,  <65.066406, 54.404480, 54.076515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.966904, 54.874519, 54.587860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.983940, 54.517670, 54.767769>,  <64.994164, 54.303558, 54.875713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.983940, 54.517670, 54.767769>,  <64.966904, 54.874519, 54.587860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.983940, 54.517670, 54.767769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692013, 0.351043, 0.630783,
		-0.720628, 0.284385, 0.632313,
		0.042584, -0.892129, 0.449770,
		64.996712, 54.250031, 54.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.766800, 54.907543, 55.334221>,  <64.966904, 54.874519, 54.587860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.766800, 54.907543, 55.334221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.009773, 54.603462, 55.242035>,  <65.155556, 54.421013, 55.186726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.009773, 54.603462, 55.242035>,  <64.766800, 54.907543, 55.334221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.009773, 54.603462, 55.242035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698477, 0.372957, 0.610765,
		-0.378351, -0.531974, 0.757531,
		0.607438, -0.760202, -0.230463,
		65.192001, 54.375401, 55.172897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.939796, 54.382797, 55.893539>,  <64.766800, 54.907543, 55.334221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.939796, 54.382797, 55.893539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.230072, 54.490601, 55.640320>,  <65.404236, 54.555283, 55.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.230072, 54.490601, 55.640320>,  <64.939796, 54.382797, 55.893539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.230072, 54.490601, 55.640320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485570, 0.451240, 0.748735,
		0.487448, -0.850733, 0.196591,
		0.725683, 0.269511, -0.633047,
		65.447777, 54.571453, 55.450405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.683624, 54.319885, 56.170532>,  <64.939796, 54.382797, 55.893539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.683624, 54.319885, 56.170532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.709442, 54.594879, 55.881203>,  <65.724937, 54.759876, 55.707603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.709442, 54.594879, 55.881203>,  <65.683624, 54.319885, 56.170532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.709442, 54.594879, 55.881203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644264, 0.524822, 0.556314,
		0.762074, -0.501921, -0.409046,
		0.064549, 0.687486, -0.723323,
		65.728806, 54.801125, 55.664207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.389458, 54.385948, 56.068474>,  <65.683624, 54.319885, 56.170532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.389458, 54.385948, 56.068474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.231331, 54.711765, 55.898659>,  <66.136452, 54.907257, 55.796768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.231331, 54.711765, 55.898659>,  <66.389458, 54.385948, 56.068474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.231331, 54.711765, 55.898659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799373, 0.532753, 0.277808,
		0.452461, -0.229540, -0.861737,
		-0.395325, 0.814546, -0.424538,
		66.112732, 54.956131, 55.771297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.569794, 54.968475, 56.509693>,  <66.389458, 54.385948, 56.068474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.569794, 54.968475, 56.509693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.911835, 55.169010, 56.562553>,  <67.117058, 55.289330, 56.594269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.911835, 55.169010, 56.562553>,  <66.569794, 54.968475, 56.509693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.911835, 55.169010, 56.562553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018078, -0.283563, 0.958783,
		0.518144, -0.817469, -0.251538,
		0.855103, 0.501335, 0.132148,
		67.168365, 55.319412, 56.602200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.035454, 54.455994, 56.773300>,  <66.569794, 54.968475, 56.509693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.035454, 54.455994, 56.773300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.127876, 54.825378, 56.895828>,  <67.183327, 55.047009, 56.969345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.127876, 54.825378, 56.895828>,  <67.035454, 54.455994, 56.773300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.127876, 54.825378, 56.895828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216986, -0.355818, 0.909016,
		0.948437, -0.143560, -0.282590,
		0.231049, 0.923463, 0.306320,
		67.197189, 55.102417, 56.987724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.776787, 54.587173, 57.035801>,  <67.035454, 54.455994, 56.773300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.776787, 54.587173, 57.035801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.527855, 54.827225, 57.236816>,  <67.378494, 54.971256, 57.357426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.527855, 54.827225, 57.236816>,  <67.776787, 54.587173, 57.035801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.527855, 54.827225, 57.236816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339180, -0.371862, 0.864104,
		0.705447, 0.708215, 0.027872,
		-0.622336, 0.600126, 0.502540,
		67.341156, 55.007263, 57.387577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.107040, 55.108322, 57.436302>,  <67.776787, 54.587173, 57.035801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.107040, 55.108322, 57.436302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.773682, 54.925980, 57.561295>,  <67.573669, 54.816574, 57.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.773682, 54.925980, 57.561295>,  <68.107040, 55.108322, 57.436302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.773682, 54.925980, 57.561295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515985, -0.439210, 0.735428,
		-0.198002, 0.774140, 0.601250,
		-0.833399, -0.455852, 0.312481,
		67.523659, 54.789223, 57.655037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.835815, 55.225952, 58.128014>,  <68.107040, 55.108322, 57.436302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.835815, 55.225952, 58.128014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.754700, 54.841393, 58.053619>,  <67.706032, 54.610657, 58.008984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.754700, 54.841393, 58.053619>,  <67.835815, 55.225952, 58.128014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.754700, 54.841393, 58.053619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613315, -0.272762, 0.741247,
		-0.763364, 0.036244, 0.644951,
		-0.202784, -0.961399, -0.185988,
		67.693863, 54.552975, 57.997822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.619774, 54.853725, 58.775505>,  <67.835815, 55.225952, 58.128014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.619774, 54.853725, 58.775505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.782555, 54.606136, 58.506798>,  <67.880226, 54.457584, 58.345573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.782555, 54.606136, 58.506798>,  <67.619774, 54.853725, 58.775505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.782555, 54.606136, 58.506798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628464, -0.343969, 0.697652,
		-0.662892, -0.706090, 0.249021,
		0.406950, -0.618968, -0.671766,
		67.904640, 54.420444, 58.305267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.040916, 54.339962, 59.117783>,  <67.619774, 54.853725, 58.775505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.040916, 54.339962, 59.117783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.191147, 54.316341, 58.747818>,  <68.281288, 54.302170, 58.525841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.191147, 54.316341, 58.747818>,  <68.040916, 54.339962, 59.117783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.191147, 54.316341, 58.747818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920866, 0.136450, 0.365223,
		0.104636, -0.988885, 0.105628,
		0.375576, -0.059054, -0.924908,
		68.303818, 54.298626, 58.470345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.588394, 53.843609, 59.006721>,  <68.040916, 54.339962, 59.117783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.588394, 53.843609, 59.006721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.693901, 54.094727, 58.713791>,  <68.757202, 54.245399, 58.538033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.693901, 54.094727, 58.713791>,  <68.588394, 53.843609, 59.006721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.693901, 54.094727, 58.713791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926111, 0.047465, 0.374254,
		0.269715, -0.776928, -0.568891,
		0.263765, 0.627798, -0.732324,
		68.773033, 54.283066, 58.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.277405, 53.632557, 58.573891>,  <68.588394, 53.843609, 59.006721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.277405, 53.632557, 58.573891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.239906, 54.030769, 58.569382>,  <69.217407, 54.269695, 58.566677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.239906, 54.030769, 58.569382>,  <69.277405, 53.632557, 58.573891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.239906, 54.030769, 58.569382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966535, 0.093717, 0.238805,
		0.238794, 0.011493, -0.971002,
		-0.093744, 0.995533, -0.011271,
		69.211784, 54.329430, 58.566002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.767609, 53.918476, 58.176758>,  <69.277405, 53.632557, 58.573891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.767609, 53.918476, 58.176758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.702499, 54.195053, 58.458298>,  <69.663429, 54.361000, 58.627224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.702499, 54.195053, 58.458298>,  <69.767609, 53.918476, 58.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.702499, 54.195053, 58.458298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982834, 0.050852, 0.177345,
		0.086832, 0.720639, -0.687851,
		-0.162780, 0.691443, 0.703853,
		69.653664, 54.402485, 58.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.082893, 54.571419, 58.060658>,  <69.767609, 53.918476, 58.176758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.082893, 54.571419, 58.060658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.062721, 54.534695, 58.458458>,  <70.050621, 54.512661, 58.697136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.062721, 54.534695, 58.458458>,  <70.082893, 54.571419, 58.060658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.062721, 54.534695, 58.458458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962844, 0.260053, 0.072826,
		-0.265308, 0.961220, 0.075285,
		-0.050423, -0.091809, 0.994499,
		70.047592, 54.507153, 58.756809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.140366, 55.206459, 58.370209>,  <70.082893, 54.571419, 58.060658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.140366, 55.206459, 58.370209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.271889, 54.929092, 58.626663>,  <70.350800, 54.762672, 58.780537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.271889, 54.929092, 58.626663>,  <70.140366, 55.206459, 58.370209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.271889, 54.929092, 58.626663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854271, 0.507814, 0.111113,
		-0.402627, 0.511172, 0.759339,
		0.328805, -0.693418, 0.641139,
		70.370529, 54.721066, 58.819004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.306900, 55.604721, 59.043186>,  <70.140366, 55.206459, 58.370209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.306900, 55.604721, 59.043186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.491226, 55.260986, 58.954468>,  <70.601822, 55.054745, 58.901237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.491226, 55.260986, 58.954468>,  <70.306900, 55.604721, 59.043186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.491226, 55.260986, 58.954468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853052, 0.359932, 0.377825,
		-0.244849, -0.363308, 0.898920,
		0.460817, -0.859335, -0.221792,
		70.629471, 55.003185, 58.887932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.540276, 55.183971, 59.656147>,  <70.306900, 55.604721, 59.043186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.540276, 55.183971, 59.656147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.742363, 55.175728, 59.311050>,  <70.863617, 55.170780, 59.103992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.742363, 55.175728, 59.311050>,  <70.540276, 55.183971, 59.656147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.742363, 55.175728, 59.311050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765482, 0.472317, 0.436983,
		0.398480, -0.881188, 0.254405,
		0.505224, -0.020614, -0.862742,
		70.893929, 55.169544, 59.052227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.246727, 55.156223, 59.854736>,  <70.540276, 55.183971, 59.656147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.246727, 55.156223, 59.854736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.276642, 55.294689, 59.480659>,  <71.294594, 55.377769, 59.256214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.276642, 55.294689, 59.480659>,  <71.246727, 55.156223, 59.854736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.276642, 55.294689, 59.480659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745803, 0.603120, 0.282885,
		0.661955, -0.718623, -0.213065,
		0.074784, 0.346162, -0.935189,
		71.299080, 55.398537, 59.200104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.974281, 55.237778, 59.597839>,  <71.246727, 55.156223, 59.854736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.974281, 55.237778, 59.597839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.748039, 55.503124, 59.401871>,  <71.612289, 55.662334, 59.284290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.748039, 55.503124, 59.401871>,  <71.974281, 55.237778, 59.597839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.748039, 55.503124, 59.401871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668192, 0.716830, 0.199187,
		0.483325, -0.214699, -0.848706,
		-0.565612, 0.663370, -0.489922,
		71.578354, 55.702137, 59.254894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.268867, 55.666523, 59.108654>,  <71.974281, 55.237778, 59.597839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.268867, 55.666523, 59.108654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.989960, 55.892365, 59.285309>,  <71.822617, 56.027870, 59.391300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.989960, 55.892365, 59.285309>,  <72.268867, 55.666523, 59.108654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.989960, 55.892365, 59.285309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700473, 0.667479, 0.252603,
		-0.152165, 0.485488, -0.860899,
		-0.697268, 0.564600, 0.441638,
		71.780777, 56.061745, 59.417801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.576073, 56.262016, 59.040115>,  <72.268867, 55.666523, 59.108654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.576073, 56.262016, 59.040115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.294411, 56.327705, 59.316429>,  <72.125412, 56.367119, 59.482220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.294411, 56.327705, 59.316429>,  <72.576073, 56.262016, 59.040115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.294411, 56.327705, 59.316429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532798, 0.765296, 0.361176,
		-0.469342, 0.622377, -0.626391,
		-0.704162, 0.164225, 0.690787,
		72.083160, 56.376972, 59.523666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.361275, 56.893658, 58.946415>,  <72.576073, 56.262016, 59.040115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.361275, 56.893658, 58.946415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.332001, 56.814774, 59.337463>,  <72.314438, 56.767445, 59.572094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.332001, 56.814774, 59.337463>,  <72.361275, 56.893658, 58.946415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.332001, 56.814774, 59.337463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719655, 0.668206, 0.188671,
		-0.690463, 0.717363, 0.093013,
		-0.073194, -0.197208, 0.977626,
		72.310043, 56.755611, 59.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.056435, 57.402248, 59.580471>,  <72.361275, 56.893658, 58.946415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.056435, 57.402248, 59.580471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.360245, 57.154152, 59.658875>,  <72.542534, 57.005295, 59.705917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.360245, 57.154152, 59.658875>,  <72.056435, 57.402248, 59.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.360245, 57.154152, 59.658875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559568, 0.776649, 0.289311,
		-0.331675, -0.110057, 0.936952,
		0.759524, -0.620245, 0.196010,
		72.588104, 56.968079, 59.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.342987, 57.540615, 60.267918>,  <72.056435, 57.402248, 59.580471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.342987, 57.540615, 60.267918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605148, 57.408451, 59.996246>,  <72.762444, 57.329151, 59.833244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605148, 57.408451, 59.996246>,  <72.342987, 57.540615, 60.267918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.605148, 57.408451, 59.996246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607777, 0.764578, 0.214539,
		0.448395, -0.553396, 0.701923,
		0.655400, -0.330414, -0.679174,
		72.801765, 57.309326, 59.792496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.999672, 57.422359, 60.590000>,  <72.342987, 57.540615, 60.267918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.999672, 57.422359, 60.590000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.051788, 57.491810, 60.199539>,  <73.083061, 57.533478, 59.965263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.051788, 57.491810, 60.199539>,  <72.999672, 57.422359, 60.590000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.051788, 57.491810, 60.199539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572247, 0.790838, 0.217044,
		0.809664, -0.586882, 0.003688,
		0.130296, 0.173623, -0.976155,
		73.090874, 57.543896, 59.906693>
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
