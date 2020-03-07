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
	<36.709526, 52.284851, 49.971458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733212, 52.633236, 50.166565>,  <36.747425, 52.842266, 50.283630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733212, 52.633236, 50.166565>,  <36.709526, 52.284851, 49.971458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733212, 52.633236, 50.166565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775570, -0.267491, 0.571786,
		0.628477, -0.412159, 0.659652,
		0.059215, 0.870961, 0.487770,
		36.750977, 52.894524, 50.312897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777340, 52.132023, 50.802380>,  <36.709526, 52.284851, 49.971458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777340, 52.132023, 50.802380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594788, 52.472397, 50.698368>,  <36.485256, 52.676620, 50.635960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594788, 52.472397, 50.698368>,  <36.777340, 52.132023, 50.802380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594788, 52.472397, 50.698368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855531, -0.339356, 0.391029,
		0.244498, 0.400925, 0.882881,
		-0.456384, 0.850939, -0.260032,
		36.457870, 52.727680, 50.620358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526802, 52.536457, 50.733192>,  <36.777340, 52.132023, 50.802380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526802, 52.536457, 50.733192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920448, 52.518761, 50.801956>,  <38.156635, 52.508141, 50.843212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920448, 52.518761, 50.801956>,  <37.526802, 52.536457, 50.733192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920448, 52.518761, 50.801956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074022, -0.982505, 0.170892,
		0.161337, -0.180903, -0.970178,
		0.984119, -0.044244, 0.171906,
		38.215683, 52.505489, 50.853527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724571, 51.899593, 50.401123>,  <37.526802, 52.536457, 50.733192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724571, 51.899593, 50.401123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002857, 52.012974, 50.665138>,  <38.169827, 52.081001, 50.823547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002857, 52.012974, 50.665138>,  <37.724571, 51.899593, 50.401123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002857, 52.012974, 50.665138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110591, -0.950165, 0.291472,
		0.709758, -0.129786, -0.692386,
		0.695710, 0.283446, 0.660034,
		38.211571, 52.098007, 50.863148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491032, 51.539951, 50.402752>,  <37.724571, 51.899593, 50.401123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491032, 51.539951, 50.402752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430923, 51.678677, 50.773079>,  <38.394859, 51.761913, 50.995274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430923, 51.678677, 50.773079>,  <38.491032, 51.539951, 50.402752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430923, 51.678677, 50.773079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139439, -0.919655, 0.367140,
		0.978763, 0.184265, 0.089835,
		-0.150268, 0.346817, 0.925817,
		38.385841, 51.782722, 51.050823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946781, 51.189030, 50.759285>,  <38.491032, 51.539951, 50.402752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946781, 51.189030, 50.759285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675854, 51.319378, 51.023117>,  <38.513298, 51.397587, 51.181416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675854, 51.319378, 51.023117>,  <38.946781, 51.189030, 50.759285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675854, 51.319378, 51.023117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161018, -0.809146, 0.565116,
		0.717849, 0.488969, 0.495582,
		-0.677322, 0.325871, 0.659578,
		38.472656, 51.417141, 51.220989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637901, 50.623646, 50.360527>,  <38.946781, 51.189030, 50.759285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637901, 50.623646, 50.360527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979420, 50.673309, 50.158295>,  <39.184330, 50.703106, 50.036957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979420, 50.673309, 50.158295>,  <38.637901, 50.623646, 50.360527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979420, 50.673309, 50.158295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520539, -0.188361, 0.832802,
		0.008167, -0.974220, -0.225451,
		0.853799, 0.124157, -0.505581,
		39.235558, 50.710556, 50.006618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144707, 50.164131, 50.596004>,  <38.637901, 50.623646, 50.360527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144707, 50.164131, 50.596004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316639, 50.495823, 50.453102>,  <39.419800, 50.694836, 50.367363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316639, 50.495823, 50.453102>,  <39.144707, 50.164131, 50.596004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316639, 50.495823, 50.453102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457334, 0.141211, 0.878012,
		0.778519, -0.540779, -0.318537,
		0.429830, 0.829227, -0.357252,
		39.445587, 50.744591, 50.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357342, 50.396191, 51.129604>,  <39.144707, 50.164131, 50.596004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357342, 50.396191, 51.129604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466995, 50.702854, 50.897369>,  <39.532787, 50.886852, 50.758030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466995, 50.702854, 50.897369>,  <39.357342, 50.396191, 51.129604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466995, 50.702854, 50.897369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469282, 0.420314, 0.776602,
		0.839420, -0.485351, -0.244558,
		0.274134, 0.766662, -0.580586,
		39.549236, 50.932854, 50.723194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197029, 50.378075, 51.104340>,  <39.357342, 50.396191, 51.129604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197029, 50.378075, 51.104340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972588, 50.708931, 51.091740>,  <39.837921, 50.907444, 51.084179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972588, 50.708931, 51.091740>,  <40.197029, 50.378075, 51.104340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972588, 50.708931, 51.091740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424405, 0.320157, 0.846983,
		0.710663, 0.461878, -0.530686,
		-0.561105, 0.827145, -0.031500,
		39.804256, 50.957073, 51.082291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485645, 51.226860, 51.072235>,  <40.197029, 50.378075, 51.104340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485645, 51.226860, 51.072235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148869, 51.191185, 51.285095>,  <39.946804, 51.169781, 51.412811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148869, 51.191185, 51.285095>,  <40.485645, 51.226860, 51.072235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148869, 51.191185, 51.285095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429624, 0.485871, 0.761153,
		-0.326440, 0.869469, -0.370758,
		-0.841939, -0.089184, 0.532152,
		39.896286, 51.164429, 51.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145023, 51.873314, 51.401554>,  <40.485645, 51.226860, 51.072235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145023, 51.873314, 51.401554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078930, 51.544468, 51.619484>,  <40.039272, 51.347160, 51.750240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078930, 51.544468, 51.619484>,  <40.145023, 51.873314, 51.401554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078930, 51.544468, 51.619484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422136, 0.440303, 0.792423,
		-0.891347, 0.360924, 0.274290,
		-0.165233, -0.822111, 0.544822,
		40.029362, 51.297836, 51.782932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904343, 52.071175, 51.971291>,  <40.145023, 51.873314, 51.401554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904343, 52.071175, 51.971291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079403, 51.725197, 52.069534>,  <40.184441, 51.517609, 52.128479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079403, 51.725197, 52.069534>,  <39.904343, 52.071175, 51.971291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079403, 51.725197, 52.069534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376756, 0.424432, 0.823355,
		-0.816404, -0.267809, 0.511628,
		0.437653, -0.864949, 0.245609,
		40.210697, 51.465714, 52.143215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041107, 52.133343, 52.647232>,  <39.904343, 52.071175, 51.971291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041107, 52.133343, 52.647232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269428, 51.830017, 52.521282>,  <40.406422, 51.648022, 52.445713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269428, 51.830017, 52.521282>,  <40.041107, 52.133343, 52.647232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269428, 51.830017, 52.521282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746823, 0.320115, 0.582909,
		-0.341232, -0.567880, 0.749048,
		0.570804, -0.758313, -0.314872,
		40.440670, 51.602524, 52.426819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279785, 51.572422, 53.183125>,  <40.041107, 52.133343, 52.647232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279785, 51.572422, 53.183125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534698, 51.631058, 52.880501>,  <40.687649, 51.666237, 52.698929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534698, 51.631058, 52.880501>,  <40.279785, 51.572422, 53.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534698, 51.631058, 52.880501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665086, 0.391278, 0.636052,
		0.389228, -0.908530, 0.151903,
		0.637308, 0.146541, -0.756547,
		40.725883, 51.675034, 52.653534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046349, 51.383408, 53.224609>,  <40.279785, 51.572422, 53.183125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046349, 51.383408, 53.224609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013760, 51.730854, 53.029114>,  <40.994205, 51.939323, 52.911816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013760, 51.730854, 53.029114>,  <41.046349, 51.383408, 53.224609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013760, 51.730854, 53.029114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462286, 0.467366, 0.753565,
		0.882980, -0.164540, -0.439628,
		-0.081476, 0.868617, -0.488740,
		40.989315, 51.991440, 52.882492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684837, 51.729206, 52.887844>,  <41.046349, 51.383408, 53.224609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684837, 51.729206, 52.887844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426544, 52.015781, 52.993484>,  <41.271568, 52.187725, 53.056870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426544, 52.015781, 52.993484>,  <41.684837, 51.729206, 52.887844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426544, 52.015781, 52.993484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564860, 0.215477, 0.796557,
		0.513773, 0.663544, -0.543826,
		-0.645732, 0.716435, 0.264103,
		41.232826, 52.230713, 53.072716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988895, 52.356453, 52.889339>,  <41.684837, 51.729206, 52.887844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988895, 52.356453, 52.889339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704876, 52.370926, 53.170631>,  <41.534466, 52.379612, 53.339405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704876, 52.370926, 53.170631>,  <41.988895, 52.356453, 52.889339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704876, 52.370926, 53.170631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663598, 0.368428, 0.651075,
		-0.235529, 0.928952, -0.285613,
		-0.710045, 0.036185, 0.703226,
		41.491863, 52.381783, 53.381599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969177, 53.108574, 53.144886>,  <41.988895, 52.356453, 52.889339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969177, 53.108574, 53.144886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858070, 52.808838, 53.385330>,  <41.791405, 52.628998, 53.529598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858070, 52.808838, 53.385330>,  <41.969177, 53.108574, 53.144886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858070, 52.808838, 53.385330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443595, 0.454981, 0.772150,
		-0.852096, 0.481131, 0.206022,
		-0.277769, -0.749337, 0.601114,
		41.774738, 52.584038, 53.565666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740486, 53.192120, 53.227497>,  <41.969177, 53.108574, 53.144886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740486, 53.192120, 53.227497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537415, 52.848671, 53.255871>,  <42.415573, 52.642601, 53.272896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537415, 52.848671, 53.255871>,  <42.740486, 53.192120, 53.227497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537415, 52.848671, 53.255871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722315, -0.469064, -0.508174,
		0.469602, -0.206751, 0.858328,
		-0.507676, -0.858623, 0.070934,
		42.385113, 52.591084, 53.277149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023926, 52.485222, 53.509445>,  <42.740486, 53.192120, 53.227497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023926, 52.485222, 53.509445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413921, 52.429840, 53.578987>,  <43.647919, 52.396610, 53.620712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413921, 52.429840, 53.578987>,  <43.023926, 52.485222, 53.509445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413921, 52.429840, 53.578987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112498, -0.367179, -0.923322,
		0.191669, 0.919789, -0.342421,
		0.974991, -0.138451, 0.173851,
		43.706417, 52.388306, 53.631142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061466, 52.633305, 52.804443>,  <43.023926, 52.485222, 53.509445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061466, 52.633305, 52.804443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381001, 52.826492, 52.660995>,  <43.572720, 52.942406, 52.574928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381001, 52.826492, 52.660995>,  <43.061466, 52.633305, 52.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381001, 52.826492, 52.660995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490260, -0.177259, 0.853361,
		0.348575, -0.857511, -0.378380,
		0.798837, 0.482965, -0.358615,
		43.620651, 52.971382, 52.553410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606266, 52.152748, 52.949970>,  <43.061466, 52.633305, 52.804443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606266, 52.152748, 52.949970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756836, 52.522423, 52.924103>,  <43.847179, 52.744228, 52.908585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756836, 52.522423, 52.924103>,  <43.606266, 52.152748, 52.949970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756836, 52.522423, 52.924103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443568, -0.118511, 0.888371,
		0.813356, -0.363091, -0.454550,
		0.376429, 0.924186, -0.064664,
		43.869766, 52.799679, 52.904705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149090, 52.146553, 53.273708>,  <43.606266, 52.152748, 52.949970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149090, 52.146553, 53.273708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070820, 52.536400, 53.317211>,  <44.023857, 52.770309, 53.343311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070820, 52.536400, 53.317211>,  <44.149090, 52.146553, 53.273708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070820, 52.536400, 53.317211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162233, -0.077201, 0.983728,
		0.967157, 0.210134, -0.143009,
		-0.195675, 0.974620, 0.108756,
		44.012119, 52.828785, 53.349838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492035, 52.376785, 53.777790>,  <44.149090, 52.146553, 53.273708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492035, 52.376785, 53.777790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196354, 52.645996, 53.767918>,  <44.018944, 52.807522, 53.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196354, 52.645996, 53.767918>,  <44.492035, 52.376785, 53.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196354, 52.645996, 53.767918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167488, -0.148212, 0.974670,
		0.652323, 0.724613, 0.222283,
		-0.739204, 0.673030, -0.024682,
		43.974594, 52.847904, 53.760513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115028, 52.690456, 53.787083>,  <44.492035, 52.376785, 53.777790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115028, 52.690456, 53.787083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065002, 52.616768, 53.397125>,  <45.034988, 52.572556, 53.163151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065002, 52.616768, 53.397125>,  <45.115028, 52.690456, 53.787083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065002, 52.616768, 53.397125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019554, 0.982877, -0.183219,
		0.991956, -0.003851, -0.126525,
		-0.125064, -0.184220, -0.974896,
		45.027485, 52.561501, 53.104656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484447, 52.898708, 53.195312>,  <45.115028, 52.690456, 53.787083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484447, 52.898708, 53.195312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154552, 53.124912, 53.194626>,  <44.956615, 53.260635, 53.194214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154552, 53.124912, 53.194626>,  <45.484447, 52.898708, 53.195312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154552, 53.124912, 53.194626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547325, 0.797447, -0.253998,
		-0.142270, -0.210422, -0.967203,
		-0.824739, 0.565510, -0.001717,
		44.907131, 53.294567, 53.194111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378605, 53.215096, 52.581944>,  <45.484447, 52.898708, 53.195312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378605, 53.215096, 52.581944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258640, 53.467590, 52.868050>,  <45.186661, 53.619087, 53.039711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258640, 53.467590, 52.868050>,  <45.378605, 53.215096, 52.581944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258640, 53.467590, 52.868050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727227, 0.636536, -0.256831,
		-0.617410, 0.443132, -0.649953,
		-0.299909, 0.631234, 0.715261,
		45.168667, 53.656960, 53.082626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203861, 53.996861, 52.303391>,  <45.378605, 53.215096, 52.581944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203861, 53.996861, 52.303391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365990, 53.953117, 52.666435>,  <45.463268, 53.926872, 52.884262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365990, 53.953117, 52.666435>,  <45.203861, 53.996861, 52.303391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365990, 53.953117, 52.666435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712140, 0.660293, -0.238474,
		-0.573210, 0.743004, 0.345508,
		0.405324, -0.109355, 0.907609,
		45.487587, 53.920311, 52.938717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.382187, 54.588440, 52.536903>,  <45.203861, 53.996861, 52.303391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.382187, 54.588440, 52.536903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617252, 54.307270, 52.697174>,  <45.758293, 54.138569, 52.793335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617252, 54.307270, 52.697174>,  <45.382187, 54.588440, 52.536903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617252, 54.307270, 52.697174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807906, 0.536721, -0.243349,
		-0.043995, 0.466718, 0.883311,
		0.587667, -0.702926, 0.400677,
		45.793552, 54.096394, 52.817379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732197, 54.804993, 53.280396>,  <45.382187, 54.588440, 52.536903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732197, 54.804993, 53.280396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911690, 54.548836, 53.031067>,  <46.019386, 54.395142, 52.881470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911690, 54.548836, 53.031067>,  <45.732197, 54.804993, 53.280396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911690, 54.548836, 53.031067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800246, 0.598421, -0.038714,
		0.397801, -0.481440, 0.781006,
		0.448732, -0.640397, -0.623323,
		46.046310, 54.356716, 52.844070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412060, 54.816784, 53.372932>,  <45.732197, 54.804993, 53.280396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412060, 54.816784, 53.372932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448696, 54.613773, 53.030231>,  <46.470676, 54.491966, 52.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448696, 54.613773, 53.030231>,  <46.412060, 54.816784, 53.372932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448696, 54.613773, 53.030231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917219, 0.377982, -0.125857,
		0.387713, -0.774306, 0.500129,
		0.091588, -0.507524, -0.856756,
		46.476173, 54.461517, 52.773205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095245, 54.572712, 53.280704>,  <46.412060, 54.816784, 53.372932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095245, 54.572712, 53.280704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944256, 54.630703, 52.914864>,  <46.853661, 54.665497, 52.695358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944256, 54.630703, 52.914864>,  <47.095245, 54.572712, 53.280704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944256, 54.630703, 52.914864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769628, 0.598362, -0.222789,
		0.514961, -0.787999, -0.337448,
		-0.377474, 0.144982, -0.914600,
		46.831013, 54.674198, 52.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.599720, 54.514263, 52.722797>,  <47.095245, 54.572712, 53.280704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.599720, 54.514263, 52.722797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309208, 54.751942, 52.584553>,  <47.134903, 54.894550, 52.501606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309208, 54.751942, 52.584553>,  <47.599720, 54.514263, 52.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.309208, 54.751942, 52.584553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686775, 0.605778, -0.401713,
		-0.029336, -0.529111, -0.848045,
		-0.726278, 0.594201, -0.345609,
		47.091324, 54.930202, 52.480869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.622719, 54.585476, 51.914204>,  <47.599720, 54.514263, 52.722797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.622719, 54.585476, 51.914204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446880, 54.901649, 52.084835>,  <47.341377, 55.091354, 52.187214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446880, 54.901649, 52.084835>,  <47.622719, 54.585476, 51.914204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446880, 54.901649, 52.084835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614876, 0.611029, -0.498569,
		-0.654739, 0.043126, -0.754624,
		-0.439596, 0.790432, 0.426582,
		47.315002, 55.138779, 52.212811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.238197, 54.069450, 52.034996>,  <47.622719, 54.585476, 51.914204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.238197, 54.069450, 52.034996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.057384, 53.712761, 52.043880>,  <47.948898, 53.498745, 52.049210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.057384, 53.712761, 52.043880>,  <48.238197, 54.069450, 52.034996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.057384, 53.712761, 52.043880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803245, -0.396096, 0.444866,
		-0.387902, 0.218931, 0.895322,
		-0.452028, -0.891727, 0.022208,
		47.921776, 53.445244, 52.050545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.727066, 53.681232, 51.660248>,  <48.238197, 54.069450, 52.034996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.727066, 53.681232, 51.660248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.120811, 53.713959, 51.597839>,  <49.357059, 53.733593, 51.560394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.120811, 53.713959, 51.597839>,  <48.727066, 53.681232, 51.660248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.120811, 53.713959, 51.597839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149193, 0.083884, 0.985244,
		0.093684, -0.993112, 0.070367,
		0.984360, 0.081803, -0.156024,
		49.416119, 53.738503, 51.551033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.105766, 53.135609, 52.082462>,  <48.727066, 53.681232, 51.660248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.105766, 53.135609, 52.082462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.347267, 53.443932, 52.001129>,  <49.492168, 53.628925, 51.952328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.347267, 53.443932, 52.001129>,  <49.105766, 53.135609, 52.082462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.347267, 53.443932, 52.001129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282634, 0.031524, 0.958710,
		0.745387, -0.636292, -0.198823,
		0.603751, 0.770804, -0.203336,
		49.528393, 53.675175, 51.940128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.822811, 52.942055, 52.157089>,  <49.105766, 53.135609, 52.082462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.822811, 52.942055, 52.157089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.716217, 53.322319, 52.220627>,  <49.652260, 53.550476, 52.258751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.716217, 53.322319, 52.220627>,  <49.822811, 52.942055, 52.157089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.716217, 53.322319, 52.220627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347512, -0.058950, 0.935821,
		0.899011, 0.304583, -0.314656,
		-0.266486, 0.950660, 0.158843,
		49.636272, 53.607517, 52.268280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.398018, 53.470047, 52.275211>,  <49.822811, 52.942055, 52.157089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.398018, 53.470047, 52.275211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.094284, 53.616543, 52.490349>,  <49.912045, 53.704441, 52.619431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.094284, 53.616543, 52.490349>,  <50.398018, 53.470047, 52.275211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.094284, 53.616543, 52.490349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563852, -0.042217, 0.824796,
		0.324776, 0.929564, -0.174445,
		-0.759336, 0.366235, 0.537848,
		49.866482, 53.726414, 52.651703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.491920, 54.218597, 52.026455>,  <50.398018, 53.470047, 52.275211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.491920, 54.218597, 52.026455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.502701, 54.163586, 52.422508>,  <50.509171, 54.130581, 52.660141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.502701, 54.163586, 52.422508>,  <50.491920, 54.218597, 52.026455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.502701, 54.163586, 52.422508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950725, 0.309562, 0.017115,
		-0.308861, 0.940881, 0.139094,
		0.026955, -0.137526, 0.990131,
		50.510788, 54.122330, 52.719547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.742020, 54.888939, 52.482841>,  <50.491920, 54.218597, 52.026455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.742020, 54.888939, 52.482841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.811550, 54.520878, 52.623188>,  <50.853268, 54.300041, 52.707397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.811550, 54.520878, 52.623188>,  <50.742020, 54.888939, 52.482841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.811550, 54.520878, 52.623188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978544, 0.201414, 0.043411,
		-0.110614, 0.335791, 0.935419,
		0.173830, -0.920150, 0.350865,
		50.863701, 54.244831, 52.728447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.195946, 55.424271, 52.298298>,  <50.742020, 54.888939, 52.482841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.195946, 55.424271, 52.298298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.357155, 55.058281, 52.290375>,  <51.453880, 54.838688, 52.285622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.357155, 55.058281, 52.290375>,  <51.195946, 55.424271, 52.298298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.357155, 55.058281, 52.290375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852880, 0.367648, 0.370716,
		-0.331913, -0.166303, 0.928535,
		0.403026, -0.914974, -0.019809,
		51.478062, 54.783787, 52.284431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.480835, 55.235260, 52.973358>,  <51.195946, 55.424271, 52.298298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.480835, 55.235260, 52.973358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.679932, 55.002831, 52.715797>,  <51.799389, 54.863373, 52.561260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.679932, 55.002831, 52.715797>,  <51.480835, 55.235260, 52.973358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.679932, 55.002831, 52.715797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833171, 0.114053, 0.541127,
		-0.240993, -0.805823, 0.540899,
		0.497744, -0.581070, -0.643902,
		51.829254, 54.828510, 52.522625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.806450, 54.725204, 53.409718>,  <51.480835, 55.235260, 52.973358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.806450, 54.725204, 53.409718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.973598, 54.826878, 53.060829>,  <52.073887, 54.887882, 52.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.973598, 54.826878, 53.060829>,  <51.806450, 54.725204, 53.409718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.973598, 54.826878, 53.060829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771583, 0.407558, 0.488422,
		0.479630, -0.877091, -0.025816,
		0.417869, 0.254181, -0.872225,
		52.098961, 54.903133, 52.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.508640, 54.520805, 53.464828>,  <51.806450, 54.725204, 53.409718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.508640, 54.520805, 53.464828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.504192, 54.790451, 53.169411>,  <52.501522, 54.952236, 52.992161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.504192, 54.790451, 53.169411>,  <52.508640, 54.520805, 53.464828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.504192, 54.790451, 53.169411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865770, 0.376045, 0.330201,
		0.500319, -0.635740, -0.587806,
		-0.011119, 0.674111, -0.738546,
		52.500858, 54.992683, 52.947845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.233715, 54.554451, 53.018871>,  <52.508640, 54.520805, 53.464828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.233715, 54.554451, 53.018871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.005474, 54.875393, 53.088890>,  <52.868530, 55.067959, 53.130901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.005474, 54.875393, 53.088890>,  <53.233715, 54.554451, 53.018871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.005474, 54.875393, 53.088890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808821, 0.512160, 0.288966,
		0.142199, 0.306469, -0.941199,
		-0.570604, 0.802352, 0.175050,
		52.834293, 55.116100, 53.141403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.372257, 55.157524, 52.557922>,  <53.233715, 54.554451, 53.018871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.372257, 55.157524, 52.557922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.265251, 55.242455, 52.933868>,  <53.201050, 55.293411, 53.159439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.265251, 55.242455, 52.933868>,  <53.372257, 55.157524, 52.557922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.265251, 55.242455, 52.933868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920049, 0.346076, 0.183687,
		-0.286265, 0.913865, -0.287930,
		-0.267511, 0.212326, 0.939870,
		53.184998, 55.306152, 53.215828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.704460, 55.771221, 52.824043>,  <53.372257, 55.157524, 52.557922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.704460, 55.771221, 52.824043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.633144, 55.580727, 53.168465>,  <53.590355, 55.466431, 53.375118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.633144, 55.580727, 53.168465>,  <53.704460, 55.771221, 52.824043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.633144, 55.580727, 53.168465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805194, 0.432363, 0.405862,
		-0.565574, 0.765674, 0.306380,
		-0.178291, -0.476240, 0.861050,
		53.579659, 55.437855, 53.426781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.423107, 56.163052, 53.448917>,  <53.704460, 55.771221, 52.824043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.423107, 56.163052, 53.448917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.657421, 55.855602, 53.551735>,  <53.798012, 55.671131, 53.613426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.657421, 55.855602, 53.551735>,  <53.423107, 56.163052, 53.448917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.657421, 55.855602, 53.551735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604907, 0.625718, 0.492509,
		-0.539389, -0.133020, 0.831484,
		0.585788, -0.768624, 0.257041,
		53.833157, 55.625015, 53.628845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.554569, 56.168736, 54.152454>,  <53.423107, 56.163052, 53.448917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.554569, 56.168736, 54.152454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.869637, 55.973953, 54.001476>,  <54.058678, 55.857086, 53.910889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.869637, 55.973953, 54.001476>,  <53.554569, 56.168736, 54.152454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.869637, 55.973953, 54.001476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581937, 0.386841, 0.715335,
		-0.202325, -0.783091, 0.588076,
		0.787664, -0.486953, -0.377442,
		54.105934, 55.827866, 53.888245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.774990, 55.624626, 54.534424>,  <53.554569, 56.168736, 54.152454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.774990, 55.624626, 54.534424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.111237, 55.785484, 54.389297>,  <54.312984, 55.882000, 54.302219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.111237, 55.785484, 54.389297>,  <53.774990, 55.624626, 54.534424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.111237, 55.785484, 54.389297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336416, 0.137316, 0.931648,
		0.424484, -0.905218, -0.019859,
		0.840617, 0.402150, -0.362819,
		54.363422, 55.906128, 54.280453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.465225, 55.159592, 54.740101>,  <53.774990, 55.624626, 54.534424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.465225, 55.159592, 54.740101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.502586, 55.552601, 54.675697>,  <54.525002, 55.788406, 54.637054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.502586, 55.552601, 54.675697>,  <54.465225, 55.159592, 54.740101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.502586, 55.552601, 54.675697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388779, 0.112881, 0.914390,
		0.916585, -0.148000, -0.371441,
		0.093401, 0.982524, -0.161004,
		54.530605, 55.847359, 54.627396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.225853, 55.409851, 54.744766>,  <54.465225, 55.159592, 54.740101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.225853, 55.409851, 54.744766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.972191, 55.695000, 54.864540>,  <54.819992, 55.866089, 54.936405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.972191, 55.695000, 54.864540>,  <55.225853, 55.409851, 54.744766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.972191, 55.695000, 54.864540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347600, -0.083081, 0.933955,
		0.690663, 0.696361, -0.195106,
		-0.634160, 0.712867, 0.299436,
		54.781944, 55.908859, 54.954372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.620544, 55.672955, 55.391193>,  <55.225853, 55.409851, 54.744766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.620544, 55.672955, 55.391193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.746498, 55.725136, 55.767242>,  <55.822071, 55.756443, 55.992870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.746498, 55.725136, 55.767242>,  <55.620544, 55.672955, 55.391193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.746498, 55.725136, 55.767242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132720, 0.986830, -0.092479,
		-0.939806, -0.095653, 0.328049,
		0.314882, 0.130451, 0.940123,
		55.840961, 55.764271, 56.049278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.150658, 56.063892, 55.670605>,  <55.620544, 55.672955, 55.391193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.150658, 56.063892, 55.670605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.479141, 56.138702, 55.886246>,  <55.676231, 56.183590, 56.015633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.479141, 56.138702, 55.886246>,  <55.150658, 56.063892, 55.670605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.479141, 56.138702, 55.886246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215931, 0.976360, -0.009790,
		-0.528192, -0.108370, 0.842181,
		0.821211, 0.187024, 0.539106,
		55.725506, 56.194809, 56.047977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.962940, 56.369247, 56.274654>,  <55.150658, 56.063892, 55.670605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.962940, 56.369247, 56.274654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.332344, 56.499428, 56.193451>,  <55.553986, 56.577538, 56.144730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.332344, 56.499428, 56.193451>,  <54.962940, 56.369247, 56.274654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.332344, 56.499428, 56.193451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285390, 0.936612, 0.203252,
		0.256286, -0.129769, 0.957850,
		0.923510, 0.325451, -0.203006,
		55.609398, 56.597065, 56.132549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.333359, 56.654285, 56.935848>,  <54.962940, 56.369247, 56.274654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.333359, 56.654285, 56.935848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.426796, 56.778870, 56.567406>,  <55.482857, 56.853619, 56.346340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.426796, 56.778870, 56.567406>,  <55.333359, 56.654285, 56.935848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.426796, 56.778870, 56.567406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104302, 0.949870, 0.294733,
		0.966725, 0.027228, 0.254363,
		0.233587, 0.311457, -0.921104,
		55.496872, 56.872307, 56.291077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.574493, 57.298977, 57.025784>,  <55.333359, 56.654285, 56.935848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.574493, 57.298977, 57.025784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.531075, 57.278748, 56.628662>,  <55.505024, 57.266609, 56.390388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.531075, 57.278748, 56.628662>,  <55.574493, 57.298977, 57.025784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.531075, 57.278748, 56.628662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074257, 0.996327, -0.042631,
		0.991314, 0.069096, -0.111904,
		-0.108547, -0.050570, -0.992804,
		55.498512, 57.263577, 56.330822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.036575, 57.690685, 56.695072>,  <55.574493, 57.298977, 57.025784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.036575, 57.690685, 56.695072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.721794, 57.679794, 56.448509>,  <55.532925, 57.673260, 56.300571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.721794, 57.679794, 56.448509>,  <56.036575, 57.690685, 56.695072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.721794, 57.679794, 56.448509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077833, 0.986665, -0.142949,
		0.612082, -0.160471, -0.774341,
		-0.786954, -0.027227, -0.616410,
		55.485706, 57.671627, 56.263588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.109474, 58.015259, 57.388096>,  <56.036575, 57.690685, 56.695072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.109474, 58.015259, 57.388096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.315208, 58.068340, 57.726997>,  <56.438648, 58.100189, 57.930340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.315208, 58.068340, 57.726997>,  <56.109474, 58.015259, 57.388096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.315208, 58.068340, 57.726997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416238, -0.825154, 0.381925,
		0.749800, -0.549100, -0.369173,
		0.514340, 0.132703, 0.847257,
		56.469509, 58.108150, 57.981174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.249474, 57.344749, 57.643703>,  <56.109474, 58.015259, 57.388096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.249474, 57.344749, 57.643703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.287277, 57.586418, 57.960197>,  <56.309959, 57.731419, 58.150093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.287277, 57.586418, 57.960197>,  <56.249474, 57.344749, 57.643703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.287277, 57.586418, 57.960197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545709, -0.633299, 0.548758,
		0.832628, -0.483645, 0.269847,
		0.094511, 0.604169, 0.791232,
		56.315632, 57.767670, 58.197567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.989609, 57.095440, 57.403633>,  <56.249474, 57.344749, 57.643703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.989609, 57.095440, 57.403633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.234734, 57.006767, 57.707031>,  <57.381809, 56.953564, 57.889069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.234734, 57.006767, 57.707031>,  <56.989609, 57.095440, 57.403633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.234734, 57.006767, 57.707031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649931, -0.404584, -0.643351,
		0.449497, 0.887224, -0.103854,
		0.612815, -0.221686, 0.758494,
		57.418579, 56.940262, 57.934578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.556927, 56.905056, 57.080872>,  <56.989609, 57.095440, 57.403633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.556927, 56.905056, 57.080872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.681091, 56.835300, 57.454659>,  <57.755592, 56.793446, 57.678932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.681091, 56.835300, 57.454659>,  <57.556927, 56.905056, 57.080872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.681091, 56.835300, 57.454659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889954, -0.292186, -0.350155,
		0.334101, 0.940328, 0.064498,
		0.310415, -0.174387, 0.934468,
		57.774216, 56.782986, 57.735001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.218491, 57.286171, 57.232132>,  <57.556927, 56.905056, 57.080872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.218491, 57.286171, 57.232132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.199585, 56.960838, 57.464081>,  <58.188240, 56.765640, 57.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.199585, 56.960838, 57.464081>,  <58.218491, 57.286171, 57.232132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.199585, 56.960838, 57.464081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892864, -0.294675, -0.340529,
		0.447839, 0.501654, 0.740124,
		-0.047268, -0.813332, 0.579876,
		58.185406, 56.716839, 57.638042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.752781, 57.191647, 57.574421>,  <58.218491, 57.286171, 57.232132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.752781, 57.191647, 57.574421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.651192, 56.805649, 57.548256>,  <58.590237, 56.574051, 57.532555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.651192, 56.805649, 57.548256>,  <58.752781, 57.191647, 57.574421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.651192, 56.805649, 57.548256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963003, -0.245986, -0.110072,
		0.090128, -0.090951, 0.991768,
		-0.253972, -0.964997, -0.065416,
		58.575001, 56.516151, 57.528629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.247288, 56.762962, 58.012657>,  <58.752781, 57.191647, 57.574421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.247288, 56.762962, 58.012657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.131363, 56.596989, 57.667671>,  <59.061810, 56.497406, 57.460682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.131363, 56.596989, 57.667671>,  <59.247288, 56.762962, 58.012657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.131363, 56.596989, 57.667671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937611, -0.303944, -0.168832,
		-0.192086, -0.857582, 0.477133,
		-0.289809, -0.414935, -0.862462,
		59.044422, 56.472507, 57.408932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.350586, 56.234936, 58.567116>,  <59.247288, 56.762962, 58.012657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.350586, 56.234936, 58.567116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.207138, 55.900581, 58.733337>,  <59.121067, 55.699970, 58.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.207138, 55.900581, 58.733337>,  <59.350586, 56.234936, 58.567116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.207138, 55.900581, 58.733337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294986, -0.320878, -0.900011,
		0.885648, -0.445348, -0.131500,
		-0.358623, -0.835884, 0.415557,
		59.099552, 55.649815, 58.858006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.030685, 56.061760, 58.777214>,  <59.350586, 56.234936, 58.567116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.030685, 56.061760, 58.777214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.108917, 55.671913, 58.820786>,  <60.155857, 55.438004, 58.846928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.108917, 55.671913, 58.820786>,  <60.030685, 56.061760, 58.777214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.108917, 55.671913, 58.820786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975575, -0.204684, -0.079739,
		0.100012, -0.090676, -0.990846,
		0.195580, -0.974619, 0.108932,
		60.167591, 55.379528, 58.853466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.028950, 56.226814, 57.992813>,  <60.030685, 56.061760, 58.777214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.028950, 56.226814, 57.992813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.956947, 56.470909, 58.301414>,  <59.913746, 56.617367, 58.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.956947, 56.470909, 58.301414>,  <60.028950, 56.226814, 57.992813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.956947, 56.470909, 58.301414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131544, 0.792200, -0.595916,
		-0.974831, -0.005779, -0.222870,
		-0.180002, 0.610234, 0.771501,
		59.902946, 56.653980, 58.532864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.784206, 55.984371, 58.169384>,  <60.028950, 56.226814, 57.992813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.784206, 55.984371, 58.169384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.010963, 56.312649, 58.140862>,  <61.147018, 56.509617, 58.123749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.010963, 56.312649, 58.140862>,  <60.784206, 55.984371, 58.169384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.010963, 56.312649, 58.140862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366390, -0.173665, 0.914111,
		0.737826, -0.544330, -0.399145,
		0.566896, 0.820698, -0.071302,
		61.181034, 56.558857, 58.119473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.367378, 55.777325, 58.490555>,  <60.784206, 55.984371, 58.169384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.367378, 55.777325, 58.490555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.408272, 56.174992, 58.476830>,  <61.432808, 56.413593, 58.468594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.408272, 56.174992, 58.476830>,  <61.367378, 55.777325, 58.490555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.408272, 56.174992, 58.476830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705150, -0.048100, 0.707425,
		0.701649, -0.096522, -0.705955,
		0.102238, 0.994168, -0.034313,
		61.438942, 56.473244, 58.466534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.104519, 55.958664, 58.400692>,  <61.367378, 55.777325, 58.490555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.104519, 55.958664, 58.400692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.878929, 56.222607, 58.599297>,  <61.743576, 56.380970, 58.718460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.878929, 56.222607, 58.599297>,  <62.104519, 55.958664, 58.400692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.878929, 56.222607, 58.599297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677416, 0.025822, 0.735147,
		0.472269, 0.750950, -0.461559,
		-0.563977, 0.659854, 0.496510,
		61.709736, 56.420563, 58.748249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.417786, 55.464317, 57.785534>,  <62.104519, 55.958664, 58.400692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.417786, 55.464317, 57.785534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.044930, 55.352390, 57.693604>,  <61.821217, 55.285233, 57.638447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.044930, 55.352390, 57.693604>,  <62.417786, 55.464317, 57.785534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.044930, 55.352390, 57.693604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020179, 0.673847, -0.738595,
		0.361536, -0.683836, -0.633766,
		-0.932139, -0.279818, -0.229821,
		61.765289, 55.268444, 57.624657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.793217, 55.682571, 57.197479>,  <62.417786, 55.464317, 57.785534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.793217, 55.682571, 57.197479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.046371, 55.531746, 57.467964>,  <63.198265, 55.441250, 57.630257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.046371, 55.531746, 57.467964>,  <62.793217, 55.682571, 57.197479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.046371, 55.531746, 57.467964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509439, 0.860501, 0.003028,
		-0.583027, 0.342575, 0.736697,
		0.632891, -0.377068, 0.676217,
		63.236240, 55.418625, 57.670830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.063766, 56.060429, 57.885960>,  <62.793217, 55.682571, 57.197479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.063766, 56.060429, 57.885960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.388412, 55.854839, 57.774887>,  <63.583199, 55.731483, 57.708244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.388412, 55.854839, 57.774887>,  <63.063766, 56.060429, 57.885960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.388412, 55.854839, 57.774887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562983, 0.815057, 0.136866,
		0.155982, -0.267414, 0.950873,
		0.811616, -0.513977, -0.277683,
		63.631897, 55.700645, 57.691582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.639942, 56.109833, 58.380623>,  <63.063766, 56.060429, 57.885960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.639942, 56.109833, 58.380623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.840553, 56.048187, 58.040100>,  <63.960918, 56.011200, 57.835785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.840553, 56.048187, 58.040100>,  <63.639942, 56.109833, 58.380623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.840553, 56.048187, 58.040100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498680, 0.855585, 0.138896,
		0.706958, -0.494189, 0.505952,
		0.501526, -0.154114, -0.851305,
		63.991013, 56.001953, 57.784710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.365189, 56.190315, 58.551392>,  <63.639942, 56.109833, 58.380623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.365189, 56.190315, 58.551392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.322609, 56.272243, 58.162193>,  <64.297058, 56.321400, 57.928677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.322609, 56.272243, 58.162193>,  <64.365189, 56.190315, 58.551392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.322609, 56.272243, 58.162193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546517, 0.829538, 0.114832,
		0.830655, -0.519532, -0.200248,
		-0.106455, 0.204825, -0.972992,
		64.290672, 56.333691, 57.870296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.058311, 56.758541, 59.035870>,  <64.365189, 56.190315, 58.551392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.058311, 56.758541, 59.035870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.129707, 57.010162, 59.338509>,  <64.172546, 57.161133, 59.520092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.129707, 57.010162, 59.338509>,  <64.058311, 56.758541, 59.035870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.129707, 57.010162, 59.338509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892790, 0.219694, -0.393268,
		-0.413606, 0.745673, -0.522400,
		0.178481, 0.629051, 0.756597,
		64.183250, 57.198879, 59.565487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.469574, 57.455544, 58.737656>,  <64.058311, 56.758541, 59.035870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.469574, 57.455544, 58.737656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.546989, 57.375671, 59.121880>,  <64.593437, 57.327747, 59.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.546989, 57.375671, 59.121880>,  <64.469574, 57.455544, 58.737656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.546989, 57.375671, 59.121880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922135, 0.371308, -0.108613,
		-0.334974, 0.906784, 0.255999,
		0.193543, -0.199683, 0.960556,
		64.605049, 57.315765, 59.410046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.140114, 57.682693, 58.845089>,  <64.469574, 57.455544, 58.737656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.140114, 57.682693, 58.845089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.123802, 57.478455, 59.188629>,  <65.114014, 57.355911, 59.394753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.123802, 57.478455, 59.188629>,  <65.140114, 57.682693, 58.845089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.123802, 57.478455, 59.188629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989524, 0.098503, 0.105548,
		-0.138492, 0.854159, 0.501231,
		-0.040782, -0.510597, 0.858852,
		65.111565, 57.325275, 59.446285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.739189, 57.949780, 59.103683>,  <65.140114, 57.682693, 58.845089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.739189, 57.949780, 59.103683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.645119, 57.650826, 59.352234>,  <65.588676, 57.471455, 59.501362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.645119, 57.650826, 59.352234>,  <65.739189, 57.949780, 59.103683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.645119, 57.650826, 59.352234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971224, -0.205418, 0.120525,
		0.037563, 0.631838, 0.774190,
		-0.235185, -0.747385, 0.621373,
		65.574562, 57.426609, 59.538647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.043877, 58.099766, 59.679310>,  <65.739189, 57.949780, 59.103683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.043877, 58.099766, 59.679310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.982651, 57.714359, 59.591484>,  <65.945915, 57.483116, 59.538788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.982651, 57.714359, 59.591484>,  <66.043877, 58.099766, 59.679310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.982651, 57.714359, 59.591484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964651, -0.193912, 0.178456,
		-0.214522, -0.184491, 0.959137,
		-0.153065, -0.963515, -0.219567,
		65.936729, 57.425304, 59.525612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.757133, 57.938835, 59.738033>,  <66.043877, 58.099766, 59.679310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.757133, 57.938835, 59.738033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.519402, 58.240509, 59.626328>,  <66.376762, 58.421513, 59.559303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.519402, 58.240509, 59.626328>,  <66.757133, 57.938835, 59.738033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.519402, 58.240509, 59.626328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797991, 0.596175, -0.088233,
		0.099949, -0.275293, -0.956151,
		-0.594323, 0.754181, -0.279268,
		66.341103, 58.466763, 59.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.812805, 58.235939, 59.011887>,  <66.757133, 57.938835, 59.738033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.812805, 58.235939, 59.011887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.718597, 58.537636, 59.257050>,  <66.662071, 58.718655, 59.404148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.718597, 58.537636, 59.257050>,  <66.812805, 58.235939, 59.011887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.718597, 58.537636, 59.257050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838921, 0.476161, -0.263595,
		-0.490655, 0.452098, -0.744892,
		-0.235518, 0.754240, 0.612906,
		66.647942, 58.763908, 59.440922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.646233, 58.859177, 58.638206>,  <66.812805, 58.235939, 59.011887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.646233, 58.859177, 58.638206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.792870, 58.951942, 58.998611>,  <66.880852, 59.007603, 59.214855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.792870, 58.951942, 58.998611>,  <66.646233, 58.859177, 58.638206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.792870, 58.951942, 58.998611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796186, 0.422839, -0.432775,
		-0.481350, 0.876027, -0.029637,
		0.366591, 0.231913, 0.901015,
		66.902847, 59.021515, 59.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.407066, 58.928806, 58.597382>,  <66.646233, 58.859177, 58.638206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.407066, 58.928806, 58.597382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.634117, 59.223385, 58.450165>,  <67.770348, 59.400131, 58.361835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.634117, 59.223385, 58.450165>,  <67.407066, 58.928806, 58.597382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.634117, 59.223385, 58.450165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676857, -0.671930, -0.300624,
		-0.468694, -0.078474, -0.879868,
		0.567619, 0.736446, -0.368045,
		67.804405, 59.444317, 58.339752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.742897, 58.734882, 57.946911>,  <67.407066, 58.928806, 58.597382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.742897, 58.734882, 57.946911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.973106, 59.036045, 58.074608>,  <68.111229, 59.216743, 58.151226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.973106, 59.036045, 58.074608>,  <67.742897, 58.734882, 57.946911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.973106, 59.036045, 58.074608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817488, -0.519082, -0.249535,
		-0.022164, 0.404587, -0.914231,
		0.575519, 0.752904, 0.319240,
		68.145760, 59.261917, 58.170380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.298607, 58.666149, 57.505135>,  <67.742897, 58.734882, 57.946911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.298607, 58.666149, 57.505135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.431709, 58.871258, 57.821701>,  <68.511574, 58.994324, 58.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.431709, 58.871258, 57.821701>,  <68.298607, 58.666149, 57.505135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.431709, 58.871258, 57.821701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906860, -0.404154, -0.119435,
		0.258613, 0.757449, -0.599491,
		0.332753, 0.512767, 0.791420,
		68.531532, 59.025089, 58.059128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.966331, 58.762249, 57.399803>,  <68.298607, 58.666149, 57.505135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.966331, 58.762249, 57.399803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.933403, 58.842358, 57.790314>,  <68.913651, 58.890423, 58.024620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.933403, 58.842358, 57.790314>,  <68.966331, 58.762249, 57.399803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.933403, 58.842358, 57.790314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968006, -0.216928, 0.126119,
		0.237039, 0.955423, -0.176007,
		-0.082316, 0.200271, 0.976276,
		68.908707, 58.902439, 58.083199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.526741, 59.176205, 57.712635>,  <68.966331, 58.762249, 57.399803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.526741, 59.176205, 57.712635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.387047, 58.971428, 58.026566>,  <69.303230, 58.848560, 58.214924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.387047, 58.971428, 58.026566>,  <69.526741, 59.176205, 57.712635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.387047, 58.971428, 58.026566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927301, -0.068418, 0.368012,
		-0.134706, 0.856290, 0.498620,
		-0.349239, -0.511944, 0.784822,
		69.282272, 58.817844, 58.262012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.903870, 59.423111, 58.315868>,  <69.526741, 59.176205, 57.712635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.903870, 59.423111, 58.315868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.772186, 59.048500, 58.364113>,  <69.693176, 58.823734, 58.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.772186, 59.048500, 58.364113>,  <69.903870, 59.423111, 58.315868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.772186, 59.048500, 58.364113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915286, -0.285089, 0.284562,
		-0.232116, 0.204069, 0.951040,
		-0.329202, -0.936525, 0.120608,
		69.673424, 58.767544, 58.400295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.857231, 59.166679, 59.040798>,  <69.903870, 59.423111, 58.315868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.857231, 59.166679, 59.040798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.910957, 58.855721, 58.794998>,  <69.943192, 58.669144, 58.647518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.910957, 58.855721, 58.794998>,  <69.857231, 59.166679, 59.040798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.910957, 58.855721, 58.794998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793496, -0.287080, 0.536608,
		-0.593570, -0.559676, 0.578306,
		0.134306, -0.777398, -0.614503,
		69.951248, 58.622501, 58.610649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.774780, 58.409565, 59.264645>,  <69.857231, 59.166679, 59.040798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.774780, 58.409565, 59.264645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.068718, 58.509888, 59.012581>,  <70.245079, 58.570080, 58.861343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.068718, 58.509888, 59.012581>,  <69.774780, 58.409565, 59.264645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.068718, 58.509888, 59.012581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676944, -0.328547, 0.658638,
		-0.041848, -0.910579, -0.411211,
		0.734844, 0.250804, -0.630160,
		70.289169, 58.585129, 58.823532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.450989, 58.322350, 59.707935>,  <69.774780, 58.409565, 59.264645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.450989, 58.322350, 59.707935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.112068, 58.115494, 59.659546>,  <69.908714, 57.991379, 59.630512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.112068, 58.115494, 59.659546>,  <70.450989, 58.322350, 59.707935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.112068, 58.115494, 59.659546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503888, -0.854737, 0.124586,
		-0.167832, 0.044604, 0.984806,
		-0.847307, -0.517142, -0.120976,
		69.857880, 57.960350, 59.623253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.761627, 58.272766, 60.423286>,  <70.450989, 58.322350, 59.707935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.761627, 58.272766, 60.423286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.417412, 58.140022, 60.577866>,  <70.210884, 58.060375, 60.670612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.417412, 58.140022, 60.577866>,  <70.761627, 58.272766, 60.423286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.417412, 58.140022, 60.577866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421820, -0.889553, 0.175398,
		0.285560, 0.313948, 0.905479,
		-0.860537, -0.331862, 0.386450,
		70.159248, 58.040462, 60.693802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.271828, 58.315044, 59.838783>,  <70.761627, 58.272766, 60.423286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.271828, 58.315044, 59.838783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.001701, 58.609779, 59.825951>,  <70.839630, 58.786621, 59.818249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.001701, 58.609779, 59.825951>,  <71.271828, 58.315044, 59.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.001701, 58.609779, 59.825951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544841, 0.527723, 0.651657,
		0.497095, 0.422591, -0.757835,
		-0.675312, 0.736835, -0.032084,
		70.799110, 58.830830, 59.816326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.516006, 57.599339, 60.190506>,  <71.271828, 58.315044, 59.838783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.516006, 57.599339, 60.190506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.770470, 57.755051, 60.456970>,  <71.923149, 57.848480, 60.616848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.770470, 57.755051, 60.456970>,  <71.516006, 57.599339, 60.190506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.770470, 57.755051, 60.456970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699503, -0.655323, -0.285039,
		0.325592, 0.647311, -0.689187,
		0.636149, 0.389282, 0.666164,
		71.961311, 57.871834, 60.656818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.171532, 57.649559, 59.912655>,  <71.516006, 57.599339, 60.190506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.171532, 57.649559, 59.912655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.247253, 57.665443, 60.305099>,  <72.292686, 57.674973, 60.540565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.247253, 57.665443, 60.305099>,  <72.171532, 57.649559, 59.912655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.247253, 57.665443, 60.305099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685024, -0.721205, -0.102984,
		0.703495, 0.691583, -0.163731,
		0.189305, 0.039711, 0.981115,
		72.304047, 57.677357, 60.599434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.791985, 57.874878, 60.109108>,  <72.171532, 57.649559, 59.912655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.791985, 57.874878, 60.109108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.692497, 57.610081, 60.391922>,  <72.632805, 57.451202, 60.561611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.692497, 57.610081, 60.391922>,  <72.791985, 57.874878, 60.109108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.692497, 57.610081, 60.391922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693524, -0.631297, -0.347115,
		0.676138, 0.404012, 0.616126,
		-0.248720, -0.661996, 0.707036,
		72.617882, 57.411484, 60.604034>
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
