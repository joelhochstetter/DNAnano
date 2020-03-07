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
	<36.102757, 53.049385, 49.327415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948124, 52.849739, 49.637627>,  <35.855343, 52.729954, 49.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948124, 52.849739, 49.637627>,  <36.102757, 53.049385, 49.327415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948124, 52.849739, 49.637627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901788, -0.380743, 0.204480,
		0.193218, 0.778410, 0.597281,
		-0.386580, -0.499112, 0.775528,
		35.832150, 52.700005, 49.870285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526596, 53.330627, 49.859470>,  <36.102757, 53.049385, 49.327415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526596, 53.330627, 49.859470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387871, 52.969109, 49.959770>,  <36.304634, 52.752197, 50.019951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387871, 52.969109, 49.959770>,  <36.526596, 53.330627, 49.859470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387871, 52.969109, 49.959770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903833, -0.250609, 0.346816,
		-0.250609, 0.346919, 0.903793,
		-0.346816, -0.903793, 0.250751,
		36.283825, 52.697971, 50.034996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619061, 53.211800, 50.591080>,  <36.526596, 53.330627, 49.859470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619061, 53.211800, 50.591080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627987, 52.867085, 50.388371>,  <36.633343, 52.660255, 50.266747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627987, 52.867085, 50.388371>,  <36.619061, 53.211800, 50.591080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627987, 52.867085, 50.388371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922537, -0.177584, 0.342622,
		-0.385263, -0.475162, 0.791072,
		0.022319, -0.861792, -0.506771,
		36.634682, 52.608547, 50.236340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657413, 52.627815, 51.116600>,  <36.619061, 53.211800, 50.591080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657413, 52.627815, 51.116600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833031, 52.584488, 50.759834>,  <36.938400, 52.558491, 50.545776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833031, 52.584488, 50.759834>,  <36.657413, 52.627815, 51.116600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833031, 52.584488, 50.759834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881463, -0.140290, 0.450935,
		-0.173969, -0.984168, 0.033882,
		0.439042, -0.108315, -0.891914,
		36.964745, 52.551994, 50.492260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167236, 52.110626, 51.151928>,  <36.657413, 52.627815, 51.116600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167236, 52.110626, 51.151928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273911, 52.368378, 50.865250>,  <37.337914, 52.523029, 50.693245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273911, 52.368378, 50.865250>,  <37.167236, 52.110626, 51.151928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273911, 52.368378, 50.865250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920554, 0.049906, 0.387414,
		0.285411, -0.763072, -0.579880,
		0.266685, 0.644383, -0.716693,
		37.353916, 52.561691, 50.650242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775547, 51.832970, 50.807499>,  <37.167236, 52.110626, 51.151928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775547, 51.832970, 50.807499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763172, 52.230171, 50.761925>,  <37.755749, 52.468494, 50.734581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763172, 52.230171, 50.761925>,  <37.775547, 51.832970, 50.807499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763172, 52.230171, 50.761925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962875, 0.060191, 0.263153,
		0.268170, -0.101564, -0.958003,
		-0.030936, 0.993007, -0.113935,
		37.753891, 52.528072, 50.727745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073875, 52.206017, 50.164536>,  <37.775547, 51.832970, 50.807499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073875, 52.206017, 50.164536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085159, 52.429634, 50.495998>,  <38.091930, 52.563805, 50.694878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085159, 52.429634, 50.495998>,  <38.073875, 52.206017, 50.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085159, 52.429634, 50.495998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997326, 0.040171, -0.061052,
		-0.067419, 0.828165, -0.556415,
		0.028209, 0.559043, 0.828659,
		38.093620, 52.597347, 50.744595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447926, 52.827011, 49.933903>,  <38.073875, 52.206017, 50.164536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447926, 52.827011, 49.933903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506786, 52.723015, 50.315636>,  <38.542103, 52.660618, 50.544674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506786, 52.723015, 50.315636>,  <38.447926, 52.827011, 49.933903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506786, 52.723015, 50.315636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988701, 0.066554, -0.134320,
		-0.028593, 0.963315, 0.266847,
		0.147152, -0.259991, 0.954333,
		38.550930, 52.645016, 50.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743282, 53.377388, 50.320850>,  <38.447926, 52.827011, 49.933903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743282, 53.377388, 50.320850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856091, 53.022560, 50.467041>,  <38.923775, 52.809666, 50.554756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856091, 53.022560, 50.467041>,  <38.743282, 53.377388, 50.320850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856091, 53.022560, 50.467041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952695, 0.303919, 0.002506,
		-0.113299, 0.347483, 0.930816,
		0.282022, -0.887067, 0.365479,
		38.940697, 52.756439, 50.576683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116581, 53.429207, 50.969345>,  <38.743282, 53.377388, 50.320850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116581, 53.429207, 50.969345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237324, 53.095352, 50.785057>,  <39.309769, 52.895039, 50.674484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237324, 53.095352, 50.785057>,  <39.116581, 53.429207, 50.969345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237324, 53.095352, 50.785057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953319, 0.260159, 0.153301,
		-0.008090, -0.485490, 0.874205,
		0.301858, -0.834636, -0.460722,
		39.327881, 52.844963, 50.646839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547295, 52.993725, 51.439453>,  <39.116581, 53.429207, 50.969345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547295, 52.993725, 51.439453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681210, 52.914448, 51.070969>,  <39.761559, 52.866882, 50.849876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681210, 52.914448, 51.070969>,  <39.547295, 52.993725, 51.439453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681210, 52.914448, 51.070969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939685, -0.002473, 0.342032,
		-0.070067, -0.980160, 0.185413,
		0.334787, -0.198194, -0.921215,
		39.781647, 52.854988, 50.794605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352634, 53.026005, 51.566483>,  <39.547295, 52.993725, 51.439453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352634, 53.026005, 51.566483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113960, 53.337318, 51.644699>,  <39.970757, 53.524109, 51.691631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113960, 53.337318, 51.644699>,  <40.352634, 53.026005, 51.566483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113960, 53.337318, 51.644699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743872, 0.627847, -0.229047,
		-0.301037, 0.008792, -0.953572,
		-0.596683, 0.778287, 0.195545,
		39.934956, 53.570805, 51.703362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441868, 53.516853, 50.913395>,  <40.352634, 53.026005, 51.566483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441868, 53.516853, 50.913395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339588, 53.702663, 51.252533>,  <40.278221, 53.814148, 51.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339588, 53.702663, 51.252533>,  <40.441868, 53.516853, 50.913395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339588, 53.702663, 51.252533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756295, 0.642398, -0.123870,
		-0.602191, 0.609544, -0.515579,
		-0.255703, 0.464523, 0.847841,
		40.262878, 53.842022, 51.506886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233303, 54.211678, 50.737362>,  <40.441868, 53.516853, 50.913395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233303, 54.211678, 50.737362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376682, 54.165703, 51.107941>,  <40.462708, 54.138119, 51.330288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376682, 54.165703, 51.107941>,  <40.233303, 54.211678, 50.737362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376682, 54.165703, 51.107941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746063, 0.631802, -0.210274,
		-0.561165, 0.766561, 0.312214,
		0.358446, -0.114933, 0.926449,
		40.484215, 54.131222, 51.385876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304432, 54.914604, 51.029755>,  <40.233303, 54.211678, 50.737362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304432, 54.914604, 51.029755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540909, 54.608742, 51.132355>,  <40.682793, 54.425224, 51.193916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540909, 54.608742, 51.132355>,  <40.304432, 54.914604, 51.029755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540909, 54.608742, 51.132355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791675, 0.489407, -0.365692,
		0.154097, 0.419257, 0.894694,
		0.591189, -0.764659, 0.256499,
		40.718266, 54.379345, 51.209305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940456, 55.131481, 51.519630>,  <40.304432, 54.914604, 51.029755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940456, 55.131481, 51.519630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993351, 54.820065, 51.274231>,  <41.025085, 54.633213, 51.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993351, 54.820065, 51.274231>,  <40.940456, 55.131481, 51.519630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993351, 54.820065, 51.274231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732387, 0.493806, -0.468790,
		0.667924, -0.387330, 0.635494,
		0.132234, -0.778544, -0.613501,
		41.033020, 54.586502, 51.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598438, 54.813927, 51.595974>,  <40.940456, 55.131481, 51.519630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598438, 54.813927, 51.595974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478104, 54.762871, 51.217934>,  <41.405903, 54.732239, 50.991112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478104, 54.762871, 51.217934>,  <41.598438, 54.813927, 51.595974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478104, 54.762871, 51.217934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843028, 0.427732, -0.326111,
		0.445873, -0.894848, -0.021072,
		-0.300833, -0.127640, -0.945096,
		41.387856, 54.724579, 50.934406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108940, 54.833340, 51.038040>,  <41.598438, 54.813927, 51.595974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108940, 54.833340, 51.038040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402599, 54.567513, 50.982353>,  <42.578793, 54.408016, 50.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402599, 54.567513, 50.982353>,  <42.108940, 54.833340, 51.038040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402599, 54.567513, 50.982353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506933, 0.672866, -0.538767,
		0.451721, 0.324959, 0.830872,
		0.734143, -0.664569, -0.139215,
		42.622841, 54.368141, 50.940590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633350, 55.239479, 50.937614>,  <42.108940, 54.833340, 51.038040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633350, 55.239479, 50.937614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777504, 54.913166, 50.756676>,  <42.863998, 54.717377, 50.648113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777504, 54.913166, 50.756676>,  <42.633350, 55.239479, 50.937614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777504, 54.913166, 50.756676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592245, 0.574759, -0.564711,
		0.720672, -0.064384, 0.690280,
		0.360386, -0.815786, -0.452344,
		42.885620, 54.668430, 50.620972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362827, 55.112255, 50.972019>,  <42.633350, 55.239479, 50.937614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362827, 55.112255, 50.972019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252476, 54.964542, 50.617050>,  <43.186264, 54.875916, 50.404068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252476, 54.964542, 50.617050>,  <43.362827, 55.112255, 50.972019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252476, 54.964542, 50.617050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665832, 0.592441, -0.453521,
		0.693224, -0.715992, 0.082439,
		-0.275877, -0.369282, -0.887424,
		43.169712, 54.853756, 50.350822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633923, 55.192131, 51.592251>,  <43.362827, 55.112255, 50.972019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633923, 55.192131, 51.592251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662319, 54.793140, 51.591671>,  <43.679356, 54.553745, 51.591324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662319, 54.793140, 51.591671>,  <43.633923, 55.192131, 51.592251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662319, 54.793140, 51.591671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865553, 0.060878, 0.497103,
		-0.495760, -0.036541, 0.867690,
		0.070988, -0.997476, -0.001447,
		43.683617, 54.493896, 51.591236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485500, 54.865494, 52.299377>,  <43.633923, 55.192131, 51.592251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485500, 54.865494, 52.299377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760681, 54.692287, 52.066406>,  <43.925789, 54.588364, 51.926624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760681, 54.692287, 52.066406>,  <43.485500, 54.865494, 52.299377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760681, 54.692287, 52.066406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712678, 0.251391, 0.654898,
		-0.137162, -0.865623, 0.481544,
		0.687951, -0.433013, -0.582429,
		43.967068, 54.562386, 51.891678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832474, 54.408630, 52.752232>,  <43.485500, 54.865494, 52.299377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832474, 54.408630, 52.752232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062485, 54.524151, 52.446045>,  <44.200489, 54.593464, 52.262333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062485, 54.524151, 52.446045>,  <43.832474, 54.408630, 52.752232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062485, 54.524151, 52.446045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676923, 0.357514, 0.643396,
		0.459482, -0.888130, 0.010080,
		0.575023, 0.288806, -0.765467,
		44.234993, 54.610794, 52.216404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494106, 54.081509, 52.750538>,  <43.832474, 54.408630, 52.752232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494106, 54.081509, 52.750538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517815, 54.441158, 52.577072>,  <44.532040, 54.656948, 52.472992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517815, 54.441158, 52.577072>,  <44.494106, 54.081509, 52.750538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517815, 54.441158, 52.577072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895415, 0.144150, 0.421252,
		0.441270, -0.413279, -0.796543,
		0.059273, 0.899122, -0.433666,
		44.535595, 54.710896, 52.446972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201340, 54.148994, 52.303883>,  <44.494106, 54.081509, 52.750538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201340, 54.148994, 52.303883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046211, 54.466278, 52.491676>,  <44.953133, 54.656647, 52.604355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046211, 54.466278, 52.491676>,  <45.201340, 54.148994, 52.303883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046211, 54.466278, 52.491676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870117, 0.146993, 0.470414,
		0.304123, 0.590946, -0.747189,
		-0.387821, 0.793206, 0.469489,
		44.929867, 54.704239, 52.632523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693916, 54.619339, 52.219929>,  <45.201340, 54.148994, 52.303883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693916, 54.619339, 52.219929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500107, 54.704952, 52.559204>,  <45.383823, 54.756321, 52.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500107, 54.704952, 52.559204>,  <45.693916, 54.619339, 52.219929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500107, 54.704952, 52.559204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874220, 0.153199, 0.460728,
		-0.031330, 0.964738, -0.261342,
		-0.484519, 0.214035, 0.848192,
		45.354752, 54.769161, 52.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688572, 55.328205, 52.447208>,  <45.693916, 54.619339, 52.219929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688572, 55.328205, 52.447208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706337, 55.042179, 52.726265>,  <45.716995, 54.870564, 52.893700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706337, 55.042179, 52.726265>,  <45.688572, 55.328205, 52.447208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706337, 55.042179, 52.726265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970881, 0.195450, 0.138526,
		-0.235410, 0.671178, 0.702924,
		0.044412, -0.715066, 0.697645,
		45.719662, 54.827660, 52.935558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167091, 55.571827, 52.971527>,  <45.688572, 55.328205, 52.447208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167091, 55.571827, 52.971527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161461, 55.175701, 53.026775>,  <46.158085, 54.938026, 53.059925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161461, 55.175701, 53.026775>,  <46.167091, 55.571827, 52.971527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161461, 55.175701, 53.026775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906287, 0.045726, 0.420182,
		-0.422428, 0.131094, 0.896866,
		-0.014073, -0.990315, 0.138125,
		46.157238, 54.878605, 53.068214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499340, 55.408981, 53.725357>,  <46.167091, 55.571827, 52.971527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499340, 55.408981, 53.725357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589668, 55.103115, 53.483932>,  <46.643864, 54.919594, 53.339077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589668, 55.103115, 53.483932>,  <46.499340, 55.408981, 53.725357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589668, 55.103115, 53.483932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956055, 0.055038, 0.287976,
		-0.186987, -0.642071, 0.743492,
		0.225821, -0.764667, -0.603564,
		46.657413, 54.873714, 53.302864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776760, 54.759655, 54.077263>,  <46.499340, 55.408981, 53.725357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776760, 54.759655, 54.077263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902790, 54.855492, 53.709930>,  <46.978409, 54.912994, 53.489532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902790, 54.855492, 53.709930>,  <46.776760, 54.759655, 54.077263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.902790, 54.855492, 53.709930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916768, 0.173456, 0.359790,
		0.245490, -0.955254, -0.164995,
		0.315072, 0.239588, -0.918329,
		46.997311, 54.927368, 53.434433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.528336, 54.449467, 53.702244>,  <46.776760, 54.759655, 54.077263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.528336, 54.449467, 53.702244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452133, 54.820145, 53.572662>,  <47.406414, 55.042553, 53.494911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452133, 54.820145, 53.572662>,  <47.528336, 54.449467, 53.702244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.452133, 54.820145, 53.572662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923473, 0.281116, 0.261096,
		0.333025, -0.249424, -0.909330,
		-0.190504, 0.926694, -0.323955,
		47.394981, 55.098152, 53.475475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.207008, 54.644154, 53.371998>,  <47.528336, 54.449467, 53.702244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.207008, 54.644154, 53.371998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957737, 54.941933, 53.467865>,  <47.808174, 55.120602, 53.525387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957737, 54.941933, 53.467865>,  <48.207008, 54.644154, 53.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.957737, 54.941933, 53.467865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774905, 0.546335, 0.317869,
		0.105697, 0.383811, -0.917342,
		-0.623177, 0.744451, 0.239671,
		47.770782, 55.165268, 53.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.895470, 54.752464, 53.662971>,  <48.207008, 54.644154, 53.371998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.895470, 54.752464, 53.662971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.140179, 55.035736, 53.521996>,  <49.287003, 55.205700, 53.437412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.140179, 55.035736, 53.521996>,  <48.895470, 54.752464, 53.662971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.140179, 55.035736, 53.521996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280480, -0.222393, -0.933741,
		-0.739638, 0.670089, 0.062576,
		0.611773, 0.708182, -0.352437,
		49.323711, 55.248192, 53.416264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.768757, 55.497921, 53.854324>,  <48.895470, 54.752464, 53.662971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.768757, 55.497921, 53.854324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.108288, 55.288261, 53.881912>,  <49.312008, 55.162468, 53.898464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.108288, 55.288261, 53.881912>,  <48.768757, 55.497921, 53.854324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.108288, 55.288261, 53.881912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471103, 0.809144, 0.351209,
		-0.239889, -0.265627, 0.933754,
		0.848832, -0.524145, 0.068967,
		49.362938, 55.131020, 53.902603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.978943, 55.451321, 54.526817>,  <48.768757, 55.497921, 53.854324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.978943, 55.451321, 54.526817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.279694, 55.437160, 54.263474>,  <49.460144, 55.428665, 54.105469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.279694, 55.437160, 54.263474>,  <48.978943, 55.451321, 54.526817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.279694, 55.437160, 54.263474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258492, 0.934438, 0.244964,
		0.606523, -0.354362, 0.711729,
		0.751873, -0.035400, -0.658358,
		49.505257, 55.426540, 54.065968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.571609, 55.776363, 54.757900>,  <48.978943, 55.451321, 54.526817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.571609, 55.776363, 54.757900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.629158, 55.797485, 54.362625>,  <49.663685, 55.810158, 54.125462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.629158, 55.797485, 54.362625>,  <49.571609, 55.776363, 54.757900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.629158, 55.797485, 54.362625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206598, 0.974969, 0.082181,
		0.967791, -0.215981, 0.129357,
		0.143868, 0.052809, -0.988187,
		49.672318, 55.813328, 54.066170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.184200, 56.161243, 54.694122>,  <49.571609, 55.776363, 54.757900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.184200, 56.161243, 54.694122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.920692, 56.190536, 54.394615>,  <49.762589, 56.208111, 54.214909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.920692, 56.190536, 54.394615>,  <50.184200, 56.161243, 54.694122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.920692, 56.190536, 54.394615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018878, 0.996547, 0.080854,
		0.752107, 0.039129, -0.657879,
		-0.658771, 0.073231, -0.748771,
		49.723061, 56.212505, 54.169983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.266216, 56.796425, 54.252213>,  <50.184200, 56.161243, 54.694122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.266216, 56.796425, 54.252213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.894249, 56.678467, 54.164322>,  <49.671066, 56.607693, 54.111588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.894249, 56.678467, 54.164322>,  <50.266216, 56.796425, 54.252213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.894249, 56.678467, 54.164322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282900, 0.955380, -0.084950,
		0.234973, -0.016837, -0.971856,
		-0.929922, -0.294899, -0.219725,
		49.615273, 56.589996, 54.098404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.114513, 57.375069, 53.927780>,  <50.266216, 56.796425, 54.252213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.114513, 57.375069, 53.927780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.779232, 57.169437, 54.000584>,  <49.578064, 57.046059, 54.044266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.779232, 57.169437, 54.000584>,  <50.114513, 57.375069, 53.927780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.779232, 57.169437, 54.000584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533517, 0.842151, -0.078363,
		-0.112994, -0.162789, -0.980169,
		-0.838208, -0.514083, 0.182009,
		49.527771, 57.015213, 54.055187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.308422, 57.361599, 54.722099>,  <50.114513, 57.375069, 53.927780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.308422, 57.361599, 54.722099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.520847, 57.032166, 54.642418>,  <50.648304, 56.834507, 54.594608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.520847, 57.032166, 54.642418>,  <50.308422, 57.361599, 54.722099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.520847, 57.032166, 54.642418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742536, 0.565593, -0.358811,
		0.408179, 0.042635, 0.911906,
		0.531065, -0.823582, -0.199205,
		50.680168, 56.785091, 54.582657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.822849, 57.651058, 54.943619>,  <50.308422, 57.361599, 54.722099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.822849, 57.651058, 54.943619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.882526, 57.382633, 54.653126>,  <50.918335, 57.221581, 54.478828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.882526, 57.382633, 54.653126>,  <50.822849, 57.651058, 54.943619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.882526, 57.382633, 54.653126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754910, 0.551658, -0.354660,
		0.638632, -0.495329, 0.588895,
		0.149195, -0.671061, -0.726236,
		50.927284, 57.181316, 54.435253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.577812, 57.598240, 54.838333>,  <50.822849, 57.651058, 54.943619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.577812, 57.598240, 54.838333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.385334, 57.504349, 54.500492>,  <51.269848, 57.448013, 54.297787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.385334, 57.504349, 54.500492>,  <51.577812, 57.598240, 54.838333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.385334, 57.504349, 54.500492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624426, 0.584449, -0.518181,
		0.615258, -0.776739, -0.134665,
		-0.481196, -0.234726, -0.844603,
		51.240974, 57.433929, 54.247112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.511948, 57.509335, 55.507019>,  <51.577812, 57.598240, 54.838333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.511948, 57.509335, 55.507019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831753, 57.598240, 55.730225>,  <52.023636, 57.651581, 55.864147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831753, 57.598240, 55.730225>,  <51.511948, 57.509335, 55.507019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.831753, 57.598240, 55.730225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184569, -0.793164, 0.580367,
		0.571588, -0.567003, -0.593123,
		0.799513, 0.222259, 0.558014,
		52.071606, 57.664917, 55.897629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.051373, 57.007675, 55.516193>,  <51.511948, 57.509335, 55.507019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.051373, 57.007675, 55.516193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.110165, 57.201782, 55.860962>,  <52.145439, 57.318245, 56.067825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.110165, 57.201782, 55.860962>,  <52.051373, 57.007675, 55.516193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.110165, 57.201782, 55.860962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215861, -0.866121, 0.450819,
		0.965298, 0.119792, -0.232056,
		0.146984, 0.485267, 0.861923,
		52.154259, 57.347363, 56.119537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.767513, 56.786343, 55.765560>,  <52.051373, 57.007675, 55.516193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.767513, 56.786343, 55.765560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.557232, 56.925617, 56.076019>,  <52.431065, 57.009182, 56.262295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.557232, 56.925617, 56.076019>,  <52.767513, 56.786343, 55.765560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.557232, 56.925617, 56.076019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173638, -0.849263, 0.498600,
		0.832758, 0.396883, 0.386002,
		-0.525703, 0.348189, 0.776145,
		52.399521, 57.030075, 56.308865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.074997, 56.836475, 56.471626>,  <52.767513, 56.786343, 55.765560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.074997, 56.836475, 56.471626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.697449, 56.732815, 56.553551>,  <52.470921, 56.670616, 56.602707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.697449, 56.732815, 56.553551>,  <53.074997, 56.836475, 56.471626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.697449, 56.732815, 56.553551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325576, -0.834573, 0.444396,
		0.055763, 0.486135, 0.872103,
		-0.943870, -0.259155, 0.204813,
		52.414288, 56.655067, 56.614994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.410938, 56.523495, 57.104691>,  <53.074997, 56.836475, 56.471626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.410938, 56.523495, 57.104691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.437210, 56.131382, 57.030144>,  <53.452972, 55.896114, 56.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.437210, 56.131382, 57.030144>,  <53.410938, 56.523495, 57.104691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.437210, 56.131382, 57.030144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043201, 0.183805, -0.982013,
		0.996905, 0.072548, -0.030278,
		0.065678, -0.980282, -0.186370,
		53.456913, 55.837296, 56.974232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.850929, 56.370438, 56.481396>,  <53.410938, 56.523495, 57.104691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.850929, 56.370438, 56.481396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.587574, 56.071625, 56.518211>,  <53.429562, 55.892338, 56.540298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.587574, 56.071625, 56.518211>,  <53.850929, 56.370438, 56.481396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.587574, 56.071625, 56.518211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172899, 0.031096, -0.984449,
		0.732553, -0.664060, -0.149634,
		-0.658386, -0.747032, 0.092036,
		53.390057, 55.847515, 56.545822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.546780, 56.801174, 56.246437>,  <53.850929, 56.370438, 56.481396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.546780, 56.801174, 56.246437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.825676, 56.523979, 56.173088>,  <54.993011, 56.357662, 56.129078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.825676, 56.523979, 56.173088>,  <54.546780, 56.801174, 56.246437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.825676, 56.523979, 56.173088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660201, 0.521122, 0.540895,
		-0.279276, -0.498194, 0.820858,
		0.697237, -0.692990, -0.183372,
		55.034847, 56.316082, 56.118076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.844288, 56.408974, 56.864017>,  <54.546780, 56.801174, 56.246437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.844288, 56.408974, 56.864017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.118073, 56.413376, 56.572433>,  <55.282345, 56.416019, 56.397484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.118073, 56.413376, 56.572433>,  <54.844288, 56.408974, 56.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.118073, 56.413376, 56.572433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664069, 0.403223, 0.629622,
		0.300866, -0.915035, 0.268682,
		0.684465, 0.011008, -0.728963,
		55.323414, 56.416679, 56.353745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.411392, 56.151070, 57.030476>,  <54.844288, 56.408974, 56.864017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.411392, 56.151070, 57.030476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.535606, 56.413189, 56.755043>,  <55.610134, 56.570461, 56.589783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.535606, 56.413189, 56.755043>,  <55.411392, 56.151070, 57.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.535606, 56.413189, 56.755043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525262, 0.485462, 0.698876,
		0.792255, -0.578713, -0.193452,
		0.310535, 0.655301, -0.688585,
		55.628765, 56.609779, 56.548466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.153282, 56.293564, 56.992622>,  <55.411392, 56.151070, 57.030476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.153282, 56.293564, 56.992622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.019035, 56.637379, 56.838448>,  <55.938488, 56.843666, 56.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.019035, 56.637379, 56.838448>,  <56.153282, 56.293564, 56.992622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.019035, 56.637379, 56.838448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652520, 0.507232, 0.562968,
		0.679398, -0.062566, -0.731098,
		-0.335614, 0.859535, -0.385438,
		55.918350, 56.895241, 56.722816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.667362, 56.733597, 56.556316>,  <56.153282, 56.293564, 56.992622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.667362, 56.733597, 56.556316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.399315, 56.954987, 56.754150>,  <56.238487, 57.087818, 56.872852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.399315, 56.954987, 56.754150>,  <56.667362, 56.733597, 56.556316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.399315, 56.954987, 56.754150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726595, 0.352967, 0.589470,
		0.151682, 0.754376, -0.638678,
		-0.670114, 0.553472, 0.494586,
		56.198280, 57.121029, 56.902527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.789917, 57.450111, 56.330162>,  <56.667362, 56.733597, 56.556316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.789917, 57.450111, 56.330162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.704674, 57.375526, 56.713791>,  <56.653526, 57.330776, 56.943966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.704674, 57.375526, 56.713791>,  <56.789917, 57.450111, 56.330162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.704674, 57.375526, 56.713791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859916, 0.430202, 0.274718,
		-0.463818, 0.883266, 0.068661,
		-0.213111, -0.186462, 0.959070,
		56.640739, 57.319588, 57.001511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.701107, 58.150475, 56.674145>,  <56.789917, 57.450111, 56.330162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.701107, 58.150475, 56.674145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.851471, 57.828621, 56.857994>,  <56.941689, 57.635509, 56.968304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.851471, 57.828621, 56.857994>,  <56.701107, 58.150475, 56.674145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.851471, 57.828621, 56.857994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842613, 0.503207, 0.191799,
		-0.385613, 0.315183, 0.867158,
		0.375908, -0.804639, 0.459620,
		56.964245, 57.587231, 56.995880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.078251, 58.215164, 57.414322>,  <56.701107, 58.150475, 56.674145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.078251, 58.215164, 57.414322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.237175, 57.902840, 57.221458>,  <57.332527, 57.715443, 57.105740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.237175, 57.902840, 57.221458>,  <57.078251, 58.215164, 57.414322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.237175, 57.902840, 57.221458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915974, 0.305352, 0.260290,
		-0.056011, -0.545059, 0.836525,
		0.397308, -0.780814, -0.482157,
		57.356369, 57.668594, 57.076813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.482452, 57.824711, 57.794937>,  <57.078251, 58.215164, 57.414322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.482452, 57.824711, 57.794937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.594269, 57.833984, 57.410995>,  <57.661358, 57.839546, 57.180630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.594269, 57.833984, 57.410995>,  <57.482452, 57.824711, 57.794937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.594269, 57.833984, 57.410995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816410, 0.520392, 0.250333,
		0.505303, -0.853613, 0.126546,
		0.279540, 0.023181, -0.959854,
		57.678131, 57.840939, 57.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.070793, 57.516026, 57.625340>,  <57.482452, 57.824711, 57.794937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.070793, 57.516026, 57.625340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.983177, 57.833260, 57.397995>,  <57.930607, 58.023602, 57.261589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.983177, 57.833260, 57.397995>,  <58.070793, 57.516026, 57.625340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.983177, 57.833260, 57.397995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762719, 0.502455, 0.407184,
		0.608509, -0.344314, -0.714958,
		-0.219035, 0.793087, -0.568363,
		57.917465, 58.071186, 57.227486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.757793, 57.855370, 57.472450>,  <58.070793, 57.516026, 57.625340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.757793, 57.855370, 57.472450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.455162, 58.114948, 57.440308>,  <58.273582, 58.270695, 57.421024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.455162, 58.114948, 57.440308>,  <58.757793, 57.855370, 57.472450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.455162, 58.114948, 57.440308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562863, 0.708849, 0.425110,
		0.332834, 0.276400, -0.901568,
		-0.756576, 0.648950, -0.080354,
		58.228188, 58.309635, 57.416203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.945690, 58.476345, 57.208130>,  <58.757793, 57.855370, 57.472450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.945690, 58.476345, 57.208130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.619720, 58.534943, 57.432426>,  <58.424137, 58.570103, 57.567005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.619720, 58.534943, 57.432426>,  <58.945690, 58.476345, 57.208130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.619720, 58.534943, 57.432426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511359, 0.637113, 0.576714,
		-0.272769, 0.756720, -0.594114,
		-0.814929, 0.146496, 0.560740,
		58.375240, 58.578892, 57.600647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.758438, 59.237240, 57.173061>,  <58.945690, 58.476345, 57.208130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.758438, 59.237240, 57.173061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.681076, 59.043633, 57.514427>,  <58.634659, 58.927467, 57.719246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.681076, 59.043633, 57.514427>,  <58.758438, 59.237240, 57.173061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.681076, 59.043633, 57.514427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689963, 0.551314, 0.469044,
		-0.697528, 0.679541, 0.227330,
		-0.193404, -0.484021, 0.853416,
		58.623055, 58.898426, 57.770451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.499199, 59.736282, 57.587208>,  <58.758438, 59.237240, 57.173061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.499199, 59.736282, 57.587208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672028, 59.431633, 57.780388>,  <58.775726, 59.248844, 57.896297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672028, 59.431633, 57.780388>,  <58.499199, 59.736282, 57.587208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.672028, 59.431633, 57.780388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581380, 0.644621, 0.496448,
		-0.689426, 0.066274, 0.721318,
		0.432076, -0.761624, 0.482949,
		58.801651, 59.203144, 57.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.414421, 59.476303, 58.411724>,  <58.499199, 59.736282, 57.587208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.414421, 59.476303, 58.411724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.762100, 59.481270, 58.214005>,  <58.970707, 59.484249, 58.095371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.762100, 59.481270, 58.214005>,  <58.414421, 59.476303, 58.411724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.762100, 59.481270, 58.214005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298442, 0.783880, 0.544485,
		0.394233, -0.620788, 0.677645,
		0.869203, 0.012416, -0.494301,
		59.022861, 59.484993, 58.065716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.806717, 59.948410, 58.801414>,  <58.414421, 59.476303, 58.411724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.806717, 59.948410, 58.801414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.063087, 59.866802, 58.505417>,  <59.216911, 59.817837, 58.327820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.063087, 59.866802, 58.505417>,  <58.806717, 59.948410, 58.801414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.063087, 59.866802, 58.505417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621693, 0.703419, 0.344527,
		0.450232, -0.680864, 0.577681,
		0.640928, -0.204023, -0.739990,
		59.255367, 59.805595, 58.283421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.505531, 59.743950, 59.109871>,  <58.806717, 59.948410, 58.801414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.505531, 59.743950, 59.109871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.534470, 59.930408, 58.757172>,  <59.551834, 60.042282, 58.545551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.534470, 59.930408, 58.757172>,  <59.505531, 59.743950, 59.109871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.534470, 59.930408, 58.757172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589841, 0.692899, 0.414703,
		0.804272, -0.550094, -0.224820,
		0.072348, 0.466142, -0.881747,
		59.556175, 60.070251, 58.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.936161, 60.290329, 59.337891>,  <59.505531, 59.743950, 59.109871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.936161, 60.290329, 59.337891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.846474, 60.380600, 58.958672>,  <59.792664, 60.434761, 58.731140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.846474, 60.380600, 58.958672>,  <59.936161, 60.290329, 59.337891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.846474, 60.380600, 58.958672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553384, 0.830247, 0.066758,
		0.802180, -0.509666, -0.311041,
		-0.224217, 0.225677, -0.948049,
		59.779209, 60.448303, 58.674255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.567951, 60.509144, 58.924320>,  <59.936161, 60.290329, 59.337891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.567951, 60.509144, 58.924320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250038, 60.664829, 58.738060>,  <60.059288, 60.758240, 58.626305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250038, 60.664829, 58.738060>,  <60.567951, 60.509144, 58.924320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.250038, 60.664829, 58.738060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421010, 0.906223, 0.038873,
		0.437112, -0.165147, -0.884115,
		-0.794785, 0.389214, -0.465650,
		60.011604, 60.781593, 58.598366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.867256, 60.889233, 58.500263>,  <60.567951, 60.509144, 58.924320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.867256, 60.889233, 58.500263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.523949, 61.087143, 58.445755>,  <60.317963, 61.205887, 58.413048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.523949, 61.087143, 58.445755>,  <60.867256, 60.889233, 58.500263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.523949, 61.087143, 58.445755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501190, 0.865203, -0.015239,
		0.110365, -0.081379, -0.990554,
		-0.858270, 0.494774, -0.136275,
		60.266468, 61.235577, 58.404873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.217506, 60.531395, 57.938248>,  <60.867256, 60.889233, 58.500263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.217506, 60.531395, 57.938248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.108932, 60.149147, 57.984070>,  <61.043789, 59.919800, 58.011562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.108932, 60.149147, 57.984070>,  <61.217506, 60.531395, 57.938248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.108932, 60.149147, 57.984070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927410, -0.291516, -0.234368,
		0.257360, 0.042623, 0.965375,
		-0.271432, -0.955616, 0.114554,
		61.027504, 59.862461, 58.018436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.673435, 60.121861, 58.442051>,  <61.217506, 60.531395, 57.938248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.673435, 60.121861, 58.442051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.512291, 59.885647, 58.162346>,  <61.415604, 59.743919, 57.994522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.512291, 59.885647, 58.162346>,  <61.673435, 60.121861, 58.442051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.512291, 59.885647, 58.162346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912212, -0.321370, -0.254146,
		-0.074641, -0.740264, 0.668160,
		-0.402862, -0.590535, -0.699265,
		61.391434, 59.708485, 57.952568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.156139, 59.550030, 58.638130>,  <61.673435, 60.121861, 58.442051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.156139, 59.550030, 58.638130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.475258, 59.581596, 58.877228>,  <62.666729, 59.600536, 59.020687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.475258, 59.581596, 58.877228>,  <62.156139, 59.550030, 58.638130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.475258, 59.581596, 58.877228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379772, 0.704241, -0.599848,
		-0.468295, 0.705561, 0.531868,
		0.797793, 0.078918, 0.597745,
		62.714596, 59.605270, 59.056553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.248623, 60.269135, 58.942211>,  <62.156139, 59.550030, 58.638130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.248623, 60.269135, 58.942211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.592911, 60.071907, 58.891533>,  <62.799484, 59.953571, 58.861126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.592911, 60.071907, 58.891533>,  <62.248623, 60.269135, 58.942211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.592911, 60.071907, 58.891533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359052, 0.764389, -0.535529,
		0.360897, 0.415449, 0.834959,
		0.860718, -0.493065, -0.126697,
		62.851128, 59.923988, 58.853523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.526688, 60.745014, 58.640125>,  <62.248623, 60.269135, 58.942211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.526688, 60.745014, 58.640125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.793755, 60.452385, 58.584953>,  <62.953995, 60.276810, 58.551849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.793755, 60.452385, 58.584953>,  <62.526688, 60.745014, 58.640125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.793755, 60.452385, 58.584953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450488, 0.544528, -0.707496,
		0.592686, 0.410240, 0.693128,
		0.667670, -0.731569, -0.137926,
		62.994057, 60.232914, 58.543575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.187698, 61.139626, 58.684017>,  <62.526688, 60.745014, 58.640125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.187698, 61.139626, 58.684017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.517517, 60.921001, 58.742516>,  <63.715408, 60.789825, 58.777615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.517517, 60.921001, 58.742516>,  <63.187698, 61.139626, 58.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.517517, 60.921001, 58.742516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533160, -0.837104, -0.122463,
		0.189359, 0.023003, -0.981638,
		0.824551, -0.546560, 0.146249,
		63.764881, 60.757034, 58.786388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.414650, 60.675339, 58.155293>,  <63.187698, 61.139626, 58.684017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.414650, 60.675339, 58.155293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.542809, 60.522308, 58.501930>,  <63.619701, 60.430489, 58.709911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.542809, 60.522308, 58.501930>,  <63.414650, 60.675339, 58.155293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.542809, 60.522308, 58.501930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443532, -0.868932, -0.219629,
		0.837036, -0.313994, -0.448083,
		0.320392, -0.382576, 0.866594,
		63.638927, 60.407536, 58.761909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.649036, 60.050240, 57.941643>,  <63.414650, 60.675339, 58.155293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.649036, 60.050240, 57.941643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.566254, 60.053459, 58.332970>,  <63.516582, 60.055389, 58.567764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.566254, 60.053459, 58.332970>,  <63.649036, 60.050240, 57.941643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.566254, 60.053459, 58.332970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420330, -0.903705, -0.081487,
		0.883454, -0.428081, 0.190410,
		-0.206957, 0.008045, 0.978317,
		63.504166, 60.055874, 58.626465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.898041, 59.381516, 58.333008>,  <63.649036, 60.050240, 57.941643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.898041, 59.381516, 58.333008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.562012, 59.539047, 58.482239>,  <63.360394, 59.633568, 58.571777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.562012, 59.539047, 58.482239>,  <63.898041, 59.381516, 58.333008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.562012, 59.539047, 58.482239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471456, -0.870224, -0.142966,
		0.268353, -0.295989, 0.916721,
		-0.840069, 0.393828, 0.373073,
		63.309990, 59.657196, 58.594162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.673229, 58.930420, 58.966038>,  <63.898041, 59.381516, 58.333008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.673229, 58.930420, 58.966038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.396889, 59.149944, 58.777771>,  <63.231083, 59.281658, 58.664810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.396889, 59.149944, 58.777771>,  <63.673229, 58.930420, 58.966038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.396889, 59.149944, 58.777771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595412, -0.801161, -0.060211,
		-0.410124, 0.238644, 0.880254,
		-0.690856, 0.548808, -0.470667,
		63.189632, 59.314587, 58.636570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.290108, 59.251244, 59.306725>,  <63.673229, 58.930420, 58.966038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.290108, 59.251244, 59.306725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.180031, 59.007118, 59.603851>,  <64.113983, 58.860641, 59.782127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.180031, 59.007118, 59.603851>,  <64.290108, 59.251244, 59.306725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.180031, 59.007118, 59.603851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424192, 0.616293, 0.663508,
		-0.862745, 0.497692, 0.089291,
		-0.275194, -0.610315, 0.742821,
		64.097473, 58.824024, 59.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.958115, 59.146080, 59.808140>,  <64.290108, 59.251244, 59.306725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.958115, 59.146080, 59.808140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.817543, 58.783997, 59.903725>,  <64.733200, 58.566746, 59.961075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.817543, 58.783997, 59.903725>,  <64.958115, 59.146080, 59.808140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.817543, 58.783997, 59.903725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528808, -0.402553, -0.747203,
		0.772567, -0.136223, 0.620148,
		-0.351428, -0.905204, 0.238963,
		64.712112, 58.512436, 59.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.510208, 59.301506, 59.331100>,  <64.958115, 59.146080, 59.808140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.510208, 59.301506, 59.331100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.795067, 59.370735, 59.058952>,  <65.965981, 59.412273, 58.895664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.795067, 59.370735, 59.058952>,  <65.510208, 59.301506, 59.331100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.795067, 59.370735, 59.058952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682519, -0.397607, 0.613250,
		-0.164383, -0.901085, -0.401277,
		0.712141, 0.173071, -0.680368,
		66.008713, 59.422657, 58.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.976265, 58.725475, 59.167877>,  <65.510208, 59.301506, 59.331100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.976265, 58.725475, 59.167877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109047, 59.102581, 59.155251>,  <66.188721, 59.328846, 59.147675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.109047, 59.102581, 59.155251>,  <65.976265, 58.725475, 59.167877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.109047, 59.102581, 59.155251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702377, -0.224704, 0.675407,
		0.629656, -0.246382, -0.736769,
		0.331963, 0.942764, -0.031567,
		66.208633, 59.385410, 59.145779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.614418, 58.742432, 59.026077>,  <65.976265, 58.725475, 59.167877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.614418, 58.742432, 59.026077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.520348, 59.070297, 59.235016>,  <66.463905, 59.267017, 59.360378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.520348, 59.070297, 59.235016>,  <66.614418, 58.742432, 59.026077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.520348, 59.070297, 59.235016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716093, -0.217264, 0.663330,
		0.657197, 0.530040, -0.535864,
		-0.235168, 0.819667, 0.522343,
		66.449799, 59.316196, 59.391720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.291931, 59.055950, 59.153183>,  <66.614418, 58.742432, 59.026077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.291931, 59.055950, 59.153183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.013840, 59.135750, 59.429405>,  <66.846985, 59.183628, 59.595139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.013840, 59.135750, 59.429405>,  <67.291931, 59.055950, 59.153183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.013840, 59.135750, 59.429405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667379, -0.177674, 0.723213,
		0.266974, 0.963656, -0.009618,
		-0.695220, 0.199498, 0.690558,
		66.805275, 59.195599, 59.636574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.366692, 59.739090, 59.571552>,  <67.291931, 59.055950, 59.153183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.366692, 59.739090, 59.571552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.223663, 59.424095, 59.772354>,  <67.137848, 59.235096, 59.892834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.223663, 59.424095, 59.772354>,  <67.366692, 59.739090, 59.571552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.223663, 59.424095, 59.772354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918807, -0.200435, 0.340029,
		-0.167150, 0.582826, 0.795220,
		-0.357568, -0.787490, 0.502001,
		67.116394, 59.187847, 59.922955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.437363, 59.783775, 60.372353>,  <67.366692, 59.739090, 59.571552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.437363, 59.783775, 60.372353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.454170, 59.415695, 60.216682>,  <67.464256, 59.194847, 60.123280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.454170, 59.415695, 60.216682>,  <67.437363, 59.783775, 60.372353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.454170, 59.415695, 60.216682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967769, -0.059325, 0.244753,
		-0.248310, -0.386917, 0.888052,
		0.042015, -0.920204, -0.389177,
		67.466774, 59.139633, 60.099930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.828262, 59.409573, 60.862972>,  <67.437363, 59.783775, 60.372353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.828262, 59.409573, 60.862972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.837646, 59.271576, 60.487648>,  <67.843277, 59.188778, 60.262455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.837646, 59.271576, 60.487648>,  <67.828262, 59.409573, 60.862972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.837646, 59.271576, 60.487648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995579, -0.077325, 0.053320,
		-0.090950, -0.935415, 0.341654,
		0.023458, -0.344993, -0.938312,
		67.844681, 59.168079, 60.206154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.995010, 58.701237, 60.816948>,  <67.828262, 59.409573, 60.862972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.995010, 58.701237, 60.816948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.096344, 58.904354, 60.487595>,  <68.157143, 59.026222, 60.289982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.096344, 58.904354, 60.487595>,  <67.995010, 58.701237, 60.816948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.096344, 58.904354, 60.487595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962085, -0.043350, 0.269283,
		0.101046, -0.860390, -0.499519,
		0.253343, 0.507790, -0.823388,
		68.172348, 59.056690, 60.240578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.325241, 58.225780, 60.317406>,  <67.995010, 58.701237, 60.816948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.325241, 58.225780, 60.317406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.455170, 58.602055, 60.278214>,  <68.533127, 58.827820, 60.254700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.455170, 58.602055, 60.278214>,  <68.325241, 58.225780, 60.317406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.455170, 58.602055, 60.278214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945746, -0.322230, 0.041628,
		0.007588, -0.106182, -0.994318,
		0.324819, 0.940688, -0.097976,
		68.552612, 58.884262, 60.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.809059, 58.356922, 59.701557>,  <68.325241, 58.225780, 60.317406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.809059, 58.356922, 59.701557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.907631, 58.583038, 60.016449>,  <68.966774, 58.718708, 60.205383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.907631, 58.583038, 60.016449>,  <68.809059, 58.356922, 59.701557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.907631, 58.583038, 60.016449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955451, -0.277851, -0.099565,
		0.162449, 0.776692, -0.608572,
		0.246424, 0.565287, 0.787227,
		68.981560, 58.752625, 60.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.555420, 58.280270, 59.802776>,  <68.809059, 58.356922, 59.701557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.555420, 58.280270, 59.802776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.612732, 58.518417, 60.119003>,  <69.647118, 58.661308, 60.308739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.612732, 58.518417, 60.119003>,  <69.555420, 58.280270, 59.802776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.612732, 58.518417, 60.119003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981679, -0.186882, -0.037175,
		0.125610, 0.781412, -0.611242,
		0.143279, 0.595374, 0.790570,
		69.655716, 58.697029, 60.356174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.264313, 58.792645, 59.694866>,  <69.555420, 58.280270, 59.802776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.264313, 58.792645, 59.694866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.148094, 58.716553, 60.069969>,  <70.078362, 58.670898, 60.295033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.148094, 58.716553, 60.069969>,  <70.264313, 58.792645, 59.694866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.148094, 58.716553, 60.069969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915612, -0.339916, 0.214736,
		0.277910, 0.921016, 0.272939,
		-0.290552, -0.190229, 0.937759,
		70.060928, 58.659485, 60.351295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.604660, 59.082047, 60.222149>,  <70.264313, 58.792645, 59.694866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.604660, 59.082047, 60.222149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.493095, 58.740627, 60.398178>,  <70.426155, 58.535774, 60.503796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.493095, 58.740627, 60.398178>,  <70.604660, 59.082047, 60.222149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.493095, 58.740627, 60.398178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952035, -0.305819, 0.010239,
		0.125843, 0.421817, 0.897905,
		-0.278916, -0.853548, 0.440070,
		70.409424, 58.484562, 60.530197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.825813, 59.022423, 60.858055>,  <70.604660, 59.082047, 60.222149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.825813, 59.022423, 60.858055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.778503, 58.641300, 60.746223>,  <70.750122, 58.412624, 60.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.778503, 58.641300, 60.746223>,  <70.825813, 59.022423, 60.858055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.778503, 58.641300, 60.746223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959866, -0.181806, 0.213551,
		-0.254303, -0.243104, 0.936072,
		-0.118268, -0.952810, -0.279581,
		70.743019, 58.355457, 60.662350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.106339, 58.569580, 61.369030>,  <70.825813, 59.022423, 60.858055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.106339, 58.569580, 61.369030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.149513, 58.378094, 61.020508>,  <71.175415, 58.263203, 60.811394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.149513, 58.378094, 61.020508>,  <71.106339, 58.569580, 61.369030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.149513, 58.378094, 61.020508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914304, -0.296353, 0.276087,
		-0.390383, -0.826440, 0.405706,
		0.107937, -0.478718, -0.871308,
		71.181892, 58.234478, 60.759117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.385567, 57.916595, 61.474144>,  <71.106339, 58.569580, 61.369030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.385567, 57.916595, 61.474144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.478760, 58.024612, 61.100449>,  <71.534676, 58.089424, 60.876232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.478760, 58.024612, 61.100449>,  <71.385567, 57.916595, 61.474144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.478760, 58.024612, 61.100449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967673, -0.159780, 0.195141,
		-0.096576, -0.949498, -0.298539,
		0.232986, 0.270042, -0.934235,
		71.548653, 58.105625, 60.820179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.832947, 57.375916, 61.222725>,  <71.385567, 57.916595, 61.474144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.832947, 57.375916, 61.222725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.911148, 57.711639, 61.019814>,  <71.958069, 57.913074, 60.898067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.911148, 57.711639, 61.019814>,  <71.832947, 57.375916, 61.222725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.911148, 57.711639, 61.019814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971702, -0.095873, 0.215881,
		0.132557, -0.535132, -0.834303,
		0.195512, 0.839310, -0.507280,
		71.969803, 57.963432, 60.867630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.355370, 57.201546, 60.650856>,  <71.832947, 57.375916, 61.222725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.355370, 57.201546, 60.650856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.373627, 57.585949, 60.759941>,  <72.384583, 57.816593, 60.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.373627, 57.585949, 60.759941>,  <72.355370, 57.201546, 60.650856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.373627, 57.585949, 60.759941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994879, -0.068370, 0.074435,
		0.090178, 0.267923, -0.959211,
		0.045639, 0.961011, 0.272717,
		72.387321, 57.874252, 60.841755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.037079, 57.227139, 60.653843>,  <72.355370, 57.201546, 60.650856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.037079, 57.227139, 60.653843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.949821, 57.591427, 60.794128>,  <72.897469, 57.810001, 60.878300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.949821, 57.591427, 60.794128>,  <73.037079, 57.227139, 60.653843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.949821, 57.591427, 60.794128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831010, -0.015092, 0.556053,
		0.511702, 0.412744, -0.753527,
		-0.218136, 0.910722, 0.350717,
		72.884384, 57.864643, 60.899345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.579109, 57.670513, 60.558632>,  <73.037079, 57.227139, 60.653843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.579109, 57.670513, 60.558632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.393501, 57.762882, 60.900711>,  <73.282135, 57.818306, 61.105957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.393501, 57.762882, 60.900711>,  <73.579109, 57.670513, 60.558632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.393501, 57.762882, 60.900711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882218, 0.033403, 0.469655,
		0.079890, 0.972398, -0.219226,
		-0.464015, 0.230926, 0.855198,
		73.254295, 57.832161, 61.157272>
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
