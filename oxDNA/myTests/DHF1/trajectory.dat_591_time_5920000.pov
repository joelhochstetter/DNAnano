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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.508497, 1.130469, 3.669209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.494816, 1.153757, 3.270122>,  <1.486607, 1.167731, 3.030669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.494816, 1.153757, 3.270122>,  <1.508497, 1.130469, 3.669209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.494816, 1.153757, 3.270122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150937, 0.986550, 0.062744,
		0.987952, 0.152738, -0.024953,
		-0.034201, 0.058222, -0.997718,
		1.484555, 1.171224, 2.970806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.002862, 1.668761, 3.465216>,  <1.508497, 1.130469, 3.669209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.002862, 1.668761, 3.465216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.714317, 1.612963, 3.193871>,  <1.541190, 1.579484, 3.031063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.714317, 1.612963, 3.193871>,  <2.002862, 1.668761, 3.465216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.714317, 1.612963, 3.193871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124205, 0.989682, -0.071435,
		0.681328, 0.032725, -0.731246,
		-0.721363, -0.139496, -0.678363,
		1.497908, 1.571115, 2.990362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.135838, 2.037373, 2.814600>,  <2.002862, 1.668761, 3.465216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.135838, 2.037373, 2.814600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.748859, 1.992067, 2.905127>,  <1.516672, 1.964883, 2.959442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.748859, 1.992067, 2.905127>,  <2.135838, 2.037373, 2.814600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.748859, 1.992067, 2.905127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100352, 0.992639, 0.067809,
		-0.232330, 0.042890, -0.971691,
		-0.967446, -0.113265, 0.226315,
		1.458626, 1.958087, 2.973021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.047086, 2.623786, 2.515607>,  <2.135838, 2.037373, 2.814600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.047086, 2.623786, 2.515607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.764477, 2.495980, 2.768188>,  <1.594911, 2.419295, 2.919736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.764477, 2.495980, 2.768188>,  <2.047086, 2.623786, 2.515607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764477, 2.495980, 2.768188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206094, 0.946496, 0.248334,
		-0.677014, 0.045316, -0.734573,
		-0.706524, -0.319517, 0.631452,
		1.552519, 2.400124, 2.957623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.379489, 2.883547, 2.322249>,  <2.047086, 2.623786, 2.515607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.379489, 2.883547, 2.322249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380749, 2.813958, 2.716147>,  <1.381505, 2.772205, 2.952487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.380749, 2.813958, 2.716147>,  <1.379489, 2.883547, 2.322249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.380749, 2.813958, 2.716147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088390, 0.980848, 0.173565,
		-0.996081, -0.087589, -0.012287,
		0.003150, -0.173971, 0.984746,
		1.381694, 2.761767, 3.011571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.766102, 3.085004, 2.540865>,  <1.379489, 2.883547, 2.322249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.766102, 3.085004, 2.540865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978657, 3.081999, 2.879704>,  <1.106189, 3.080196, 3.083007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978657, 3.081999, 2.879704>,  <0.766102, 3.085004, 2.540865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978657, 3.081999, 2.879704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257574, 0.951184, 0.170012,
		-0.807022, -0.308532, 0.503511,
		0.531386, -0.007513, 0.847097,
		1.138072, 3.079746, 3.133832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.311136, 3.280057, 3.026946>,  <0.766102, 3.085004, 2.540865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.311136, 3.280057, 3.026946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649586, 3.349401, 3.228547>,  <0.852656, 3.391007, 3.349508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649586, 3.349401, 3.228547>,  <0.311136, 3.280057, 3.026946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.649586, 3.349401, 3.228547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362759, 0.880114, 0.306276,
		-0.390485, -0.441979, 0.807574,
		0.846125, 0.173359, 0.504004,
		0.903423, 3.401408, 3.379748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.238540, 3.440504, 3.839631>,  <0.311136, 3.280057, 3.026946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.238540, 3.440504, 3.839631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.539402, 3.613416, 3.640675>,  <0.719919, 3.717163, 3.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.539402, 3.613416, 3.640675>,  <0.238540, 3.440504, 3.839631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.539402, 3.613416, 3.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395263, 0.899877, 0.184359,
		0.527286, 0.057933, 0.847711,
		0.752155, 0.432279, -0.497391,
		0.765049, 3.743099, 3.491457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.206262, 5.012267, 3.493196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559952, 5.025940, 3.679520>,  <0.772166, 5.034144, 3.791314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559952, 5.025940, 3.679520>,  <0.206262, 5.012267, 3.493196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.559952, 5.025940, 3.679520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201345, -0.927788, -0.314119,
		0.421434, 0.371540, -0.827255,
		0.884225, 0.034183, 0.465809,
		0.825219, 5.036195, 3.819263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.527789, 4.581723, 3.069620>,  <0.206262, 5.012267, 3.493196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.527789, 4.581723, 3.069620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.737541, 4.603541, 3.409513>,  <0.863393, 4.616632, 3.613450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.737541, 4.603541, 3.409513>,  <0.527789, 4.581723, 3.069620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.737541, 4.603541, 3.409513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331516, -0.932281, -0.144738,
		0.784297, 0.357598, -0.506953,
		0.524381, 0.054545, 0.849735,
		0.894856, 4.619905, 3.664434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343337, 4.378419, 3.009490>,  <0.527789, 4.581723, 3.069620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343337, 4.378419, 3.009490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.201912, 4.323978, 3.379673>,  <1.117057, 4.291314, 3.601783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.201912, 4.323978, 3.379673>,  <1.343337, 4.378419, 3.009490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.201912, 4.323978, 3.379673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364979, -0.931013, 0.002519,
		0.861269, 0.338663, 0.378845,
		-0.353562, -0.136101, 0.925457,
		1.095843, 4.283148, 3.657310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886956, 4.101533, 3.495845>,  <1.343337, 4.378419, 3.009490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886956, 4.101533, 3.495845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.514801, 3.983128, 3.582335>,  <1.291508, 3.912084, 3.634228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.514801, 3.983128, 3.582335>,  <1.886956, 4.101533, 3.495845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.514801, 3.983128, 3.582335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300157, -0.953784, -0.014204,
		0.210435, 0.051686, 0.976241,
		-0.930389, -0.296015, 0.216223,
		1.235684, 3.894323, 3.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.995783, 3.642271, 4.010738>,  <1.886956, 4.101533, 3.495845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.995783, 3.642271, 4.010738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.654816, 3.555222, 3.820570>,  <1.450235, 3.502992, 3.706469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.654816, 3.555222, 3.820570>,  <1.995783, 3.642271, 4.010738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.654816, 3.555222, 3.820570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273286, -0.960618, -0.050273,
		-0.445756, -0.172779, 0.878322,
		-0.852418, -0.217623, -0.475419,
		1.399090, 3.489934, 3.677944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.761555, 2.982254, 4.289995>,  <1.995783, 3.642271, 4.010738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.761555, 2.982254, 4.289995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.573547, 3.014206, 3.938381>,  <1.460743, 3.033377, 3.727413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.573547, 3.014206, 3.938381>,  <1.761555, 2.982254, 4.289995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.573547, 3.014206, 3.938381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098725, -0.984890, -0.142288,
		-0.877117, -0.153661, 0.455032,
		-0.470020, 0.079881, -0.879034,
		1.432541, 3.038170, 3.674671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.308889, 2.451245, 4.252954>,  <1.761555, 2.982254, 4.289995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.308889, 2.451245, 4.252954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303360, 2.551468, 3.865753>,  <1.300043, 2.611602, 3.633432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303360, 2.551468, 3.865753>,  <1.308889, 2.451245, 4.252954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303360, 2.551468, 3.865753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012556, -0.967976, -0.250730,
		-0.999826, -0.015620, 0.010234,
		-0.013823, 0.250558, -0.968003,
		1.299213, 2.626635, 3.575352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.782284, 2.073594, 3.989422>,  <1.308889, 2.451245, 4.252954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.782284, 2.073594, 3.989422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.050041, 2.167467, 3.707476>,  <1.210696, 2.223791, 3.538308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.050041, 2.167467, 3.707476>,  <0.782284, 2.073594, 3.989422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.050041, 2.167467, 3.707476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329120, -0.944286, -0.001842,
		-0.666028, -0.230753, -0.709338,
		0.669393, 0.234684, -0.704866,
		1.250859, 2.237872, 3.496016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
