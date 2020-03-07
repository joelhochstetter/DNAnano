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
	<36.555614, 53.577026, 49.920528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580570, 53.178257, 49.901577>,  <36.595543, 52.938995, 49.890205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580570, 53.178257, 49.901577>,  <36.555614, 53.577026, 49.920528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580570, 53.178257, 49.901577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828731, 0.078196, -0.554158,
		0.556160, -0.004693, 0.831062,
		0.062385, -0.996927, -0.047379,
		36.599285, 52.879177, 49.887363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216335, 53.308243, 50.119610>,  <36.555614, 53.577026, 49.920528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216335, 53.308243, 50.119610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078987, 53.044292, 49.852283>,  <36.996578, 52.885921, 49.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078987, 53.044292, 49.852283>,  <37.216335, 53.308243, 50.119610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078987, 53.044292, 49.852283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873847, 0.036328, -0.484842,
		0.344216, -0.750492, 0.564160,
		-0.343375, -0.659880, -0.668320,
		36.975975, 52.846329, 49.651787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790051, 52.806767, 50.082016>,  <37.216335, 53.308243, 50.119610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790051, 52.806767, 50.082016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600712, 52.938110, 49.755062>,  <37.487110, 53.016918, 49.558887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600712, 52.938110, 49.755062>,  <37.790051, 52.806767, 50.082016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600712, 52.938110, 49.755062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872887, 0.050155, -0.485338,
		-0.118370, -0.943220, -0.310364,
		-0.473346, 0.328362, -0.817387,
		37.458710, 53.036617, 49.509846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023754, 52.390369, 49.555740>,  <37.790051, 52.806767, 50.082016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023754, 52.390369, 49.555740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949310, 52.775337, 49.476631>,  <37.904644, 53.006317, 49.429165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949310, 52.775337, 49.476631>,  <38.023754, 52.390369, 49.555740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949310, 52.775337, 49.476631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947365, 0.122410, -0.295832,
		-0.260503, -0.242425, -0.934542,
		-0.186114, 0.962417, -0.197777,
		37.893475, 53.064064, 49.417297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148624, 52.696621, 48.809444>,  <38.023754, 52.390369, 49.555740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148624, 52.696621, 48.809444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193321, 52.977562, 49.090645>,  <38.220139, 53.146126, 49.259365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193321, 52.977562, 49.090645>,  <38.148624, 52.696621, 48.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193321, 52.977562, 49.090645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927763, 0.179732, -0.327035,
		-0.356046, 0.688767, -0.631531,
		0.111744, 0.702351, 0.703006,
		38.226845, 53.188267, 49.301548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463585, 53.369011, 48.561989>,  <38.148624, 52.696621, 48.809444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463585, 53.369011, 48.561989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566868, 53.302177, 48.942600>,  <38.628838, 53.262077, 49.170967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566868, 53.302177, 48.942600>,  <38.463585, 53.369011, 48.561989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566868, 53.302177, 48.942600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939360, 0.273509, -0.206873,
		-0.225687, 0.947246, 0.227575,
		0.258203, -0.167086, 0.951532,
		38.644329, 53.252052, 49.228062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892723, 53.991497, 48.717068>,  <38.463585, 53.369011, 48.561989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892723, 53.991497, 48.717068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963066, 53.688137, 48.968117>,  <39.005272, 53.506123, 49.118744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963066, 53.688137, 48.968117>,  <38.892723, 53.991497, 48.717068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963066, 53.688137, 48.968117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983434, 0.106878, -0.146405,
		0.043955, 0.642967, 0.764631,
		0.175856, -0.758400, 0.627618,
		39.015823, 53.460617, 49.156403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429657, 54.153637, 49.323822>,  <38.892723, 53.991497, 48.717068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429657, 54.153637, 49.323822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432850, 53.768234, 49.216797>,  <39.434765, 53.536991, 49.152584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432850, 53.768234, 49.216797>,  <39.429657, 54.153637, 49.323822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432850, 53.768234, 49.216797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971461, 0.070900, -0.226354,
		0.237064, -0.258118, 0.936577,
		0.007978, -0.963508, -0.267559,
		39.435242, 53.479183, 49.136528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027264, 54.099144, 48.978249>,  <39.429657, 54.153637, 49.323822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027264, 54.099144, 48.978249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958614, 53.706333, 49.009678>,  <39.917423, 53.470646, 49.028534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958614, 53.706333, 49.009678>,  <40.027264, 54.099144, 48.978249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958614, 53.706333, 49.009678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894196, -0.188753, -0.405938,
		0.413472, 0.000593, 0.910517,
		-0.171622, -0.982025, 0.078574,
		39.907127, 53.411724, 49.033249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692532, 53.722095, 49.247299>,  <40.027264, 54.099144, 48.978249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692532, 53.722095, 49.247299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460640, 53.479168, 49.030014>,  <40.321507, 53.333412, 48.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460640, 53.479168, 49.030014>,  <40.692532, 53.722095, 49.247299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460640, 53.479168, 49.030014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759929, -0.162461, -0.629376,
		0.293984, -0.777666, 0.555705,
		-0.579725, -0.607323, -0.543210,
		40.286724, 53.296970, 48.867050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115517, 53.040672, 49.088421>,  <40.692532, 53.722095, 49.247299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115517, 53.040672, 49.088421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859352, 53.154266, 48.802979>,  <40.705654, 53.222424, 48.631714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859352, 53.154266, 48.802979>,  <41.115517, 53.040672, 49.088421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859352, 53.154266, 48.802979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705218, -0.150594, -0.692812,
		-0.304211, -0.946929, -0.103828,
		-0.640408, 0.283983, -0.713605,
		40.667229, 53.239460, 48.588898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761482, 52.401588, 48.744534>,  <41.115517, 53.040672, 49.088421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761482, 52.401588, 48.744534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853134, 52.739117, 48.550430>,  <40.908123, 52.941631, 48.433968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853134, 52.739117, 48.550430>,  <40.761482, 52.401588, 48.744534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853134, 52.739117, 48.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676092, -0.496605, -0.544319,
		-0.700286, -0.203358, -0.684284,
		0.229127, 0.843818, -0.485254,
		40.921871, 52.992264, 48.404854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642429, 52.341393, 48.057030>,  <40.761482, 52.401588, 48.744534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642429, 52.341393, 48.057030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945770, 52.598347, 48.101303>,  <41.127773, 52.752518, 48.127865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945770, 52.598347, 48.101303>,  <40.642429, 52.341393, 48.057030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945770, 52.598347, 48.101303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631931, -0.682853, -0.366572,
		-0.159900, 0.347933, -0.923783,
		0.758350, 0.642382, 0.110682,
		41.173275, 52.791061, 48.134506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051407, 52.491119, 47.439671>,  <40.642429, 52.341393, 48.057030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051407, 52.491119, 47.439671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289062, 52.530075, 47.759048>,  <41.431656, 52.553448, 47.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289062, 52.530075, 47.759048>,  <41.051407, 52.491119, 47.439671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289062, 52.530075, 47.759048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668041, -0.612638, -0.422368,
		0.448024, 0.784340, -0.429052,
		0.594134, 0.097394, 0.798448,
		41.467304, 52.559292, 47.998581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709061, 52.768562, 47.303558>,  <41.051407, 52.491119, 47.439671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709061, 52.768562, 47.303558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756584, 52.532021, 47.622604>,  <41.785099, 52.390095, 47.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756584, 52.532021, 47.622604>,  <41.709061, 52.768562, 47.303558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756584, 52.532021, 47.622604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755094, -0.467821, -0.459321,
		0.644762, 0.656842, 0.390949,
		0.118808, -0.591356, 0.797611,
		41.792225, 52.354614, 47.861889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419880, 52.731476, 47.761829>,  <41.709061, 52.768562, 47.303558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419880, 52.731476, 47.761829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231377, 52.378891, 47.749596>,  <42.118275, 52.167339, 47.742256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231377, 52.378891, 47.749596>,  <42.419880, 52.731476, 47.761829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231377, 52.378891, 47.749596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770620, -0.394641, -0.500403,
		0.429019, -0.259387, 0.865252,
		-0.471262, -0.881463, -0.030580,
		42.089996, 52.114452, 47.740421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833809, 52.173916, 48.110069>,  <42.419880, 52.731476, 47.761829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833809, 52.173916, 48.110069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621334, 52.046555, 47.796009>,  <42.493851, 51.970139, 47.607574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621334, 52.046555, 47.796009>,  <42.833809, 52.173916, 48.110069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621334, 52.046555, 47.796009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847253, -0.198023, -0.492900,
		0.001462, -0.927043, 0.374953,
		-0.531188, -0.318400, -0.785150,
		42.461979, 51.951035, 47.560463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173656, 52.784962, 48.202370>,  <42.833809, 52.173916, 48.110069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173656, 52.784962, 48.202370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558052, 52.674843, 48.191750>,  <43.788689, 52.608772, 48.185379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558052, 52.674843, 48.191750>,  <43.173656, 52.784962, 48.202370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558052, 52.674843, 48.191750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229633, 0.847710, -0.478179,
		0.154148, 0.453430, 0.877861,
		0.960993, -0.275297, -0.026550,
		43.846352, 52.592255, 48.183784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622581, 53.297394, 48.463402>,  <43.173656, 52.784962, 48.202370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622581, 53.297394, 48.463402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841213, 53.082485, 48.206467>,  <43.972393, 52.953541, 48.052307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841213, 53.082485, 48.206467>,  <43.622581, 53.297394, 48.463402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841213, 53.082485, 48.206467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366286, 0.843168, -0.393575,
		0.753053, -0.020160, 0.657651,
		0.546576, -0.537271, -0.642335,
		44.005184, 52.921303, 48.013767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075096, 53.991047, 48.561394>,  <43.622581, 53.297394, 48.463402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075096, 53.991047, 48.561394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254993, 53.942501, 48.915344>,  <44.362930, 53.913376, 49.127716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254993, 53.942501, 48.915344>,  <44.075096, 53.991047, 48.561394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254993, 53.942501, 48.915344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889029, -0.034349, -0.456560,
		0.085804, 0.992014, 0.092447,
		0.449739, -0.121363, 0.884876,
		44.389915, 53.906094, 49.180809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516800, 54.417297, 48.472145>,  <44.075096, 53.991047, 48.561394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516800, 54.417297, 48.472145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647457, 54.184696, 48.770180>,  <44.725853, 54.045135, 48.949001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647457, 54.184696, 48.770180>,  <44.516800, 54.417297, 48.472145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647457, 54.184696, 48.770180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936071, 0.090048, -0.340093,
		0.130670, 0.808547, 0.573739,
		0.326645, -0.581500, 0.745091,
		44.745449, 54.010246, 48.993706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113800, 54.766846, 48.916836>,  <44.516800, 54.417297, 48.472145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113800, 54.766846, 48.916836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129879, 54.367538, 48.899624>,  <45.139526, 54.127956, 48.889297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129879, 54.367538, 48.899624>,  <45.113800, 54.766846, 48.916836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129879, 54.367538, 48.899624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887346, 0.055465, -0.457755,
		0.459348, -0.019783, 0.888036,
		0.040199, -0.998265, -0.043032,
		45.141937, 54.068058, 48.886715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613480, 54.273697, 49.325729>,  <45.113800, 54.766846, 48.916836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613480, 54.273697, 49.325729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525845, 54.126953, 48.964085>,  <45.473263, 54.038906, 48.747097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525845, 54.126953, 48.964085>,  <45.613480, 54.273697, 49.325729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525845, 54.126953, 48.964085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897049, 0.288763, -0.334545,
		0.383805, -0.884324, 0.265830,
		-0.219084, -0.366862, -0.904110,
		45.460121, 54.016895, 48.692852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246552, 53.880390, 49.067474>,  <45.613480, 54.273697, 49.325729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246552, 53.880390, 49.067474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042698, 54.070896, 48.780853>,  <45.920387, 54.185200, 48.608883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042698, 54.070896, 48.780853>,  <46.246552, 53.880390, 49.067474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042698, 54.070896, 48.780853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824880, 0.507259, -0.249522,
		0.244637, -0.718232, -0.651380,
		-0.509633, 0.476268, -0.716550,
		45.889809, 54.213776, 48.565887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420055, 53.741562, 48.393810>,  <46.246552, 53.880390, 49.067474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420055, 53.741562, 48.393810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271088, 54.112301, 48.412834>,  <46.181705, 54.334743, 48.424248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271088, 54.112301, 48.412834>,  <46.420055, 53.741562, 48.393810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271088, 54.112301, 48.412834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851591, 0.361652, -0.379475,
		-0.368913, -0.100827, -0.923979,
		-0.372420, 0.926845, 0.047555,
		46.159363, 54.390354, 48.427101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572433, 54.080929, 47.677738>,  <46.420055, 53.741562, 48.393810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572433, 54.080929, 47.677738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560074, 54.315151, 48.001755>,  <46.552658, 54.455685, 48.196163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560074, 54.315151, 48.001755>,  <46.572433, 54.080929, 47.677738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560074, 54.315151, 48.001755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968375, 0.218281, -0.120847,
		-0.247580, 0.780689, -0.573784,
		-0.030902, 0.585557, 0.810042,
		46.550804, 54.490818, 48.244766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841373, 54.808632, 47.511646>,  <46.572433, 54.080929, 47.677738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841373, 54.808632, 47.511646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905457, 54.659767, 47.877342>,  <46.943909, 54.570450, 48.096760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905457, 54.659767, 47.877342>,  <46.841373, 54.808632, 47.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905457, 54.659767, 47.877342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983066, 0.143629, -0.113804,
		-0.088957, 0.916988, 0.388870,
		0.160210, -0.372161, 0.914237,
		46.953518, 54.548119, 48.151615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275032, 55.289211, 47.901714>,  <46.841373, 54.808632, 47.511646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275032, 55.289211, 47.901714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312668, 54.906384, 48.011383>,  <47.335251, 54.676689, 48.077187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312668, 54.906384, 48.011383>,  <47.275032, 55.289211, 47.901714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.312668, 54.906384, 48.011383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994832, 0.079839, -0.062722,
		0.038139, 0.278660, 0.959632,
		0.094094, -0.957065, 0.274175,
		47.340897, 54.619263, 48.093636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909363, 55.366108, 48.246387>,  <47.275032, 55.289211, 47.901714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909363, 55.366108, 48.246387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814873, 54.982182, 48.185776>,  <47.758179, 54.751827, 48.149410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814873, 54.982182, 48.185776>,  <47.909363, 55.366108, 48.246387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.814873, 54.982182, 48.185776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967371, -0.217592, -0.129796,
		0.091609, -0.177242, 0.979894,
		-0.236223, -0.959812, -0.151526,
		47.744007, 54.694237, 48.140320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.342754, 54.950733, 48.658886>,  <47.909363, 55.366108, 48.246387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.342754, 54.950733, 48.658886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.222046, 54.732323, 48.346272>,  <48.149620, 54.601276, 48.158703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.222046, 54.732323, 48.346272>,  <48.342754, 54.950733, 48.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.222046, 54.732323, 48.346272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929708, -0.350082, -0.114395,
		-0.211139, -0.761119, 0.613285,
		-0.301768, -0.546022, -0.781534,
		48.131516, 54.568516, 48.111813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.753906, 54.417122, 48.596550>,  <48.342754, 54.950733, 48.658886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.753906, 54.417122, 48.596550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.584274, 54.366318, 48.237881>,  <48.482494, 54.335835, 48.022678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.584274, 54.366318, 48.237881>,  <48.753906, 54.417122, 48.596550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.584274, 54.366318, 48.237881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858219, -0.372510, -0.353123,
		-0.289168, -0.919295, 0.266980,
		-0.424077, -0.127015, -0.896675,
		48.457050, 54.328213, 47.968880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.574097, 53.811539, 48.489555>,  <48.753906, 54.417122, 48.596550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.574097, 53.811539, 48.489555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.693310, 54.009655, 48.163155>,  <48.764839, 54.128525, 47.967312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.693310, 54.009655, 48.163155>,  <48.574097, 53.811539, 48.489555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.693310, 54.009655, 48.163155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868393, -0.495606, 0.016348,
		-0.396320, -0.713486, -0.577813,
		0.298032, 0.495290, -0.816006,
		48.782719, 54.158241, 47.918354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.796574, 53.379192, 48.045246>,  <48.574097, 53.811539, 48.489555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.796574, 53.379192, 48.045246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.982334, 53.724674, 47.966911>,  <49.093788, 53.931965, 47.919910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.982334, 53.724674, 47.966911>,  <48.796574, 53.379192, 48.045246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.982334, 53.724674, 47.966911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885040, -0.444551, 0.138122,
		0.032236, -0.237467, -0.970860,
		0.464397, 0.863703, -0.195837,
		49.121655, 53.983784, 47.908161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.586349, 53.294151, 47.802372>,  <48.796574, 53.379192, 48.045246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.586349, 53.294151, 47.802372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433228, 53.492958, 48.113869>,  <49.341354, 53.612244, 48.300766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433228, 53.492958, 48.113869>,  <49.586349, 53.294151, 47.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.433228, 53.492958, 48.113869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918965, 0.291247, 0.265854,
		-0.094672, 0.817405, -0.568231,
		-0.382806, 0.497016, 0.778739,
		49.318386, 53.642063, 48.347492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.205261, 53.672428, 47.810131>,  <49.586349, 53.294151, 47.802372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.205261, 53.672428, 47.810131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.021072, 53.760464, 48.154114>,  <49.910557, 53.813286, 48.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.021072, 53.760464, 48.154114>,  <50.205261, 53.672428, 47.810131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.021072, 53.760464, 48.154114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884388, 0.197010, 0.423137,
		-0.076292, 0.955378, -0.285362,
		-0.460475, 0.220089, 0.859955,
		49.882931, 53.826488, 48.412102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.459148, 54.366089, 47.994873>,  <50.205261, 53.672428, 47.810131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.459148, 54.366089, 47.994873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.343987, 54.159935, 48.317734>,  <50.274891, 54.036243, 48.511448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.343987, 54.159935, 48.317734>,  <50.459148, 54.366089, 47.994873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.343987, 54.159935, 48.317734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851491, 0.247951, 0.462042,
		-0.438263, 0.820304, 0.367459,
		-0.287903, -0.515384, 0.807150,
		50.257614, 54.005322, 48.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.578083, 54.849670, 48.537212>,  <50.459148, 54.366089, 47.994873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.578083, 54.849670, 48.537212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.558388, 54.467903, 48.654968>,  <50.546570, 54.238842, 48.725620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.558388, 54.467903, 48.654968>,  <50.578083, 54.849670, 48.537212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.558388, 54.467903, 48.654968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773581, 0.149999, 0.615689,
		-0.631782, 0.258044, 0.730934,
		-0.049236, -0.954418, 0.294385,
		50.543617, 54.181580, 48.743282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.322800, 54.652081, 49.268177>,  <50.578083, 54.849670, 48.537212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.322800, 54.652081, 49.268177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.624096, 54.434040, 49.120941>,  <50.804874, 54.303215, 49.032600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.624096, 54.434040, 49.120941>,  <50.322800, 54.652081, 49.268177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.624096, 54.434040, 49.120941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622572, 0.410323, 0.666362,
		-0.212195, -0.731098, 0.648435,
		0.753244, -0.545097, -0.368093,
		50.850071, 54.270512, 49.010513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.721916, 54.232849, 49.863464>,  <50.322800, 54.652081, 49.268177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.721916, 54.232849, 49.863464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.951405, 54.327499, 49.549812>,  <51.089096, 54.384289, 49.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.951405, 54.327499, 49.549812>,  <50.721916, 54.232849, 49.863464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.951405, 54.327499, 49.549812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737982, 0.265941, 0.620209,
		0.355287, -0.934497, -0.022048,
		0.573720, 0.236623, -0.784127,
		51.123520, 54.398487, 49.314575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.334347, 53.885609, 49.706207>,  <50.721916, 54.232849, 49.863464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.334347, 53.885609, 49.706207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.398083, 54.267765, 49.606735>,  <51.436325, 54.497059, 49.547050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.398083, 54.267765, 49.606735>,  <51.334347, 53.885609, 49.706207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.398083, 54.267765, 49.606735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654998, 0.086160, 0.750703,
		0.738639, -0.282505, -0.612048,
		0.159343, 0.955388, -0.248682,
		51.445885, 54.554382, 49.532131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.050117, 53.989517, 49.716450>,  <51.334347, 53.885609, 49.706207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.050117, 53.989517, 49.716450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.888256, 54.350853, 49.773331>,  <51.791138, 54.567654, 49.807461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.888256, 54.350853, 49.773331>,  <52.050117, 53.989517, 49.716450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.888256, 54.350853, 49.773331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567663, 0.126222, 0.813527,
		0.716945, 0.409925, -0.563872,
		-0.404658, 0.903343, 0.142205,
		51.766857, 54.621857, 49.815990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.532726, 54.556416, 49.566711>,  <52.050117, 53.989517, 49.716450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.532726, 54.556416, 49.566711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.260872, 54.537701, 49.859535>,  <52.097759, 54.526470, 50.035229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.260872, 54.537701, 49.859535>,  <52.532726, 54.556416, 49.566711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.260872, 54.537701, 49.859535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730083, 0.053755, 0.681241,
		-0.071226, 0.997457, -0.002375,
		-0.679637, -0.046788, 0.732055,
		52.056980, 54.523663, 50.079151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.613766, 55.214939, 50.012165>,  <52.532726, 54.556416, 49.566711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.613766, 55.214939, 50.012165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.489208, 54.920525, 50.252594>,  <52.414474, 54.743877, 50.396851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.489208, 54.920525, 50.252594>,  <52.613766, 55.214939, 50.012165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.489208, 54.920525, 50.252594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625076, 0.317773, 0.712952,
		-0.715763, 0.597722, 0.361127,
		-0.311390, -0.736036, 0.601072,
		52.395790, 54.699715, 50.432915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.336624, 55.505028, 50.681141>,  <52.613766, 55.214939, 50.012165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.336624, 55.505028, 50.681141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.535072, 55.157806, 50.688698>,  <52.654140, 54.949474, 50.693233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.535072, 55.157806, 50.688698>,  <52.336624, 55.505028, 50.681141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.535072, 55.157806, 50.688698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617469, 0.368035, 0.695185,
		-0.610408, -0.333228, 0.718583,
		0.496119, -0.868049, 0.018894,
		52.683907, 54.897392, 50.694366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.245693, 54.893616, 51.272099>,  <52.336624, 55.505028, 50.681141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.245693, 54.893616, 51.272099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.609909, 54.994308, 51.140919>,  <52.828438, 55.054726, 51.062210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.609909, 54.994308, 51.140919>,  <52.245693, 54.893616, 51.272099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.609909, 54.994308, 51.140919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235404, 0.336433, 0.911810,
		0.339855, -0.907442, 0.247080,
		0.910540, 0.251719, -0.327954,
		52.883072, 55.069828, 51.042534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.792435, 54.588284, 51.690605>,  <52.245693, 54.893616, 51.272099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.792435, 54.588284, 51.690605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.954498, 54.920074, 51.536816>,  <53.051735, 55.119148, 51.444542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.954498, 54.920074, 51.536816>,  <52.792435, 54.588284, 51.690605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.954498, 54.920074, 51.536816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343612, 0.251549, 0.904795,
		0.847218, -0.498694, -0.183101,
		0.405156, 0.829474, -0.384474,
		53.076046, 55.168919, 51.421474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.487976, 54.587517, 52.010147>,  <52.792435, 54.588284, 51.690605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.487976, 54.587517, 52.010147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.371517, 54.959908, 51.922035>,  <53.301643, 55.183342, 51.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.371517, 54.959908, 51.922035>,  <53.487976, 54.587517, 52.010147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.371517, 54.959908, 51.922035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334332, 0.314748, 0.888345,
		0.896357, 0.184993, -0.402892,
		-0.291147, 0.930973, -0.220278,
		53.284172, 55.239201, 51.855953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.996792, 55.243675, 51.919529>,  <53.487976, 54.587517, 52.010147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.996792, 55.243675, 51.919529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.655659, 55.324600, 52.112091>,  <53.450981, 55.373154, 52.227631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.655659, 55.324600, 52.112091>,  <53.996792, 55.243675, 51.919529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.655659, 55.324600, 52.112091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521829, 0.295846, 0.800106,
		0.019450, 0.933565, -0.357879,
		-0.852828, 0.202313, 0.481408,
		53.399811, 55.385296, 52.256512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.870796, 56.019768, 52.118462>,  <53.996792, 55.243675, 51.919529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.870796, 56.019768, 52.118462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.722115, 55.742767, 52.365776>,  <53.632904, 55.576569, 52.514164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.722115, 55.742767, 52.365776>,  <53.870796, 56.019768, 52.118462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.722115, 55.742767, 52.365776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482741, 0.424701, 0.765892,
		-0.792967, 0.583159, 0.176435,
		-0.371704, -0.692499, 0.618289,
		53.610603, 55.535019, 52.551262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.911552, 56.645164, 52.618553>,  <53.870796, 56.019768, 52.118462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.911552, 56.645164, 52.618553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.134308, 56.653225, 52.950691>,  <54.267960, 56.658062, 53.149975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.134308, 56.653225, 52.950691>,  <53.911552, 56.645164, 52.618553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.134308, 56.653225, 52.950691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454974, 0.828979, -0.325256,
		-0.694891, 0.558916, 0.452481,
		0.556888, 0.020151, 0.830343,
		54.301373, 56.659271, 53.199795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.885342, 57.292667, 53.154491>,  <53.911552, 56.645164, 52.618553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.885342, 57.292667, 53.154491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.234779, 57.099964, 53.126938>,  <54.444443, 56.984344, 53.110405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.234779, 57.099964, 53.126938>,  <53.885342, 57.292667, 53.154491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.234779, 57.099964, 53.126938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432202, 0.833097, -0.345181,
		0.223682, 0.271775, 0.936004,
		0.873595, -0.481754, -0.068887,
		54.496857, 56.955437, 53.106270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.360451, 57.765957, 53.271271>,  <53.885342, 57.292667, 53.154491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.360451, 57.765957, 53.271271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.559769, 57.469276, 53.091679>,  <54.679359, 57.291267, 52.983921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.559769, 57.469276, 53.091679>,  <54.360451, 57.765957, 53.271271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.559769, 57.469276, 53.091679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533216, 0.670503, -0.515855,
		0.683653, 0.017644, 0.729594,
		0.498297, -0.741697, -0.448983,
		54.709259, 57.246769, 52.956982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.130009, 57.789303, 53.212543>,  <54.360451, 57.765957, 53.271271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.130009, 57.789303, 53.212543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.977676, 57.620396, 52.883507>,  <54.886276, 57.519051, 52.686085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.977676, 57.620396, 52.883507>,  <55.130009, 57.789303, 53.212543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.977676, 57.620396, 52.883507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453608, 0.689906, -0.564154,
		0.805737, -0.587980, -0.071191,
		-0.380826, -0.422266, -0.822595,
		54.863430, 57.493717, 52.636726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.690666, 57.581318, 52.691376>,  <55.130009, 57.789303, 53.212543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.690666, 57.581318, 52.691376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.339195, 57.684776, 52.530865>,  <55.128311, 57.746849, 52.434559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.339195, 57.684776, 52.530865>,  <55.690666, 57.581318, 52.691376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.339195, 57.684776, 52.530865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446134, 0.744072, -0.497314,
		0.169952, -0.616004, -0.769192,
		-0.878681, 0.258644, -0.401277,
		55.075592, 57.762371, 52.410480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.644360, 57.648399, 51.923389>,  <55.690666, 57.581318, 52.691376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.644360, 57.648399, 51.923389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.384201, 57.895470, 52.100235>,  <55.228107, 58.043713, 52.206341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.384201, 57.895470, 52.100235>,  <55.644360, 57.648399, 51.923389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.384201, 57.895470, 52.100235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509090, 0.786430, -0.349793,
		-0.563747, -0.002431, -0.825944,
		-0.650398, 0.617675, 0.442110,
		55.189083, 58.080772, 52.232868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.714603, 57.221748, 51.297466>,  <55.644360, 57.648399, 51.923389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.714603, 57.221748, 51.297466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.754227, 56.899895, 51.063286>,  <55.778000, 56.706783, 50.922779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.754227, 56.899895, 51.063286>,  <55.714603, 57.221748, 51.297466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.754227, 56.899895, 51.063286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933051, 0.279584, -0.226382,
		0.345837, -0.523831, 0.778458,
		0.099058, -0.804633, -0.585452,
		55.783943, 56.658504, 50.887650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.188721, 56.648094, 51.430058>,  <55.714603, 57.221748, 51.297466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.188721, 56.648094, 51.430058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.509186, 56.620075, 51.192322>,  <56.701466, 56.603264, 51.049679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.509186, 56.620075, 51.192322>,  <56.188721, 56.648094, 51.430058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.509186, 56.620075, 51.192322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544087, 0.498843, 0.674629,
		0.249227, -0.863857, 0.437762,
		0.801158, -0.070045, -0.594339,
		56.749535, 56.599060, 51.014019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.736607, 56.679291, 51.869003>,  <56.188721, 56.648094, 51.430058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.736607, 56.679291, 51.869003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.881195, 56.793343, 51.513916>,  <56.967949, 56.861774, 51.300865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.881195, 56.793343, 51.513916>,  <56.736607, 56.679291, 51.869003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.881195, 56.793343, 51.513916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761628, 0.458901, 0.457529,
		0.537828, -0.841494, -0.051281,
		0.361475, 0.285129, -0.887715,
		56.989639, 56.878880, 51.247601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.338772, 56.426250, 51.728870>,  <56.736607, 56.679291, 51.869003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.338772, 56.426250, 51.728870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.313828, 56.781147, 51.546043>,  <57.298862, 56.994083, 51.436348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.313828, 56.781147, 51.546043>,  <57.338772, 56.426250, 51.728870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.313828, 56.781147, 51.546043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797122, 0.319858, 0.512140,
		0.600590, -0.332402, -0.727187,
		-0.062360, 0.887243, -0.457068,
		57.295120, 57.047321, 51.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.899487, 56.536301, 51.275085>,  <57.338772, 56.426250, 51.728870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.899487, 56.536301, 51.275085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.735840, 56.863354, 51.437126>,  <57.637653, 57.059586, 51.534351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.735840, 56.863354, 51.437126>,  <57.899487, 56.536301, 51.275085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.735840, 56.863354, 51.437126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893091, 0.267759, 0.361516,
		0.187117, 0.509694, -0.839762,
		-0.409116, 0.817629, 0.405100,
		57.613106, 57.108643, 51.558655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.262424, 57.116077, 51.011215>,  <57.899487, 56.536301, 51.275085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.262424, 57.116077, 51.011215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.116188, 57.226204, 51.366867>,  <58.028446, 57.292282, 51.580257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.116188, 57.226204, 51.366867>,  <58.262424, 57.116077, 51.011215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.116188, 57.226204, 51.366867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923159, 0.229224, 0.308601,
		-0.118844, 0.933625, -0.337965,
		-0.365588, 0.275320, 0.889126,
		58.006512, 57.308800, 51.633606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.803776, 57.526470, 51.363716>,  <58.262424, 57.116077, 51.011215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.803776, 57.526470, 51.363716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.581764, 57.354874, 51.648788>,  <58.448559, 57.251915, 51.819832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.581764, 57.354874, 51.648788>,  <58.803776, 57.526470, 51.363716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.581764, 57.354874, 51.648788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773606, 0.048698, 0.631793,
		-0.305738, 0.901996, 0.304840,
		-0.555029, -0.428990, 0.712678,
		58.415257, 57.226177, 51.862591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.170319, 56.944721, 51.815662>,  <58.803776, 57.526470, 51.363716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.170319, 56.944721, 51.815662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.449387, 56.700031, 51.666508>,  <59.616829, 56.553215, 51.577015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.449387, 56.700031, 51.666508>,  <59.170319, 56.944721, 51.815662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.449387, 56.700031, 51.666508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458960, 0.781291, -0.423014,
		0.550103, 0.123984, 0.825842,
		0.697669, -0.611729, -0.372887,
		59.658688, 56.516514, 51.554642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.842953, 57.145889, 52.157322>,  <59.170319, 56.944721, 51.815662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.842953, 57.145889, 52.157322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.853630, 56.968254, 51.799088>,  <59.860035, 56.861671, 51.584148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.853630, 56.968254, 51.799088>,  <59.842953, 57.145889, 52.157322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.853630, 56.968254, 51.799088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315886, 0.853744, -0.413929,
		0.948422, -0.271854, 0.163068,
		0.026690, -0.444091, -0.895584,
		59.861637, 56.835026, 51.530411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.444767, 57.069141, 52.426796>,  <59.842953, 57.145889, 52.157322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.444767, 57.069141, 52.426796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.541313, 56.754181, 52.653683>,  <60.599243, 56.565205, 52.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.541313, 56.754181, 52.653683>,  <60.444767, 57.069141, 52.426796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.541313, 56.754181, 52.653683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754740, 0.519729, 0.400313,
		-0.610008, 0.331480, 0.719730,
		0.241369, -0.787403, 0.567220,
		60.613724, 56.517960, 52.823849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.316128, 57.181160, 53.171673>,  <60.444767, 57.069141, 52.426796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.316128, 57.181160, 53.171673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.619415, 56.929947, 53.101608>,  <60.801388, 56.779221, 53.059570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.619415, 56.929947, 53.101608>,  <60.316128, 57.181160, 53.171673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.619415, 56.929947, 53.101608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622646, 0.617765, 0.480290,
		-0.193429, -0.473229, 0.859442,
		0.758220, -0.628029, -0.175160,
		60.846882, 56.741539, 53.049061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.524326, 56.855541, 53.718376>,  <60.316128, 57.181160, 53.171673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.524326, 56.855541, 53.718376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.831741, 56.901791, 53.466667>,  <61.016190, 56.929539, 53.315643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.831741, 56.901791, 53.466667>,  <60.524326, 56.855541, 53.718376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.831741, 56.901791, 53.466667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469986, 0.565330, 0.677876,
		0.434122, -0.816722, 0.380137,
		0.768539, 0.115621, -0.629270,
		61.062302, 56.936478, 53.277885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.186813, 56.656418, 54.163342>,  <60.524326, 56.855541, 53.718376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.186813, 56.656418, 54.163342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.265007, 56.906570, 53.861168>,  <61.311924, 57.056664, 53.679863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.265007, 56.906570, 53.861168>,  <61.186813, 56.656418, 54.163342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.265007, 56.906570, 53.861168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510307, 0.592935, 0.622909,
		0.837479, -0.507275, -0.203224,
		0.195487, 0.625380, -0.755437,
		61.323654, 57.094185, 53.634537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.781227, 56.925972, 54.366192>,  <61.186813, 56.656418, 54.163342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.781227, 56.925972, 54.366192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.703239, 57.185394, 54.071884>,  <61.656448, 57.341049, 53.895298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.703239, 57.185394, 54.071884>,  <61.781227, 56.925972, 54.366192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.703239, 57.185394, 54.071884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649162, 0.647673, 0.398883,
		0.735238, -0.399866, -0.547296,
		-0.194969, 0.648558, -0.735772,
		61.644749, 57.379963, 53.851154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.262371, 57.414242, 54.068382>,  <61.781227, 56.925972, 54.366192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.262371, 57.414242, 54.068382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.504005, 57.658180, 53.863182>,  <62.648987, 57.804543, 53.740063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.504005, 57.658180, 53.863182>,  <62.262371, 57.414242, 54.068382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.504005, 57.658180, 53.863182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185003, 0.518827, 0.834621,
		0.775150, -0.599087, 0.200591,
		0.604083, 0.609846, -0.513002,
		62.685230, 57.841133, 53.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.035320, 57.551434, 54.281227>,  <62.262371, 57.414242, 54.068382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.035320, 57.551434, 54.281227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.955635, 57.906803, 54.115810>,  <62.907825, 58.120026, 54.016560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.955635, 57.906803, 54.115810>,  <63.035320, 57.551434, 54.281227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.955635, 57.906803, 54.115810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317782, 0.457765, 0.830341,
		0.927000, 0.033996, -0.373517,
		-0.199212, 0.888423, -0.413545,
		62.895870, 58.173328, 53.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.649437, 57.933960, 54.530979>,  <63.035320, 57.551434, 54.281227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.649437, 57.933960, 54.530979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.333061, 58.164417, 54.448536>,  <63.143238, 58.302692, 54.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.333061, 58.164417, 54.448536>,  <63.649437, 57.933960, 54.530979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.333061, 58.164417, 54.448536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299461, 0.658201, 0.690720,
		0.533613, 0.484595, -0.693127,
		-0.790936, 0.576142, -0.206108,
		63.095779, 58.337261, 54.386703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.811008, 58.552361, 54.972214>,  <63.649437, 57.933960, 54.530979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.811008, 58.552361, 54.972214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.019852, 58.815163, 55.189743>,  <64.145157, 58.972843, 55.320263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.019852, 58.815163, 55.189743>,  <63.811008, 58.552361, 54.972214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.019852, 58.815163, 55.189743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329798, -0.432509, 0.839148,
		0.786537, -0.617475, -0.009134,
		0.522103, 0.657008, 0.543827,
		64.176483, 59.012264, 55.352890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.950203, 58.231792, 55.539635>,  <63.811008, 58.552361, 54.972214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.950203, 58.231792, 55.539635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.042259, 58.595352, 55.678734>,  <64.097496, 58.813488, 55.762196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.042259, 58.595352, 55.678734>,  <63.950203, 58.231792, 55.539635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.042259, 58.595352, 55.678734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154003, -0.318824, 0.935219,
		0.960895, -0.268785, 0.066600,
		0.230139, 0.908904, 0.347750,
		64.111298, 58.868023, 55.783058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.338165, 58.102943, 56.234913>,  <63.950203, 58.231792, 55.539635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.338165, 58.102943, 56.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.159386, 58.460762, 56.237068>,  <64.052116, 58.675453, 56.238361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.159386, 58.460762, 56.237068>,  <64.338165, 58.102943, 56.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.159386, 58.460762, 56.237068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330742, -0.170842, 0.928129,
		0.831176, 0.413037, 0.372220,
		-0.446942, 0.894547, 0.005391,
		64.025307, 58.729126, 56.238686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.672157, 58.622272, 56.714649>,  <64.338165, 58.102943, 56.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.672157, 58.622272, 56.714649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.280945, 58.658543, 56.639580>,  <64.046219, 58.680305, 56.594540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.280945, 58.658543, 56.639580>,  <64.672157, 58.622272, 56.714649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.280945, 58.658543, 56.639580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202068, -0.191690, 0.960429,
		0.051114, 0.977258, 0.205803,
		-0.978037, 0.090677, -0.187674,
		63.987534, 58.685745, 56.583279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.688484, 58.701492, 55.986965>,  <64.672157, 58.622272, 56.714649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.688484, 58.701492, 55.986965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.739265, 59.054066, 56.168930>,  <64.769737, 59.265610, 56.278111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.739265, 59.054066, 56.168930>,  <64.688484, 58.701492, 55.986965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.739265, 59.054066, 56.168930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536033, -0.446861, 0.716229,
		0.834595, 0.152916, -0.529215,
		0.126962, 0.881438, 0.454916,
		64.777351, 59.318497, 56.305405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.411758, 59.026165, 56.003319>,  <64.688484, 58.701492, 55.986965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.411758, 59.026165, 56.003319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.188118, 59.084938, 56.329712>,  <65.053932, 59.120201, 56.525547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.188118, 59.084938, 56.329712>,  <65.411758, 59.026165, 56.003319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.188118, 59.084938, 56.329712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608478, -0.595790, 0.524203,
		0.563175, 0.789585, 0.243699,
		-0.559097, 0.146933, 0.815979,
		65.020386, 59.129017, 56.574505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.858879, 59.101700, 56.501484>,  <65.411758, 59.026165, 56.003319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.858879, 59.101700, 56.501484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.510796, 58.982197, 56.658188>,  <65.301941, 58.910496, 56.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.510796, 58.982197, 56.658188>,  <65.858879, 59.101700, 56.501484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.510796, 58.982197, 56.658188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490957, -0.459573, 0.740104,
		-0.041068, 0.836385, 0.546602,
		-0.870215, -0.298753, 0.391756,
		65.249733, 58.892570, 56.775715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.839996, 59.162273, 57.330650>,  <65.858879, 59.101700, 56.501484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.839996, 59.162273, 57.330650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.610519, 58.859241, 57.206108>,  <65.472832, 58.677422, 57.131382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.610519, 58.859241, 57.206108>,  <65.839996, 59.162273, 57.330650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.610519, 58.859241, 57.206108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573756, -0.642990, 0.507314,
		-0.584532, 0.112400, 0.803548,
		-0.573695, -0.757582, -0.311358,
		65.438408, 58.631966, 57.112701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.730629, 58.720455, 57.949360>,  <65.839996, 59.162273, 57.330650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.730629, 58.720455, 57.949360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.711082, 58.535759, 57.595093>,  <65.699356, 58.424942, 57.382534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.711082, 58.535759, 57.595093>,  <65.730629, 58.720455, 57.949360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.711082, 58.535759, 57.595093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524318, -0.766583, 0.370730,
		-0.850120, -0.446257, 0.279555,
		-0.048861, -0.461741, -0.885668,
		65.696426, 58.397236, 57.329391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.686050, 58.059284, 58.004375>,  <65.730629, 58.720455, 57.949360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.686050, 58.059284, 58.004375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.883736, 58.088928, 57.657906>,  <66.002350, 58.106716, 57.450024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.883736, 58.088928, 57.657906>,  <65.686050, 58.059284, 58.004375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.883736, 58.088928, 57.657906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685528, -0.645941, 0.335873,
		-0.534606, -0.759781, -0.370039,
		0.494214, 0.074112, -0.866176,
		66.031998, 58.111160, 57.398052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.660233, 57.461670, 57.654240>,  <65.686050, 58.059284, 58.004375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.660233, 57.461670, 57.654240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.998184, 57.646954, 57.547188>,  <66.200951, 57.758125, 57.482956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.998184, 57.646954, 57.547188>,  <65.660233, 57.461670, 57.654240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.998184, 57.646954, 57.547188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525162, -0.622793, 0.579943,
		0.101958, -0.630527, -0.769442,
		0.844873, 0.463211, -0.267630,
		66.251648, 57.785915, 57.466900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.153770, 57.218948, 57.990097>,  <65.660233, 57.461670, 57.654240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.153770, 57.218948, 57.990097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.411293, 57.414398, 57.754555>,  <66.565811, 57.531666, 57.613228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.411293, 57.414398, 57.754555>,  <66.153770, 57.218948, 57.990097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.411293, 57.414398, 57.754555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762402, -0.475162, 0.439277,
		-0.065162, -0.731758, -0.678442,
		0.643815, 0.488621, -0.588856,
		66.604439, 57.560986, 57.577896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.818680, 56.774937, 57.905899>,  <66.153770, 57.218948, 57.990097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.818680, 56.774937, 57.905899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.910484, 57.138466, 57.766556>,  <66.965569, 57.356583, 57.682949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.910484, 57.138466, 57.766556>,  <66.818680, 56.774937, 57.905899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.910484, 57.138466, 57.766556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890250, -0.051348, 0.452569,
		0.393419, -0.414000, -0.820869,
		0.229513, 0.908828, -0.348362,
		66.979340, 57.411114, 57.662048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.496941, 56.765881, 57.608753>,  <66.818680, 56.774937, 57.905899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.496941, 56.765881, 57.608753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.398346, 57.127800, 57.747658>,  <67.339188, 57.344952, 57.831001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.398346, 57.127800, 57.747658>,  <67.496941, 56.765881, 57.608753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.398346, 57.127800, 57.747658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940739, 0.137243, 0.310121,
		0.232936, 0.403124, -0.885004,
		-0.246478, 0.904796, 0.347265,
		67.324402, 57.399239, 57.851837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.841316, 57.423969, 57.243286>,  <67.496941, 56.765881, 57.608753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.841316, 57.423969, 57.243286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.745941, 57.482811, 57.627266>,  <67.688713, 57.518116, 57.857655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.745941, 57.482811, 57.627266>,  <67.841316, 57.423969, 57.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.745941, 57.482811, 57.627266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970277, 0.078147, 0.229030,
		-0.041325, 0.986028, -0.161369,
		-0.238441, 0.147108, 0.959951,
		67.674408, 57.526943, 57.915253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.435066, 57.939289, 57.478462>,  <67.841316, 57.423969, 57.243286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.435066, 57.939289, 57.478462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.262131, 57.731472, 57.773262>,  <68.158371, 57.606781, 57.950142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.262131, 57.731472, 57.773262>,  <68.435066, 57.939289, 57.478462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.262131, 57.731472, 57.773262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871379, -0.030509, 0.489660,
		-0.231912, 0.853902, 0.465905,
		-0.432336, -0.519538, 0.736998,
		68.132431, 57.575611, 57.994362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.471161, 58.279865, 58.187443>,  <68.435066, 57.939289, 57.478462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.471161, 58.279865, 58.187443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.466972, 57.881088, 58.218414>,  <68.464462, 57.641823, 58.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.466972, 57.881088, 58.218414>,  <68.471161, 58.279865, 58.187443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.466972, 57.881088, 58.218414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778813, 0.040434, 0.625952,
		-0.627169, 0.066861, 0.776009,
		-0.010474, -0.996943, 0.077431,
		68.463829, 57.582005, 58.241642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.991913, 58.144997, 58.592251>,  <68.471161, 58.279865, 58.187443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.991913, 58.144997, 58.592251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.885048, 57.760170, 58.614326>,  <68.820930, 57.529274, 58.627571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.885048, 57.760170, 58.614326>,  <68.991913, 58.144997, 58.592251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.885048, 57.760170, 58.614326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834896, -0.202485, 0.511809,
		-0.481220, 0.182814, 0.857325,
		-0.267161, -0.962070, 0.055190,
		68.804901, 57.471550, 58.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.152596, 57.918655, 59.300747>,  <68.991913, 58.144997, 58.592251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.152596, 57.918655, 59.300747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.144180, 57.621735, 59.032852>,  <69.139130, 57.443581, 58.872116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.144180, 57.621735, 59.032852>,  <69.152596, 57.918655, 59.300747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.144180, 57.621735, 59.032852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860198, -0.354840, 0.366263,
		-0.509526, -0.568395, 0.645996,
		-0.021043, -0.742305, -0.669732,
		69.137871, 57.399044, 58.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.313423, 57.393959, 59.698833>,  <69.152596, 57.918655, 59.300747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.313423, 57.393959, 59.698833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.418243, 57.342144, 59.316307>,  <69.481140, 57.311054, 59.086792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.418243, 57.342144, 59.316307>,  <69.313423, 57.393959, 59.698833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.418243, 57.342144, 59.316307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940589, -0.187426, 0.283131,
		-0.215915, -0.973700, 0.072727,
		0.262054, -0.129539, -0.956320,
		69.496857, 57.303284, 59.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.626083, 56.749863, 59.637142>,  <69.313423, 57.393959, 59.698833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.626083, 56.749863, 59.637142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.815292, 56.972031, 59.363571>,  <69.928818, 57.105331, 59.199429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.815292, 56.972031, 59.363571>,  <69.626083, 56.749863, 59.637142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.815292, 56.972031, 59.363571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880932, -0.285661, 0.377301,
		0.014190, -0.780966, -0.624412,
		0.473030, 0.555418, -0.683925,
		69.957199, 57.138657, 59.158394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.059258, 56.359379, 59.287445>,  <69.626083, 56.749863, 59.637142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.059258, 56.359379, 59.287445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.220810, 56.725277, 59.291931>,  <70.317741, 56.944817, 59.294621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.220810, 56.725277, 59.291931>,  <70.059258, 56.359379, 59.287445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.220810, 56.725277, 59.291931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843290, -0.377025, 0.383032,
		0.354603, -0.145245, -0.923667,
		0.403879, 0.914744, 0.011211,
		70.341972, 56.999699, 59.295296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.644012, 56.534866, 58.730385>,  <70.059258, 56.359379, 59.287445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.644012, 56.534866, 58.730385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703918, 56.758926, 59.056282>,  <70.739861, 56.893364, 59.251820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703918, 56.758926, 59.056282>,  <70.644012, 56.534866, 58.730385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.703918, 56.758926, 59.056282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891072, -0.433545, 0.134276,
		0.428441, 0.705882, -0.564064,
		0.149764, 0.560151, 0.814740,
		70.748848, 56.926971, 59.300705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.144440, 57.090099, 58.639854>,  <70.644012, 56.534866, 58.730385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.144440, 57.090099, 58.639854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.140511, 56.981339, 59.024765>,  <71.138153, 56.916084, 59.255711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.140511, 56.981339, 59.024765>,  <71.144440, 57.090099, 58.639854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.140511, 56.981339, 59.024765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882601, -0.454690, -0.119469,
		0.470020, 0.848132, 0.244445,
		-0.009821, -0.271900, 0.962275,
		71.137566, 56.899769, 59.313446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.698120, 57.387203, 59.056629>,  <71.144440, 57.090099, 58.639854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.698120, 57.387203, 59.056629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.596046, 57.030151, 59.205269>,  <71.534798, 56.815918, 59.294453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.596046, 57.030151, 59.205269>,  <71.698120, 57.387203, 59.056629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.596046, 57.030151, 59.205269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914661, -0.347468, -0.206545,
		0.313487, 0.287178, 0.905127,
		-0.255187, -0.892633, 0.371598,
		71.519493, 56.762360, 59.316750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.306023, 57.183872, 59.340260>,  <71.698120, 57.387203, 59.056629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.306023, 57.183872, 59.340260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.095284, 56.847229, 59.292725>,  <71.968842, 56.645245, 59.264206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.095284, 56.847229, 59.292725>,  <72.306023, 57.183872, 59.340260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.095284, 56.847229, 59.292725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842246, -0.498163, -0.206048,
		0.114213, -0.208645, 0.971300,
		-0.526857, -0.841606, -0.118834,
		71.937225, 56.594746, 59.257076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.670448, 56.707989, 59.692772>,  <72.306023, 57.183872, 59.340260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.670448, 56.707989, 59.692772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.435188, 56.477238, 59.466042>,  <72.294029, 56.338787, 59.330002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.435188, 56.477238, 59.466042>,  <72.670448, 56.707989, 59.692772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.435188, 56.477238, 59.466042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750670, -0.650202, -0.117183,
		-0.300954, -0.494424, 0.815458,
		-0.588150, -0.576873, -0.566830,
		72.258743, 56.304176, 59.295994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.061882, 57.088062, 60.232430>,  <72.670448, 56.707989, 59.692772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.061882, 57.088062, 60.232430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.247246, 57.342163, 60.479561>,  <73.358467, 57.494621, 60.627838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.247246, 57.342163, 60.479561>,  <73.061882, 57.088062, 60.232430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.247246, 57.342163, 60.479561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861982, -0.484850, -0.148014,
		0.205528, 0.601147, -0.772257,
		0.463407, 0.635250, 0.617828,
		73.386269, 57.532738, 60.664909>
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
