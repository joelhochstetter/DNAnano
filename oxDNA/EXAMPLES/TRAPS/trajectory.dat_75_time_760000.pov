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
	<36.447147, 52.877262, 49.377254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604530, 52.630508, 49.649914>,  <36.698959, 52.482456, 49.813511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604530, 52.630508, 49.649914>,  <36.447147, 52.877262, 49.377254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604530, 52.630508, 49.649914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919168, 0.278452, -0.278559,
		-0.017966, 0.736149, 0.676581,
		0.393457, -0.616887, 0.681647,
		36.722569, 52.445442, 49.854408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036366, 53.121376, 49.938812>,  <36.447147, 52.877262, 49.377254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036366, 53.121376, 49.938812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141132, 52.746193, 49.847923>,  <37.203995, 52.521084, 49.793388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141132, 52.746193, 49.847923>,  <37.036366, 53.121376, 49.938812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141132, 52.746193, 49.847923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842316, 0.337095, -0.420561,
		0.471064, -0.081240, 0.878350,
		0.261921, -0.937959, -0.227223,
		37.219707, 52.464806, 49.779755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596222, 52.949299, 50.237770>,  <37.036366, 53.121376, 49.938812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596222, 52.949299, 50.237770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583004, 52.716717, 49.912605>,  <37.575073, 52.577168, 49.717506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583004, 52.716717, 49.912605>,  <37.596222, 52.949299, 50.237770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583004, 52.716717, 49.912605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971004, 0.174005, -0.163931,
		0.236768, -0.794755, 0.558843,
		-0.033044, -0.581452, -0.812909,
		37.573090, 52.542282, 49.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004017, 52.274933, 50.419888>,  <37.596222, 52.949299, 50.237770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004017, 52.274933, 50.419888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030685, 52.386059, 50.036560>,  <38.046688, 52.452736, 49.806564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030685, 52.386059, 50.036560>,  <38.004017, 52.274933, 50.419888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030685, 52.386059, 50.036560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997645, -0.003070, 0.068517,
		0.016092, -0.960630, -0.277364,
		0.066671, 0.277814, -0.958319,
		38.050686, 52.469402, 49.749065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487553, 51.806770, 50.095367>,  <38.004017, 52.274933, 50.419888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487553, 51.806770, 50.095367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477657, 52.147888, 49.886703>,  <38.471722, 52.352558, 49.761505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477657, 52.147888, 49.886703>,  <38.487553, 51.806770, 50.095367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477657, 52.147888, 49.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994236, -0.033468, -0.101861,
		-0.104326, -0.521170, -0.847052,
		-0.024738, 0.852796, -0.521658,
		38.470238, 52.403728, 49.730206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848648, 51.690243, 49.602417>,  <38.487553, 51.806770, 50.095367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848648, 51.690243, 49.602417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885578, 52.088036, 49.622375>,  <38.907734, 52.326710, 49.634350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885578, 52.088036, 49.622375>,  <38.848648, 51.690243, 49.602417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885578, 52.088036, 49.622375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993247, -0.088440, -0.075093,
		-0.070265, 0.056495, -0.995927,
		0.092322, 0.994478, 0.049899,
		38.913277, 52.386379, 49.637344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091232, 52.070278, 48.912228>,  <38.848648, 51.690243, 49.602417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091232, 52.070278, 48.912228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187866, 52.208206, 49.275047>,  <39.245846, 52.290962, 49.492741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187866, 52.208206, 49.275047>,  <39.091232, 52.070278, 48.912228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187866, 52.208206, 49.275047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935380, -0.331528, -0.123100,
		0.258265, 0.878175, -0.402627,
		0.241585, 0.344816, 0.907049,
		39.260342, 52.311649, 49.547161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664165, 52.507019, 48.950016>,  <39.091232, 52.070278, 48.912228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664165, 52.507019, 48.950016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675251, 52.377823, 49.328415>,  <39.681904, 52.300304, 49.555454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675251, 52.377823, 49.328415>,  <39.664165, 52.507019, 48.950016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675251, 52.377823, 49.328415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999305, -0.014651, -0.034279,
		0.024932, 0.946288, 0.322363,
		0.027715, -0.322993, 0.945995,
		39.683567, 52.280926, 49.612213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172359, 52.943638, 49.271320>,  <39.664165, 52.507019, 48.950016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172359, 52.943638, 49.271320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125683, 52.592411, 49.456955>,  <40.097679, 52.381676, 49.568336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125683, 52.592411, 49.456955>,  <40.172359, 52.943638, 49.271320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125683, 52.592411, 49.456955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993118, -0.107872, 0.045612,
		0.010012, 0.466218, 0.884613,
		-0.116690, -0.878069, 0.464089,
		40.090675, 52.328991, 49.596180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562931, 52.830097, 49.875839>,  <40.172359, 52.943638, 49.271320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562931, 52.830097, 49.875839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513424, 52.495510, 49.662300>,  <40.483719, 52.294758, 49.534176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513424, 52.495510, 49.662300>,  <40.562931, 52.830097, 49.875839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513424, 52.495510, 49.662300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970163, 0.011027, -0.242204,
		0.208484, -0.547901, 0.810148,
		-0.123770, -0.836471, -0.533852,
		40.476292, 52.244568, 49.502144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995934, 52.332825, 50.210804>,  <40.562931, 52.830097, 49.875839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995934, 52.332825, 50.210804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935204, 52.268021, 49.820789>,  <40.898766, 52.229137, 49.586781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935204, 52.268021, 49.820789>,  <40.995934, 52.332825, 50.210804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935204, 52.268021, 49.820789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986390, -0.087840, -0.138996,
		-0.063130, -0.982872, 0.173137,
		-0.151824, -0.162006, -0.975041,
		40.889656, 52.219418, 49.528278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365631, 51.726521, 49.880718>,  <40.995934, 52.332825, 50.210804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365631, 51.726521, 49.880718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294224, 51.999928, 49.597610>,  <41.251381, 52.163971, 49.427746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294224, 51.999928, 49.597610>,  <41.365631, 51.726521, 49.880718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294224, 51.999928, 49.597610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959484, -0.038440, -0.279129,
		-0.217996, -0.728921, -0.648962,
		-0.178517, 0.683518, -0.707767,
		41.240669, 52.204983, 49.385281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724018, 51.451797, 49.357929>,  <41.365631, 51.726521, 49.880718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724018, 51.451797, 49.357929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695114, 51.850029, 49.333946>,  <41.677773, 52.088970, 49.319557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695114, 51.850029, 49.333946>,  <41.724018, 51.451797, 49.357929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695114, 51.850029, 49.333946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941615, 0.048274, -0.333213,
		-0.328847, -0.080531, -0.940943,
		-0.072257, 0.995582, -0.059955,
		41.673435, 52.148705, 49.315960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134579, 51.640278, 48.762871>,  <41.724018, 51.451797, 49.357929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134579, 51.640278, 48.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113029, 51.962955, 48.998276>,  <42.100101, 52.156563, 49.139519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113029, 51.962955, 48.998276>,  <42.134579, 51.640278, 48.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113029, 51.962955, 48.998276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910050, 0.282237, -0.303564,
		-0.410982, 0.519223, -0.749334,
		-0.053872, 0.806690, 0.588514,
		42.096867, 52.204964, 49.174831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386669, 52.097244, 48.337154>,  <42.134579, 51.640278, 48.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386669, 52.097244, 48.337154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457401, 52.229397, 48.708008>,  <42.499840, 52.308689, 48.930519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457401, 52.229397, 48.708008>,  <42.386669, 52.097244, 48.337154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457401, 52.229397, 48.708008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867479, 0.392705, -0.305389,
		-0.464986, 0.858272, -0.217159,
		0.176827, 0.330383, 0.927135,
		42.510448, 52.328510, 48.986149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596172, 52.725941, 48.168495>,  <42.386669, 52.097244, 48.337154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596172, 52.725941, 48.168495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743702, 52.607861, 48.521046>,  <42.832218, 52.537010, 48.732578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743702, 52.607861, 48.521046>,  <42.596172, 52.725941, 48.168495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743702, 52.607861, 48.521046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886664, 0.396282, -0.238303,
		-0.278926, 0.869377, 0.407902,
		0.368820, -0.295203, 0.881378,
		42.854347, 52.519299, 48.785458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006580, 53.213371, 48.403770>,  <42.596172, 52.725941, 48.168495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006580, 53.213371, 48.403770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149288, 52.879131, 48.570858>,  <43.234913, 52.678589, 48.671112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149288, 52.879131, 48.570858>,  <43.006580, 53.213371, 48.403770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149288, 52.879131, 48.570858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920724, 0.238857, -0.308569,
		0.158064, 0.494696, 0.854571,
		0.356768, -0.835598, 0.417724,
		43.256317, 52.628452, 48.696175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675747, 53.406696, 48.091789>,  <43.006580, 53.213371, 48.403770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675747, 53.406696, 48.091789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566540, 53.079628, 47.889057>,  <43.501015, 52.883389, 47.767418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566540, 53.079628, 47.889057>,  <43.675747, 53.406696, 48.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566540, 53.079628, 47.889057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887399, -0.417488, 0.195517,
		-0.371464, -0.396381, 0.839581,
		-0.273016, -0.817671, -0.506830,
		43.484634, 52.834328, 47.737007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910473, 52.871513, 48.530155>,  <43.675747, 53.406696, 48.091789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910473, 52.871513, 48.530155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857159, 52.797642, 48.140667>,  <43.825169, 52.753319, 47.906975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857159, 52.797642, 48.140667>,  <43.910473, 52.871513, 48.530155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857159, 52.797642, 48.140667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901282, -0.431233, -0.041584,
		-0.412220, -0.883138, 0.223923,
		-0.133288, -0.184676, -0.973719,
		43.817173, 52.742237, 47.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120922, 52.222805, 48.456772>,  <43.910473, 52.871513, 48.530155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120922, 52.222805, 48.456772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152027, 52.394699, 48.096931>,  <44.170689, 52.497837, 47.881027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152027, 52.394699, 48.096931>,  <44.120922, 52.222805, 48.456772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152027, 52.394699, 48.096931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955352, -0.290113, -0.056004,
		-0.285052, -0.855080, -0.433110,
		0.077762, 0.429736, -0.899600,
		44.175354, 52.523621, 47.827053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571056, 51.784863, 47.989079>,  <44.120922, 52.222805, 48.456772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571056, 51.784863, 47.989079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603245, 52.173779, 47.901283>,  <44.622559, 52.407127, 47.848606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603245, 52.173779, 47.901283>,  <44.571056, 51.784863, 47.989079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603245, 52.173779, 47.901283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996752, -0.077823, 0.020711,
		0.003056, -0.220442, -0.975395,
		0.080474, 0.972291, -0.219488,
		44.627388, 52.465466, 47.835438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991833, 51.939358, 47.419811>,  <44.571056, 51.784863, 47.989079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991833, 51.939358, 47.419811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009182, 52.253906, 47.666306>,  <45.019592, 52.442635, 47.814201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009182, 52.253906, 47.666306>,  <44.991833, 51.939358, 47.419811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009182, 52.253906, 47.666306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999010, -0.028007, -0.034569,
		-0.009925, 0.617122, -0.786805,
		0.043370, 0.786369, 0.616233,
		45.022194, 52.489819, 47.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351994, 52.464874, 47.095150>,  <44.991833, 51.939358, 47.419811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351994, 52.464874, 47.095150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376244, 52.442917, 47.493809>,  <45.390793, 52.429745, 47.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376244, 52.442917, 47.493809>,  <45.351994, 52.464874, 47.095150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376244, 52.442917, 47.493809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998007, 0.020811, -0.059566,
		-0.017471, 0.998276, 0.056041,
		0.060630, -0.054889, 0.996650,
		45.394432, 52.426449, 47.792805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984863, 52.647888, 47.212368>,  <45.351994, 52.464874, 47.095150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984863, 52.647888, 47.212368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924343, 52.479416, 47.570076>,  <45.888031, 52.378334, 47.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924343, 52.479416, 47.570076>,  <45.984863, 52.647888, 47.212368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924343, 52.479416, 47.570076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968139, -0.245757, 0.048057,
		0.199532, 0.873046, 0.444947,
		-0.151305, -0.421182, 0.894267,
		45.878952, 52.353062, 47.838356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488781, 52.976120, 47.736794>,  <45.984863, 52.647888, 47.212368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488781, 52.976120, 47.736794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358437, 52.627136, 47.882462>,  <46.280228, 52.417744, 47.969864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358437, 52.627136, 47.882462>,  <46.488781, 52.976120, 47.736794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358437, 52.627136, 47.882462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945415, -0.300056, 0.127108,
		-0.001625, 0.385711, 0.922618,
		-0.325864, -0.872464, 0.364170,
		46.260677, 52.365398, 47.991711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728470, 52.911213, 48.371117>,  <46.488781, 52.976120, 47.736794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728470, 52.911213, 48.371117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681656, 52.552895, 48.199604>,  <46.653568, 52.337906, 48.096695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681656, 52.552895, 48.199604>,  <46.728470, 52.911213, 48.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681656, 52.552895, 48.199604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958223, -0.215316, 0.188274,
		-0.260979, -0.388835, 0.883571,
		-0.117039, -0.895794, -0.428783,
		46.646545, 52.284157, 48.070969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017658, 52.342609, 48.776020>,  <46.728470, 52.911213, 48.371117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017658, 52.342609, 48.776020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010216, 52.301590, 48.378197>,  <47.005749, 52.276978, 48.139503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010216, 52.301590, 48.378197>,  <47.017658, 52.342609, 48.776020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.010216, 52.301590, 48.378197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991802, -0.127670, -0.005389,
		-0.126423, -0.986501, 0.104083,
		-0.018605, -0.102549, -0.994554,
		47.004635, 52.270824, 48.079830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379910, 51.767494, 48.578930>,  <47.017658, 52.342609, 48.776020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379910, 51.767494, 48.578930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390202, 52.047619, 48.293579>,  <47.396378, 52.215694, 48.122368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390202, 52.047619, 48.293579>,  <47.379910, 51.767494, 48.578930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390202, 52.047619, 48.293579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999423, -0.002195, 0.033888,
		0.022166, -0.713833, -0.699965,
		0.025727, 0.700312, -0.713373,
		47.397919, 52.257713, 48.079567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898064, 51.572384, 48.228096>,  <47.379910, 51.767494, 48.578930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898064, 51.572384, 48.228096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828690, 51.943680, 48.096466>,  <47.787067, 52.166458, 48.017487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828690, 51.943680, 48.096466>,  <47.898064, 51.572384, 48.228096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828690, 51.943680, 48.096466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982052, 0.137845, -0.128739,
		-0.074139, -0.345497, -0.935487,
		-0.173431, 0.928241, -0.329076,
		47.776661, 52.222153, 47.997742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.257282, 51.662392, 47.598152>,  <47.898064, 51.572384, 48.228096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.257282, 51.662392, 47.598152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.224815, 52.012695, 47.788502>,  <48.205334, 52.222878, 47.902714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.224815, 52.012695, 47.788502>,  <48.257282, 51.662392, 47.598152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.224815, 52.012695, 47.788502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959343, 0.198141, -0.201001,
		-0.270319, 0.440215, -0.856235,
		-0.081172, 0.875757, 0.475879,
		48.200462, 52.275421, 47.931267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.389961, 52.252052, 47.090958>,  <48.257282, 51.662392, 47.598152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.389961, 52.252052, 47.090958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482937, 52.268017, 47.479675>,  <48.538723, 52.277596, 47.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482937, 52.268017, 47.479675>,  <48.389961, 52.252052, 47.090958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.482937, 52.268017, 47.479675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971617, 0.035645, -0.233858,
		-0.043974, 0.998567, -0.030494,
		0.232436, 0.039913, 0.971792,
		48.552670, 52.279991, 47.771214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.986858, 52.590553, 47.124779>,  <48.389961, 52.252052, 47.090958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.986858, 52.590553, 47.124779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.024948, 52.377895, 47.461418>,  <49.047802, 52.250301, 47.663403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.024948, 52.377895, 47.461418>,  <48.986858, 52.590553, 47.124779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.024948, 52.377895, 47.461418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993702, 0.000605, -0.112056,
		0.059064, 0.846970, 0.528350,
		0.095228, -0.531641, 0.841600,
		49.053516, 52.218403, 47.713898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.572842, 52.757225, 47.486298>,  <48.986858, 52.590553, 47.124779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.572842, 52.757225, 47.486298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.574253, 52.441406, 47.731773>,  <49.575100, 52.251915, 47.879059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.574253, 52.441406, 47.731773>,  <49.572842, 52.757225, 47.486298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.574253, 52.441406, 47.731773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991597, -0.076599, -0.104249,
		0.129316, 0.608897, 0.782638,
		0.003527, -0.789543, 0.613686,
		49.575310, 52.204544, 47.915878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.214165, 52.403618, 47.821190>,  <49.572842, 52.757225, 47.486298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.214165, 52.403618, 47.821190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.201801, 52.720036, 48.065582>,  <50.194386, 52.909885, 48.212219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.201801, 52.720036, 48.065582>,  <50.214165, 52.403618, 47.821190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.201801, 52.720036, 48.065582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984578, -0.081215, 0.154951,
		0.172193, 0.606349, -0.776331,
		-0.030904, 0.791040, 0.610983,
		50.192532, 52.957348, 48.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.763176, 52.917301, 47.653919>,  <50.214165, 52.403618, 47.821190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.763176, 52.917301, 47.653919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.659157, 52.869843, 48.037231>,  <50.596745, 52.841370, 48.267220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.659157, 52.869843, 48.037231>,  <50.763176, 52.917301, 47.653919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.659157, 52.869843, 48.037231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964664, -0.075484, 0.252439,
		0.042385, 0.990064, 0.134080,
		-0.260051, -0.118643, 0.958278,
		50.581142, 52.834251, 48.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.932941, 53.494953, 48.107403>,  <50.763176, 52.917301, 47.653919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.932941, 53.494953, 48.107403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.949902, 53.128654, 48.267212>,  <50.960075, 52.908875, 48.363098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.949902, 53.128654, 48.267212>,  <50.932941, 53.494953, 48.107403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.949902, 53.128654, 48.267212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936191, 0.176068, 0.304213,
		-0.348924, 0.361132, 0.864775,
		0.042398, -0.915742, 0.399523,
		50.962620, 52.853931, 48.387070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.148041, 53.492172, 48.810822>,  <50.932941, 53.494953, 48.107403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.148041, 53.492172, 48.810822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.290009, 53.157879, 48.643211>,  <51.375191, 52.957302, 48.542645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.290009, 53.157879, 48.643211>,  <51.148041, 53.492172, 48.810822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.290009, 53.157879, 48.643211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933891, 0.296162, 0.200340,
		-0.043331, -0.462429, 0.885597,
		0.354923, -0.835732, -0.419025,
		51.396484, 52.907158, 48.517506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.779011, 53.226006, 49.259247>,  <51.148041, 53.492172, 48.810822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.779011, 53.226006, 49.259247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.806442, 53.100101, 48.880569>,  <51.822903, 53.024559, 48.653362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.806442, 53.100101, 48.880569>,  <51.779011, 53.226006, 49.259247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.806442, 53.100101, 48.880569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956118, 0.291667, -0.027708,
		0.284840, -0.903248, 0.320950,
		0.068583, -0.314759, -0.946691,
		51.827019, 53.005672, 48.596561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.383549, 52.808456, 49.211830>,  <51.779011, 53.226006, 49.259247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.383549, 52.808456, 49.211830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.300629, 53.017845, 48.881252>,  <52.250877, 53.143478, 48.682907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.300629, 53.017845, 48.881252>,  <52.383549, 52.808456, 49.211830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.300629, 53.017845, 48.881252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926221, 0.376927, 0.006414,
		0.314865, -0.764137, -0.562988,
		-0.207304, 0.523470, -0.826440,
		52.238438, 53.174885, 48.633320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.024200, 52.667717, 48.796436>,  <52.383549, 52.808456, 49.211830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.024200, 52.667717, 48.796436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.837761, 53.017929, 48.745522>,  <52.725899, 53.228054, 48.714973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.837761, 53.017929, 48.745522>,  <53.024200, 52.667717, 48.796436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.837761, 53.017929, 48.745522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868105, 0.480342, 0.125158,
		0.170723, -0.052166, -0.983937,
		-0.466097, 0.875528, -0.127291,
		52.697933, 53.280586, 48.707333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.450962, 53.068390, 48.411938>,  <53.024200, 52.667717, 48.796436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.450962, 53.068390, 48.411938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.217987, 53.208565, 48.705322>,  <53.078201, 53.292671, 48.881351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.217987, 53.208565, 48.705322>,  <53.450962, 53.068390, 48.411938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.217987, 53.208565, 48.705322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811893, 0.206420, 0.546095,
		0.039972, 0.913555, -0.404746,
		-0.582436, 0.350439, 0.733458,
		53.043255, 53.313698, 48.925362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.769386, 53.682194, 48.697250>,  <53.450962, 53.068390, 48.411938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.769386, 53.682194, 48.697250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.533203, 53.570408, 49.000107>,  <53.391491, 53.503338, 49.181820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.533203, 53.570408, 49.000107>,  <53.769386, 53.682194, 48.697250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.533203, 53.570408, 49.000107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761300, 0.118563, 0.637468,
		-0.267917, 0.952808, 0.142748,
		-0.590460, -0.279463, 0.757138,
		53.356064, 53.486568, 49.227249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.707718, 54.141109, 49.188812>,  <53.769386, 53.682194, 48.697250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.707718, 54.141109, 49.188812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.633308, 53.808422, 49.398056>,  <53.588665, 53.608810, 49.523602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.633308, 53.808422, 49.398056>,  <53.707718, 54.141109, 49.188812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.633308, 53.808422, 49.398056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727481, 0.241270, 0.642308,
		-0.660430, 0.500033, 0.560178,
		-0.186022, -0.831718, 0.523107,
		53.577503, 53.558907, 49.554989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.484070, 54.274940, 49.825516>,  <53.707718, 54.141109, 49.188812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.484070, 54.274940, 49.825516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.703644, 53.941227, 49.804977>,  <53.835388, 53.740997, 49.792656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.703644, 53.941227, 49.804977>,  <53.484070, 54.274940, 49.825516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.703644, 53.941227, 49.804977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661400, 0.395978, 0.636986,
		-0.511098, -0.383623, 0.769163,
		0.548935, -0.834287, -0.051345,
		53.868324, 53.690941, 49.789574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.631393, 54.055408, 50.440369>,  <53.484070, 54.274940, 49.825516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.631393, 54.055408, 50.440369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.918625, 53.869698, 50.232979>,  <54.090965, 53.758270, 50.108547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.918625, 53.869698, 50.232979>,  <53.631393, 54.055408, 50.440369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.918625, 53.869698, 50.232979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657608, 0.208735, 0.723865,
		-0.227852, -0.860741, 0.455201,
		0.718077, -0.464278, -0.518470,
		54.134048, 53.730415, 50.077438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.896690, 53.473328, 50.857349>,  <53.631393, 54.055408, 50.440369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.896690, 53.473328, 50.857349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.172325, 53.602940, 50.598068>,  <54.337708, 53.680706, 50.442501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.172325, 53.602940, 50.598068>,  <53.896690, 53.473328, 50.857349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.172325, 53.602940, 50.598068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648431, 0.123678, 0.751160,
		0.323565, -0.937928, -0.124885,
		0.689089, 0.324028, -0.648199,
		54.379051, 53.700150, 50.403610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.603886, 53.047199, 50.796589>,  <53.896690, 53.473328, 50.857349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.603886, 53.047199, 50.796589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.616264, 53.440502, 50.724751>,  <54.623692, 53.676483, 50.681648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.616264, 53.440502, 50.724751>,  <54.603886, 53.047199, 50.796589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.616264, 53.440502, 50.724751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507286, 0.139370, 0.850433,
		0.861222, -0.117429, -0.494477,
		0.030950, 0.983253, -0.179598,
		54.625549, 53.735477, 50.670872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.299328, 53.247261, 50.842052>,  <54.603886, 53.047199, 50.796589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.299328, 53.247261, 50.842052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070763, 53.565071, 50.924248>,  <54.933624, 53.755756, 50.973564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070763, 53.565071, 50.924248>,  <55.299328, 53.247261, 50.842052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.070763, 53.565071, 50.924248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450658, 0.094530, 0.887677,
		0.685856, 0.599830, -0.412074,
		-0.571409, 0.794524, 0.205484,
		54.899342, 53.803429, 50.985893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.730480, 53.888973, 50.960442>,  <55.299328, 53.247261, 50.842052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.730480, 53.888973, 50.960442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.374786, 53.876648, 51.143005>,  <55.161369, 53.869251, 51.252544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.374786, 53.876648, 51.143005>,  <55.730480, 53.888973, 50.960442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.374786, 53.876648, 51.143005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455155, 0.040144, 0.889507,
		-0.045731, 0.998719, -0.021672,
		-0.889237, -0.030814, 0.456408,
		55.108017, 53.867405, 51.279926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.649548, 54.560127, 51.460964>,  <55.730480, 53.888973, 50.960442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.649548, 54.560127, 51.460964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.480659, 54.216198, 51.575813>,  <55.379326, 54.009842, 51.644722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.480659, 54.216198, 51.575813>,  <55.649548, 54.560127, 51.460964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.480659, 54.216198, 51.575813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493419, 0.047723, 0.868482,
		-0.760440, 0.508363, 0.404101,
		-0.422219, -0.859819, 0.287126,
		55.353992, 53.958252, 51.661953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.324574, 54.564655, 52.155285>,  <55.649548, 54.560127, 51.460964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.324574, 54.564655, 52.155285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.498505, 54.217403, 52.059555>,  <55.602863, 54.009052, 52.002117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.498505, 54.217403, 52.059555>,  <55.324574, 54.564655, 52.155285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.498505, 54.217403, 52.059555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589795, 0.073721, 0.804181,
		-0.680490, -0.490833, 0.544074,
		0.434828, -0.868129, -0.239325,
		55.628952, 53.956966, 51.987759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.298500, 53.945896, 52.630928>,  <55.324574, 54.564655, 52.155285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.298500, 53.945896, 52.630928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.643402, 53.913582, 52.430935>,  <55.850346, 53.894192, 52.310940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.643402, 53.913582, 52.430935>,  <55.298500, 53.945896, 52.630928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.643402, 53.913582, 52.430935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497165, -0.053324, 0.866016,
		-0.096621, -0.995304, -0.005817,
		0.862259, -0.080784, -0.499983,
		55.902081, 53.889347, 52.280941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.712440, 53.322319, 52.884014>,  <55.298500, 53.945896, 52.630928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.712440, 53.322319, 52.884014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.919685, 53.647655, 52.778160>,  <56.044033, 53.842857, 52.714645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.919685, 53.647655, 52.778160>,  <55.712440, 53.322319, 52.884014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.919685, 53.647655, 52.778160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446522, 0.006683, 0.894748,
		0.729505, -0.581747, -0.359712,
		0.518113, 0.813342, -0.264638,
		56.075119, 53.891659, 52.698769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.291904, 53.334377, 53.350430>,  <55.712440, 53.322319, 52.884014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.291904, 53.334377, 53.350430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.266396, 53.714176, 53.227539>,  <56.251091, 53.942055, 53.153805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.266396, 53.714176, 53.227539>,  <56.291904, 53.334377, 53.350430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.266396, 53.714176, 53.227539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104010, 0.312500, 0.944207,
		0.992530, 0.028264, -0.118687,
		-0.063776, 0.949497, -0.307225,
		56.247261, 53.999027, 53.135372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.017792, 53.661842, 53.453644>,  <56.291904, 53.334377, 53.350430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.017792, 53.661842, 53.453644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.750389, 53.954109, 53.509102>,  <56.589947, 54.129467, 53.542377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.750389, 53.954109, 53.509102>,  <57.017792, 53.661842, 53.453644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.750389, 53.954109, 53.509102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340108, 0.134567, 0.930709,
		0.661377, 0.669345, -0.338464,
		-0.668511, 0.730663, 0.138650,
		56.549835, 54.173309, 53.550697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.562565, 54.177223, 53.526299>,  <57.017792, 53.661842, 53.453644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.562565, 54.177223, 53.526299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.466858, 54.244488, 53.143787>,  <57.409435, 54.284847, 52.914280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.466858, 54.244488, 53.143787>,  <57.562565, 54.177223, 53.526299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.466858, 54.244488, 53.143787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919189, -0.278059, -0.278880,
		-0.312800, -0.945730, -0.088041,
		-0.239265, 0.168160, -0.956282,
		57.395077, 54.294937, 52.856903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.045914, 54.560154, 53.124508>,  <57.562565, 54.177223, 53.526299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.045914, 54.560154, 53.124508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.030838, 54.533676, 53.523346>,  <57.021793, 54.517788, 53.762650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.030838, 54.533676, 53.523346>,  <57.045914, 54.560154, 53.124508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.030838, 54.533676, 53.523346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700561, 0.709787, 0.073602,
		-0.712597, 0.701299, 0.019624,
		-0.037688, -0.066196, 0.997095,
		57.019531, 54.513817, 53.822475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.726269, 55.259731, 53.490120>,  <57.045914, 54.560154, 53.124508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.726269, 55.259731, 53.490120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.987625, 55.061726, 53.719219>,  <57.144440, 54.942921, 53.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.987625, 55.061726, 53.719219>,  <56.726269, 55.259731, 53.490120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.987625, 55.061726, 53.719219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620767, 0.783378, -0.031105,
		-0.433284, 0.375869, 0.819139,
		0.653387, -0.495017, 0.572752,
		57.183640, 54.913219, 53.891045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.877926, 55.631630, 54.067860>,  <56.726269, 55.259731, 53.490120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.877926, 55.631630, 54.067860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.187134, 55.425114, 53.920406>,  <57.372658, 55.301205, 53.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.187134, 55.425114, 53.920406>,  <56.877926, 55.631630, 54.067860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.187134, 55.425114, 53.920406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601119, 0.781826, 0.165542,
		0.202737, -0.349558, 0.914717,
		0.773016, -0.516292, -0.368631,
		57.419037, 55.270226, 53.809818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.312012, 56.122578, 54.184017>,  <56.877926, 55.631630, 54.067860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.312012, 56.122578, 54.184017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.549194, 55.835846, 54.037285>,  <57.691505, 55.663807, 53.949245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.549194, 55.835846, 54.037285>,  <57.312012, 56.122578, 54.184017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.549194, 55.835846, 54.037285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758519, 0.650140, -0.044346,
		0.270279, -0.251952, 0.929231,
		0.592957, -0.716825, -0.366830,
		57.727081, 55.620800, 53.927235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.045818, 56.257187, 54.303699>,  <57.312012, 56.122578, 54.184017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.045818, 56.257187, 54.303699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.039696, 56.001724, 53.995964>,  <58.036022, 55.848446, 53.811321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.039696, 56.001724, 53.995964>,  <58.045818, 56.257187, 54.303699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.039696, 56.001724, 53.995964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757006, 0.495274, -0.426198,
		0.653228, -0.588919, 0.475886,
		-0.015303, -0.638653, -0.769342,
		58.035107, 55.810127, 53.765160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.774170, 55.908016, 54.192226>,  <58.045818, 56.257187, 54.303699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.774170, 55.908016, 54.192226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.571060, 55.918591, 53.847794>,  <58.449196, 55.924934, 53.641132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.571060, 55.918591, 53.847794>,  <58.774170, 55.908016, 54.192226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.571060, 55.918591, 53.847794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765796, 0.471698, -0.437101,
		0.394615, -0.881364, -0.259763,
		-0.507774, 0.026439, -0.861084,
		58.418728, 55.926521, 53.589470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.210514, 55.355667, 54.048309>,  <58.774170, 55.908016, 54.192226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.210514, 55.355667, 54.048309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.393303, 55.648521, 54.250359>,  <59.502975, 55.824234, 54.371590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.393303, 55.648521, 54.250359>,  <59.210514, 55.355667, 54.048309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.393303, 55.648521, 54.250359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831082, -0.149066, -0.535800,
		-0.316982, 0.664646, -0.676586,
		0.456973, 0.732137, 0.505124,
		59.530396, 55.868164, 54.401897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.761608, 55.535950, 53.616581>,  <59.210514, 55.355667, 54.048309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.761608, 55.535950, 53.616581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.908913, 55.557224, 53.987862>,  <59.997295, 55.569988, 54.210629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.908913, 55.557224, 53.987862>,  <59.761608, 55.535950, 53.616581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.908913, 55.557224, 53.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872587, -0.364366, -0.325315,
		0.320903, 0.929736, -0.180590,
		0.368258, 0.053186, 0.928201,
		60.019390, 55.573181, 54.266323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.482445, 55.321777, 53.502178>,  <59.761608, 55.535950, 53.616581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.482445, 55.321777, 53.502178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.493607, 55.290100, 53.900764>,  <60.500305, 55.271095, 54.139915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.493607, 55.290100, 53.900764>,  <60.482445, 55.321777, 53.502178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.493607, 55.290100, 53.900764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926600, -0.371930, -0.055510,
		0.375012, 0.924877, 0.062998,
		0.027909, -0.079191, 0.996469,
		60.501980, 55.266342, 54.199703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.126202, 55.562313, 53.683449>,  <60.482445, 55.321777, 53.502178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.126202, 55.562313, 53.683449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.977081, 55.299728, 53.945770>,  <60.887611, 55.142178, 54.103165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.977081, 55.299728, 53.945770>,  <61.126202, 55.562313, 53.683449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.977081, 55.299728, 53.945770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871786, -0.489859, 0.005225,
		0.317823, 0.573671, 0.754911,
		-0.372797, -0.656460, 0.655806,
		60.865242, 55.102791, 54.142513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.609024, 55.630116, 54.145592>,  <61.126202, 55.562313, 53.683449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.609024, 55.630116, 54.145592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.452888, 55.262390, 54.125572>,  <61.359207, 55.041756, 54.113560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.452888, 55.262390, 54.125572>,  <61.609024, 55.630116, 54.145592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.452888, 55.262390, 54.125572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903521, -0.392946, 0.171004,
		-0.176871, 0.021532, 0.983998,
		-0.390340, -0.919310, -0.050046,
		61.335785, 54.986599, 54.110558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.791443, 56.074104, 54.728668>,  <61.609024, 55.630116, 54.145592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.791443, 56.074104, 54.728668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.136032, 55.872597, 54.703117>,  <62.342785, 55.751690, 54.687786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.136032, 55.872597, 54.703117>,  <61.791443, 56.074104, 54.728668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.136032, 55.872597, 54.703117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213988, 0.474211, -0.854010,
		0.460517, 0.722037, 0.516320,
		0.861471, -0.503773, -0.063875,
		62.394474, 55.721466, 54.683956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.384319, 56.579643, 54.783588>,  <61.791443, 56.074104, 54.728668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.384319, 56.579643, 54.783588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.489182, 56.253258, 54.577492>,  <62.552097, 56.057426, 54.453835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.489182, 56.253258, 54.577492>,  <62.384319, 56.579643, 54.783588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.489182, 56.253258, 54.577492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462460, 0.574842, -0.675046,
		0.846998, -0.061313, 0.528049,
		0.262156, -0.815964, -0.515245,
		62.567829, 56.008469, 54.422916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.730736, 56.168659, 55.322388>,  <62.384319, 56.579643, 54.783588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.730736, 56.168659, 55.322388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.110756, 56.055222, 55.270256>,  <63.338768, 55.987160, 55.238979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.110756, 56.055222, 55.270256>,  <62.730736, 56.168659, 55.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.110756, 56.055222, 55.270256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305577, 0.930150, 0.203577,
		0.063491, -0.233233, 0.970346,
		0.950048, -0.283590, -0.130327,
		63.395771, 55.970146, 55.231159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.133053, 56.565453, 55.768639>,  <62.730736, 56.168659, 55.322388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.133053, 56.565453, 55.768639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.408333, 56.417107, 55.519211>,  <63.573502, 56.328098, 55.369556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.408333, 56.417107, 55.519211>,  <63.133053, 56.565453, 55.768639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.408333, 56.417107, 55.519211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549860, 0.827330, 0.114799,
		0.473319, -0.421879, 0.773296,
		0.688203, -0.370868, -0.623566,
		63.614792, 56.305847, 55.332142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.861481, 56.588272, 56.041351>,  <63.133053, 56.565453, 55.768639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.861481, 56.588272, 56.041351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.861435, 56.611141, 55.642006>,  <63.861408, 56.624863, 55.402397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.861435, 56.611141, 55.642006>,  <63.861481, 56.588272, 56.041351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.861435, 56.611141, 55.642006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524056, 0.850294, 0.048636,
		0.851684, -0.523193, -0.030056,
		-0.000110, 0.057173, -0.998364,
		63.861401, 56.628292, 55.342495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.903736, 55.950382, 55.675533>,  <63.861481, 56.588272, 56.041351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.903736, 55.950382, 55.675533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.199333, 55.681961, 55.699471>,  <64.376694, 55.520908, 55.713833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.199333, 55.681961, 55.699471>,  <63.903736, 55.950382, 55.675533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.199333, 55.681961, 55.699471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606039, 0.700926, 0.376058,
		-0.294298, -0.241638, 0.924662,
		0.738990, -0.671054, 0.059839,
		64.421028, 55.480644, 55.717422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.055740, 55.711128, 56.428207>,  <63.903736, 55.950382, 55.675533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.055740, 55.711128, 56.428207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.377548, 55.702957, 56.190781>,  <64.570633, 55.698055, 56.048325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.377548, 55.702957, 56.190781>,  <64.055740, 55.711128, 56.428207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.377548, 55.702957, 56.190781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390645, 0.771005, 0.502939,
		0.447370, -0.636501, 0.628273,
		0.804523, -0.020431, -0.593570,
		64.618904, 55.696827, 56.012711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.442490, 55.775818, 57.030621>,  <64.055740, 55.711128, 56.428207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.442490, 55.775818, 57.030621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.622780, 55.941601, 56.714378>,  <64.730957, 56.041073, 56.524632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.622780, 55.941601, 56.714378>,  <64.442490, 55.775818, 57.030621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.622780, 55.941601, 56.714378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411293, 0.689644, 0.596012,
		0.792262, -0.593814, 0.140379,
		0.450732, 0.414460, -0.790610,
		64.757996, 56.065941, 56.477196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.120918, 55.923203, 57.168644>,  <64.442490, 55.775818, 57.030621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.120918, 55.923203, 57.168644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981636, 56.178417, 56.893936>,  <64.898064, 56.331547, 56.729111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981636, 56.178417, 56.893936>,  <65.120918, 55.923203, 57.168644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.981636, 56.178417, 56.893936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381541, 0.765657, 0.517876,
		0.856258, -0.081704, -0.510046,
		-0.348208, 0.638039, -0.686773,
		64.877174, 56.369827, 56.687904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.631821, 56.258575, 56.713123>,  <65.120918, 55.923203, 57.168644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.631821, 56.258575, 56.713123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.307144, 56.463017, 56.826218>,  <65.112343, 56.585682, 56.894073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.307144, 56.463017, 56.826218>,  <65.631821, 56.258575, 56.713123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.307144, 56.463017, 56.826218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580420, 0.651561, 0.488447,
		0.065424, 0.560573, -0.825517,
		-0.811685, 0.511102, 0.282740,
		65.063637, 56.616348, 56.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.425285, 56.891369, 56.261589>,  <65.631821, 56.258575, 56.713123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.425285, 56.891369, 56.261589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.351669, 56.900574, 56.654648>,  <65.307503, 56.906097, 56.890484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.351669, 56.900574, 56.654648>,  <65.425285, 56.891369, 56.261589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.351669, 56.900574, 56.654648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722731, 0.680734, 0.119420,
		-0.666176, 0.732169, -0.141909,
		-0.184038, 0.023007, 0.982650,
		65.296455, 56.907475, 56.949444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.515602, 57.543610, 56.395981>,  <65.425285, 56.891369, 56.261589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.515602, 57.543610, 56.395981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.532822, 57.323990, 56.729851>,  <65.543152, 57.192219, 56.930172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.532822, 57.323990, 56.729851>,  <65.515602, 57.543610, 56.395981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.532822, 57.323990, 56.729851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676473, 0.630820, 0.380066,
		-0.735208, 0.548277, 0.398575,
		0.043048, -0.549053, 0.834678,
		65.545738, 57.159275, 56.980255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.476227, 57.936848, 57.130539>,  <65.515602, 57.543610, 56.395981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.476227, 57.936848, 57.130539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.704987, 57.608841, 57.121567>,  <65.842239, 57.412037, 57.116184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.704987, 57.608841, 57.121567>,  <65.476227, 57.936848, 57.130539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.704987, 57.608841, 57.121567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686946, 0.463780, 0.559476,
		-0.448377, -0.335372, 0.828543,
		0.571894, -0.820021, -0.022435,
		65.876556, 57.362835, 57.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.706696, 57.759026, 57.855663>,  <65.476227, 57.936848, 57.130539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.706696, 57.759026, 57.855663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.963921, 57.610622, 57.587685>,  <66.118256, 57.521580, 57.426895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.963921, 57.610622, 57.587685>,  <65.706696, 57.759026, 57.855663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.963921, 57.610622, 57.587685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737197, 0.536817, 0.410327,
		0.207407, -0.757749, 0.618708,
		0.643058, -0.371004, -0.669950,
		66.156837, 57.499321, 57.386700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.327797, 58.001366, 58.040737>,  <65.706696, 57.759026, 57.855663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.327797, 58.001366, 58.040737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.423775, 57.834309, 57.690193>,  <66.481361, 57.734074, 57.479866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.423775, 57.834309, 57.690193>,  <66.327797, 58.001366, 58.040737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.423775, 57.834309, 57.690193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951723, 0.279227, 0.127500,
		0.191455, -0.864644, 0.464473,
		0.239936, -0.417639, -0.876361,
		66.495758, 57.709019, 57.427284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.835075, 57.555428, 58.172802>,  <66.327797, 58.001366, 58.040737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.835075, 57.555428, 58.172802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.880524, 57.705948, 57.805000>,  <66.907791, 57.796261, 57.584320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.880524, 57.705948, 57.805000>,  <66.835075, 57.555428, 58.172802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.880524, 57.705948, 57.805000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911706, 0.328301, 0.247004,
		0.394823, -0.866380, -0.305780,
		0.113612, 0.376304, -0.919504,
		66.914604, 57.818840, 57.529148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.534645, 57.348457, 57.874596>,  <66.835075, 57.555428, 58.172802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.534645, 57.348457, 57.874596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.418350, 57.702152, 57.728394>,  <67.348572, 57.914368, 57.640671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.418350, 57.702152, 57.728394>,  <67.534645, 57.348457, 57.874596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.418350, 57.702152, 57.728394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881805, 0.395884, 0.256312,
		0.371339, -0.247787, -0.894823,
		-0.290736, 0.884238, -0.365507,
		67.331131, 57.967422, 57.618740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.023087, 57.681240, 57.470268>,  <67.534645, 57.348457, 57.874596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.023087, 57.681240, 57.470268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.812599, 57.994331, 57.603188>,  <67.686302, 58.182186, 57.682941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.812599, 57.994331, 57.603188>,  <68.023087, 57.681240, 57.470268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.812599, 57.994331, 57.603188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843330, 0.430295, 0.321933,
		0.108999, 0.449648, -0.886530,
		-0.526226, 0.782728, 0.332300,
		67.654732, 58.229149, 57.702877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.464279, 58.213982, 57.384186>,  <68.023087, 57.681240, 57.470268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.464279, 58.213982, 57.384186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.207108, 58.352364, 57.657524>,  <68.052803, 58.435390, 57.821526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.207108, 58.352364, 57.657524>,  <68.464279, 58.213982, 57.384186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.207108, 58.352364, 57.657524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756449, 0.426700, 0.495693,
		-0.120097, 0.835611, -0.536033,
		-0.642932, 0.345950, 0.683343,
		68.014229, 58.456150, 57.862526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.553925, 58.957447, 57.484406>,  <68.464279, 58.213982, 57.384186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.553925, 58.957447, 57.484406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.426086, 58.815170, 57.835709>,  <68.349380, 58.729805, 58.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.426086, 58.815170, 57.835709>,  <68.553925, 58.957447, 57.484406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.426086, 58.815170, 57.835709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761124, 0.455711, 0.461538,
		-0.564399, 0.815971, 0.125084,
		-0.319599, -0.355696, 0.878258,
		68.330208, 58.708462, 58.099186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.483871, 59.496319, 58.010323>,  <68.553925, 58.957447, 57.484406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.483871, 59.496319, 58.010323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.566742, 59.152840, 58.197823>,  <68.616463, 58.946754, 58.310322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.566742, 59.152840, 58.197823>,  <68.483871, 59.496319, 58.010323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.566742, 59.152840, 58.197823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652422, 0.478302, 0.587855,
		-0.728990, 0.184034, 0.659321,
		0.207170, -0.858696, 0.468745,
		68.628891, 58.895229, 58.338448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.424561, 59.571758, 58.787212>,  <68.483871, 59.496319, 58.010323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.424561, 59.571758, 58.787212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.674263, 59.274502, 58.690849>,  <68.824081, 59.096146, 58.633034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.674263, 59.274502, 58.690849>,  <68.424561, 59.571758, 58.787212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.674263, 59.274502, 58.690849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630698, 0.297450, 0.716759,
		-0.461000, -0.599381, 0.654387,
		0.624259, -0.743146, -0.240904,
		68.861542, 59.051559, 58.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.782280, 59.317158, 59.501045>,  <68.424561, 59.571758, 58.787212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.782280, 59.317158, 59.501045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.994637, 59.264336, 59.166206>,  <69.122047, 59.232643, 58.965305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.994637, 59.264336, 59.166206>,  <68.782280, 59.317158, 59.501045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.994637, 59.264336, 59.166206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847250, 0.061457, 0.527628,
		-0.018230, -0.989336, 0.144508,
		0.530882, -0.132053, -0.837094,
		69.153900, 59.224720, 58.915077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.268921, 58.731613, 59.628731>,  <68.782280, 59.317158, 59.501045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.268921, 58.731613, 59.628731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.395462, 59.004005, 59.364555>,  <69.471390, 59.167442, 59.206051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.395462, 59.004005, 59.364555>,  <69.268921, 58.731613, 59.628731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.395462, 59.004005, 59.364555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814184, 0.162378, 0.557438,
		0.486846, -0.714070, -0.503076,
		0.316361, 0.680983, -0.660438,
		69.490372, 59.208302, 59.166424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.987480, 58.942513, 59.988914>,  <69.268921, 58.731613, 59.628731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.987480, 58.942513, 59.988914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.997650, 59.126663, 59.633972>,  <70.003754, 59.237156, 59.421005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.997650, 59.126663, 59.633972>,  <69.987480, 58.942513, 59.988914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.997650, 59.126663, 59.633972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974586, 0.186213, 0.124528,
		0.222567, -0.867972, -0.443946,
		0.025418, 0.460379, -0.887358,
		70.005272, 59.264778, 59.367764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.191666, 58.450584, 59.438095>,  <69.987480, 58.942513, 59.988914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.191666, 58.450584, 59.438095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.286331, 58.839207, 59.434631>,  <70.343132, 59.072380, 59.432552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.286331, 58.839207, 59.434631>,  <70.191666, 58.450584, 59.438095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.286331, 58.839207, 59.434631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932255, -0.224562, 0.283679,
		0.273664, -0.075209, -0.958880,
		0.236663, 0.971553, -0.008659,
		70.357330, 59.130672, 59.432034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.720863, 58.620510, 58.947418>,  <70.191666, 58.450584, 59.438095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.720863, 58.620510, 58.947418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.754112, 58.917679, 59.213097>,  <70.774063, 59.095982, 59.372505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.754112, 58.917679, 59.213097>,  <70.720863, 58.620510, 58.947418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.754112, 58.917679, 59.213097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991362, -0.129501, 0.020774,
		0.101447, 0.656731, -0.747270,
		0.083130, 0.742923, 0.664195,
		70.779053, 59.140556, 59.412354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.182945, 59.135044, 58.775429>,  <70.720863, 58.620510, 58.947418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.182945, 59.135044, 58.775429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.167366, 59.076561, 59.170822>,  <71.158020, 59.041470, 59.408058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.167366, 59.076561, 59.170822>,  <71.182945, 59.135044, 58.775429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.167366, 59.076561, 59.170822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942812, -0.333104, -0.012120,
		0.331041, 0.931485, 0.150824,
		-0.038951, -0.146211, 0.988486,
		71.155678, 59.032696, 59.467369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.542641, 59.707802, 59.049316>,  <71.182945, 59.135044, 58.775429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.542641, 59.707802, 59.049316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.525764, 59.355148, 59.237335>,  <71.515640, 59.143555, 59.350147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.525764, 59.355148, 59.237335>,  <71.542641, 59.707802, 59.049316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.525764, 59.355148, 59.237335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979018, -0.130351, -0.156630,
		0.199361, 0.453577, 0.868633,
		-0.042183, -0.881633, 0.470047,
		71.513107, 59.090660, 59.378349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.008614, 59.633396, 59.758320>,  <71.542641, 59.707802, 59.049316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.008614, 59.633396, 59.758320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.971123, 59.301025, 59.538948>,  <71.948631, 59.101604, 59.407326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.971123, 59.301025, 59.538948>,  <72.008614, 59.633396, 59.758320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.971123, 59.301025, 59.538948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995525, -0.084917, -0.041467,
		-0.012116, -0.549866, 0.835165,
		-0.093721, -0.830925, -0.548434,
		71.943008, 59.051746, 59.374416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.387741, 59.235390, 60.056602>,  <72.008614, 59.633396, 59.758320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.387741, 59.235390, 60.056602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.397049, 59.079288, 59.688438>,  <72.402634, 58.985626, 59.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.397049, 59.079288, 59.688438>,  <72.387741, 59.235390, 60.056602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.397049, 59.079288, 59.688438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989694, -0.121135, 0.076375,
		-0.141300, -0.912704, 0.383412,
		0.023263, -0.390253, -0.920414,
		72.404030, 58.962212, 59.412315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.827713, 58.590042, 59.969063>,  <72.387741, 59.235390, 60.056602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.827713, 58.590042, 59.969063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.831612, 58.835869, 59.653542>,  <72.833954, 58.983364, 59.464230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.831612, 58.835869, 59.653542>,  <72.827713, 58.590042, 59.969063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.831612, 58.835869, 59.653542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975366, 0.168010, 0.142948,
		0.220379, -0.770765, -0.597791,
		0.009744, 0.614568, -0.788804,
		72.834534, 59.020241, 59.416901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.155495, 57.997616, 60.093208>,  <72.827713, 58.590042, 59.969063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.155495, 57.997616, 60.093208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.286240, 58.064728, 60.465233>,  <73.364685, 58.104996, 60.688446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.286240, 58.064728, 60.465233>,  <73.155495, 57.997616, 60.093208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.286240, 58.064728, 60.465233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251606, -0.964047, 0.085487,
		0.910965, 0.206067, -0.357323,
		0.326860, 0.167781, 0.930060,
		73.384300, 58.115063, 60.744251>
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
