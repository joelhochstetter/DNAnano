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
	<36.245636, 53.242508, 49.427574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150932, 53.132614, 49.800339>,  <36.094112, 53.066677, 50.023998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150932, 53.132614, 49.800339>,  <36.245636, 53.242508, 49.427574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150932, 53.132614, 49.800339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734899, -0.678048, -0.013190,
		0.635507, 0.681741, 0.362437,
		-0.236757, -0.274737, 0.931915,
		36.079906, 53.050194, 50.079914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680611, 53.403309, 50.031391>,  <36.245636, 53.242508, 49.427574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680611, 53.403309, 50.031391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496864, 53.049057, 50.058678>,  <36.386616, 52.836506, 50.075050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496864, 53.049057, 50.058678>,  <36.680611, 53.403309, 50.031391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496864, 53.049057, 50.058678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871615, -0.464222, -0.157436,
		0.171097, -0.012862, 0.985170,
		-0.459363, -0.885625, 0.068216,
		36.359055, 52.783371, 50.079144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829845, 52.996761, 50.637146>,  <36.680611, 53.403309, 50.031391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829845, 52.996761, 50.637146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752705, 52.763329, 50.321617>,  <36.706421, 52.623268, 50.132301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752705, 52.763329, 50.321617>,  <36.829845, 52.996761, 50.637146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752705, 52.763329, 50.321617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958034, -0.285745, -0.022819,
		-0.212084, -0.760116, 0.614202,
		-0.192851, -0.583586, -0.788819,
		36.694851, 52.588253, 50.084972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028454, 52.190128, 50.731743>,  <36.829845, 52.996761, 50.637146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028454, 52.190128, 50.731743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042431, 52.343079, 50.362404>,  <37.050816, 52.434849, 50.140800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042431, 52.343079, 50.362404>,  <37.028454, 52.190128, 50.731743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042431, 52.343079, 50.362404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962418, -0.261847, -0.072019,
		-0.269314, -0.886128, -0.377157,
		0.034940, 0.382379, -0.923345,
		37.052914, 52.457790, 50.085400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433418, 51.719437, 50.363297>,  <37.028454, 52.190128, 50.731743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433418, 51.719437, 50.363297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469006, 52.084053, 50.202713>,  <37.490360, 52.302822, 50.106361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469006, 52.084053, 50.202713>,  <37.433418, 51.719437, 50.363297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469006, 52.084053, 50.202713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995503, -0.094543, 0.005954,
		-0.032528, -0.400184, -0.915857,
		0.088971, 0.911545, -0.401459,
		37.495697, 52.357517, 50.082275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882351, 51.736382, 49.789558>,  <37.433418, 51.719437, 50.363297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882351, 51.736382, 49.789558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922798, 52.078491, 49.992844>,  <37.947067, 52.283756, 50.114815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922798, 52.078491, 49.992844>,  <37.882351, 51.736382, 49.789558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922798, 52.078491, 49.992844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994749, -0.078818, -0.065282,
		-0.015778, 0.512144, -0.858755,
		0.101119, 0.855276, 0.508211,
		37.953133, 52.335075, 50.145306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268147, 52.375469, 49.524002>,  <37.882351, 51.736382, 49.789558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268147, 52.375469, 49.524002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310425, 52.343639, 49.920486>,  <38.335793, 52.324543, 50.158379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310425, 52.343639, 49.920486>,  <38.268147, 52.375469, 49.524002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310425, 52.343639, 49.920486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983593, -0.138186, -0.115975,
		0.146200, 0.987204, 0.063664,
		0.105693, -0.079574, 0.991210,
		38.342133, 52.319767, 50.217850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808289, 52.805630, 49.681717>,  <38.268147, 52.375469, 49.524002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808289, 52.805630, 49.681717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781540, 52.502796, 49.941673>,  <38.765491, 52.321098, 50.097649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781540, 52.502796, 49.941673>,  <38.808289, 52.805630, 49.681717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781540, 52.502796, 49.941673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996716, -0.080497, 0.008792,
		0.045658, 0.648344, 0.759977,
		-0.066876, -0.757080, 0.649890,
		38.761478, 52.275673, 50.136639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133335, 52.929321, 50.219440>,  <38.808289, 52.805630, 49.681717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133335, 52.929321, 50.219440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146595, 52.529850, 50.203712>,  <39.154552, 52.290169, 50.194275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146595, 52.529850, 50.203712>,  <39.133335, 52.929321, 50.219440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146595, 52.529850, 50.203712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999097, 0.034164, -0.025275,
		0.026585, -0.038450, 0.998907,
		0.033154, -0.998676, -0.039324,
		39.156540, 52.230247, 50.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393860, 52.518345, 50.867157>,  <39.133335, 52.929321, 50.219440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393860, 52.518345, 50.867157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499100, 52.338234, 50.525860>,  <39.562244, 52.230167, 50.321083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499100, 52.338234, 50.525860>,  <39.393860, 52.518345, 50.867157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499100, 52.338234, 50.525860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934036, 0.340327, 0.108416,
		0.241564, -0.825485, 0.510120,
		0.263103, -0.450281, -0.853243,
		39.578030, 52.203148, 50.269886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906830, 51.944988, 50.928551>,  <39.393860, 52.518345, 50.867157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906830, 51.944988, 50.928551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916084, 52.159767, 50.591232>,  <39.921638, 52.288635, 50.388840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916084, 52.159767, 50.591232>,  <39.906830, 51.944988, 50.928551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916084, 52.159767, 50.591232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918523, 0.321602, 0.229972,
		0.394689, -0.779908, -0.485761,
		0.023135, 0.536951, -0.843296,
		39.923023, 52.320854, 50.338242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563206, 51.730568, 50.697826>,  <39.906830, 51.944988, 50.928551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563206, 51.730568, 50.697826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481373, 52.091896, 50.547009>,  <40.432274, 52.308693, 50.456516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481373, 52.091896, 50.547009>,  <40.563206, 51.730568, 50.697826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481373, 52.091896, 50.547009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914444, 0.313788, 0.255594,
		0.349195, -0.292496, -0.890229,
		-0.204583, 0.903318, -0.377045,
		40.419998, 52.362892, 50.433895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189651, 51.983109, 50.330425>,  <40.563206, 51.730568, 50.697826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189651, 51.983109, 50.330425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941887, 52.267464, 50.463676>,  <40.793228, 52.438076, 50.543629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941887, 52.267464, 50.463676>,  <41.189651, 51.983109, 50.330425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941887, 52.267464, 50.463676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765128, 0.451607, 0.458945,
		0.175813, 0.539161, -0.823647,
		-0.619410, 0.710884, 0.333128,
		40.756065, 52.480728, 50.563614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314636, 51.431969, 50.759098>,  <41.189651, 51.983109, 50.330425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314636, 51.431969, 50.759098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093239, 51.307930, 51.068287>,  <40.960400, 51.233509, 51.253799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093239, 51.307930, 51.068287>,  <41.314636, 51.431969, 50.759098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093239, 51.307930, 51.068287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822183, -0.351540, 0.447700,
		0.132903, 0.883324, 0.449528,
		-0.553491, -0.310093, 0.772975,
		40.927193, 51.214901, 51.300179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513252, 51.709698, 51.429512>,  <41.314636, 51.431969, 50.759098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513252, 51.709698, 51.429512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322758, 51.369068, 51.517170>,  <41.208462, 51.164692, 51.569767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322758, 51.369068, 51.517170>,  <41.513252, 51.709698, 51.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322758, 51.369068, 51.517170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762737, -0.276049, 0.584833,
		-0.437532, 0.445670, 0.780989,
		-0.476234, -0.851572, 0.219149,
		41.179886, 51.113598, 51.582916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283642, 51.593460, 51.508289>,  <41.513252, 51.709698, 51.429512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283642, 51.593460, 51.508289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297321, 51.288662, 51.766960>,  <42.305531, 51.105782, 51.922161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297321, 51.288662, 51.766960>,  <42.283642, 51.593460, 51.508289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297321, 51.288662, 51.766960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626837, 0.520314, 0.579956,
		-0.778400, 0.385525, 0.495443,
		0.034198, -0.762000, 0.646673,
		42.307579, 51.060062, 51.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434418, 51.836582, 52.165333>,  <42.283642, 51.593460, 51.508289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434418, 51.836582, 52.165333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524822, 51.451294, 52.223465>,  <42.579063, 51.220119, 52.258343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524822, 51.451294, 52.223465>,  <42.434418, 51.836582, 52.165333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524822, 51.451294, 52.223465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810774, 0.268701, 0.520043,
		-0.539968, 0.000296, 0.841686,
		0.226008, -0.963224, 0.145330,
		42.592625, 51.162327, 52.267063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048164, 51.964737, 52.575562>,  <42.434418, 51.836582, 52.165333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048164, 51.964737, 52.575562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058380, 51.568161, 52.524353>,  <43.064510, 51.330215, 52.493629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058380, 51.568161, 52.524353>,  <43.048164, 51.964737, 52.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058380, 51.568161, 52.524353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935900, -0.021293, 0.351621,
		-0.351338, -0.128794, 0.927348,
		0.025540, -0.991443, -0.128019,
		43.066044, 51.270729, 52.485947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394016, 51.678699, 53.089901>,  <43.048164, 51.964737, 52.575562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394016, 51.678699, 53.089901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438194, 51.480766, 52.745125>,  <43.464703, 51.362007, 52.538258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438194, 51.480766, 52.745125>,  <43.394016, 51.678699, 53.089901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438194, 51.480766, 52.745125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957835, -0.178451, 0.225181,
		-0.265241, -0.850469, 0.454257,
		0.110447, -0.494831, -0.861942,
		43.471329, 51.332317, 52.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315189, 51.714329, 53.800419>,  <43.394016, 51.678699, 53.089901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315189, 51.714329, 53.800419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443192, 51.648193, 54.173569>,  <43.519993, 51.608513, 54.397457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443192, 51.648193, 54.173569>,  <43.315189, 51.714329, 53.800419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443192, 51.648193, 54.173569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915827, -0.198151, -0.349281,
		0.242601, 0.966126, 0.088012,
		0.320010, -0.165340, 0.932875,
		43.539196, 51.598591, 54.453430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004292, 51.914700, 53.801228>,  <43.315189, 51.714329, 53.800419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004292, 51.914700, 53.801228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994530, 51.671509, 54.118660>,  <43.988674, 51.525593, 54.309120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994530, 51.671509, 54.118660>,  <44.004292, 51.914700, 53.801228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994530, 51.671509, 54.118660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979849, -0.171961, -0.101612,
		0.198243, 0.775108, 0.599923,
		-0.024403, -0.607978, 0.793579,
		43.987209, 51.489117, 54.356735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431789, 52.216545, 54.350441>,  <44.004292, 51.914700, 53.801228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431789, 52.216545, 54.350441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407585, 51.824104, 54.276924>,  <44.393063, 51.588638, 54.232815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407585, 51.824104, 54.276924>,  <44.431789, 52.216545, 54.350441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407585, 51.824104, 54.276924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990576, -0.036358, -0.132053,
		0.122875, -0.190047, 0.974055,
		-0.060511, -0.981102, -0.183788,
		44.389431, 51.529774, 54.221786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187359, 52.192669, 54.737373>,  <44.431789, 52.216545, 54.350441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187359, 52.192669, 54.737373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410145, 51.877018, 54.840961>,  <45.543816, 51.687626, 54.903114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410145, 51.877018, 54.840961>,  <45.187359, 52.192669, 54.737373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410145, 51.877018, 54.840961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591032, 0.595656, 0.543944,
		-0.583497, -0.149901, 0.798161,
		0.556967, -0.789128, 0.258967,
		45.577236, 51.640278, 54.918652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282471, 52.149273, 55.428417>,  <45.187359, 52.192669, 54.737373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282471, 52.149273, 55.428417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612312, 51.959377, 55.305359>,  <45.810219, 51.845440, 55.231522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612312, 51.959377, 55.305359>,  <45.282471, 52.149273, 55.428417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612312, 51.959377, 55.305359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565096, 0.665897, 0.487081,
		-0.026375, -0.575500, 0.817376,
		0.824604, -0.474743, -0.307650,
		45.859692, 51.816956, 55.213062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736179, 51.973717, 56.056042>,  <45.282471, 52.149273, 55.428417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736179, 51.973717, 56.056042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988621, 52.021809, 55.749512>,  <46.140087, 52.050663, 55.565594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988621, 52.021809, 55.749512>,  <45.736179, 51.973717, 56.056042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988621, 52.021809, 55.749512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480145, 0.715362, 0.507659,
		0.609235, -0.688332, 0.393740,
		0.631105, 0.120232, -0.766323,
		46.177952, 52.057877, 55.519615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424801, 51.865753, 56.254181>,  <45.736179, 51.973717, 56.056042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424801, 51.865753, 56.254181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405643, 52.110340, 55.938255>,  <46.394150, 52.257092, 55.748699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405643, 52.110340, 55.938255>,  <46.424801, 51.865753, 56.254181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405643, 52.110340, 55.938255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528002, 0.686717, 0.499634,
		0.847892, -0.393096, -0.355746,
		-0.047892, 0.611470, -0.789817,
		46.391277, 52.293781, 55.701309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.124668, 52.082981, 55.945229>,  <46.424801, 51.865753, 56.254181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.124668, 52.082981, 55.945229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866058, 52.374405, 55.854713>,  <46.710892, 52.549259, 55.800404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866058, 52.374405, 55.854713>,  <47.124668, 52.082981, 55.945229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866058, 52.374405, 55.854713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672784, 0.684344, 0.281131,
		0.359683, 0.029511, -0.932608,
		-0.646521, 0.728562, -0.226292,
		46.672104, 52.592972, 55.786827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.463097, 52.545799, 55.445534>,  <47.124668, 52.082981, 55.945229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.463097, 52.545799, 55.445534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.241043, 52.746819, 55.710648>,  <47.107811, 52.867428, 55.869717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.241043, 52.746819, 55.710648>,  <47.463097, 52.545799, 55.445534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.241043, 52.746819, 55.710648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751594, 0.644398, 0.140912,
		-0.356281, 0.576368, -0.735434,
		-0.555130, 0.502544, 0.662782,
		47.074505, 52.897583, 55.909481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696774, 53.230122, 55.366100>,  <47.463097, 52.545799, 55.445534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696774, 53.230122, 55.366100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476631, 53.211830, 55.699570>,  <47.344543, 53.200855, 55.899651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476631, 53.211830, 55.699570>,  <47.696774, 53.230122, 55.366100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476631, 53.211830, 55.699570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695393, 0.527518, 0.488010,
		-0.462096, 0.848312, -0.258523,
		-0.550360, -0.045732, 0.833674,
		47.311523, 53.198109, 55.949673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.513622, 53.889832, 55.578789>,  <47.696774, 53.230122, 55.366100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.513622, 53.889832, 55.578789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507771, 53.669079, 55.912308>,  <47.504261, 53.536629, 56.112419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507771, 53.669079, 55.912308>,  <47.513622, 53.889832, 55.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507771, 53.669079, 55.912308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616717, 0.651398, 0.441974,
		-0.787049, 0.520682, 0.330824,
		-0.014630, -0.551880, 0.833795,
		47.503380, 53.503513, 56.162445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.693188, 54.421150, 56.046959>,  <47.513622, 53.889832, 55.578789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.693188, 54.421150, 56.046959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757977, 54.074291, 56.235352>,  <47.796848, 53.866177, 56.348389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757977, 54.074291, 56.235352>,  <47.693188, 54.421150, 56.046959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757977, 54.074291, 56.235352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687888, 0.441424, 0.576155,
		-0.707514, 0.230666, 0.667995,
		0.161970, -0.867144, 0.470986,
		47.806568, 53.814148, 56.376648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.566277, 54.466290, 56.819832>,  <47.693188, 54.421150, 56.046959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.566277, 54.466290, 56.819832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829861, 54.182915, 56.718727>,  <47.988010, 54.012890, 56.658066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.829861, 54.182915, 56.718727>,  <47.566277, 54.466290, 56.819832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.829861, 54.182915, 56.718727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580554, 0.265368, 0.769764,
		-0.478252, -0.653988, 0.586152,
		0.658963, -0.708434, -0.252763,
		48.027550, 53.970383, 56.642899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918404, 54.393330, 57.444927>,  <47.566277, 54.466290, 56.819832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918404, 54.393330, 57.444927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.140430, 54.208038, 57.168571>,  <48.273647, 54.096863, 57.002758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.140430, 54.208038, 57.168571>,  <47.918404, 54.393330, 57.444927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.140430, 54.208038, 57.168571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819477, 0.162052, 0.549723,
		-0.142686, -0.871299, 0.469551,
		0.555065, -0.463224, -0.690888,
		48.306950, 54.069073, 56.961304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.380215, 54.010208, 57.757267>,  <47.918404, 54.393330, 57.444927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.380215, 54.010208, 57.757267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.574009, 54.048405, 57.409439>,  <48.690285, 54.071323, 57.200741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.574009, 54.048405, 57.409439>,  <48.380215, 54.010208, 57.757267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.574009, 54.048405, 57.409439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849381, 0.186534, 0.493717,
		0.209354, -0.977796, 0.009258,
		0.484481, 0.095498, -0.869573,
		48.719353, 54.077053, 57.148567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.058228, 53.756855, 57.697350>,  <48.380215, 54.010208, 57.757267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.058228, 53.756855, 57.697350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.084682, 54.053104, 57.429886>,  <49.100555, 54.230854, 57.269409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.084682, 54.053104, 57.429886>,  <49.058228, 53.756855, 57.697350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.084682, 54.053104, 57.429886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891336, 0.257349, 0.373217,
		0.448492, -0.620681, -0.643125,
		0.066142, 0.740626, -0.668654,
		49.104527, 54.275291, 57.229290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.721050, 53.824127, 57.329601>,  <49.058228, 53.756855, 57.697350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.721050, 53.824127, 57.329601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.546505, 54.182926, 57.357857>,  <49.441780, 54.398205, 57.374809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.546505, 54.182926, 57.357857>,  <49.721050, 53.824127, 57.329601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.546505, 54.182926, 57.357857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834723, 0.374258, 0.403941,
		0.335896, 0.235227, -0.912054,
		-0.436361, 0.896995, 0.070638,
		49.415596, 54.452026, 57.379047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.596870, 53.265369, 56.861725>,  <49.721050, 53.824127, 57.329601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.596870, 53.265369, 56.861725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.787251, 53.100121, 56.551163>,  <49.901478, 53.000973, 56.364826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.787251, 53.100121, 56.551163>,  <49.596870, 53.265369, 56.861725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.787251, 53.100121, 56.551163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876607, 0.294033, 0.380926,
		0.070918, -0.861902, 0.502092,
		0.475952, -0.413123, -0.776401,
		49.930035, 52.976185, 56.318241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.138279, 52.865700, 57.124493>,  <49.596870, 53.265369, 56.861725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.138279, 52.865700, 57.124493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271572, 52.995537, 56.770409>,  <50.351547, 53.073441, 56.557957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271572, 52.995537, 56.770409>,  <50.138279, 52.865700, 57.124493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.271572, 52.995537, 56.770409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836275, 0.331843, 0.436491,
		0.435432, -0.885731, -0.160867,
		0.333232, 0.324592, -0.885210,
		50.371540, 53.092915, 56.504845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.833275, 52.774956, 57.196930>,  <50.138279, 52.865700, 57.124493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.833275, 52.774956, 57.196930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.830162, 53.052010, 56.908432>,  <50.828293, 53.218243, 56.735332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.830162, 53.052010, 56.908432>,  <50.833275, 52.774956, 57.196930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.830162, 53.052010, 56.908432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899834, 0.319450, 0.297070,
		0.436163, -0.646687, -0.625746,
		-0.007783, 0.692638, -0.721243,
		50.827827, 53.259800, 56.692059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.474655, 52.814545, 57.056511>,  <50.833275, 52.774956, 57.196930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.474655, 52.814545, 57.056511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.310062, 53.134060, 56.880959>,  <51.211308, 53.325771, 56.775627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.310062, 53.134060, 56.880959>,  <51.474655, 52.814545, 57.056511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.310062, 53.134060, 56.880959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867669, 0.490721, 0.079640,
		0.278984, -0.348033, -0.895009,
		-0.411482, 0.798790, -0.438881,
		51.186619, 53.373695, 56.749294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.833878, 53.023823, 56.308475>,  <51.474655, 52.814545, 57.056511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.833878, 53.023823, 56.308475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.674965, 53.256737, 56.592194>,  <51.579617, 53.396484, 56.762424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.674965, 53.256737, 56.592194>,  <51.833878, 53.023823, 56.308475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.674965, 53.256737, 56.592194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876437, 0.469896, 0.105147,
		-0.272071, 0.663429, -0.697021,
		-0.397285, 0.582288, 0.709299,
		51.555779, 53.431423, 56.804985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.033302, 53.718876, 56.256184>,  <51.833878, 53.023823, 56.308475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.033302, 53.718876, 56.256184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.948566, 53.691341, 56.646133>,  <51.897724, 53.674820, 56.880104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.948566, 53.691341, 56.646133>,  <52.033302, 53.718876, 56.256184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.948566, 53.691341, 56.646133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817737, 0.533773, 0.215389,
		-0.535190, 0.842821, -0.056783,
		-0.211843, -0.068841, 0.974876,
		51.885014, 53.670689, 56.938595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.965687, 54.414059, 56.518738>,  <52.033302, 53.718876, 56.256184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.965687, 54.414059, 56.518738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.098358, 54.112106, 56.745064>,  <52.177959, 53.930935, 56.880859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.098358, 54.112106, 56.745064>,  <51.965687, 54.414059, 56.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.098358, 54.112106, 56.745064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898129, 0.436216, 0.055503,
		-0.288717, 0.489768, 0.822660,
		0.331674, -0.754879, 0.565818,
		52.197861, 53.885643, 56.914810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.424526, 54.665501, 57.098232>,  <51.965687, 54.414059, 56.518738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.424526, 54.665501, 57.098232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.505066, 54.280521, 57.025398>,  <52.553391, 54.049534, 56.981697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.505066, 54.280521, 57.025398>,  <52.424526, 54.665501, 57.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.505066, 54.280521, 57.025398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894535, 0.104935, 0.434506,
		-0.399083, -0.250364, 0.882072,
		0.201345, -0.962448, -0.182082,
		52.565468, 53.991787, 56.970776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.919567, 54.494072, 57.556992>,  <52.424526, 54.665501, 57.098232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.919567, 54.494072, 57.556992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.910835, 54.180229, 57.309151>,  <52.905594, 53.991924, 57.160446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.910835, 54.180229, 57.309151>,  <52.919567, 54.494072, 57.556992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.910835, 54.180229, 57.309151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939381, -0.228218, 0.255891,
		-0.342179, -0.576459, 0.742030,
		-0.021834, -0.784609, -0.619606,
		52.904285, 53.944847, 57.123268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.260849, 53.965809, 57.928535>,  <52.919567, 54.494072, 57.556992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.260849, 53.965809, 57.928535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.312405, 53.905144, 57.536537>,  <53.343338, 53.868744, 57.301338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.312405, 53.905144, 57.536537>,  <53.260849, 53.965809, 57.928535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.312405, 53.905144, 57.536537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991437, -0.001230, 0.130583,
		-0.021011, -0.988431, 0.150210,
		0.128888, -0.151668, -0.979992,
		53.351070, 53.859642, 57.242538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.684139, 53.320415, 57.818249>,  <53.260849, 53.965809, 57.928535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.684139, 53.320415, 57.818249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.725628, 53.596977, 57.532257>,  <53.750523, 53.762917, 57.360661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.725628, 53.596977, 57.532257>,  <53.684139, 53.320415, 57.818249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.725628, 53.596977, 57.532257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975934, 0.067887, 0.207229,
		0.191817, -0.719269, -0.667727,
		0.103724, 0.691407, -0.714981,
		53.756744, 53.804398, 57.317764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.439762, 53.239834, 57.493279>,  <53.684139, 53.320415, 57.818249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.439762, 53.239834, 57.493279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.293121, 53.601025, 57.403633>,  <54.205135, 53.817741, 57.349846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.293121, 53.601025, 57.403633>,  <54.439762, 53.239834, 57.493279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.293121, 53.601025, 57.403633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926055, 0.377348, 0.005553,
		0.089584, -0.205509, -0.974546,
		-0.366602, 0.902981, -0.224117,
		54.183140, 53.871918, 57.336399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.798553, 53.492676, 56.927452>,  <54.439762, 53.239834, 57.493279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.798553, 53.492676, 56.927452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.594337, 53.818699, 57.037018>,  <54.471806, 54.014313, 57.102757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.594337, 53.818699, 57.037018>,  <54.798553, 53.492676, 56.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.594337, 53.818699, 57.037018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813445, 0.561066, -0.153336,
		-0.278663, 0.144531, -0.949451,
		-0.510543, 0.815056, 0.273916,
		54.441174, 54.063217, 57.119194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.729694, 54.016357, 56.368160>,  <54.798553, 53.492676, 56.927452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.729694, 54.016357, 56.368160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.743225, 54.144348, 56.746887>,  <54.751343, 54.221142, 56.974125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.743225, 54.144348, 56.746887>,  <54.729694, 54.016357, 56.368160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.743225, 54.144348, 56.746887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790076, 0.571628, -0.221408,
		-0.612075, 0.755551, -0.233468,
		0.033828, 0.319975, 0.946822,
		54.753372, 54.240341, 57.030933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.819386, 54.768005, 56.388786>,  <54.729694, 54.016357, 56.368160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.819386, 54.768005, 56.388786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.950325, 54.567028, 56.708885>,  <55.028889, 54.446442, 56.900944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.950325, 54.567028, 56.708885>,  <54.819386, 54.768005, 56.388786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.950325, 54.567028, 56.708885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842089, 0.539307, -0.005856,
		-0.428637, 0.675798, 0.599640,
		0.327347, -0.502440, 0.800249,
		55.048531, 54.416298, 56.948959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.758625, 55.093307, 57.076328>,  <54.819386, 54.768005, 56.388786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.758625, 55.093307, 57.076328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.075111, 54.857372, 57.011734>,  <55.265003, 54.715813, 56.972977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.075111, 54.857372, 57.011734>,  <54.758625, 55.093307, 57.076328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.075111, 54.857372, 57.011734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605043, 0.793413, 0.066470,
		0.088916, -0.150295, 0.984635,
		0.791212, -0.589836, -0.161482,
		55.312473, 54.680420, 56.963287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.275135, 55.390022, 57.446815>,  <54.758625, 55.093307, 57.076328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.275135, 55.390022, 57.446815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.445259, 55.195137, 57.141731>,  <55.547333, 55.078205, 56.958679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.445259, 55.195137, 57.141731>,  <55.275135, 55.390022, 57.446815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.445259, 55.195137, 57.141731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752210, 0.658922, -0.001457,
		0.503278, -0.573101, 0.646735,
		0.425313, -0.487214, -0.762713,
		55.572853, 55.048973, 56.912918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.011921, 55.281281, 57.660416>,  <55.275135, 55.390022, 57.446815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.011921, 55.281281, 57.660416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.928009, 55.299896, 57.269760>,  <55.877663, 55.311066, 57.035366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.928009, 55.299896, 57.269760>,  <56.011921, 55.281281, 57.660416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.928009, 55.299896, 57.269760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647867, 0.754731, -0.103196,
		0.732298, -0.654382, -0.188479,
		-0.209781, 0.046539, -0.976640,
		55.865074, 55.313858, 56.976768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.628719, 55.222034, 57.217434>,  <56.011921, 55.281281, 57.660416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.628719, 55.222034, 57.217434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.350075, 55.450867, 57.044250>,  <56.182888, 55.588165, 56.940342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.350075, 55.450867, 57.044250>,  <56.628719, 55.222034, 57.217434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.350075, 55.450867, 57.044250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647980, 0.760739, -0.037388,
		0.307976, -0.306590, -0.900640,
		-0.696615, 0.572083, -0.432954,
		56.141090, 55.622490, 56.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.871983, 55.399666, 56.554836>,  <56.628719, 55.222034, 57.217434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.871983, 55.399666, 56.554836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.617546, 55.655319, 56.727760>,  <56.464886, 55.808712, 56.831516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.617546, 55.655319, 56.727760>,  <56.871983, 55.399666, 56.554836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.617546, 55.655319, 56.727760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758036, 0.622250, 0.195413,
		-0.144112, 0.452010, -0.880295,
		-0.636092, 0.639134, 0.432313,
		56.426720, 55.847061, 56.857452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.772339, 56.086258, 56.105156>,  <56.871983, 55.399666, 56.554836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.772339, 56.086258, 56.105156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.703255, 56.136887, 56.495880>,  <56.661804, 56.167263, 56.730312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.703255, 56.136887, 56.495880>,  <56.772339, 56.086258, 56.105156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.703255, 56.136887, 56.495880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640741, 0.767633, 0.013823,
		-0.748079, 0.628267, -0.213679,
		-0.172711, 0.126572, 0.976806,
		56.651440, 56.174858, 56.788921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.672321, 56.742226, 56.198475>,  <56.772339, 56.086258, 56.105156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.672321, 56.742226, 56.198475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.800941, 56.626022, 56.558968>,  <56.878113, 56.556301, 56.775261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.800941, 56.626022, 56.558968>,  <56.672321, 56.742226, 56.198475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.800941, 56.626022, 56.558968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827132, 0.549483, -0.117988,
		-0.460932, 0.783373, 0.416975,
		0.321550, -0.290509, 0.901227,
		56.897408, 56.538868, 56.829334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.994923, 57.325871, 56.584843>,  <56.672321, 56.742226, 56.198475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.994923, 57.325871, 56.584843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.152466, 56.978035, 56.703964>,  <57.246990, 56.769333, 56.775436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.152466, 56.978035, 56.703964>,  <56.994923, 57.325871, 56.584843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.152466, 56.978035, 56.703964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918139, 0.356838, -0.172298,
		0.043559, 0.341290, 0.938948,
		0.393856, -0.869591, 0.297808,
		57.270622, 56.717159, 56.793308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.645897, 57.453442, 56.927776>,  <56.994923, 57.325871, 56.584843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.645897, 57.453442, 56.927776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.688477, 57.068966, 56.825966>,  <57.714024, 56.838280, 56.764881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.688477, 57.068966, 56.825966>,  <57.645897, 57.453442, 56.927776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.688477, 57.068966, 56.825966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918676, 0.193005, -0.344649,
		0.380398, -0.197139, 0.903567,
		0.106449, -0.961189, -0.254526,
		57.720413, 56.780609, 56.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.280918, 57.179184, 57.236279>,  <57.645897, 57.453442, 56.927776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.280918, 57.179184, 57.236279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.211899, 56.985306, 56.893280>,  <58.170486, 56.868980, 56.687481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.211899, 56.985306, 56.893280>,  <58.280918, 57.179184, 57.236279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.211899, 56.985306, 56.893280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912595, 0.248939, -0.324346,
		0.370673, -0.838511, 0.399375,
		-0.172548, -0.484694, -0.857496,
		58.160133, 56.839897, 56.636032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.636070, 56.483589, 57.003124>,  <58.280918, 57.179184, 57.236279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.636070, 56.483589, 57.003124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.568222, 56.768562, 56.730751>,  <58.527512, 56.939545, 56.567326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.568222, 56.768562, 56.730751>,  <58.636070, 56.483589, 57.003124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.568222, 56.768562, 56.730751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978004, 0.036576, -0.205352,
		-0.121394, -0.700786, -0.702967,
		-0.169620, 0.712433, -0.680932,
		58.517338, 56.982292, 56.526470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.025627, 56.337448, 56.491318>,  <58.636070, 56.483589, 57.003124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.025627, 56.337448, 56.491318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.942978, 56.723206, 56.425285>,  <58.893387, 56.954659, 56.385666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.942978, 56.723206, 56.425285>,  <59.025627, 56.337448, 56.491318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.942978, 56.723206, 56.425285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972166, 0.183317, -0.145902,
		-0.110444, -0.190637, -0.975428,
		-0.206627, 0.964392, -0.165084,
		58.880989, 57.012524, 56.375759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.956829, 55.679859, 56.479568>,  <59.025627, 56.337448, 56.491318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.956829, 55.679859, 56.479568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.294212, 55.649143, 56.266899>,  <59.496643, 55.630714, 56.139297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.294212, 55.649143, 56.266899>,  <58.956829, 55.679859, 56.479568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.294212, 55.649143, 56.266899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520632, 0.360695, 0.773849,
		0.132347, -0.929518, 0.344212,
		0.843462, -0.076791, -0.531673,
		59.547249, 55.626106, 56.107399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.357800, 55.443024, 56.956211>,  <58.956829, 55.679859, 56.479568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.357800, 55.443024, 56.956211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.554367, 55.627506, 56.660698>,  <59.672306, 55.738197, 56.483391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.554367, 55.627506, 56.660698>,  <59.357800, 55.443024, 56.956211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.554367, 55.627506, 56.660698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495685, 0.549368, 0.672675,
		0.716106, -0.696765, 0.041354,
		0.491415, 0.461208, -0.738782,
		59.701790, 55.765869, 56.439064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.965523, 55.911945, 56.972851>,  <59.357800, 55.443024, 56.956211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.965523, 55.911945, 56.972851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.881462, 56.137970, 56.653717>,  <59.831024, 56.273582, 56.462234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.881462, 56.137970, 56.653717>,  <59.965523, 55.911945, 56.972851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.881462, 56.137970, 56.653717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950885, -0.071573, -0.301156,
		-0.227274, -0.821942, -0.522263,
		-0.210153, 0.565057, -0.797839,
		59.818417, 56.307487, 56.414364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.166130, 55.454006, 56.427788>,  <59.965523, 55.911945, 56.972851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.166130, 55.454006, 56.427788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.164879, 55.845455, 56.345528>,  <60.164127, 56.080326, 56.296173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.164879, 55.845455, 56.345528>,  <60.166130, 55.454006, 56.427788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.164879, 55.845455, 56.345528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998082, -0.009661, -0.061151,
		-0.061831, -0.205444, -0.976714,
		-0.003127, 0.978621, -0.205647,
		60.163940, 56.139042, 56.283833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.473129, 55.488247, 55.785683>,  <60.166130, 55.454006, 56.427788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.473129, 55.488247, 55.785683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.517372, 55.786678, 56.048325>,  <60.543919, 55.965736, 56.205910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.517372, 55.786678, 56.048325>,  <60.473129, 55.488247, 55.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.517372, 55.786678, 56.048325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993744, -0.093321, -0.061354,
		0.015500, 0.659286, -0.751733,
		0.110603, 0.746079, 0.656608,
		60.550552, 56.010502, 56.245308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.844479, 55.940201, 55.435013>,  <60.473129, 55.488247, 55.785683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.844479, 55.940201, 55.435013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.891296, 55.935738, 55.832237>,  <60.919388, 55.933060, 56.070572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.891296, 55.935738, 55.832237>,  <60.844479, 55.940201, 55.435013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.891296, 55.935738, 55.832237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987274, -0.107092, -0.117562,
		0.107662, 0.994186, -0.001516,
		0.117041, -0.011160, 0.993064,
		60.926407, 55.932388, 56.130157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.446785, 56.433937, 55.769466>,  <60.844479, 55.940201, 55.435013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.446785, 56.433937, 55.769466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.363289, 56.096466, 55.967308>,  <61.313190, 55.893982, 56.086014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.363289, 56.096466, 55.967308>,  <61.446785, 56.433937, 55.769466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.363289, 56.096466, 55.967308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977970, -0.180546, 0.104772,
		0.000904, 0.505576, 0.862782,
		-0.208742, -0.843680, 0.494601,
		61.300667, 55.843361, 56.115688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.762993, 56.449100, 56.464081>,  <61.446785, 56.433937, 55.769466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.762993, 56.449100, 56.464081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.749954, 56.064377, 56.355370>,  <61.742130, 55.833542, 56.290142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.749954, 56.064377, 56.355370>,  <61.762993, 56.449100, 56.464081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.749954, 56.064377, 56.355370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983739, -0.078923, 0.161334,
		-0.176622, -0.262096, 0.948741,
		-0.032593, -0.961809, -0.271774,
		61.740177, 55.775833, 56.273838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.390285, 56.470852, 56.731628>,  <61.762993, 56.449100, 56.464081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.390285, 56.470852, 56.731628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.253128, 56.132240, 56.568748>,  <62.170834, 55.929073, 56.471020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.253128, 56.132240, 56.568748>,  <62.390285, 56.470852, 56.731628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.253128, 56.132240, 56.568748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930923, -0.364239, -0.026677,
		-0.125734, -0.388215, 0.912952,
		-0.342889, -0.846534, -0.407195,
		62.150261, 55.878281, 56.446590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.070614, 56.422741, 57.189358>,  <62.390285, 56.470852, 56.731628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.070614, 56.422741, 57.189358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.095520, 56.037437, 57.293854>,  <63.110462, 55.806255, 57.356552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.095520, 56.037437, 57.293854>,  <63.070614, 56.422741, 57.189358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.095520, 56.037437, 57.293854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305054, 0.230858, 0.923930,
		-0.950297, -0.137223, -0.279473,
		0.062266, -0.963262, 0.261244,
		63.114201, 55.748459, 57.372227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.637852, 56.931427, 57.509369>,  <63.070614, 56.422741, 57.189358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.637852, 56.931427, 57.509369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.872940, 56.694984, 57.730339>,  <63.013992, 56.553120, 57.862923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.872940, 56.694984, 57.730339>,  <62.637852, 56.931427, 57.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.872940, 56.694984, 57.730339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787980, 0.573070, -0.225118,
		-0.183510, 0.567608, 0.802587,
		0.587717, -0.591111, 0.552428,
		63.049255, 56.517651, 57.896069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.098324, 57.306084, 58.039238>,  <62.637852, 56.931427, 57.509369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.098324, 57.306084, 58.039238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.269394, 56.960564, 57.932693>,  <63.372036, 56.753254, 57.868767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.269394, 56.960564, 57.932693>,  <63.098324, 57.306084, 58.039238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.269394, 56.960564, 57.932693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770361, 0.502459, -0.392530,
		0.472903, -0.037321, 0.880324,
		0.427676, -0.863795, -0.266365,
		63.397697, 56.701424, 57.852783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.855980, 57.153160, 58.378880>,  <63.098324, 57.306084, 58.039238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.855980, 57.153160, 58.378880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.765503, 57.008461, 58.017113>,  <63.711216, 56.921642, 57.800053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.765503, 57.008461, 58.017113>,  <63.855980, 57.153160, 58.378880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.765503, 57.008461, 58.017113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780691, 0.487951, -0.390417,
		0.582546, -0.794381, 0.172046,
		-0.226190, -0.361750, -0.904420,
		63.697647, 56.899937, 57.745789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.281029, 56.662350, 57.942223>,  <63.855980, 57.153160, 58.378880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.281029, 56.662350, 57.942223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.140640, 56.942112, 57.693176>,  <64.056412, 57.109970, 57.543747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.140640, 56.942112, 57.693176>,  <64.281029, 56.662350, 57.942223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.140640, 56.942112, 57.693176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936332, 0.269423, -0.225151,
		0.010275, -0.661996, -0.749437,
		-0.350964, 0.699409, -0.622616,
		64.035355, 57.151936, 57.506390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.864899, 57.036274, 57.879925>,  <64.281029, 56.662350, 57.942223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.864899, 57.036274, 57.879925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.098007, 56.783165, 57.675972>,  <65.237869, 56.631298, 57.553600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.098007, 56.783165, 57.675972>,  <64.864899, 57.036274, 57.879925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.098007, 56.783165, 57.675972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789884, 0.293632, 0.538390,
		-0.190963, -0.716502, 0.670938,
		0.582766, -0.632776, -0.509880,
		65.272835, 56.593330, 57.523006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.191376, 56.682964, 58.393017>,  <64.864899, 57.036274, 57.879925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.191376, 56.682964, 58.393017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.422234, 56.631645, 58.070419>,  <65.560753, 56.600853, 57.876862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.422234, 56.631645, 58.070419>,  <65.191376, 56.682964, 58.393017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.422234, 56.631645, 58.070419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811416, 0.201595, 0.548602,
		0.092202, -0.971030, 0.220453,
		0.577151, -0.128297, -0.806496,
		65.595383, 56.593155, 57.828472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.758232, 56.320480, 58.587273>,  <65.191376, 56.682964, 58.393017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.758232, 56.320480, 58.587273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.878059, 56.493752, 58.247246>,  <65.949959, 56.597713, 58.043228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.878059, 56.493752, 58.247246>,  <65.758232, 56.320480, 58.587273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.878059, 56.493752, 58.247246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872972, 0.235039, 0.427407,
		0.384941, -0.870124, -0.307740,
		0.299567, 0.433175, -0.850070,
		65.967926, 56.623703, 57.992226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.495613, 56.110790, 58.257442>,  <65.758232, 56.320480, 58.587273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.495613, 56.110790, 58.257442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.380348, 56.486809, 58.184464>,  <66.311188, 56.712418, 58.140675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.380348, 56.486809, 58.184464>,  <66.495613, 56.110790, 58.257442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.380348, 56.486809, 58.184464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812673, 0.340844, 0.472639,
		0.506488, -0.012080, -0.862162,
		-0.288153, 0.940042, -0.182451,
		66.293900, 56.768822, 58.129726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.876472, 56.636513, 57.794704>,  <66.495613, 56.110790, 58.257442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.876472, 56.636513, 57.794704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.701111, 56.855862, 58.079544>,  <66.595894, 56.987473, 58.250450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.701111, 56.855862, 58.079544>,  <66.876472, 56.636513, 57.794704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.701111, 56.855862, 58.079544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898778, 0.267944, 0.346993,
		-0.000523, 0.792145, -0.610332,
		-0.438404, 0.548371, 0.712103,
		66.569588, 57.020374, 58.293175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.013870, 57.316479, 57.813435>,  <66.876472, 56.636513, 57.794704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.013870, 57.316479, 57.813435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.975723, 57.151978, 58.176041>,  <66.952835, 57.053276, 58.393604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.975723, 57.151978, 58.176041>,  <67.013870, 57.316479, 57.813435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.975723, 57.151978, 58.176041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959910, 0.203139, 0.193152,
		-0.263584, 0.888595, 0.375396,
		-0.095376, -0.411258, 0.906516,
		66.947113, 57.028599, 58.447994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.365936, 57.745369, 58.275181>,  <67.013870, 57.316479, 57.813435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.365936, 57.745369, 58.275181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.349648, 57.388050, 58.454231>,  <67.339874, 57.173660, 58.561661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.349648, 57.388050, 58.454231>,  <67.365936, 57.745369, 58.275181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.349648, 57.388050, 58.454231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977528, 0.057117, 0.202919,
		-0.206834, 0.445828, 0.870894,
		-0.040724, -0.893294, 0.447623,
		67.337433, 57.120060, 58.588520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.615013, 57.811432, 58.890408>,  <67.365936, 57.745369, 58.275181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.615013, 57.811432, 58.890408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.702766, 57.437000, 58.780411>,  <67.755417, 57.212341, 58.714413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.702766, 57.437000, 58.780411>,  <67.615013, 57.811432, 58.890408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.702766, 57.437000, 58.780411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975585, 0.207588, 0.071696,
		-0.010029, -0.284004, 0.958771,
		0.219391, -0.936082, -0.274988,
		67.768585, 57.156178, 58.697914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.016502, 57.415401, 59.371716>,  <67.615013, 57.811432, 58.890408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.016502, 57.415401, 59.371716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100861, 57.325630, 58.991158>,  <68.151474, 57.271767, 58.762821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100861, 57.325630, 58.991158>,  <68.016502, 57.415401, 59.371716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.100861, 57.325630, 58.991158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930988, 0.342793, 0.125517,
		0.297963, -0.912209, 0.281233,
		0.210903, -0.224425, -0.951396,
		68.164131, 57.258301, 58.705738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.828102, 57.488983, 60.102570>,  <68.016502, 57.415401, 59.371716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.828102, 57.488983, 60.102570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100639, 57.205574, 60.029045>,  <68.264160, 57.035530, 59.984932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.100639, 57.205574, 60.029045>,  <67.828102, 57.488983, 60.102570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.100639, 57.205574, 60.029045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731878, 0.655372, 0.186661,
		-0.011790, -0.261704, 0.965076,
		0.681334, -0.708518, -0.183808,
		68.305038, 56.993019, 59.973904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.283478, 57.366531, 60.695862>,  <67.828102, 57.488983, 60.102570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.283478, 57.366531, 60.695862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.457695, 57.274239, 60.347824>,  <68.562225, 57.218864, 60.139000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.457695, 57.274239, 60.347824>,  <68.283478, 57.366531, 60.695862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.457695, 57.274239, 60.347824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877378, 0.324928, 0.353028,
		0.201263, -0.917162, 0.343959,
		0.435546, -0.230731, -0.870094,
		68.588356, 57.205021, 60.086796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.819122, 56.799438, 60.783745>,  <68.283478, 57.366531, 60.695862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.819122, 56.799438, 60.783745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.877831, 57.093800, 60.519348>,  <68.913055, 57.270416, 60.360710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.877831, 57.093800, 60.519348>,  <68.819122, 56.799438, 60.783745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.877831, 57.093800, 60.519348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850232, 0.247652, 0.464515,
		0.505532, -0.630174, -0.589337,
		0.146775, 0.735900, -0.660990,
		68.921860, 57.314571, 60.321053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.635071, 56.801376, 60.539536>,  <68.819122, 56.799438, 60.783745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.635071, 56.801376, 60.539536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.446465, 57.152683, 60.507744>,  <69.333298, 57.363468, 60.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.446465, 57.152683, 60.507744>,  <69.635071, 56.801376, 60.539536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.446465, 57.152683, 60.507744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797760, 0.463227, 0.386004,
		0.375831, 0.118604, -0.919067,
		-0.471518, 0.878267, -0.079477,
		69.305008, 57.416164, 60.483902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.106071, 57.274567, 60.006348>,  <69.635071, 56.801376, 60.539536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.106071, 57.274567, 60.006348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.876762, 57.495075, 60.248817>,  <69.739174, 57.627380, 60.394299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.876762, 57.495075, 60.248817>,  <70.106071, 57.274567, 60.006348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.876762, 57.495075, 60.248817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795261, 0.552468, 0.249679,
		-0.197251, 0.625204, -0.755124,
		-0.573282, 0.551271, 0.606175,
		69.704781, 57.660458, 60.430672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.165123, 58.018951, 59.875938>,  <70.106071, 57.274567, 60.006348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.165123, 58.018951, 59.875938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.075768, 57.935997, 60.256905>,  <70.022156, 57.886223, 60.485485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.075768, 57.935997, 60.256905>,  <70.165123, 58.018951, 59.875938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.075768, 57.935997, 60.256905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745633, 0.592968, 0.304007,
		-0.627797, 0.778061, 0.022172,
		-0.223388, -0.207387, 0.952412,
		70.008751, 57.873779, 60.542629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.018745, 58.641060, 60.342674>,  <70.165123, 58.018951, 59.875938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.018745, 58.641060, 60.342674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.166977, 58.330811, 60.547058>,  <70.255913, 58.144661, 60.669689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.166977, 58.330811, 60.547058>,  <70.018745, 58.641060, 60.342674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.166977, 58.330811, 60.547058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758445, 0.570251, 0.315554,
		-0.536127, 0.270597, 0.799591,
		0.370579, -0.775623, 0.510960,
		70.278152, 58.098125, 60.700348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.222374, 58.952843, 61.008785>,  <70.018745, 58.641060, 60.342674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.222374, 58.952843, 61.008785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.405716, 58.601738, 60.953026>,  <70.515724, 58.391075, 60.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.405716, 58.601738, 60.953026>,  <70.222374, 58.952843, 61.008785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.405716, 58.601738, 60.953026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849392, 0.386466, 0.359413,
		-0.261607, -0.283146, 0.922708,
		0.458361, -0.877766, -0.139400,
		70.543221, 58.338409, 60.911205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.538681, 58.796566, 61.586304>,  <70.222374, 58.952843, 61.008785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.538681, 58.796566, 61.586304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.767136, 58.570740, 61.347954>,  <70.904213, 58.435246, 61.204945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.767136, 58.570740, 61.347954>,  <70.538681, 58.796566, 61.586304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.767136, 58.570740, 61.347954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814103, 0.296702, 0.499204,
		-0.105037, -0.770217, 0.629073,
		0.571143, -0.564565, -0.595871,
		70.938477, 58.401371, 61.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.953590, 58.412025, 62.082699>,  <70.538681, 58.796566, 61.586304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.953590, 58.412025, 62.082699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.144707, 58.472099, 61.736481>,  <71.259377, 58.508144, 61.528751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.144707, 58.472099, 61.736481>,  <70.953590, 58.412025, 62.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.144707, 58.472099, 61.736481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877410, -0.033113, 0.478597,
		0.043216, -0.988104, -0.147592,
		0.477790, 0.150182, -0.865541,
		71.288040, 58.517155, 61.476818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.347809, 57.781849, 61.804653>,  <70.953590, 58.412025, 62.082699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.347809, 57.781849, 61.804653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.532463, 58.115135, 61.682907>,  <71.643257, 58.315105, 61.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.532463, 58.115135, 61.682907>,  <71.347809, 57.781849, 61.804653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.532463, 58.115135, 61.682907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709913, -0.141288, 0.689972,
		0.531891, -0.534596, -0.656734,
		0.461645, 0.833214, -0.304366,
		71.670959, 58.365101, 61.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.137093, 57.747566, 61.406166>,  <71.347809, 57.781849, 61.804653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.137093, 57.747566, 61.406166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.055862, 58.066589, 61.633377>,  <72.007126, 58.258003, 61.769703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.055862, 58.066589, 61.633377>,  <72.137093, 57.747566, 61.406166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.055862, 58.066589, 61.633377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667237, -0.311859, 0.676416,
		0.716628, 0.516372, -0.468833,
		-0.203072, 0.797561, 0.568030,
		71.994942, 58.305859, 61.803787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.623444, 57.697170, 60.827168>,  <72.137093, 57.747566, 61.406166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.623444, 57.697170, 60.827168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.919250, 57.597713, 60.576958>,  <73.096733, 57.538040, 60.426830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.919250, 57.597713, 60.576958>,  <72.623444, 57.697170, 60.827168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.919250, 57.597713, 60.576958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263625, -0.962028, 0.070738,
		-0.619362, 0.112592, -0.776990,
		0.739522, -0.248646, -0.625526,
		73.141106, 57.523121, 60.389301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.729790, 58.274479, 60.251568>,  <72.623444, 57.697170, 60.827168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.729790, 58.274479, 60.251568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.092590, 58.141251, 60.148476>,  <73.310272, 58.061314, 60.086620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.092590, 58.141251, 60.148476>,  <72.729790, 58.274479, 60.251568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.092590, 58.141251, 60.148476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218192, -0.151789, 0.964029,
		-0.360213, -0.930603, -0.064998,
		0.906994, -0.333074, -0.257727,
		73.364685, 58.041328, 60.071159>
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
