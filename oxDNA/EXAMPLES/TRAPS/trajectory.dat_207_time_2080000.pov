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
	<36.109978, 52.445820, 50.072418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143929, 52.814980, 50.222641>,  <36.164299, 53.036476, 50.312775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143929, 52.814980, 50.222641>,  <36.109978, 52.445820, 50.072418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143929, 52.814980, 50.222641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886954, 0.101753, -0.450510,
		-0.453992, 0.371345, -0.809935,
		0.084881, 0.922903, 0.375561,
		36.169392, 53.091850, 50.335308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667389, 52.636246, 49.619759>,  <36.109978, 52.445820, 50.072418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667389, 52.636246, 49.619759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728378, 52.895046, 49.918594>,  <36.764973, 53.050327, 50.097897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728378, 52.895046, 49.918594>,  <36.667389, 52.636246, 49.619759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728378, 52.895046, 49.918594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988307, -0.099332, -0.115681,
		-0.000636, 0.755988, -0.654585,
		0.152475, 0.647005, 0.747085,
		36.774120, 53.089149, 50.142719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066246, 53.234306, 49.476295>,  <36.667389, 52.636246, 49.619759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066246, 53.234306, 49.476295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108421, 53.283951, 49.870956>,  <37.133728, 53.313740, 50.107754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108421, 53.283951, 49.870956>,  <37.066246, 53.234306, 49.476295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108421, 53.283951, 49.870956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931745, 0.334352, -0.141635,
		-0.347468, 0.934240, -0.080388,
		0.105443, 0.124115, 0.986650,
		37.140053, 53.321186, 50.166950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192070, 53.837959, 49.778950>,  <37.066246, 53.234306, 49.476295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192070, 53.837959, 49.778950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354008, 53.547680, 50.001465>,  <37.451172, 53.373512, 50.134975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354008, 53.547680, 50.001465>,  <37.192070, 53.837959, 49.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354008, 53.547680, 50.001465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910831, 0.266465, -0.315250,
		0.080546, 0.634313, 0.768869,
		0.404844, -0.725702, 0.556290,
		37.475460, 53.329967, 50.168350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669518, 54.172020, 50.149090>,  <37.192070, 53.837959, 49.778950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669518, 54.172020, 50.149090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790504, 53.791138, 50.132011>,  <37.863098, 53.562611, 50.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790504, 53.791138, 50.132011>,  <37.669518, 54.172020, 50.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790504, 53.791138, 50.132011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885735, 0.297341, -0.356458,
		0.352116, 0.069997, 0.933335,
		0.302470, -0.952202, -0.042700,
		37.881245, 53.505478, 50.119202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234077, 54.445610, 50.002674>,  <37.669518, 54.172020, 50.149090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234077, 54.445610, 50.002674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347038, 54.828651, 50.025459>,  <38.414814, 55.058475, 50.039131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347038, 54.828651, 50.025459>,  <38.234077, 54.445610, 50.002674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347038, 54.828651, 50.025459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381070, -0.166482, 0.909434,
		0.880360, -0.235119, -0.411928,
		0.282403, 0.957603, 0.056967,
		38.431759, 55.115932, 50.042549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970230, 54.547562, 50.195744>,  <38.234077, 54.445610, 50.002674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970230, 54.547562, 50.195744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747749, 54.834038, 50.364365>,  <38.614262, 55.005924, 50.465538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747749, 54.834038, 50.364365>,  <38.970230, 54.547562, 50.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747749, 54.834038, 50.364365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293181, -0.305544, 0.905918,
		0.777612, 0.627469, -0.040028,
		-0.556205, 0.716188, 0.421557,
		38.580887, 55.048893, 50.490833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378487, 54.663681, 49.536366>,  <38.970230, 54.547562, 50.195744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378487, 54.663681, 49.536366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513729, 54.482151, 49.866150>,  <39.594875, 54.373234, 50.064018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513729, 54.482151, 49.866150>,  <39.378487, 54.663681, 49.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513729, 54.482151, 49.866150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941035, 0.151977, -0.302253,
		0.011871, 0.878035, 0.478448,
		0.338102, -0.453825, 0.824458,
		39.615158, 54.346004, 50.113487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970200, 54.994656, 49.811806>,  <39.378487, 54.663681, 49.536366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970200, 54.994656, 49.811806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959003, 54.595875, 49.840912>,  <39.952286, 54.356606, 49.858376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959003, 54.595875, 49.840912>,  <39.970200, 54.994656, 49.811806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959003, 54.595875, 49.840912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901605, -0.056617, -0.428839,
		0.431654, 0.053604, 0.900445,
		-0.027994, -0.996956, 0.072768,
		39.950603, 54.296787, 49.862743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532104, 54.656185, 50.251945>,  <39.970200, 54.994656, 49.811806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532104, 54.656185, 50.251945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403912, 54.440559, 49.940380>,  <40.326996, 54.311184, 49.753441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403912, 54.440559, 49.940380>,  <40.532104, 54.656185, 50.251945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403912, 54.440559, 49.940380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945796, -0.136472, -0.294695,
		0.052559, -0.831137, 0.553578,
		-0.320480, -0.539061, -0.778913,
		40.307766, 54.278843, 49.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981617, 54.063469, 50.160301>,  <40.532104, 54.656185, 50.251945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981617, 54.063469, 50.160301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809513, 54.125713, 49.804626>,  <40.706249, 54.163059, 49.591221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809513, 54.125713, 49.804626>,  <40.981617, 54.063469, 50.160301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809513, 54.125713, 49.804626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902060, 0.111290, -0.417015,
		0.034068, -0.981530, -0.188252,
		-0.430263, 0.155607, -0.889190,
		40.680435, 54.172394, 49.537868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334221, 53.580784, 49.608280>,  <40.981617, 54.063469, 50.160301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334221, 53.580784, 49.608280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163120, 53.913025, 49.465660>,  <41.060459, 54.112370, 49.380089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163120, 53.913025, 49.465660>,  <41.334221, 53.580784, 49.608280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163120, 53.913025, 49.465660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842565, 0.223576, -0.489997,
		-0.327276, -0.510015, -0.795471,
		-0.427754, 0.830601, -0.356550,
		41.034794, 54.162205, 49.358696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363205, 53.692726, 48.783070>,  <41.334221, 53.580784, 49.608280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363205, 53.692726, 48.783070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391521, 54.027824, 48.999649>,  <41.408512, 54.228882, 49.129597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391521, 54.027824, 48.999649>,  <41.363205, 53.692726, 48.783070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391521, 54.027824, 48.999649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889768, 0.192328, -0.413911,
		-0.450889, 0.511070, -0.731784,
		0.070795, 0.837745, 0.541452,
		41.412762, 54.279148, 49.162086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400993, 54.285038, 48.249374>,  <41.363205, 53.692726, 48.783070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400993, 54.285038, 48.249374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603764, 54.313133, 48.593021>,  <41.725426, 54.329990, 48.799210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603764, 54.313133, 48.593021>,  <41.400993, 54.285038, 48.249374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603764, 54.313133, 48.593021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850481, 0.121555, -0.511767,
		-0.140374, 0.990097, 0.001887,
		0.506929, 0.070234, 0.859122,
		41.755840, 54.334202, 48.850758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928349, 54.548222, 47.919632>,  <41.400993, 54.285038, 48.249374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928349, 54.548222, 47.919632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054695, 54.366383, 48.252754>,  <42.130505, 54.257278, 48.452629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054695, 54.366383, 48.252754>,  <41.928349, 54.548222, 47.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054695, 54.366383, 48.252754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948305, 0.122823, -0.292629,
		0.030739, 0.882190, 0.469890,
		0.315867, -0.454594, 0.832810,
		42.149456, 54.230003, 48.502598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428936, 55.046917, 48.277142>,  <41.928349, 54.548222, 47.919632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428936, 55.046917, 48.277142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502125, 54.661774, 48.356567>,  <42.546040, 54.430687, 48.404221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502125, 54.661774, 48.356567>,  <42.428936, 55.046917, 48.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502125, 54.661774, 48.356567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982721, 0.173389, -0.064775,
		0.027941, 0.206982, 0.977946,
		0.182972, -0.962858, 0.198561,
		42.557018, 54.372917, 48.416134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918671, 54.965282, 48.796986>,  <42.428936, 55.046917, 48.277142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918671, 54.965282, 48.796986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906822, 54.676582, 48.520378>,  <42.899715, 54.503361, 48.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906822, 54.676582, 48.520378>,  <42.918671, 54.965282, 48.796986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906822, 54.676582, 48.520378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955544, 0.182596, -0.231506,
		0.293359, -0.667635, 0.684255,
		-0.029619, -0.721749, -0.691521,
		42.897938, 54.460056, 48.312923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371227, 54.532181, 49.076672>,  <42.918671, 54.965282, 48.796986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371227, 54.532181, 49.076672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345104, 54.486675, 48.680130>,  <43.329430, 54.459370, 48.442204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345104, 54.486675, 48.680130>,  <43.371227, 54.532181, 49.076672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345104, 54.486675, 48.680130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984512, 0.154636, -0.082606,
		0.162698, -0.981399, 0.101907,
		-0.065311, -0.113769, -0.991358,
		43.325512, 54.452545, 48.382721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919048, 54.032730, 48.848373>,  <43.371227, 54.532181, 49.076672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919048, 54.032730, 48.848373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841904, 54.291588, 48.553345>,  <43.795616, 54.446903, 48.376328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841904, 54.291588, 48.553345>,  <43.919048, 54.032730, 48.848373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841904, 54.291588, 48.553345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981220, 0.129736, -0.142744,
		0.003314, -0.751249, -0.660010,
		-0.192864, 0.647142, -0.737571,
		43.784046, 54.485729, 48.332073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168633, 53.792519, 48.202095>,  <43.919048, 54.032730, 48.848373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168633, 53.792519, 48.202095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149670, 54.191948, 48.211914>,  <44.138294, 54.431606, 48.217804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149670, 54.191948, 48.211914>,  <44.168633, 53.792519, 48.202095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149670, 54.191948, 48.211914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998876, 0.047386, 0.001316,
		0.000151, 0.024578, -0.999698,
		-0.047404, 0.998574, 0.024544,
		44.135448, 54.491520, 48.219276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321705, 54.144085, 47.579536>,  <44.168633, 53.792519, 48.202095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321705, 54.144085, 47.579536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395714, 54.375790, 47.897083>,  <44.440121, 54.514812, 48.087612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395714, 54.375790, 47.897083>,  <44.321705, 54.144085, 47.579536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395714, 54.375790, 47.897083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955391, 0.083202, -0.283383,
		-0.230203, 0.810887, -0.538023,
		0.185027, 0.579258, 0.793867,
		44.451221, 54.549568, 48.135242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720104, 54.828598, 47.375687>,  <44.321705, 54.144085, 47.579536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720104, 54.828598, 47.375687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810219, 54.664993, 47.729401>,  <44.864288, 54.566830, 47.941628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810219, 54.664993, 47.729401>,  <44.720104, 54.828598, 47.375687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810219, 54.664993, 47.729401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965446, -0.028312, -0.259062,
		0.130995, 0.912090, 0.388500,
		0.225289, -0.409012, 0.884282,
		44.877804, 54.542290, 47.994686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246105, 55.137337, 47.588165>,  <44.720104, 54.828598, 47.375687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246105, 55.137337, 47.588165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.236790, 54.769245, 47.744446>,  <45.231201, 54.548389, 47.838215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.236790, 54.769245, 47.744446>,  <45.246105, 55.137337, 47.588165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.236790, 54.769245, 47.744446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950081, -0.141995, -0.277820,
		0.311134, 0.364725, 0.877594,
		-0.023286, -0.920225, 0.390697,
		45.229805, 54.493179, 47.861656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727715, 54.597984, 47.774582>,  <45.246105, 55.137337, 47.588165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727715, 54.597984, 47.774582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877201, 54.424046, 48.102303>,  <45.966892, 54.319683, 48.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877201, 54.424046, 48.102303>,  <45.727715, 54.597984, 47.774582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877201, 54.424046, 48.102303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726844, 0.686030, 0.032573,
		-0.576227, 0.583328, 0.572443,
		0.373713, -0.434846, 0.819297,
		45.989315, 54.293591, 48.348091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128815, 55.068691, 48.093197>,  <45.727715, 54.597984, 47.774582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128815, 55.068691, 48.093197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281830, 54.785358, 48.330490>,  <46.373638, 54.615356, 48.472866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281830, 54.785358, 48.330490>,  <46.128815, 55.068691, 48.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281830, 54.785358, 48.330490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862331, 0.504249, 0.046024,
		-0.331737, 0.493957, 0.803714,
		0.382538, -0.708336, 0.593233,
		46.396591, 54.572857, 48.508461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543274, 55.368622, 48.657642>,  <46.128815, 55.068691, 48.093197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543274, 55.368622, 48.657642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691265, 54.998291, 48.626774>,  <46.780060, 54.776093, 48.608253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691265, 54.998291, 48.626774>,  <46.543274, 55.368622, 48.657642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691265, 54.998291, 48.626774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918826, 0.352362, 0.177764,
		-0.137386, -0.136677, 0.981043,
		0.369978, -0.925830, -0.077173,
		46.802258, 54.720543, 48.603622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074806, 55.288219, 49.229069>,  <46.543274, 55.368622, 48.657642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074806, 55.288219, 49.229069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135258, 55.068890, 48.900070>,  <47.171528, 54.937290, 48.702671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135258, 55.068890, 48.900070>,  <47.074806, 55.288219, 49.229069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135258, 55.068890, 48.900070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982595, 0.174250, 0.064376,
		0.108022, -0.817911, 0.565113,
		0.151125, -0.548323, -0.822498,
		47.180595, 54.904392, 48.653320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.494453, 54.652100, 49.332573>,  <47.074806, 55.288219, 49.229069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.494453, 54.652100, 49.332573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534397, 54.796146, 48.961555>,  <47.558361, 54.882576, 48.738945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534397, 54.796146, 48.961555>,  <47.494453, 54.652100, 49.332573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.534397, 54.796146, 48.961555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990488, 0.052720, 0.127100,
		0.094672, -0.931415, -0.351431,
		0.099855, 0.360121, -0.927546,
		47.564354, 54.904182, 48.683292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.119633, 54.360172, 49.172329>,  <47.494453, 54.652100, 49.332573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.119633, 54.360172, 49.172329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203976, 54.727097, 49.307434>,  <48.254581, 54.947250, 49.388496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203976, 54.727097, 49.307434>,  <48.119633, 54.360172, 49.172329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.203976, 54.727097, 49.307434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664624, -0.387912, 0.638592,
		0.716807, 0.089830, -0.691461,
		0.210861, 0.917309, 0.337761,
		48.267235, 55.002289, 49.408764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.778358, 54.383720, 49.110092>,  <48.119633, 54.360172, 49.172329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.778358, 54.383720, 49.110092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.659817, 54.619541, 49.410652>,  <48.588692, 54.761036, 49.590988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.659817, 54.619541, 49.410652>,  <48.778358, 54.383720, 49.110092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.659817, 54.619541, 49.410652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595248, -0.501239, 0.628044,
		0.746896, 0.633392, -0.202386,
		-0.296354, 0.589554, 0.751399,
		48.570911, 54.796406, 49.636070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.374897, 54.781628, 49.484325>,  <48.778358, 54.383720, 49.110092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.374897, 54.781628, 49.484325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.080639, 54.732193, 49.750725>,  <48.904083, 54.702534, 49.910564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.080639, 54.732193, 49.750725>,  <49.374897, 54.781628, 49.484325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.080639, 54.732193, 49.750725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644655, -0.429606, 0.632344,
		0.207971, 0.894520, 0.395705,
		-0.735642, -0.123584, 0.666002,
		48.859947, 54.695118, 49.950527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.379944, 55.092499, 48.699516>,  <49.374897, 54.781628, 49.484325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.379944, 55.092499, 48.699516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.138172, 55.300430, 48.458042>,  <48.993107, 55.425190, 48.313156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.138172, 55.300430, 48.458042>,  <49.379944, 55.092499, 48.699516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.138172, 55.300430, 48.458042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744918, 0.637419, -0.196963,
		0.282416, -0.568749, -0.772506,
		-0.604433, 0.519828, -0.603688,
		48.956841, 55.456379, 48.276936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.458454, 55.736248, 49.060684>,  <49.379944, 55.092499, 48.699516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.458454, 55.736248, 49.060684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.300369, 55.642082, 49.415848>,  <49.205517, 55.585583, 49.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.300369, 55.642082, 49.415848>,  <49.458454, 55.736248, 49.060684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.300369, 55.642082, 49.415848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695509, -0.708113, 0.121833,
		0.600061, 0.665701, 0.443586,
		-0.395214, -0.235411, 0.887912,
		49.181805, 55.571461, 49.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.059784, 55.433788, 49.457268>,  <49.458454, 55.736248, 49.060684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.059784, 55.433788, 49.457268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.739407, 55.374550, 49.689323>,  <49.547180, 55.339005, 49.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.739407, 55.374550, 49.689323>,  <50.059784, 55.433788, 49.457268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.739407, 55.374550, 49.689323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495468, -0.707945, 0.503315,
		0.336167, 0.690566, 0.640399,
		-0.800939, -0.148100, 0.580141,
		49.499126, 55.330120, 49.863365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.177643, 55.687836, 50.186672>,  <50.059784, 55.433788, 49.457268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.177643, 55.687836, 50.186672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.948101, 55.374889, 50.089851>,  <49.810375, 55.187122, 50.031757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.948101, 55.374889, 50.089851>,  <50.177643, 55.687836, 50.186672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.948101, 55.374889, 50.089851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616318, -0.607201, 0.501457,
		-0.539298, 0.138583, 0.830634,
		-0.573855, -0.782369, -0.242051,
		49.775944, 55.140179, 50.017235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.116829, 55.237297, 50.783310>,  <50.177643, 55.687836, 50.186672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.116829, 55.237297, 50.783310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.060860, 55.007607, 50.460648>,  <50.027279, 54.869793, 50.267052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.060860, 55.007607, 50.460648>,  <50.116829, 55.237297, 50.783310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.060860, 55.007607, 50.460648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509710, -0.740207, 0.438507,
		-0.848891, -0.349799, 0.396264,
		-0.139928, -0.574224, -0.806652,
		50.018883, 54.835339, 50.218651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.902683, 54.533833, 50.975685>,  <50.116829, 55.237297, 50.783310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.902683, 54.533833, 50.975685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.083622, 54.463623, 50.625927>,  <50.192184, 54.421497, 50.416073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.083622, 54.463623, 50.625927>,  <49.902683, 54.533833, 50.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.083622, 54.463623, 50.625927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611775, -0.652331, 0.447432,
		-0.648927, -0.737332, -0.187710,
		0.452355, -0.175514, -0.874397,
		50.219326, 54.410969, 50.363609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.027275, 53.751034, 50.849113>,  <49.902683, 54.533833, 50.975685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.027275, 53.751034, 50.849113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.314869, 53.906307, 50.618504>,  <50.487427, 53.999470, 50.480137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.314869, 53.906307, 50.618504>,  <50.027275, 53.751034, 50.849113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.314869, 53.906307, 50.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650339, -0.668379, 0.361012,
		-0.245199, -0.634497, -0.733001,
		0.718983, 0.388179, -0.576524,
		50.530563, 54.022762, 50.445545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.232307, 53.747494, 50.860733>,  <50.027275, 53.751034, 50.849113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.232307, 53.747494, 50.860733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.991074, 54.027954, 51.012882>,  <48.846333, 54.196228, 51.104172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.991074, 54.027954, 51.012882>,  <49.232307, 53.747494, 50.860733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.991074, 54.027954, 51.012882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775709, 0.404351, 0.484536,
		0.185928, 0.587273, -0.787744,
		-0.603081, 0.701149, 0.380373,
		48.810150, 54.238300, 51.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.475323, 53.461685, 51.388885>,  <49.232307, 53.747494, 50.860733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.475323, 53.461685, 51.388885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.801540, 53.678513, 51.469933>,  <49.997269, 53.808609, 51.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.801540, 53.678513, 51.469933>,  <49.475323, 53.461685, 51.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.801540, 53.678513, 51.469933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240719, -0.636159, 0.733045,
		0.526255, -0.549057, -0.649301,
		0.815542, 0.542068, 0.202614,
		50.046204, 53.841133, 51.530716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.129452, 53.000893, 51.478363>,  <49.475323, 53.461685, 51.388885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.129452, 53.000893, 51.478363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.135586, 53.345570, 51.681244>,  <50.139267, 53.552376, 51.802975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.135586, 53.345570, 51.681244>,  <50.129452, 53.000893, 51.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.135586, 53.345570, 51.681244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280552, -0.490596, 0.824989,
		0.959716, 0.129645, -0.249272,
		0.015336, 0.861689, 0.507205,
		50.140186, 53.604076, 51.833405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.856197, 53.282032, 51.707489>,  <50.129452, 53.000893, 51.478363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.856197, 53.282032, 51.707489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.549625, 53.383533, 51.943520>,  <50.365685, 53.444435, 52.085140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.549625, 53.383533, 51.943520>,  <50.856197, 53.282032, 51.707489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.549625, 53.383533, 51.943520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512278, -0.312728, 0.799858,
		0.387503, 0.915319, 0.109690,
		-0.766428, 0.253756, 0.590081,
		50.319698, 53.459660, 52.120544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.040718, 53.854378, 52.191216>,  <50.856197, 53.282032, 51.707489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.040718, 53.854378, 52.191216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.758175, 53.617722, 52.346657>,  <50.588650, 53.475727, 52.439922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.758175, 53.617722, 52.346657>,  <51.040718, 53.854378, 52.191216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.758175, 53.617722, 52.346657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582408, -0.173743, 0.794112,
		-0.402314, 0.787255, 0.467303,
		-0.706360, -0.591644, 0.388605,
		50.546268, 53.440228, 52.463238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.599758, 53.729607, 52.779602>,  <51.040718, 53.854378, 52.191216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.599758, 53.729607, 52.779602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.528973, 53.661625, 52.391830>,  <51.486504, 53.620834, 52.159168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.528973, 53.661625, 52.391830>,  <51.599758, 53.729607, 52.779602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.528973, 53.661625, 52.391830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673794, 0.738890, -0.006545,
		0.717416, 0.652040, -0.245272,
		-0.176961, -0.169958, -0.969432,
		51.475883, 53.610638, 52.101002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.391277, 54.434387, 52.906235>,  <51.599758, 53.729607, 52.779602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.391277, 54.434387, 52.906235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.322010, 54.473770, 53.298218>,  <51.280449, 54.497398, 53.533409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.322010, 54.473770, 53.298218>,  <51.391277, 54.434387, 52.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.322010, 54.473770, 53.298218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862611, 0.495341, 0.102664,
		-0.475307, 0.863101, -0.170702,
		-0.173165, 0.098453, 0.979960,
		51.270061, 54.503307, 53.592205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.394127, 55.116241, 53.039204>,  <51.391277, 54.434387, 52.906235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.394127, 55.116241, 53.039204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.518932, 54.921535, 53.365570>,  <51.593815, 54.804714, 53.561390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.518932, 54.921535, 53.365570>,  <51.394127, 55.116241, 53.039204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.518932, 54.921535, 53.365570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771458, 0.631044, 0.081461,
		-0.554529, 0.604026, 0.572407,
		0.312009, -0.486761, 0.815913,
		51.612534, 54.775509, 53.610344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.670143, 55.644295, 53.318138>,  <51.394127, 55.116241, 53.039204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.670143, 55.644295, 53.318138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831558, 55.309063, 53.464989>,  <51.928406, 55.107925, 53.553101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831558, 55.309063, 53.464989>,  <51.670143, 55.644295, 53.318138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.831558, 55.309063, 53.464989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866327, 0.479060, 0.141347,
		-0.294336, 0.261013, 0.919369,
		0.403539, -0.838077, 0.367127,
		51.952621, 55.057640, 53.575127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.046501, 55.839596, 53.913471>,  <51.670143, 55.644295, 53.318138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.046501, 55.839596, 53.913471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.231087, 55.511135, 53.779152>,  <52.341839, 55.314056, 53.698563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.231087, 55.511135, 53.779152>,  <52.046501, 55.839596, 53.913471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.231087, 55.511135, 53.779152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883767, 0.458571, 0.093111,
		0.077528, -0.339732, 0.937321,
		0.461461, -0.821155, -0.335796,
		52.369526, 55.264790, 53.678413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.739376, 55.960701, 54.041092>,  <52.046501, 55.839596, 53.913471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.739376, 55.960701, 54.041092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.771278, 55.636238, 53.809345>,  <52.790421, 55.441559, 53.670300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.771278, 55.636238, 53.809345>,  <52.739376, 55.960701, 54.041092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.771278, 55.636238, 53.809345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981019, 0.166928, -0.098668,
		0.176748, -0.560497, 0.809076,
		0.079754, -0.811158, -0.579363,
		52.795204, 55.392891, 53.635536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.166725, 55.333984, 54.264473>,  <52.739376, 55.960701, 54.041092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.166725, 55.333984, 54.264473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.167526, 55.352154, 53.864887>,  <53.168007, 55.363056, 53.625137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.167526, 55.352154, 53.864887>,  <53.166725, 55.333984, 54.264473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.167526, 55.352154, 53.864887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942230, 0.334529, 0.017100,
		0.334960, -0.941290, -0.042133,
		0.002001, 0.045427, -0.998966,
		53.168125, 55.365784, 53.565197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.739990, 55.786453, 54.515137>,  <53.166725, 55.333984, 54.264473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.739990, 55.786453, 54.515137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.888203, 56.148148, 54.600048>,  <53.977131, 56.365166, 54.650997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.888203, 56.148148, 54.600048>,  <53.739990, 55.786453, 54.515137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.888203, 56.148148, 54.600048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885033, -0.274376, -0.376077,
		-0.281817, 0.327226, -0.901944,
		0.370534, 0.904235, 0.212282,
		53.999363, 56.419418, 54.663734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.994255, 56.175068, 53.907276>,  <53.739990, 55.786453, 54.515137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.994255, 56.175068, 53.907276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.193810, 56.263847, 54.242382>,  <54.313541, 56.317116, 54.443447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.193810, 56.263847, 54.242382>,  <53.994255, 56.175068, 53.907276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.193810, 56.263847, 54.242382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853440, -0.294046, -0.430322,
		0.150831, 0.929664, -0.336117,
		0.498889, 0.221950, 0.837764,
		54.343475, 56.330433, 54.493710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.408840, 56.726589, 53.747196>,  <53.994255, 56.175068, 53.907276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.408840, 56.726589, 53.747196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.560982, 56.521561, 54.055119>,  <54.652267, 56.398544, 54.239872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.560982, 56.521561, 54.055119>,  <54.408840, 56.726589, 53.747196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.560982, 56.521561, 54.055119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903922, 0.029992, -0.426644,
		0.195595, 0.858123, 0.474729,
		0.380351, -0.512567, 0.769810,
		54.675087, 56.367790, 54.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.973835, 56.676121, 53.346462>,  <54.408840, 56.726589, 53.747196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.973835, 56.676121, 53.346462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.043526, 56.491817, 53.694565>,  <55.085339, 56.381233, 53.903427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.043526, 56.491817, 53.694565>,  <54.973835, 56.676121, 53.346462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.043526, 56.491817, 53.694565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967781, -0.083028, -0.237710,
		0.181783, 0.883633, 0.431449,
		0.174226, -0.460760, 0.870256,
		55.095795, 56.353588, 53.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.606693, 56.971169, 53.567394>,  <54.973835, 56.676121, 53.346462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.606693, 56.971169, 53.567394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.551079, 56.599163, 53.703484>,  <55.517712, 56.375961, 53.785137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.551079, 56.599163, 53.703484>,  <55.606693, 56.971169, 53.567394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.551079, 56.599163, 53.703484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977511, -0.183896, -0.103220,
		0.158561, 0.318216, 0.934664,
		-0.139035, -0.930011, 0.340219,
		55.509369, 56.320160, 53.805550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.058891, 56.762650, 54.146896>,  <55.606693, 56.971169, 53.567394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.058891, 56.762650, 54.146896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.954491, 56.413006, 53.983040>,  <55.891850, 56.203220, 53.884724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.954491, 56.413006, 53.983040>,  <56.058891, 56.762650, 54.146896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.954491, 56.413006, 53.983040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949964, -0.308007, 0.051971,
		-0.171602, -0.375584, 0.910763,
		-0.261002, -0.874110, -0.409645,
		55.876190, 56.150772, 53.860146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.369873, 56.111950, 54.525200>,  <56.058891, 56.762650, 54.146896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.369873, 56.111950, 54.525200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.328690, 56.065655, 54.130028>,  <56.303978, 56.037876, 53.892925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.328690, 56.065655, 54.130028>,  <56.369873, 56.111950, 54.525200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.328690, 56.065655, 54.130028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988590, -0.121688, -0.088773,
		-0.109944, -0.985797, 0.126948,
		-0.102960, -0.115740, -0.987929,
		56.297802, 56.030933, 53.833649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.710594, 55.585609, 54.308945>,  <56.369873, 56.111950, 54.525200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.710594, 55.585609, 54.308945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.733757, 55.820648, 53.986115>,  <56.747654, 55.961674, 53.792416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.733757, 55.820648, 53.986115>,  <56.710594, 55.585609, 54.308945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.733757, 55.820648, 53.986115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986589, -0.157267, -0.043707,
		-0.152609, -0.793721, -0.588827,
		0.057912, 0.587600, -0.807077,
		56.751129, 55.996929, 53.743992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.491444, 55.303146, 54.368481>,  <56.710594, 55.585609, 54.308945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.491444, 55.303146, 54.368481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.762688, 55.087013, 54.169201>,  <57.925434, 54.957333, 54.049633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.762688, 55.087013, 54.169201>,  <57.491444, 55.303146, 54.368481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.762688, 55.087013, 54.169201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731104, -0.565290, -0.382013,
		-0.075214, 0.623285, -0.778369,
		0.678108, -0.540336, -0.498204,
		57.966122, 54.924911, 54.019741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.911869, 55.988560, 54.111309>,  <57.491444, 55.303146, 54.368481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.911869, 55.988560, 54.111309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.037552, 55.613632, 54.171593>,  <58.112961, 55.388676, 54.207764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.037552, 55.613632, 54.171593>,  <57.911869, 55.988560, 54.111309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.037552, 55.613632, 54.171593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362792, -0.028152, -0.931445,
		0.877301, 0.347340, 0.331206,
		0.314204, -0.937317, 0.150710,
		58.131813, 55.332436, 54.216805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.515995, 55.957706, 53.738312>,  <57.911869, 55.988560, 54.111309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.515995, 55.957706, 53.738312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.374237, 55.587421, 53.791157>,  <58.289185, 55.365250, 53.822865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.374237, 55.587421, 53.791157>,  <58.515995, 55.957706, 53.738312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.374237, 55.587421, 53.791157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139462, -0.192030, -0.971429,
		0.924638, -0.325842, 0.197157,
		-0.354393, -0.925717, 0.132116,
		58.267918, 55.309708, 53.830791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.206707, 55.633179, 53.887947>,  <58.515995, 55.957706, 53.738312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.206707, 55.633179, 53.887947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.143318, 55.335384, 53.628525>,  <59.105286, 55.156708, 53.472874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.143318, 55.335384, 53.628525>,  <59.206707, 55.633179, 53.887947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.143318, 55.335384, 53.628525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816893, 0.467808, -0.337404,
		0.554592, 0.476330, -0.682303,
		-0.158471, -0.744490, -0.648554,
		59.095776, 55.112038, 53.433960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.092220, 55.931309, 53.200661>,  <59.206707, 55.633179, 53.887947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.092220, 55.931309, 53.200661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.899986, 55.580566, 53.205688>,  <58.784645, 55.370121, 53.208706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.899986, 55.580566, 53.205688>,  <59.092220, 55.931309, 53.200661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.899986, 55.580566, 53.205688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817234, 0.442615, -0.369081,
		0.318069, -0.187645, -0.929313,
		-0.480583, -0.876859, 0.012567,
		58.755810, 55.317509, 53.209457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.738567, 56.198959, 53.537502>,  <59.092220, 55.931309, 53.200661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.738567, 56.198959, 53.537502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.505760, 56.520775, 53.584785>,  <59.366074, 56.713863, 53.613155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.505760, 56.520775, 53.584785>,  <59.738567, 56.198959, 53.537502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.505760, 56.520775, 53.584785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601623, 0.523830, -0.603035,
		-0.547083, -0.279865, -0.788908,
		-0.582022, 0.804536, 0.118205,
		59.331154, 56.762135, 53.620247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.258389, 55.503490, 53.485241>,  <59.738567, 56.198959, 53.537502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.258389, 55.503490, 53.485241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.268837, 55.900196, 53.535400>,  <60.275105, 56.138218, 53.565498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.268837, 55.900196, 53.535400>,  <60.258389, 55.503490, 53.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.268837, 55.900196, 53.535400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999370, -0.028924, 0.020579,
		0.024037, 0.124784, -0.991893,
		0.026122, 0.991762, 0.125401,
		60.276672, 56.197723, 53.573021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.647026, 55.876621, 52.931843>,  <60.258389, 55.503490, 53.485241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.647026, 55.876621, 52.931843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.646637, 56.104301, 53.260719>,  <60.646404, 56.240910, 53.458046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.646637, 56.104301, 53.260719>,  <60.647026, 55.876621, 52.931843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.646637, 56.104301, 53.260719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993493, 0.094185, -0.064033,
		-0.113886, 0.816784, -0.565591,
		-0.000969, 0.569204, 0.822196,
		60.646347, 56.275063, 53.507378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.981079, 56.445026, 52.691299>,  <60.647026, 55.876621, 52.931843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.981079, 56.445026, 52.691299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.011162, 56.349724, 53.078613>,  <61.029209, 56.292542, 53.311001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.011162, 56.349724, 53.078613>,  <60.981079, 56.445026, 52.691299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.011162, 56.349724, 53.078613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994985, -0.046289, -0.088668,
		0.065947, 0.970100, 0.233577,
		0.075205, -0.238253, 0.968287,
		61.033722, 56.278248, 53.369099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.355160, 57.005192, 53.131226>,  <60.981079, 56.445026, 52.691299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.355160, 57.005192, 53.131226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.409798, 56.620373, 53.225716>,  <61.442581, 56.389481, 53.282410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.409798, 56.620373, 53.225716>,  <61.355160, 57.005192, 53.131226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.409798, 56.620373, 53.225716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989406, 0.144327, 0.015657,
		-0.049156, 0.231580, 0.971573,
		0.136598, -0.962050, 0.236221,
		61.450775, 56.331757, 53.296581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.656979, 56.666836, 53.861725>,  <61.355160, 57.005192, 53.131226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.656979, 56.666836, 53.861725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.774628, 56.414051, 53.574917>,  <61.845215, 56.262383, 53.402832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.774628, 56.414051, 53.574917>,  <61.656979, 56.666836, 53.861725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.774628, 56.414051, 53.574917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955749, 0.199246, 0.216435,
		0.006086, -0.748952, 0.662596,
		0.294119, -0.631959, -0.717023,
		61.862862, 56.224464, 53.359810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.153934, 56.880409, 54.417118>,  <61.656979, 56.666836, 53.861725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.153934, 56.880409, 54.417118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.447014, 56.859039, 54.688499>,  <62.622860, 56.846218, 54.851330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.447014, 56.859039, 54.688499>,  <62.153934, 56.880409, 54.417118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.447014, 56.859039, 54.688499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367147, 0.870426, -0.327966,
		-0.573023, 0.489392, 0.657374,
		0.732699, -0.053421, 0.678453,
		62.666824, 56.843014, 54.892036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.159763, 57.527164, 54.880104>,  <62.153934, 56.880409, 54.417118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.159763, 57.527164, 54.880104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.505836, 57.331863, 54.834358>,  <62.713478, 57.214684, 54.806911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.505836, 57.331863, 54.834358>,  <62.159763, 57.527164, 54.880104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.505836, 57.331863, 54.834358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455859, 0.860795, -0.226330,
		0.208948, 0.143682, 0.967314,
		0.865178, -0.488250, -0.114363,
		62.765388, 57.185387, 54.800049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.075375, 57.381718, 55.610374>,  <62.159763, 57.527164, 54.880104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.075375, 57.381718, 55.610374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.463158, 57.295361, 55.656937>,  <62.695827, 57.243546, 55.684875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.463158, 57.295361, 55.656937>,  <62.075375, 57.381718, 55.610374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.463158, 57.295361, 55.656937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225912, 0.601111, -0.766569,
		0.095521, 0.769452, 0.631522,
		0.969453, -0.215891, 0.116410,
		62.753994, 57.230595, 55.691860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.384182, 57.986557, 55.471851>,  <62.075375, 57.381718, 55.610374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.384182, 57.986557, 55.471851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.691933, 57.734741, 55.428505>,  <62.876583, 57.583652, 55.402496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.691933, 57.734741, 55.428505>,  <62.384182, 57.986557, 55.471851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.691933, 57.734741, 55.428505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300104, 0.505965, -0.808664,
		0.563916, 0.589644, 0.578203,
		0.769374, -0.629540, -0.108367,
		62.922745, 57.545879, 55.395996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.337807, 57.929260, 56.262794>,  <62.384182, 57.986557, 55.471851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.337807, 57.929260, 56.262794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.512978, 57.576103, 56.330589>,  <62.618080, 57.364208, 56.371265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.512978, 57.576103, 56.330589>,  <62.337807, 57.929260, 56.262794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.512978, 57.576103, 56.330589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821938, 0.469572, 0.322365,
		-0.364199, -0.001865, 0.931319,
		0.437923, -0.882892, 0.169485,
		62.644356, 57.311237, 56.381435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.792370, 57.917004, 56.968700>,  <62.337807, 57.929260, 56.262794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.792370, 57.917004, 56.968700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.916679, 57.645618, 56.702438>,  <62.991264, 57.482788, 56.542679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.916679, 57.645618, 56.702438>,  <62.792370, 57.917004, 56.968700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.916679, 57.645618, 56.702438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939830, 0.323910, 0.108633,
		0.141909, -0.659366, 0.738308,
		0.310774, -0.678468, -0.665658,
		63.009911, 57.442078, 56.502739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.278557, 57.422504, 57.344364>,  <62.792370, 57.917004, 56.968700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.278557, 57.422504, 57.344364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.349274, 57.475109, 56.954193>,  <63.391705, 57.506672, 56.720093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.349274, 57.475109, 56.954193>,  <63.278557, 57.422504, 57.344364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.349274, 57.475109, 56.954193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959498, 0.197821, 0.200574,
		0.219337, -0.971376, -0.091211,
		0.176789, 0.131510, -0.975424,
		63.402309, 57.514561, 56.661568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.910896, 57.070374, 57.059742>,  <63.278557, 57.422504, 57.344364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.910896, 57.070374, 57.059742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.850845, 57.429726, 56.894638>,  <63.814816, 57.645336, 56.795574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.850845, 57.429726, 56.894638>,  <63.910896, 57.070374, 57.059742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.850845, 57.429726, 56.894638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914911, 0.284467, 0.286384,
		0.374699, -0.334644, -0.864647,
		-0.150127, 0.898383, -0.412759,
		63.805805, 57.699242, 56.770809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.458847, 57.241730, 56.675053>,  <63.910896, 57.070374, 57.059742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.458847, 57.241730, 56.675053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.304962, 57.603035, 56.751068>,  <64.212631, 57.819817, 56.796677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.304962, 57.603035, 56.751068>,  <64.458847, 57.241730, 56.675053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.304962, 57.603035, 56.751068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910309, 0.337201, 0.240067,
		0.152764, 0.265346, -0.951974,
		-0.384707, 0.903265, 0.190035,
		64.189552, 57.874016, 56.808079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.849220, 57.875446, 56.342827>,  <64.458847, 57.241730, 56.675053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.849220, 57.875446, 56.342827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.697495, 57.978447, 56.698311>,  <64.606461, 58.040249, 56.911602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.697495, 57.978447, 56.698311>,  <64.849220, 57.875446, 56.342827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.697495, 57.978447, 56.698311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885830, 0.378493, 0.268418,
		-0.267254, 0.889064, -0.371672,
		-0.379316, 0.257502, 0.888714,
		64.583702, 58.055698, 56.964924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.255638, 58.472187, 56.501587>,  <64.849220, 57.875446, 56.342827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.255638, 58.472187, 56.501587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.112755, 58.283085, 56.823807>,  <65.027023, 58.169624, 57.017139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.112755, 58.283085, 56.823807>,  <65.255638, 58.472187, 56.501587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.112755, 58.283085, 56.823807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903703, 0.043048, 0.425991,
		-0.236066, 0.880143, 0.411851,
		-0.357204, -0.472753, 0.805550,
		65.005592, 58.141258, 57.065472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.528328, 58.910664, 57.015831>,  <65.255638, 58.472187, 56.501587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.528328, 58.910664, 57.015831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.467850, 58.529243, 57.120041>,  <65.431564, 58.300392, 57.182568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.467850, 58.529243, 57.120041>,  <65.528328, 58.910664, 57.015831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.467850, 58.529243, 57.120041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895065, -0.020218, 0.445478,
		-0.419520, 0.300541, 0.856550,
		-0.151202, -0.953555, 0.260522,
		65.422485, 58.243176, 57.198196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.498917, 58.786812, 57.829762>,  <65.528328, 58.910664, 57.015831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.498917, 58.786812, 57.829762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.627251, 58.476128, 57.612953>,  <65.704254, 58.289715, 57.482868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.627251, 58.476128, 57.612953>,  <65.498917, 58.786812, 57.829762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.627251, 58.476128, 57.612953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913672, 0.103036, 0.393177,
		-0.249538, -0.621370, 0.742718,
		0.320835, -0.776713, -0.542017,
		65.723503, 58.243114, 57.450348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.029396, 58.363571, 58.236473>,  <65.498917, 58.786812, 57.829762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.029396, 58.363571, 58.236473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.100594, 58.319901, 57.845291>,  <66.143311, 58.293697, 57.610580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.100594, 58.319901, 57.845291>,  <66.029396, 58.363571, 58.236473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.100594, 58.319901, 57.845291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982219, 0.079986, 0.169846,
		0.059680, -0.990799, 0.121473,
		0.177999, -0.109176, -0.977956,
		66.153992, 58.287148, 57.551903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.452713, 57.790565, 58.004757>,  <66.029396, 58.363571, 58.236473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.452713, 57.790565, 58.004757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.503983, 58.081001, 57.734535>,  <66.534744, 58.255260, 57.572403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.503983, 58.081001, 57.734535>,  <66.452713, 57.790565, 58.004757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.503983, 58.081001, 57.734535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991479, -0.077878, 0.104423,
		0.023209, -0.683179, -0.729882,
		0.128181, 0.726086, -0.675550,
		66.542435, 58.298828, 57.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.002457, 57.471764, 57.505169>,  <66.452713, 57.790565, 58.004757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.002457, 57.471764, 57.505169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.986069, 57.871407, 57.500862>,  <66.976234, 58.111191, 57.498276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.986069, 57.871407, 57.500862>,  <67.002457, 57.471764, 57.505169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.986069, 57.871407, 57.500862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996973, 0.041581, 0.065701,
		0.066090, -0.008047, -0.997781,
		-0.040960, 0.999103, -0.010771,
		66.973778, 58.171139, 57.497631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.368683, 57.969517, 57.951797>,  <67.002457, 57.471764, 57.505169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.368683, 57.969517, 57.951797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.728615, 58.118687, 57.861244>,  <67.944572, 58.208187, 57.806911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.728615, 58.118687, 57.861244>,  <67.368683, 57.969517, 57.951797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.728615, 58.118687, 57.861244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083323, 0.362454, 0.928270,
		0.428230, -0.854139, 0.295070,
		0.899820, 0.372927, -0.226383,
		67.998558, 58.230564, 57.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.830795, 57.776512, 58.426571>,  <67.368683, 57.969517, 57.951797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.830795, 57.776512, 58.426571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.975136, 58.105793, 58.251244>,  <68.061737, 58.303364, 58.146049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.975136, 58.105793, 58.251244>,  <67.830795, 57.776512, 58.426571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.975136, 58.105793, 58.251244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170981, 0.403620, 0.898808,
		0.916815, -0.399282, 0.004895,
		0.360853, 0.823204, -0.438315,
		68.083389, 58.352753, 58.119751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.525566, 57.799423, 58.497288>,  <67.830795, 57.776512, 58.426571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.525566, 57.799423, 58.497288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.380386, 58.170181, 58.459068>,  <68.293282, 58.392635, 58.436134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.380386, 58.170181, 58.459068>,  <68.525566, 57.799423, 58.497288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.380386, 58.170181, 58.459068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189595, 0.173859, 0.966347,
		0.912318, 0.332616, -0.238837,
		-0.362946, 0.926898, -0.095552,
		68.271500, 58.448250, 58.430401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.046730, 58.288296, 58.775284>,  <68.525566, 57.799423, 58.497288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.046730, 58.288296, 58.775284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680672, 58.448242, 58.795692>,  <68.461037, 58.544209, 58.807938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680672, 58.448242, 58.795692>,  <69.046730, 58.288296, 58.775284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.680672, 58.448242, 58.795692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135952, 0.187009, 0.972905,
		0.379489, 0.897294, -0.225504,
		-0.915153, 0.399865, 0.051021,
		68.406128, 58.568203, 58.810997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.057915, 58.974155, 58.874485>,  <69.046730, 58.288296, 58.775284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.057915, 58.974155, 58.874485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.716164, 58.834351, 59.028313>,  <68.511116, 58.750469, 59.120609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.716164, 58.834351, 59.028313>,  <69.057915, 58.974155, 58.874485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.716164, 58.834351, 59.028313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343036, 0.176565, 0.922579,
		-0.390354, 0.920144, -0.030956,
		-0.854371, -0.349513, 0.384565,
		68.459854, 58.729496, 59.143681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.295212, 59.240929, 59.534885>,  <69.057915, 58.974155, 58.874485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.295212, 59.240929, 59.534885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658836, 59.397552, 59.591858>,  <69.877014, 59.491528, 59.626041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658836, 59.397552, 59.591858>,  <69.295212, 59.240929, 59.534885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.658836, 59.397552, 59.591858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368464, 0.595908, 0.713531,
		0.194514, -0.701126, 0.685994,
		0.909065, 0.391556, 0.142428,
		69.931557, 59.515018, 59.634586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.443108, 59.190365, 60.287312>,  <69.295212, 59.240929, 59.534885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.443108, 59.190365, 60.287312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.594276, 59.500004, 60.084160>,  <69.684982, 59.685787, 59.962269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.594276, 59.500004, 60.084160>,  <69.443108, 59.190365, 60.287312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.594276, 59.500004, 60.084160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284739, 0.619155, 0.731828,
		0.880962, -0.131966, 0.454412,
		0.377928, 0.774101, -0.507876,
		69.707657, 59.732235, 59.931797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.784012, 58.575977, 60.176262>,  <69.443108, 59.190365, 60.287312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.784012, 58.575977, 60.176262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.146065, 58.718468, 60.083450>,  <70.363297, 58.803963, 60.027763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.146065, 58.718468, 60.083450>,  <69.784012, 58.575977, 60.176262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.146065, 58.718468, 60.083450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361962, -0.932001, -0.018889,
		-0.222977, -0.066888, -0.972526,
		0.905132, 0.356230, -0.232025,
		70.417603, 58.825336, 60.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.080605, 58.179649, 59.655170>,  <69.784012, 58.575977, 60.176262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.080605, 58.179649, 59.655170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.389725, 58.336777, 59.854561>,  <70.575195, 58.431053, 59.974194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.389725, 58.336777, 59.854561>,  <70.080605, 58.179649, 59.655170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.389725, 58.336777, 59.854561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420287, -0.905284, 0.061811,
		0.475538, 0.161733, -0.864700,
		0.772802, 0.392815, 0.498471,
		70.621567, 58.454620, 60.004101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.675888, 58.000931, 59.279758>,  <70.080605, 58.179649, 59.655170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.675888, 58.000931, 59.279758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.737694, 58.060852, 59.670387>,  <70.774780, 58.096806, 59.904762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.737694, 58.060852, 59.670387>,  <70.675888, 58.000931, 59.279758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.737694, 58.060852, 59.670387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423821, -0.902924, 0.071444,
		0.892469, 0.402851, -0.203003,
		0.154515, 0.149799, 0.976568,
		70.784050, 58.105793, 59.963356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.429138, 57.882149, 59.450130>,  <70.675888, 58.000931, 59.279758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.429138, 57.882149, 59.450130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.174522, 57.778297, 59.740623>,  <71.021751, 57.715988, 59.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.174522, 57.778297, 59.740623>,  <71.429138, 57.882149, 59.450130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.174522, 57.778297, 59.740623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388589, -0.921343, 0.011223,
		0.666194, 0.289349, 0.687359,
		-0.636541, -0.259624, 0.726231,
		70.983559, 57.700409, 59.958492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.776207, 57.675934, 60.050499>,  <71.429138, 57.882149, 59.450130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.776207, 57.675934, 60.050499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.416573, 57.502312, 60.027664>,  <71.200790, 57.398140, 60.013966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.416573, 57.502312, 60.027664>,  <71.776207, 57.675934, 60.050499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.416573, 57.502312, 60.027664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434940, -0.900453, -0.003504,
		-0.049881, -0.027979, 0.998363,
		-0.899077, -0.434053, -0.057084,
		71.146851, 57.372097, 60.010540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.192764, 58.322502, 59.930984>,  <71.776207, 57.675934, 60.050499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.192764, 58.322502, 59.930984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.506393, 58.454514, 59.720718>,  <72.694572, 58.533718, 59.594559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.506393, 58.454514, 59.720718>,  <72.192764, 58.322502, 59.930984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.506393, 58.454514, 59.720718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619177, -0.474742, 0.625491,
		-0.043127, -0.815906, -0.576574,
		0.784066, 0.330026, -0.525665,
		72.741615, 58.553520, 59.563019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.562973, 57.748295, 59.784885>,  <72.192764, 58.322502, 59.930984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.562973, 57.748295, 59.784885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.755096, 58.091587, 59.857269>,  <72.870369, 58.297562, 59.900700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.755096, 58.091587, 59.857269>,  <72.562973, 57.748295, 59.784885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.755096, 58.091587, 59.857269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551850, -0.456057, 0.698193,
		0.681741, -0.235480, -0.692661,
		0.480304, 0.858231, 0.180963,
		72.899185, 58.349056, 59.911560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.359222, 57.676804, 59.809090>,  <72.562973, 57.748295, 59.784885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.359222, 57.676804, 59.809090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.251434, 57.974846, 60.053123>,  <73.186760, 58.153671, 60.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.251434, 57.974846, 60.053123>,  <73.359222, 57.676804, 59.809090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.251434, 57.974846, 60.053123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784318, -0.197786, 0.587984,
		0.558777, 0.636943, -0.531104,
		-0.269468, 0.745107, 0.610085,
		73.170593, 58.198380, 60.236149>
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
