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
	<36.321552, 52.652813, 50.002388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950760, 52.755680, 49.893158>,  <35.728283, 52.817398, 49.827618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950760, 52.755680, 49.893158>,  <36.321552, 52.652813, 50.002388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950760, 52.755680, 49.893158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355037, -0.836460, 0.417472,
		-0.121060, 0.483942, 0.866686,
		-0.926981, 0.257166, -0.273079,
		35.672665, 52.832829, 49.811234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846245, 52.511749, 50.606464>,  <36.321552, 52.652813, 50.002388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846245, 52.511749, 50.606464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678963, 52.485954, 50.244041>,  <35.578594, 52.470478, 50.026588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678963, 52.485954, 50.244041>,  <35.846245, 52.511749, 50.606464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678963, 52.485954, 50.244041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437539, -0.859833, 0.263148,
		-0.796030, 0.506486, 0.331372,
		-0.418206, -0.064486, -0.906060,
		35.553501, 52.466610, 49.972225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904121, 51.749924, 50.353397>,  <35.846245, 52.511749, 50.606464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904121, 51.749924, 50.353397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882286, 51.555954, 50.004257>,  <35.869186, 51.439571, 49.794773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882286, 51.555954, 50.004257>,  <35.904121, 51.749924, 50.353397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882286, 51.555954, 50.004257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976566, -0.208179, 0.054585,
		-0.208179, -0.849420, 0.484920,
		-0.054585, -0.484920, -0.872854,
		35.865910, 51.410477, 49.742401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104889, 51.020981, 50.482189>,  <35.904121, 51.749924, 50.353397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104889, 51.020981, 50.482189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176319, 51.187187, 50.125435>,  <36.219177, 51.286911, 49.911381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176319, 51.187187, 50.125435>,  <36.104889, 51.020981, 50.482189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176319, 51.187187, 50.125435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980209, -0.153845, 0.124588,
		-0.085445, -0.896483, -0.434762,
		0.178577, 0.415512, -0.891886,
		36.229893, 51.311840, 49.857868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627388, 50.534157, 50.215382>,  <36.104889, 51.020981, 50.482189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627388, 50.534157, 50.215382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675739, 50.895401, 50.050568>,  <36.704750, 51.112148, 49.951679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675739, 50.895401, 50.050568>,  <36.627388, 50.534157, 50.215382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675739, 50.895401, 50.050568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991176, -0.132550, 0.000263,
		-0.054378, -0.408434, -0.911166,
		0.120883, 0.903112, -0.412038,
		36.712006, 51.166336, 49.926956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317127, 50.466927, 49.964718>,  <36.627388, 50.534157, 50.215382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317127, 50.466927, 49.964718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246666, 50.859062, 49.929153>,  <37.204388, 51.094345, 49.907814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246666, 50.859062, 49.929153>,  <37.317127, 50.466927, 49.964718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246666, 50.859062, 49.929153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961847, 0.152217, -0.227334,
		-0.209330, -0.125565, -0.969750,
		-0.176158, 0.980338, -0.088911,
		37.193817, 51.153164, 49.902481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736042, 49.869347, 50.210415>,  <37.317127, 50.466927, 49.964718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736042, 49.869347, 50.210415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091835, 49.792252, 50.044678>,  <38.305309, 49.745995, 49.945236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091835, 49.792252, 50.044678>,  <37.736042, 49.869347, 50.210415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091835, 49.792252, 50.044678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403596, 0.756596, 0.514464,
		0.214331, -0.624832, 0.750764,
		0.889479, -0.192740, -0.414342,
		38.358677, 49.734428, 49.920376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279644, 49.907410, 50.762245>,  <37.736042, 49.869347, 50.210415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279644, 49.907410, 50.762245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438206, 49.980381, 50.402336>,  <38.533344, 50.024162, 50.186390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438206, 49.980381, 50.402336>,  <38.279644, 49.907410, 50.762245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438206, 49.980381, 50.402336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494906, 0.783005, 0.376790,
		0.773257, -0.594664, 0.220110,
		0.396411, 0.182422, -0.899767,
		38.557129, 50.035107, 50.132404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916458, 49.883144, 50.862835>,  <38.279644, 49.907410, 50.762245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916458, 49.883144, 50.862835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880775, 50.105461, 50.532227>,  <38.859364, 50.238850, 50.333862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880775, 50.105461, 50.532227>,  <38.916458, 49.883144, 50.862835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880775, 50.105461, 50.532227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505590, 0.740239, 0.443197,
		0.858149, -0.378345, -0.347037,
		-0.089209, 0.555788, -0.826524,
		38.854012, 50.272198, 50.284271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587666, 50.022511, 50.580677>,  <38.916458, 49.883144, 50.862835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587666, 50.022511, 50.580677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293159, 50.287704, 50.526459>,  <39.116455, 50.446819, 50.493927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293159, 50.287704, 50.526459>,  <39.587666, 50.022511, 50.580677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293159, 50.287704, 50.526459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535499, 0.693287, 0.482280,
		0.413715, 0.282500, -0.865467,
		-0.736262, 0.662983, -0.135545,
		39.072281, 50.486599, 50.485794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852386, 50.682590, 50.431492>,  <39.587666, 50.022511, 50.580677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852386, 50.682590, 50.431492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488091, 50.730415, 50.589607>,  <39.269512, 50.759109, 50.684479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488091, 50.730415, 50.589607>,  <39.852386, 50.682590, 50.431492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488091, 50.730415, 50.589607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380088, 0.616997, 0.689092,
		-0.161502, 0.777830, -0.607369,
		-0.910742, 0.119564, 0.395290,
		39.214867, 50.766285, 50.708195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836525, 51.322430, 50.419422>,  <39.852386, 50.682590, 50.431492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836525, 51.322430, 50.419422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637794, 51.124367, 50.704514>,  <39.518555, 51.005527, 50.875568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637794, 51.124367, 50.704514>,  <39.836525, 51.322430, 50.419422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637794, 51.124367, 50.704514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537337, 0.469398, 0.700668,
		-0.681494, 0.731086, 0.032857,
		-0.496825, -0.495156, 0.712731,
		39.488747, 50.975819, 50.918331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701168, 51.886387, 50.823261>,  <39.836525, 51.322430, 50.419422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701168, 51.886387, 50.823261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734627, 51.534447, 51.010391>,  <39.754704, 51.323280, 51.122669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734627, 51.534447, 51.010391>,  <39.701168, 51.886387, 50.823261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734627, 51.534447, 51.010391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755919, 0.361926, 0.545523,
		-0.649298, 0.308006, 0.695373,
		0.083649, -0.879854, 0.467825,
		39.759720, 51.270489, 51.150738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368233, 51.907654, 51.509640>,  <39.701168, 51.886387, 50.823261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368233, 51.907654, 51.509640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689495, 51.721420, 51.360954>,  <39.882252, 51.609680, 51.271744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689495, 51.721420, 51.360954>,  <39.368233, 51.907654, 51.509640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689495, 51.721420, 51.360954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595649, 0.639894, 0.485529,
		0.011802, -0.611366, 0.791260,
		0.803158, -0.465583, -0.371712,
		39.930443, 51.581745, 51.249439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930607, 51.741055, 52.048393>,  <39.368233, 51.907654, 51.509640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930607, 51.741055, 52.048393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073097, 51.817780, 51.682594>,  <40.158592, 51.863815, 51.463116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073097, 51.817780, 51.682594>,  <39.930607, 51.741055, 52.048393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073097, 51.817780, 51.682594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594846, 0.708213, 0.380255,
		0.720601, -0.679441, 0.138177,
		0.356220, 0.191818, -0.914502,
		40.179962, 51.875324, 51.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777710, 51.610390, 51.944511>,  <39.930607, 51.741055, 52.048393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777710, 51.610390, 51.944511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576191, 51.902473, 51.759911>,  <40.455280, 52.077724, 51.649151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576191, 51.902473, 51.759911>,  <40.777710, 51.610390, 51.944511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576191, 51.902473, 51.759911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649316, 0.672480, 0.355191,
		0.569713, -0.120715, -0.812930,
		-0.503802, 0.730205, -0.461502,
		40.425049, 52.121536, 51.621460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160786, 52.217125, 51.948486>,  <40.777710, 51.610390, 51.944511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160786, 52.217125, 51.948486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878941, 52.332672, 51.689236>,  <40.709831, 52.402000, 51.533684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878941, 52.332672, 51.689236>,  <41.160786, 52.217125, 51.948486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878941, 52.332672, 51.689236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507220, 0.843788, -0.175355,
		0.496229, -0.452302, -0.741067,
		-0.704617, 0.288868, -0.648129,
		40.667557, 52.419331, 51.494797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537247, 52.191875, 51.398975>,  <41.160786, 52.217125, 51.948486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537247, 52.191875, 51.398975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249664, 52.469650, 51.410713>,  <41.077114, 52.636314, 51.417755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249664, 52.469650, 51.410713>,  <41.537247, 52.191875, 51.398975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249664, 52.469650, 51.410713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683208, 0.713833, -0.153847,
		-0.127783, -0.090562, -0.987659,
		-0.718956, 0.694436, 0.029343,
		41.033978, 52.677982, 51.419518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975086, 52.598980, 51.345081>,  <41.537247, 52.191875, 51.398975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975086, 52.598980, 51.345081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635235, 52.804523, 51.297611>,  <41.431324, 52.927849, 51.269131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635235, 52.804523, 51.297611>,  <41.975086, 52.598980, 51.345081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635235, 52.804523, 51.297611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522131, 0.851274, -0.052070,
		0.074267, -0.106203, -0.991567,
		-0.849626, 0.513861, -0.118674,
		41.380348, 52.958683, 51.262009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094135, 53.274700, 50.901379>,  <41.975086, 52.598980, 51.345081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094135, 53.274700, 50.901379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781811, 53.321163, 51.146927>,  <41.594418, 53.349041, 51.294258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781811, 53.321163, 51.146927>,  <42.094135, 53.274700, 50.901379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781811, 53.321163, 51.146927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383544, 0.864743, 0.324212,
		-0.493182, 0.488596, -0.719754,
		-0.780811, 0.116162, 0.613874,
		41.547569, 53.356010, 51.331089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794998, 53.103745, 50.808792>,  <42.094135, 53.274700, 50.901379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794998, 53.103745, 50.808792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720539, 52.843452, 50.514336>,  <42.675865, 52.687279, 50.337662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720539, 52.843452, 50.514336>,  <42.794998, 53.103745, 50.808792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720539, 52.843452, 50.514336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865309, -0.463470, 0.190882,
		-0.465392, -0.601458, 0.649353,
		-0.186148, -0.650726, -0.736142,
		42.664696, 52.648235, 50.293491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074757, 52.654652, 51.312500>,  <42.794998, 53.103745, 50.808792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074757, 52.654652, 51.312500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356335, 52.890636, 51.470688>,  <43.525284, 53.032227, 51.565601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356335, 52.890636, 51.470688>,  <43.074757, 52.654652, 51.312500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356335, 52.890636, 51.470688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651917, -0.757693, -0.030097,
		0.281889, 0.279000, -0.917985,
		0.703948, 0.589966, 0.395470,
		43.567520, 53.067627, 51.589329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642315, 52.474625, 50.964184>,  <43.074757, 52.654652, 51.312500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642315, 52.474625, 50.964184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760849, 52.614700, 51.319611>,  <43.831970, 52.698746, 51.532867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760849, 52.614700, 51.319611>,  <43.642315, 52.474625, 50.964184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760849, 52.614700, 51.319611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695103, -0.717113, 0.050799,
		0.654994, 0.602594, -0.455920,
		0.296334, 0.350184, 0.888570,
		43.849751, 52.719757, 51.586182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357296, 52.493423, 50.901306>,  <43.642315, 52.474625, 50.964184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357296, 52.493423, 50.901306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233288, 52.453045, 51.279449>,  <44.158882, 52.428818, 51.506336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233288, 52.453045, 51.279449>,  <44.357296, 52.493423, 50.901306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233288, 52.453045, 51.279449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730148, -0.662126, 0.168739,
		0.608911, 0.742562, 0.278978,
		-0.310018, -0.100948, 0.945356,
		44.140282, 52.422760, 51.563057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829693, 52.800510, 51.500332>,  <44.357296, 52.493423, 50.901306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829693, 52.800510, 51.500332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597553, 52.476143, 51.530281>,  <44.458271, 52.281521, 51.548252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597553, 52.476143, 51.530281>,  <44.829693, 52.800510, 51.500332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597553, 52.476143, 51.530281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808720, -0.563067, 0.170079,
		-0.095760, 0.159259, 0.982582,
		-0.580346, -0.810920, 0.074877,
		44.423450, 52.232868, 51.552746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877949, 52.922569, 52.238838>,  <44.829693, 52.800510, 51.500332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877949, 52.922569, 52.238838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580540, 52.662460, 52.176460>,  <44.402096, 52.506393, 52.139034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580540, 52.662460, 52.176460>,  <44.877949, 52.922569, 52.238838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580540, 52.662460, 52.176460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224082, 0.022561, 0.974309,
		-0.630052, 0.759362, -0.162490,
		-0.743519, -0.650277, -0.155945,
		44.357483, 52.467377, 52.129677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600422, 53.110355, 52.926163>,  <44.877949, 52.922569, 52.238838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600422, 53.110355, 52.926163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579060, 52.946110, 53.290260>,  <44.566242, 52.847561, 53.508720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579060, 52.946110, 53.290260>,  <44.600422, 53.110355, 52.926163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579060, 52.946110, 53.290260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900981, -0.412850, -0.133373,
		0.430559, 0.812988, 0.392007,
		-0.053410, -0.410616, 0.910243,
		44.563038, 52.822926, 53.563332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216717, 53.288208, 53.295498>,  <44.600422, 53.110355, 52.926163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216717, 53.288208, 53.295498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041862, 52.938686, 53.380707>,  <44.936951, 52.728973, 53.431831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041862, 52.938686, 53.380707>,  <45.216717, 53.288208, 53.295498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041862, 52.938686, 53.380707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861554, -0.474811, -0.179666,
		0.258138, 0.104990, 0.960386,
		-0.437139, -0.873803, 0.213021,
		44.910721, 52.676544, 53.444614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491890, 53.069958, 53.873672>,  <45.216717, 53.288208, 53.295498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491890, 53.069958, 53.873672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359779, 52.771858, 53.641975>,  <45.280514, 52.592999, 53.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359779, 52.771858, 53.641975>,  <45.491890, 53.069958, 53.873672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359779, 52.771858, 53.641975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917859, -0.396695, -0.012957,
		-0.220125, -0.535940, 0.815054,
		-0.330272, -0.745253, -0.579240,
		45.260696, 52.548283, 53.468204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549530, 52.390575, 54.242310>,  <45.491890, 53.069958, 53.873672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549530, 52.390575, 54.242310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559887, 52.334972, 53.846329>,  <45.566101, 52.301613, 53.608742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559887, 52.334972, 53.846329>,  <45.549530, 52.390575, 54.242310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559887, 52.334972, 53.846329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929398, -0.361368, 0.075051,
		-0.368170, -0.922004, 0.119832,
		0.025894, -0.139003, -0.989953,
		45.567654, 52.293270, 53.549343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816807, 51.783035, 54.113319>,  <45.549530, 52.390575, 54.242310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816807, 51.783035, 54.113319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905842, 51.995522, 53.786327>,  <45.959263, 52.123013, 53.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905842, 51.995522, 53.786327>,  <45.816807, 51.783035, 54.113319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905842, 51.995522, 53.786327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945183, -0.323082, 0.047413,
		-0.238926, -0.783220, -0.574005,
		0.222585, 0.531211, -0.817478,
		45.972618, 52.154884, 53.541084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280502, 51.410511, 53.738968>,  <45.816807, 51.783035, 54.113319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280502, 51.410511, 53.738968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323700, 51.804707, 53.686577>,  <46.349617, 52.041222, 53.655144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323700, 51.804707, 53.686577>,  <46.280502, 51.410511, 53.738968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323700, 51.804707, 53.686577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969055, -0.074931, 0.235198,
		0.221971, -0.152323, -0.963082,
		0.107991, 0.985486, -0.130977,
		46.356098, 52.100353, 53.647285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818085, 51.320621, 53.249062>,  <46.280502, 51.410511, 53.738968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818085, 51.320621, 53.249062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806564, 51.676521, 53.431274>,  <46.799652, 51.890060, 53.540604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806564, 51.676521, 53.431274>,  <46.818085, 51.320621, 53.249062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806564, 51.676521, 53.431274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995276, -0.016747, 0.095634,
		0.092720, 0.456135, -0.885067,
		-0.028800, 0.889753, 0.455533,
		46.797924, 51.943447, 53.567936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219555, 51.855888, 52.956814>,  <46.818085, 51.320621, 53.249062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219555, 51.855888, 52.956814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181492, 51.989193, 53.332020>,  <47.158653, 52.069176, 53.557144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181492, 51.989193, 53.332020>,  <47.219555, 51.855888, 52.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181492, 51.989193, 53.332020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995431, 0.039362, 0.086995,
		-0.007930, 0.942011, -0.335489,
		-0.095156, 0.333266, 0.938019,
		47.152946, 52.089172, 53.613426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562031, 52.615883, 53.161587>,  <47.219555, 51.855888, 52.956814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562031, 52.615883, 53.161587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563046, 52.375370, 53.481201>,  <47.563656, 52.231064, 53.672970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563046, 52.375370, 53.481201>,  <47.562031, 52.615883, 53.161587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.563046, 52.375370, 53.481201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966507, 0.206530, 0.152346,
		-0.256627, 0.771885, 0.581667,
		0.002538, -0.601281, 0.799033,
		47.563808, 52.194984, 53.720913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.831528, 53.034626, 53.684940>,  <47.562031, 52.615883, 53.161587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.831528, 53.034626, 53.684940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.010887, 52.764278, 53.918907>,  <48.118504, 52.602070, 54.059288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.010887, 52.764278, 53.918907>,  <47.831528, 53.034626, 53.684940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.010887, 52.764278, 53.918907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697722, -0.144354, -0.701674,
		0.558678, 0.722743, 0.406842,
		0.448401, -0.675873, 0.584921,
		48.145409, 52.561516, 54.094383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.437202, 53.418594, 53.380241>,  <47.831528, 53.034626, 53.684940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.437202, 53.418594, 53.380241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.205139, 53.744362, 53.375488>,  <48.065899, 53.939823, 53.372635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.205139, 53.744362, 53.375488>,  <48.437202, 53.418594, 53.380241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.205139, 53.744362, 53.375488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521861, 0.382884, 0.762273,
		0.625358, 0.436039, -0.647146,
		-0.580162, 0.814414, -0.011887,
		48.031090, 53.988686, 53.371922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.936523, 54.104748, 53.255798>,  <48.437202, 53.418594, 53.380241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.936523, 54.104748, 53.255798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.593452, 54.126377, 53.460335>,  <48.387611, 54.139355, 53.583057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.593452, 54.126377, 53.460335>,  <48.936523, 54.104748, 53.255798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.593452, 54.126377, 53.460335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512919, 0.159930, 0.843408,
		-0.036174, 0.985646, -0.164903,
		-0.857675, 0.054072, 0.511342,
		48.336151, 54.142597, 53.613739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.924995, 54.645935, 53.751003>,  <48.936523, 54.104748, 53.255798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.924995, 54.645935, 53.751003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679874, 54.352791, 53.869255>,  <48.532803, 54.176907, 53.940208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.679874, 54.352791, 53.869255>,  <48.924995, 54.645935, 53.751003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.679874, 54.352791, 53.869255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345594, 0.087898, 0.934258,
		-0.710662, 0.674682, 0.199407,
		-0.612800, -0.732856, 0.295632,
		48.496033, 54.132935, 53.957943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.516586, 54.863293, 54.298149>,  <48.924995, 54.645935, 53.751003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.516586, 54.863293, 54.298149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.535858, 54.464111, 54.314953>,  <48.547421, 54.224602, 54.325035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.535858, 54.464111, 54.314953>,  <48.516586, 54.863293, 54.298149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.535858, 54.464111, 54.314953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062458, 0.044983, 0.997034,
		-0.996884, -0.045414, 0.064498,
		0.048181, -0.997955, 0.042007,
		48.550312, 54.164726, 54.327557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.256954, 55.398453, 54.597076>,  <48.516586, 54.863293, 54.298149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.256954, 55.398453, 54.597076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.015625, 55.712997, 54.543949>,  <47.870827, 55.901722, 54.512074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.015625, 55.712997, 54.543949>,  <48.256954, 55.398453, 54.597076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.015625, 55.712997, 54.543949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718435, 0.608216, 0.337526,
		0.346197, 0.108219, -0.931899,
		-0.603323, 0.786360, -0.132814,
		47.834629, 55.948906, 54.504105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.641621, 55.882484, 54.193729>,  <48.256954, 55.398453, 54.597076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.641621, 55.882484, 54.193729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.367290, 55.990303, 54.464130>,  <48.202690, 56.054993, 54.626373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.367290, 55.990303, 54.464130>,  <48.641621, 55.882484, 54.193729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.367290, 55.990303, 54.464130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708188, 0.461168, 0.534596,
		-0.167654, 0.845381, -0.507172,
		-0.685829, 0.269546, 0.676006,
		48.161541, 56.071167, 54.666931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.512421, 56.605457, 54.282906>,  <48.641621, 55.882484, 54.193729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.512421, 56.605457, 54.282906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.475620, 56.409752, 54.629814>,  <48.453541, 56.292328, 54.837959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.475620, 56.409752, 54.629814>,  <48.512421, 56.605457, 54.282906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.475620, 56.409752, 54.629814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692328, 0.594566, 0.408869,
		-0.715694, 0.638051, 0.284031,
		-0.092004, -0.489268, 0.867267,
		48.448017, 56.262970, 54.889996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.627579, 57.107048, 54.958214>,  <48.512421, 56.605457, 54.282906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.627579, 57.107048, 54.958214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.759865, 56.735451, 55.024658>,  <48.839237, 56.512493, 55.064526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.759865, 56.735451, 55.024658>,  <48.627579, 57.107048, 54.958214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.759865, 56.735451, 55.024658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895572, 0.364446, 0.255204,
		-0.297622, 0.064362, 0.952512,
		0.330714, -0.928998, 0.166108,
		48.859077, 56.456753, 55.074490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.783020, 57.121006, 55.750988>,  <48.627579, 57.107048, 54.958214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.783020, 57.121006, 55.750988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.966625, 56.868279, 55.501152>,  <49.076790, 56.716644, 55.351250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.966625, 56.868279, 55.501152>,  <48.783020, 57.121006, 55.750988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.966625, 56.868279, 55.501152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887287, 0.361661, 0.286221,
		0.045052, -0.685573, 0.726608,
		0.459011, -0.631816, -0.624594,
		49.104328, 56.678734, 55.313774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.556004, 57.173080, 56.045704>,  <48.783020, 57.121006, 55.750988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.556004, 57.173080, 56.045704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.549229, 56.987957, 55.691185>,  <49.545162, 56.876884, 55.478474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.549229, 56.987957, 55.691185>,  <49.556004, 57.173080, 56.045704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.549229, 56.987957, 55.691185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988238, 0.126992, -0.085198,
		0.151983, -0.877315, 0.455214,
		-0.016937, -0.462808, -0.886297,
		49.544147, 56.849113, 55.425297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.096264, 56.646530, 56.058617>,  <49.556004, 57.173080, 56.045704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.096264, 56.646530, 56.058617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.026314, 56.817497, 55.703827>,  <49.984344, 56.920078, 55.490952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.026314, 56.817497, 55.703827>,  <50.096264, 56.646530, 56.058617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.026314, 56.817497, 55.703827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984150, 0.048929, -0.170455,
		-0.029457, -0.902727, -0.429203,
		-0.174875, 0.427421, -0.886978,
		49.973850, 56.945724, 55.437733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.623848, 56.194626, 56.397705>,  <50.096264, 56.646530, 56.058617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.623848, 56.194626, 56.397705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373535, 56.404358, 56.628693>,  <50.223347, 56.530197, 56.767284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373535, 56.404358, 56.628693>,  <50.623848, 56.194626, 56.397705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.373535, 56.404358, 56.628693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727666, 0.125828, 0.674292,
		0.280892, 0.842165, -0.460280,
		-0.625781, 0.524333, 0.577471,
		50.185802, 56.561657, 56.801933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.861790, 56.863327, 56.449879>,  <50.623848, 56.194626, 56.397705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.861790, 56.863327, 56.449879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.691795, 56.711803, 56.778732>,  <50.589798, 56.620892, 56.976044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.691795, 56.711803, 56.778732>,  <50.861790, 56.863327, 56.449879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.691795, 56.711803, 56.778732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878862, 0.044831, 0.474966,
		-0.216776, 0.924390, 0.313864,
		-0.424983, -0.378804, 0.822129,
		50.564301, 56.598164, 57.025372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.697304, 57.296692, 57.184101>,  <50.861790, 56.863327, 56.449879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.697304, 57.296692, 57.184101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.792053, 56.914959, 57.256927>,  <50.848904, 56.685921, 57.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.792053, 56.914959, 57.256927>,  <50.697304, 57.296692, 57.184101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.792053, 56.914959, 57.256927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823568, 0.296650, 0.483461,
		-0.515390, 0.035424, 0.856223,
		0.236872, -0.954329, 0.182064,
		50.863113, 56.628658, 57.311546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.895672, 57.052776, 57.919006>,  <50.697304, 57.296692, 57.184101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.895672, 57.052776, 57.919006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.096336, 56.873951, 57.622772>,  <51.216736, 56.766655, 57.445030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.096336, 56.873951, 57.622772>,  <50.895672, 57.052776, 57.919006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.096336, 56.873951, 57.622772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861313, 0.337748, 0.379559,
		0.080444, -0.828288, 0.554498,
		0.501665, -0.447064, -0.740585,
		51.246838, 56.739830, 57.400597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.530743, 57.125595, 58.151890>,  <50.895672, 57.052776, 57.919006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.530743, 57.125595, 58.151890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.627151, 56.933395, 57.814598>,  <51.684998, 56.818077, 57.612225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.627151, 56.933395, 57.814598>,  <51.530743, 57.125595, 58.151890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.627151, 56.933395, 57.814598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967667, 0.185545, 0.170860,
		0.074359, -0.857145, 0.509680,
		0.241021, -0.480496, -0.843228,
		51.699459, 56.789246, 57.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.072815, 56.579399, 58.272728>,  <51.530743, 57.125595, 58.151890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.072815, 56.579399, 58.272728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.118156, 56.722790, 57.902077>,  <52.145363, 56.808826, 57.679684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.118156, 56.722790, 57.902077>,  <52.072815, 56.579399, 58.272728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.118156, 56.722790, 57.902077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833160, 0.473809, 0.285220,
		0.541291, -0.804362, -0.244963,
		0.113354, 0.358480, -0.926630,
		52.152164, 56.830334, 57.624088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.836201, 56.651291, 58.181675>,  <52.072815, 56.579399, 58.272728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.836201, 56.651291, 58.181675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.722431, 56.869263, 57.866165>,  <52.654171, 57.000046, 57.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.722431, 56.869263, 57.866165>,  <52.836201, 56.651291, 58.181675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.722431, 56.869263, 57.866165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791482, 0.597735, 0.127551,
		0.540982, -0.588020, -0.601307,
		-0.284419, 0.544927, -0.788771,
		52.637104, 57.032742, 57.629532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.201168, 56.154179, 58.723423>,  <52.836201, 56.651291, 58.181675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.201168, 56.154179, 58.723423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.559635, 56.210503, 58.555115>,  <53.774715, 56.244297, 58.454128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.559635, 56.210503, 58.555115>,  <53.201168, 56.154179, 58.723423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.559635, 56.210503, 58.555115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385390, 0.222946, 0.895416,
		0.219819, -0.964619, 0.145566,
		0.896189, 0.140730, -0.420762,
		53.828487, 56.252747, 58.428883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.697483, 55.738468, 59.049374>,  <53.201168, 56.154179, 58.723423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.697483, 55.738468, 59.049374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.860897, 56.072697, 58.902451>,  <53.958946, 56.273235, 58.814297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.860897, 56.072697, 58.902451>,  <53.697483, 55.738468, 59.049374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.860897, 56.072697, 58.902451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404865, 0.194770, 0.893391,
		0.818036, -0.513691, -0.258725,
		0.408536, 0.835575, -0.367305,
		53.983459, 56.323368, 58.792259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.399719, 55.763580, 59.243298>,  <53.697483, 55.738468, 59.049374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.399719, 55.763580, 59.243298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.263832, 56.136753, 59.195587>,  <54.182301, 56.360657, 59.166962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.263832, 56.136753, 59.195587>,  <54.399719, 55.763580, 59.243298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.263832, 56.136753, 59.195587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192778, 0.193195, 0.962035,
		0.920560, 0.303824, -0.245480,
		-0.339716, 0.932934, -0.119277,
		54.161919, 56.416634, 59.159805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.882309, 56.342712, 59.475971>,  <54.399719, 55.763580, 59.243298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.882309, 56.342712, 59.475971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.500275, 56.460087, 59.492447>,  <54.271053, 56.530514, 59.502335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.500275, 56.460087, 59.492447>,  <54.882309, 56.342712, 59.475971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.500275, 56.460087, 59.492447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149970, 0.358794, 0.921290,
		0.255564, 0.886093, -0.386687,
		-0.955090, 0.293440, 0.041192,
		54.213749, 56.548119, 59.504803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.859116, 57.042820, 59.534378>,  <54.882309, 56.342712, 59.475971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.859116, 57.042820, 59.534378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.563850, 56.841713, 59.714310>,  <54.386692, 56.721050, 59.822269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.563850, 56.841713, 59.714310>,  <54.859116, 57.042820, 59.534378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.563850, 56.841713, 59.714310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302076, 0.349883, 0.886754,
		-0.603215, 0.790450, -0.106397,
		-0.738161, -0.502763, 0.449831,
		54.342403, 56.690884, 59.849258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.669838, 57.359844, 60.173397>,  <54.859116, 57.042820, 59.534378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.669838, 57.359844, 60.173397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.507004, 56.997993, 60.223885>,  <54.409302, 56.780884, 60.254177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.507004, 56.997993, 60.223885>,  <54.669838, 57.359844, 60.173397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.507004, 56.997993, 60.223885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356566, -0.030171, 0.933783,
		-0.840917, 0.425135, 0.334842,
		-0.407086, -0.904627, 0.126218,
		54.384876, 56.726604, 60.261749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.419022, 57.583340, 60.337410>,  <54.669838, 57.359844, 60.173397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.419022, 57.583340, 60.337410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.696297, 57.587326, 60.625687>,  <55.862663, 57.589718, 60.798653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.696297, 57.587326, 60.625687>,  <55.419022, 57.583340, 60.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.696297, 57.587326, 60.625687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652645, -0.415635, 0.633484,
		0.305855, -0.909477, -0.281611,
		0.693186, 0.009962, 0.720690,
		55.904251, 57.590313, 60.841892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.639217, 56.927509, 60.516308>,  <55.419022, 57.583340, 60.337410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.639217, 56.927509, 60.516308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.683586, 57.171272, 60.830330>,  <55.710209, 57.317532, 61.018745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.683586, 57.171272, 60.830330>,  <55.639217, 56.927509, 60.516308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.683586, 57.171272, 60.830330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542243, -0.624883, 0.561689,
		0.832868, -0.487995, 0.261136,
		0.110922, 0.609411, 0.785057,
		55.716862, 57.354095, 61.065845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.144039, 56.964737, 60.022964>,  <55.639217, 56.927509, 60.516308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.144039, 56.964737, 60.022964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.515999, 57.111038, 60.007378>,  <56.739174, 57.198818, 59.998024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.515999, 57.111038, 60.007378>,  <56.144039, 56.964737, 60.022964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.515999, 57.111038, 60.007378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204167, -0.601376, -0.772439,
		-0.305952, 0.710334, -0.633892,
		0.929897, 0.365750, -0.038966,
		56.794968, 57.220764, 59.995689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.345028, 57.119503, 59.329262>,  <56.144039, 56.964737, 60.022964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.345028, 57.119503, 59.329262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.670219, 57.030144, 59.544357>,  <56.865334, 56.976528, 59.673416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.670219, 57.030144, 59.544357>,  <56.345028, 57.119503, 59.329262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.670219, 57.030144, 59.544357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248260, -0.702371, -0.667115,
		0.526723, 0.675848, -0.515551,
		0.812976, -0.223394, 0.537740,
		56.914112, 56.963127, 59.705681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.815563, 56.966717, 58.890179>,  <56.345028, 57.119503, 59.329262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.815563, 56.966717, 58.890179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.938248, 56.772232, 59.217476>,  <57.011856, 56.655540, 59.413857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.938248, 56.772232, 59.217476>,  <56.815563, 56.966717, 58.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.938248, 56.772232, 59.217476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391195, -0.719320, -0.574060,
		0.867696, 0.496164, -0.030419,
		0.306709, -0.486210, 0.818248,
		57.030262, 56.626369, 59.462952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.497189, 56.654408, 58.871635>,  <56.815563, 56.966717, 58.890179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.497189, 56.654408, 58.871635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.306236, 56.438065, 59.148643>,  <57.191666, 56.308258, 59.314850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.306236, 56.438065, 59.148643>,  <57.497189, 56.654408, 58.871635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.306236, 56.438065, 59.148643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229922, -0.837547, -0.495632,
		0.848085, -0.077378, 0.524180,
		-0.477377, -0.540858, 0.692520,
		57.163025, 56.275806, 59.356400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.011921, 56.206070, 59.066868>,  <57.497189, 56.654408, 58.871635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.011921, 56.206070, 59.066868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640320, 56.066444, 59.116035>,  <57.417358, 55.982670, 59.145538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640320, 56.066444, 59.116035>,  <58.011921, 56.206070, 59.066868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.640320, 56.066444, 59.116035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282107, -0.882942, -0.375271,
		0.239527, -0.313950, 0.918729,
		-0.929001, -0.349067, 0.122921,
		57.361618, 55.961723, 59.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.541336, 56.186665, 58.475777>,  <58.011921, 56.206070, 59.066868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.541336, 56.186665, 58.475777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.728752, 55.942116, 58.730865>,  <58.841202, 55.795387, 58.883919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.728752, 55.942116, 58.730865>,  <58.541336, 56.186665, 58.475777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.728752, 55.942116, 58.730865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883251, -0.309137, 0.352566,
		-0.018406, -0.728461, -0.684840,
		0.468540, -0.611375, 0.637723,
		58.869312, 55.758705, 58.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.198799, 56.196136, 58.192318>,  <58.541336, 56.186665, 58.475777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.198799, 56.196136, 58.192318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.598488, 56.189880, 58.177803>,  <59.838299, 56.186127, 58.169094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.598488, 56.189880, 58.177803>,  <59.198799, 56.196136, 58.192318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.598488, 56.189880, 58.177803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008140, -0.817243, 0.576236,
		-0.038668, -0.576081, -0.816477,
		0.999219, -0.015636, -0.036291,
		59.898254, 56.185188, 58.166916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.590710, 56.822304, 58.280510>,  <59.198799, 56.196136, 58.192318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.590710, 56.822304, 58.280510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.548767, 57.152508, 58.502335>,  <59.523602, 57.350628, 58.635429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.548767, 57.152508, 58.502335>,  <59.590710, 56.822304, 58.280510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.548767, 57.152508, 58.502335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821647, -0.242249, 0.515957,
		0.560269, 0.509759, -0.652874,
		-0.104855, 0.825507, 0.554566,
		59.517311, 57.400162, 58.668705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.850544, 56.790352, 57.621895>,  <59.590710, 56.822304, 58.280510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.850544, 56.790352, 57.621895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940063, 57.030056, 57.929352>,  <59.993774, 57.173878, 58.113827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940063, 57.030056, 57.929352>,  <59.850544, 56.790352, 57.621895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.940063, 57.030056, 57.929352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957540, 0.011873, -0.288057,
		-0.181746, 0.800469, -0.571154,
		0.223799, 0.599256, 0.768639,
		60.007202, 57.209831, 58.159943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.330620, 57.315975, 57.395493>,  <59.850544, 56.790352, 57.621895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.330620, 57.315975, 57.395493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.366852, 57.364357, 57.790901>,  <60.388592, 57.393387, 58.028145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.366852, 57.364357, 57.790901>,  <60.330620, 57.315975, 57.395493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.366852, 57.364357, 57.790901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966983, 0.226727, -0.116351,
		-0.238197, 0.966419, -0.096419,
		0.090583, 0.120950, 0.988517,
		60.394028, 57.400642, 58.087456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.824768, 57.758816, 57.580074>,  <60.330620, 57.315975, 57.395493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.824768, 57.758816, 57.580074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.815384, 57.523968, 57.903740>,  <60.809753, 57.383060, 58.097939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.815384, 57.523968, 57.903740>,  <60.824768, 57.758816, 57.580074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.815384, 57.523968, 57.903740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996530, -0.078386, -0.027981,
		0.079855, 0.805697, 0.586920,
		-0.023462, -0.587118, 0.809161,
		60.808346, 57.347832, 58.146488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.875614, 56.973221, 57.708660>,  <60.824768, 57.758816, 57.580074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.875614, 56.973221, 57.708660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.584564, 56.700119, 57.682068>,  <60.409935, 56.536259, 57.666111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.584564, 56.700119, 57.682068>,  <60.875614, 56.973221, 57.708660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.584564, 56.700119, 57.682068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657924, 0.667145, 0.349362,
		-0.194173, 0.297944, -0.934626,
		-0.727621, -0.682750, -0.066483,
		60.366280, 56.495293, 57.662125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.541454, 57.326370, 57.666142>,  <60.875614, 56.973221, 57.708660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.541454, 57.326370, 57.666142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.909744, 57.455734, 57.753487>,  <62.130718, 57.533352, 57.805893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.909744, 57.455734, 57.753487>,  <61.541454, 57.326370, 57.666142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.909744, 57.455734, 57.753487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234772, 0.012118, 0.971975,
		0.311697, -0.946183, 0.087084,
		0.920721, 0.323406, 0.218360,
		62.185959, 57.552757, 57.818996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.921570, 56.906097, 58.142612>,  <61.541454, 57.326370, 57.666142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.921570, 56.906097, 58.142612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.107887, 57.254452, 58.205345>,  <62.219677, 57.463463, 58.242985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.107887, 57.254452, 58.205345>,  <61.921570, 56.906097, 58.142612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.107887, 57.254452, 58.205345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009407, -0.172351, 0.984991,
		0.884843, -0.460279, -0.072087,
		0.465795, 0.870883, 0.156834,
		62.247627, 57.515717, 58.252396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.606495, 56.802837, 58.418606>,  <61.921570, 56.906097, 58.142612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.606495, 56.802837, 58.418606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.431259, 57.134872, 58.556610>,  <62.326118, 57.334095, 58.639412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.431259, 57.134872, 58.556610>,  <62.606495, 56.802837, 58.418606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.431259, 57.134872, 58.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062680, -0.354661, 0.932892,
		0.896744, 0.430314, 0.103343,
		-0.438088, 0.830087, 0.345012,
		62.299831, 57.383900, 58.660114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.019363, 57.098476, 58.818142>,  <62.606495, 56.802837, 58.418606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.019363, 57.098476, 58.818142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.664764, 57.230881, 58.947479>,  <62.452003, 57.310322, 59.025082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.664764, 57.230881, 58.947479>,  <63.019363, 57.098476, 58.818142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.664764, 57.230881, 58.947479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244748, -0.257608, 0.934739,
		0.392701, 0.907784, 0.147357,
		-0.886501, 0.331007, 0.323341,
		62.398815, 57.330181, 59.044483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.624290, 56.787258, 58.586262>,  <63.019363, 57.098476, 58.818142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.624290, 56.787258, 58.586262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.887817, 56.543812, 58.409378>,  <64.045937, 56.397743, 58.303246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.887817, 56.543812, 58.409378>,  <63.624290, 56.787258, 58.586262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.887817, 56.543812, 58.409378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286154, 0.746355, -0.600891,
		0.695758, 0.269335, 0.665868,
		0.658815, -0.608615, -0.442211,
		64.085464, 56.361229, 58.276714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.254700, 57.184162, 58.628506>,  <63.624290, 56.787258, 58.586262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.254700, 57.184162, 58.628506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.197655, 56.978821, 58.290009>,  <64.163429, 56.855614, 58.086910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.197655, 56.978821, 58.290009>,  <64.254700, 57.184162, 58.628506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.197655, 56.978821, 58.290009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376524, 0.762564, -0.526048,
		0.915364, -0.393651, 0.084541,
		-0.142612, -0.513357, -0.846243,
		64.154869, 56.824814, 58.036137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.949051, 57.106026, 58.397991>,  <64.254700, 57.184162, 58.628506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.949051, 57.106026, 58.397991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.689598, 57.075428, 58.095093>,  <64.533928, 57.057068, 57.913353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.689598, 57.075428, 58.095093>,  <64.949051, 57.106026, 58.397991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.689598, 57.075428, 58.095093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508869, 0.696272, -0.506220,
		0.565973, -0.713691, -0.412699,
		-0.648635, -0.076498, -0.757246,
		64.495010, 57.052479, 57.867920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.378319, 57.010429, 57.727081>,  <64.949051, 57.106026, 58.397991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.378319, 57.010429, 57.727081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.011513, 57.164066, 57.684067>,  <64.791428, 57.256248, 57.658257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.011513, 57.164066, 57.684067>,  <65.378319, 57.010429, 57.727081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.011513, 57.164066, 57.684067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396353, 0.847331, -0.353462,
		-0.044641, -0.366751, -0.929247,
		-0.917012, 0.384088, -0.107537,
		64.736412, 57.279293, 57.651806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.562943, 57.323921, 57.087151>,  <65.378319, 57.010429, 57.727081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.562943, 57.323921, 57.087151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.257454, 57.504993, 57.271233>,  <65.074158, 57.613636, 57.381683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.257454, 57.504993, 57.271233>,  <65.562943, 57.323921, 57.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.257454, 57.504993, 57.271233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447620, 0.885052, -0.127745,
		-0.465137, 0.108436, -0.878572,
		-0.763730, 0.452685, 0.460209,
		65.028336, 57.640800, 57.409294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.515465, 57.899376, 57.570908>,  <65.562943, 57.323921, 57.087151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.515465, 57.899376, 57.570908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.628914, 58.041389, 57.927223>,  <65.696983, 58.126598, 58.141014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.628914, 58.041389, 57.927223>,  <65.515465, 57.899376, 57.570908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.628914, 58.041389, 57.927223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855306, -0.513698, -0.067575,
		0.433607, 0.781066, -0.449355,
		0.283614, 0.355035, 0.890794,
		65.713997, 58.147900, 58.194462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.049957, 58.379147, 57.551399>,  <65.515465, 57.899376, 57.570908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.049957, 58.379147, 57.551399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.077362, 58.153156, 57.880302>,  <66.093803, 58.017563, 58.077644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.077362, 58.153156, 57.880302>,  <66.049957, 58.379147, 57.551399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.077362, 58.153156, 57.880302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864780, -0.377327, -0.331330,
		0.497454, 0.733773, 0.462728,
		0.068521, -0.564979, 0.822255,
		66.097916, 57.983662, 58.126980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.700447, 58.435204, 57.971184>,  <66.049957, 58.379147, 57.551399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.700447, 58.435204, 57.971184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.558861, 58.067612, 58.040680>,  <66.473907, 57.847057, 58.082378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.558861, 58.067612, 58.040680>,  <66.700447, 58.435204, 57.971184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.558861, 58.067612, 58.040680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889349, -0.388213, -0.241555,
		0.289434, 0.069017, 0.954706,
		-0.353958, -0.918981, 0.173743,
		66.452675, 57.791916, 58.092804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.077972, 57.798019, 58.110840>,  <66.700447, 58.435204, 57.971184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.077972, 57.798019, 58.110840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.238243, 57.493320, 57.907196>,  <67.334404, 57.310501, 57.785011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.238243, 57.493320, 57.907196>,  <67.077972, 57.798019, 58.110840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.238243, 57.493320, 57.907196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806287, 0.557065, -0.198946,
		0.435155, -0.330776, 0.837393,
		0.400675, -0.761752, -0.509110,
		67.358444, 57.264793, 57.754463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.876648, 57.845322, 58.263000>,  <67.077972, 57.798019, 58.110840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.876648, 57.845322, 58.263000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.825882, 57.618530, 57.937439>,  <67.795418, 57.482456, 57.742104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.825882, 57.618530, 57.937439>,  <67.876648, 57.845322, 58.263000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.825882, 57.618530, 57.937439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799523, 0.427165, -0.422248,
		0.587072, -0.704323, 0.399093,
		-0.126921, -0.566974, -0.813899,
		67.787804, 57.448437, 57.693268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.489311, 57.472664, 58.049656>,  <67.876648, 57.845322, 58.263000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.489311, 57.472664, 58.049656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.294708, 57.520958, 57.703537>,  <68.177948, 57.549934, 57.495865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.294708, 57.520958, 57.703537>,  <68.489311, 57.472664, 58.049656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.294708, 57.520958, 57.703537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843890, 0.321358, -0.429625,
		0.226198, -0.939229, -0.258230,
		-0.486501, 0.120737, -0.865297,
		68.148758, 57.557178, 57.443947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.067703, 57.627434, 58.547585>,  <68.489311, 57.472664, 58.049656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.067703, 57.627434, 58.547585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.040817, 57.384354, 58.864113>,  <69.024681, 57.238506, 59.054028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.040817, 57.384354, 58.864113>,  <69.067703, 57.627434, 58.547585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.040817, 57.384354, 58.864113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929948, -0.325517, -0.170984,
		0.361494, 0.724389, 0.587011,
		-0.067223, -0.607700, 0.791317,
		69.020653, 57.202045, 59.101509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.500847, 57.868217, 59.186531>,  <69.067703, 57.627434, 58.547585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.500847, 57.868217, 59.186531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.452080, 57.481464, 59.096840>,  <69.422821, 57.249413, 59.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.452080, 57.481464, 59.096840>,  <69.500847, 57.868217, 59.186531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.452080, 57.481464, 59.096840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954145, -0.051947, -0.294803,
		0.273392, -0.249887, 0.928878,
		-0.121920, -0.966881, -0.224226,
		69.415504, 57.191399, 59.029572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.943352, 57.300274, 59.571289>,  <69.500847, 57.868217, 59.186531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.943352, 57.300274, 59.571289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.844276, 57.168892, 59.206703>,  <69.784828, 57.090065, 58.987949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.844276, 57.168892, 59.206703>,  <69.943352, 57.300274, 59.571289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.844276, 57.168892, 59.206703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967115, -0.027688, -0.252830,
		0.057806, -0.944115, 0.324509,
		-0.247685, -0.328452, -0.911466,
		69.769974, 57.070354, 58.933262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.246208, 56.633511, 59.422379>,  <69.943352, 57.300274, 59.571289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.246208, 56.633511, 59.422379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.211479, 56.866879, 59.099373>,  <70.190643, 57.006901, 58.905571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.211479, 56.866879, 59.099373>,  <70.246208, 56.633511, 59.422379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.211479, 56.866879, 59.099373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979699, -0.097021, -0.175432,
		-0.180697, -0.806352, -0.563157,
		-0.086821, 0.583424, -0.807514,
		70.185432, 57.041904, 58.857121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.961647, 56.958092, 59.333981>,  <70.246208, 56.633511, 59.422379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.961647, 56.958092, 59.333981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.756119, 57.019634, 58.996384>,  <70.632805, 57.056561, 58.793827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.756119, 57.019634, 58.996384>,  <70.961647, 56.958092, 59.333981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.756119, 57.019634, 58.996384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847625, -0.060759, -0.527105,
		-0.132381, -0.986223, -0.099197,
		-0.513816, 0.153860, -0.843991,
		70.601974, 57.065792, 58.743187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.271423, 56.210865, 59.448429>,  <70.961647, 56.958092, 59.333981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.271423, 56.210865, 59.448429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.433861, 56.312698, 59.799492>,  <71.531319, 56.373798, 60.010128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.433861, 56.312698, 59.799492>,  <71.271423, 56.210865, 59.448429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.433861, 56.312698, 59.799492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904303, 0.026408, -0.426074,
		-0.131650, 0.966689, -0.219500,
		0.406085, 0.254587, 0.877656,
		71.555687, 56.389076, 60.062790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.587753, 56.855122, 59.812508>,  <71.271423, 56.210865, 59.448429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.587753, 56.855122, 59.812508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.294670, 56.611557, 59.934082>,  <71.118820, 56.465420, 60.007027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.294670, 56.611557, 59.934082>,  <71.587753, 56.855122, 59.812508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.294670, 56.611557, 59.934082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129825, 0.563464, 0.815876,
		-0.668051, 0.558336, -0.491903,
		-0.732702, -0.608908, 0.303937,
		71.074860, 56.428883, 60.025265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.160233, 57.172775, 60.209251>,  <71.587753, 56.855122, 59.812508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.160233, 57.172775, 60.209251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.794731, 57.030426, 60.287628>,  <71.575432, 56.945015, 60.334656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.794731, 57.030426, 60.287628>,  <72.160233, 57.172775, 60.209251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.794731, 57.030426, 60.287628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246731, 0.102964, -0.963599,
		0.322747, -0.928843, -0.181890,
		-0.913761, -0.355877, 0.195943,
		71.520599, 56.923664, 60.346413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.418060, 56.909134, 60.856808>,  <72.160233, 57.172775, 60.209251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.418060, 56.909134, 60.856808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.817726, 56.923489, 60.864700>,  <73.057526, 56.932102, 60.869434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.817726, 56.923489, 60.864700>,  <72.418060, 56.909134, 60.856808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.817726, 56.923489, 60.864700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013161, 0.174786, -0.984518,
		-0.038783, 0.983952, 0.174167,
		0.999161, 0.035891, 0.019729,
		73.117477, 56.934258, 60.870621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.559357, 57.662701, 60.661308>,  <72.418060, 56.909134, 60.856808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.559357, 57.662701, 60.661308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.766045, 57.330421, 60.578407>,  <72.890060, 57.131054, 60.528667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.766045, 57.330421, 60.578407>,  <72.559357, 57.662701, 60.661308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.766045, 57.330421, 60.578407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005120, 0.239065, -0.970990,
		0.856141, 0.502788, 0.119276,
		0.516717, -0.830694, -0.207248,
		72.921059, 57.081215, 60.516232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.083061, 57.987759, 60.257797>,  <72.559357, 57.662701, 60.661308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.083061, 57.987759, 60.257797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.001297, 57.607681, 60.163696>,  <72.952240, 57.379635, 60.107235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.001297, 57.607681, 60.163696>,  <73.083061, 57.987759, 60.257797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.001297, 57.607681, 60.163696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141098, 0.209215, -0.967636,
		0.968661, -0.230996, 0.091303,
		-0.204419, -0.950195, -0.235251,
		72.939972, 57.322624, 60.093121>
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
