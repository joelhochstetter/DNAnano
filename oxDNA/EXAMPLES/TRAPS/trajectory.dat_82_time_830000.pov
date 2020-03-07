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
	<35.773140, 52.088142, 50.442764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973263, 52.374489, 50.247940>,  <36.093334, 52.546295, 50.131046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973263, 52.374489, 50.247940>,  <35.773140, 52.088142, 50.442764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973263, 52.374489, 50.247940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531569, 0.190092, 0.825408,
		0.683469, -0.671863, -0.285429,
		0.500304, 0.715866, -0.487064,
		36.123356, 52.589249, 50.101822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241867, 52.093838, 50.920929>,  <35.773140, 52.088142, 50.442764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241867, 52.093838, 50.920929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347965, 52.413216, 50.704735>,  <36.411625, 52.604843, 50.575016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347965, 52.413216, 50.704735>,  <36.241867, 52.093838, 50.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347965, 52.413216, 50.704735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602939, 0.300081, 0.739200,
		0.752401, -0.521953, -0.401818,
		0.265249, 0.798447, -0.540487,
		36.427540, 52.652748, 50.542587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775944, 52.278076, 51.321983>,  <36.241867, 52.093838, 50.920929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775944, 52.278076, 51.321983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766838, 52.554489, 51.032997>,  <36.761375, 52.720337, 50.859608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766838, 52.554489, 51.032997>,  <36.775944, 52.278076, 51.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766838, 52.554489, 51.032997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883474, 0.352142, 0.308982,
		0.467926, -0.631241, -0.618531,
		-0.022768, 0.691037, -0.722461,
		36.760006, 52.761799, 50.816257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452782, 52.293472, 51.016445>,  <36.775944, 52.278076, 51.321983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452782, 52.293472, 51.016445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244381, 52.634529, 51.000706>,  <37.119339, 52.839165, 50.991261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244381, 52.634529, 51.000706>,  <37.452782, 52.293472, 51.016445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244381, 52.634529, 51.000706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802599, 0.505071, 0.317393,
		0.290499, 0.133780, -0.947477,
		-0.521004, 0.852647, -0.039351,
		37.088081, 52.890324, 50.988899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389591, 52.961517, 51.552109>,  <37.452782, 52.293472, 51.016445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389591, 52.961517, 51.552109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371342, 53.164917, 51.896049>,  <37.360394, 53.286957, 52.102413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371342, 53.164917, 51.896049>,  <37.389591, 52.961517, 51.552109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371342, 53.164917, 51.896049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952335, -0.237753, 0.191133,
		0.301624, 0.827587, -0.473416,
		-0.045623, 0.508501, 0.859852,
		37.357655, 53.317467, 52.154007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931599, 53.400394, 51.553108>,  <37.389591, 52.961517, 51.552109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931599, 53.400394, 51.553108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846806, 53.338909, 51.939152>,  <37.795929, 53.302017, 52.170776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846806, 53.338909, 51.939152>,  <37.931599, 53.400394, 51.553108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846806, 53.338909, 51.939152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970396, -0.150059, 0.189245,
		0.115735, 0.976656, 0.180968,
		-0.211983, -0.153709, 0.965110,
		37.783211, 53.292797, 52.228683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301170, 53.891666, 52.129688>,  <37.931599, 53.400394, 51.553108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301170, 53.891666, 52.129688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222851, 53.510864, 52.223793>,  <38.175861, 53.282383, 52.280258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222851, 53.510864, 52.223793>,  <38.301170, 53.891666, 52.129688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222851, 53.510864, 52.223793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980517, -0.186185, 0.062618,
		-0.015810, 0.242943, 0.969912,
		-0.195795, -0.952005, 0.235267,
		38.164112, 53.225262, 52.294373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507980, 53.684700, 52.803928>,  <38.301170, 53.891666, 52.129688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507980, 53.684700, 52.803928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530430, 53.375195, 52.551537>,  <38.543900, 53.189491, 52.400101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530430, 53.375195, 52.551537>,  <38.507980, 53.684700, 52.803928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530430, 53.375195, 52.551537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998044, 0.060911, 0.014077,
		0.027542, -0.630536, 0.775671,
		0.056123, -0.773766, -0.630981,
		38.547268, 53.143066, 52.362244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052750, 53.264027, 53.007954>,  <38.507980, 53.684700, 52.803928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052750, 53.264027, 53.007954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028442, 53.233932, 52.609829>,  <39.013859, 53.215874, 52.370953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028442, 53.233932, 52.609829>,  <39.052750, 53.264027, 53.007954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028442, 53.233932, 52.609829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997385, -0.043669, -0.057590,
		-0.039131, -0.996209, 0.077696,
		-0.060764, -0.075239, -0.995312,
		39.010212, 53.211361, 52.311234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421680, 52.705837, 52.839809>,  <39.052750, 53.264027, 53.007954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421680, 52.705837, 52.839809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410461, 52.996586, 52.565331>,  <39.403728, 53.171036, 52.400642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410461, 52.996586, 52.565331>,  <39.421680, 52.705837, 52.839809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410461, 52.996586, 52.565331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990013, 0.115077, 0.081434,
		0.138157, -0.677059, -0.722844,
		-0.028047, 0.726875, -0.686196,
		39.402046, 53.214649, 52.359470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866508, 52.498318, 52.358925>,  <39.421680, 52.705837, 52.839809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866508, 52.498318, 52.358925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858196, 52.897526, 52.382698>,  <39.853207, 53.137051, 52.396961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858196, 52.897526, 52.382698>,  <39.866508, 52.498318, 52.358925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858196, 52.897526, 52.382698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948403, 0.000871, 0.317066,
		0.316385, 0.062954, -0.946540,
		-0.020785, 0.998016, 0.059430,
		39.851959, 53.196930, 52.400528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517818, 52.780151, 52.089550>,  <39.866508, 52.498318, 52.358925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517818, 52.780151, 52.089550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387669, 53.062660, 52.341045>,  <40.309578, 53.232166, 52.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387669, 53.062660, 52.341045>,  <40.517818, 52.780151, 52.089550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387669, 53.062660, 52.341045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905088, 0.040112, 0.423328,
		0.273763, 0.706807, -0.652286,
		-0.325376, 0.706268, 0.628742,
		40.290054, 53.274540, 52.529667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923252, 53.383038, 52.069092>,  <40.517818, 52.780151, 52.089550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923252, 53.383038, 52.069092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758038, 53.347687, 52.431656>,  <40.658909, 53.326477, 52.649197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758038, 53.347687, 52.431656>,  <40.923252, 53.383038, 52.069092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758038, 53.347687, 52.431656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910648, -0.052000, 0.409898,
		0.010906, 0.994728, 0.101963,
		-0.413040, -0.088382, 0.906414,
		40.634125, 53.321171, 52.703579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387119, 53.571545, 52.466560>,  <40.923252, 53.383038, 52.069092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387119, 53.571545, 52.466560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157021, 53.419983, 52.756531>,  <41.018963, 53.329044, 52.930515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157021, 53.419983, 52.756531>,  <41.387119, 53.571545, 52.466560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157021, 53.419983, 52.756531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815630, -0.332833, 0.473255,
		0.061961, 0.863512, 0.500508,
		-0.575247, -0.378906, 0.724928,
		40.984447, 53.306313, 52.974010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536423, 53.800220, 53.121128>,  <41.387119, 53.571545, 52.466560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536423, 53.800220, 53.121128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397781, 53.432110, 53.193737>,  <41.314598, 53.211243, 53.237305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397781, 53.432110, 53.193737>,  <41.536423, 53.800220, 53.121128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397781, 53.432110, 53.193737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802078, -0.190431, 0.566045,
		-0.486352, 0.341789, 0.804140,
		-0.346602, -0.920281, 0.181524,
		41.293800, 53.156025, 53.248196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462555, 53.739487, 53.913456>,  <41.536423, 53.800220, 53.121128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462555, 53.739487, 53.913456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514877, 53.393559, 53.719559>,  <41.546272, 53.186001, 53.603222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514877, 53.393559, 53.719559>,  <41.462555, 53.739487, 53.913456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514877, 53.393559, 53.719559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865992, -0.138361, 0.480536,
		-0.482647, -0.482639, 0.730830,
		0.130807, -0.864821, -0.484741,
		41.554119, 53.134113, 53.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562321, 53.145210, 54.414570>,  <41.462555, 53.739487, 53.913456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562321, 53.145210, 54.414570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745937, 53.123718, 54.059856>,  <41.856106, 53.110825, 53.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745937, 53.123718, 54.059856>,  <41.562321, 53.145210, 54.414570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745937, 53.123718, 54.059856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885743, -0.049671, 0.461511,
		-0.068847, -0.997319, 0.024793,
		0.459042, -0.053734, -0.886788,
		41.883652, 53.107597, 53.793819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033958, 52.500809, 54.399353>,  <41.562321, 53.145210, 54.414570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033958, 52.500809, 54.399353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140144, 52.794773, 54.149734>,  <42.203857, 52.971153, 53.999962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140144, 52.794773, 54.149734>,  <42.033958, 52.500809, 54.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140144, 52.794773, 54.149734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960572, -0.146118, 0.236541,
		0.082652, -0.662235, -0.744724,
		0.265463, 0.734912, -0.624047,
		42.219784, 53.015247, 53.962521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739780, 52.259563, 54.520950>,  <42.033958, 52.500809, 54.399353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739780, 52.259563, 54.520950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693760, 52.604179, 54.323158>,  <42.666145, 52.810947, 54.204483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693760, 52.604179, 54.323158>,  <42.739780, 52.259563, 54.520950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693760, 52.604179, 54.323158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962663, 0.219495, 0.158440,
		0.245039, -0.457792, -0.854624,
		-0.115053, 0.861539, -0.494484,
		42.659245, 52.862640, 54.174812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353603, 52.375881, 54.074074>,  <42.739780, 52.259563, 54.520950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353603, 52.375881, 54.074074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163589, 52.709846, 54.185257>,  <43.049580, 52.910225, 54.251968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163589, 52.709846, 54.185257>,  <43.353603, 52.375881, 54.074074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163589, 52.709846, 54.185257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874377, 0.412300, 0.255876,
		0.099033, 0.364590, -0.925887,
		-0.475033, 0.834915, 0.277958,
		43.021080, 52.960320, 54.268642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661259, 52.941803, 53.739208>,  <43.353603, 52.375881, 54.074074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661259, 52.941803, 53.739208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516567, 53.013031, 54.105255>,  <43.429752, 53.055767, 54.324883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516567, 53.013031, 54.105255>,  <43.661259, 52.941803, 53.739208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516567, 53.013031, 54.105255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926542, 0.177433, 0.331718,
		-0.103302, 0.967888, -0.229174,
		-0.361729, 0.178073, 0.915119,
		43.408047, 53.066452, 54.379791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248623, 53.275318, 54.085438>,  <43.661259, 52.941803, 53.739208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248623, 53.275318, 54.085438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999752, 53.208302, 54.391335>,  <43.850430, 53.168091, 54.574871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999752, 53.208302, 54.391335>,  <44.248623, 53.275318, 54.085438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999752, 53.208302, 54.391335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724423, 0.247165, 0.643522,
		-0.296834, 0.954379, -0.032409,
		-0.622174, -0.167541, 0.764741,
		43.813099, 53.158039, 54.620758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177509, 53.865322, 54.625584>,  <44.248623, 53.275318, 54.085438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177509, 53.865322, 54.625584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179161, 53.561169, 54.885368>,  <44.180153, 53.378677, 55.041241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179161, 53.561169, 54.885368>,  <44.177509, 53.865322, 54.625584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179161, 53.561169, 54.885368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560016, 0.539832, 0.628461,
		-0.828471, 0.361115, 0.428055,
		0.004132, -0.760380, 0.649466,
		44.180401, 53.333054, 55.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873501, 53.872925, 55.394852>,  <44.177509, 53.865322, 54.625584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873501, 53.872925, 55.394852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137405, 53.572418, 55.401993>,  <44.295750, 53.392117, 55.406277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137405, 53.572418, 55.401993>,  <43.873501, 53.872925, 55.394852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137405, 53.572418, 55.401993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494409, 0.451835, 0.742567,
		-0.565930, -0.481090, 0.669534,
		0.659760, -0.751264, 0.017852,
		44.335335, 53.347038, 55.407349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976913, 53.538177, 56.148777>,  <43.873501, 53.872925, 55.394852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976913, 53.538177, 56.148777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306538, 53.548378, 55.922401>,  <44.504311, 53.554497, 55.786575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306538, 53.548378, 55.922401>,  <43.976913, 53.538177, 56.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306538, 53.548378, 55.922401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457360, 0.559556, 0.691172,
		0.334297, -0.828400, 0.449443,
		0.824056, 0.025499, -0.565935,
		44.553753, 53.556026, 55.752621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579414, 53.348476, 56.477673>,  <43.976913, 53.538177, 56.148777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579414, 53.348476, 56.477673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705692, 53.605717, 56.198601>,  <44.781460, 53.760063, 56.031158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705692, 53.605717, 56.198601>,  <44.579414, 53.348476, 56.477673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705692, 53.605717, 56.198601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483900, 0.523361, 0.701380,
		0.816199, -0.559026, -0.145979,
		0.315690, 0.643105, -0.697679,
		44.800400, 53.798649, 55.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197552, 53.627090, 56.758102>,  <44.579414, 53.348476, 56.477673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197552, 53.627090, 56.758102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109600, 53.885357, 56.465591>,  <45.056828, 54.040318, 56.290085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109600, 53.885357, 56.465591>,  <45.197552, 53.627090, 56.758102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109600, 53.885357, 56.465591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673740, 0.642634, 0.364824,
		0.705498, -0.412472, -0.576315,
		-0.219880, 0.645669, -0.731276,
		45.043636, 54.079056, 56.246208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800415, 53.558300, 56.266541>,  <45.197552, 53.627090, 56.758102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800415, 53.558300, 56.266541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592247, 53.892754, 56.335869>,  <45.467346, 54.093426, 56.377468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592247, 53.892754, 56.335869>,  <45.800415, 53.558300, 56.266541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592247, 53.892754, 56.335869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853713, 0.505087, 0.126736,
		0.018425, 0.213924, -0.976677,
		-0.520419, 0.836136, 0.173323,
		45.436123, 54.143593, 56.387867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856010, 54.059677, 55.756153>,  <45.800415, 53.558300, 56.266541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856010, 54.059677, 55.756153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804375, 54.198303, 56.127792>,  <45.773396, 54.281479, 56.350777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804375, 54.198303, 56.127792>,  <45.856010, 54.059677, 55.756153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804375, 54.198303, 56.127792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810203, 0.577083, -0.102693,
		-0.571758, 0.739504, -0.355284,
		-0.129087, 0.346568, 0.929100,
		45.765648, 54.302273, 56.406521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324169, 54.620159, 55.892635>,  <45.856010, 54.059677, 55.756153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324169, 54.620159, 55.892635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634686, 54.506516, 56.117722>,  <46.820995, 54.438328, 56.252773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634686, 54.506516, 56.117722>,  <46.324169, 54.620159, 55.892635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634686, 54.506516, 56.117722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025421, -0.906059, -0.422387,
		0.629859, 0.313592, -0.710590,
		0.776293, -0.284108, 0.562717,
		46.867573, 54.421284, 56.286537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769466, 54.129021, 55.497822>,  <46.324169, 54.620159, 55.892635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769466, 54.129021, 55.497822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845207, 54.065361, 55.885391>,  <46.890652, 54.027164, 56.117935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845207, 54.065361, 55.885391>,  <46.769466, 54.129021, 55.497822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845207, 54.065361, 55.885391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054102, -0.983587, -0.172130,
		0.980418, 0.085014, -0.177633,
		0.189351, -0.159149, 0.968926,
		46.902012, 54.017616, 56.176067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.208424, 53.500683, 55.676899>,  <46.769466, 54.129021, 55.497822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.208424, 53.500683, 55.676899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042343, 53.523216, 56.040092>,  <46.942696, 53.536736, 56.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042343, 53.523216, 56.040092>,  <47.208424, 53.500683, 55.676899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042343, 53.523216, 56.040092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174435, -0.974632, 0.140233,
		0.892851, 0.216609, 0.394837,
		-0.415197, 0.056334, 0.907986,
		46.917786, 53.540115, 56.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.743961, 53.292725, 56.194340>,  <47.208424, 53.500683, 55.676899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.743961, 53.292725, 56.194340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359520, 53.183586, 56.211517>,  <47.128857, 53.118103, 56.221825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359520, 53.183586, 56.211517>,  <47.743961, 53.292725, 56.194340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.359520, 53.183586, 56.211517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268609, -0.959517, -0.084708,
		0.064316, -0.069878, 0.995480,
		-0.961100, -0.272843, 0.042942,
		47.071190, 53.101734, 56.224400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.376183, 52.866405, 56.185825>,  <47.743961, 53.292725, 56.194340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.376183, 52.866405, 56.185825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.303467, 52.620895, 55.878517>,  <48.259838, 52.473591, 55.694134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.303467, 52.620895, 55.878517>,  <48.376183, 52.866405, 56.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.303467, 52.620895, 55.878517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930675, 0.359641, -0.067103,
		0.317487, 0.702810, -0.636600,
		-0.181787, -0.613772, -0.768269,
		48.248932, 52.436764, 55.648037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.588203, 53.360580, 56.678246>,  <48.376183, 52.866405, 56.185825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.588203, 53.360580, 56.678246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.349598, 53.640869, 56.834793>,  <48.206436, 53.809040, 56.928722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.349598, 53.640869, 56.834793>,  <48.588203, 53.360580, 56.678246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.349598, 53.640869, 56.834793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648391, 0.133330, 0.749541,
		0.473037, 0.700868, -0.533872,
		-0.596511, 0.700719, 0.391367,
		48.170643, 53.851086, 56.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.788128, 54.096256, 56.613834>,  <48.588203, 53.360580, 56.678246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.788128, 54.096256, 56.613834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.580967, 54.010303, 56.945038>,  <48.456669, 53.958733, 57.143761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.580967, 54.010303, 56.945038>,  <48.788128, 54.096256, 56.613834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.580967, 54.010303, 56.945038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802459, 0.213298, 0.557282,
		-0.296364, 0.953062, 0.061968,
		-0.517907, -0.214886, 0.828008,
		48.425594, 53.945839, 57.193439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.803204, 54.678982, 57.154537>,  <48.788128, 54.096256, 56.613834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.803204, 54.678982, 57.154537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.743870, 54.335384, 57.350548>,  <48.708271, 54.129227, 57.468155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.743870, 54.335384, 57.350548>,  <48.803204, 54.678982, 57.154537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.743870, 54.335384, 57.350548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744898, 0.228874, 0.626693,
		-0.650481, 0.457974, 0.605917,
		-0.148330, -0.858998, 0.490022,
		48.699371, 54.077686, 57.497555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.522209, 54.828861, 57.796581>,  <48.803204, 54.678982, 57.154537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.522209, 54.828861, 57.796581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.764378, 54.510620, 57.787804>,  <48.909679, 54.319675, 57.782539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.764378, 54.510620, 57.787804>,  <48.522209, 54.828861, 57.796581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.764378, 54.510620, 57.787804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675902, 0.499380, 0.542012,
		-0.420271, -0.342973, 0.840085,
		0.605417, -0.795606, -0.021941,
		48.946003, 54.271938, 57.781219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.623436, 54.633415, 58.440414>,  <48.522209, 54.828861, 57.796581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.623436, 54.633415, 58.440414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.959042, 54.551018, 58.238968>,  <49.160404, 54.501579, 58.118099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.959042, 54.551018, 58.238968>,  <48.623436, 54.633415, 58.440414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.959042, 54.551018, 58.238968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531702, 0.506966, 0.678439,
		0.115564, -0.836991, 0.534875,
		0.839010, -0.205991, -0.503616,
		49.210743, 54.489220, 58.087883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.209892, 54.573021, 59.017147>,  <48.623436, 54.633415, 58.440414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.209892, 54.573021, 59.017147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.373096, 54.661518, 58.662842>,  <49.471020, 54.714615, 58.450260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.373096, 54.661518, 58.662842>,  <49.209892, 54.573021, 59.017147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.373096, 54.661518, 58.662842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638499, 0.624316, 0.450053,
		0.652567, -0.749187, 0.113467,
		0.408013, 0.221241, -0.885764,
		49.495499, 54.727890, 58.397114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.961494, 54.573933, 59.067463>,  <49.209892, 54.573021, 59.017147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.961494, 54.573933, 59.067463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.869892, 54.821766, 58.767151>,  <49.814930, 54.970467, 58.586964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.869892, 54.821766, 58.767151>,  <49.961494, 54.573933, 59.067463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.869892, 54.821766, 58.767151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810317, 0.548717, 0.205660,
		0.539390, -0.561271, -0.627721,
		-0.229010, 0.619584, -0.750780,
		49.801189, 55.007641, 58.541916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.497955, 54.713539, 58.490265>,  <49.961494, 54.573933, 59.067463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.497955, 54.713539, 58.490265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.249969, 55.016914, 58.570679>,  <50.101177, 55.198940, 58.618927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.249969, 55.016914, 58.570679>,  <50.497955, 54.713539, 58.490265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.249969, 55.016914, 58.570679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760516, 0.517816, 0.391769,
		0.193034, 0.395773, -0.897832,
		-0.619963, 0.758440, 0.201036,
		50.063980, 55.244446, 58.630989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.603615, 55.514618, 58.134029>,  <50.497955, 54.713539, 58.490265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.603615, 55.514618, 58.134029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.473568, 55.458485, 58.508110>,  <50.395538, 55.424805, 58.732559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.473568, 55.458485, 58.508110>,  <50.603615, 55.514618, 58.134029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.473568, 55.458485, 58.508110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801561, 0.483854, 0.351263,
		-0.501796, 0.863824, -0.044822,
		-0.325117, -0.140335, 0.935203,
		50.376034, 55.416386, 58.788670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.425346, 56.173092, 58.431095>,  <50.603615, 55.514618, 58.134029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.425346, 56.173092, 58.431095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.553581, 55.898102, 58.691742>,  <50.630524, 55.733109, 58.848129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.553581, 55.898102, 58.691742>,  <50.425346, 56.173092, 58.431095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.553581, 55.898102, 58.691742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835092, 0.529800, 0.148095,
		-0.447037, 0.496679, 0.743954,
		0.320591, -0.687474, 0.651613,
		50.649757, 55.691860, 58.887226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.944721, 56.589619, 58.904018>,  <50.425346, 56.173092, 58.431095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.944721, 56.589619, 58.904018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.037483, 56.201191, 58.881203>,  <51.093140, 55.968136, 58.867512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.037483, 56.201191, 58.881203>,  <50.944721, 56.589619, 58.904018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.037483, 56.201191, 58.881203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966959, 0.223743, 0.122184,
		-0.105886, -0.083492, 0.990867,
		0.231901, -0.971065, -0.057042,
		51.107052, 55.909870, 58.864090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.368198, 56.411434, 59.514984>,  <50.944721, 56.589619, 58.904018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.368198, 56.411434, 59.514984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.440624, 56.177887, 59.198425>,  <51.484081, 56.037758, 59.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.440624, 56.177887, 59.198425>,  <51.368198, 56.411434, 59.514984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.440624, 56.177887, 59.198425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941501, 0.335478, -0.032094,
		0.284235, -0.739290, 0.610459,
		0.181069, -0.583870, -0.791397,
		51.494946, 56.002728, 58.961006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.800495, 55.730877, 59.544724>,  <51.368198, 56.411434, 59.514984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.800495, 55.730877, 59.544724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.806816, 55.992039, 59.241814>,  <51.810608, 56.148735, 59.060066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.806816, 55.992039, 59.241814>,  <51.800495, 55.730877, 59.544724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.806816, 55.992039, 59.241814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791213, 0.454899, 0.408717,
		0.611336, -0.605627, -0.509396,
		0.015806, 0.652904, -0.757276,
		51.811558, 56.187908, 59.014629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.411789, 55.700428, 59.021091>,  <51.800495, 55.730877, 59.544724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.411789, 55.700428, 59.021091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.233395, 56.044922, 59.118561>,  <52.126358, 56.251617, 59.177040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.233395, 56.044922, 59.118561>,  <52.411789, 55.700428, 59.021091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.233395, 56.044922, 59.118561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819839, 0.283855, 0.497282,
		0.359109, 0.421551, -0.832668,
		-0.445987, 0.861232, 0.243669,
		52.099598, 56.303291, 59.191662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.818928, 55.185730, 59.508659>,  <52.411789, 55.700428, 59.021091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.818928, 55.185730, 59.508659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.035919, 55.483406, 59.664558>,  <53.166115, 55.662010, 59.758099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.035919, 55.483406, 59.664558>,  <52.818928, 55.185730, 59.508659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.035919, 55.483406, 59.664558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707827, -0.155039, -0.689162,
		-0.452438, 0.649730, -0.610860,
		0.542477, 0.744186, 0.389751,
		53.198662, 55.706661, 59.781483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.299267, 55.562576, 59.038265>,  <52.818928, 55.185730, 59.508659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.299267, 55.562576, 59.038265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523869, 55.654976, 59.356094>,  <53.658630, 55.710415, 59.546791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523869, 55.654976, 59.356094>,  <53.299267, 55.562576, 59.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.523869, 55.654976, 59.356094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826578, -0.111946, -0.551577,
		-0.038466, 0.966492, -0.253800,
		0.561506, 0.231002, 0.794575,
		53.692322, 55.724277, 59.594467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.624454, 56.165039, 58.856121>,  <53.299267, 55.562576, 59.038265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.624454, 56.165039, 58.856121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.873165, 56.000771, 59.122879>,  <54.022392, 55.902210, 59.282932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.873165, 56.000771, 59.122879>,  <53.624454, 56.165039, 58.856121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.873165, 56.000771, 59.122879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742759, 0.039123, -0.668415,
		0.248406, 0.910945, 0.329354,
		0.621775, -0.410669, 0.666894,
		54.059696, 55.877571, 59.322948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.178818, 56.600113, 59.029774>,  <53.624454, 56.165039, 58.856121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.178818, 56.600113, 59.029774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.280434, 56.215004, 59.066734>,  <54.341404, 55.983940, 59.088909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.280434, 56.215004, 59.066734>,  <54.178818, 56.600113, 59.029774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.280434, 56.215004, 59.066734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599563, 0.081795, -0.796137,
		0.758939, 0.257648, 0.598020,
		0.254038, -0.962770, 0.092399,
		54.356644, 55.926174, 59.094456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.915516, 56.527225, 59.099281>,  <54.178818, 56.600113, 59.029774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.915516, 56.527225, 59.099281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.775742, 56.180851, 58.956146>,  <54.691879, 55.973026, 58.870266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.775742, 56.180851, 58.956146>,  <54.915516, 56.527225, 59.099281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.775742, 56.180851, 58.956146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784813, -0.061883, -0.616636,
		0.511825, -0.496307, 0.701224,
		-0.349434, -0.865939, -0.357834,
		54.670910, 55.921070, 58.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.293552, 56.383720, 59.608562>,  <54.915516, 56.527225, 59.099281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.293552, 56.383720, 59.608562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.326141, 56.029716, 59.425209>,  <55.345695, 55.817314, 59.315197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.326141, 56.029716, 59.425209>,  <55.293552, 56.383720, 59.608562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.326141, 56.029716, 59.425209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977440, -0.018971, 0.210357,
		-0.194865, -0.465179, 0.863502,
		0.081472, -0.885013, -0.458382,
		55.350582, 55.764214, 59.287693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.695290, 55.926247, 60.055805>,  <55.293552, 56.383720, 59.608562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.695290, 55.926247, 60.055805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.693077, 55.748642, 59.697403>,  <55.691750, 55.642078, 59.482361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.693077, 55.748642, 59.697403>,  <55.695290, 55.926247, 60.055805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.693077, 55.748642, 59.697403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954723, -0.268867, 0.127338,
		-0.297446, -0.854732, 0.425392,
		-0.005534, -0.444008, -0.896006,
		55.691418, 55.615440, 59.428600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.856937, 55.249027, 60.176636>,  <55.695290, 55.926247, 60.055805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.856937, 55.249027, 60.176636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.975533, 55.406811, 59.828728>,  <56.046688, 55.501480, 59.619984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.975533, 55.406811, 59.828728>,  <55.856937, 55.249027, 60.176636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.975533, 55.406811, 59.828728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936026, -0.300829, 0.182638,
		-0.189610, -0.868278, -0.458413,
		0.296484, 0.394456, -0.869771,
		56.064476, 55.525146, 59.567795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.299046, 54.775547, 59.932880>,  <55.856937, 55.249027, 60.176636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.299046, 54.775547, 59.932880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.373337, 55.146374, 59.802612>,  <56.417912, 55.368870, 59.724453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.373337, 55.146374, 59.802612>,  <56.299046, 54.775547, 59.932880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.373337, 55.146374, 59.802612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982258, -0.166412, 0.086470,
		0.025969, -0.335948, -0.941522,
		0.185730, 0.927063, -0.325666,
		56.429054, 55.424492, 59.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.842388, 54.693169, 59.499958>,  <56.299046, 54.775547, 59.932880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.842388, 54.693169, 59.499958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.853775, 55.077248, 59.611099>,  <56.860607, 55.307697, 59.677784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.853775, 55.077248, 59.611099>,  <56.842388, 54.693169, 59.499958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.853775, 55.077248, 59.611099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988795, -0.067800, 0.132996,
		0.146541, 0.270954, -0.951372,
		0.028468, 0.960202, 0.277854,
		56.862316, 55.365307, 59.694454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.069767, 55.257244, 59.014168>,  <56.842388, 54.693169, 59.499958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.069767, 55.257244, 59.014168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.162682, 55.274426, 59.402847>,  <57.218430, 55.284733, 59.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.162682, 55.274426, 59.402847>,  <57.069767, 55.257244, 59.014168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.162682, 55.274426, 59.402847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951854, -0.215508, -0.218016,
		0.200043, 0.975557, -0.090946,
		0.232287, 0.042955, 0.971698,
		57.232368, 55.287312, 59.694355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.701530, 55.516464, 58.970253>,  <57.069767, 55.257244, 59.014168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.701530, 55.516464, 58.970253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.679504, 55.402527, 59.353050>,  <57.666290, 55.334164, 59.582729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.679504, 55.402527, 59.353050>,  <57.701530, 55.516464, 58.970253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.679504, 55.402527, 59.353050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997976, 0.014829, 0.061836,
		-0.031805, 0.958458, 0.283454,
		-0.055064, -0.284847, 0.956990,
		57.662987, 55.317074, 59.640148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.952900, 56.098991, 59.469746>,  <57.701530, 55.516464, 58.970253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.952900, 56.098991, 59.469746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.977882, 55.708538, 59.552940>,  <57.992870, 55.474266, 59.602856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.977882, 55.708538, 59.552940>,  <57.952900, 56.098991, 59.469746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.977882, 55.708538, 59.552940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983163, 0.024316, -0.181108,
		0.171729, 0.215796, 0.961219,
		0.062455, -0.976136, 0.207987,
		57.996620, 55.415699, 59.615337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.397923, 55.884350, 59.978443>,  <57.952900, 56.098991, 59.469746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.397923, 55.884350, 59.978443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.398972, 55.576767, 59.722725>,  <58.399601, 55.392216, 59.569294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.398972, 55.576767, 59.722725>,  <58.397923, 55.884350, 59.978443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.398972, 55.576767, 59.722725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962236, 0.175959, -0.207703,
		0.272205, -0.614607, 0.740380,
		0.002621, -0.768958, -0.639294,
		58.399757, 55.346081, 59.530937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.920219, 55.293716, 59.883450>,  <58.397923, 55.884350, 59.978443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.920219, 55.293716, 59.883450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.233208, 55.151123, 60.087669>,  <59.421001, 55.065567, 60.210201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.233208, 55.151123, 60.087669>,  <58.920219, 55.293716, 59.883450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.233208, 55.151123, 60.087669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580534, 0.714178, -0.391063,
		-0.225214, 0.602385, 0.765775,
		0.782470, -0.356485, 0.510548,
		59.467949, 55.044178, 60.240833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.269188, 55.871384, 60.132271>,  <58.920219, 55.293716, 59.883450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.269188, 55.871384, 60.132271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.535553, 55.573246, 60.145073>,  <59.695374, 55.394363, 60.152756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.535553, 55.573246, 60.145073>,  <59.269188, 55.871384, 60.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.535553, 55.573246, 60.145073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709965, 0.619958, -0.334069,
		0.229153, 0.245185, 0.942005,
		0.665912, -0.745343, 0.032007,
		59.735325, 55.349644, 60.154675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.926693, 55.875763, 60.668499>,  <59.269188, 55.871384, 60.132271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.926693, 55.875763, 60.668499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.995522, 55.805023, 60.280869>,  <60.036819, 55.762581, 60.048290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.995522, 55.805023, 60.280869>,  <59.926693, 55.875763, 60.668499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.995522, 55.805023, 60.280869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639042, 0.768705, -0.026810,
		0.749677, -0.614668, 0.245290,
		0.172076, -0.176850, -0.969079,
		60.047146, 55.751968, 59.990147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.650585, 55.763088, 60.477840>,  <59.926693, 55.875763, 60.668499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.650585, 55.763088, 60.477840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.441856, 55.930965, 60.180771>,  <60.316620, 56.031693, 60.002529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.441856, 55.930965, 60.180771>,  <60.650585, 55.763088, 60.477840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.441856, 55.930965, 60.180771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600197, 0.799291, 0.029971,
		0.606187, -0.430108, -0.668988,
		-0.521825, 0.419692, -0.742669,
		60.285309, 56.056873, 59.957970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.107830, 55.926285, 60.019783>,  <60.650585, 55.763088, 60.477840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.107830, 55.926285, 60.019783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.812935, 56.190681, 59.963821>,  <60.635998, 56.349319, 59.930244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.812935, 56.190681, 59.963821>,  <61.107830, 55.926285, 60.019783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.812935, 56.190681, 59.963821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579309, 0.724987, 0.372552,
		0.347682, 0.193611, -0.917405,
		-0.737237, 0.660990, -0.139904,
		60.591763, 56.388977, 59.921848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.378994, 56.552292, 59.640709>,  <61.107830, 55.926285, 60.019783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.378994, 56.552292, 59.640709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.076591, 56.619171, 59.893852>,  <60.895149, 56.659298, 60.045738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.076591, 56.619171, 59.893852>,  <61.378994, 56.552292, 59.640709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.076591, 56.619171, 59.893852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553356, 0.679705, 0.481454,
		-0.349655, 0.714174, -0.606380,
		-0.756002, 0.167201, 0.632854,
		60.849792, 56.669331, 60.083710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.005604, 57.272556, 59.728241>,  <61.378994, 56.552292, 59.640709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.005604, 57.272556, 59.728241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.039925, 57.115623, 60.094566>,  <61.060516, 57.021461, 60.314362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.039925, 57.115623, 60.094566>,  <61.005604, 57.272556, 59.728241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.039925, 57.115623, 60.094566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425937, 0.845412, 0.322268,
		-0.900675, 0.362426, 0.239649,
		0.085804, -0.392334, 0.915812,
		61.065666, 56.997925, 60.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.597290, 57.541298, 60.277287>,  <61.005604, 57.272556, 59.728241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.597290, 57.541298, 60.277287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.971481, 57.404503, 60.312904>,  <61.195995, 57.322426, 60.334274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.971481, 57.404503, 60.312904>,  <60.597290, 57.541298, 60.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.971481, 57.404503, 60.312904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320690, 0.927382, 0.192665,
		-0.148465, -0.151678, 0.977216,
		0.935476, -0.341987, 0.089042,
		61.252125, 57.301907, 60.339619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.876827, 57.856537, 60.960365>,  <60.597290, 57.541298, 60.277287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.876827, 57.856537, 60.960365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.157082, 57.756611, 60.693024>,  <61.325233, 57.696655, 60.532619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.157082, 57.756611, 60.693024>,  <60.876827, 57.856537, 60.960365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.157082, 57.756611, 60.693024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474338, 0.862827, 0.174740,
		0.533019, -0.439455, 0.723028,
		0.700638, -0.249820, -0.668353,
		61.367271, 57.681664, 60.492519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.610661, 57.939838, 61.183872>,  <60.876827, 57.856537, 60.960365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.610661, 57.939838, 61.183872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.582893, 57.987640, 60.787712>,  <61.566235, 58.016319, 60.550014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.582893, 57.987640, 60.787712>,  <61.610661, 57.939838, 61.183872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.582893, 57.987640, 60.787712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656952, 0.752603, 0.044763,
		0.750730, -0.647541, -0.130748,
		-0.069415, 0.119500, -0.990405,
		61.562069, 58.023491, 60.490589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.257992, 57.872620, 60.868332>,  <61.610661, 57.939838, 61.183872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.257992, 57.872620, 60.868332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.066994, 58.134232, 60.633644>,  <61.952393, 58.291199, 60.492832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.066994, 58.134232, 60.633644>,  <62.257992, 57.872620, 60.868332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.066994, 58.134232, 60.633644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792549, 0.608876, 0.033719,
		0.379290, -0.448900, -0.809091,
		-0.477500, 0.654033, -0.586715,
		61.923744, 58.330441, 60.457630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.665302, 58.116219, 60.256897>,  <62.257992, 57.872620, 60.868332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.665302, 58.116219, 60.256897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.412514, 58.386627, 60.408478>,  <62.260841, 58.548874, 60.499424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.412514, 58.386627, 60.408478>,  <62.665302, 58.116219, 60.256897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.412514, 58.386627, 60.408478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759265, 0.638087, 0.127908,
		-0.155333, 0.368557, -0.916536,
		-0.631971, 0.676026, 0.378949,
		62.222923, 58.589436, 60.522163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.859756, 58.793575, 59.908306>,  <62.665302, 58.116219, 60.256897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.859756, 58.793575, 59.908306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.735123, 58.814751, 60.287804>,  <62.660343, 58.827454, 60.515503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.735123, 58.814751, 60.287804>,  <62.859756, 58.793575, 59.908306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.735123, 58.814751, 60.287804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772424, 0.595620, 0.220447,
		-0.553421, 0.801520, -0.226476,
		-0.311586, 0.052935, 0.948742,
		62.641647, 58.830631, 60.572426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.580643, 58.777496, 59.795597>,  <62.859756, 58.793575, 59.908306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.580643, 58.777496, 59.795597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.827972, 59.018593, 59.997345>,  <63.976368, 59.163250, 60.118393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.827972, 59.018593, 59.997345>,  <63.580643, 58.777496, 59.795597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.827972, 59.018593, 59.997345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127764, 0.556125, -0.821220,
		-0.775471, 0.572217, 0.266856,
		0.618321, 0.602738, 0.504367,
		64.013466, 59.199413, 60.148655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.539665, 59.512604, 59.558815>,  <63.580643, 58.777496, 59.795597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.539665, 59.512604, 59.558815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.906898, 59.478394, 59.713638>,  <64.127235, 59.457867, 59.806534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.906898, 59.478394, 59.713638>,  <63.539665, 59.512604, 59.558815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.906898, 59.478394, 59.713638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371962, 0.523389, -0.766622,
		-0.137015, 0.847791, 0.512325,
		0.918080, -0.085527, 0.387058,
		64.182320, 59.452736, 59.829754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.942204, 60.193378, 59.670673>,  <63.539665, 59.512604, 59.558815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.942204, 60.193378, 59.670673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.178825, 59.883163, 59.582497>,  <64.320801, 59.697033, 59.529591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.178825, 59.883163, 59.582497>,  <63.942204, 60.193378, 59.670673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.178825, 59.883163, 59.582497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315260, 0.474137, -0.822074,
		0.742072, 0.416808, 0.524977,
		0.591558, -0.775542, -0.220441,
		64.356293, 59.650501, 59.516365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.488808, 60.702320, 59.789803>,  <63.942204, 60.193378, 59.670673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.488808, 60.702320, 59.789803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.392296, 60.450401, 60.085136>,  <64.334389, 60.299248, 60.262337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.392296, 60.450401, 60.085136>,  <64.488808, 60.702320, 59.789803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.392296, 60.450401, 60.085136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097505, -0.772692, -0.627247,
		0.965545, -0.079351, 0.247844,
		-0.241280, -0.629801, 0.738332,
		64.319908, 60.261459, 60.306637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.967377, 60.170414, 59.684471>,  <64.488808, 60.702320, 59.789803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.967377, 60.170414, 59.684471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.638840, 60.036583, 59.869270>,  <64.441719, 59.956284, 59.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.638840, 60.036583, 59.869270>,  <64.967377, 60.170414, 59.684471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.638840, 60.036583, 59.869270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006924, -0.815706, -0.578425,
		0.570384, -0.471890, 0.672296,
		-0.821349, -0.334579, 0.461998,
		64.392433, 59.936211, 60.007870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.047234, 60.311615, 60.450054>,  <64.967377, 60.170414, 59.684471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.047234, 60.311615, 60.450054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.134888, 59.946571, 60.588112>,  <65.187477, 59.727547, 60.670948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.134888, 59.946571, 60.588112>,  <65.047234, 60.311615, 60.450054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.134888, 59.946571, 60.588112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946085, 0.112252, -0.303848,
		0.238551, 0.393120, 0.888003,
		0.219128, -0.912610, 0.345147,
		65.200623, 59.672787, 60.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.640976, 60.273651, 61.047146>,  <65.047234, 60.311615, 60.450054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.640976, 60.273651, 61.047146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.641312, 59.947067, 60.816185>,  <65.641510, 59.751118, 60.677608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.641312, 59.947067, 60.816185>,  <65.640976, 60.273651, 61.047146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.641312, 59.947067, 60.816185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954066, 0.173638, -0.244148,
		0.299596, -0.550675, 0.779102,
		0.000836, -0.816460, -0.577401,
		65.641563, 59.702129, 60.642963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.178307, 59.754162, 61.247334>,  <65.640976, 60.273651, 61.047146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.178307, 59.754162, 61.247334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109612, 59.765404, 60.853439>,  <66.068390, 59.772148, 60.617104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109612, 59.765404, 60.853439>,  <66.178307, 59.754162, 61.247334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.109612, 59.765404, 60.853439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967460, 0.193344, -0.163214,
		0.185806, -0.980729, -0.060398,
		-0.171746, 0.028106, -0.984740,
		66.058090, 59.773834, 60.558018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.522720, 59.193554, 61.003822>,  <66.178307, 59.754162, 61.247334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.522720, 59.193554, 61.003822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.536369, 59.497211, 60.743813>,  <66.544556, 59.679405, 60.587807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.536369, 59.497211, 60.743813>,  <66.522720, 59.193554, 61.003822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.536369, 59.497211, 60.743813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999375, -0.031943, 0.015152,
		-0.009261, -0.650135, -0.759762,
		0.034120, 0.759147, -0.650025,
		66.546608, 59.724957, 60.548805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.832123, 58.933407, 60.354805>,  <66.522720, 59.193554, 61.003822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.832123, 58.933407, 60.354805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.854042, 59.324074, 60.437859>,  <66.867195, 59.558475, 60.487690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.854042, 59.324074, 60.437859>,  <66.832123, 58.933407, 60.354805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.854042, 59.324074, 60.437859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996573, -0.066403, 0.049327,
		0.061964, 0.204221, -0.976962,
		0.054800, 0.976670, 0.207636,
		66.870483, 59.617073, 60.500149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.467628, 59.251015, 60.039631>,  <66.832123, 58.933407, 60.354805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.467628, 59.251015, 60.039631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.369453, 59.443535, 60.376228>,  <67.310547, 59.559048, 60.578186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.369453, 59.443535, 60.376228>,  <67.467628, 59.251015, 60.039631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.369453, 59.443535, 60.376228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959687, -0.002005, 0.281062,
		0.136963, 0.876553, -0.461406,
		-0.245441, 0.481301, 0.841492,
		67.295822, 59.587925, 60.628677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.303085, 59.147015, 60.062164>,  <67.467628, 59.251015, 60.039631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.303085, 59.147015, 60.062164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.494469, 58.874363, 59.840729>,  <68.609299, 58.710773, 59.707867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.494469, 58.874363, 59.840729>,  <68.303085, 59.147015, 60.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.494469, 58.874363, 59.840729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565676, -0.242946, 0.788028,
		-0.671637, -0.690187, 0.269344,
		0.478450, -0.681630, -0.553594,
		68.638000, 58.669872, 59.674652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.291801, 58.457890, 60.346302>,  <68.303085, 59.147015, 60.062164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.291801, 58.457890, 60.346302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.623466, 58.480236, 60.123825>,  <68.822464, 58.493645, 59.990337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.623466, 58.480236, 60.123825>,  <68.291801, 58.457890, 60.346302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.623466, 58.480236, 60.123825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529797, -0.395904, 0.750050,
		-0.178299, -0.916591, -0.357870,
		0.829171, 0.055866, -0.556197,
		68.872215, 58.496998, 59.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.685898, 57.895584, 60.542015>,  <68.291801, 58.457890, 60.346302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.685898, 57.895584, 60.542015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.942650, 58.157940, 60.383118>,  <69.096703, 58.315353, 60.287781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.942650, 58.157940, 60.383118>,  <68.685898, 57.895584, 60.542015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.942650, 58.157940, 60.383118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664360, -0.216992, 0.715220,
		0.382906, -0.722998, -0.575028,
		0.641879, 0.655888, -0.397243,
		69.135216, 58.354706, 60.263943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.320740, 57.676609, 60.795551>,  <68.685898, 57.895584, 60.542015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.320740, 57.676609, 60.795551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.407410, 58.042099, 60.658058>,  <69.459412, 58.261395, 60.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.407410, 58.042099, 60.658058>,  <69.320740, 57.676609, 60.795551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.407410, 58.042099, 60.658058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769214, 0.057009, 0.636442,
		0.601130, -0.402313, -0.690498,
		0.216684, 0.913726, -0.343735,
		69.472412, 58.316216, 60.554939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.069748, 57.787724, 60.493660>,  <69.320740, 57.676609, 60.795551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.069748, 57.787724, 60.493660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.914276, 58.103584, 60.683556>,  <69.820992, 58.293098, 60.797493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.914276, 58.103584, 60.683556>,  <70.069748, 57.787724, 60.493660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.914276, 58.103584, 60.683556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811077, 0.048785, 0.582901,
		0.437127, 0.611616, -0.659428,
		-0.388682, 0.789649, 0.474743,
		69.797668, 58.340481, 60.825977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.413330, 58.484730, 60.328594>,  <70.069748, 57.787724, 60.493660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.413330, 58.484730, 60.328594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.273140, 58.459248, 60.702354>,  <70.189026, 58.443958, 60.926609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.273140, 58.459248, 60.702354>,  <70.413330, 58.484730, 60.328594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.273140, 58.459248, 60.702354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936411, -0.042219, 0.348356,
		0.017257, 0.997075, 0.074451,
		-0.350481, -0.063705, 0.934401,
		70.167999, 58.440136, 60.982674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.627060, 59.105072, 60.684586>,  <70.413330, 58.484730, 60.328594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.627060, 59.105072, 60.684586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.567734, 58.775875, 60.903923>,  <70.532135, 58.578358, 61.035526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.567734, 58.775875, 60.903923>,  <70.627060, 59.105072, 60.684586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.567734, 58.775875, 60.903923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981662, -0.055387, 0.182406,
		-0.119748, 0.565339, 0.816120,
		-0.148324, -0.822997, 0.548339,
		70.523239, 58.528976, 61.068424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.981827, 59.061527, 61.294720>,  <70.627060, 59.105072, 60.684586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.981827, 59.061527, 61.294720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.967422, 58.664829, 61.245483>,  <70.958778, 58.426811, 61.215942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.967422, 58.664829, 61.245483>,  <70.981827, 59.061527, 61.294720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.967422, 58.664829, 61.245483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987409, -0.054302, 0.148575,
		-0.154032, -0.116190, 0.981210,
		-0.036019, -0.991741, -0.123092,
		70.956619, 58.367306, 61.208557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.349342, 58.723240, 61.765659>,  <70.981827, 59.061527, 61.294720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.349342, 58.723240, 61.765659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.344994, 58.545303, 61.407440>,  <71.342384, 58.438541, 61.192509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.344994, 58.545303, 61.407440>,  <71.349342, 58.723240, 61.765659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.344994, 58.545303, 61.407440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999884, -0.014395, -0.004985,
		-0.010674, -0.895495, 0.444943,
		-0.010868, -0.444838, -0.895545,
		71.341736, 58.411854, 61.138775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.869255, 58.201977, 61.697018>,  <71.349342, 58.723240, 61.765659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.869255, 58.201977, 61.697018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.805931, 58.252323, 61.305283>,  <71.767937, 58.282532, 61.070244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.805931, 58.252323, 61.305283>,  <71.869255, 58.201977, 61.697018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.805931, 58.252323, 61.305283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963213, -0.198457, -0.181208,
		-0.217164, -0.971995, -0.089818,
		-0.158308, 0.125865, -0.979335,
		71.758438, 58.290081, 61.011482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.277359, 57.637569, 61.326492>,  <71.869255, 58.201977, 61.697018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.277359, 57.637569, 61.326492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.218330, 57.965790, 61.105614>,  <72.182915, 58.162720, 60.973087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.218330, 57.965790, 61.105614>,  <72.277359, 57.637569, 61.326492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.218330, 57.965790, 61.105614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934931, -0.066420, -0.348556,
		-0.322684, -0.567707, -0.757353,
		-0.147574, 0.820547, -0.552200,
		72.174057, 58.211952, 60.939953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.482643, 57.520943, 60.608772>,  <72.277359, 57.637569, 61.326492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.482643, 57.520943, 60.608772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.497520, 57.912285, 60.690193>,  <72.506447, 58.147091, 60.739044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.497520, 57.912285, 60.690193>,  <72.482643, 57.520943, 60.608772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.497520, 57.912285, 60.690193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985113, -0.001695, -0.171898,
		-0.167833, 0.206915, -0.963856,
		0.037202, 0.978358, 0.203550,
		72.508682, 58.205791, 60.751259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.716682, 57.936470, 59.962528>,  <72.482643, 57.520943, 60.608772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.716682, 57.936470, 59.962528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.808899, 58.123867, 60.303673>,  <72.864227, 58.236305, 60.508358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.808899, 58.123867, 60.303673>,  <72.716682, 57.936470, 59.962528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.808899, 58.123867, 60.303673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973045, -0.105349, -0.205149,
		-0.006261, 0.877166, -0.480147,
		0.230533, 0.468489, 0.852862,
		72.878059, 58.264412, 60.559532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.284821, 58.432026, 59.839310>,  <72.716682, 57.936470, 59.962528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.284821, 58.432026, 59.839310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.283806, 58.326408, 60.225113>,  <73.283195, 58.263039, 60.456596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.283806, 58.326408, 60.225113>,  <73.284821, 58.432026, 59.839310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.283806, 58.326408, 60.225113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956059, -0.283399, -0.075069,
		0.293162, 0.921937, 0.253156,
		-0.002535, -0.264039, 0.964509,
		73.283043, 58.247196, 60.514465>
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
