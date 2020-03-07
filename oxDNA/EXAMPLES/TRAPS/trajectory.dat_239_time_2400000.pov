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
	<36.527302, 53.096966, 49.804718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312099, 52.942497, 50.104431>,  <36.182980, 52.849815, 50.284260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312099, 52.942497, 50.104431>,  <36.527302, 53.096966, 49.804718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312099, 52.942497, 50.104431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556782, -0.830184, -0.028084,
		0.632886, 0.402076, 0.661657,
		-0.538005, -0.386173, 0.749280,
		36.150700, 52.826645, 50.329216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962231, 52.814575, 50.372620>,  <36.527302, 53.096966, 49.804718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962231, 52.814575, 50.372620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616318, 52.615669, 50.344673>,  <36.408772, 52.496326, 50.327904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616318, 52.615669, 50.344673>,  <36.962231, 52.814575, 50.372620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616318, 52.615669, 50.344673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492643, -0.813224, -0.309790,
		0.097230, -0.302320, 0.948235,
		-0.864783, -0.497262, -0.069866,
		36.356884, 52.466492, 50.323715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995480, 52.989517, 51.130173>,  <36.962231, 52.814575, 50.372620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995480, 52.989517, 51.130173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143890, 52.620850, 51.175533>,  <37.232937, 52.399647, 51.202751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143890, 52.620850, 51.175533>,  <36.995480, 52.989517, 51.130173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143890, 52.620850, 51.175533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925344, 0.377201, 0.038186,
		-0.077971, 0.090768, 0.992815,
		0.371025, -0.921673, 0.113402,
		37.255199, 52.344349, 51.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635998, 53.237427, 51.379009>,  <36.995480, 52.989517, 51.130173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635998, 53.237427, 51.379009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643883, 52.854118, 51.264938>,  <37.648613, 52.624134, 51.196495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643883, 52.854118, 51.264938>,  <37.635998, 53.237427, 51.379009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643883, 52.854118, 51.264938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996223, 0.042947, -0.075464,
		0.084563, -0.282616, 0.955499,
		0.019709, -0.958271, -0.285180,
		37.649796, 52.566635, 51.179386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270042, 52.900433, 51.623665>,  <37.635998, 53.237427, 51.379009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270042, 52.900433, 51.623665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132931, 52.743446, 51.282261>,  <38.050663, 52.649254, 51.077419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132931, 52.743446, 51.282261>,  <38.270042, 52.900433, 51.623665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132931, 52.743446, 51.282261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936952, -0.077056, -0.340855,
		0.068007, -0.916532, 0.394137,
		-0.342776, -0.392469, -0.853506,
		38.030098, 52.625706, 51.026211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761967, 52.328899, 51.479973>,  <38.270042, 52.900433, 51.623665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761967, 52.328899, 51.479973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540966, 52.416916, 51.158394>,  <38.408367, 52.469727, 50.965446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540966, 52.416916, 51.158394>,  <38.761967, 52.328899, 51.479973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540966, 52.416916, 51.158394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799610, -0.132377, -0.585748,
		-0.235311, -0.966467, -0.102807,
		-0.552497, 0.220039, -0.803947,
		38.375217, 52.482929, 50.917210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216450, 52.806522, 51.774471>,  <38.761967, 52.328899, 51.479973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216450, 52.806522, 51.774471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409592, 53.088772, 51.981911>,  <39.525478, 53.258121, 52.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409592, 53.088772, 51.981911>,  <39.216450, 52.806522, 51.774471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409592, 53.088772, 51.981911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705500, -0.664286, 0.246969,
		0.518765, 0.246621, -0.818572,
		0.482859, 0.705622, 0.518599,
		39.554451, 53.300457, 52.137489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949688, 52.937172, 51.606888>,  <39.216450, 52.806522, 51.774471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949688, 52.937172, 51.606888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881931, 53.038383, 51.987892>,  <39.841278, 53.099110, 52.216496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881931, 53.038383, 51.987892>,  <39.949688, 52.937172, 51.606888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881931, 53.038383, 51.987892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703069, -0.646265, 0.296708,
		0.690653, 0.719941, -0.068430,
		-0.169389, 0.253033, 0.952513,
		39.831116, 53.114292, 52.273647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528698, 53.088753, 51.933197>,  <39.949688, 52.937172, 51.606888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528698, 53.088753, 51.933197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267506, 52.954693, 52.204872>,  <40.110790, 52.874256, 52.367878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267506, 52.954693, 52.204872>,  <40.528698, 53.088753, 51.933197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267506, 52.954693, 52.204872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687498, -0.638520, 0.345888,
		0.317754, 0.692798, 0.647351,
		-0.652977, -0.335145, 0.679190,
		40.071613, 52.854149, 52.408630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877377, 53.096817, 52.543495>,  <40.528698, 53.088753, 51.933197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877377, 53.096817, 52.543495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601822, 52.806980, 52.535553>,  <40.436489, 52.633080, 52.530788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601822, 52.806980, 52.535553>,  <40.877377, 53.096817, 52.543495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601822, 52.806980, 52.535553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716457, -0.684804, 0.133166,
		-0.110087, 0.077513, 0.990895,
		-0.688891, -0.724593, -0.019854,
		40.395153, 52.589603, 52.529598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910969, 52.602592, 53.186649>,  <40.877377, 53.096817, 52.543495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910969, 52.602592, 53.186649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807091, 52.445904, 52.833580>,  <40.744766, 52.351891, 52.621738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807091, 52.445904, 52.833580>,  <40.910969, 52.602592, 53.186649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807091, 52.445904, 52.833580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696342, -0.709249, 0.109884,
		-0.669080, -0.586108, 0.456956,
		-0.259692, -0.391719, -0.882676,
		40.729183, 52.328388, 52.568779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713692, 51.884624, 53.265144>,  <40.910969, 52.602592, 53.186649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713692, 51.884624, 53.265144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853218, 51.964554, 52.898888>,  <40.936932, 52.012512, 52.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853218, 51.964554, 52.898888>,  <40.713692, 51.884624, 53.265144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853218, 51.964554, 52.898888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806443, -0.561751, 0.184622,
		-0.477471, -0.802812, -0.357092,
		0.348814, 0.199823, -0.915642,
		40.957863, 52.024502, 52.624195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922806, 51.259018, 52.876221>,  <40.713692, 51.884624, 53.265144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922806, 51.259018, 52.876221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124397, 51.572098, 52.730137>,  <41.245354, 51.759945, 52.642487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124397, 51.572098, 52.730137>,  <40.922806, 51.259018, 52.876221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124397, 51.572098, 52.730137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798853, -0.583176, -0.147440,
		-0.328384, -0.217443, -0.919175,
		0.503981, 0.782703, -0.365211,
		41.275593, 51.806908, 52.620575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123569, 51.159172, 52.231205>,  <40.922806, 51.259018, 52.876221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123569, 51.159172, 52.231205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392395, 51.399590, 52.404217>,  <41.553688, 51.543842, 52.508022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392395, 51.399590, 52.404217>,  <41.123569, 51.159172, 52.231205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392395, 51.399590, 52.404217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707732, -0.693186, -0.136412,
		0.217831, 0.397790, -0.891242,
		0.672060, 0.601046, 0.432526,
		41.594013, 51.579903, 52.533974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736225, 51.255665, 51.875614>,  <41.123569, 51.159172, 52.231205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736225, 51.255665, 51.875614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800400, 51.300396, 52.267891>,  <41.838905, 51.327236, 52.503258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800400, 51.300396, 52.267891>,  <41.736225, 51.255665, 51.875614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800400, 51.300396, 52.267891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797122, -0.600636, -0.061917,
		0.582113, 0.791663, -0.185509,
		0.160440, 0.111830, 0.980690,
		41.848534, 51.333946, 52.562099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499329, 51.540169, 52.122623>,  <41.736225, 51.255665, 51.875614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499329, 51.540169, 52.122623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290081, 51.252193, 52.305065>,  <42.164532, 51.079407, 52.414532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290081, 51.252193, 52.305065>,  <42.499329, 51.540169, 52.122623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290081, 51.252193, 52.305065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632522, -0.686644, -0.358379,
		0.571194, 0.101023, 0.814574,
		-0.523118, -0.719941, 0.456106,
		42.133144, 51.036213, 52.441898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790367, 52.127148, 52.444859>,  <42.499329, 51.540169, 52.122623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790367, 52.127148, 52.444859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820194, 52.130524, 52.045986>,  <42.838093, 52.132549, 51.806664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820194, 52.130524, 52.045986>,  <42.790367, 52.127148, 52.444859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820194, 52.130524, 52.045986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732406, 0.678174, 0.060508,
		0.676773, -0.734853, 0.044390,
		0.074569, 0.008439, -0.997180,
		42.842567, 52.133053, 51.746834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467068, 52.061180, 52.286648>,  <42.790367, 52.127148, 52.444859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467068, 52.061180, 52.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290169, 52.281006, 52.003128>,  <43.184029, 52.412903, 51.833015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290169, 52.281006, 52.003128>,  <43.467068, 52.061180, 52.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290169, 52.281006, 52.003128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667462, 0.729546, 0.149191,
		0.599091, -0.407116, -0.689454,
		-0.442250, 0.549563, -0.708799,
		43.157494, 52.445873, 51.790489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885117, 52.269878, 51.730835>,  <43.467068, 52.061180, 52.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885117, 52.269878, 51.730835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591610, 52.538895, 51.769363>,  <43.415504, 52.700302, 51.792480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591610, 52.538895, 51.769363>,  <43.885117, 52.269878, 51.730835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591610, 52.538895, 51.769363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679039, 0.721361, 0.136175,
		0.022104, 0.165324, -0.985992,
		-0.733769, 0.672537, 0.096317,
		43.371479, 52.740654, 51.798260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488911, 52.565399, 51.649982>,  <43.885117, 52.269878, 51.730835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488911, 52.565399, 51.649982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841965, 52.435802, 51.513756>,  <45.053799, 52.358044, 51.432022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841965, 52.435802, 51.513756>,  <44.488911, 52.565399, 51.649982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841965, 52.435802, 51.513756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467293, 0.526364, 0.710337,
		-0.050881, -0.786112, 0.615986,
		0.882637, -0.323989, -0.340563,
		45.106754, 52.338608, 51.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910637, 53.131504, 51.635258>,  <44.488911, 52.565399, 51.649982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910637, 53.131504, 51.635258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265221, 53.057713, 51.805035>,  <45.477970, 53.013439, 51.906902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265221, 53.057713, 51.805035>,  <44.910637, 53.131504, 51.635258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265221, 53.057713, 51.805035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462685, 0.332897, -0.821646,
		0.010277, 0.924743, 0.380454,
		0.886463, -0.184475, 0.424443,
		45.531158, 53.002369, 51.932369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620281, 53.504753, 51.365986>,  <44.910637, 53.131504, 51.635258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620281, 53.504753, 51.365986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790295, 53.191124, 51.546906>,  <45.892303, 53.002945, 51.655457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790295, 53.191124, 51.546906>,  <45.620281, 53.504753, 51.365986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790295, 53.191124, 51.546906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827805, 0.134561, -0.544639,
		0.366177, 0.605903, 0.706255,
		0.425033, -0.784076, 0.452297,
		45.917805, 52.955902, 51.682594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346237, 53.577080, 51.572254>,  <45.620281, 53.504753, 51.365986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346237, 53.577080, 51.572254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252308, 53.194515, 51.502808>,  <46.195950, 52.964977, 51.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252308, 53.194515, 51.502808>,  <46.346237, 53.577080, 51.572254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252308, 53.194515, 51.502808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701582, -0.043136, -0.711282,
		0.672786, -0.288835, 0.681127,
		-0.234824, -0.956407, -0.173620,
		46.181862, 52.907593, 51.450722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919022, 54.114735, 51.880325>,  <46.346237, 53.577080, 51.572254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919022, 54.114735, 51.880325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255169, 54.153046, 51.666931>,  <46.456856, 54.176033, 51.538895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255169, 54.153046, 51.666931>,  <45.919022, 54.114735, 51.880325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255169, 54.153046, 51.666931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001624, 0.984706, 0.174219,
		0.542014, -0.145541, 0.827670,
		0.840367, 0.095774, -0.533488,
		46.507278, 54.181778, 51.506886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170967, 54.742676, 52.080624>,  <45.919022, 54.114735, 51.880325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170967, 54.742676, 52.080624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377728, 54.704624, 51.740326>,  <46.501785, 54.681793, 51.536148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377728, 54.704624, 51.740326>,  <46.170967, 54.742676, 52.080624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377728, 54.704624, 51.740326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066327, 0.995269, -0.070992,
		0.853469, -0.019731, 0.520769,
		0.516905, -0.095131, -0.850741,
		46.532799, 54.676086, 51.485104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847355, 54.535107, 52.759106>,  <46.170967, 54.742676, 52.080624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847355, 54.535107, 52.759106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211136, 54.369301, 52.745972>,  <46.429405, 54.269817, 52.738091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211136, 54.369301, 52.745972>,  <45.847355, 54.535107, 52.759106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211136, 54.369301, 52.745972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228443, 0.432093, 0.872416,
		-0.347445, -0.800918, 0.487660,
		0.909448, -0.414519, -0.032836,
		46.483971, 54.244946, 52.736122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013412, 54.044800, 53.413525>,  <45.847355, 54.535107, 52.759106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013412, 54.044800, 53.413525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324905, 54.223492, 53.237339>,  <46.511803, 54.330708, 53.131626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324905, 54.223492, 53.237339>,  <46.013412, 54.044800, 53.413525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324905, 54.223492, 53.237339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307808, 0.339704, 0.888738,
		0.546657, -0.827666, 0.127029,
		0.778730, 0.446734, -0.440463,
		46.558525, 54.357513, 53.105202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727036, 53.711998, 53.657356>,  <46.013412, 54.044800, 53.413525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727036, 53.711998, 53.657356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744019, 54.094906, 53.542934>,  <46.754208, 54.324650, 53.474281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744019, 54.094906, 53.542934>,  <46.727036, 53.711998, 53.657356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744019, 54.094906, 53.542934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328863, 0.256970, 0.908744,
		0.943423, -0.132653, -0.303902,
		0.042454, 0.957272, -0.286056,
		46.756756, 54.382088, 53.457119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465073, 54.012123, 53.702000>,  <46.727036, 53.711998, 53.657356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465073, 54.012123, 53.702000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177692, 54.285439, 53.754066>,  <47.005264, 54.449429, 53.785309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177692, 54.285439, 53.754066>,  <47.465073, 54.012123, 53.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177692, 54.285439, 53.754066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443692, 0.306062, 0.842296,
		0.535690, 0.662906, -0.523061,
		-0.718452, 0.683288, 0.130171,
		46.962158, 54.490425, 53.793118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795506, 54.616669, 54.046062>,  <47.465073, 54.012123, 53.702000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795506, 54.616669, 54.046062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403267, 54.643333, 54.119808>,  <47.167923, 54.659332, 54.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403267, 54.643333, 54.119808>,  <47.795506, 54.616669, 54.046062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403267, 54.643333, 54.119808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196019, 0.349473, 0.916212,
		-0.003355, 0.934572, -0.355759,
		-0.980594, 0.066662, 0.184367,
		47.109089, 54.663330, 54.175117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491592, 55.389931, 54.127762>,  <47.795506, 54.616669, 54.046062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491592, 55.389931, 54.127762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309189, 55.103172, 54.338707>,  <47.199745, 54.931118, 54.465275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309189, 55.103172, 54.338707>,  <47.491592, 55.389931, 54.127762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.309189, 55.103172, 54.338707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144547, 0.525035, 0.838716,
		-0.878158, 0.458692, -0.135796,
		-0.456010, -0.716896, 0.527366,
		47.172386, 54.888103, 54.496918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960583, 55.591030, 54.621780>,  <47.491592, 55.389931, 54.127762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960583, 55.591030, 54.621780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148914, 55.256084, 54.732872>,  <47.261913, 55.055115, 54.799526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148914, 55.256084, 54.732872>,  <46.960583, 55.591030, 54.621780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148914, 55.256084, 54.732872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288589, 0.443670, 0.848453,
		-0.833688, -0.319328, 0.450549,
		0.470830, -0.837369, 0.277728,
		47.290165, 55.004875, 54.816189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710903, 55.362946, 55.218838>,  <46.960583, 55.591030, 54.621780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710903, 55.362946, 55.218838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088615, 55.232082, 55.204422>,  <47.315243, 55.153564, 55.195774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088615, 55.232082, 55.204422>,  <46.710903, 55.362946, 55.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088615, 55.232082, 55.204422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155145, 0.345863, 0.925370,
		-0.290282, -0.879400, 0.377350,
		0.944281, -0.327162, -0.036037,
		47.371899, 55.133934, 55.193611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835735, 54.860138, 55.829060>,  <46.710903, 55.362946, 55.218838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835735, 54.860138, 55.829060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125553, 55.101028, 55.694977>,  <47.299442, 55.245564, 55.614529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125553, 55.101028, 55.694977>,  <46.835735, 54.860138, 55.829060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125553, 55.101028, 55.694977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108416, 0.380706, 0.918319,
		0.680651, -0.701701, 0.210546,
		0.724541, 0.602228, -0.335203,
		47.342915, 55.281696, 55.594418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573715, 54.749550, 56.063549>,  <46.835735, 54.860138, 55.829060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573715, 54.749550, 56.063549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465405, 55.129871, 56.003342>,  <47.400417, 55.358063, 55.967216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465405, 55.129871, 56.003342>,  <47.573715, 54.749550, 56.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465405, 55.129871, 56.003342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185875, 0.205058, 0.960938,
		0.944525, 0.232227, -0.232256,
		-0.270781, 0.950801, -0.150517,
		47.384171, 55.415112, 55.958187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.856445, 55.170601, 56.488083>,  <47.573715, 54.749550, 56.063549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.856445, 55.170601, 56.488083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556995, 55.428413, 56.425949>,  <47.377323, 55.583103, 56.388668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556995, 55.428413, 56.425949>,  <47.856445, 55.170601, 56.488083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.556995, 55.428413, 56.425949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195172, 0.438160, 0.877453,
		0.633611, 0.626570, -0.453815,
		-0.748629, 0.644536, -0.155333,
		47.332405, 55.621773, 56.379349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.381687, 55.676640, 56.732082>,  <47.856445, 55.170601, 56.488083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.381687, 55.676640, 56.732082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.556087, 55.886093, 57.024849>,  <48.660728, 56.011765, 57.200508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.556087, 55.886093, 57.024849>,  <48.381687, 55.676640, 56.732082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.556087, 55.886093, 57.024849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619568, 0.415213, -0.666134,
		-0.652715, 0.743909, -0.143395,
		0.436003, 0.523638, 0.731918,
		48.686890, 56.043186, 57.244423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.416496, 56.354774, 56.443291>,  <48.381687, 55.676640, 56.732082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.416496, 56.354774, 56.443291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.696537, 56.276546, 56.717987>,  <48.864559, 56.229610, 56.882805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.696537, 56.276546, 56.717987>,  <48.416496, 56.354774, 56.443291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.696537, 56.276546, 56.717987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712454, 0.255543, -0.653535,
		-0.047683, 0.946811, 0.318238,
		0.700097, -0.195567, 0.686744,
		48.906567, 56.217876, 56.924011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.890804, 56.998482, 56.492603>,  <48.416496, 56.354774, 56.443291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.890804, 56.998482, 56.492603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.045238, 56.633595, 56.547432>,  <49.137897, 56.414661, 56.580330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.045238, 56.633595, 56.547432>,  <48.890804, 56.998482, 56.492603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.045238, 56.633595, 56.547432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589213, 0.129541, -0.797526,
		0.709764, 0.388677, 0.587507,
		0.386086, -0.912222, 0.137070,
		49.161064, 56.359928, 56.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.612991, 56.899693, 56.447937>,  <48.890804, 56.998482, 56.492603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.612991, 56.899693, 56.447937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.483673, 56.544033, 56.318390>,  <49.406082, 56.330635, 56.240662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.483673, 56.544033, 56.318390>,  <49.612991, 56.899693, 56.447937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.483673, 56.544033, 56.318390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395750, 0.183839, -0.899769,
		0.859571, -0.419061, 0.292447,
		-0.323296, -0.889152, -0.323866,
		49.386684, 56.277287, 56.221230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.135662, 56.629704, 55.959118>,  <49.612991, 56.899693, 56.447937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.135662, 56.629704, 55.959118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.800453, 56.419987, 55.898666>,  <49.599327, 56.294155, 55.862396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.800453, 56.419987, 55.898666>,  <50.135662, 56.629704, 55.959118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.800453, 56.419987, 55.898666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226126, -0.081626, -0.970672,
		0.496582, -0.847616, 0.186961,
		-0.838018, -0.524295, -0.151133,
		49.549049, 56.262699, 55.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.290112, 57.386044, 55.774891>,  <50.135662, 56.629704, 55.959118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.290112, 57.386044, 55.774891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.457230, 57.720421, 55.632538>,  <50.557499, 57.921047, 55.547127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.457230, 57.720421, 55.632538>,  <50.290112, 57.386044, 55.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.457230, 57.720421, 55.632538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039390, 0.408004, 0.912130,
		0.907688, -0.367064, 0.203389,
		0.417793, 0.835941, -0.355882,
		50.582569, 57.971203, 55.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.944244, 57.549637, 56.134811>,  <50.290112, 57.386044, 55.774891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.944244, 57.549637, 56.134811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.755928, 57.873474, 55.994576>,  <50.642937, 58.067776, 55.910435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.755928, 57.873474, 55.994576>,  <50.944244, 57.549637, 56.134811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.755928, 57.873474, 55.994576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008881, 0.393015, 0.919489,
		0.882199, 0.436002, -0.177839,
		-0.470792, 0.809593, -0.350590,
		50.614689, 58.116352, 55.889397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.256584, 58.244659, 56.418076>,  <50.944244, 57.549637, 56.134811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.256584, 58.244659, 56.418076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.870079, 58.293274, 56.327248>,  <50.638176, 58.322441, 56.272751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.870079, 58.293274, 56.327248>,  <51.256584, 58.244659, 56.418076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.870079, 58.293274, 56.327248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160506, 0.405345, 0.899963,
		0.201421, 0.906049, -0.372163,
		-0.966265, 0.121537, -0.227071,
		50.580200, 58.329735, 56.259125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.124535, 58.988380, 56.510494>,  <51.256584, 58.244659, 56.418076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.124535, 58.988380, 56.510494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.814686, 58.741386, 56.565163>,  <50.628777, 58.593189, 56.597961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.814686, 58.741386, 56.565163>,  <51.124535, 58.988380, 56.510494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.814686, 58.741386, 56.565163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070169, 0.298681, 0.951770,
		-0.628521, 0.727671, -0.274692,
		-0.774621, -0.617482, 0.136668,
		50.582298, 58.556141, 56.606163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.095882, 59.728367, 56.578705>,  <51.124535, 58.988380, 56.510494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.095882, 59.728367, 56.578705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.073338, 60.123016, 56.517517>,  <51.059811, 60.359806, 56.480804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.073338, 60.123016, 56.517517>,  <51.095882, 59.728367, 56.578705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.073338, 60.123016, 56.517517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314163, 0.162960, 0.935278,
		0.947695, 0.004653, -0.319145,
		-0.056360, 0.986622, -0.152974,
		51.056431, 60.419003, 56.471626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.704243, 60.053833, 56.825176>,  <51.095882, 59.728367, 56.578705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.704243, 60.053833, 56.825176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.406731, 60.319786, 56.852646>,  <51.228222, 60.479359, 56.869129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.406731, 60.319786, 56.852646>,  <51.704243, 60.053833, 56.825176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.406731, 60.319786, 56.852646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248819, 0.180053, 0.951667,
		0.620383, 0.724921, -0.299356,
		-0.743783, 0.664884, 0.068673,
		51.183594, 60.519253, 56.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.969662, 60.492546, 57.398819>,  <51.704243, 60.053833, 56.825176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.969662, 60.492546, 57.398819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.824764, 60.616482, 57.047188>,  <51.737823, 60.690845, 56.836208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.824764, 60.616482, 57.047188>,  <51.969662, 60.492546, 57.398819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.824764, 60.616482, 57.047188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390515, 0.906815, 0.158697,
		0.846331, -0.285805, -0.449488,
		-0.362246, 0.309842, -0.879077,
		51.716091, 60.709435, 56.783466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.580654, 60.786221, 57.122974>,  <51.969662, 60.492546, 57.398819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.580654, 60.786221, 57.122974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.204018, 60.909035, 57.067650>,  <51.978035, 60.982723, 57.034454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.204018, 60.909035, 57.067650>,  <52.580654, 60.786221, 57.122974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.204018, 60.909035, 57.067650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268780, 0.932664, 0.240615,
		0.202874, 0.189387, -0.960716,
		-0.941594, 0.307036, -0.138310,
		51.921539, 61.001144, 57.026157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.712524, 61.436516, 57.019451>,  <52.580654, 60.786221, 57.122974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.712524, 61.436516, 57.019451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.321716, 61.441528, 57.104568>,  <52.087231, 61.444538, 57.155640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.321716, 61.441528, 57.104568>,  <52.712524, 61.436516, 57.019451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.321716, 61.441528, 57.104568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112219, 0.878980, 0.463467,
		-0.181234, 0.476695, -0.860184,
		-0.977016, 0.012533, 0.212795,
		52.028610, 61.445290, 57.168407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.700809, 61.369457, 57.779339>,  <52.712524, 61.436516, 57.019451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.700809, 61.369457, 57.779339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.633530, 61.726742, 57.946136>,  <52.593163, 61.941113, 58.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.633530, 61.726742, 57.946136>,  <52.700809, 61.369457, 57.779339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.633530, 61.726742, 57.946136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359371, -0.449471, 0.817819,
		0.917911, -0.012300, 0.396595,
		-0.168199, 0.893210, 0.416995,
		52.583069, 61.994705, 58.071236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.064289, 61.476460, 58.458096>,  <52.700809, 61.369457, 57.779339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.064289, 61.476460, 58.458096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.735188, 61.703316, 58.442947>,  <52.537727, 61.839428, 58.433861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.735188, 61.703316, 58.442947>,  <53.064289, 61.476460, 58.458096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.735188, 61.703316, 58.442947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399765, -0.530006, 0.747851,
		0.404066, 0.630433, 0.662786,
		-0.822751, 0.567140, -0.037868,
		52.488361, 61.873459, 58.431587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.767590, 61.212402, 58.239037>,  <53.064289, 61.476460, 58.458096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.767590, 61.212402, 58.239037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.134430, 61.068550, 58.307854>,  <54.354534, 60.982239, 58.349144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.134430, 61.068550, 58.307854>,  <53.767590, 61.212402, 58.239037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.134430, 61.068550, 58.307854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215983, 0.810930, 0.543824,
		-0.335088, -0.461582, 0.821375,
		0.917097, -0.359632, 0.172039,
		54.409557, 60.960659, 58.359467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.856731, 61.135708, 58.976883>,  <53.767590, 61.212402, 58.239037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.856731, 61.135708, 58.976883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.149994, 61.255962, 58.732880>,  <54.325951, 61.328114, 58.586479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.149994, 61.255962, 58.732880>,  <53.856731, 61.135708, 58.976883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.149994, 61.255962, 58.732880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085301, 0.930551, 0.356089,
		0.674693, -0.209034, 0.707880,
		0.733152, 0.300634, -0.610005,
		54.369938, 61.346153, 58.549877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.531384, 61.455925, 59.294312>,  <53.856731, 61.135708, 58.976883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.531384, 61.455925, 59.294312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.474190, 61.647476, 58.947845>,  <54.439873, 61.762405, 58.739967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.474190, 61.647476, 58.947845>,  <54.531384, 61.455925, 59.294312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.474190, 61.647476, 58.947845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085798, 0.877855, 0.471178,
		0.986000, -0.006946, -0.166603,
		-0.142980, 0.478875, -0.866161,
		54.431297, 61.791138, 58.687996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.018955, 61.973038, 59.220497>,  <54.531384, 61.455925, 59.294312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.018955, 61.973038, 59.220497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.693550, 62.125565, 59.044868>,  <54.498306, 62.217079, 58.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.693550, 62.125565, 59.044868>,  <55.018955, 61.973038, 59.220497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.693550, 62.125565, 59.044868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110805, 0.842826, 0.526656,
		0.570887, 0.379792, -0.727905,
		-0.813517, 0.381316, -0.439076,
		54.449493, 62.239960, 58.913147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.382336, 61.591152, 58.767506>,  <55.018955, 61.973038, 59.220497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.382336, 61.591152, 58.767506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.362648, 61.782791, 58.416954>,  <55.350834, 61.897774, 58.206623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.362648, 61.782791, 58.416954>,  <55.382336, 61.591152, 58.767506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.362648, 61.782791, 58.416954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675241, -0.630578, -0.382650,
		-0.735953, -0.610603, -0.292467,
		-0.049224, 0.479098, -0.876380,
		55.347881, 61.926521, 58.154041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.146568, 61.151649, 58.157597>,  <55.382336, 61.591152, 58.767506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.146568, 61.151649, 58.157597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.407936, 61.437927, 58.058952>,  <55.564758, 61.609695, 57.999763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.407936, 61.437927, 58.058952>,  <55.146568, 61.151649, 58.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.407936, 61.437927, 58.058952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681889, -0.697956, -0.218824,
		-0.328738, -0.025179, -0.944085,
		0.653421, 0.715697, -0.246614,
		55.603962, 61.652637, 57.984966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.361977, 61.223774, 57.441715>,  <55.146568, 61.151649, 58.157597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.361977, 61.223774, 57.441715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655830, 61.329681, 57.691582>,  <55.832142, 61.393227, 57.841503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655830, 61.329681, 57.691582>,  <55.361977, 61.223774, 57.441715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.655830, 61.329681, 57.691582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553231, -0.766742, -0.325641,
		0.392741, 0.584814, -0.709752,
		0.734636, 0.264764, 0.624668,
		55.876221, 61.409111, 57.878983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.888451, 61.312771, 57.158993>,  <55.361977, 61.223774, 57.441715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.888451, 61.312771, 57.158993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.025116, 61.187737, 57.513519>,  <56.107113, 61.112717, 57.726234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.025116, 61.187737, 57.513519>,  <55.888451, 61.312771, 57.158993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.025116, 61.187737, 57.513519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463379, -0.764442, -0.448229,
		0.817648, 0.563842, -0.116332,
		0.341660, -0.312588, 0.886317,
		56.127613, 61.093960, 57.779415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.622532, 61.237282, 57.168251>,  <55.888451, 61.312771, 57.158993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.622532, 61.237282, 57.168251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.505264, 60.983868, 57.454659>,  <56.434902, 60.831818, 57.626503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.505264, 60.983868, 57.454659>,  <56.622532, 61.237282, 57.168251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.505264, 60.983868, 57.454659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402057, -0.761179, -0.508877,
		0.867410, 0.138691, 0.477876,
		-0.293172, -0.633539, 0.716016,
		56.417313, 60.793804, 57.669464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.203785, 61.213947, 57.594414>,  <56.622532, 61.237282, 57.168251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.203785, 61.213947, 57.594414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.979065, 60.883923, 57.618599>,  <56.844231, 60.685909, 57.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.979065, 60.883923, 57.618599>,  <57.203785, 61.213947, 57.594414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.979065, 60.883923, 57.618599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827228, -0.561014, 0.030935,
		0.008398, 0.067397, 0.997691,
		-0.561803, -0.825058, 0.060464,
		56.810524, 60.636406, 57.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.500820, 60.832386, 58.127132>,  <57.203785, 61.213947, 57.594414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.500820, 60.832386, 58.127132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.336952, 60.599792, 57.845978>,  <57.238632, 60.460236, 57.677284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.336952, 60.599792, 57.845978>,  <57.500820, 60.832386, 58.127132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.336952, 60.599792, 57.845978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888842, -0.427803, -0.164145,
		-0.205250, -0.692001, 0.692103,
		-0.409673, -0.581480, -0.702886,
		57.214050, 60.425350, 57.635113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.889965, 60.089432, 58.251461>,  <57.500820, 60.832386, 58.127132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.889965, 60.089432, 58.251461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.797020, 60.153370, 57.867699>,  <57.741253, 60.191734, 57.637444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.797020, 60.153370, 57.867699>,  <57.889965, 60.089432, 58.251461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.797020, 60.153370, 57.867699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774025, -0.566926, -0.281922,
		-0.588976, -0.808111, 0.008006,
		-0.232363, 0.159848, -0.959404,
		57.727310, 60.201324, 57.579876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.368351, 60.031303, 57.733944>,  <57.889965, 60.089432, 58.251461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.368351, 60.031303, 57.733944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.399803, 59.985565, 58.130074>,  <58.418674, 59.958122, 58.367752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.399803, 59.985565, 58.130074>,  <58.368351, 60.031303, 57.733944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.399803, 59.985565, 58.130074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772153, 0.635322, 0.012053,
		-0.630553, 0.763735, 0.138247,
		0.078626, -0.114348, 0.990324,
		58.423389, 59.951260, 58.427170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.825790, 60.564449, 57.363922>,  <58.368351, 60.031303, 57.733944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.825790, 60.564449, 57.363922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.136482, 60.777039, 57.228729>,  <59.322895, 60.904594, 57.147614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.136482, 60.777039, 57.228729>,  <58.825790, 60.564449, 57.363922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.136482, 60.777039, 57.228729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628534, -0.688594, 0.361640,
		-0.040530, -0.493329, -0.868898,
		0.776725, 0.531475, -0.337983,
		59.369499, 60.936481, 57.127335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.399700, 60.032959, 57.333000>,  <58.825790, 60.564449, 57.363922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.399700, 60.032959, 57.333000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.536278, 60.408920, 57.332588>,  <59.618225, 60.634495, 57.332340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.536278, 60.408920, 57.332588>,  <59.399700, 60.032959, 57.333000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.536278, 60.408920, 57.332588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845503, -0.306678, 0.437120,
		0.410534, -0.150121, -0.899403,
		0.341448, 0.939900, -0.001026,
		59.638714, 60.690891, 57.332279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.544155, 59.649742, 57.978119>,  <59.399700, 60.032959, 57.333000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.544155, 59.649742, 57.978119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.516457, 59.290497, 57.804405>,  <59.499836, 59.074951, 57.700176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.516457, 59.290497, 57.804405>,  <59.544155, 59.649742, 57.978119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.516457, 59.290497, 57.804405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049558, 0.437885, -0.897664,
		0.996368, -0.040640, -0.074832,
		-0.069249, -0.898112, -0.434280,
		59.495682, 59.021065, 57.674122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.060688, 59.573353, 57.489304>,  <59.544155, 59.649742, 57.978119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.060688, 59.573353, 57.489304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.736374, 59.367821, 57.377151>,  <59.541786, 59.244503, 57.309860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.736374, 59.367821, 57.377151>,  <60.060688, 59.573353, 57.489304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.736374, 59.367821, 57.377151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054403, 0.543073, -0.837922,
		0.582816, -0.664117, -0.468267,
		-0.810781, -0.513830, -0.280382,
		59.493137, 59.213673, 57.293037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.761803, 59.392128, 57.840187>,  <60.060688, 59.573353, 57.489304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.761803, 59.392128, 57.840187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.463646, 59.451233, 58.100204>,  <60.284752, 59.486694, 58.256214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.463646, 59.451233, 58.100204>,  <60.761803, 59.392128, 57.840187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.463646, 59.451233, 58.100204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569071, 0.366837, -0.735927,
		-0.347199, -0.918476, -0.189352,
		-0.745393, 0.147759, 0.650044,
		60.240028, 59.495560, 58.295219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.837990, 59.980778, 57.523628>,  <60.761803, 59.392128, 57.840187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.837990, 59.980778, 57.523628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.982491, 60.107079, 57.172676>,  <61.069191, 60.182858, 56.962105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.982491, 60.107079, 57.172676>,  <60.837990, 59.980778, 57.523628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.982491, 60.107079, 57.172676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384293, 0.806889, 0.448608,
		0.849598, -0.499232, 0.170150,
		0.361251, 0.315749, -0.877383,
		61.090866, 60.201805, 56.909462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.027885, 60.778355, 57.483727>,  <60.837990, 59.980778, 57.523628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.027885, 60.778355, 57.483727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.350243, 60.581993, 57.616119>,  <61.543655, 60.464176, 57.695553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.350243, 60.581993, 57.616119>,  <61.027885, 60.778355, 57.483727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.350243, 60.581993, 57.616119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496450, 0.864903, 0.074026,
		-0.322604, 0.104658, 0.940730,
		0.805893, -0.490906, 0.330979,
		61.592010, 60.434723, 57.715412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.075592, 60.908352, 58.152126>,  <61.027885, 60.778355, 57.483727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.075592, 60.908352, 58.152126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.405281, 60.845455, 57.934525>,  <61.603092, 60.807716, 57.803963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.405281, 60.845455, 57.934525>,  <61.075592, 60.908352, 58.152126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.405281, 60.845455, 57.934525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303679, 0.933587, 0.190248,
		0.477957, -0.322007, 0.817232,
		0.824218, -0.157246, -0.544002,
		61.652546, 60.798283, 57.771324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.707275, 60.780857, 58.518936>,  <61.075592, 60.908352, 58.152126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.707275, 60.780857, 58.518936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.732208, 60.977859, 58.171707>,  <61.747169, 61.096062, 57.963371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.732208, 60.977859, 58.171707>,  <61.707275, 60.780857, 58.518936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.732208, 60.977859, 58.171707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329824, 0.810732, 0.483663,
		0.941982, -0.316460, -0.111904,
		0.062336, 0.492511, -0.868071,
		61.750908, 61.125614, 57.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.471977, 60.790649, 58.436695>,  <61.707275, 60.780857, 58.518936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.471977, 60.790649, 58.436695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.498795, 61.113129, 58.671829>,  <62.514885, 61.306618, 58.812908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.498795, 61.113129, 58.671829>,  <62.471977, 60.790649, 58.436695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.498795, 61.113129, 58.671829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867766, 0.243660, -0.433141,
		-0.492430, 0.539140, -0.683258,
		0.067042, 0.806200, 0.587833,
		62.518906, 61.354988, 58.848179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.636604, 60.241718, 58.983639>,  <62.471977, 60.790649, 58.436695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.636604, 60.241718, 58.983639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.758514, 59.915356, 59.180168>,  <62.831661, 59.719536, 59.298088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.758514, 59.915356, 59.180168>,  <62.636604, 60.241718, 58.983639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.758514, 59.915356, 59.180168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948116, 0.308923, -0.075117,
		-0.090494, 0.488729, 0.867730,
		0.304773, -0.815911, 0.491328,
		62.849945, 59.670582, 59.327568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.958923, 60.411236, 59.657166>,  <62.636604, 60.241718, 58.983639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.958923, 60.411236, 59.657166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.107788, 60.096733, 59.459862>,  <63.197105, 59.908031, 59.341480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.107788, 60.096733, 59.459862>,  <62.958923, 60.411236, 59.657166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.107788, 60.096733, 59.459862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922330, 0.372787, 0.101669,
		0.103943, -0.492785, 0.863921,
		0.372159, -0.786253, -0.493259,
		63.219437, 59.860859, 59.311886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.523582, 60.133762, 59.929306>,  <62.958923, 60.411236, 59.657166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.523582, 60.133762, 59.929306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.597206, 60.034695, 59.548828>,  <63.641380, 59.975254, 59.320541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.597206, 60.034695, 59.548828>,  <63.523582, 60.133762, 59.929306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.597206, 60.034695, 59.548828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952243, 0.284797, 0.110110,
		0.243627, -0.926040, 0.288264,
		0.184063, -0.247672, -0.951199,
		63.652424, 59.960392, 59.263470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.128510, 59.824436, 59.977814>,  <63.523582, 60.133762, 59.929306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.128510, 59.824436, 59.977814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.134750, 59.941544, 59.595390>,  <64.138496, 60.011806, 59.365936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.134750, 59.941544, 59.595390>,  <64.128510, 59.824436, 59.977814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.134750, 59.941544, 59.595390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946560, 0.303745, 0.108462,
		0.322151, -0.906657, -0.272381,
		0.015603, 0.292766, -0.956057,
		64.139435, 60.029373, 59.308575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.693001, 59.409096, 59.758377>,  <64.128510, 59.824436, 59.977814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.693001, 59.409096, 59.758377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.593842, 59.759109, 59.592072>,  <64.534348, 59.969116, 59.492290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.593842, 59.759109, 59.592072>,  <64.693001, 59.409096, 59.758377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.593842, 59.759109, 59.592072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719404, 0.453704, 0.525938,
		0.648847, -0.168719, -0.741978,
		-0.247903, 0.875035, -0.415761,
		64.519470, 60.021622, 59.467342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.216454, 59.706932, 59.544842>,  <64.693001, 59.409096, 59.758377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.216454, 59.706932, 59.544842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.043076, 60.057156, 59.630173>,  <64.939049, 60.267292, 59.681370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.043076, 60.057156, 59.630173>,  <65.216454, 59.706932, 59.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.043076, 60.057156, 59.630173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882479, 0.364427, 0.297362,
		0.182618, 0.317147, -0.930628,
		-0.433453, 0.875563, 0.213324,
		64.913040, 60.319824, 59.694172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.350777, 59.569950, 60.252529>,  <65.216454, 59.706932, 59.544842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.350777, 59.569950, 60.252529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.533218, 59.216339, 60.293465>,  <65.642685, 59.004173, 60.318027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.533218, 59.216339, 60.293465>,  <65.350777, 59.569950, 60.252529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.533218, 59.216339, 60.293465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663561, 0.261193, -0.701046,
		0.593012, 0.387653, 0.705735,
		0.456095, -0.884027, 0.102341,
		65.670044, 58.951130, 60.324165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.082420, 59.568550, 60.479977>,  <65.350777, 59.569950, 60.252529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.082420, 59.568550, 60.479977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.015221, 59.246368, 60.252640>,  <65.974899, 59.053059, 60.116238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.015221, 59.246368, 60.252640>,  <66.082420, 59.568550, 60.479977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.015221, 59.246368, 60.252640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870533, 0.149304, -0.468913,
		0.462546, -0.573540, 0.676094,
		-0.167997, -0.805456, -0.568346,
		65.964821, 59.004730, 60.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.619453, 59.174267, 60.538769>,  <66.082420, 59.568550, 60.479977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.619453, 59.174267, 60.538769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.459473, 59.113342, 60.177254>,  <66.363487, 59.076790, 59.960342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.459473, 59.113342, 60.177254>,  <66.619453, 59.174267, 60.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.459473, 59.113342, 60.177254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902426, 0.106922, -0.417366,
		0.160204, -0.982532, 0.094683,
		-0.399952, -0.152308, -0.903792,
		66.339485, 59.067650, 59.906116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.079903, 58.635651, 60.229092>,  <66.619453, 59.174267, 60.538769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.079903, 58.635651, 60.229092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.885666, 58.871143, 59.970604>,  <66.769127, 59.012440, 59.815514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.885666, 58.871143, 59.970604>,  <67.079903, 58.635651, 60.229092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.885666, 58.871143, 59.970604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870983, 0.262624, -0.415232,
		-0.074749, -0.764476, -0.640303,
		-0.485594, 0.588731, -0.646215,
		66.739990, 59.047764, 59.776741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.116493, 58.288273, 59.535599>,  <67.079903, 58.635651, 60.229092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.116493, 58.288273, 59.535599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.149742, 58.686630, 59.549904>,  <67.169693, 58.925644, 59.558487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.149742, 58.686630, 59.549904>,  <67.116493, 58.288273, 59.535599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.149742, 58.686630, 59.549904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930336, -0.064686, -0.360958,
		-0.357163, 0.063277, -0.931896,
		0.083121, 0.995897, 0.035765,
		67.174675, 58.985401, 59.560635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.698837, 57.908756, 59.436222>,  <67.116493, 58.288273, 59.535599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.698837, 57.908756, 59.436222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.636711, 57.746258, 59.076035>,  <67.599434, 57.648758, 58.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.636711, 57.746258, 59.076035>,  <67.698837, 57.908756, 59.436222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.636711, 57.746258, 59.076035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795866, -0.591449, 0.129557,
		-0.585212, -0.696528, 0.415182,
		-0.155319, -0.406248, -0.900466,
		67.590118, 57.624382, 58.805893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.684578, 57.098343, 59.529339>,  <67.698837, 57.908756, 59.436222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.684578, 57.098343, 59.529339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.776588, 57.207462, 59.155670>,  <67.831795, 57.272934, 58.931469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.776588, 57.207462, 59.155670>,  <67.684578, 57.098343, 59.529339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.776588, 57.207462, 59.155670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772324, -0.635212, 0.004681,
		-0.592118, -0.722556, -0.356804,
		0.230028, 0.272797, -0.934168,
		67.845596, 57.289303, 58.875420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.704506, 56.460037, 59.078682>,  <67.684578, 57.098343, 59.529339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.704506, 56.460037, 59.078682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.925522, 56.769009, 58.953438>,  <68.058136, 56.954391, 58.878292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.925522, 56.769009, 58.953438>,  <67.704506, 56.460037, 59.078682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.925522, 56.769009, 58.953438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830549, -0.478794, 0.284507,
		0.069846, -0.417258, -0.906100,
		0.552548, 0.772432, -0.313112,
		68.091286, 57.000740, 58.859505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.003548, 56.164024, 58.520840>,  <67.704506, 56.460037, 59.078682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.003548, 56.164024, 58.520840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.176628, 56.439854, 58.753136>,  <68.280479, 56.605350, 58.892513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.176628, 56.439854, 58.753136>,  <68.003548, 56.164024, 58.520840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.176628, 56.439854, 58.753136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732519, -0.644424, 0.219395,
		0.525531, 0.330471, -0.783968,
		0.432704, 0.689570, 0.580742,
		68.306442, 56.646725, 58.927357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.186844, 56.081551, 57.738918>,  <68.003548, 56.164024, 58.520840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.186844, 56.081551, 57.738918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.446114, 56.327744, 57.918274>,  <68.601677, 56.475460, 58.025887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.446114, 56.327744, 57.918274>,  <68.186844, 56.081551, 57.738918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.446114, 56.327744, 57.918274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721654, -0.308507, -0.619709,
		-0.243088, 0.725261, -0.644131,
		0.648170, 0.615483, 0.448393,
		68.640564, 56.512390, 58.052792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.527191, 56.570103, 57.327492>,  <68.186844, 56.081551, 57.738918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.527191, 56.570103, 57.327492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.769432, 56.468788, 57.629242>,  <68.914780, 56.407997, 57.810291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.769432, 56.468788, 57.629242>,  <68.527191, 56.570103, 57.327492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.769432, 56.468788, 57.629242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515696, -0.597062, -0.614471,
		0.606047, 0.761158, -0.230966,
		0.605610, -0.253290, 0.754374,
		68.951118, 56.392799, 57.855553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.254707, 56.640984, 57.153385>,  <68.527191, 56.570103, 57.327492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.254707, 56.640984, 57.153385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.271622, 56.415192, 57.483131>,  <69.281769, 56.279716, 57.680981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.271622, 56.415192, 57.483131>,  <69.254707, 56.640984, 57.153385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.271622, 56.415192, 57.483131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812714, -0.460488, -0.356997,
		0.581127, 0.685065, 0.439291,
		0.042278, -0.564479, 0.824364,
		69.284302, 56.245850, 57.730442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.951920, 56.662239, 57.595173>,  <69.254707, 56.640984, 57.153385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.951920, 56.662239, 57.595173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.719551, 56.337852, 57.567291>,  <69.580132, 56.143219, 57.550564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.719551, 56.337852, 57.567291>,  <69.951920, 56.662239, 57.595173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.719551, 56.337852, 57.567291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776935, -0.526936, -0.344544,
		0.242686, -0.254307, 0.936179,
		-0.580926, -0.810966, -0.069700,
		69.545273, 56.094563, 57.546383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.783783, 56.830410, 57.805340>,  <69.951920, 56.662239, 57.595173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.783783, 56.830410, 57.805340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.516907, 56.533688, 57.832397>,  <70.356781, 56.355656, 57.848633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.516907, 56.533688, 57.832397>,  <70.783783, 56.830410, 57.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.516907, 56.533688, 57.832397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723481, -0.666961, -0.178153,
		0.177270, -0.069924, 0.981675,
		-0.667196, -0.741804, 0.067644,
		70.316750, 56.311146, 57.852692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.163528, 56.205688, 58.068867>,  <70.783783, 56.830410, 57.805340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.163528, 56.205688, 58.068867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.846466, 56.072773, 57.864403>,  <70.656227, 55.993023, 57.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.846466, 56.072773, 57.864403>,  <71.163528, 56.205688, 58.068867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.846466, 56.072773, 57.864403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540448, -0.770993, -0.336877,
		-0.282163, -0.543284, 0.790713,
		-0.792654, -0.332285, -0.511162,
		70.608673, 55.973087, 57.711056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.538124, 56.749096, 58.588779>,  <71.163528, 56.205688, 58.068867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.538124, 56.749096, 58.588779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.912834, 56.648697, 58.491257>,  <72.137665, 56.588459, 58.432743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.912834, 56.648697, 58.491257>,  <71.538124, 56.749096, 58.588779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.912834, 56.648697, 58.491257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348256, 0.736511, 0.579887,
		0.034014, -0.628133, 0.777362,
		0.936782, -0.250997, -0.243803,
		72.193871, 56.573399, 58.418118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.960060, 56.652592, 59.170361>,  <71.538124, 56.749096, 58.588779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.960060, 56.652592, 59.170361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.174438, 56.778908, 58.857170>,  <72.303062, 56.854698, 58.669258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.174438, 56.778908, 58.857170>,  <71.960060, 56.652592, 59.170361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.174438, 56.778908, 58.857170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082009, 0.903550, 0.420560,
		0.840264, -0.289605, 0.458350,
		0.535939, 0.315793, -0.782972,
		72.335220, 56.873646, 58.622280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.474884, 57.175392, 59.400185>,  <71.960060, 56.652592, 59.170361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.474884, 57.175392, 59.400185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469955, 57.225677, 59.003387>,  <72.467003, 57.255848, 58.765308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469955, 57.225677, 59.003387>,  <72.474884, 57.175392, 59.400185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.469955, 57.225677, 59.003387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008761, 0.992014, 0.125824,
		0.999886, 0.010240, -0.011114,
		-0.012313, 0.125712, -0.991990,
		72.466263, 57.263390, 58.705791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.950966, 57.127224, 60.010468>,  <72.474884, 57.175392, 59.400185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.950966, 57.127224, 60.010468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.126099, 56.790169, 60.135857>,  <73.231178, 56.587936, 60.211090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.126099, 56.790169, 60.135857>,  <72.950966, 57.127224, 60.010468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.126099, 56.790169, 60.135857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391230, -0.135360, -0.910284,
		0.809475, 0.521184, 0.270403,
		0.437824, -0.842642, 0.313473,
		73.257446, 56.537376, 60.229900>
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
