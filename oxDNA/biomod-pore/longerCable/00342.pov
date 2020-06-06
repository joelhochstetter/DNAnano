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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.162735, 35.516594, 35.175732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066874, 35.169285, 35.001987>,  <24.009357, 34.960899, 34.897739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.066874, 35.169285, 35.001987>,  <24.162735, 35.516594, 35.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.066874, 35.169285, 35.001987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139697, -0.473586, 0.869598,
		-0.960755, 0.147723, 0.234791,
		-0.239654, -0.868271, -0.434364,
		23.994978, 34.908802, 34.871677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663506, 35.808876, 35.523098>,  <24.162735, 35.516594, 35.175732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663506, 35.808876, 35.523098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978104, 35.581039, 35.618591>,  <25.166862, 35.444336, 35.675888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978104, 35.581039, 35.618591>,  <24.663506, 35.808876, 35.523098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.978104, 35.581039, 35.618591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401833, 0.765488, 0.502551,
		-0.468996, -0.299323, 0.830933,
		0.786494, -0.569591, 0.238733,
		25.214052, 35.410164, 35.690212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751701, 35.897167, 36.184910>,  <24.663506, 35.808876, 35.523098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751701, 35.897167, 36.184910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096579, 35.727879, 36.073547>,  <25.303505, 35.626305, 36.006729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096579, 35.727879, 36.073547>,  <24.751701, 35.897167, 36.184910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096579, 35.727879, 36.073547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501986, 0.639910, 0.581829,
		-0.068084, -0.641405, 0.764175,
		0.862191, -0.423219, -0.278409,
		25.355236, 35.600914, 35.990025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112288, 35.900787, 36.741451>,  <24.751701, 35.897167, 36.184910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112288, 35.900787, 36.741451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346100, 35.914455, 36.417191>,  <25.486387, 35.922657, 36.222633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346100, 35.914455, 36.417191>,  <25.112288, 35.900787, 36.741451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346100, 35.914455, 36.417191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607016, 0.644541, 0.464864,
		0.538383, -0.763805, 0.356013,
		0.584530, 0.034169, -0.810652,
		25.521460, 35.924706, 36.173996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731852, 35.842381, 37.050312>,  <25.112288, 35.900787, 36.741451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731852, 35.842381, 37.050312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784748, 35.975349, 36.676785>,  <25.816486, 36.055130, 36.452667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784748, 35.975349, 36.676785>,  <25.731852, 35.842381, 37.050312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784748, 35.975349, 36.676785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627882, 0.700883, 0.338418,
		0.766991, -0.631079, -0.116033,
		0.132243, 0.332419, -0.933815,
		25.824421, 36.075073, 36.396641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542704, 35.898788, 36.870422>,  <25.731852, 35.842381, 37.050312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542704, 35.898788, 36.870422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294067, 36.143486, 36.674709>,  <26.144886, 36.290302, 36.557281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294067, 36.143486, 36.674709>,  <26.542704, 35.898788, 36.870422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294067, 36.143486, 36.674709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438994, 0.789348, 0.429202,
		0.648777, 0.051994, -0.759200,
		-0.621589, 0.611740, -0.489286,
		26.107592, 36.327007, 36.527924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918585, 36.389599, 36.467873>,  <26.542704, 35.898788, 36.870422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918585, 36.389599, 36.467873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573669, 36.583965, 36.524933>,  <26.366720, 36.700584, 36.559170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573669, 36.583965, 36.524933>,  <26.918585, 36.389599, 36.467873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573669, 36.583965, 36.524933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480737, 0.696842, 0.532261,
		0.159225, 0.527541, -0.834474,
		-0.862287, 0.485912, 0.142653,
		26.314983, 36.729740, 36.567730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126041, 37.058933, 36.472034>,  <26.918585, 36.389599, 36.467873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126041, 37.058933, 36.472034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763456, 37.079742, 36.639664>,  <26.545906, 37.092228, 36.740242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763456, 37.079742, 36.639664>,  <27.126041, 37.058933, 36.472034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763456, 37.079742, 36.639664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326367, 0.716054, 0.617051,
		-0.267979, 0.696104, -0.666053,
		-0.906461, 0.052021, 0.419073,
		26.491518, 37.095348, 36.765385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037445, 37.703587, 36.474926>,  <27.126041, 37.058933, 36.472034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037445, 37.703587, 36.474926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796703, 37.564350, 36.762424>,  <26.652258, 37.480808, 36.934925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796703, 37.564350, 36.762424>,  <27.037445, 37.703587, 36.474926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796703, 37.564350, 36.762424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129710, 0.845446, 0.518070,
		-0.788001, 0.405032, -0.463684,
		-0.601855, -0.348095, 0.718749,
		26.616146, 37.459923, 36.978050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600267, 38.252205, 36.688694>,  <27.037445, 37.703587, 36.474926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600267, 38.252205, 36.688694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584768, 37.997200, 36.996483>,  <26.575470, 37.844196, 37.181156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584768, 37.997200, 36.996483>,  <26.600267, 38.252205, 36.688694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584768, 37.997200, 36.996483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136185, 0.759493, 0.636101,
		-0.989925, 0.129437, 0.057391,
		-0.038747, -0.637508, 0.769469,
		26.573145, 37.805946, 37.227322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138208, 38.586552, 37.011692>,  <26.600267, 38.252205, 36.688694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138208, 38.586552, 37.011692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366350, 38.338886, 37.227592>,  <26.503235, 38.190285, 37.357132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366350, 38.338886, 37.227592>,  <26.138208, 38.586552, 37.011692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366350, 38.338886, 37.227592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238831, 0.753727, 0.612254,
		-0.785909, -0.220294, 0.577769,
		0.570356, -0.619165, 0.539748,
		26.537457, 38.153137, 37.389519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160992, 38.910576, 37.655361>,  <26.138208, 38.586552, 37.011692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160992, 38.910576, 37.655361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449335, 38.633717, 37.641003>,  <26.622341, 38.467602, 37.632385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449335, 38.633717, 37.641003>,  <26.160992, 38.910576, 37.655361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449335, 38.633717, 37.641003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577561, 0.571268, 0.583160,
		-0.383128, -0.441109, 0.811564,
		0.720858, -0.692153, -0.035899,
		26.665592, 38.426071, 37.630234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731173, 39.355282, 37.947174>,  <26.160992, 38.910576, 37.655361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731173, 39.355282, 37.947174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060934, 39.249508, 38.147346>,  <27.258791, 39.186043, 38.267448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060934, 39.249508, 38.147346>,  <26.731173, 39.355282, 37.947174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060934, 39.249508, 38.147346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229419, -0.964382, -0.131657,
		0.517420, -0.006269, -0.855709,
		0.824405, -0.264438, 0.500429,
		27.308256, 39.170177, 38.297474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217295, 39.046238, 37.459064>,  <26.731173, 39.355282, 37.947174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217295, 39.046238, 37.459064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192057, 38.942055, 37.844433>,  <27.176914, 38.879543, 38.075653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192057, 38.942055, 37.844433>,  <27.217295, 39.046238, 37.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192057, 38.942055, 37.844433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247605, -0.931078, -0.267928,
		0.966805, -0.255453, -0.005745,
		-0.063094, -0.260457, 0.963422,
		27.173128, 38.863918, 38.133461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609549, 38.446918, 37.596905>,  <27.217295, 39.046238, 37.459064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609549, 38.446918, 37.596905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316082, 38.411476, 37.866390>,  <27.140003, 38.390209, 38.028080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316082, 38.411476, 37.866390>,  <27.609549, 38.446918, 37.596905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316082, 38.411476, 37.866390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202221, -0.918069, -0.340963,
		0.648724, -0.386391, 0.655637,
		-0.733665, -0.088607, 0.673710,
		27.095982, 38.384895, 38.068504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573730, 37.776337, 37.900555>,  <27.609549, 38.446918, 37.596905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573730, 37.776337, 37.900555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206036, 37.920059, 37.964939>,  <26.985418, 38.006290, 38.003571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206036, 37.920059, 37.964939>,  <27.573730, 37.776337, 37.900555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206036, 37.920059, 37.964939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390922, -0.784415, -0.481531,
		-0.046759, -0.505562, 0.861522,
		-0.919235, 0.359304, 0.160957,
		26.930265, 38.027851, 38.013226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109825, 37.281437, 38.272881>,  <27.573730, 37.776337, 37.900555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109825, 37.281437, 38.272881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871847, 37.530010, 38.068970>,  <26.729061, 37.679153, 37.946625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871847, 37.530010, 38.068970>,  <27.109825, 37.281437, 38.272881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871847, 37.530010, 38.068970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357134, -0.772563, -0.524977,
		-0.720067, -0.130275, 0.681566,
		-0.594944, 0.621429, -0.509771,
		26.693365, 37.716438, 37.916039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476151, 36.892971, 38.132816>,  <27.109825, 37.281437, 38.272881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476151, 36.892971, 38.132816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509180, 37.171871, 37.847996>,  <26.528997, 37.339211, 37.677101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509180, 37.171871, 37.847996>,  <26.476151, 36.892971, 38.132816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509180, 37.171871, 37.847996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520325, -0.579216, -0.627512,
		-0.849967, 0.422315, 0.314969,
		0.082573, 0.697250, -0.712056,
		26.533953, 37.381046, 37.634380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822571, 36.905262, 37.890411>,  <26.476151, 36.892971, 38.132816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822571, 36.905262, 37.890411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048801, 37.101826, 37.625492>,  <26.184540, 37.219765, 37.466541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048801, 37.101826, 37.625492>,  <25.822571, 36.905262, 37.890411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048801, 37.101826, 37.625492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557886, -0.363458, -0.746098,
		-0.607358, 0.791462, 0.068588,
		0.565579, 0.491413, -0.662294,
		26.218475, 37.249249, 37.426804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398989, 37.242828, 37.395287>,  <25.822571, 36.905262, 37.890411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398989, 37.242828, 37.395287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734879, 37.215469, 37.179813>,  <25.936413, 37.199055, 37.050529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734879, 37.215469, 37.179813>,  <25.398989, 37.242828, 37.395287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734879, 37.215469, 37.179813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491116, -0.518877, -0.699693,
		-0.231657, 0.852108, -0.469304,
		0.839726, -0.068394, -0.538686,
		25.986795, 37.194950, 37.018208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814871, 37.772354, 37.113819>,  <25.398989, 37.242828, 37.395287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814871, 37.772354, 37.113819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586319, 37.550877, 37.356125>,  <24.449188, 37.417992, 37.501511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586319, 37.550877, 37.356125>,  <24.814871, 37.772354, 37.113819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586319, 37.550877, 37.356125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649418, 0.146254, 0.746234,
		-0.501780, 0.819778, 0.276011,
		-0.571378, -0.553692, 0.605766,
		24.414906, 37.384769, 37.537853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131168, 37.201378, 36.668736>,  <24.814871, 37.772354, 37.113819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131168, 37.201378, 36.668736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507111, 37.067848, 36.639797>,  <25.732676, 36.987732, 36.622437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507111, 37.067848, 36.639797>,  <25.131168, 37.201378, 36.668736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507111, 37.067848, 36.639797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259912, -0.561520, -0.785583,
		0.221624, 0.757137, -0.614513,
		0.939855, -0.333824, -0.072343,
		25.789066, 36.967701, 36.618095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285225, 37.221886, 35.960629>,  <25.131168, 37.201378, 36.668736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285225, 37.221886, 35.960629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560406, 36.972824, 36.109776>,  <25.725513, 36.823387, 36.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560406, 36.972824, 36.109776>,  <25.285225, 37.221886, 35.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560406, 36.972824, 36.109776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079269, -0.575150, -0.814198,
		0.721414, 0.530573, -0.445033,
		0.687952, -0.622651, 0.372864,
		25.766792, 36.786030, 36.221634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721916, 36.977482, 35.392658>,  <25.285225, 37.221886, 35.960629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721916, 36.977482, 35.392658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749901, 36.713726, 35.692074>,  <25.766691, 36.555473, 35.871723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749901, 36.713726, 35.692074>,  <25.721916, 36.977482, 35.392658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749901, 36.713726, 35.692074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194173, -0.745029, -0.638145,
		0.978469, -0.100700, -0.180160,
		0.069964, -0.659387, 0.748541,
		25.770889, 36.515911, 35.916637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287809, 36.423496, 35.172859>,  <25.721916, 36.977482, 35.392658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287809, 36.423496, 35.172859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141077, 36.316975, 35.529400>,  <26.053038, 36.253059, 35.743324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141077, 36.316975, 35.529400>,  <26.287809, 36.423496, 35.172859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141077, 36.316975, 35.529400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307937, -0.869377, -0.386469,
		0.877843, -0.416251, 0.236910,
		-0.366832, -0.266306, 0.891356,
		26.031027, 36.237083, 35.796806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454216, 35.769478, 35.307133>,  <26.287809, 36.423496, 35.172859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454216, 35.769478, 35.307133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148991, 35.816433, 35.561363>,  <25.965855, 35.844604, 35.713902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148991, 35.816433, 35.561363>,  <26.454216, 35.769478, 35.307133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148991, 35.816433, 35.561363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330905, -0.915665, -0.228166,
		0.555191, -0.384420, 0.737553,
		-0.763063, 0.117384, 0.635575,
		25.920073, 35.851646, 35.752037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435596, 35.045990, 35.681168>,  <26.454216, 35.769478, 35.307133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435596, 35.045990, 35.681168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095444, 35.242500, 35.756535>,  <25.891352, 35.360405, 35.801754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095444, 35.242500, 35.756535>,  <26.435596, 35.045990, 35.681168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095444, 35.242500, 35.756535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518411, -0.843539, -0.140329,
		0.089997, -0.217010, 0.972012,
		-0.850383, 0.491272, 0.188416,
		25.840328, 35.389881, 35.813061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194901, 34.695335, 36.212372>,  <26.435596, 35.045990, 35.681168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194901, 34.695335, 36.212372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905233, 34.868923, 35.997990>,  <25.731434, 34.973076, 35.869358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905233, 34.868923, 35.997990>,  <26.194901, 34.695335, 36.212372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905233, 34.868923, 35.997990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464265, -0.881469, -0.086436,
		-0.509941, 0.186233, 0.839808,
		-0.724168, 0.433971, -0.535958,
		25.687983, 34.999115, 35.837204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834486, 35.115757, 36.305672>,  <26.194901, 34.695335, 36.212372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834486, 35.115757, 36.305672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143696, 34.916756, 36.463112>,  <27.329222, 34.797356, 36.557575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143696, 34.916756, 36.463112>,  <26.834486, 35.115757, 36.305672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143696, 34.916756, 36.463112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549603, 0.215370, -0.807188,
		0.316807, 0.840302, 0.439915,
		0.773026, -0.497502, 0.393602,
		27.375605, 34.767506, 36.581192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480495, 35.586559, 36.229866>,  <26.834486, 35.115757, 36.305672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480495, 35.586559, 36.229866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583075, 35.203472, 36.282047>,  <27.644623, 34.973621, 36.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583075, 35.203472, 36.282047>,  <27.480495, 35.586559, 36.229866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583075, 35.203472, 36.282047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424557, -0.009640, -0.905350,
		0.868323, 0.287563, 0.404131,
		0.256450, -0.957713, 0.130458,
		27.660009, 34.916157, 36.321186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192509, 35.554150, 36.006256>,  <27.480495, 35.586559, 36.229866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192509, 35.554150, 36.006256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061531, 35.176308, 36.015232>,  <27.982944, 34.949604, 36.020618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061531, 35.176308, 36.015232>,  <28.192509, 35.554150, 36.006256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061531, 35.176308, 36.015232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591537, -0.223455, -0.774695,
		0.736794, -0.240395, 0.631937,
		-0.327443, -0.944605, 0.022438,
		27.963299, 34.892925, 36.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760935, 35.107319, 35.915203>,  <28.192509, 35.554150, 36.006256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760935, 35.107319, 35.915203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460793, 34.881371, 35.777866>,  <28.280706, 34.745800, 35.695465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460793, 34.881371, 35.777866>,  <28.760935, 35.107319, 35.915203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460793, 34.881371, 35.777866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560371, -0.268049, -0.783667,
		0.350641, -0.780428, 0.517671,
		-0.750357, -0.564874, -0.343340,
		28.235685, 34.711910, 35.674866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989143, 34.396172, 35.763260>,  <28.760935, 35.107319, 35.915203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989143, 34.396172, 35.763260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652723, 34.436886, 35.550743>,  <28.450871, 34.461315, 35.423233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652723, 34.436886, 35.550743>,  <28.989143, 34.396172, 35.763260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652723, 34.436886, 35.550743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464317, -0.368105, -0.805548,
		-0.277568, -0.924195, 0.262333,
		-0.841050, 0.101788, -0.531294,
		28.400408, 34.467422, 35.391354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092365, 33.894077, 35.268208>,  <28.989143, 34.396172, 35.763260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092365, 33.894077, 35.268208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812872, 34.135284, 35.114250>,  <28.645176, 34.280010, 35.021877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812872, 34.135284, 35.114250>,  <29.092365, 33.894077, 35.268208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812872, 34.135284, 35.114250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396454, -0.121440, -0.909987,
		-0.595482, -0.788428, -0.154216,
		-0.698731, 0.603020, -0.384891,
		28.603252, 34.316189, 34.998783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655897, 33.197338, 35.259525>,  <29.092365, 33.894077, 35.268208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655897, 33.197338, 35.259525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934147, 32.915810, 35.317139>,  <29.101097, 32.746895, 35.351707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934147, 32.915810, 35.317139>,  <28.655897, 33.197338, 35.259525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934147, 32.915810, 35.317139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702633, -0.708320, -0.067749,
		0.149708, -0.054078, -0.987250,
		0.695626, -0.703817, 0.144038,
		29.142834, 32.704666, 35.360352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800621, 32.805168, 34.665634>,  <28.655897, 33.197338, 35.259525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800621, 32.805168, 34.665634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809738, 32.639660, 35.029671>,  <28.815208, 32.540356, 35.248093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809738, 32.639660, 35.029671>,  <28.800621, 32.805168, 34.665634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809738, 32.639660, 35.029671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843985, -0.495921, -0.204330,
		0.535882, -0.763449, -0.360522,
		0.022795, -0.413772, 0.910095,
		28.816576, 32.515530, 35.302700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886763, 33.554512, 34.524773>,  <28.800621, 32.805168, 34.665634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886763, 33.554512, 34.524773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754427, 33.931877, 34.515663>,  <28.675026, 34.158295, 34.510197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754427, 33.931877, 34.515663>,  <28.886763, 33.554512, 34.524773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754427, 33.931877, 34.515663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239262, 0.060507, -0.969068,
		-0.912853, -0.326053, -0.245741,
		-0.330837, 0.943413, -0.022778,
		28.655176, 34.214901, 34.508831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529896, 33.593449, 33.868668>,  <28.886763, 33.554512, 34.524773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529896, 33.593449, 33.868668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603701, 33.970791, 33.978966>,  <28.647984, 34.197197, 34.045143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603701, 33.970791, 33.978966>,  <28.529896, 33.593449, 33.868668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603701, 33.970791, 33.978966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331175, 0.204475, -0.921148,
		-0.925353, 0.261282, -0.274688,
		0.184512, 0.943357, 0.275742,
		28.659054, 34.253799, 34.061687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226658, 33.999870, 33.380451>,  <28.529896, 33.593449, 33.868668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226658, 33.999870, 33.380451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517883, 34.210533, 33.555977>,  <28.692619, 34.336929, 33.661293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517883, 34.210533, 33.555977>,  <28.226658, 33.999870, 33.380451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517883, 34.210533, 33.555977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335490, 0.284485, -0.898062,
		-0.597805, 0.801064, 0.030435,
		0.728063, 0.526655, 0.438816,
		28.736301, 34.368530, 33.687622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255093, 34.721264, 33.046413>,  <28.226658, 33.999870, 33.380451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255093, 34.721264, 33.046413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606615, 34.588791, 33.183826>,  <28.817530, 34.509308, 33.266273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606615, 34.588791, 33.183826>,  <28.255093, 34.721264, 33.046413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606615, 34.588791, 33.183826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446546, 0.317008, -0.836721,
		0.168205, 0.888720, 0.426478,
		0.878808, -0.331182, 0.343532,
		28.870258, 34.489437, 33.286884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767956, 35.293911, 33.005566>,  <28.255093, 34.721264, 33.046413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767956, 35.293911, 33.005566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916937, 34.926682, 32.951283>,  <29.006325, 34.706345, 32.918713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916937, 34.926682, 32.951283>,  <28.767956, 35.293911, 33.005566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916937, 34.926682, 32.951283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509861, 0.324607, -0.796663,
		0.775449, 0.227525, 0.588992,
		0.372452, -0.918075, -0.135710,
		29.028673, 34.651260, 32.910568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390812, 35.033123, 33.394852>,  <28.767956, 35.293911, 33.005566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390812, 35.033123, 33.394852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310852, 34.914776, 33.021221>,  <29.262877, 34.843769, 32.797043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310852, 34.914776, 33.021221>,  <29.390812, 35.033123, 33.394852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310852, 34.914776, 33.021221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670580, 0.653767, -0.350587,
		0.714397, -0.696456, 0.067715,
		-0.199899, -0.295866, -0.934079,
		29.250883, 34.826015, 32.740997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878677, 35.517567, 33.695873>,  <29.390812, 35.033123, 33.394852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878677, 35.517567, 33.695873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018106, 35.888927, 33.644394>,  <30.101763, 36.111744, 33.613506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018106, 35.888927, 33.644394>,  <29.878677, 35.517567, 33.695873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018106, 35.888927, 33.644394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671856, 0.151748, -0.724971,
		-0.653535, 0.339174, 0.676648,
		0.348572, 0.928404, -0.128703,
		30.122679, 36.167450, 33.605782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458124, 35.139194, 34.107727>,  <29.878677, 35.517567, 33.695873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458124, 35.139194, 34.107727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144678, 34.971798, 33.924068>,  <28.956612, 34.871361, 33.813873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144678, 34.971798, 33.924068>,  <29.458124, 35.139194, 34.107727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144678, 34.971798, 33.924068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489115, -0.040083, 0.871298,
		-0.383035, 0.907336, -0.173282,
		-0.783614, -0.418492, -0.459145,
		28.909594, 34.846249, 33.786324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804546, 35.497520, 34.324123>,  <29.458124, 35.139194, 34.107727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804546, 35.497520, 34.324123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752922, 35.108315, 34.247616>,  <28.721947, 34.874790, 34.201710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752922, 35.108315, 34.247616>,  <28.804546, 35.497520, 34.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752922, 35.108315, 34.247616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439287, -0.116825, 0.890718,
		-0.889027, 0.198981, -0.412356,
		-0.129062, -0.973015, -0.191270,
		28.714203, 34.816410, 34.190235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252914, 35.460510, 34.609238>,  <28.804546, 35.497520, 34.324123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252914, 35.460510, 34.609238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378811, 35.084213, 34.558727>,  <28.454350, 34.858437, 34.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378811, 35.084213, 34.558727>,  <28.252914, 35.460510, 34.609238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378811, 35.084213, 34.558727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519909, -0.282176, 0.806270,
		-0.794123, -0.188114, -0.577912,
		0.314743, -0.940739, -0.126281,
		28.473234, 34.801991, 34.520844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707661, 35.040642, 34.497940>,  <28.252914, 35.460510, 34.609238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707661, 35.040642, 34.497940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003130, 34.834785, 34.672070>,  <28.180412, 34.711273, 34.776546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003130, 34.834785, 34.672070>,  <27.707661, 35.040642, 34.497940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003130, 34.834785, 34.672070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619851, -0.264851, 0.738674,
		-0.264851, -0.815477, -0.514636,
		-0.738674, 0.514636, -0.435328,
		28.224731, 34.680393, 34.802670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288374, 34.472397, 34.788757>,  <27.707661, 35.040642, 34.497940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288374, 34.472397, 34.788757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646030, 34.467297, 34.967800>,  <27.860624, 34.464237, 35.075226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646030, 34.467297, 34.967800>,  <27.288374, 34.472397, 34.788757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646030, 34.467297, 34.967800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446856, -0.089789, 0.890089,
		0.028840, -0.995879, -0.085982,
		0.894141, -0.012751, 0.447604,
		27.914272, 34.463470, 35.102081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260231, 33.936104, 35.407516>,  <27.288374, 34.472397, 34.788757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260231, 33.936104, 35.407516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566856, 34.182655, 35.479584>,  <27.750832, 34.330585, 35.522823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566856, 34.182655, 35.479584>,  <27.260231, 33.936104, 35.407516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566856, 34.182655, 35.479584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189575, -0.050853, 0.980548,
		0.613550, -0.785807, 0.077868,
		0.766562, 0.616378, 0.180171,
		27.796825, 34.367569, 35.533634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650341, 33.655708, 35.874332>,  <27.260231, 33.936104, 35.407516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650341, 33.655708, 35.874332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771338, 34.032703, 35.931202>,  <27.843935, 34.258900, 35.965324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771338, 34.032703, 35.931202>,  <27.650341, 33.655708, 35.874332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771338, 34.032703, 35.931202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205439, -0.081191, 0.975296,
		0.930749, -0.324227, 0.169064,
		0.302491, 0.942488, 0.142177,
		27.862085, 34.315449, 35.973854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070438, 33.683884, 36.456680>,  <27.650341, 33.655708, 35.874332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070438, 33.683884, 36.456680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957687, 34.066605, 36.428162>,  <27.890038, 34.296238, 36.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957687, 34.066605, 36.428162>,  <28.070438, 33.683884, 36.456680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957687, 34.066605, 36.428162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277813, -0.010269, 0.960580,
		0.918349, 0.290573, 0.268706,
		-0.281878, 0.956798, -0.071294,
		27.873123, 34.353645, 36.406773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304909, 34.055347, 36.963608>,  <28.070438, 33.683884, 36.456680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304909, 34.055347, 36.963608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963905, 34.196682, 36.809528>,  <27.759302, 34.281483, 36.717079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963905, 34.196682, 36.809528>,  <28.304909, 34.055347, 36.963608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963905, 34.196682, 36.809528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420783, -0.026710, 0.906768,
		0.310108, 0.935114, 0.171450,
		-0.852511, 0.353339, -0.385197,
		27.708153, 34.302685, 36.693970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909340, 34.157391, 37.489780>,  <28.304909, 34.055347, 36.963608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909340, 34.157391, 37.489780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608232, 34.163269, 37.226532>,  <27.427568, 34.166798, 37.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608232, 34.163269, 37.226532>,  <27.909340, 34.157391, 37.489780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608232, 34.163269, 37.226532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649069, -0.183277, 0.738321,
		-0.109768, 0.982951, 0.147504,
		-0.752768, 0.014696, -0.658122,
		27.382402, 34.167679, 37.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251810, 34.368122, 38.173458>,  <27.909340, 34.157391, 37.489780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251810, 34.368122, 38.173458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380913, 34.313412, 37.798840>,  <28.458374, 34.280586, 37.574070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380913, 34.313412, 37.798840>,  <28.251810, 34.368122, 38.173458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380913, 34.313412, 37.798840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935996, -0.100761, 0.337282,
		-0.140501, -0.985464, 0.095503,
		0.322756, -0.136779, -0.936547,
		28.477739, 34.272377, 37.517876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644972, 33.818199, 38.165886>,  <28.251810, 34.368122, 38.173458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644972, 33.818199, 38.165886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768450, 34.030964, 37.850475>,  <28.842537, 34.158623, 37.661228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768450, 34.030964, 37.850475>,  <28.644972, 33.818199, 38.165886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768450, 34.030964, 37.850475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951012, -0.157926, 0.265774,
		0.016840, -0.831941, -0.554609,
		0.308695, 0.531915, -0.788526,
		28.861059, 34.190540, 37.613918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103073, 33.375656, 37.665028>,  <28.644972, 33.818199, 38.165886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103073, 33.375656, 37.665028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205748, 33.761513, 37.641083>,  <29.267353, 33.993027, 37.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205748, 33.761513, 37.641083>,  <29.103073, 33.375656, 37.665028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205748, 33.761513, 37.641083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954313, -0.243162, 0.173663,
		0.152965, -0.101707, -0.982984,
		0.256687, 0.964639, -0.059865,
		29.282753, 34.050903, 37.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574797, 33.399513, 37.251179>,  <29.103073, 33.375656, 37.665028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574797, 33.399513, 37.251179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626879, 33.740894, 37.453037>,  <29.658129, 33.945721, 37.574154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626879, 33.740894, 37.453037>,  <29.574797, 33.399513, 37.251179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626879, 33.740894, 37.453037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985924, -0.165291, 0.025158,
		0.104885, 0.494269, -0.862958,
		0.130205, 0.853450, 0.504648,
		29.665939, 33.996929, 37.604431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214624, 33.645699, 36.963558>,  <29.574797, 33.399513, 37.251179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214624, 33.645699, 36.963558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142939, 33.869354, 37.287350>,  <30.099928, 34.003548, 37.481625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142939, 33.869354, 37.287350>,  <30.214624, 33.645699, 36.963558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142939, 33.869354, 37.287350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983323, 0.075903, 0.165273,
		0.030968, 0.825595, -0.563413,
		-0.179214, 0.559135, 0.809476,
		30.089174, 34.037094, 37.530193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525509, 34.367981, 36.952591>,  <30.214624, 33.645699, 36.963558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525509, 34.367981, 36.952591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509432, 34.174732, 37.302441>,  <30.499786, 34.058781, 37.512352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509432, 34.174732, 37.302441>,  <30.525509, 34.367981, 36.952591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509432, 34.174732, 37.302441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991007, 0.092538, 0.096657,
		-0.127633, 0.870647, 0.475061,
		-0.040193, -0.483125, 0.874628,
		30.497374, 34.029793, 37.564831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675222, 34.849220, 37.386387>,  <30.525509, 34.367981, 36.952591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675222, 34.849220, 37.386387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767166, 34.478802, 37.506115>,  <30.822332, 34.256550, 37.577953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767166, 34.478802, 37.506115>,  <30.675222, 34.849220, 37.386387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767166, 34.478802, 37.506115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912108, 0.312255, 0.265623,
		-0.339446, 0.211958, 0.916434,
		0.229860, -0.926051, 0.299322,
		30.836124, 34.200985, 37.595913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222593, 34.996662, 37.778008>,  <30.675222, 34.849220, 37.386387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222593, 34.996662, 37.778008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230362, 34.600693, 37.721889>,  <31.235023, 34.363113, 37.688221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230362, 34.600693, 37.721889>,  <31.222593, 34.996662, 37.778008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230362, 34.600693, 37.721889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973833, -0.013047, 0.226892,
		-0.226435, -0.141026, 0.963763,
		0.019423, -0.989920, -0.140290,
		31.236189, 34.303719, 37.679802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489796, 34.551102, 38.342491>,  <31.222593, 34.996662, 37.778008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489796, 34.551102, 38.342491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555553, 34.387100, 37.983631>,  <31.595009, 34.288700, 37.768314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555553, 34.387100, 37.983631>,  <31.489796, 34.551102, 38.342491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555553, 34.387100, 37.983631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941618, -0.205690, 0.266546,
		-0.293820, -0.888587, 0.352255,
		0.164394, -0.410006, -0.897145,
		31.604872, 34.264099, 37.714489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912327, 33.931854, 38.395130>,  <31.489796, 34.551102, 38.342491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912327, 33.931854, 38.395130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962383, 34.074997, 38.024990>,  <31.992416, 34.160881, 37.802906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962383, 34.074997, 38.024990>,  <31.912327, 33.931854, 38.395130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962383, 34.074997, 38.024990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974461, -0.219615, 0.046850,
		-0.186456, -0.907584, -0.376199,
		0.125140, 0.357856, -0.925353,
		31.999926, 34.182354, 37.747383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154236, 33.409416, 37.852055>,  <31.912327, 33.931854, 38.395130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154236, 33.409416, 37.852055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278584, 33.782467, 37.778778>,  <32.353191, 34.006298, 37.734814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278584, 33.782467, 37.778778>,  <32.154236, 33.409416, 37.852055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278584, 33.782467, 37.778778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949963, -0.298709, 0.091340,
		0.030465, -0.202419, -0.978825,
		0.310873, 0.932630, -0.183191,
		32.371845, 34.062256, 37.723820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873531, 33.709579, 37.631390>,  <32.154236, 33.409416, 37.852055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873531, 33.709579, 37.631390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878475, 33.371876, 37.417072>,  <32.881443, 33.169254, 37.288483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878475, 33.371876, 37.417072>,  <32.873531, 33.709579, 37.631390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878475, 33.371876, 37.417072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250831, 0.521318, -0.815666,
		0.967952, -0.124313, 0.218209,
		0.012359, -0.844259, -0.535793,
		32.882183, 33.118599, 37.256336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489521, 33.568787, 37.311916>,  <32.873531, 33.709579, 37.631390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489521, 33.568787, 37.311916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207943, 33.378475, 37.100975>,  <33.038998, 33.264290, 36.974411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207943, 33.378475, 37.100975>,  <33.489521, 33.568787, 37.311916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207943, 33.378475, 37.100975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387917, 0.364412, -0.846596,
		0.594966, -0.800523, -0.071962,
		-0.703943, -0.475780, -0.527349,
		32.996761, 33.235741, 36.942772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740540, 33.043655, 36.722935>,  <33.489521, 33.568787, 37.311916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740540, 33.043655, 36.722935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415951, 33.277096, 36.710766>,  <33.221199, 33.417160, 36.703465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415951, 33.277096, 36.710766>,  <33.740540, 33.043655, 36.722935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415951, 33.277096, 36.710766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348653, 0.441689, -0.826651,
		-0.468995, -0.681411, -0.561892,
		-0.811470, 0.583601, -0.030426,
		33.172508, 33.452175, 36.701637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559521, 33.013763, 36.112968>,  <33.740540, 33.043655, 36.722935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559521, 33.013763, 36.112968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457584, 33.371525, 36.259987>,  <33.396423, 33.586182, 36.348198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457584, 33.371525, 36.259987>,  <33.559521, 33.013763, 36.112968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457584, 33.371525, 36.259987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355250, 0.440113, -0.824681,
		-0.899363, -0.079592, -0.429897,
		-0.254842, 0.894408, 0.367546,
		33.381130, 33.639847, 36.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925476, 33.140533, 35.829216>,  <33.559521, 33.013763, 36.112968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925476, 33.140533, 35.829216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112381, 33.474148, 35.946552>,  <33.224522, 33.674316, 36.016956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112381, 33.474148, 35.946552>,  <32.925476, 33.140533, 35.829216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112381, 33.474148, 35.946552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118526, 0.269704, -0.955621,
		-0.876139, 0.481292, 0.027167,
		0.467259, 0.834037, 0.293344,
		33.252560, 33.724358, 36.034557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558994, 33.766251, 35.474556>,  <32.925476, 33.140533, 35.829216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558994, 33.766251, 35.474556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935993, 33.859146, 35.570690>,  <33.162193, 33.914883, 35.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935993, 33.859146, 35.570690>,  <32.558994, 33.766251, 35.474556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935993, 33.859146, 35.570690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195562, 0.199929, -0.960096,
		-0.271021, 0.951890, 0.143016,
		0.942498, 0.232237, 0.240339,
		33.218742, 33.928818, 35.642792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622665, 34.280163, 35.047737>,  <32.558994, 33.766251, 35.474556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622665, 34.280163, 35.047737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984592, 34.155815, 35.164127>,  <33.201748, 34.081207, 35.233963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984592, 34.155815, 35.164127>,  <32.622665, 34.280163, 35.047737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984592, 34.155815, 35.164127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377899, 0.271376, -0.885182,
		0.196215, 0.910886, 0.363024,
		0.904816, -0.310872, 0.290975,
		33.256039, 34.062553, 35.251419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988876, 34.751007, 34.812645>,  <32.622665, 34.280163, 35.047737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988876, 34.751007, 34.812645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260128, 34.460938, 34.860413>,  <33.422878, 34.286896, 34.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260128, 34.460938, 34.860413>,  <32.988876, 34.751007, 34.812645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260128, 34.460938, 34.860413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393981, 0.221519, -0.892025,
		0.620422, 0.651955, 0.435924,
		0.678126, -0.725178, 0.119422,
		33.463566, 34.243385, 34.896240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579605, 35.089100, 34.647850>,  <32.988876, 34.751007, 34.812645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579605, 35.089100, 34.647850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623592, 34.694756, 34.597286>,  <33.649982, 34.458149, 34.566948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623592, 34.694756, 34.597286>,  <33.579605, 35.089100, 34.647850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623592, 34.694756, 34.597286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409744, 0.160831, -0.897910,
		0.905548, 0.046945, 0.421638,
		0.109965, -0.985865, -0.126405,
		33.656582, 34.398994, 34.559364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177841, 35.075775, 34.476696>,  <33.579605, 35.089100, 34.647850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177841, 35.075775, 34.476696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022202, 34.736378, 34.333218>,  <33.928818, 34.532742, 34.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022202, 34.736378, 34.333218>,  <34.177841, 35.075775, 34.476696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022202, 34.736378, 34.333218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346327, 0.226074, -0.910466,
		0.853614, -0.478490, 0.205889,
		-0.389103, -0.848491, -0.358694,
		33.905472, 34.481831, 34.225609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642906, 34.710659, 34.053326>,  <34.177841, 35.075775, 34.476696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642906, 34.710659, 34.053326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294586, 34.555569, 33.932407>,  <34.085594, 34.462513, 33.859856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294586, 34.555569, 33.932407>,  <34.642906, 34.710659, 34.053326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294586, 34.555569, 33.932407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250438, 0.179303, -0.951384,
		0.423080, -0.904167, -0.059035,
		-0.870795, -0.387727, -0.302297,
		34.033348, 34.439251, 33.841717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841732, 34.288067, 33.483135>,  <34.642906, 34.710659, 34.053326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841732, 34.288067, 33.483135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447609, 34.339977, 33.438732>,  <34.211136, 34.371124, 33.412090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447609, 34.339977, 33.438732>,  <34.841732, 34.288067, 33.483135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447609, 34.339977, 33.438732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143270, 0.274367, -0.950892,
		-0.092949, -0.952827, -0.288930,
		-0.985309, 0.129779, -0.111009,
		34.152016, 34.378910, 33.405430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664047, 33.892433, 32.879578>,  <34.841732, 34.288067, 33.483135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664047, 33.892433, 32.879578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357353, 34.146259, 32.918457>,  <34.173336, 34.298557, 32.941784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357353, 34.146259, 32.918457>,  <34.664047, 33.892433, 32.879578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357353, 34.146259, 32.918457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049896, 0.092037, -0.994505,
		-0.640027, -0.767367, -0.038905,
		-0.766731, 0.634568, 0.097195,
		34.127335, 34.336628, 32.947617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245682, 33.794991, 32.328793>,  <34.664047, 33.892433, 32.879578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245682, 33.794991, 32.328793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091057, 34.143681, 32.449234>,  <33.998283, 34.352894, 32.521500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091057, 34.143681, 32.449234>,  <34.245682, 33.794991, 32.328793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091057, 34.143681, 32.449234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290782, 0.194633, -0.936784,
		-0.875225, -0.449677, 0.178246,
		-0.386558, 0.871727, 0.301105,
		33.975090, 34.405197, 32.539566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554012, 33.735809, 32.049831>,  <34.245682, 33.794991, 32.328793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554012, 33.735809, 32.049831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666195, 34.115856, 32.104424>,  <33.733505, 34.343884, 32.137180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666195, 34.115856, 32.104424>,  <33.554012, 33.735809, 32.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666195, 34.115856, 32.104424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244895, 0.208312, -0.946907,
		-0.928099, 0.232146, 0.291102,
		0.280460, 0.950113, 0.136483,
		33.750332, 34.400890, 32.145367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010326, 34.167480, 31.736145>,  <33.554012, 33.735809, 32.049831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010326, 34.167480, 31.736145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345608, 34.384865, 31.754293>,  <33.546776, 34.515297, 31.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345608, 34.384865, 31.754293>,  <33.010326, 34.167480, 31.736145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345608, 34.384865, 31.754293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097751, 0.231573, -0.967894,
		-0.536521, 0.806860, 0.247230,
		0.838207, 0.543462, 0.045372,
		33.597069, 34.547905, 31.767904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809898, 34.785637, 31.437660>,  <33.010326, 34.167480, 31.736145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809898, 34.785637, 31.437660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209568, 34.796631, 31.425661>,  <33.449368, 34.803226, 31.418461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209568, 34.796631, 31.425661>,  <32.809898, 34.785637, 31.437660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209568, 34.796631, 31.425661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036479, 0.278776, -0.959663,
		-0.018014, 0.959963, 0.279548,
		0.999172, 0.027485, -0.029997,
		33.509319, 34.804874, 31.416662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900719, 35.353142, 31.208063>,  <32.809898, 34.785637, 31.437660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900719, 35.353142, 31.208063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258736, 35.180954, 31.161407>,  <33.473545, 35.077641, 31.133413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258736, 35.180954, 31.161407>,  <32.900719, 35.353142, 31.208063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258736, 35.180954, 31.161407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045633, 0.348550, -0.936179,
		0.443648, 0.832594, 0.331609,
		0.895039, -0.430466, -0.116640,
		33.527248, 35.051815, 31.126415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367279, 35.840343, 31.089884>,  <32.900719, 35.353142, 31.208063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367279, 35.840343, 31.089884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536743, 35.518585, 30.923294>,  <33.638424, 35.325531, 30.823341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536743, 35.518585, 30.923294>,  <33.367279, 35.840343, 31.089884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536743, 35.518585, 30.923294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038623, 0.475399, -0.878922,
		0.904996, 0.356282, 0.232478,
		0.423663, -0.804400, -0.416473,
		33.663841, 35.277264, 30.798351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994102, 36.025360, 30.674183>,  <33.367279, 35.840343, 31.089884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994102, 36.025360, 30.674183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893978, 35.668350, 30.524118>,  <33.833904, 35.454144, 30.434080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893978, 35.668350, 30.524118>,  <33.994102, 36.025360, 30.674183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893978, 35.668350, 30.524118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120447, 0.355779, -0.926776,
		0.960644, -0.277169, 0.018446,
		-0.250311, -0.892524, -0.375161,
		33.818886, 35.400593, 30.411570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491833, 36.004356, 30.115725>,  <33.994102, 36.025360, 30.674183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491833, 36.004356, 30.115725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220963, 35.724838, 30.023537>,  <34.058441, 35.557129, 29.968224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220963, 35.724838, 30.023537>,  <34.491833, 36.004356, 30.115725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220963, 35.724838, 30.023537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184718, 0.141742, -0.972517,
		0.712258, -0.701137, 0.033096,
		-0.677176, -0.698796, -0.230469,
		34.017811, 35.515198, 29.954395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798878, 35.627327, 29.620287>,  <34.491833, 36.004356, 30.115725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798878, 35.627327, 29.620287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412312, 35.532784, 29.579950>,  <34.180370, 35.476055, 29.555748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412312, 35.532784, 29.579950>,  <34.798878, 35.627327, 29.620287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412312, 35.532784, 29.579950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092673, 0.045452, -0.994659,
		0.239684, -0.970601, -0.022021,
		-0.966418, -0.236364, -0.100842,
		34.122387, 35.461876, 29.549698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778679, 35.091991, 29.104319>,  <34.798878, 35.627327, 29.620287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778679, 35.091991, 29.104319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422630, 35.274105, 29.112349>,  <34.209000, 35.383373, 29.117167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422630, 35.274105, 29.112349>,  <34.778679, 35.091991, 29.104319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422630, 35.274105, 29.112349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048027, 0.137517, -0.989334,
		-0.453189, -0.879662, -0.144273,
		-0.890119, 0.455285, 0.020074,
		34.155594, 35.410690, 29.118370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354107, 34.930687, 28.412693>,  <34.778679, 35.091991, 29.104319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354107, 34.930687, 28.412693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184578, 35.263397, 28.556099>,  <34.082859, 35.463024, 28.642141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184578, 35.263397, 28.556099>,  <34.354107, 34.930687, 28.412693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184578, 35.263397, 28.556099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046993, 0.375094, -0.925795,
		-0.904525, -0.409220, -0.119885,
		-0.423822, 0.831771, 0.358512,
		34.057430, 35.512928, 28.663652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893719, 35.178860, 27.889662>,  <34.354107, 34.930687, 28.412693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893719, 35.178860, 27.889662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949806, 35.507744, 28.110321>,  <33.983459, 35.705074, 28.242718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949806, 35.507744, 28.110321>,  <33.893719, 35.178860, 27.889662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949806, 35.507744, 28.110321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059250, 0.563123, -0.824246,
		-0.988347, 0.082887, 0.127674,
		0.140216, 0.822206, 0.551650,
		33.991871, 35.754406, 28.275816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333191, 35.546577, 27.722309>,  <33.893719, 35.178860, 27.889662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333191, 35.546577, 27.722309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621014, 35.787201, 27.861082>,  <33.793709, 35.931576, 27.944345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621014, 35.787201, 27.861082>,  <33.333191, 35.546577, 27.722309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621014, 35.787201, 27.861082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032070, 0.470269, -0.881940,
		-0.693690, 0.645734, 0.319095,
		0.719559, 0.601560, 0.346930,
		33.836880, 35.967670, 27.965160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201382, 36.230610, 27.446880>,  <33.333191, 35.546577, 27.722309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201382, 36.230610, 27.446880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586433, 36.268475, 27.548376>,  <33.817463, 36.291191, 27.609274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586433, 36.268475, 27.548376>,  <33.201382, 36.230610, 27.446880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586433, 36.268475, 27.548376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158525, 0.562697, -0.811321,
		-0.219579, 0.821226, 0.526663,
		0.962629, 0.094660, 0.253741,
		33.875221, 36.296871, 27.624498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344467, 36.819786, 27.228817>,  <33.201382, 36.230610, 27.446880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344467, 36.819786, 27.228817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719845, 36.686184, 27.264057>,  <33.945072, 36.606022, 27.285202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719845, 36.686184, 27.264057>,  <33.344467, 36.819786, 27.228817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719845, 36.686184, 27.264057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247981, 0.473862, -0.844962,
		0.240478, 0.814796, 0.527521,
		0.938444, -0.334009, 0.088100,
		34.001377, 36.585979, 27.290487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789639, 37.383121, 27.418293>,  <33.344467, 36.819786, 27.228817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789639, 37.383121, 27.418293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019268, 37.101364, 27.251307>,  <34.157043, 36.932312, 27.151115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019268, 37.101364, 27.251307>,  <33.789639, 37.383121, 27.418293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019268, 37.101364, 27.251307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503677, 0.705761, -0.498209,
		0.645564, 0.075740, 0.759941,
		0.574071, -0.704390, -0.417465,
		34.191490, 36.890049, 27.126066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394833, 37.667000, 27.414698>,  <33.789639, 37.383121, 27.418293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394833, 37.667000, 27.414698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435436, 37.351215, 27.172558>,  <34.459801, 37.161743, 27.027273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435436, 37.351215, 27.172558>,  <34.394833, 37.667000, 27.414698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435436, 37.351215, 27.172558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511973, 0.563186, -0.648619,
		0.852983, -0.244080, 0.461352,
		0.101512, -0.789460, -0.605350,
		34.465889, 37.114376, 26.990953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063667, 37.668095, 27.087393>,  <34.394833, 37.667000, 27.414698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063667, 37.668095, 27.087393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857254, 37.425976, 26.844961>,  <34.733406, 37.280704, 26.699503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857254, 37.425976, 26.844961>,  <35.063667, 37.668095, 27.087393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857254, 37.425976, 26.844961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626674, 0.215580, -0.748869,
		0.583947, -0.766251, 0.268078,
		-0.516029, -0.605297, -0.606077,
		34.702446, 37.244385, 26.663137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566074, 37.394283, 26.574734>,  <35.063667, 37.668095, 27.087393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566074, 37.394283, 26.574734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207813, 37.352360, 26.401838>,  <34.992859, 37.327206, 26.298101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207813, 37.352360, 26.401838>,  <35.566074, 37.394283, 26.574734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207813, 37.352360, 26.401838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396336, 0.252913, -0.882583,
		0.201817, -0.961796, -0.184984,
		-0.895649, -0.104804, -0.432236,
		34.939117, 37.320919, 26.272167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745884, 37.084499, 25.934126>,  <35.566074, 37.394283, 26.574734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745884, 37.084499, 25.934126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382545, 37.249489, 25.906523>,  <35.164543, 37.348484, 25.889961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382545, 37.249489, 25.906523>,  <35.745884, 37.084499, 25.934126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382545, 37.249489, 25.906523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151180, 0.170014, -0.973776,
		-0.389928, -0.894963, -0.216791,
		-0.908351, 0.412477, -0.069008,
		35.110039, 37.373230, 25.885820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441986, 36.828503, 25.286839>,  <35.745884, 37.084499, 25.934126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441986, 36.828503, 25.286839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235832, 37.159157, 25.377213>,  <35.112141, 37.357548, 25.431437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235832, 37.159157, 25.377213>,  <35.441986, 36.828503, 25.286839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235832, 37.159157, 25.377213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188332, 0.366461, -0.911174,
		-0.836006, -0.427057, -0.344552,
		-0.515388, 0.826637, 0.225935,
		35.081215, 37.407146, 25.444994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950588, 36.984798, 24.646585>,  <35.441986, 36.828503, 25.286839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950588, 36.984798, 24.646585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005306, 37.314987, 24.865629>,  <35.038136, 37.513100, 24.997055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005306, 37.314987, 24.865629>,  <34.950588, 36.984798, 24.646585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005306, 37.314987, 24.865629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115077, 0.535821, -0.836453,
		-0.983892, 0.177441, -0.021695,
		0.136797, 0.825476, 0.547609,
		35.046345, 37.562630, 25.029911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448505, 37.484573, 24.277771>,  <34.950588, 36.984798, 24.646585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448505, 37.484573, 24.277771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696976, 37.704269, 24.501369>,  <34.846058, 37.836086, 24.635529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696976, 37.704269, 24.501369>,  <34.448505, 37.484573, 24.277771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696976, 37.704269, 24.501369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083083, 0.663127, -0.743881,
		-0.779254, 0.508525, 0.366287,
		0.621177, 0.549240, 0.558994,
		34.883327, 37.869041, 24.669067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236496, 38.092808, 24.057259>,  <34.448505, 37.484573, 24.277771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236496, 38.092808, 24.057259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596149, 38.180408, 24.208832>,  <34.811943, 38.232967, 24.299776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596149, 38.180408, 24.208832>,  <34.236496, 38.092808, 24.057259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596149, 38.180408, 24.208832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105361, 0.732032, -0.673074,
		-0.424795, 0.645111, 0.635123,
		0.899137, 0.219002, 0.378933,
		34.865891, 38.246109, 24.322512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303219, 38.813450, 24.200125>,  <34.236496, 38.092808, 24.057259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303219, 38.813450, 24.200125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677132, 38.675713, 24.165253>,  <34.901482, 38.593071, 24.144329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677132, 38.675713, 24.165253>,  <34.303219, 38.813450, 24.200125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677132, 38.675713, 24.165253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207272, 0.728099, -0.653383,
		0.288466, 0.592703, 0.751991,
		0.934786, -0.344346, -0.087181,
		34.957569, 38.572411, 24.139099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736412, 39.403706, 24.014517>,  <34.303219, 38.813450, 24.200125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736412, 39.403706, 24.014517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974899, 39.097706, 23.917105>,  <35.117992, 38.914108, 23.858658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974899, 39.097706, 23.917105>,  <34.736412, 39.403706, 24.014517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974899, 39.097706, 23.917105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395034, 0.543627, -0.740553,
		0.698909, 0.345328, 0.626319,
		0.596217, -0.764996, -0.243529,
		35.153763, 38.868206, 23.844046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436146, 39.655449, 24.042624>,  <34.736412, 39.403706, 24.014517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436146, 39.655449, 24.042624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440601, 39.323627, 23.819296>,  <35.443275, 39.124535, 23.685299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440601, 39.323627, 23.819296>,  <35.436146, 39.655449, 24.042624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440601, 39.323627, 23.819296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632812, 0.438166, -0.638404,
		0.774226, -0.346202, 0.529829,
		0.011136, -0.829551, -0.558320,
		35.443943, 39.074760, 23.651800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156006, 39.549198, 23.902807>,  <35.436146, 39.655449, 24.042624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156006, 39.549198, 23.902807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917744, 39.384960, 23.626661>,  <35.774784, 39.286419, 23.460974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917744, 39.384960, 23.626661>,  <36.156006, 39.549198, 23.902807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917744, 39.384960, 23.626661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322738, 0.664707, -0.673798,
		0.735549, -0.624160, -0.263424,
		-0.595658, -0.410595, -0.690365,
		35.739048, 39.261784, 23.419552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505352, 39.546410, 23.320957>,  <36.156006, 39.549198, 23.902807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505352, 39.546410, 23.320957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133949, 39.517879, 23.175200>,  <35.911106, 39.500763, 23.087746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133949, 39.517879, 23.175200>,  <36.505352, 39.546410, 23.320957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133949, 39.517879, 23.175200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225532, 0.671269, -0.706069,
		0.294964, -0.737774, -0.607194,
		-0.928510, -0.071323, -0.364392,
		35.855396, 39.496483, 23.065882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582668, 39.503399, 22.624804>,  <36.505352, 39.546410, 23.320957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582668, 39.503399, 22.624804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224289, 39.653751, 22.719442>,  <36.009262, 39.743965, 22.776226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224289, 39.653751, 22.719442>,  <36.582668, 39.503399, 22.624804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224289, 39.653751, 22.719442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136322, 0.739715, -0.658967,
		-0.422712, -0.558150, -0.713991,
		-0.895953, 0.375886, 0.236598,
		35.955502, 39.766518, 22.790422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333309, 39.760235, 22.035526>,  <36.582668, 39.503399, 22.624804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333309, 39.760235, 22.035526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070423, 39.932652, 22.282839>,  <35.912693, 40.036102, 22.431227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070423, 39.932652, 22.282839>,  <36.333309, 39.760235, 22.035526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070423, 39.932652, 22.282839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096616, 0.765374, -0.636292,
		-0.747487, -0.477915, -0.461368,
		-0.657213, 0.431044, 0.618282,
		35.873260, 40.061966, 22.468323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755611, 40.021740, 21.622252>,  <36.333309, 39.760235, 22.035526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755611, 40.021740, 21.622252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707176, 40.257927, 21.941422>,  <35.678116, 40.399639, 22.132923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707176, 40.257927, 21.941422>,  <35.755611, 40.021740, 21.622252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707176, 40.257927, 21.941422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014675, 0.802686, -0.596222,
		-0.992533, -0.083905, -0.088531,
		-0.121088, 0.590470, 0.797924,
		35.670849, 40.435066, 22.180799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127636, 40.474743, 21.593107>,  <35.755611, 40.021740, 21.622252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127636, 40.474743, 21.593107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409145, 40.648972, 21.817600>,  <35.578049, 40.753510, 21.952297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409145, 40.648972, 21.817600>,  <35.127636, 40.474743, 21.593107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409145, 40.648972, 21.817600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158139, 0.866222, -0.473973,
		-0.692604, 0.244815, 0.678503,
		0.703770, 0.435574, 0.561234,
		35.620277, 40.779644, 21.985970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012302, 41.147579, 21.788822>,  <35.127636, 40.474743, 21.593107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012302, 41.147579, 21.788822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410660, 41.172791, 21.814814>,  <35.649673, 41.187920, 21.830408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410660, 41.172791, 21.814814>,  <35.012302, 41.147579, 21.788822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410660, 41.172791, 21.814814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045157, 0.967989, -0.246897,
		-0.078461, 0.242949, 0.966861,
		0.995894, 0.063032, 0.064978,
		35.709427, 41.191700, 21.834307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162930, 41.639061, 22.263355>,  <35.012302, 41.147579, 21.788822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162930, 41.639061, 22.263355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484959, 41.634449, 22.026131>,  <35.678177, 41.631683, 21.883797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484959, 41.634449, 22.026131>,  <35.162930, 41.639061, 22.263355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484959, 41.634449, 22.026131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065984, 0.991865, -0.108857,
		0.589490, 0.126771, 0.797766,
		0.805076, -0.011530, -0.593059,
		35.726482, 41.630989, 21.848213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605091, 42.173206, 22.549105>,  <35.162930, 41.639061, 22.263355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605091, 42.173206, 22.549105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643372, 42.083397, 22.161201>,  <35.666340, 42.029510, 21.928459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643372, 42.083397, 22.161201>,  <35.605091, 42.173206, 22.549105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643372, 42.083397, 22.161201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156429, 0.965516, -0.208106,
		0.983042, -0.131782, 0.127524,
		0.095702, -0.224526, -0.969757,
		35.672081, 42.016041, 21.870274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870426, 42.903263, 22.817705>,  <35.605091, 42.173206, 22.549105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870426, 42.903263, 22.817705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239323, 42.917633, 22.971685>,  <36.460659, 42.926254, 23.064074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239323, 42.917633, 22.971685>,  <35.870426, 42.903263, 22.817705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239323, 42.917633, 22.971685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312029, 0.518756, -0.795946,
		-0.228292, 0.854167, 0.467206,
		0.922237, 0.035926, 0.384953,
		36.515995, 42.928410, 23.087172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127178, 43.568558, 22.726715>,  <35.870426, 42.903263, 22.817705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127178, 43.568558, 22.726715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430164, 43.308777, 22.753399>,  <36.611958, 43.152908, 22.769409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430164, 43.308777, 22.753399>,  <36.127178, 43.568558, 22.726715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430164, 43.308777, 22.753399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476297, 0.479824, -0.736824,
		0.446526, 0.589894, 0.672785,
		0.757467, -0.649457, 0.066711,
		36.657406, 43.113941, 22.773413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579018, 44.037601, 22.236141>,  <36.127178, 43.568558, 22.726715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579018, 44.037601, 22.236141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926971, 43.970028, 22.050770>,  <37.135742, 43.929485, 21.939547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926971, 43.970028, 22.050770>,  <36.579018, 44.037601, 22.236141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926971, 43.970028, 22.050770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365525, -0.410087, 0.835596,
		-0.331205, -0.896265, -0.294978,
		0.869882, -0.168931, -0.463431,
		37.187935, 43.919350, 21.911741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747139, 43.228672, 22.079309>,  <36.579018, 44.037601, 22.236141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747139, 43.228672, 22.079309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055698, 43.459663, 22.186241>,  <37.240833, 43.598259, 22.250401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055698, 43.459663, 22.186241>,  <36.747139, 43.228672, 22.079309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055698, 43.459663, 22.186241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173059, -0.594634, 0.785150,
		0.612370, -0.559399, -0.558637,
		0.771397, 0.577480, 0.267327,
		37.287117, 43.632908, 22.266439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257530, 42.805035, 22.288340>,  <36.747139, 43.228672, 22.079309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257530, 42.805035, 22.288340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261177, 43.151119, 22.488873>,  <37.263367, 43.358768, 22.609192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261177, 43.151119, 22.488873>,  <37.257530, 42.805035, 22.288340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261177, 43.151119, 22.488873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036959, -0.500718, 0.864821,
		0.999275, -0.026413, 0.027413,
		0.009116, 0.865208, 0.501331,
		37.263912, 43.410683, 22.639273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810986, 42.898628, 22.769135>,  <37.257530, 42.805035, 22.288340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810986, 42.898628, 22.769135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478024, 43.085011, 22.889128>,  <37.278248, 43.196838, 22.961124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478024, 43.085011, 22.889128>,  <37.810986, 42.898628, 22.769135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478024, 43.085011, 22.889128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005276, -0.547963, 0.836486,
		0.554143, 0.694712, 0.458586,
		-0.832405, 0.465952, 0.299984,
		37.228302, 43.224796, 22.979122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744740, 43.121647, 23.463854>,  <37.810986, 42.898628, 22.769135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744740, 43.121647, 23.463854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359360, 43.076401, 23.366714>,  <37.128132, 43.049255, 23.308432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359360, 43.076401, 23.366714>,  <37.744740, 43.121647, 23.463854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359360, 43.076401, 23.366714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173491, -0.427285, 0.887315,
		-0.204132, 0.897013, 0.392043,
		-0.963447, -0.113114, -0.242846,
		37.070324, 43.042465, 23.293861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375397, 43.380314, 23.969273>,  <37.744740, 43.121647, 23.463854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375397, 43.380314, 23.969273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112766, 43.141663, 23.784693>,  <36.955189, 42.998470, 23.673944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112766, 43.141663, 23.784693>,  <37.375397, 43.380314, 23.969273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112766, 43.141663, 23.784693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336437, -0.315899, 0.887141,
		-0.675068, 0.737725, 0.006683,
		-0.656577, -0.596632, -0.461451,
		36.915794, 42.962673, 23.646257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669323, 43.532642, 24.255110>,  <37.375397, 43.380314, 23.969273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669323, 43.532642, 24.255110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648632, 43.166531, 24.095318>,  <36.636215, 42.946861, 23.999443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648632, 43.166531, 24.095318>,  <36.669323, 43.532642, 24.255110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648632, 43.166531, 24.095318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370227, -0.353934, 0.858873,
		-0.927500, 0.192327, -0.320553,
		-0.051730, -0.915282, -0.399479,
		36.633114, 42.891945, 23.975473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938110, 43.209908, 24.387922>,  <36.669323, 43.532642, 24.255110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938110, 43.209908, 24.387922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222309, 42.933151, 24.336576>,  <36.392830, 42.767097, 24.305769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222309, 42.933151, 24.336576>,  <35.938110, 43.209908, 24.387922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222309, 42.933151, 24.336576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232979, -0.403411, 0.884862,
		-0.664016, -0.598783, -0.447818,
		0.710495, -0.691895, -0.128367,
		36.435459, 42.725582, 24.298067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543934, 42.574760, 24.518436>,  <35.938110, 43.209908, 24.387922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543934, 42.574760, 24.518436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928345, 42.466156, 24.539282>,  <36.158989, 42.400993, 24.551788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928345, 42.466156, 24.539282>,  <35.543934, 42.574760, 24.518436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928345, 42.466156, 24.539282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179594, -0.469781, 0.864322,
		-0.210194, -0.839992, -0.500232,
		0.961023, -0.271513, 0.052112,
		36.216652, 42.384701, 24.554916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570431, 41.835361, 24.613958>,  <35.543934, 42.574760, 24.518436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570431, 41.835361, 24.613958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947594, 41.918621, 24.717958>,  <36.173893, 41.968578, 24.780357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947594, 41.918621, 24.717958>,  <35.570431, 41.835361, 24.613958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947594, 41.918621, 24.717958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081585, -0.612512, 0.786240,
		0.322907, -0.762564, -0.560560,
		0.942908, 0.208149, 0.259998,
		36.230465, 41.981064, 24.795958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046959, 41.209949, 24.630571>,  <35.570431, 41.835361, 24.613958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046959, 41.209949, 24.630571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257282, 41.455009, 24.866602>,  <36.383476, 41.602047, 25.008221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257282, 41.455009, 24.866602>,  <36.046959, 41.209949, 24.630571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257282, 41.455009, 24.866602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081436, -0.726783, 0.682022,
		0.846696, -0.310559, -0.432040,
		0.525808, 0.612649, 0.590074,
		36.415024, 41.638805, 25.043625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509674, 40.756584, 24.884237>,  <36.046959, 41.209949, 24.630571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509674, 40.756584, 24.884237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531174, 41.066795, 25.135845>,  <36.544071, 41.252922, 25.286810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531174, 41.066795, 25.135845>,  <36.509674, 40.756584, 24.884237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531174, 41.066795, 25.135845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088229, -0.631155, 0.770622,
		0.994649, 0.014079, -0.102347,
		0.053747, 0.775529, 0.629020,
		36.547298, 41.299454, 25.324551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005585, 40.590820, 25.406033>,  <36.509674, 40.756584, 24.884237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005585, 40.590820, 25.406033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815422, 40.883537, 25.601368>,  <36.701324, 41.059166, 25.718569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815422, 40.883537, 25.601368>,  <37.005585, 40.590820, 25.406033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815422, 40.883537, 25.601368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147733, -0.613599, 0.775674,
		0.867273, 0.296617, 0.399819,
		-0.475407, 0.731788, 0.488338,
		36.672798, 41.103073, 25.747869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338642, 40.604080, 25.968370>,  <37.005585, 40.590820, 25.406033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338642, 40.604080, 25.968370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992886, 40.788876, 26.047766>,  <36.785431, 40.899754, 26.095404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992886, 40.788876, 26.047766>,  <37.338642, 40.604080, 25.968370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992886, 40.788876, 26.047766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066772, -0.496712, 0.865343,
		0.498374, 0.734738, 0.460200,
		-0.864387, 0.461992, 0.198488,
		36.733570, 40.927475, 26.107313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411972, 40.816559, 26.605806>,  <37.338642, 40.604080, 25.968370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411972, 40.816559, 26.605806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016151, 40.854946, 26.562763>,  <36.778660, 40.877979, 26.536938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016151, 40.854946, 26.562763>,  <37.411972, 40.816559, 26.605806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016151, 40.854946, 26.562763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139408, -0.446274, 0.883971,
		0.036808, 0.889736, 0.454989,
		-0.989551, 0.095967, -0.107610,
		36.719288, 40.883736, 26.530479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146187, 41.167034, 27.198492>,  <37.411972, 40.816559, 26.605806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146187, 41.167034, 27.198492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863461, 40.934025, 27.037954>,  <36.693825, 40.794220, 26.941631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863461, 40.934025, 27.037954>,  <37.146187, 41.167034, 27.198492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863461, 40.934025, 27.037954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122514, -0.457972, 0.880484,
		-0.696709, 0.671509, 0.252333,
		-0.706814, -0.582527, -0.401342,
		36.651417, 40.759266, 26.917551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637260, 41.202923, 27.663855>,  <37.146187, 41.167034, 27.198492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637260, 41.202923, 27.663855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583530, 40.880253, 27.433641>,  <36.551292, 40.686653, 27.295513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583530, 40.880253, 27.433641>,  <36.637260, 41.202923, 27.663855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583530, 40.880253, 27.433641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240555, -0.536877, 0.808639,
		-0.961296, 0.247071, -0.121930,
		-0.134330, -0.806672, -0.575532,
		36.543232, 40.638252, 27.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004570, 41.025742, 27.744364>,  <36.637260, 41.202923, 27.663855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004570, 41.025742, 27.744364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181770, 40.700275, 27.593792>,  <36.288090, 40.504997, 27.503448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181770, 40.700275, 27.593792>,  <36.004570, 41.025742, 27.744364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181770, 40.700275, 27.593792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245360, -0.513882, 0.822024,
		-0.862294, -0.271794, -0.427290,
		0.442998, -0.813666, -0.376430,
		36.314671, 40.456177, 27.480864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528484, 40.522888, 27.899200>,  <36.004570, 41.025742, 27.744364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528484, 40.522888, 27.899200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865685, 40.321941, 27.822277>,  <36.068005, 40.201374, 27.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865685, 40.321941, 27.822277>,  <35.528484, 40.522888, 27.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865685, 40.321941, 27.822277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137307, -0.546616, 0.826049,
		-0.520098, -0.669953, -0.529775,
		0.842997, -0.502368, -0.192304,
		36.118584, 40.171230, 27.764585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453587, 39.771450, 28.180304>,  <35.528484, 40.522888, 27.899200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453587, 39.771450, 28.180304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849598, 39.810024, 28.139235>,  <36.087204, 39.833168, 28.114594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849598, 39.810024, 28.139235>,  <35.453587, 39.771450, 28.180304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849598, 39.810024, 28.139235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138347, -0.528695, 0.837462,
		0.026477, -0.843317, -0.536765,
		0.990030, 0.096433, -0.102672,
		36.146606, 39.838955, 28.108433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684097, 39.084297, 28.087173>,  <35.453587, 39.771450, 28.180304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684097, 39.084297, 28.087173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962631, 39.339676, 28.218327>,  <36.129749, 39.492905, 28.297018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962631, 39.339676, 28.218327>,  <35.684097, 39.084297, 28.087173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962631, 39.339676, 28.218327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063046, -0.509486, 0.858166,
		0.714946, -0.576896, -0.395023,
		0.696331, 0.638447, 0.327884,
		36.171532, 39.531212, 28.316692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948032, 38.626320, 28.429373>,  <35.684097, 39.084297, 28.087173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948032, 38.626320, 28.429373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144291, 38.945625, 28.569107>,  <36.262047, 39.137211, 28.652946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144291, 38.945625, 28.569107>,  <35.948032, 38.626320, 28.429373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144291, 38.945625, 28.569107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136431, -0.466342, 0.874020,
		0.860611, -0.381176, -0.337719,
		0.490649, 0.798267, 0.349335,
		36.291485, 39.185104, 28.673908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545059, 38.393379, 28.835178>,  <35.948032, 38.626320, 28.429373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545059, 38.393379, 28.835178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415188, 38.745461, 28.973639>,  <36.337265, 38.956711, 29.056715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415188, 38.745461, 28.973639>,  <36.545059, 38.393379, 28.835178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415188, 38.745461, 28.973639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047924, -0.350195, 0.935450,
		0.944609, 0.320311, 0.071518,
		-0.324681, 0.880207, 0.346148,
		36.317783, 39.009521, 29.077482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894974, 38.503475, 29.457897>,  <36.545059, 38.393379, 28.835178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894974, 38.503475, 29.457897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589981, 38.761929, 29.471378>,  <36.406986, 38.917000, 29.479467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589981, 38.761929, 29.471378>,  <36.894974, 38.503475, 29.457897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589981, 38.761929, 29.471378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159719, -0.238445, 0.957932,
		0.626988, 0.725021, 0.285009,
		-0.762480, 0.646134, 0.033703,
		36.361237, 38.955769, 29.481489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948273, 38.677059, 30.134432>,  <36.894974, 38.503475, 29.457897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948273, 38.677059, 30.134432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586746, 38.809727, 30.026270>,  <36.369831, 38.889328, 29.961372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586746, 38.809727, 30.026270>,  <36.948273, 38.677059, 30.134432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586746, 38.809727, 30.026270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348771, -0.204794, 0.914559,
		0.247949, 0.920901, 0.300770,
		-0.903814, 0.331664, -0.270405,
		36.315601, 38.909225, 29.945148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744957, 39.199230, 30.601587>,  <36.948273, 38.677059, 30.134432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744957, 39.199230, 30.601587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429443, 38.998821, 30.459156>,  <36.240135, 38.878574, 30.373697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429443, 38.998821, 30.459156>,  <36.744957, 39.199230, 30.601587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429443, 38.998821, 30.459156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225883, -0.302489, 0.926001,
		-0.571660, 0.810847, 0.125426,
		-0.788785, -0.501026, -0.356077,
		36.192806, 38.848515, 30.352333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352798, 39.137589, 31.194424>,  <36.744957, 39.199230, 30.601587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352798, 39.137589, 31.194424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165993, 38.896450, 30.935667>,  <36.053909, 38.751766, 30.780413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165993, 38.896450, 30.935667>,  <36.352798, 39.137589, 31.194424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165993, 38.896450, 30.935667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411625, -0.499259, 0.762434,
		-0.782600, 0.622345, -0.014987,
		-0.467014, -0.602850, -0.646892,
		36.025887, 38.715595, 30.741600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672638, 39.161819, 31.419821>,  <36.352798, 39.137589, 31.194424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672638, 39.161819, 31.419821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708778, 38.823372, 31.209707>,  <35.730465, 38.620304, 31.083639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708778, 38.823372, 31.209707>,  <35.672638, 39.161819, 31.419821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708778, 38.823372, 31.209707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488398, -0.497308, 0.717044,
		-0.867931, 0.191759, -0.458175,
		0.090355, -0.846116, -0.525284,
		35.735886, 38.569538, 31.052122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029018, 38.812191, 31.570980>,  <35.672638, 39.161819, 31.419821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029018, 38.812191, 31.570980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280422, 38.533512, 31.432648>,  <35.431263, 38.366306, 31.349649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280422, 38.533512, 31.432648>,  <35.029018, 38.812191, 31.570980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280422, 38.533512, 31.432648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181727, -0.563848, 0.805637,
		-0.756278, -0.443501, -0.480990,
		0.628506, -0.696694, -0.345830,
		35.468975, 38.324505, 31.328899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731464, 38.200966, 31.756353>,  <35.029018, 38.812191, 31.570980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731464, 38.200966, 31.756353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096119, 38.066963, 31.661119>,  <35.314911, 37.986561, 31.603979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096119, 38.066963, 31.661119>,  <34.731464, 38.200966, 31.756353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096119, 38.066963, 31.661119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092734, -0.732017, 0.674945,
		-0.400397, -0.593226, -0.698402,
		0.911637, -0.335011, -0.238085,
		35.369610, 37.966461, 31.589693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713917, 37.431557, 31.596491>,  <34.731464, 38.200966, 31.756353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713917, 37.431557, 31.596491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081272, 37.535961, 31.715437>,  <35.301685, 37.598602, 31.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081272, 37.535961, 31.715437>,  <34.713917, 37.431557, 31.596491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081272, 37.535961, 31.715437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039161, -0.687902, 0.724747,
		0.393727, -0.677247, -0.621543,
		0.918393, 0.261012, 0.297367,
		35.356789, 37.614265, 31.804647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126652, 36.858318, 31.600456>,  <34.713917, 37.431557, 31.596491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126652, 36.858318, 31.600456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305908, 37.109634, 31.854832>,  <35.413464, 37.260426, 32.007458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305908, 37.109634, 31.854832>,  <35.126652, 36.858318, 31.600456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305908, 37.109634, 31.854832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095655, -0.673585, 0.732894,
		0.888829, -0.389273, -0.241764,
		0.448145, 0.628291, 0.635938,
		35.440353, 37.298122, 32.045612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631371, 36.419804, 32.036236>,  <35.126652, 36.858318, 31.600456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631371, 36.419804, 32.036236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584412, 36.770855, 32.222134>,  <35.556236, 36.981483, 32.333672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584412, 36.770855, 32.222134>,  <35.631371, 36.419804, 32.036236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584412, 36.770855, 32.222134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034900, -0.471340, 0.881261,
		0.992472, 0.087235, 0.085961,
		-0.117393, 0.877626, 0.464748,
		35.549194, 37.034142, 32.361557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085938, 36.357395, 32.506527>,  <35.631371, 36.419804, 32.036236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085938, 36.357395, 32.506527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796776, 36.616371, 32.603054>,  <35.623280, 36.771755, 32.660969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796776, 36.616371, 32.603054>,  <36.085938, 36.357395, 32.506527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796776, 36.616371, 32.603054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124178, -0.465309, 0.876395,
		0.679698, 0.603583, 0.416771,
		-0.722904, 0.647437, 0.241318,
		35.579903, 36.810604, 32.675449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280903, 36.631516, 33.187782>,  <36.085938, 36.357395, 32.506527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280903, 36.631516, 33.187782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885609, 36.674278, 33.144020>,  <35.648434, 36.699936, 33.117764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885609, 36.674278, 33.144020>,  <36.280903, 36.631516, 33.187782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885609, 36.674278, 33.144020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141559, -0.368201, 0.918906,
		0.057954, 0.923580, 0.379002,
		-0.988232, 0.106905, -0.109403,
		35.589138, 36.706348, 33.111198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097622, 36.995159, 33.662319>,  <36.280903, 36.631516, 33.187782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097622, 36.995159, 33.662319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750999, 36.813606, 33.579300>,  <35.543026, 36.704674, 33.529488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750999, 36.813606, 33.579300>,  <36.097622, 36.995159, 33.662319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750999, 36.813606, 33.579300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150088, -0.159622, 0.975702,
		-0.475981, 0.876650, 0.070199,
		-0.866554, -0.453880, -0.207552,
		35.491032, 36.677441, 33.517033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576370, 37.370792, 34.068291>,  <36.097622, 36.995159, 33.662319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576370, 37.370792, 34.068291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452427, 37.004639, 33.965485>,  <35.378059, 36.784946, 33.903801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452427, 37.004639, 33.965485>,  <35.576370, 37.370792, 34.068291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452427, 37.004639, 33.965485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305131, -0.160286, 0.938725,
		-0.900490, 0.369297, -0.229646,
		-0.309859, -0.915384, -0.257020,
		35.359470, 36.730022, 33.888378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931313, 37.263390, 34.453102>,  <35.576370, 37.370792, 34.068291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931313, 37.263390, 34.453102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023327, 36.891724, 34.337353>,  <35.078537, 36.668724, 34.267902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023327, 36.891724, 34.337353>,  <34.931313, 37.263390, 34.453102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023327, 36.891724, 34.337353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173738, -0.331782, 0.927219,
		-0.957548, -0.163020, -0.237753,
		0.230037, -0.929164, -0.289374,
		35.092339, 36.612976, 34.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565182, 36.916183, 34.830063>,  <34.931313, 37.263390, 34.453102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565182, 36.916183, 34.830063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825974, 36.634750, 34.716999>,  <34.982449, 36.465893, 34.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825974, 36.634750, 34.716999>,  <34.565182, 36.916183, 34.830063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825974, 36.634750, 34.716999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193941, -0.515129, 0.834883,
		-0.733015, -0.489507, -0.472306,
		0.651979, -0.703581, -0.282662,
		35.021568, 36.423676, 34.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275494, 36.287060, 35.012867>,  <34.565182, 36.916183, 34.830063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275494, 36.287060, 35.012867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669971, 36.222469, 34.998165>,  <34.906658, 36.183716, 34.989346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669971, 36.222469, 34.998165>,  <34.275494, 36.287060, 35.012867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669971, 36.222469, 34.998165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038218, -0.437879, 0.898221,
		-0.161133, -0.884414, -0.438004,
		0.986192, -0.161472, -0.036756,
		34.965828, 36.174026, 34.987137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300896, 35.589062, 35.327667>,  <34.275494, 36.287060, 35.012867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300896, 35.589062, 35.327667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670696, 35.740894, 35.313732>,  <34.892578, 35.831993, 35.305370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670696, 35.740894, 35.313732>,  <34.300896, 35.589062, 35.327667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670696, 35.740894, 35.313732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256804, -0.552694, 0.792831,
		0.281689, -0.741921, -0.608445,
		0.924502, 0.379583, -0.034841,
		34.948048, 35.854771, 35.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814949, 35.014046, 35.396675>,  <34.300896, 35.589062, 35.327667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814949, 35.014046, 35.396675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027500, 35.339310, 35.491669>,  <35.155033, 35.534470, 35.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027500, 35.339310, 35.491669>,  <34.814949, 35.014046, 35.396675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027500, 35.339310, 35.491669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283034, -0.434652, 0.854967,
		0.798453, -0.387096, -0.461118,
		0.531380, 0.813163, 0.237488,
		35.186913, 35.583260, 35.562916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450912, 34.751976, 35.626324>,  <34.814949, 35.014046, 35.396675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450912, 34.751976, 35.626324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372345, 35.104862, 35.797489>,  <35.325203, 35.316593, 35.900188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372345, 35.104862, 35.797489>,  <35.450912, 34.751976, 35.626324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372345, 35.104862, 35.797489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044284, -0.427988, 0.902699,
		0.979520, 0.196256, 0.044996,
		-0.196418, 0.882219, 0.427914,
		35.313419, 35.369526, 35.925865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901230, 34.680515, 36.146694>,  <35.450912, 34.751976, 35.626324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901230, 34.680515, 36.146694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640411, 34.967461, 36.244858>,  <35.483921, 35.139626, 36.303757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640411, 34.967461, 36.244858>,  <35.901230, 34.680515, 36.146694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640411, 34.967461, 36.244858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098154, -0.400834, 0.910877,
		0.751796, 0.569849, 0.331776,
		-0.652049, 0.717359, 0.245413,
		35.444798, 35.182667, 36.318481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408451, 35.227497, 35.915318>,  <35.901230, 34.680515, 36.146694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408451, 35.227497, 35.915318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740971, 35.114441, 36.106758>,  <36.940483, 35.046608, 36.221622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740971, 35.114441, 36.106758>,  <36.408451, 35.227497, 35.915318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740971, 35.114441, 36.106758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555326, 0.385757, -0.736753,
		0.023614, 0.878240, 0.477637,
		0.831298, -0.282642, 0.478600,
		36.990360, 35.029648, 36.250340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822094, 35.835651, 35.917374>,  <36.408451, 35.227497, 35.915318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822094, 35.835651, 35.917374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046303, 35.505531, 35.944775>,  <37.180828, 35.307457, 35.961216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046303, 35.505531, 35.944775>,  <36.822094, 35.835651, 35.917374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046303, 35.505531, 35.944775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468676, 0.247938, -0.847862,
		0.682760, 0.507347, 0.525774,
		0.560519, -0.825304, 0.068499,
		37.214458, 35.257938, 35.965324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491901, 36.055195, 35.815784>,  <36.822094, 35.835651, 35.917374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491901, 36.055195, 35.815784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486603, 35.668064, 35.715279>,  <37.483425, 35.435783, 35.654976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486603, 35.668064, 35.715279>,  <37.491901, 36.055195, 35.815784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486603, 35.668064, 35.715279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454633, 0.217977, -0.863594,
		0.890581, -0.125670, 0.437119,
		-0.013246, -0.967829, -0.251260,
		37.482628, 35.377716, 35.639900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174225, 35.895199, 35.546490>,  <37.491901, 36.055195, 35.815784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174225, 35.895199, 35.546490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959663, 35.596771, 35.388676>,  <37.830925, 35.417717, 35.293987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959663, 35.596771, 35.388676>,  <38.174225, 35.895199, 35.546490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959663, 35.596771, 35.388676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373836, 0.209071, -0.903624,
		0.756648, -0.632199, 0.166759,
		-0.536406, -0.746065, -0.394532,
		37.798740, 35.372952, 35.270317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660778, 35.488483, 35.193203>,  <38.174225, 35.895199, 35.546490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660778, 35.488483, 35.193203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305862, 35.367569, 35.053871>,  <38.092911, 35.295021, 34.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305862, 35.367569, 35.053871>,  <38.660778, 35.488483, 35.193203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305862, 35.367569, 35.053871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351275, 0.046478, -0.935118,
		0.298861, -0.952084, 0.064945,
		-0.887293, -0.302284, -0.348333,
		38.039673, 35.276882, 34.949371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745232, 35.098892, 34.558426>,  <38.660778, 35.488483, 35.193203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745232, 35.098892, 34.558426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359165, 35.201004, 34.535484>,  <38.127525, 35.262272, 34.521717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359165, 35.201004, 34.535484>,  <38.745232, 35.098892, 34.558426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359165, 35.201004, 34.535484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106067, 0.181355, -0.977681,
		-0.239179, -0.949707, -0.202115,
		-0.965165, 0.255278, -0.057356,
		38.069614, 35.277588, 34.518276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478638, 34.747463, 33.932522>,  <38.745232, 35.098892, 34.558426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478638, 34.747463, 33.932522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216671, 35.042686, 33.997463>,  <38.059490, 35.219822, 34.036427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216671, 35.042686, 33.997463>,  <38.478638, 34.747463, 33.932522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216671, 35.042686, 33.997463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087212, 0.287213, -0.953888,
		-0.750653, -0.610557, -0.252468,
		-0.654915, 0.738057, 0.162349,
		38.020195, 35.264103, 34.046169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200558, 34.810825, 33.273701>,  <38.478638, 34.747463, 33.932522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200558, 34.810825, 33.273701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092964, 35.135044, 33.481804>,  <38.028408, 35.329575, 33.606667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092964, 35.135044, 33.481804>,  <38.200558, 34.810825, 33.273701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092964, 35.135044, 33.481804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079101, 0.519750, -0.850649,
		-0.959891, -0.269963, -0.075689,
		-0.268983, 0.810543, 0.520258,
		38.012268, 35.378208, 33.637882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531868, 35.150009, 32.895596>,  <38.200558, 34.810825, 33.273701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531868, 35.150009, 32.895596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709049, 35.454105, 33.085682>,  <37.815357, 35.636562, 33.199734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709049, 35.454105, 33.085682>,  <37.531868, 35.150009, 32.895596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709049, 35.454105, 33.085682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034156, 0.543979, -0.838403,
		-0.895895, 0.355140, 0.266923,
		0.442951, 0.760238, 0.475218,
		37.841934, 35.682178, 33.228249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060951, 35.758770, 32.879436>,  <37.531868, 35.150009, 32.895596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060951, 35.758770, 32.879436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420795, 35.917572, 32.952187>,  <37.636703, 36.012856, 32.995838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420795, 35.917572, 32.952187>,  <37.060951, 35.758770, 32.879436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420795, 35.917572, 32.952187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066584, 0.536328, -0.841379,
		-0.431580, 0.744806, 0.508923,
		0.899614, 0.397008, 0.181876,
		37.690681, 36.036674, 33.006748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979786, 36.514954, 32.837246>,  <37.060951, 35.758770, 32.879436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979786, 36.514954, 32.837246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359550, 36.427551, 32.747021>,  <37.587410, 36.375111, 32.692886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359550, 36.427551, 32.747021>,  <36.979786, 36.514954, 32.837246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359550, 36.427551, 32.747021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031166, 0.649155, -0.760018,
		0.312497, 0.728596, 0.609502,
		0.949407, -0.218508, -0.225566,
		37.644371, 36.362000, 32.679352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210361, 37.109280, 32.639656>,  <36.979786, 36.514954, 32.837246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210361, 37.109280, 32.639656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517494, 36.891304, 32.504906>,  <37.701775, 36.760521, 32.424057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517494, 36.891304, 32.504906>,  <37.210361, 37.109280, 32.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517494, 36.891304, 32.504906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053105, 0.578153, -0.814198,
		0.638448, 0.607277, 0.472862,
		0.767830, -0.544935, -0.336871,
		37.747845, 36.727825, 32.403843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777069, 37.579956, 32.489792>,  <37.210361, 37.109280, 32.639656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777069, 37.579956, 32.489792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867367, 37.256592, 32.272346>,  <37.921547, 37.062572, 32.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867367, 37.256592, 32.272346>,  <37.777069, 37.579956, 32.489792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867367, 37.256592, 32.272346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318308, 0.588598, -0.743124,
		0.920717, -0.005280, 0.390195,
		0.225744, -0.808409, -0.543612,
		37.935089, 37.014069, 32.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353413, 37.761826, 32.132172>,  <37.777069, 37.579956, 32.489792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353413, 37.761826, 32.132172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224354, 37.448879, 31.919077>,  <38.146919, 37.261112, 31.791222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224354, 37.448879, 31.919077>,  <38.353413, 37.761826, 32.132172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224354, 37.448879, 31.919077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230181, 0.481081, -0.845919,
		0.918104, -0.395559, 0.024865,
		-0.322648, -0.782365, -0.532732,
		38.127560, 37.214169, 31.759256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868584, 37.721004, 31.699671>,  <38.353413, 37.761826, 32.132172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868584, 37.721004, 31.699671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545403, 37.555767, 31.531595>,  <38.351494, 37.456623, 31.430750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545403, 37.555767, 31.531595>,  <38.868584, 37.721004, 31.699671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545403, 37.555767, 31.531595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185120, 0.499042, -0.846574,
		0.559414, -0.761777, -0.326729,
		-0.807952, -0.413101, -0.420191,
		38.303017, 37.431839, 31.405539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125355, 37.296383, 31.121319>,  <38.868584, 37.721004, 31.699671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125355, 37.296383, 31.121319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742020, 37.376465, 31.039820>,  <38.512020, 37.424515, 30.990919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742020, 37.376465, 31.039820>,  <39.125355, 37.296383, 31.121319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742020, 37.376465, 31.039820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242119, 0.190821, -0.951297,
		-0.151579, -0.960991, -0.231345,
		-0.958333, 0.200210, -0.203750,
		38.454521, 37.436527, 30.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898102, 36.868443, 30.524614>,  <39.125355, 37.296383, 31.121319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898102, 36.868443, 30.524614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640259, 37.173859, 30.540045>,  <38.485554, 37.357109, 30.549303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640259, 37.173859, 30.540045>,  <38.898102, 36.868443, 30.524614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640259, 37.173859, 30.540045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107084, 0.140138, -0.984324,
		-0.756977, -0.630372, -0.172097,
		-0.644607, 0.763540, 0.038578,
		38.446877, 37.402920, 30.551619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681858, 36.772820, 29.891747>,  <38.898102, 36.868443, 30.524614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681858, 36.772820, 29.891747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551731, 37.131775, 30.010992>,  <38.473656, 37.347149, 30.082539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551731, 37.131775, 30.010992>,  <38.681858, 36.772820, 29.891747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551731, 37.131775, 30.010992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080631, 0.287787, -0.954294,
		-0.942162, -0.334482, -0.021263,
		-0.325314, 0.897385, 0.298111,
		38.454136, 37.400990, 30.100426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022678, 36.876522, 29.473938>,  <38.681858, 36.772820, 29.891747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022678, 36.876522, 29.473938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150352, 37.236870, 29.591625>,  <38.226955, 37.453079, 29.662237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150352, 37.236870, 29.591625>,  <38.022678, 36.876522, 29.473938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150352, 37.236870, 29.591625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146285, 0.353571, -0.923898,
		-0.936335, 0.251854, 0.244637,
		0.319184, 0.900865, 0.294218,
		38.246109, 37.507130, 29.679890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546833, 37.436951, 29.176523>,  <38.022678, 36.876522, 29.473938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546833, 37.436951, 29.176523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881836, 37.623314, 29.290722>,  <38.082840, 37.735130, 29.359241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881836, 37.623314, 29.290722>,  <37.546833, 37.436951, 29.176523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881836, 37.623314, 29.290722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059107, 0.596664, -0.800311,
		-0.543213, 0.653395, 0.527252,
		0.837512, 0.465904, 0.285495,
		38.133091, 37.763084, 29.376371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378353, 38.082554, 28.889874>,  <37.546833, 37.436951, 29.176523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378353, 38.082554, 28.889874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771896, 38.038971, 28.946657>,  <38.008022, 38.012821, 28.980728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771896, 38.038971, 28.946657>,  <37.378353, 38.082554, 28.889874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771896, 38.038971, 28.946657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178423, 0.536343, -0.824925,
		0.013740, 0.836938, 0.547125,
		0.983858, -0.108954, 0.141959,
		38.067055, 38.006287, 28.989244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596249, 38.750359, 28.719509>,  <37.378353, 38.082554, 28.889874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596249, 38.750359, 28.719509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917850, 38.513809, 28.694666>,  <38.110809, 38.371880, 28.679760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917850, 38.513809, 28.694666>,  <37.596249, 38.750359, 28.719509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917850, 38.513809, 28.694666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205533, 0.374393, -0.904205,
		0.557975, 0.714218, 0.422560,
		0.804003, -0.591373, -0.062107,
		38.159050, 38.336399, 28.676033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153629, 39.212055, 28.584669>,  <37.596249, 38.750359, 28.719509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153629, 39.212055, 28.584669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294506, 38.855228, 28.471401>,  <38.379032, 38.641132, 28.403440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294506, 38.855228, 28.471401>,  <38.153629, 39.212055, 28.584669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294506, 38.855228, 28.471401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050083, 0.320085, -0.946064,
		0.934588, 0.319012, 0.157407,
		0.352190, -0.892063, -0.283170,
		38.400162, 38.587608, 28.386450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803371, 39.305538, 28.238098>,  <38.153629, 39.212055, 28.584669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803371, 39.305538, 28.238098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653896, 38.951324, 28.127687>,  <38.564213, 38.738796, 28.061441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653896, 38.951324, 28.127687>,  <38.803371, 39.305538, 28.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653896, 38.951324, 28.127687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033686, 0.310348, -0.950026,
		0.926943, -0.345715, -0.145804,
		-0.373688, -0.885531, -0.276029,
		38.541790, 38.685665, 28.044878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258774, 39.160286, 27.749773>,  <38.803371, 39.305538, 28.238098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258774, 39.160286, 27.749773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916752, 38.959736, 27.696850>,  <38.711540, 38.839405, 27.665096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916752, 38.959736, 27.696850>,  <39.258774, 39.160286, 27.749773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916752, 38.959736, 27.696850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051937, 0.171063, -0.983890,
		0.515933, -0.848150, -0.120228,
		-0.855053, -0.501378, -0.132307,
		38.660236, 38.809322, 27.657158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341496, 38.825138, 27.102999>,  <39.258774, 39.160286, 27.749773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341496, 38.825138, 27.102999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948032, 38.797184, 27.169374>,  <38.711956, 38.780411, 27.209200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948032, 38.797184, 27.169374>,  <39.341496, 38.825138, 27.102999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948032, 38.797184, 27.169374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166173, -0.002498, -0.986093,
		0.069328, -0.997552, -0.009156,
		-0.983657, -0.069885, 0.165939,
		38.652935, 38.776218, 27.219156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252632, 38.185471, 26.762392>,  <39.341496, 38.825138, 27.102999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252632, 38.185471, 26.762392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937092, 38.430534, 26.781857>,  <38.747768, 38.577572, 26.793535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937092, 38.430534, 26.781857>,  <39.252632, 38.185471, 26.762392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937092, 38.430534, 26.781857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040605, 0.027053, -0.998809,
		-0.613243, -0.789886, 0.003536,
		-0.788850, 0.612657, 0.048663,
		38.700436, 38.614330, 26.796455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753632, 38.007175, 26.202648>,  <39.252632, 38.185471, 26.762392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753632, 38.007175, 26.202648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661015, 38.384422, 26.298073>,  <38.605442, 38.610771, 26.355328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661015, 38.384422, 26.298073>,  <38.753632, 38.007175, 26.202648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661015, 38.384422, 26.298073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037889, 0.253783, -0.966519,
		-0.972086, -0.214753, -0.094496,
		-0.231544, 0.943120, 0.238562,
		38.591553, 38.667358, 26.369642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268318, 38.265438, 25.726105>,  <38.753632, 38.007175, 26.202648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268318, 38.265438, 25.726105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428371, 38.602100, 25.871162>,  <38.524403, 38.804096, 25.958197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428371, 38.602100, 25.871162>,  <38.268318, 38.265438, 25.726105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428371, 38.602100, 25.871162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035080, 0.381348, -0.923766,
		-0.915785, 0.382351, 0.123064,
		0.400133, 0.841654, 0.362646,
		38.548412, 38.854595, 25.979956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837391, 38.790127, 25.419434>,  <38.268318, 38.265438, 25.726105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837391, 38.790127, 25.419434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183407, 38.965134, 25.517647>,  <38.391014, 39.070137, 25.576574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183407, 38.965134, 25.517647>,  <37.837391, 38.790127, 25.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183407, 38.965134, 25.517647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062072, 0.578968, -0.812984,
		-0.497854, 0.688020, 0.527986,
		0.865037, 0.437520, 0.245535,
		38.442917, 39.096390, 25.591307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784416, 39.417469, 25.012989>,  <37.837391, 38.790127, 25.419434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784416, 39.417469, 25.012989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164265, 39.424690, 25.138142>,  <38.392174, 39.429024, 25.213234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164265, 39.424690, 25.138142>,  <37.784416, 39.417469, 25.012989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164265, 39.424690, 25.138142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211944, 0.698446, -0.683559,
		-0.230869, 0.715435, 0.659433,
		0.949621, 0.018050, 0.312881,
		38.449150, 39.430107, 25.232006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043278, 40.053684, 24.740135>,  <37.784416, 39.417469, 25.012989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043278, 40.053684, 24.740135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377762, 39.841770, 24.796831>,  <38.578453, 39.714622, 24.830849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377762, 39.841770, 24.796831>,  <38.043278, 40.053684, 24.740135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377762, 39.841770, 24.796831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305555, 0.235454, -0.922604,
		0.455406, 0.814796, 0.358765,
		0.836207, -0.529782, 0.141738,
		38.628624, 39.682835, 24.839352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618938, 40.485737, 24.548412>,  <38.043278, 40.053684, 24.740135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618938, 40.485737, 24.548412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748859, 40.107426, 24.546896>,  <38.826813, 39.880440, 24.545986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748859, 40.107426, 24.546896>,  <38.618938, 40.485737, 24.548412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748859, 40.107426, 24.546896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417914, 0.147115, -0.896496,
		0.848442, 0.289596, 0.443036,
		0.324799, -0.945776, -0.003793,
		38.846298, 39.823692, 24.545757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333530, 40.559120, 24.399490>,  <38.618938, 40.485737, 24.548412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333530, 40.559120, 24.399490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219063, 40.187920, 24.304062>,  <39.150383, 39.965199, 24.246805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219063, 40.187920, 24.304062>,  <39.333530, 40.559120, 24.399490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219063, 40.187920, 24.304062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334915, 0.136403, -0.932323,
		0.897741, -0.346703, 0.271768,
		-0.286169, -0.928004, -0.238571,
		39.133213, 39.909519, 24.232491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908897, 40.332710, 24.060713>,  <39.333530, 40.559120, 24.399490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908897, 40.332710, 24.060713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614033, 40.103508, 23.917463>,  <39.437115, 39.965984, 23.831512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614033, 40.103508, 23.917463>,  <39.908897, 40.332710, 24.060713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614033, 40.103508, 23.917463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471138, -0.055937, -0.880284,
		0.484379, -0.817637, 0.311201,
		-0.737160, -0.573010, -0.358125,
		39.392883, 39.931606, 23.810026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261986, 39.688538, 23.643879>,  <39.908897, 40.332710, 24.060713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261986, 39.688538, 23.643879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885143, 39.708492, 23.511242>,  <39.659039, 39.720467, 23.431660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885143, 39.708492, 23.511242>,  <40.261986, 39.688538, 23.643879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885143, 39.708492, 23.511242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314844, -0.208699, -0.925915,
		-0.115393, -0.976707, 0.180910,
		-0.942103, 0.049886, -0.331593,
		39.602512, 39.723457, 23.411764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249805, 39.089214, 23.239939>,  <40.261986, 39.688538, 23.643879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249805, 39.089214, 23.239939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951370, 39.331097, 23.128450>,  <39.772308, 39.476227, 23.061558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951370, 39.331097, 23.128450>,  <40.249805, 39.089214, 23.239939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951370, 39.331097, 23.128450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227423, -0.161994, -0.960227,
		-0.625804, -0.779802, -0.016661,
		-0.746088, 0.604704, -0.278721,
		39.727543, 39.512508, 23.044834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912319, 38.718742, 22.607656>,  <40.249805, 39.089214, 23.239939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912319, 38.718742, 22.607656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771461, 39.093067, 22.601448>,  <39.686947, 39.317661, 22.597723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771461, 39.093067, 22.601448>,  <39.912319, 38.718742, 22.607656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771461, 39.093067, 22.601448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144707, 0.038055, -0.988743,
		-0.924690, -0.350430, -0.148820,
		-0.352148, 0.935816, -0.015521,
		39.665817, 39.373814, 22.596792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216972, 38.372166, 21.964453>,  <39.912319, 38.718742, 22.607656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216972, 38.372166, 21.964453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481007, 38.077160, 21.907385>,  <40.639427, 37.900154, 21.873144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481007, 38.077160, 21.907385>,  <40.216972, 38.372166, 21.964453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481007, 38.077160, 21.907385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123167, -0.293614, 0.947956,
		-0.741024, -0.608160, -0.284648,
		0.660086, -0.737518, -0.142670,
		40.679031, 37.855904, 21.864584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946346, 37.778526, 22.340111>,  <40.216972, 38.372166, 21.964453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946346, 37.778526, 22.340111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335430, 37.696136, 22.297390>,  <40.568882, 37.646702, 22.271757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335430, 37.696136, 22.297390>,  <39.946346, 37.778526, 22.340111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335430, 37.696136, 22.297390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057986, -0.229902, 0.971485,
		-0.224640, -0.951171, -0.211687,
		0.972715, -0.205959, -0.106800,
		40.627243, 37.634342, 22.265348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041042, 37.153706, 22.693993>,  <39.946346, 37.778526, 22.340111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041042, 37.153706, 22.693993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392681, 37.342072, 22.664516>,  <40.603664, 37.455093, 22.646832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392681, 37.342072, 22.664516>,  <40.041042, 37.153706, 22.693993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392681, 37.342072, 22.664516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108083, -0.046372, 0.993060,
		0.464234, -0.880957, -0.091663,
		0.879093, 0.470920, -0.073689,
		40.656410, 37.483349, 22.642410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442413, 36.709724, 22.891287>,  <40.041042, 37.153706, 22.693993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442413, 36.709724, 22.891287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634113, 37.059097, 22.925760>,  <40.749134, 37.268723, 22.946444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634113, 37.059097, 22.925760>,  <40.442413, 36.709724, 22.891287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634113, 37.059097, 22.925760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085177, -0.144017, 0.985903,
		0.873534, -0.465157, -0.143418,
		0.479254, 0.873435, 0.086183,
		40.777889, 37.321129, 22.951614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110703, 36.538395, 23.085152>,  <40.442413, 36.709724, 22.891287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110703, 36.538395, 23.085152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149754, 36.923885, 23.184515>,  <41.173183, 37.155178, 23.244133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149754, 36.923885, 23.184515>,  <41.110703, 36.538395, 23.085152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149754, 36.923885, 23.184515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130660, -0.259852, 0.956768,
		0.986608, -0.060954, -0.151289,
		0.097631, 0.963723, 0.248408,
		41.179043, 37.213001, 23.259037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765610, 36.653790, 23.449406>,  <41.110703, 36.538395, 23.085152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765610, 36.653790, 23.449406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475479, 36.904991, 23.562193>,  <41.301399, 37.055714, 23.629866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475479, 36.904991, 23.562193>,  <41.765610, 36.653790, 23.449406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475479, 36.904991, 23.562193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029500, -0.437579, 0.898696,
		0.687768, 0.643534, 0.335916,
		-0.725331, 0.628004, 0.281969,
		41.257881, 37.093391, 23.646784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973141, 36.744709, 24.032972>,  <41.765610, 36.653790, 23.449406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973141, 36.744709, 24.032972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611553, 36.915638, 24.039242>,  <41.394600, 37.018196, 24.043003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611553, 36.915638, 24.039242>,  <41.973141, 36.744709, 24.032972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611553, 36.915638, 24.039242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108637, -0.264952, 0.958122,
		0.413578, 0.864406, 0.285930,
		-0.903964, 0.427321, 0.015672,
		41.340363, 37.043835, 24.043943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915924, 37.078693, 24.675688>,  <41.973141, 36.744709, 24.032972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915924, 37.078693, 24.675688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537201, 37.025723, 24.558371>,  <41.309967, 36.993938, 24.487980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537201, 37.025723, 24.558371>,  <41.915924, 37.078693, 24.675688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537201, 37.025723, 24.558371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275937, -0.134848, 0.951670,
		-0.165578, 0.981977, 0.091133,
		-0.946807, -0.132429, -0.293291,
		41.253159, 36.985992, 24.470383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483078, 37.509464, 25.076586>,  <41.915924, 37.078693, 24.675688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483078, 37.509464, 25.076586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251122, 37.211967, 24.943575>,  <41.111950, 37.033470, 24.863770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251122, 37.211967, 24.943575>,  <41.483078, 37.509464, 25.076586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251122, 37.211967, 24.943575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275735, -0.204899, 0.939141,
		-0.766615, 0.636287, -0.086257,
		-0.579889, -0.743744, -0.332525,
		41.077156, 36.988846, 24.843817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812580, 37.572781, 25.519028>,  <41.483078, 37.509464, 25.076586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812580, 37.572781, 25.519028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773129, 37.221401, 25.332006>,  <40.749458, 37.010574, 25.219793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773129, 37.221401, 25.332006>,  <40.812580, 37.572781, 25.519028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773129, 37.221401, 25.332006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441130, -0.382562, 0.811820,
		-0.892007, 0.286320, -0.349777,
		-0.098629, -0.878446, -0.467552,
		40.743542, 36.957867, 25.191740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157738, 37.470329, 25.622000>,  <40.812580, 37.572781, 25.519028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157738, 37.470329, 25.622000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338875, 37.120567, 25.552322>,  <40.447559, 36.910709, 25.510515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338875, 37.120567, 25.552322>,  <40.157738, 37.470329, 25.622000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338875, 37.120567, 25.552322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312794, -0.338764, 0.887355,
		-0.834920, -0.347347, -0.426917,
		0.452844, -0.874408, -0.174193,
		40.474728, 36.858246, 25.500065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693176, 36.896938, 25.665386>,  <40.157738, 37.470329, 25.622000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693176, 36.896938, 25.665386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060772, 36.747192, 25.714884>,  <40.281330, 36.657345, 25.744583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060772, 36.747192, 25.714884>,  <39.693176, 36.896938, 25.665386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060772, 36.747192, 25.714884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237042, -0.273778, 0.932125,
		-0.315078, -0.885943, -0.340339,
		0.918987, -0.374366, 0.123745,
		40.336468, 36.634884, 25.752008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552544, 36.186058, 25.753319>,  <39.693176, 36.896938, 25.665386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552544, 36.186058, 25.753319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907784, 36.260193, 25.921568>,  <40.120930, 36.304672, 26.022518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907784, 36.260193, 25.921568>,  <39.552544, 36.186058, 25.753319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907784, 36.260193, 25.921568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300501, -0.458347, 0.836431,
		0.347814, -0.869234, -0.351365,
		0.888102, 0.185337, 0.420625,
		40.174213, 36.315792, 26.047756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764664, 35.608986, 26.141190>,  <39.552544, 36.186058, 25.753319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764664, 35.608986, 26.141190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997078, 35.885071, 26.313707>,  <40.136524, 36.050720, 26.417217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997078, 35.885071, 26.313707>,  <39.764664, 35.608986, 26.141190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997078, 35.885071, 26.313707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184177, -0.404670, 0.895724,
		0.792767, -0.599879, -0.108006,
		0.581033, 0.690208, 0.431293,
		40.171387, 36.092133, 26.443096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238274, 35.285656, 26.579437>,  <39.764664, 35.608986, 26.141190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238274, 35.285656, 26.579437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228397, 35.659252, 26.722017>,  <40.222469, 35.883408, 26.807566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228397, 35.659252, 26.722017>,  <40.238274, 35.285656, 26.579437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228397, 35.659252, 26.722017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257347, -0.350483, 0.900519,
		0.966004, -0.069494, 0.249014,
		-0.024695, 0.933988, 0.356451,
		40.220989, 35.939449, 26.828953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620575, 35.333031, 27.219984>,  <40.238274, 35.285656, 26.579437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620575, 35.333031, 27.219984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402927, 35.664875, 27.270063>,  <40.272339, 35.863983, 27.300112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402927, 35.664875, 27.270063>,  <40.620575, 35.333031, 27.219984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402927, 35.664875, 27.270063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198623, -0.272351, 0.941474,
		0.815159, 0.487406, 0.312971,
		-0.544118, 0.829615, 0.125200,
		40.239693, 35.913761, 27.307623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866901, 35.660210, 27.875629>,  <40.620575, 35.333031, 27.219984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866901, 35.660210, 27.875629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497536, 35.794830, 27.801834>,  <40.275917, 35.875603, 27.757557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497536, 35.794830, 27.801834>,  <40.866901, 35.660210, 27.875629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497536, 35.794830, 27.801834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268900, -0.224327, 0.936680,
		0.273857, 0.914554, 0.297646,
		-0.923415, 0.336553, -0.184490,
		40.220512, 35.895798, 27.746487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683842, 36.067257, 28.433352>,  <40.866901, 35.660210, 27.875629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683842, 36.067257, 28.433352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325150, 35.990978, 28.273596>,  <40.109936, 35.945210, 28.177742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325150, 35.990978, 28.273596>,  <40.683842, 36.067257, 28.433352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325150, 35.990978, 28.273596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374667, -0.153261, 0.914405,
		-0.235586, 0.969611, 0.065986,
		-0.896730, -0.190698, -0.399387,
		40.056129, 35.933769, 28.153780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142891, 36.610550, 28.515091>,  <40.683842, 36.067257, 28.433352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142891, 36.610550, 28.515091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945618, 36.269588, 28.445610>,  <39.827251, 36.065010, 28.403921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945618, 36.269588, 28.445610>,  <40.142891, 36.610550, 28.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945618, 36.269588, 28.445610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433139, 0.067452, 0.898799,
		-0.754426, 0.518511, -0.402477,
		-0.493186, -0.852406, -0.173700,
		39.797661, 36.013866, 28.393499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555470, 36.680599, 29.022745>,  <40.142891, 36.610550, 28.515091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555470, 36.680599, 29.022745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514050, 36.307289, 28.885180>,  <39.489197, 36.083302, 28.802641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514050, 36.307289, 28.885180>,  <39.555470, 36.680599, 29.022745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514050, 36.307289, 28.885180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400757, -0.277314, 0.873207,
		-0.910314, 0.228244, -0.345302,
		-0.103547, -0.933275, -0.343913,
		39.482986, 36.027306, 28.782005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803787, 36.409042, 29.114046>,  <39.555470, 36.680599, 29.022745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803787, 36.409042, 29.114046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072842, 36.113804, 29.135145>,  <39.234276, 35.936661, 29.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072842, 36.113804, 29.135145>,  <38.803787, 36.409042, 29.114046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072842, 36.113804, 29.135145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365389, -0.269304, 0.891048,
		-0.643469, -0.618624, -0.450834,
		0.672635, -0.738092, 0.052749,
		39.274632, 35.892376, 29.150970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533638, 35.905090, 29.392105>,  <38.803787, 36.409042, 29.114046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533638, 35.905090, 29.392105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902687, 35.755287, 29.428999>,  <39.124115, 35.665405, 29.451136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902687, 35.755287, 29.428999>,  <38.533638, 35.905090, 29.392105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902687, 35.755287, 29.428999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302283, -0.553571, 0.776005,
		-0.239562, -0.743842, -0.623946,
		0.922624, -0.374509, 0.092236,
		39.179474, 35.642933, 29.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389984, 35.314728, 29.829157>,  <38.533638, 35.905090, 29.392105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389984, 35.314728, 29.829157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789879, 35.307091, 29.824139>,  <39.029816, 35.302509, 29.821127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789879, 35.307091, 29.824139>,  <38.389984, 35.314728, 29.829157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789879, 35.307091, 29.824139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002198, -0.466346, 0.884600,
		-0.022736, -0.884396, -0.466183,
		0.999739, -0.019088, -0.012547,
		39.089802, 35.301365, 29.820375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537502, 34.648945, 30.137632>,  <38.389984, 35.314728, 29.829157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537502, 34.648945, 30.137632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864540, 34.876312, 30.174391>,  <39.060760, 35.012733, 30.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864540, 34.876312, 30.174391>,  <38.537502, 34.648945, 30.137632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864540, 34.876312, 30.174391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011390, -0.143600, 0.989570,
		0.575686, -0.810111, -0.110932,
		0.817592, 0.568418, 0.091896,
		39.109818, 35.046837, 30.201960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148277, 34.188812, 30.367075>,  <38.537502, 34.648945, 30.137632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148277, 34.188812, 30.367075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272938, 34.552914, 30.476112>,  <39.347733, 34.771374, 30.541534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272938, 34.552914, 30.476112>,  <39.148277, 34.188812, 30.367075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272938, 34.552914, 30.476112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318330, -0.370325, 0.872654,
		0.895287, -0.185189, -0.405174,
		0.311652, 0.910255, 0.272596,
		39.366432, 34.825989, 30.557892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789715, 34.107830, 30.690802>,  <39.148277, 34.188812, 30.367075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789715, 34.107830, 30.690802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660450, 34.461071, 30.826859>,  <39.582890, 34.673016, 30.908493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660450, 34.461071, 30.826859>,  <39.789715, 34.107830, 30.690802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660450, 34.461071, 30.826859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236457, -0.272678, 0.932596,
		0.916327, 0.381808, -0.120696,
		-0.323162, 0.883102, 0.340143,
		39.563503, 34.726002, 30.928902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364033, 34.463978, 30.974295>,  <39.789715, 34.107830, 30.690802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364033, 34.463978, 30.974295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025589, 34.599281, 31.139061>,  <39.822521, 34.680466, 31.237921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025589, 34.599281, 31.139061>,  <40.364033, 34.463978, 30.974295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025589, 34.599281, 31.139061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313089, -0.310018, 0.897699,
		0.431360, 0.888519, 0.156403,
		-0.846111, 0.338263, 0.411915,
		39.771755, 34.700760, 31.262636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626125, 34.851120, 31.555513>,  <40.364033, 34.463978, 30.974295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626125, 34.851120, 31.555513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240585, 34.752975, 31.597052>,  <40.009262, 34.694088, 31.621975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240585, 34.752975, 31.597052>,  <40.626125, 34.851120, 31.555513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240585, 34.752975, 31.597052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179718, -0.310995, 0.933265,
		-0.196691, 0.918194, 0.343849,
		-0.963854, -0.245361, 0.103846,
		39.951427, 34.679367, 31.628206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516487, 35.041538, 32.274067>,  <40.626125, 34.851120, 31.555513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516487, 35.041538, 32.274067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219765, 34.788155, 32.186016>,  <40.041733, 34.636124, 32.133186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219765, 34.788155, 32.186016>,  <40.516487, 35.041538, 32.274067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219765, 34.788155, 32.186016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013212, -0.341983, 0.939613,
		-0.670483, 0.694104, 0.262054,
		-0.741807, -0.633457, -0.220123,
		39.997223, 34.598118, 32.119980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149597, 35.050686, 32.933266>,  <40.516487, 35.041538, 32.274067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149597, 35.050686, 32.933266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018578, 34.720669, 32.749081>,  <39.939968, 34.522659, 32.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018578, 34.720669, 32.749081>,  <40.149597, 35.050686, 32.933266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018578, 34.720669, 32.749081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088297, -0.458481, 0.884307,
		-0.940700, 0.330309, 0.077325,
		-0.327547, -0.825040, -0.460459,
		39.920315, 34.473156, 32.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654129, 34.893593, 33.319462>,  <40.149597, 35.050686, 32.933266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654129, 34.893593, 33.319462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740353, 34.549900, 33.133877>,  <39.792088, 34.343685, 33.022526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740353, 34.549900, 33.133877>,  <39.654129, 34.893593, 33.319462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740353, 34.549900, 33.133877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125120, -0.495520, 0.859537,
		-0.968442, -0.127229, -0.214320,
		0.215557, -0.859228, -0.463964,
		39.805019, 34.292133, 32.994686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184277, 34.416473, 33.605801>,  <39.654129, 34.893593, 33.319462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184277, 34.416473, 33.605801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476479, 34.196991, 33.443184>,  <39.651798, 34.065300, 33.345612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476479, 34.196991, 33.443184>,  <39.184277, 34.416473, 33.605801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476479, 34.196991, 33.443184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054409, -0.640187, 0.766290,
		-0.680738, -0.537657, -0.497514,
		0.730504, -0.548712, -0.406546,
		39.695629, 34.032379, 33.321220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024456, 33.654102, 33.691559>,  <39.184277, 34.416473, 33.605801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024456, 33.654102, 33.691559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412701, 33.633904, 33.597443>,  <39.645649, 33.621784, 33.540974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412701, 33.633904, 33.597443>,  <39.024456, 33.654102, 33.691559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412701, 33.633904, 33.597443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131243, -0.708449, 0.693451,
		-0.201707, -0.703953, -0.681003,
		0.970613, -0.050497, -0.235288,
		39.703884, 33.618755, 33.526855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097416, 32.996227, 33.585072>,  <39.024456, 33.654102, 33.691559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097416, 32.996227, 33.585072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457436, 33.148384, 33.670120>,  <39.673447, 33.239677, 33.721149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457436, 33.148384, 33.670120>,  <39.097416, 32.996227, 33.585072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457436, 33.148384, 33.670120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164438, -0.748293, 0.642665,
		0.403570, -0.543468, -0.736053,
		0.900050, 0.380395, 0.212622,
		39.727451, 33.262505, 33.733906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518917, 32.480743, 33.751225>,  <39.097416, 32.996227, 33.585072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518917, 32.480743, 33.751225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717266, 32.777508, 33.931747>,  <39.836277, 32.955566, 34.040062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717266, 32.777508, 33.931747>,  <39.518917, 32.480743, 33.751225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717266, 32.777508, 33.931747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237781, -0.615847, 0.751128,
		0.835206, -0.265151, -0.481794,
		0.495873, 0.741908, 0.451311,
		39.866028, 33.000080, 34.067142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180218, 32.211864, 33.957500>,  <39.518917, 32.480743, 33.751225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180218, 32.211864, 33.957500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140003, 32.524845, 34.203320>,  <40.115875, 32.712631, 34.350811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140003, 32.524845, 34.203320>,  <40.180218, 32.211864, 33.957500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140003, 32.524845, 34.203320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400720, -0.533521, 0.744835,
		0.910668, 0.321143, -0.259905,
		-0.100534, 0.782447, 0.614548,
		40.109844, 32.759579, 34.387684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713722, 32.261444, 34.317493>,  <40.180218, 32.211864, 33.957500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713722, 32.261444, 34.317493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488697, 32.487209, 34.559139>,  <40.353680, 32.622669, 34.704128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488697, 32.487209, 34.559139>,  <40.713722, 32.261444, 34.317493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488697, 32.487209, 34.559139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277797, -0.559175, 0.781122,
		0.778685, 0.607253, 0.157779,
		-0.562565, 0.564417, 0.604114,
		40.319927, 32.656536, 34.740372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088127, 32.382023, 34.946503>,  <40.713722, 32.261444, 34.317493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088127, 32.382023, 34.946503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706081, 32.445053, 35.046841>,  <40.476852, 32.482872, 35.107044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706081, 32.445053, 35.046841>,  <41.088127, 32.382023, 34.946503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706081, 32.445053, 35.046841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110512, -0.596117, 0.795256,
		0.274843, 0.787283, 0.551948,
		-0.955117, 0.157574, 0.250843,
		40.419548, 32.492325, 35.122093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123524, 32.565121, 35.532249>,  <41.088127, 32.382023, 34.946503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123524, 32.565121, 35.532249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749619, 32.425980, 35.503361>,  <40.525276, 32.342495, 35.486027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749619, 32.425980, 35.503361>,  <41.123524, 32.565121, 35.532249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749619, 32.425980, 35.503361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166543, -0.608610, 0.775795,
		-0.313820, 0.713155, 0.626838,
		-0.934762, -0.347855, -0.072223,
		40.469189, 32.321625, 35.481693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813469, 32.544167, 36.189167>,  <41.123524, 32.565121, 35.532249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813469, 32.544167, 36.189167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613628, 32.268356, 35.979420>,  <40.493725, 32.102871, 35.853573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613628, 32.268356, 35.979420>,  <40.813469, 32.544167, 36.189167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613628, 32.268356, 35.979420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058295, -0.577192, 0.814525,
		-0.864293, 0.437504, 0.248169,
		-0.499599, -0.689522, -0.524367,
		40.463749, 32.061501, 35.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106167, 32.389214, 36.501648>,  <40.813469, 32.544167, 36.189167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106167, 32.389214, 36.501648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310795, 32.095436, 36.323261>,  <40.433571, 31.919170, 36.216228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310795, 32.095436, 36.323261>,  <40.106167, 32.389214, 36.501648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310795, 32.095436, 36.323261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238455, -0.377292, 0.894869,
		-0.825493, -0.564130, -0.017879,
		0.511567, -0.734444, -0.445971,
		40.464264, 31.875103, 36.189468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811096, 31.752401, 36.817089>,  <40.106167, 32.389214, 36.501648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811096, 31.752401, 36.817089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170521, 31.661617, 36.666851>,  <40.386177, 31.607147, 36.576710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170521, 31.661617, 36.666851>,  <39.811096, 31.752401, 36.817089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170521, 31.661617, 36.666851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228517, -0.488690, 0.841999,
		-0.374651, -0.842420, -0.387254,
		0.898564, -0.226961, -0.375595,
		40.440090, 31.593529, 36.554173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814468, 31.065153, 36.955276>,  <39.811096, 31.752401, 36.817089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814468, 31.065153, 36.955276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200508, 31.145849, 36.888489>,  <40.432133, 31.194267, 36.848415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200508, 31.145849, 36.888489>,  <39.814468, 31.065153, 36.955276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200508, 31.145849, 36.888489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249920, -0.519102, 0.817357,
		0.078218, -0.830563, -0.551405,
		0.965102, 0.201739, -0.166971,
		40.490040, 31.206371, 36.838398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161938, 30.483849, 37.155060>,  <39.814468, 31.065153, 36.955276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161938, 30.483849, 37.155060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465363, 30.744490, 37.154896>,  <40.647419, 30.900873, 37.154797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465363, 30.744490, 37.154896>,  <40.161938, 30.483849, 37.155060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465363, 30.744490, 37.154896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331436, -0.385302, 0.861216,
		0.561013, -0.653420, -0.508239,
		0.758561, 0.651602, -0.000408,
		40.692932, 30.939970, 37.154774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646946, 30.098745, 37.318283>,  <40.161938, 30.483849, 37.155060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646946, 30.098745, 37.318283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776825, 30.470078, 37.390701>,  <40.854752, 30.692877, 37.434151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776825, 30.470078, 37.390701>,  <40.646946, 30.098745, 37.318283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776825, 30.470078, 37.390701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499014, -0.330747, 0.800994,
		0.803467, -0.169733, -0.570642,
		0.324693, 0.928330, 0.181045,
		40.874233, 30.748577, 37.445015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280697, 30.007868, 37.502502>,  <40.646946, 30.098745, 37.318283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280697, 30.007868, 37.502502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208080, 30.378904, 37.633110>,  <41.164509, 30.601526, 37.711475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208080, 30.378904, 37.633110>,  <41.280697, 30.007868, 37.502502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208080, 30.378904, 37.633110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694666, -0.114052, 0.710233,
		0.696047, 0.355763, -0.623660,
		-0.181545, 0.927591, 0.326522,
		41.153618, 30.657181, 37.731068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927174, 30.447750, 37.393745>,  <41.280697, 30.007868, 37.502502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927174, 30.447750, 37.393745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696915, 30.542999, 37.706646>,  <41.558758, 30.600149, 37.894386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696915, 30.542999, 37.706646>,  <41.927174, 30.447750, 37.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696915, 30.542999, 37.706646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809633, 0.031978, 0.586064,
		0.114539, 0.970709, -0.211199,
		-0.575651, 0.238121, 0.782256,
		41.524220, 30.614435, 37.941322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327297, 30.872934, 37.728672>,  <41.927174, 30.447750, 37.393745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327297, 30.872934, 37.728672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049656, 30.760603, 37.993805>,  <41.883072, 30.693205, 38.152885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049656, 30.760603, 37.993805>,  <42.327297, 30.872934, 37.728672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049656, 30.760603, 37.993805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705161, -0.080043, 0.704515,
		-0.144792, 0.956415, 0.253587,
		-0.694106, -0.280828, 0.662836,
		41.841423, 30.676355, 38.192657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458084, 31.347284, 38.294724>,  <42.327297, 30.872934, 37.728672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458084, 31.347284, 38.294724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267429, 31.015633, 38.411587>,  <42.153038, 30.816641, 38.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267429, 31.015633, 38.411587>,  <42.458084, 31.347284, 38.294724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267429, 31.015633, 38.411587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718064, -0.175470, 0.673494,
		-0.507149, 0.530803, 0.679005,
		-0.476638, -0.829131, 0.292161,
		42.124439, 30.766893, 38.499233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556480, 31.333889, 39.054203>,  <42.458084, 31.347284, 38.294724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556480, 31.333889, 39.054203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407936, 30.969233, 38.983780>,  <42.318810, 30.750439, 38.941525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407936, 30.969233, 38.983780>,  <42.556480, 31.333889, 39.054203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407936, 30.969233, 38.983780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403591, -0.329265, 0.853639,
		-0.836184, 0.245952, 0.490207,
		-0.371362, -0.911642, -0.176062,
		42.296528, 30.695740, 38.930962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346691, 31.047810, 39.675571>,  <42.556480, 31.333889, 39.054203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346691, 31.047810, 39.675571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372768, 30.690733, 39.497200>,  <42.388412, 30.476486, 39.390179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372768, 30.690733, 39.497200>,  <42.346691, 31.047810, 39.675571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372768, 30.690733, 39.497200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247441, -0.418459, 0.873879,
		-0.966707, -0.167310, 0.193609,
		0.065191, -0.892692, -0.445927,
		42.392326, 30.422926, 39.363422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962044, 30.568521, 40.056648>,  <42.346691, 31.047810, 39.675571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962044, 30.568521, 40.056648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221916, 30.345903, 39.849506>,  <42.377838, 30.212334, 39.725224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221916, 30.345903, 39.849506>,  <41.962044, 30.568521, 40.056648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221916, 30.345903, 39.849506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153924, -0.570787, 0.806542,
		-0.744460, -0.603705, -0.285164,
		0.649681, -0.556545, -0.517853,
		42.416821, 30.178940, 39.694149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717632, 29.941092, 40.140049>,  <41.962044, 30.568521, 40.056648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717632, 29.941092, 40.140049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110497, 29.928202, 40.065941>,  <42.346214, 29.920467, 40.021477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110497, 29.928202, 40.065941>,  <41.717632, 29.941092, 40.140049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110497, 29.928202, 40.065941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161932, -0.355949, 0.920368,
		-0.095602, -0.933949, -0.344381,
		0.982160, -0.032223, -0.185266,
		42.405144, 29.918535, 40.010361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974697, 29.352106, 40.315895>,  <41.717632, 29.941092, 40.140049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974697, 29.352106, 40.315895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283409, 29.605249, 40.340691>,  <42.468636, 29.757135, 40.355568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283409, 29.605249, 40.340691>,  <41.974697, 29.352106, 40.315895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283409, 29.605249, 40.340691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207507, -0.342807, 0.916201,
		0.601075, -0.694245, -0.395895,
		0.771783, 0.632857, 0.061992,
		42.514946, 29.795107, 40.359287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626869, 28.886827, 40.345280>,  <41.974697, 29.352106, 40.315895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626869, 28.886827, 40.345280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694530, 29.245653, 40.508579>,  <42.735126, 29.460949, 40.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694530, 29.245653, 40.508579>,  <42.626869, 28.886827, 40.345280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694530, 29.245653, 40.508579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202835, -0.437032, 0.876276,
		0.964493, -0.065415, -0.255880,
		0.169150, 0.897064, 0.408246,
		42.745274, 29.514772, 40.631054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927055, 28.723942, 41.124714>,  <42.626869, 28.886827, 40.345280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927055, 28.723942, 41.124714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919918, 29.123749, 41.114563>,  <42.915638, 29.363634, 41.108471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919918, 29.123749, 41.114563>,  <42.927055, 28.723942, 41.124714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919918, 29.123749, 41.114563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027591, 0.025868, 0.999285,
		0.999460, 0.017128, -0.028040,
		-0.017841, 0.999519, -0.025381,
		42.914566, 29.423605, 41.106949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568333, 29.113497, 41.438290>,  <42.927055, 28.723942, 41.124714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568333, 29.113497, 41.438290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265633, 29.373837, 41.462727>,  <43.084015, 29.530041, 41.477390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265633, 29.373837, 41.462727>,  <43.568333, 29.113497, 41.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265633, 29.373837, 41.462727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126246, 0.053808, 0.990539,
		0.641402, 0.757300, -0.122886,
		-0.756747, 0.650847, 0.061093,
		43.038609, 29.569090, 41.481056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800541, 29.748219, 41.890667>,  <43.568333, 29.113497, 41.438290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800541, 29.748219, 41.890667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401802, 29.717688, 41.881935>,  <43.162560, 29.699369, 41.876698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401802, 29.717688, 41.881935>,  <43.800541, 29.748219, 41.890667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401802, 29.717688, 41.881935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016976, -0.063685, 0.997826,
		-0.077552, 0.995047, 0.062189,
		-0.996844, -0.076328, -0.021830,
		43.102749, 29.694790, 41.875385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479744, 30.292889, 42.354149>,  <43.800541, 29.748219, 41.890667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479744, 30.292889, 42.354149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220177, 29.990582, 42.319016>,  <43.064434, 29.809196, 42.297935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220177, 29.990582, 42.319016>,  <43.479744, 30.292889, 42.354149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220177, 29.990582, 42.319016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104947, -0.025432, 0.994153,
		-0.753582, 0.654346, -0.062812,
		-0.648922, -0.755767, -0.087837,
		43.025501, 29.763851, 42.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815258, 30.484406, 42.732281>,  <43.479744, 30.292889, 42.354149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815258, 30.484406, 42.732281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857761, 30.087093, 42.713951>,  <42.883263, 29.848705, 42.702953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857761, 30.087093, 42.713951>,  <42.815258, 30.484406, 42.732281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857761, 30.087093, 42.713951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204046, -0.066885, 0.976674,
		-0.973178, -0.094425, -0.209782,
		0.106254, -0.993283, -0.045824,
		42.889637, 29.789108, 42.700203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243980, 29.959190, 43.061424>,  <42.815258, 30.484406, 42.732281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243980, 29.959190, 43.061424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611637, 29.805609, 43.096668>,  <42.832230, 29.713459, 43.117813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611637, 29.805609, 43.096668>,  <42.243980, 29.959190, 43.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611637, 29.805609, 43.096668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161057, -0.162140, 0.973535,
		-0.359510, -0.909003, -0.210868,
		0.919137, -0.383958, 0.088111,
		42.887379, 29.690422, 43.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354080, 29.265491, 43.260601>,  <42.243980, 29.959190, 43.061424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354080, 29.265491, 43.260601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660660, 29.490337, 43.384911>,  <42.844608, 29.625244, 43.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660660, 29.490337, 43.384911>,  <42.354080, 29.265491, 43.260601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660660, 29.490337, 43.384911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347932, -0.043354, 0.936517,
		0.539901, -0.825924, 0.162348,
		0.766453, 0.562112, 0.310772,
		42.890594, 29.658972, 43.478142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714252, 28.899399, 43.691357>,  <42.354080, 29.265491, 43.260601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714252, 28.899399, 43.691357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723835, 29.288116, 43.785202>,  <42.729584, 29.521347, 43.841511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723835, 29.288116, 43.785202>,  <42.714252, 28.899399, 43.691357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723835, 29.288116, 43.785202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280068, -0.218758, 0.934723,
		0.959681, -0.088102, 0.266927,
		0.023959, 0.971794, 0.234612,
		42.731022, 29.579655, 43.855587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360546, 28.786364, 43.558567>,  <42.714252, 28.899399, 43.691357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360546, 28.786364, 43.558567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000793, 28.731358, 43.392578>,  <42.784943, 28.698355, 43.292984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000793, 28.731358, 43.392578>,  <43.360546, 28.786364, 43.558567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000793, 28.731358, 43.392578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173493, 0.759005, -0.627543,
		0.401261, -0.636396, -0.658779,
		-0.899383, -0.137515, -0.414970,
		42.730980, 28.690104, 43.268085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447155, 28.822445, 42.832458>,  <43.360546, 28.786364, 43.558567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447155, 28.822445, 42.832458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053879, 28.877340, 42.880627>,  <42.817913, 28.910278, 42.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053879, 28.877340, 42.880627>,  <43.447155, 28.822445, 42.832458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053879, 28.877340, 42.880627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021157, 0.569448, -0.821755,
		-0.181348, -0.810490, -0.556973,
		-0.983191, 0.137240, 0.120416,
		42.758923, 28.918512, 42.916752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010025, 28.684992, 42.279568>,  <43.447155, 28.822445, 42.832458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010025, 28.684992, 42.279568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859325, 29.007334, 42.462284>,  <42.768906, 29.200739, 42.571915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859325, 29.007334, 42.462284>,  <43.010025, 28.684992, 42.279568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859325, 29.007334, 42.462284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211967, 0.405048, -0.889385,
		-0.901738, -0.431898, 0.018214,
		-0.376746, 0.805854, 0.456795,
		42.746300, 29.249090, 42.599323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142349, 28.819620, 42.144180>,  <43.010025, 28.684992, 42.279568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142349, 28.819620, 42.144180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400246, 29.121500, 42.192753>,  <42.554981, 29.302628, 42.221897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400246, 29.121500, 42.192753>,  <42.142349, 28.819620, 42.144180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400246, 29.121500, 42.192753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135424, 0.269121, -0.953538,
		-0.752313, 0.598336, 0.275716,
		0.644736, 0.754698, 0.121434,
		42.593666, 29.347910, 42.229183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837849, 29.410023, 41.780472>,  <42.142349, 28.819620, 42.144180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837849, 29.410023, 41.780472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227592, 29.488226, 41.825027>,  <42.461437, 29.535149, 41.851761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227592, 29.488226, 41.825027>,  <41.837849, 29.410023, 41.780472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227592, 29.488226, 41.825027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072686, 0.195025, -0.978101,
		-0.212951, 0.961115, 0.175813,
		0.974355, 0.195509, 0.111391,
		42.519897, 29.546879, 41.858444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932144, 30.070011, 41.443226>,  <41.837849, 29.410023, 41.780472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932144, 30.070011, 41.443226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277611, 29.870178, 41.470039>,  <42.484890, 29.750278, 41.486130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277611, 29.870178, 41.470039>,  <41.932144, 30.070011, 41.443226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277611, 29.870178, 41.470039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264131, 0.335277, -0.904336,
		0.429313, 0.798754, 0.421524,
		0.863670, -0.499581, 0.067037,
		42.536713, 29.720304, 41.490150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280964, 30.549974, 41.155315>,  <41.932144, 30.070011, 41.443226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280964, 30.549974, 41.155315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477654, 30.201820, 41.165470>,  <42.595665, 29.992928, 41.171562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477654, 30.201820, 41.165470>,  <42.280964, 30.549974, 41.155315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477654, 30.201820, 41.165470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359703, 0.176490, -0.916223,
		0.792985, 0.459657, 0.399863,
		0.491720, -0.870383, 0.025386,
		42.625168, 29.940706, 41.173084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959492, 30.674202, 41.152622>,  <42.280964, 30.549974, 41.155315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959492, 30.674202, 41.152622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856098, 30.327419, 40.982174>,  <42.794060, 30.119350, 40.879906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856098, 30.327419, 40.982174>,  <42.959492, 30.674202, 41.152622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856098, 30.327419, 40.982174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313965, 0.341765, -0.885790,
		0.913571, -0.362749, 0.183852,
		-0.258485, -0.866955, -0.426117,
		42.778553, 30.067333, 40.854340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479240, 30.583530, 40.599380>,  <42.959492, 30.674202, 41.152622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479240, 30.583530, 40.599380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154762, 30.363464, 40.520107>,  <42.960075, 30.231424, 40.472542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154762, 30.363464, 40.520107>,  <43.479240, 30.583530, 40.599380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154762, 30.363464, 40.520107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031199, 0.297707, -0.954147,
		0.583938, -0.780186, -0.224335,
		-0.811198, -0.550164, -0.198183,
		42.911404, 30.198416, 40.460651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625233, 30.083740, 40.086018>,  <43.479240, 30.583530, 40.599380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625233, 30.083740, 40.086018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246006, 30.210892, 40.090351>,  <43.018471, 30.287182, 40.092953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246006, 30.210892, 40.090351>,  <43.625233, 30.083740, 40.086018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246006, 30.210892, 40.090351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080252, 0.272034, -0.958935,
		-0.307772, -0.908268, -0.283417,
		-0.948070, 0.317879, 0.010834,
		42.961586, 30.306255, 40.093601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348816, 29.917385, 39.500252>,  <43.625233, 30.083740, 40.086018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348816, 29.917385, 39.500252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133507, 30.233406, 39.617607>,  <43.004322, 30.423019, 39.688019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133507, 30.233406, 39.617607>,  <43.348816, 29.917385, 39.500252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133507, 30.233406, 39.617607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107851, 0.280687, -0.953721,
		-0.835840, -0.545006, -0.065879,
		-0.538275, 0.790053, 0.293389,
		42.972023, 30.470423, 39.705624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868851, 29.849991, 38.994591>,  <43.348816, 29.917385, 39.500252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868851, 29.849991, 38.994591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900337, 30.210131, 39.165787>,  <42.919228, 30.426214, 39.268505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900337, 30.210131, 39.165787>,  <42.868851, 29.849991, 38.994591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900337, 30.210131, 39.165787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039486, 0.426166, -0.903782,
		-0.996115, 0.088043, -0.002005,
		0.078717, 0.900350, 0.427987,
		42.923954, 30.480236, 39.294182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466942, 29.372065, 38.557899>,  <42.868851, 29.849991, 38.994591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466942, 29.372065, 38.557899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413311, 29.665850, 38.824009>,  <42.381134, 29.842121, 38.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413311, 29.665850, 38.824009>,  <42.466942, 29.372065, 38.557899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413311, 29.665850, 38.824009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415467, 0.567823, -0.710608,
		-0.899672, -0.371675, 0.229014,
		-0.134075, 0.734462, 0.665273,
		42.373089, 29.886189, 39.023590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778790, 29.486380, 38.564163>,  <42.466942, 29.372065, 38.557899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778790, 29.486380, 38.564163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954395, 29.822184, 38.692219>,  <42.059761, 30.023666, 38.769051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954395, 29.822184, 38.692219>,  <41.778790, 29.486380, 38.564163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954395, 29.822184, 38.692219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675558, 0.543336, -0.498404,
		-0.592357, 0.002538, 0.805672,
		0.439016, 0.839511, 0.320134,
		42.086102, 30.074038, 38.788258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296860, 29.781483, 38.969856>,  <41.778790, 29.486380, 38.564163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296860, 29.781483, 38.969856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538303, 30.057526, 38.810150>,  <41.683170, 30.223150, 38.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538303, 30.057526, 38.810150>,  <41.296860, 29.781483, 38.969856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538303, 30.057526, 38.810150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776475, 0.395176, -0.490838,
		-0.180952, 0.606291, 0.774382,
		0.603608, 0.690106, -0.399262,
		41.719387, 30.264557, 38.690372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936611, 30.362389, 39.052761>,  <41.296860, 29.781483, 38.969856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936611, 30.362389, 39.052761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221115, 30.460587, 38.789295>,  <41.391819, 30.519505, 38.631218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221115, 30.460587, 38.789295>,  <40.936611, 30.362389, 39.052761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221115, 30.460587, 38.789295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701729, 0.193332, -0.685711,
		-0.040998, 0.949924, 0.309780,
		0.711264, 0.245494, -0.658663,
		41.434494, 30.534235, 38.591698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747295, 31.069399, 38.870464>,  <40.936611, 30.362389, 39.052761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747295, 31.069399, 38.870464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977497, 30.879358, 38.604210>,  <41.115620, 30.765335, 38.444458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977497, 30.879358, 38.604210>,  <40.747295, 31.069399, 38.870464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977497, 30.879358, 38.604210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558451, 0.366300, -0.744282,
		0.597432, 0.800065, -0.054512,
		0.575506, -0.475100, -0.665637,
		41.150150, 30.736828, 38.404518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632465, 31.516497, 38.435654>,  <40.747295, 31.069399, 38.870464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632465, 31.516497, 38.435654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806019, 31.229593, 38.217560>,  <40.910152, 31.057451, 38.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806019, 31.229593, 38.217560>,  <40.632465, 31.516497, 38.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806019, 31.229593, 38.217560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299394, 0.455996, -0.838112,
		0.849768, 0.526886, -0.016892,
		0.433887, -0.717258, -0.545237,
		40.936184, 31.014416, 38.053989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139767, 31.875317, 38.034271>,  <40.632465, 31.516497, 38.435654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139767, 31.875317, 38.034271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083138, 31.529795, 37.840862>,  <41.049160, 31.322481, 37.724815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083138, 31.529795, 37.840862>,  <41.139767, 31.875317, 38.034271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083138, 31.529795, 37.840862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153546, 0.463372, -0.872760,
		0.977947, -0.197806, 0.067031,
		-0.141577, -0.863805, -0.483525,
		41.040665, 31.270653, 37.695805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486206, 31.865660, 37.375809>,  <41.139767, 31.875317, 38.034271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486206, 31.865660, 37.375809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240311, 31.568453, 37.269962>,  <41.092773, 31.390129, 37.206455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240311, 31.568453, 37.269962>,  <41.486206, 31.865660, 37.375809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240311, 31.568453, 37.269962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021668, 0.319462, -0.947351,
		0.788436, -0.588104, -0.180285,
		-0.614735, -0.743019, -0.264618,
		41.055889, 31.345547, 37.190578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730164, 31.603067, 36.770565>,  <41.486206, 31.865660, 37.375809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730164, 31.603067, 36.770565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346409, 31.490828, 36.782135>,  <41.116154, 31.423485, 36.789078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346409, 31.490828, 36.782135>,  <41.730164, 31.603067, 36.770565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346409, 31.490828, 36.782135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138292, 0.378496, -0.915214,
		0.245858, -0.882047, -0.401929,
		-0.959390, -0.280596, 0.028924,
		41.058594, 31.406649, 36.790813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591694, 31.239719, 36.031940>,  <41.730164, 31.603067, 36.770565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591694, 31.239719, 36.031940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241177, 31.346014, 36.192680>,  <41.030865, 31.409792, 36.289124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241177, 31.346014, 36.192680>,  <41.591694, 31.239719, 36.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241177, 31.346014, 36.192680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306244, 0.336658, -0.890436,
		-0.371910, -0.903352, -0.213632,
		-0.876298, 0.265739, 0.401853,
		40.978287, 31.425735, 36.313236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037930, 30.903397, 35.595985>,  <41.591694, 31.239719, 36.031940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037930, 30.903397, 35.595985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882275, 31.221067, 35.782684>,  <40.788883, 31.411671, 35.894703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882275, 31.221067, 35.782684>,  <41.037930, 30.903397, 35.595985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882275, 31.221067, 35.782684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373808, 0.326956, -0.867967,
		-0.841928, -0.512230, 0.169641,
		-0.389134, 0.794179, 0.466749,
		40.765533, 31.459322, 35.922710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300198, 30.154577, 35.760635>,  <41.037930, 30.903397, 35.595985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300198, 30.154577, 35.760635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568146, 29.861938, 35.709969>,  <41.728916, 29.686356, 35.679569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568146, 29.861938, 35.709969>,  <41.300198, 30.154577, 35.760635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568146, 29.861938, 35.709969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691049, -0.551942, -0.466703,
		0.271528, 0.400160, -0.875297,
		0.669869, -0.731596, -0.126662,
		41.769108, 29.642460, 35.671970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011925, 30.091320, 35.540470>,  <41.300198, 30.154577, 35.760635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011925, 30.091320, 35.540470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967262, 30.305002, 35.205292>,  <41.940464, 30.433212, 35.004185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967262, 30.305002, 35.205292>,  <42.011925, 30.091320, 35.540470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967262, 30.305002, 35.205292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952171, -0.183843, -0.244076,
		-0.284437, -0.825121, -0.488130,
		-0.111653, 0.534207, -0.837948,
		41.933765, 30.465265, 34.953907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226627, 29.621075, 34.986778>,  <42.011925, 30.091320, 35.540470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226627, 29.621075, 34.986778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267262, 29.981892, 34.818966>,  <42.291641, 30.198381, 34.718281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267262, 29.981892, 34.818966>,  <42.226627, 29.621075, 34.986778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267262, 29.981892, 34.818966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966312, -0.189714, -0.173924,
		-0.236477, -0.387726, -0.890925,
		0.101586, 0.902041, -0.419527,
		42.297737, 30.252504, 34.693108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405231, 29.523056, 34.224743>,  <42.226627, 29.621075, 34.986778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405231, 29.523056, 34.224743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516663, 29.846750, 34.431637>,  <42.583523, 30.040968, 34.555771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516663, 29.846750, 34.431637>,  <42.405231, 29.523056, 34.224743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516663, 29.846750, 34.431637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960376, -0.229914, -0.157537,
		-0.008566, 0.540623, -0.841221,
		0.278576, 0.809238, 0.517232,
		42.600235, 30.089521, 34.586807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913548, 29.847080, 33.923180>,  <42.405231, 29.523056, 34.224743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913548, 29.847080, 33.923180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948811, 29.927423, 34.313438>,  <42.969967, 29.975630, 34.547592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948811, 29.927423, 34.313438>,  <42.913548, 29.847080, 33.923180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948811, 29.927423, 34.313438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974980, -0.218056, -0.043202,
		0.204068, 0.955043, -0.215057,
		0.088155, 0.200860, 0.975645,
		42.975258, 29.987682, 34.606133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380714, 30.474037, 34.157089>,  <42.913548, 29.847080, 33.923180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380714, 30.474037, 34.157089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374794, 30.204111, 34.452225>,  <43.371243, 30.042154, 34.629307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374794, 30.204111, 34.452225>,  <43.380714, 30.474037, 34.157089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374794, 30.204111, 34.452225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988133, -0.122702, -0.092403,
		0.152889, 0.727713, 0.668624,
		-0.014798, -0.674817, 0.737837,
		43.370354, 30.001667, 34.673576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931225, 30.806572, 34.634102>,  <43.380714, 30.474037, 34.157089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931225, 30.806572, 34.634102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306595, 30.876225, 34.753460>,  <43.531815, 30.918016, 34.825077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306595, 30.876225, 34.753460>,  <42.931225, 30.806572, 34.634102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306595, 30.876225, 34.753460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097125, 0.961828, -0.255838,
		-0.331559, 0.211101, 0.919513,
		0.938422, 0.174133, 0.298400,
		43.588120, 30.928465, 34.842979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931381, 31.494772, 34.739342>,  <42.931225, 30.806572, 34.634102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931381, 31.494772, 34.739342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324097, 31.425785, 34.771191>,  <43.559727, 31.384394, 34.790298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324097, 31.425785, 34.771191>,  <42.931381, 31.494772, 34.739342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324097, 31.425785, 34.771191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189002, 0.844942, -0.500352,
		0.019021, 0.506290, 0.862154,
		0.981792, -0.172466, 0.079618,
		43.618633, 31.374044, 34.795074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170235, 32.062233, 35.103920>,  <42.931381, 31.494772, 34.739342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170235, 32.062233, 35.103920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475231, 31.898994, 34.903095>,  <43.658230, 31.801052, 34.782600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475231, 31.898994, 34.903095>,  <43.170235, 32.062233, 35.103920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475231, 31.898994, 34.903095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199735, 0.886556, -0.417283,
		0.615396, 0.217896, 0.757502,
		0.762492, -0.408094, -0.502061,
		43.703979, 31.776566, 34.752476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805859, 32.308025, 35.341637>,  <43.170235, 32.062233, 35.103920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805859, 32.308025, 35.341637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893593, 32.175285, 34.974644>,  <43.946232, 32.095642, 34.754448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893593, 32.175285, 34.974644>,  <43.805859, 32.308025, 35.341637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893593, 32.175285, 34.974644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362009, 0.900930, -0.239322,
		0.906003, -0.279645, 0.317737,
		0.219334, -0.331850, -0.917479,
		43.959393, 32.075729, 34.699398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561115, 32.296879, 35.087582>,  <43.805859, 32.308025, 35.341637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561115, 32.296879, 35.087582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322906, 32.323933, 34.767387>,  <44.179981, 32.340164, 34.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322906, 32.323933, 34.767387>,  <44.561115, 32.296879, 35.087582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322906, 32.323933, 34.767387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398237, 0.890249, -0.221051,
		0.697679, -0.450424, -0.557101,
		-0.595525, 0.067636, -0.800484,
		44.144249, 32.344223, 34.527241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935974, 32.437763, 34.365856>,  <44.561115, 32.296879, 35.087582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935974, 32.437763, 34.365856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562267, 32.571312, 34.315765>,  <44.338043, 32.651440, 34.285713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562267, 32.571312, 34.315765>,  <44.935974, 32.437763, 34.365856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562267, 32.571312, 34.315765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354944, 0.904361, -0.236951,
		0.034135, -0.265822, -0.963417,
		-0.934264, 0.333871, -0.125223,
		44.281986, 32.671474, 34.278198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296120, 33.087395, 34.217419>,  <44.935974, 32.437763, 34.365856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296120, 33.087395, 34.217419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106800, 33.431614, 34.142113>,  <44.993210, 33.638145, 34.096928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106800, 33.431614, 34.142113>,  <45.296120, 33.087395, 34.217419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106800, 33.431614, 34.142113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805006, 0.509314, 0.304243,
		0.357704, -0.007559, -0.933804,
		-0.473300, 0.860548, -0.188269,
		44.964809, 33.689777, 34.085632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074104, 33.208328, 34.032852>,  <45.296120, 33.087395, 34.217419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074104, 33.208328, 34.032852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397900, 33.136017, 33.809406>,  <46.592178, 33.092628, 33.675339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397900, 33.136017, 33.809406>,  <46.074104, 33.208328, 34.032852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397900, 33.136017, 33.809406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569715, 0.471883, 0.672868,
		0.141957, -0.862928, 0.484978,
		0.809490, -0.180781, -0.558610,
		46.640747, 33.081783, 33.641823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680260, 32.955658, 34.373810>,  <46.074104, 33.208328, 34.032852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680260, 32.955658, 34.373810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792004, 33.168720, 34.054253>,  <46.859051, 33.296558, 33.862518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792004, 33.168720, 34.054253>,  <46.680260, 32.955658, 34.373810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792004, 33.168720, 34.054253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515624, 0.618654, 0.592788,
		0.809994, -0.577530, -0.101827,
		0.279357, 0.532660, -0.798895,
		46.875813, 33.328518, 33.814583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380627, 33.098572, 34.412014>,  <46.680260, 32.955658, 34.373810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380627, 33.098572, 34.412014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.247478, 33.375950, 34.156410>,  <47.167591, 33.542377, 34.003048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.247478, 33.375950, 34.156410>,  <47.380627, 33.098572, 34.412014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.247478, 33.375950, 34.156410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579890, 0.684905, 0.441173,
		0.743591, -0.223705, -0.630102,
		-0.332867, 0.693442, -0.639013,
		47.147617, 33.583981, 33.964706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.968613, 33.493587, 33.939976>,  <47.380627, 33.098572, 34.412014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.968613, 33.493587, 33.939976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640827, 33.709988, 34.015659>,  <47.444157, 33.839828, 34.061069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640827, 33.709988, 34.015659>,  <47.968613, 33.493587, 33.939976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640827, 33.709988, 34.015659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561716, 0.692570, 0.452573,
		0.113802, 0.477148, -0.871424,
		-0.819466, 0.540996, 0.189206,
		47.394989, 33.872288, 34.072422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.022896, 34.280941, 33.665291>,  <47.968613, 33.493587, 33.939976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.022896, 34.280941, 33.665291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.796032, 34.211773, 33.987392>,  <47.659916, 34.170273, 34.180653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.796032, 34.211773, 33.987392>,  <48.022896, 34.280941, 33.665291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.796032, 34.211773, 33.987392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457303, 0.747032, 0.482511,
		-0.684986, 0.641904, -0.344605,
		-0.567157, -0.172925, 0.805251,
		47.625885, 34.159897, 34.228970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.709137, 34.845058, 33.985382>,  <48.022896, 34.280941, 33.665291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.709137, 34.845058, 33.985382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717201, 34.599133, 34.300747>,  <47.722038, 34.451576, 34.489967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717201, 34.599133, 34.300747>,  <47.709137, 34.845058, 33.985382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717201, 34.599133, 34.300747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372711, 0.736351, 0.564689,
		-0.927728, 0.282467, 0.243992,
		0.020158, -0.614817, 0.788412,
		47.723248, 34.414688, 34.537270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475765, 35.176765, 34.688114>,  <47.709137, 34.845058, 33.985382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475765, 35.176765, 34.688114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745602, 34.884670, 34.731346>,  <47.907501, 34.709412, 34.757286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745602, 34.884670, 34.731346>,  <47.475765, 35.176765, 34.688114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745602, 34.884670, 34.731346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603828, 0.630074, 0.488260,
		-0.424644, -0.264113, 0.865980,
		0.674588, -0.730240, 0.108078,
		47.947979, 34.665600, 34.763771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507996, 34.852077, 35.358044>,  <47.475765, 35.176765, 34.688114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507996, 34.852077, 35.358044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828487, 34.890598, 35.121822>,  <48.020782, 34.913712, 34.980091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828487, 34.890598, 35.121822>,  <47.507996, 34.852077, 35.358044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828487, 34.890598, 35.121822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379111, 0.681878, 0.625553,
		0.462927, -0.725098, 0.509834,
		0.801233, 0.096302, -0.590552,
		48.068855, 34.919491, 34.944656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.923321, 33.796284, 27.477642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683361, 34.112026, 27.529848>,  <36.539387, 34.301472, 27.561172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683361, 34.112026, 27.529848>,  <36.923321, 33.796284, 27.477642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683361, 34.112026, 27.529848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248469, -0.338869, 0.907431,
		0.760518, 0.511935, 0.399418,
		-0.599896, 0.789361, 0.130516,
		36.503391, 34.348835, 27.569002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133656, 34.088528, 28.011332>,  <36.923321, 33.796284, 27.477642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133656, 34.088528, 28.011332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758434, 34.226360, 27.996826>,  <36.533302, 34.309059, 27.988123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758434, 34.226360, 27.996826>,  <37.133656, 34.088528, 28.011332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758434, 34.226360, 27.996826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189303, -0.422033, 0.886596,
		0.290200, 0.838542, 0.461120,
		-0.938056, 0.344581, -0.036264,
		36.477016, 34.329735, 27.985947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000771, 34.345757, 28.645311>,  <37.133656, 34.088528, 28.011332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000771, 34.345757, 28.645311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630508, 34.290054, 28.504587>,  <36.408352, 34.256634, 28.420153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630508, 34.290054, 28.504587>,  <37.000771, 34.345757, 28.645311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630508, 34.290054, 28.504587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297397, -0.307052, 0.904032,
		-0.233914, 0.941449, 0.242811,
		-0.925656, -0.139254, -0.351808,
		36.352810, 34.248280, 28.399044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553101, 34.723461, 29.106066>,  <37.000771, 34.345757, 28.645311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553101, 34.723461, 29.106066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324116, 34.449173, 28.926252>,  <36.186726, 34.284599, 28.818365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324116, 34.449173, 28.926252>,  <36.553101, 34.723461, 29.106066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324116, 34.449173, 28.926252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350646, -0.290850, 0.890199,
		-0.741170, 0.667233, -0.073942,
		-0.572464, -0.685716, -0.449532,
		36.152378, 34.243458, 28.791393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851742, 34.782391, 29.417336>,  <36.553101, 34.723461, 29.106066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851742, 34.782391, 29.417336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843643, 34.428539, 29.230993>,  <35.838783, 34.216228, 29.119188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843643, 34.428539, 29.230993>,  <35.851742, 34.782391, 29.417336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843643, 34.428539, 29.230993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422595, -0.414709, 0.805872,
		-0.906093, 0.213184, -0.365443,
		-0.020247, -0.884629, -0.465855,
		35.837570, 34.163151, 29.091236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252831, 34.543507, 29.575235>,  <35.851742, 34.782391, 29.417336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252831, 34.543507, 29.575235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454865, 34.215370, 29.467955>,  <35.576084, 34.018490, 29.403587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454865, 34.215370, 29.467955>,  <35.252831, 34.543507, 29.575235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454865, 34.215370, 29.467955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307494, -0.461402, 0.832200,
		-0.806435, -0.337861, -0.485296,
		0.505084, -0.820340, -0.268201,
		35.606388, 33.969269, 29.387495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811436, 33.970188, 29.725340>,  <35.252831, 34.543507, 29.575235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811436, 33.970188, 29.725340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175812, 33.805729, 29.711775>,  <35.394436, 33.707054, 29.703636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175812, 33.805729, 29.711775>,  <34.811436, 33.970188, 29.725340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175812, 33.805729, 29.711775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170883, -0.450870, 0.876080,
		-0.375491, -0.792258, -0.480972,
		0.910937, -0.411150, -0.033914,
		35.449093, 33.682384, 29.701601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739651, 33.272839, 29.898371>,  <34.811436, 33.970188, 29.725340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739651, 33.272839, 29.898371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127823, 33.343132, 29.964552>,  <35.360725, 33.385307, 30.004261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127823, 33.343132, 29.964552>,  <34.739651, 33.272839, 29.898371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127823, 33.343132, 29.964552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096146, -0.347298, 0.932813,
		0.221391, -0.921141, -0.320133,
		0.970434, 0.175737, 0.165453,
		35.418953, 33.395855, 30.014187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980843, 32.703621, 30.265736>,  <34.739651, 33.272839, 29.898371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980843, 32.703621, 30.265736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245018, 32.990433, 30.354893>,  <35.403522, 33.162521, 30.408386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245018, 32.990433, 30.354893>,  <34.980843, 32.703621, 30.265736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245018, 32.990433, 30.354893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076111, -0.359240, 0.930136,
		0.747010, -0.597337, -0.291831,
		0.660442, 0.717033, 0.222892,
		35.443150, 33.205544, 30.421761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543125, 32.436672, 30.649427>,  <34.980843, 32.703621, 30.265736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543125, 32.436672, 30.649427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549202, 32.828709, 30.728609>,  <35.552849, 33.063931, 30.776117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549202, 32.828709, 30.728609>,  <35.543125, 32.436672, 30.649427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549202, 32.828709, 30.728609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007712, -0.198084, 0.980155,
		0.999855, -0.013364, -0.010568,
		0.015192, 0.980094, 0.197953,
		35.553761, 33.122738, 30.787994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201710, 32.577690, 31.013191>,  <35.543125, 32.436672, 30.649427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201710, 32.577690, 31.013191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960289, 32.888485, 31.084761>,  <35.815437, 33.074963, 31.127703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.960289, 32.888485, 31.084761>,  <36.201710, 32.577690, 31.013191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960289, 32.888485, 31.084761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170704, -0.093280, 0.980897,
		0.778837, 0.622563, -0.076336,
		-0.603550, 0.776990, 0.178924,
		35.779224, 33.121582, 31.138437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578838, 33.027012, 31.433180>,  <36.201710, 32.577690, 31.013191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578838, 33.027012, 31.433180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195534, 33.126171, 31.490150>,  <35.965549, 33.185665, 31.524332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195534, 33.126171, 31.490150>,  <36.578838, 33.027012, 31.433180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195534, 33.126171, 31.490150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101527, -0.170641, 0.980089,
		0.267263, 0.953640, 0.138350,
		-0.958260, 0.247895, 0.142426,
		35.908054, 33.200539, 31.532879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588528, 33.584621, 31.973473>,  <36.578838, 33.027012, 31.433180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588528, 33.584621, 31.973473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218212, 33.433456, 31.969561>,  <35.996021, 33.342758, 31.967215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218212, 33.433456, 31.969561>,  <36.588528, 33.584621, 31.973473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218212, 33.433456, 31.969561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067244, -0.190074, 0.979464,
		-0.372009, 0.906121, 0.201381,
		-0.925790, -0.377911, -0.009779,
		35.940475, 33.320084, 31.966627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225163, 33.858521, 32.591858>,  <36.588528, 33.584621, 31.973473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225163, 33.858521, 32.591858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038979, 33.517010, 32.498547>,  <35.927269, 33.312103, 32.442558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038979, 33.517010, 32.498547>,  <36.225163, 33.858521, 32.591858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038979, 33.517010, 32.498547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054239, -0.290592, 0.955308,
		-0.883406, 0.432003, 0.181567,
		-0.465459, -0.853773, -0.233280,
		35.899342, 33.260880, 32.428562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579556, 33.864109, 32.954979>,  <36.225163, 33.858521, 32.591858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579556, 33.864109, 32.954979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684074, 33.484329, 32.885387>,  <35.746788, 33.256462, 32.843632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684074, 33.484329, 32.885387>,  <35.579556, 33.864109, 32.954979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684074, 33.484329, 32.885387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010119, -0.177534, 0.984063,
		-0.965204, -0.258896, -0.036782,
		0.261300, -0.949450, -0.173977,
		35.762463, 33.199493, 32.833195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195274, 33.391438, 33.387024>,  <35.579556, 33.864109, 32.954979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195274, 33.391438, 33.387024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497181, 33.152935, 33.277622>,  <35.678326, 33.009834, 33.211983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497181, 33.152935, 33.277622>,  <35.195274, 33.391438, 33.387024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497181, 33.152935, 33.277622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028630, -0.386592, 0.921807,
		-0.655371, -0.703577, -0.274714,
		0.754764, -0.596260, -0.273504,
		35.723610, 32.974056, 33.195572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033085, 32.761314, 33.700241>,  <35.195274, 33.391438, 33.387024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033085, 32.761314, 33.700241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421783, 32.740219, 33.608219>,  <35.655003, 32.727562, 33.553005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421783, 32.740219, 33.608219>,  <35.033085, 32.761314, 33.700241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421783, 32.740219, 33.608219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170113, -0.519174, 0.837568,
		-0.163612, -0.853040, -0.495534,
		0.971747, -0.052740, -0.230057,
		35.713306, 32.724396, 33.539204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117477, 32.128067, 33.895184>,  <35.033085, 32.761314, 33.700241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117477, 32.128067, 33.895184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496384, 32.251945, 33.862240>,  <35.723728, 32.326271, 33.842476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496384, 32.251945, 33.862240>,  <35.117477, 32.128067, 33.895184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496384, 32.251945, 33.862240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277600, -0.664620, 0.693700,
		0.160100, -0.679978, -0.715541,
		0.947263, 0.309695, -0.082356,
		35.780563, 32.344852, 33.837532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445141, 31.472879, 33.696068>,  <35.117477, 32.128067, 33.895184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445141, 31.472879, 33.696068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718746, 31.732750, 33.828758>,  <35.882908, 31.888672, 33.908375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718746, 31.732750, 33.828758>,  <35.445141, 31.472879, 33.696068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718746, 31.732750, 33.828758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344540, -0.688566, 0.638098,
		0.642977, -0.322173, -0.694827,
		0.684012, 0.649679, 0.331731,
		35.923950, 31.927654, 33.928276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121174, 31.191650, 33.689636>,  <35.445141, 31.472879, 33.696068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121174, 31.191650, 33.689636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113361, 31.474564, 33.972298>,  <36.108673, 31.644312, 34.141895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113361, 31.474564, 33.972298>,  <36.121174, 31.191650, 33.689636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113361, 31.474564, 33.972298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441863, -0.627915, 0.640687,
		0.896870, 0.324762, -0.300256,
		-0.019536, 0.707285, 0.706658,
		36.107502, 31.686749, 34.184296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743477, 31.137579, 34.038559>,  <36.121174, 31.191650, 33.689636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743477, 31.137579, 34.038559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500645, 31.315578, 34.301903>,  <36.354946, 31.422379, 34.459908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500645, 31.315578, 34.301903>,  <36.743477, 31.137579, 34.038559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500645, 31.315578, 34.301903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197368, -0.718094, 0.667373,
		0.769742, 0.535085, 0.348111,
		-0.607078, 0.444999, 0.658356,
		36.318520, 31.449078, 34.499409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087379, 31.096186, 34.687347>,  <36.743477, 31.137579, 34.038559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087379, 31.096186, 34.687347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700882, 31.168064, 34.761200>,  <36.468983, 31.211191, 34.805511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700882, 31.168064, 34.761200>,  <37.087379, 31.096186, 34.687347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700882, 31.168064, 34.761200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026315, -0.644043, 0.764536,
		0.256298, 0.743584, 0.617571,
		-0.966240, 0.179697, 0.184634,
		36.411011, 31.221973, 34.816589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382492, 31.079567, 35.365650>,  <37.087379, 31.096186, 34.687347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382492, 31.079567, 35.365650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710979, 30.903675, 35.220192>,  <37.908073, 30.798140, 35.132915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710979, 30.903675, 35.220192>,  <37.382492, 31.079567, 35.365650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710979, 30.903675, 35.220192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335276, 0.143838, -0.931075,
		0.461728, 0.886537, -0.029309,
		0.821217, -0.439730, -0.363648,
		37.957344, 30.771755, 35.111099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718788, 31.548763, 34.804958>,  <37.382492, 31.079567, 35.365650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718788, 31.548763, 34.804958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846260, 31.173475, 34.751019>,  <37.922741, 30.948301, 34.718655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846260, 31.173475, 34.751019>,  <37.718788, 31.548763, 34.804958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846260, 31.173475, 34.751019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182514, 0.078868, -0.980035,
		0.930126, 0.336926, -0.146106,
		0.318676, -0.938222, -0.134851,
		37.941864, 30.892008, 34.710564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338314, 31.633780, 34.262573>,  <37.718788, 31.548763, 34.804958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338314, 31.633780, 34.262573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235828, 31.247625, 34.243038>,  <38.174335, 31.015932, 34.231316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235828, 31.247625, 34.243038>,  <38.338314, 31.633780, 34.262573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235828, 31.247625, 34.243038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090643, 0.074297, -0.993108,
		0.962361, -0.250021, -0.106542,
		-0.256214, -0.965386, -0.048838,
		38.158966, 30.958010, 34.228386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819077, 31.328897, 33.822514>,  <38.338314, 31.633780, 34.262573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819077, 31.328897, 33.822514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491673, 31.099482, 33.809277>,  <38.295231, 30.961832, 33.801334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491673, 31.099482, 33.809277>,  <38.819077, 31.328897, 33.822514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491673, 31.099482, 33.809277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030627, 0.101089, -0.994406,
		0.573678, -0.812915, -0.100308,
		-0.818508, -0.573541, -0.033096,
		38.246120, 30.927420, 33.799347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002098, 30.790737, 33.334965>,  <38.819077, 31.328897, 33.822514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002098, 30.790737, 33.334965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602699, 30.794138, 33.356625>,  <38.363060, 30.796179, 33.369621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602699, 30.794138, 33.356625>,  <39.002098, 30.790737, 33.334965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602699, 30.794138, 33.356625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054730, -0.100358, -0.993445,
		-0.003010, -0.994915, 0.100672,
		-0.998497, 0.008500, 0.054150,
		38.303150, 30.796688, 33.372871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768864, 30.196012, 32.953384>,  <39.002098, 30.790737, 33.334965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768864, 30.196012, 32.953384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.486187, 30.478508, 32.970425>,  <38.316582, 30.648006, 32.980648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.486187, 30.478508, 32.970425>,  <38.768864, 30.196012, 32.953384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486187, 30.478508, 32.970425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114628, -0.054864, -0.991892,
		-0.698176, -0.705844, 0.119727,
		-0.706689, 0.706240, 0.042605,
		38.274181, 30.690380, 32.983208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187370, 30.050234, 32.392887>,  <38.768864, 30.196012, 32.953384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187370, 30.050234, 32.392887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134808, 30.432930, 32.496719>,  <38.103271, 30.662548, 32.559021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134808, 30.432930, 32.496719>,  <38.187370, 30.050234, 32.392887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134808, 30.432930, 32.496719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374162, 0.194619, -0.906712,
		-0.918006, -0.216275, 0.332400,
		-0.131408, 0.956739, 0.259583,
		38.095387, 30.719952, 32.574593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614697, 30.237722, 32.033894>,  <38.187370, 30.050234, 32.392887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614697, 30.237722, 32.033894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811085, 30.570034, 32.138779>,  <37.928917, 30.769421, 32.201710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811085, 30.570034, 32.138779>,  <37.614697, 30.237722, 32.033894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811085, 30.570034, 32.138779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126317, 0.365694, -0.922124,
		-0.861970, 0.419614, 0.284486,
		0.490971, 0.830778, 0.262213,
		37.958374, 30.819267, 32.217442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128651, 30.744690, 31.816677>,  <37.614697, 30.237722, 32.033894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128651, 30.744690, 31.816677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476376, 30.937851, 31.858820>,  <37.685009, 31.053747, 31.884106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476376, 30.937851, 31.858820>,  <37.128651, 30.744690, 31.816677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476376, 30.937851, 31.858820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112218, 0.400424, -0.909433,
		-0.481354, 0.778759, 0.402285,
		0.869313, 0.482903, 0.105355,
		37.737171, 31.082722, 31.890427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002922, 31.462629, 31.569349>,  <37.128651, 30.744690, 31.816677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002922, 31.462629, 31.569349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400188, 31.426603, 31.539654>,  <37.638550, 31.404987, 31.521835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400188, 31.426603, 31.539654>,  <37.002922, 31.462629, 31.569349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400188, 31.426603, 31.539654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023858, 0.465972, -0.884478,
		0.114255, 0.880204, 0.460638,
		0.993165, -0.090066, -0.074240,
		37.698139, 31.399584, 31.517382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159443, 32.090420, 31.365639>,  <37.002922, 31.462629, 31.569349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159443, 32.090420, 31.365639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480804, 31.865843, 31.286312>,  <37.673622, 31.731096, 31.238716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480804, 31.865843, 31.286312>,  <37.159443, 32.090420, 31.365639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480804, 31.865843, 31.286312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111321, 0.468812, -0.876255,
		0.584939, 0.681908, 0.439145,
		0.803402, -0.561442, -0.198316,
		37.721825, 31.697411, 31.226818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524586, 32.503632, 30.855549>,  <37.159443, 32.090420, 31.365639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524586, 32.503632, 30.855549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714008, 32.153988, 30.812338>,  <37.827663, 31.944201, 30.786411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714008, 32.153988, 30.812338>,  <37.524586, 32.503632, 30.855549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714008, 32.153988, 30.812338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358087, 0.303135, -0.883110,
		0.804684, 0.379521, 0.456560,
		0.473558, -0.874113, -0.108026,
		37.856075, 31.891754, 30.779930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129845, 32.784142, 30.591213>,  <37.524586, 32.503632, 30.855549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129845, 32.784142, 30.591213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068100, 32.399403, 30.500864>,  <38.031052, 32.168560, 30.446653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.068100, 32.399403, 30.500864>,  <38.129845, 32.784142, 30.591213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068100, 32.399403, 30.500864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303157, 0.171478, -0.937385,
		0.940356, -0.213170, 0.265122,
		-0.154360, -0.961849, -0.225874,
		38.021793, 32.110847, 30.433102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627567, 32.611832, 30.076786>,  <38.129845, 32.784142, 30.591213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627567, 32.611832, 30.076786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356144, 32.323002, 30.022873>,  <38.193291, 32.149704, 29.990524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356144, 32.323002, 30.022873>,  <38.627567, 32.611832, 30.076786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356144, 32.323002, 30.022873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137827, 0.055071, -0.988924,
		0.721497, -0.689623, 0.062152,
		-0.678562, -0.722072, -0.134782,
		38.152576, 32.106380, 29.982439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997398, 32.128101, 29.630867>,  <38.627567, 32.611832, 30.076786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997398, 32.128101, 29.630867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600113, 32.084549, 29.614485>,  <38.361744, 32.058418, 29.604656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600113, 32.084549, 29.614485>,  <38.997398, 32.128101, 29.630867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600113, 32.084549, 29.614485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030147, 0.099107, -0.994620,
		0.112372, -0.989100, -0.095151,
		-0.993209, -0.108899, -0.040955,
		38.302151, 32.051884, 29.602200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027847, 31.704721, 29.221260>,  <38.997398, 32.128101, 29.630867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027847, 31.704721, 29.221260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656761, 31.850735, 29.190006>,  <38.434109, 31.938343, 29.171253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656761, 31.850735, 29.190006>,  <39.027847, 31.704721, 29.221260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656761, 31.850735, 29.190006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115708, 0.082184, -0.989877,
		-0.354915, -0.927361, -0.118480,
		-0.927711, 0.365031, -0.078135,
		38.378448, 31.960243, 29.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769222, 31.584547, 28.541742>,  <39.027847, 31.704721, 29.221260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769222, 31.584547, 28.541742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461056, 31.818428, 28.643393>,  <38.276154, 31.958757, 28.704382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461056, 31.818428, 28.643393>,  <38.769222, 31.584547, 28.541742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461056, 31.818428, 28.643393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149844, 0.221370, -0.963609,
		-0.619680, -0.780461, -0.082934,
		-0.770418, 0.584702, 0.254126,
		38.229931, 31.993839, 28.719631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266613, 31.374403, 28.041100>,  <38.769222, 31.584547, 28.541742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266613, 31.374403, 28.041100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218399, 31.745193, 28.183189>,  <38.189468, 31.967669, 28.268444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.218399, 31.745193, 28.183189>,  <38.266613, 31.374403, 28.041100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218399, 31.745193, 28.183189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002881, 0.357506, -0.933906,
		-0.992705, -0.113594, -0.040422,
		-0.120537, 0.926977, 0.355225,
		38.182240, 32.023285, 28.289757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.680897, 31.669928, 27.529497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838638, 31.969021, 27.743181>,  <37.933281, 32.148476, 27.871391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838638, 31.969021, 27.743181>,  <37.680897, 31.669928, 27.529497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838638, 31.969021, 27.743181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136646, 0.622570, -0.770542,
		-0.908743, 0.230868, 0.347686,
		0.394352, 0.747735, 0.534209,
		37.956944, 32.193340, 27.903444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303272, 32.234432, 27.358547>,  <37.680897, 31.669928, 27.529497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303272, 32.234432, 27.358547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652924, 32.371510, 27.496218>,  <37.862717, 32.453754, 27.578819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652924, 32.371510, 27.496218>,  <37.303272, 32.234432, 27.358547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652924, 32.371510, 27.496218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078238, 0.600026, -0.796145,
		-0.479345, 0.722864, 0.497691,
		0.874132, 0.342690, 0.344176,
		37.915165, 32.474316, 27.599470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258362, 32.987816, 27.287773>,  <37.303272, 32.234432, 27.358547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258362, 32.987816, 27.287773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641232, 32.877995, 27.324518>,  <37.870953, 32.812103, 27.346565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641232, 32.877995, 27.324518>,  <37.258362, 32.987816, 27.287773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641232, 32.877995, 27.324518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249265, 0.620143, -0.743834,
		0.147251, 0.734878, 0.662021,
		0.957175, -0.274549, 0.091862,
		37.928383, 32.795631, 27.352077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670780, 33.637287, 27.279732>,  <37.258362, 32.987816, 27.287773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670780, 33.637287, 27.279732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917229, 33.352520, 27.144936>,  <38.065098, 33.181660, 27.064058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917229, 33.352520, 27.144936>,  <37.670780, 33.637287, 27.279732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917229, 33.352520, 27.144936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339784, 0.626221, -0.701708,
		0.710588, 0.317837, 0.627729,
		0.616126, -0.711918, -0.336989,
		38.102066, 33.138943, 27.043839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332943, 34.001110, 27.164639>,  <37.670780, 33.637287, 27.279732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332943, 34.001110, 27.164639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333076, 33.654678, 26.964678>,  <38.333157, 33.446819, 26.844702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.333076, 33.654678, 26.964678>,  <38.332943, 34.001110, 27.164639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333076, 33.654678, 26.964678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475895, 0.439803, -0.761641,
		0.879502, -0.237644, 0.412313,
		0.000337, -0.866082, -0.499901,
		38.333179, 33.394852, 26.814707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985748, 34.069618, 26.720617>,  <38.332943, 34.001110, 27.164639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985748, 34.069618, 26.720617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769211, 33.773865, 26.560492>,  <38.639286, 33.596413, 26.464417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769211, 33.773865, 26.560492>,  <38.985748, 34.069618, 26.720617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769211, 33.773865, 26.560492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139256, 0.390693, -0.909927,
		0.829186, -0.548333, -0.108538,
		-0.541348, -0.739384, -0.400316,
		38.606808, 33.552048, 26.440397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485596, 33.617523, 26.209887>,  <38.985748, 34.069618, 26.720617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485596, 33.617523, 26.209887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103165, 33.582104, 26.098118>,  <38.873707, 33.560852, 26.031057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103165, 33.582104, 26.098118>,  <39.485596, 33.617523, 26.209887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103165, 33.582104, 26.098118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225066, 0.388948, -0.893345,
		0.187782, -0.916995, -0.351935,
		-0.956077, -0.088546, -0.279422,
		38.816341, 33.555538, 26.014292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526482, 33.325150, 25.518364>,  <39.485596, 33.617523, 26.209887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526482, 33.325150, 25.518364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.150616, 33.456314, 25.557348>,  <38.925095, 33.535011, 25.580740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.150616, 33.456314, 25.557348>,  <39.526482, 33.325150, 25.518364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150616, 33.456314, 25.557348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021253, 0.340313, -0.940072,
		-0.341428, -0.881284, -0.326750,
		-0.939668, 0.327911, 0.097462,
		38.868717, 33.554688, 25.586586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092255, 33.060566, 24.929976>,  <39.526482, 33.325150, 25.518364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092255, 33.060566, 24.929976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891998, 33.390266, 25.035778>,  <38.771847, 33.588089, 25.099260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891998, 33.390266, 25.035778>,  <39.092255, 33.060566, 24.929976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891998, 33.390266, 25.035778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023836, 0.318568, -0.947600,
		-0.865328, -0.468101, -0.179134,
		-0.500639, 0.824255, 0.264508,
		38.741806, 33.637543, 25.115131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471230, 33.022678, 24.424368>,  <39.092255, 33.060566, 24.929976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471230, 33.022678, 24.424368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487877, 33.394814, 24.570101>,  <38.497864, 33.618095, 24.657539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487877, 33.394814, 24.570101>,  <38.471230, 33.022678, 24.424368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487877, 33.394814, 24.570101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185188, 0.365510, -0.912199,
		-0.981821, -0.029509, 0.187498,
		0.041614, 0.930340, 0.364330,
		38.500362, 33.673916, 24.679399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915894, 33.346367, 24.203968>,  <38.471230, 33.022678, 24.424368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915894, 33.346367, 24.203968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148605, 33.654465, 24.308468>,  <38.288235, 33.839325, 24.371168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148605, 33.654465, 24.308468>,  <37.915894, 33.346367, 24.203968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148605, 33.654465, 24.308468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096188, 0.384105, -0.918265,
		-0.807636, 0.509103, 0.297554,
		0.581784, 0.770245, 0.261248,
		38.323139, 33.885540, 24.386843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477928, 33.984737, 24.121767>,  <37.915894, 33.346367, 24.203968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477928, 33.984737, 24.121767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859741, 34.103729, 24.113964>,  <38.088829, 34.175125, 24.109282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859741, 34.103729, 24.113964>,  <37.477928, 33.984737, 24.121767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859741, 34.103729, 24.113964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167123, 0.479764, -0.861334,
		-0.246871, 0.825428, 0.507665,
		0.954528, 0.297481, -0.019508,
		38.146099, 34.192974, 24.108112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443298, 34.685406, 23.960548>,  <37.477928, 33.984737, 24.121767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443298, 34.685406, 23.960548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.818607, 34.574364, 23.878016>,  <38.043793, 34.507740, 23.828497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.818607, 34.574364, 23.878016>,  <37.443298, 34.685406, 23.960548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818607, 34.574364, 23.878016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045228, 0.689878, -0.722511,
		0.342915, 0.668584, 0.659852,
		0.938277, -0.277604, -0.206331,
		38.100090, 34.491081, 23.816116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871204, 35.268845, 23.815611>,  <37.443298, 34.685406, 23.960548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871204, 35.268845, 23.815611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083157, 34.981785, 23.634855>,  <38.210327, 34.809547, 23.526402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083157, 34.981785, 23.634855>,  <37.871204, 35.268845, 23.815611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083157, 34.981785, 23.634855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226379, 0.633199, -0.740143,
		0.817298, 0.289892, 0.497983,
		0.529884, -0.717650, -0.451887,
		38.242123, 34.766491, 23.499289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621132, 35.470146, 23.727316>,  <37.871204, 35.268845, 23.815611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621132, 35.470146, 23.727316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528988, 35.200233, 23.446856>,  <38.473701, 35.038288, 23.278580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528988, 35.200233, 23.446856>,  <38.621132, 35.470146, 23.727316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528988, 35.200233, 23.446856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263689, 0.650284, -0.712460,
		0.936699, -0.349005, 0.028135,
		-0.230356, -0.674779, -0.701149,
		38.459881, 34.997799, 23.236511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252228, 35.510765, 23.297632>,  <38.621132, 35.470146, 23.727316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252228, 35.510765, 23.297632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998489, 35.298519, 23.072760>,  <38.846245, 35.171169, 22.937836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998489, 35.298519, 23.072760>,  <39.252228, 35.510765, 23.297632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998489, 35.298519, 23.072760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225963, 0.568193, -0.791263,
		0.739285, -0.628969, -0.240533,
		-0.634349, -0.530618, -0.562180,
		38.808186, 35.139336, 22.904106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522854, 35.433575, 22.695015>,  <39.252228, 35.510765, 23.297632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522854, 35.433575, 22.695015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142887, 35.377117, 22.583494>,  <38.914906, 35.343243, 22.516582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142887, 35.377117, 22.583494>,  <39.522854, 35.433575, 22.695015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142887, 35.377117, 22.583494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152192, 0.570258, -0.807244,
		0.272927, -0.809249, -0.520219,
		-0.949920, -0.141146, -0.278800,
		38.857910, 35.334774, 22.499855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542587, 35.144707, 22.050053>,  <39.522854, 35.433575, 22.695015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542587, 35.144707, 22.050053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171028, 35.289127, 22.083000>,  <38.948093, 35.375778, 22.102768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171028, 35.289127, 22.083000>,  <39.542587, 35.144707, 22.050053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171028, 35.289127, 22.083000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058186, 0.361949, -0.930380,
		-0.365726, -0.859439, -0.357223,
		-0.928902, 0.361050, 0.082367,
		38.892357, 35.397442, 22.107710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196205, 34.946243, 21.489624>,  <39.542587, 35.144707, 22.050053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196205, 34.946243, 21.489624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957859, 35.244404, 21.609175>,  <38.814854, 35.423302, 21.680906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957859, 35.244404, 21.609175>,  <39.196205, 34.946243, 21.489624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957859, 35.244404, 21.609175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140564, 0.463219, -0.875026,
		-0.790690, -0.479382, -0.380791,
		-0.595861, 0.745400, 0.298879,
		38.779102, 35.468025, 21.698839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769367, 35.143002, 20.860571>,  <39.196205, 34.946243, 21.489624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769367, 35.143002, 20.860571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812218, 35.442787, 21.121901>,  <38.837929, 35.622658, 21.278698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.812218, 35.442787, 21.121901>,  <38.769367, 35.143002, 20.860571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812218, 35.442787, 21.121901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200474, 0.627328, -0.752509,
		-0.973825, 0.211587, -0.083046,
		0.107124, 0.749460, 0.653325,
		38.844357, 35.667625, 21.317898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217369, 35.569695, 20.697355>,  <38.769367, 35.143002, 20.860571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217369, 35.569695, 20.697355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468601, 35.796635, 20.910381>,  <38.619343, 35.932800, 21.038197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468601, 35.796635, 20.910381>,  <38.217369, 35.569695, 20.697355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468601, 35.796635, 20.910381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083248, 0.631481, -0.770910,
		-0.773681, 0.528530, 0.349391,
		0.628082, 0.567352, 0.532564,
		38.657024, 35.966839, 21.070150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933502, 36.311096, 20.665936>,  <38.217369, 35.569695, 20.697355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933502, 36.311096, 20.665936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.326851, 36.322319, 20.737694>,  <38.562862, 36.329052, 20.780748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.326851, 36.322319, 20.737694>,  <37.933502, 36.311096, 20.665936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326851, 36.322319, 20.737694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107781, 0.704900, -0.701070,
		-0.146131, 0.708751, 0.690157,
		0.983376, 0.028062, 0.179398,
		38.621864, 36.330738, 20.791513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162632, 36.959274, 20.983557>,  <37.933502, 36.311096, 20.665936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162632, 36.959274, 20.983557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408245, 36.785282, 20.720118>,  <38.555614, 36.680885, 20.562054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408245, 36.785282, 20.720118>,  <38.162632, 36.959274, 20.983557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408245, 36.785282, 20.720118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126235, 0.769566, -0.625965,
		0.779117, 0.467503, 0.417632,
		0.614036, -0.434981, -0.658598,
		38.592457, 36.654789, 20.522537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723705, 37.545040, 20.941597>,  <38.162632, 36.959274, 20.983557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723705, 37.545040, 20.941597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928818, 37.368870, 20.646820>,  <38.051884, 37.263168, 20.469954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928818, 37.368870, 20.646820>,  <37.723705, 37.545040, 20.941597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928818, 37.368870, 20.646820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821792, -0.500186, -0.272894,
		-0.248420, 0.745549, -0.618421,
		0.512781, -0.440421, -0.736943,
		38.082653, 37.236744, 20.425737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450752, 37.607796, 20.215582>,  <37.723705, 37.545040, 20.941597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450752, 37.607796, 20.215582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664860, 37.269936, 20.218586>,  <37.793324, 37.067219, 20.220388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664860, 37.269936, 20.218586>,  <37.450752, 37.607796, 20.215582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664860, 37.269936, 20.218586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793116, -0.505631, -0.339566,
		0.290611, 0.175802, -0.940552,
		0.535268, -0.844649, 0.007511,
		37.825439, 37.016541, 20.220839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803497, 37.475967, 20.404480>,  <37.450752, 37.607796, 20.215582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803497, 37.475967, 20.404480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422749, 37.410633, 20.508226>,  <36.194302, 37.371433, 20.570475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422749, 37.410633, 20.508226>,  <36.803497, 37.475967, 20.404480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422749, 37.410633, 20.508226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266119, -0.020544, 0.963721,
		-0.152080, 0.986357, 0.063021,
		-0.951868, -0.163334, 0.259364,
		36.137188, 37.361633, 20.586035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608360, 37.905720, 20.980547>,  <36.803497, 37.475967, 20.404480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608360, 37.905720, 20.980547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337772, 37.612141, 21.004906>,  <36.175419, 37.435993, 21.019522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337772, 37.612141, 21.004906>,  <36.608360, 37.905720, 20.980547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337772, 37.612141, 21.004906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095604, -0.005528, 0.995404,
		-0.730240, 0.679181, 0.073908,
		-0.676468, -0.733950, 0.060896,
		36.134830, 37.391956, 21.023174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012161, 38.171448, 21.530064>,  <36.608360, 37.905720, 20.980547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012161, 38.171448, 21.530064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970318, 37.775932, 21.487442>,  <35.945210, 37.538624, 21.461868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970318, 37.775932, 21.487442>,  <36.012161, 38.171448, 21.530064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970318, 37.775932, 21.487442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052556, -0.112488, 0.992262,
		-0.993124, 0.098202, 0.063734,
		-0.104612, -0.988788, -0.106554,
		35.938934, 37.479298, 21.455477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605988, 37.872643, 22.065701>,  <36.012161, 38.171448, 21.530064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605988, 37.872643, 22.065701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.800102, 37.538628, 21.961996>,  <35.916569, 37.338219, 21.899773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.800102, 37.538628, 21.961996>,  <35.605988, 37.872643, 22.065701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800102, 37.538628, 21.961996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157121, -0.208407, 0.965339,
		-0.860124, -0.509198, 0.030065,
		0.485283, -0.835035, -0.259262,
		35.945686, 37.288116, 21.884218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254654, 37.331532, 22.418932>,  <35.605988, 37.872643, 22.065701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254654, 37.331532, 22.418932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614021, 37.179848, 22.330341>,  <35.829639, 37.088837, 22.277187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614021, 37.179848, 22.330341>,  <35.254654, 37.331532, 22.418932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614021, 37.179848, 22.330341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012939, -0.481251, 0.876487,
		-0.438955, -0.790316, -0.427457,
		0.898416, -0.379207, -0.221474,
		35.883545, 37.066086, 22.263899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245773, 36.655895, 22.551731>,  <35.254654, 37.331532, 22.418932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245773, 36.655895, 22.551731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637188, 36.732632, 22.581821>,  <35.872036, 36.778671, 22.599874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637188, 36.732632, 22.581821>,  <35.245773, 36.655895, 22.551731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637188, 36.732632, 22.581821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022696, -0.463185, 0.885971,
		0.204806, -0.865250, -0.457599,
		0.978539, 0.191838, 0.075225,
		35.930748, 36.790184, 22.604389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469337, 36.012222, 22.786448>,  <35.245773, 36.655895, 22.551731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469337, 36.012222, 22.786448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772522, 36.266785, 22.843685>,  <35.954433, 36.419521, 22.878027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.772522, 36.266785, 22.843685>,  <35.469337, 36.012222, 22.786448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772522, 36.266785, 22.843685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123403, -0.355305, 0.926569,
		0.640519, -0.684646, -0.347843,
		0.757962, 0.636410, 0.143092,
		35.999912, 36.457706, 22.886612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975483, 35.539494, 23.033430>,  <35.469337, 36.012222, 22.786448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975483, 35.539494, 23.033430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103386, 35.906094, 23.129591>,  <36.180126, 36.126053, 23.187288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103386, 35.906094, 23.129591>,  <35.975483, 35.539494, 23.033430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103386, 35.906094, 23.129591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256647, -0.328015, 0.909141,
		0.912080, -0.229002, -0.340100,
		0.319753, 0.916496, 0.240403,
		36.199310, 36.181042, 23.201712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636448, 35.429699, 23.240969>,  <35.975483, 35.539494, 23.033430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636448, 35.429699, 23.240969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514393, 35.769855, 23.412424>,  <36.441162, 35.973949, 23.515297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514393, 35.769855, 23.412424>,  <36.636448, 35.429699, 23.240969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514393, 35.769855, 23.412424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309031, -0.337325, 0.889220,
		0.900774, 0.403794, -0.159867,
		-0.305134, 0.850389, 0.428638,
		36.422852, 36.024971, 23.541016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118092, 35.476772, 23.775110>,  <36.636448, 35.429699, 23.240969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118092, 35.476772, 23.775110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835472, 35.733044, 23.895323>,  <36.665901, 35.886806, 23.967451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835472, 35.733044, 23.895323>,  <37.118092, 35.476772, 23.775110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835472, 35.733044, 23.895323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202754, -0.223607, 0.953357,
		0.678000, 0.734525, 0.028088,
		-0.706546, 0.640681, 0.300534,
		36.623508, 35.925247, 23.985483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406197, 35.868134, 24.210150>,  <37.118092, 35.476772, 23.775110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406197, 35.868134, 24.210150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013447, 35.887714, 24.283390>,  <36.777798, 35.899464, 24.327333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013447, 35.887714, 24.283390>,  <37.406197, 35.868134, 24.210150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013447, 35.887714, 24.283390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170183, -0.197527, 0.965412,
		0.083423, 0.979075, 0.185617,
		-0.981875, 0.048949, 0.183100,
		36.718884, 35.902401, 24.338320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404228, 36.175426, 24.878979>,  <37.406197, 35.868134, 24.210150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404228, 36.175426, 24.878979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032894, 36.031021, 24.843493>,  <36.810093, 35.944378, 24.822201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032894, 36.031021, 24.843493>,  <37.404228, 36.175426, 24.878979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032894, 36.031021, 24.843493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008932, -0.216917, 0.976149,
		-0.371647, 0.906982, 0.198146,
		-0.928331, -0.361014, -0.088717,
		36.754395, 35.922718, 24.816877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985939, 36.449318, 25.417028>,  <37.404228, 36.175426, 24.878979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985939, 36.449318, 25.417028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771835, 36.130848, 25.304176>,  <36.643372, 35.939766, 25.236465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771835, 36.130848, 25.304176>,  <36.985939, 36.449318, 25.417028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771835, 36.130848, 25.304176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028177, -0.350649, 0.936083,
		-0.844218, 0.493097, 0.210122,
		-0.535259, -0.796179, -0.282130,
		36.611259, 35.891994, 25.219538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473759, 36.356201, 25.912706>,  <36.985939, 36.449318, 25.417028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473759, 36.356201, 25.912706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475849, 35.998615, 25.733465>,  <36.477104, 35.784061, 25.625921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475849, 35.998615, 25.733465>,  <36.473759, 36.356201, 25.912706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475849, 35.998615, 25.733465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161612, -0.442973, 0.881848,
		-0.986840, 0.067811, -0.146790,
		0.005225, -0.893966, -0.448103,
		36.477417, 35.730427, 25.599033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896595, 35.962894, 26.256527>,  <36.473759, 36.356201, 25.912706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896595, 35.962894, 26.256527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140015, 35.703644, 26.073399>,  <36.286068, 35.548092, 25.963522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140015, 35.703644, 26.073399>,  <35.896595, 35.962894, 26.256527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140015, 35.703644, 26.073399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063347, -0.614791, 0.786142,
		-0.790982, -0.449405, -0.415189,
		0.608550, -0.648125, -0.457820,
		36.322578, 35.509205, 25.936052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530926, 35.363911, 26.276772>,  <35.896595, 35.962894, 26.256527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530926, 35.363911, 26.276772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902355, 35.241814, 26.192316>,  <36.125214, 35.168556, 26.141644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902355, 35.241814, 26.192316>,  <35.530926, 35.363911, 26.276772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902355, 35.241814, 26.192316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043668, -0.654779, 0.754558,
		-0.368568, -0.691443, -0.621340,
		0.928575, -0.305239, -0.211136,
		36.180927, 35.150242, 26.128975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577286, 34.636402, 26.323109>,  <35.530926, 35.363911, 26.276772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577286, 34.636402, 26.323109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949020, 34.773113, 26.378994>,  <36.172062, 34.855141, 26.412525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949020, 34.773113, 26.378994>,  <35.577286, 34.636402, 26.323109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949020, 34.773113, 26.378994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065254, -0.524463, 0.848929,
		0.363421, -0.779824, -0.509705,
		0.929337, 0.341779, 0.139714,
		36.227821, 34.875648, 26.420908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996658, 34.050148, 26.441465>,  <35.577286, 34.636402, 26.323109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996658, 34.050148, 26.441465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187935, 34.358784, 26.609264>,  <36.302700, 34.543964, 26.709944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187935, 34.358784, 26.609264>,  <35.996658, 34.050148, 26.441465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187935, 34.358784, 26.609264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020168, -0.467877, 0.883564,
		0.878024, -0.430973, -0.208173,
		0.478191, 0.771592, 0.419499,
		36.331390, 34.590260, 26.735113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444389, 33.739555, 26.874557>,  <35.996658, 34.050148, 26.441465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444389, 33.739555, 26.874557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426632, 34.112980, 27.016827>,  <36.415977, 34.337032, 27.102188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426632, 34.112980, 27.016827>,  <36.444389, 33.739555, 26.874557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426632, 34.112980, 27.016827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096459, -0.358363, 0.928586,
		0.994346, 0.006912, 0.105958,
		-0.044390, 0.933557, 0.355671,
		36.413315, 34.393047, 27.123528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.168201, 30.680494, 30.622337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.105194, 31.074648, 30.648264>,  <38.067390, 31.311140, 30.663820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.105194, 31.074648, 30.648264>,  <38.168201, 30.680494, 30.622337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105194, 31.074648, 30.648264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003037, -0.065154, 0.997871,
		0.987511, 0.157382, 0.007270,
		-0.157521, 0.985386, 0.064818,
		38.057938, 31.370264, 30.667709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739834, 30.961946, 30.954742>,  <38.168201, 30.680494, 30.622337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739834, 30.961946, 30.954742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415462, 31.180660, 31.038095>,  <38.220840, 31.311888, 31.088106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415462, 31.180660, 31.038095>,  <38.739834, 30.961946, 30.954742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415462, 31.180660, 31.038095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137700, -0.167795, 0.976158,
		0.568711, 0.820289, 0.060778,
		-0.810930, 0.546782, 0.208380,
		38.172184, 31.344694, 31.100609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996765, 31.325869, 31.483309>,  <38.739834, 30.961946, 30.954742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996765, 31.325869, 31.483309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597752, 31.346193, 31.502653>,  <38.358341, 31.358387, 31.514259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.597752, 31.346193, 31.502653>,  <38.996765, 31.325869, 31.483309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597752, 31.346193, 31.502653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046527, -0.036640, 0.998245,
		0.052493, 0.998036, 0.034186,
		-0.997537, 0.050810, 0.048359,
		38.298492, 31.361437, 31.517160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837372, 31.815729, 32.105190>,  <38.996765, 31.325869, 31.483309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837372, 31.815729, 32.105190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525227, 31.585423, 32.007607>,  <38.337940, 31.447239, 31.949055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.525227, 31.585423, 32.007607>,  <38.837372, 31.815729, 32.105190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525227, 31.585423, 32.007607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089227, -0.283621, 0.954776,
		-0.618922, 0.766844, 0.169954,
		-0.780368, -0.575768, -0.243963,
		38.291115, 31.412693, 31.934418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260189, 31.956549, 32.604862>,  <38.837372, 31.815729, 32.105190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260189, 31.956549, 32.604862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.205204, 31.590649, 32.452900>,  <38.172211, 31.371109, 32.361721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.205204, 31.590649, 32.452900>,  <38.260189, 31.956549, 32.604862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205204, 31.590649, 32.452900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366008, -0.309494, 0.877640,
		-0.920403, 0.259696, -0.292262,
		-0.137466, -0.914752, -0.379910,
		38.163963, 31.316223, 32.338928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583477, 31.850159, 32.845097>,  <38.260189, 31.956549, 32.604862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583477, 31.850159, 32.845097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787151, 31.512861, 32.776203>,  <37.909355, 31.310482, 32.734867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787151, 31.512861, 32.776203>,  <37.583477, 31.850159, 32.845097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787151, 31.512861, 32.776203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246154, -0.334447, 0.909700,
		-0.824703, -0.420813, -0.377865,
		0.509189, -0.843245, -0.172234,
		37.939907, 31.259888, 32.724533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123447, 31.395807, 33.087200>,  <37.583477, 31.850159, 32.845097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123447, 31.395807, 33.087200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482056, 31.219931, 33.065590>,  <37.697220, 31.114405, 33.052624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482056, 31.219931, 33.065590>,  <37.123447, 31.395807, 33.087200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482056, 31.219931, 33.065590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111678, -0.342336, 0.932917,
		-0.428690, -0.830348, -0.356016,
		0.896523, -0.439692, -0.054024,
		37.751011, 31.088024, 33.049381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006348, 30.791763, 33.415577>,  <37.123447, 31.395807, 33.087200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006348, 30.791763, 33.415577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404869, 30.758114, 33.408531>,  <37.643982, 30.737925, 33.404305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404869, 30.758114, 33.408531>,  <37.006348, 30.791763, 33.415577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404869, 30.758114, 33.408531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010939, -0.327395, 0.944824,
		-0.085251, -0.941135, -0.327104,
		0.996299, -0.084125, -0.017615,
		37.703758, 30.732876, 33.403248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153965, 30.228447, 33.874817>,  <37.006348, 30.791763, 33.415577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153965, 30.228447, 33.874817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.509754, 30.408434, 33.842911>,  <37.723228, 30.516426, 33.823769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.509754, 30.408434, 33.842911>,  <37.153965, 30.228447, 33.874817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509754, 30.408434, 33.842911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246973, -0.326474, 0.912370,
		0.384497, -0.831230, -0.401520,
		0.889476, 0.449968, -0.079763,
		37.776596, 30.543425, 33.818981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688423, 29.761652, 34.171711>,  <37.153965, 30.228447, 33.874817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688423, 29.761652, 34.171711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840504, 30.131613, 34.171265>,  <37.931751, 30.353590, 34.170998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840504, 30.131613, 34.171265>,  <37.688423, 29.761652, 34.171711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840504, 30.131613, 34.171265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306255, -0.124753, 0.943740,
		0.872728, -0.359153, -0.330688,
		0.380201, 0.924903, -0.001117,
		37.954563, 30.409084, 34.170929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414970, 29.696053, 34.455563>,  <37.688423, 29.761652, 34.171711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414970, 29.696053, 34.455563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291546, 30.070835, 34.521172>,  <38.217491, 30.295704, 34.560535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291546, 30.070835, 34.521172>,  <38.414970, 29.696053, 34.455563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291546, 30.070835, 34.521172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457744, -0.004889, 0.889071,
		0.833822, 0.349415, -0.427377,
		-0.308565, 0.936955, 0.164019,
		38.198975, 30.351921, 34.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989098, 30.031218, 34.648373>,  <38.414970, 29.696053, 34.455563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989098, 30.031218, 34.648373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686501, 30.250317, 34.791309>,  <38.504944, 30.381777, 34.877071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686501, 30.250317, 34.791309>,  <38.989098, 30.031218, 34.648373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686501, 30.250317, 34.791309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391559, -0.058310, 0.918304,
		0.523837, 0.834608, -0.170365,
		-0.756489, 0.547750, 0.357343,
		38.459553, 30.414642, 34.898514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207047, 30.410360, 35.214420>,  <38.989098, 30.031218, 34.648373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207047, 30.410360, 35.214420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814804, 30.450949, 35.281483>,  <38.579456, 30.475302, 35.321720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814804, 30.450949, 35.281483>,  <39.207047, 30.410360, 35.214420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814804, 30.450949, 35.281483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179934, 0.127180, 0.975422,
		0.077654, 0.986676, -0.142972,
		-0.980609, 0.101471, 0.167660,
		38.520622, 30.481390, 35.331779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048340, 31.064964, 35.618916>,  <39.207047, 30.410360, 35.214420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048340, 31.064964, 35.618916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791428, 30.766016, 35.686928>,  <38.637280, 30.586647, 35.727737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791428, 30.766016, 35.686928>,  <39.048340, 31.064964, 35.618916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791428, 30.766016, 35.686928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233285, 0.020699, 0.972188,
		-0.730107, 0.664082, 0.161056,
		-0.642279, -0.747373, 0.170033,
		38.598743, 30.541803, 35.737938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548965, 31.363333, 35.249889>,  <39.048340, 31.064964, 35.618916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548965, 31.363333, 35.249889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.824642, 31.587128, 35.434059>,  <39.990047, 31.721405, 35.544559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.824642, 31.587128, 35.434059>,  <39.548965, 31.363333, 35.249889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824642, 31.587128, 35.434059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299301, 0.798511, -0.522303,
		-0.659876, 0.222160, 0.717780,
		0.689190, 0.559487, 0.460425,
		40.031399, 31.754974, 35.572186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231560, 31.960865, 35.260429>,  <39.548965, 31.363333, 35.249889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231560, 31.960865, 35.260429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609158, 32.075729, 35.325432>,  <39.835716, 32.144650, 35.364433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609158, 32.075729, 35.325432>,  <39.231560, 31.960865, 35.260429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609158, 32.075729, 35.325432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176425, 0.855484, -0.486848,
		-0.278826, 0.430913, 0.858237,
		0.943997, 0.287160, 0.162507,
		39.892357, 32.161877, 35.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202759, 32.777447, 35.483997>,  <39.231560, 31.960865, 35.260429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202759, 32.777447, 35.483997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576065, 32.694504, 35.366680>,  <39.800049, 32.644737, 35.296288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576065, 32.694504, 35.366680>,  <39.202759, 32.777447, 35.483997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576065, 32.694504, 35.366680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019331, 0.786363, -0.617462,
		0.358674, 0.581924, 0.729875,
		0.933263, -0.207358, -0.293298,
		39.856045, 32.632298, 35.278690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634701, 33.346691, 35.514523>,  <39.202759, 32.777447, 35.483997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634701, 33.346691, 35.514523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.802334, 33.111813, 35.237518>,  <39.902912, 32.970886, 35.071316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.802334, 33.111813, 35.237518>,  <39.634701, 33.346691, 35.514523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802334, 33.111813, 35.237518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058779, 0.743575, -0.666063,
		0.906045, 0.319838, 0.277103,
		0.419080, -0.587196, -0.692512,
		39.928059, 32.935654, 35.029766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925938, 33.831745, 35.133457>,  <39.634701, 33.346691, 35.514523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925938, 33.831745, 35.133457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993950, 33.511368, 34.903820>,  <40.034756, 33.319141, 34.766037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993950, 33.511368, 34.903820>,  <39.925938, 33.831745, 35.133457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993950, 33.511368, 34.903820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055874, 0.589471, -0.805855,
		0.983854, 0.104943, 0.144980,
		0.170030, -0.800944, -0.574089,
		40.044960, 33.271084, 34.731594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506439, 33.895870, 34.676937>,  <39.925938, 33.831745, 35.133457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506439, 33.895870, 34.676937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311356, 33.614864, 34.469627>,  <40.194305, 33.446262, 34.345242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311356, 33.614864, 34.469627>,  <40.506439, 33.895870, 34.676937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311356, 33.614864, 34.469627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267329, 0.444971, -0.854714,
		0.831067, -0.555404, -0.029214,
		-0.487711, -0.702515, -0.518277,
		40.165043, 33.404110, 34.314144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926670, 33.699905, 34.052834>,  <40.506439, 33.895870, 34.676937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926670, 33.699905, 34.052834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558399, 33.582066, 33.950413>,  <40.337437, 33.511360, 33.888962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558399, 33.582066, 33.950413>,  <40.926670, 33.699905, 34.052834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558399, 33.582066, 33.950413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137361, 0.369495, -0.919024,
		0.365307, -0.881312, -0.299733,
		-0.920697, -0.294555, -0.256037,
		40.282196, 33.493687, 33.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986824, 33.697468, 33.339497>,  <40.926670, 33.699905, 34.052834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986824, 33.697468, 33.339497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.592148, 33.680065, 33.402157>,  <40.355343, 33.669624, 33.439754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.592148, 33.680065, 33.402157>,  <40.986824, 33.697468, 33.339497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592148, 33.680065, 33.402157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162328, 0.317529, -0.934251,
		-0.009097, -0.947250, -0.320366,
		-0.986695, -0.043506, 0.156653,
		40.296139, 33.667015, 33.449154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631706, 33.341274, 32.749119>,  <40.986824, 33.697468, 33.339497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631706, 33.341274, 32.749119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337208, 33.549656, 32.921883>,  <40.160507, 33.674686, 33.025539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337208, 33.549656, 32.921883>,  <40.631706, 33.341274, 32.749119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337208, 33.549656, 32.921883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283802, 0.341706, -0.895932,
		-0.614325, -0.782205, -0.103733,
		-0.736248, 0.520953, 0.431910,
		40.116333, 33.705940, 33.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039551, 33.221409, 32.326347>,  <40.631706, 33.341274, 32.749119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039551, 33.221409, 32.326347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992794, 33.556927, 32.539051>,  <39.964741, 33.758236, 32.666672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992794, 33.556927, 32.539051>,  <40.039551, 33.221409, 32.326347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992794, 33.556927, 32.539051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241225, 0.495412, -0.834492,
		-0.963404, -0.225815, 0.144430,
		-0.116888, 0.838793, 0.531755,
		39.957729, 33.808563, 32.698578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549664, 33.457378, 31.850031>,  <40.039551, 33.221409, 32.326347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549664, 33.457378, 31.850031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625427, 33.760441, 32.099857>,  <39.670887, 33.942280, 32.249752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625427, 33.760441, 32.099857>,  <39.549664, 33.457378, 31.850031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625427, 33.760441, 32.099857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388836, 0.641956, -0.660832,
		-0.901627, -0.117685, 0.416196,
		0.189410, 0.757656, 0.624565,
		39.682251, 33.987736, 32.287228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896877, 33.828594, 31.894983>,  <39.549664, 33.457378, 31.850031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896877, 33.828594, 31.894983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223846, 34.050842, 31.955791>,  <39.420029, 34.184189, 31.992277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223846, 34.050842, 31.955791>,  <38.896877, 33.828594, 31.894983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223846, 34.050842, 31.955791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276295, 0.609744, -0.742882,
		-0.505450, 0.565247, 0.651932,
		0.817424, 0.555616, 0.152020,
		39.469074, 34.217525, 32.001396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640797, 34.577606, 31.923521>,  <38.896877, 33.828594, 31.894983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640797, 34.577606, 31.923521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026432, 34.582619, 31.817413>,  <39.257812, 34.585625, 31.753748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026432, 34.582619, 31.817413>,  <38.640797, 34.577606, 31.923521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026432, 34.582619, 31.817413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196019, 0.707491, -0.678994,
		0.179169, 0.706612, 0.684543,
		0.964093, 0.012529, -0.265270,
		39.315659, 34.586376, 31.737833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740726, 35.320663, 31.861582>,  <38.640797, 34.577606, 31.923521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740726, 35.320663, 31.861582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043205, 35.132477, 31.679668>,  <39.224693, 35.019566, 31.570520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043205, 35.132477, 31.679668>,  <38.740726, 35.320663, 31.861582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043205, 35.132477, 31.679668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105975, 0.597790, -0.794617,
		0.645704, 0.649083, 0.402191,
		0.756198, -0.470465, -0.454782,
		39.270065, 34.991337, 31.543234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726299, 35.989990, 32.013260>,  <38.740726, 35.320663, 31.861582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726299, 35.989990, 32.013260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.411198, 36.207390, 32.129230>,  <38.222137, 36.337830, 32.198814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.411198, 36.207390, 32.129230>,  <38.726299, 35.989990, 32.013260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411198, 36.207390, 32.129230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073492, -0.384378, 0.920246,
		0.611594, 0.746232, 0.262851,
		-0.787751, 0.543499, 0.289925,
		38.174873, 36.370441, 32.216209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931671, 36.287636, 32.639328>,  <38.726299, 35.989990, 32.013260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931671, 36.287636, 32.639328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533772, 36.318596, 32.666111>,  <38.295033, 36.337170, 32.682182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533772, 36.318596, 32.666111>,  <38.931671, 36.287636, 32.639328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533772, 36.318596, 32.666111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038153, -0.326641, 0.944378,
		0.094964, 0.941974, 0.321973,
		-0.994749, 0.077397, 0.066959,
		38.235348, 36.341816, 32.686199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833607, 36.390419, 33.338123>,  <38.931671, 36.287636, 32.639328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833607, 36.390419, 33.338123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452709, 36.318840, 33.239155>,  <38.224171, 36.275894, 33.179775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452709, 36.318840, 33.239155>,  <38.833607, 36.390419, 33.338123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452709, 36.318840, 33.239155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144082, -0.451093, 0.880770,
		-0.269221, 0.874353, 0.403766,
		-0.952240, -0.178946, -0.247422,
		38.167038, 36.265156, 33.164928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389545, 36.628674, 33.889164>,  <38.833607, 36.390419, 33.338123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389545, 36.628674, 33.889164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217037, 36.335690, 33.678448>,  <38.113533, 36.159901, 33.552017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217037, 36.335690, 33.678448>,  <38.389545, 36.628674, 33.889164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217037, 36.335690, 33.678448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153578, -0.515760, 0.842855,
		-0.889055, 0.444403, 0.109944,
		-0.431272, -0.732460, -0.526790,
		38.087654, 36.115952, 33.520412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716396, 36.541859, 34.216934>,  <38.389545, 36.628674, 33.889164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716396, 36.541859, 34.216934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805363, 36.195923, 34.036896>,  <37.858742, 35.988361, 33.928871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805363, 36.195923, 34.036896>,  <37.716396, 36.541859, 34.216934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805363, 36.195923, 34.036896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182463, -0.490429, 0.852166,
		-0.957725, -0.107411, -0.266881,
		0.222418, -0.864837, -0.450097,
		37.872089, 35.936470, 33.901867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127144, 36.174782, 34.292847>,  <37.716396, 36.541859, 34.216934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127144, 36.174782, 34.292847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419968, 35.910301, 34.227245>,  <37.595661, 35.751614, 34.187885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.419968, 35.910301, 34.227245>,  <37.127144, 36.174782, 34.292847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419968, 35.910301, 34.227245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183215, -0.422960, 0.887433,
		-0.656141, -0.619606, -0.430775,
		0.732060, -0.661205, -0.164000,
		37.639587, 35.711941, 34.178043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779373, 35.507442, 34.319851>,  <37.127144, 36.174782, 34.292847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779373, 35.507442, 34.319851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.166256, 35.436630, 34.392696>,  <37.398388, 35.394142, 34.436401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.166256, 35.436630, 34.392696>,  <36.779373, 35.507442, 34.319851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166256, 35.436630, 34.392696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245122, -0.462977, 0.851802,
		-0.066485, -0.868511, -0.491191,
		0.967210, -0.177034, 0.182110,
		37.456417, 35.383518, 34.447330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832310, 34.828522, 34.588028>,  <36.779373, 35.507442, 34.319851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832310, 34.828522, 34.588028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.195522, 34.960152, 34.691704>,  <37.413452, 35.039131, 34.753910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.195522, 34.960152, 34.691704>,  <36.832310, 34.828522, 34.588028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195522, 34.960152, 34.691704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111465, -0.406626, 0.906770,
		0.403791, -0.852269, -0.332550,
		0.908035, 0.329078, 0.259190,
		37.467934, 35.058876, 34.769463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146858, 34.325161, 34.964485>,  <36.832310, 34.828522, 34.588028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146858, 34.325161, 34.964485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356041, 34.652073, 35.061291>,  <37.481548, 34.848221, 35.119373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356041, 34.652073, 35.061291>,  <37.146858, 34.325161, 34.964485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356041, 34.652073, 35.061291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094159, -0.226799, 0.969379,
		0.847144, -0.529729, -0.041651,
		0.522955, 0.817282, 0.242010,
		37.512928, 34.897259, 35.133892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554470, 34.116886, 35.484016>,  <37.146858, 34.325161, 34.964485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554470, 34.116886, 35.484016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549362, 34.515938, 35.511082>,  <37.546295, 34.755367, 35.527321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549362, 34.515938, 35.511082>,  <37.554470, 34.116886, 35.484016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549362, 34.515938, 35.511082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214645, -0.068827, 0.974264,
		0.976609, -0.002078, 0.215015,
		-0.012774, 0.997627, 0.067663,
		37.545528, 34.815228, 35.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052860, 34.266312, 36.010960>,  <37.554470, 34.116886, 35.484016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052860, 34.266312, 36.010960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784554, 34.561859, 35.985226>,  <37.623569, 34.739189, 35.969784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784554, 34.561859, 35.985226>,  <38.052860, 34.266312, 36.010960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784554, 34.561859, 35.985226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127755, -0.029660, 0.991362,
		0.730579, 0.673195, 0.114290,
		-0.670770, 0.738870, -0.064335,
		37.583321, 34.783520, 35.965923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169514, 34.601986, 36.555813>,  <38.052860, 34.266312, 36.010960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169514, 34.601986, 36.555813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793324, 34.695572, 36.457207>,  <37.567612, 34.751724, 36.398041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793324, 34.695572, 36.457207>,  <38.169514, 34.601986, 36.555813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793324, 34.695572, 36.457207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264437, -0.048074, 0.963204,
		0.213506, 0.971055, 0.107081,
		-0.940472, 0.233966, -0.246519,
		37.511181, 34.765762, 36.383251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.381958, 37.722916, 29.156559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002346, 37.848747, 29.148764>,  <38.774578, 37.924248, 29.144087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002346, 37.848747, 29.148764>,  <39.381958, 37.722916, 29.156559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002346, 37.848747, 29.148764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069223, -0.147709, 0.986605,
		0.307490, 0.937667, 0.161956,
		-0.949030, 0.314582, -0.019489,
		38.717636, 37.943123, 29.142918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286644, 38.248486, 29.687893>,  <39.381958, 37.722916, 29.156559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286644, 38.248486, 29.687893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928806, 38.104755, 29.581623>,  <38.714104, 38.018517, 29.517860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928806, 38.104755, 29.581623>,  <39.286644, 38.248486, 29.687893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928806, 38.104755, 29.581623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311657, 0.075599, 0.947182,
		-0.320258, 0.930147, -0.179616,
		-0.894597, -0.359322, -0.265676,
		38.660427, 37.996960, 29.501921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742867, 38.632874, 30.053520>,  <39.286644, 38.248486, 29.687893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742867, 38.632874, 30.053520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609142, 38.269817, 29.951998>,  <38.528908, 38.051983, 29.891085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609142, 38.269817, 29.951998>,  <38.742867, 38.632874, 30.053520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609142, 38.269817, 29.951998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324341, -0.142052, 0.935214,
		-0.884895, 0.394972, -0.246897,
		-0.334311, -0.907644, -0.253806,
		38.508850, 37.997524, 29.875856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064754, 38.640572, 30.588415>,  <38.742867, 38.632874, 30.053520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064754, 38.640572, 30.588415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168045, 38.279793, 30.449959>,  <38.230019, 38.063324, 30.366884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168045, 38.279793, 30.449959>,  <38.064754, 38.640572, 30.588415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168045, 38.279793, 30.449959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331352, -0.419245, 0.845245,
		-0.907483, -0.103568, -0.407121,
		0.258224, -0.901947, -0.346141,
		38.245514, 38.009209, 30.346117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543533, 38.257256, 30.751314>,  <38.064754, 38.640572, 30.588415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543533, 38.257256, 30.751314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834152, 37.988792, 30.692421>,  <38.008522, 37.827713, 30.657085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834152, 37.988792, 30.692421>,  <37.543533, 38.257256, 30.751314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834152, 37.988792, 30.692421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426586, -0.608567, 0.669082,
		-0.538660, -0.423312, -0.728459,
		0.726547, -0.671158, -0.147232,
		38.052116, 37.787445, 30.648251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179169, 37.544228, 30.921703>,  <37.543533, 38.257256, 30.751314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179169, 37.544228, 30.921703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577717, 37.511879, 30.911104>,  <37.816845, 37.492470, 30.904745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577717, 37.511879, 30.911104>,  <37.179169, 37.544228, 30.921703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577717, 37.511879, 30.911104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039088, -0.711483, 0.701616,
		-0.075593, -0.698035, -0.712063,
		0.996372, -0.080870, -0.026499,
		37.876629, 37.487617, 30.903154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245369, 36.814724, 30.910841>,  <37.179169, 37.544228, 30.921703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245369, 36.814724, 30.910841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595325, 36.953190, 31.046331>,  <37.805298, 37.036270, 31.127626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595325, 36.953190, 31.046331>,  <37.245369, 36.814724, 30.910841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595325, 36.953190, 31.046331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079373, -0.587453, 0.805356,
		0.477770, -0.731485, -0.486482,
		0.874892, 0.346162, 0.338728,
		37.857792, 37.057037, 31.147949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651169, 36.279026, 31.035534>,  <37.245369, 36.814724, 30.910841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651169, 36.279026, 31.035534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798256, 36.572926, 31.263544>,  <37.886509, 36.749268, 31.400351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798256, 36.572926, 31.263544>,  <37.651169, 36.279026, 31.035534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798256, 36.572926, 31.263544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111412, -0.643361, 0.757413,
		0.923241, -0.215003, -0.318433,
		0.367713, 0.734752, 0.570023,
		37.908569, 36.793350, 31.434551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298691, 35.947628, 31.391314>,  <37.651169, 36.279026, 31.035534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298691, 35.947628, 31.391314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178631, 36.256123, 31.615852>,  <38.106594, 36.441219, 31.750576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178631, 36.256123, 31.615852>,  <38.298691, 35.947628, 31.391314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178631, 36.256123, 31.615852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155177, -0.541165, 0.826475,
		0.941185, 0.335175, 0.042753,
		-0.300150, 0.771232, 0.561348,
		38.088585, 36.487492, 31.784256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040634, 35.838207, 31.394243>,  <38.298691, 35.947628, 31.391314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040634, 35.838207, 31.394243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216946, 35.506733, 31.256262>,  <39.322731, 35.307850, 31.173473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216946, 35.506733, 31.256262>,  <39.040634, 35.838207, 31.394243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216946, 35.506733, 31.256262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031856, 0.398501, -0.916615,
		0.897051, 0.393034, 0.202049,
		0.440778, -0.828686, -0.344955,
		39.349178, 35.258125, 31.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644310, 36.051476, 30.939503>,  <39.040634, 35.838207, 31.394243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644310, 36.051476, 30.939503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542870, 35.681446, 30.826414>,  <39.482006, 35.459431, 30.758562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542870, 35.681446, 30.826414>,  <39.644310, 36.051476, 30.939503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542870, 35.681446, 30.826414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079044, 0.271478, -0.959193,
		0.964074, -0.265599, 0.004274,
		-0.253600, -0.925071, -0.282719,
		39.466789, 35.403923, 30.741598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078606, 35.870201, 30.423359>,  <39.644310, 36.051476, 30.939503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078606, 35.870201, 30.423359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783936, 35.607521, 30.358789>,  <39.607132, 35.449913, 30.320047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783936, 35.607521, 30.358789>,  <40.078606, 35.870201, 30.423359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783936, 35.607521, 30.358789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128463, 0.098461, -0.986814,
		0.663931, -0.747700, 0.011827,
		-0.736677, -0.656696, -0.161424,
		39.562931, 35.410511, 30.310362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348652, 35.433758, 29.972908>,  <40.078606, 35.870201, 30.423359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348652, 35.433758, 29.972908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955555, 35.392426, 29.911533>,  <39.719696, 35.367626, 29.874708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955555, 35.392426, 29.911533>,  <40.348652, 35.433758, 29.972908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955555, 35.392426, 29.911533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142971, 0.102071, -0.984450,
		0.117395, -0.989395, -0.085534,
		-0.982740, -0.103341, -0.153437,
		39.660732, 35.361427, 29.865503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277672, 35.041832, 29.499563>,  <40.348652, 35.433758, 29.972908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277672, 35.041832, 29.499563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922985, 35.225578, 29.478714>,  <39.710175, 35.335827, 29.466204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922985, 35.225578, 29.478714>,  <40.277672, 35.041832, 29.499563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922985, 35.225578, 29.478714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103108, 0.086592, -0.990894,
		-0.450673, -0.884014, -0.124147,
		-0.886715, 0.459370, -0.052124,
		39.656971, 35.363388, 29.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967312, 34.719608, 28.934549>,  <40.277672, 35.041832, 29.499563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967312, 34.719608, 28.934549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772705, 35.066109, 28.980013>,  <39.655941, 35.274010, 29.007290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772705, 35.066109, 28.980013>,  <39.967312, 34.719608, 28.934549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772705, 35.066109, 28.980013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005724, 0.133249, -0.991066,
		-0.873653, -0.481519, -0.069786,
		-0.486516, 0.866248, 0.113657,
		39.626751, 35.325981, 29.014111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573738, 34.823181, 28.411106>,  <39.967312, 34.719608, 28.934549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573738, 34.823181, 28.411106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557049, 35.198765, 28.547699>,  <39.547035, 35.424114, 28.629654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557049, 35.198765, 28.547699>,  <39.573738, 34.823181, 28.411106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557049, 35.198765, 28.547699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051632, 0.343349, -0.937788,
		-0.997794, -0.021495, -0.062805,
		-0.041722, 0.938962, 0.341482,
		39.544533, 35.480453, 28.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945194, 35.115662, 28.066118>,  <39.573738, 34.823181, 28.411106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945194, 35.115662, 28.066118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198841, 35.408260, 28.166357>,  <39.351028, 35.583820, 28.226501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198841, 35.408260, 28.166357>,  <38.945194, 35.115662, 28.066118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198841, 35.408260, 28.166357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093564, 0.249121, -0.963942,
		-0.767554, 0.634701, 0.089531,
		0.634119, 0.731500, 0.250599,
		39.389076, 35.627712, 28.241537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914143, 35.710682, 27.584490>,  <38.945194, 35.115662, 28.066118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914143, 35.710682, 27.584490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266071, 35.791286, 27.756676>,  <39.477230, 35.839649, 27.859987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266071, 35.791286, 27.756676>,  <38.914143, 35.710682, 27.584490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266071, 35.791286, 27.756676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296721, 0.474635, -0.828661,
		-0.371300, 0.856804, 0.357802,
		0.879825, 0.201515, 0.430464,
		39.530018, 35.851742, 27.885815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075718, 36.390354, 27.568588>,  <38.914143, 35.710682, 27.584490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075718, 36.390354, 27.568588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438641, 36.228806, 27.615389>,  <39.656395, 36.131878, 27.643469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438641, 36.228806, 27.615389>,  <39.075718, 36.390354, 27.568588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438641, 36.228806, 27.615389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290792, 0.401701, -0.868376,
		0.303713, 0.821903, 0.481907,
		0.907303, -0.403871, 0.117001,
		39.710831, 36.107643, 27.650490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562054, 36.964096, 27.367756>,  <39.075718, 36.390354, 27.568588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562054, 36.964096, 27.367756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779755, 36.629543, 27.341675>,  <39.910374, 36.428810, 27.326025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779755, 36.629543, 27.341675>,  <39.562054, 36.964096, 27.367756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779755, 36.629543, 27.341675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355252, 0.300185, -0.885260,
		0.759989, 0.458642, 0.460504,
		0.544254, -0.836383, -0.065204,
		39.943031, 36.378628, 27.322113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202610, 37.179382, 27.245644>,  <39.562054, 36.964096, 27.367756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202610, 37.179382, 27.245644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224079, 36.799175, 27.123240>,  <40.236961, 36.571053, 27.049797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224079, 36.799175, 27.123240>,  <40.202610, 37.179382, 27.245644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224079, 36.799175, 27.123240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479181, 0.293377, -0.827234,
		0.876073, -0.102234, 0.471215,
		0.053672, -0.950515, -0.306008,
		40.240181, 36.514019, 27.031437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854176, 37.009663, 27.006842>,  <40.202610, 37.179382, 27.245644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854176, 37.009663, 27.006842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656696, 36.718750, 26.816130>,  <40.538208, 36.544201, 26.701702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656696, 36.718750, 26.816130>,  <40.854176, 37.009663, 27.006842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656696, 36.718750, 26.816130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582882, 0.130132, -0.802069,
		0.645377, -0.673885, 0.359676,
		-0.493697, -0.727285, -0.476780,
		40.508587, 36.500565, 26.673096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360443, 36.670795, 26.555759>,  <40.854176, 37.009663, 27.006842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360443, 36.670795, 26.555759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998898, 36.586899, 26.406607>,  <40.781971, 36.536560, 26.317116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998898, 36.586899, 26.406607>,  <41.360443, 36.670795, 26.555759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998898, 36.586899, 26.406607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333408, 0.200826, -0.921145,
		0.268087, -0.956910, -0.111589,
		-0.903863, -0.209742, -0.372880,
		40.727737, 36.523975, 26.294743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.197895, 36.479733, 25.802664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358757, 36.717892, 26.080879>,  <34.455273, 36.860786, 26.247808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358757, 36.717892, 26.080879>,  <34.197895, 36.479733, 25.802664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358757, 36.717892, 26.080879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200380, -0.684025, 0.701397,
		0.893377, -0.421439, -0.155775,
		0.402151, 0.595398, 0.695540,
		34.479401, 36.896511, 26.289541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730331, 36.060207, 26.224157>,  <34.197895, 36.479733, 25.802664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730331, 36.060207, 26.224157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625244, 36.382027, 26.437204>,  <34.562191, 36.575119, 26.565033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625244, 36.382027, 26.437204>,  <34.730331, 36.060207, 26.224157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625244, 36.382027, 26.437204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355351, -0.593886, 0.721821,
		0.897054, 0.000369, 0.441921,
		-0.262717, 0.804549, 0.532616,
		34.546429, 36.623390, 26.596989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000721, 35.858265, 26.859415>,  <34.730331, 36.060207, 26.224157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000721, 35.858265, 26.859415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762138, 36.173244, 26.921591>,  <34.618988, 36.362232, 26.958897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762138, 36.173244, 26.921591>,  <35.000721, 35.858265, 26.859415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762138, 36.173244, 26.921591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300466, -0.398633, 0.866494,
		0.744283, 0.470123, 0.474370,
		-0.596458, 0.787449, 0.155440,
		34.583202, 36.409481, 26.968224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186764, 36.103271, 27.550642>,  <35.000721, 35.858265, 26.859415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186764, 36.103271, 27.550642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816631, 36.217716, 27.451117>,  <34.594551, 36.286385, 27.391401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816631, 36.217716, 27.451117>,  <35.186764, 36.103271, 27.550642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816631, 36.217716, 27.451117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, -0.236303, 0.917550,
		0.203725, 0.928602, 0.310152,
		-0.925329, 0.286110, -0.248813,
		34.539032, 36.303551, 27.376472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106571, 36.425449, 28.068190>,  <35.186764, 36.103271, 27.550642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106571, 36.425449, 28.068190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.741299, 36.381241, 27.911274>,  <34.522137, 36.354717, 27.817125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.741299, 36.381241, 27.911274>,  <35.106571, 36.425449, 28.068190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741299, 36.381241, 27.911274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352937, -0.266900, 0.896772,
		-0.203811, 0.957366, 0.204722,
		-0.913179, -0.110518, -0.392288,
		34.467346, 36.348083, 27.793587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626686, 36.760773, 28.554651>,  <35.106571, 36.425449, 28.068190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626686, 36.760773, 28.554651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366924, 36.521500, 28.366844>,  <34.211067, 36.377934, 28.254160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366924, 36.521500, 28.366844>,  <34.626686, 36.760773, 28.554651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366924, 36.521500, 28.366844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381039, -0.278352, 0.881663,
		-0.658089, 0.751462, -0.047168,
		-0.649406, -0.598185, -0.469516,
		34.172104, 36.342045, 28.225988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022110, 36.859699, 28.933472>,  <34.626686, 36.760773, 28.554651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022110, 36.859699, 28.933472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.996964, 36.511501, 28.738216>,  <33.981876, 36.302582, 28.621063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.996964, 36.511501, 28.738216>,  <34.022110, 36.859699, 28.933472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996964, 36.511501, 28.738216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304829, -0.448984, 0.839936,
		-0.950330, 0.201604, -0.237127,
		-0.062869, -0.870499, -0.488137,
		33.978104, 36.250351, 28.591776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428375, 36.588333, 29.139837>,  <34.022110, 36.859699, 28.933472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428375, 36.588333, 29.139837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.618977, 36.261288, 29.010561>,  <33.733337, 36.065060, 28.932995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.618977, 36.261288, 29.010561>,  <33.428375, 36.588333, 29.139837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618977, 36.261288, 29.010561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453209, -0.543434, 0.706598,
		-0.753359, -0.190220, -0.629496,
		0.476499, -0.817616, -0.323192,
		33.761925, 36.016003, 28.913603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998806, 36.013763, 29.318920>,  <33.428375, 36.588333, 29.139837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998806, 36.013763, 29.318920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.341381, 35.818130, 29.252813>,  <33.546925, 35.700752, 29.213150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.341381, 35.818130, 29.252813>,  <32.998806, 36.013763, 29.318920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341381, 35.818130, 29.252813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189367, -0.595434, 0.780768,
		-0.480264, -0.637384, -0.602568,
		0.856438, -0.489081, -0.165266,
		33.598312, 35.671406, 29.203234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858452, 35.310184, 29.503876>,  <32.998806, 36.013763, 29.318920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858452, 35.310184, 29.503876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257927, 35.330505, 29.501337>,  <33.497612, 35.342697, 29.499813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257927, 35.330505, 29.501337>,  <32.858452, 35.310184, 29.503876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257927, 35.330505, 29.501337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033509, -0.554816, 0.831298,
		0.038713, -0.830420, -0.555791,
		0.998689, 0.050806, -0.006348,
		33.557533, 35.345749, 29.499434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057842, 34.676384, 29.677658>,  <32.858452, 35.310184, 29.503876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057842, 34.676384, 29.677658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.360180, 34.925747, 29.757725>,  <33.541584, 35.075363, 29.805765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.360180, 34.925747, 29.757725>,  <33.057842, 34.676384, 29.677658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360180, 34.925747, 29.757725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080789, -0.392174, 0.916336,
		0.649748, -0.676437, -0.346787,
		0.755845, 0.623404, 0.200166,
		33.586933, 35.112766, 29.817774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646687, 34.243671, 29.853113>,  <33.057842, 34.676384, 29.677658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646687, 34.243671, 29.853113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682972, 34.597210, 30.036671>,  <33.704742, 34.809334, 30.146805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682972, 34.597210, 30.036671>,  <33.646687, 34.243671, 29.853113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682972, 34.597210, 30.036671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254949, -0.466047, 0.847232,
		0.962690, 0.040143, -0.267611,
		0.090709, 0.883849, 0.458893,
		33.710186, 34.862366, 30.174339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074852, 34.149609, 30.369894>,  <33.646687, 34.243671, 29.853113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074852, 34.149609, 30.369894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976330, 34.516056, 30.496420>,  <33.917217, 34.735924, 30.572336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976330, 34.516056, 30.496420>,  <34.074852, 34.149609, 30.369894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976330, 34.516056, 30.496420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015493, -0.322605, 0.946407,
		0.969069, 0.238004, 0.065266,
		-0.246304, 0.916122, 0.316314,
		33.902439, 34.790894, 30.591314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670395, 34.375019, 30.858812>,  <34.074852, 34.149609, 30.369894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670395, 34.375019, 30.858812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337688, 34.583752, 30.934557>,  <34.138065, 34.708992, 30.980003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337688, 34.583752, 30.934557>,  <34.670395, 34.375019, 30.858812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337688, 34.583752, 30.934557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102859, -0.190334, 0.976316,
		0.545511, 0.831546, 0.104639,
		-0.831768, 0.521828, 0.189361,
		34.088158, 34.740299, 30.991365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411404, 34.416851, 30.864725>,  <34.670395, 34.375019, 30.858812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411404, 34.416851, 30.864725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515781, 34.030884, 30.876335>,  <35.578407, 33.799305, 30.883301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515781, 34.030884, 30.876335>,  <35.411404, 34.416851, 30.864725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515781, 34.030884, 30.876335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302788, 0.053258, -0.951569,
		0.916640, 0.257091, 0.306063,
		0.260940, -0.964918, 0.029026,
		35.594063, 33.741409, 30.885042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206982, 34.259224, 30.596743>,  <35.411404, 34.416851, 30.864725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206982, 34.259224, 30.596743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980022, 33.936779, 30.529533>,  <35.843845, 33.743313, 30.489208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980022, 33.936779, 30.529533>,  <36.206982, 34.259224, 30.596743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980022, 33.936779, 30.529533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167227, 0.086991, -0.982073,
		0.806282, -0.585328, 0.085446,
		-0.567402, -0.806116, -0.168022,
		35.809803, 33.694942, 30.479126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634842, 33.859562, 30.138769>,  <36.206982, 34.259224, 30.596743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634842, 33.859562, 30.138769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263802, 33.711266, 30.120378>,  <36.041180, 33.622288, 30.109344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263802, 33.711266, 30.120378>,  <36.634842, 33.859562, 30.138769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263802, 33.711266, 30.120378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029500, 0.049992, -0.998314,
		0.372414, -0.927390, -0.035436,
		-0.927597, -0.370741, -0.045975,
		35.985523, 33.600044, 30.106586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701023, 33.321079, 29.650303>,  <36.634842, 33.859562, 30.138769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701023, 33.321079, 29.650303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309765, 33.402512, 29.667252>,  <36.075012, 33.451370, 29.677420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.309765, 33.402512, 29.667252>,  <36.701023, 33.321079, 29.650303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309765, 33.402512, 29.667252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017177, 0.123957, -0.992139,
		-0.207233, -0.971179, -0.117751,
		-0.978140, 0.203582, 0.042370,
		36.016323, 33.463585, 29.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314625, 32.947601, 29.087267>,  <36.701023, 33.321079, 29.650303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314625, 32.947601, 29.087267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103706, 33.269855, 29.195272>,  <35.977154, 33.463207, 29.260077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103706, 33.269855, 29.195272>,  <36.314625, 32.947601, 29.087267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103706, 33.269855, 29.195272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009062, 0.312434, -0.949896,
		-0.849634, -0.503323, -0.157444,
		-0.527296, 0.805637, 0.270015,
		35.945518, 33.511547, 29.276278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862335, 33.009689, 28.567532>,  <36.314625, 32.947601, 29.087267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862335, 33.009689, 28.567532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874863, 33.374447, 28.731228>,  <35.882378, 33.593300, 28.829445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874863, 33.374447, 28.731228>,  <35.862335, 33.009689, 28.567532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874863, 33.374447, 28.731228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028379, 0.408463, -0.912334,
		-0.999107, 0.040185, -0.013087,
		0.031316, 0.911890, 0.409239,
		35.884258, 33.648014, 28.854000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346703, 33.434204, 28.151329>,  <35.862335, 33.009689, 28.567532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346703, 33.434204, 28.151329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.594090, 33.679337, 28.348076>,  <35.742523, 33.826416, 28.466124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.594090, 33.679337, 28.348076>,  <35.346703, 33.434204, 28.151329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594090, 33.679337, 28.348076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129543, 0.537857, -0.833024,
		-0.775060, 0.578915, 0.253258,
		0.618466, 0.612836, 0.491866,
		35.779629, 33.863186, 28.495636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145477, 34.138332, 27.913492>,  <35.346703, 33.434204, 28.151329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145477, 34.138332, 27.913492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516258, 34.156502, 28.062458>,  <35.738728, 34.167404, 28.151838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516258, 34.156502, 28.062458>,  <35.145477, 34.138332, 27.913492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516258, 34.156502, 28.062458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243534, 0.682247, -0.689369,
		-0.285390, 0.729709, 0.621351,
		0.926954, 0.045419, 0.372416,
		35.794346, 34.170128, 28.174183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340977, 34.968925, 28.044029>,  <35.145477, 34.138332, 27.913492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340977, 34.968925, 28.044029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686283, 34.771938, 27.999779>,  <35.893467, 34.653744, 27.973228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686283, 34.771938, 27.999779>,  <35.340977, 34.968925, 28.044029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686283, 34.771938, 27.999779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265344, 0.629230, -0.730522,
		0.429368, 0.601284, 0.673869,
		0.863270, -0.492470, -0.110624,
		35.945263, 34.624199, 27.966591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802773, 35.405304, 27.786993>,  <35.340977, 34.968925, 28.044029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802773, 35.405304, 27.786993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.039890, 35.093254, 27.706985>,  <36.182159, 34.906025, 27.658981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.039890, 35.093254, 27.706985>,  <35.802773, 35.405304, 27.786993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039890, 35.093254, 27.706985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358049, 0.477756, -0.802216,
		0.721386, 0.403931, 0.562532,
		0.592793, -0.780121, -0.200019,
		36.217728, 34.859219, 27.646980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476376, 35.659447, 27.616302>,  <35.802773, 35.405304, 27.786993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476376, 35.659447, 27.616302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478756, 35.286190, 27.472519>,  <36.480186, 35.062237, 27.386248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478756, 35.286190, 27.472519>,  <36.476376, 35.659447, 27.616302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478756, 35.286190, 27.472519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343640, 0.339484, -0.875592,
		0.939083, -0.118311, 0.322687,
		0.005955, -0.933141, -0.359460,
		36.480541, 35.006248, 27.364681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187325, 35.465515, 27.245947>,  <36.476376, 35.659447, 27.616302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187325, 35.465515, 27.245947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907940, 35.220543, 27.097845>,  <36.740311, 35.073559, 27.008984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907940, 35.220543, 27.097845>,  <37.187325, 35.465515, 27.245947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907940, 35.220543, 27.097845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257154, 0.268036, -0.928455,
		0.667854, -0.743698, -0.029723,
		-0.698457, -0.612429, -0.370254,
		36.698402, 35.036816, 26.986769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484821, 35.108578, 26.620144>,  <37.187325, 35.465515, 27.245947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484821, 35.108578, 26.620144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095764, 35.041801, 26.555536>,  <36.862328, 35.001736, 26.516771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095764, 35.041801, 26.555536>,  <37.484821, 35.108578, 26.620144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095764, 35.041801, 26.555536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088337, 0.377257, -0.921886,
		0.214836, -0.910937, -0.352191,
		-0.972647, -0.166943, -0.161518,
		36.803970, 34.991718, 26.507080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521538, 34.887440, 26.004974>,  <37.484821, 35.108578, 26.620144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521538, 34.887440, 26.004974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124264, 34.930576, 26.022642>,  <36.885899, 34.956459, 26.033243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.124264, 34.930576, 26.022642>,  <37.521538, 34.887440, 26.004974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124264, 34.930576, 26.022642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004641, 0.342115, -0.939647,
		-0.116442, -0.933449, -0.339283,
		-0.993186, 0.107840, 0.044169,
		36.826309, 34.962929, 26.035892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642200, 34.107357, 25.806103>,  <37.521538, 34.887440, 26.004974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642200, 34.107357, 25.806103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991867, 33.934540, 25.717407>,  <38.201668, 33.830849, 25.664188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991867, 33.934540, 25.717407>,  <37.642200, 34.107357, 25.806103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991867, 33.934540, 25.717407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066330, -0.558563, 0.826806,
		-0.481068, -0.708061, -0.516936,
		0.874170, -0.432038, -0.221741,
		38.254120, 33.804928, 25.650885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564781, 33.358868, 25.787500>,  <37.642200, 34.107357, 25.806103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564781, 33.358868, 25.787500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952427, 33.438927, 25.845123>,  <38.185017, 33.486961, 25.879698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952427, 33.438927, 25.845123>,  <37.564781, 33.358868, 25.787500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952427, 33.438927, 25.845123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022503, -0.509961, 0.859903,
		0.245574, -0.836588, -0.489708,
		0.969116, 0.200150, 0.144060,
		38.243160, 33.498970, 25.888342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865593, 32.687160, 25.807276>,  <37.564781, 33.358868, 25.787500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865593, 32.687160, 25.807276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112633, 32.943928, 25.989050>,  <38.260857, 33.097988, 26.098114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112633, 32.943928, 25.989050>,  <37.865593, 32.687160, 25.807276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112633, 32.943928, 25.989050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034212, -0.599181, 0.799882,
		0.785748, -0.478460, -0.392015,
		0.617599, 0.641918, 0.454437,
		38.297913, 33.136501, 26.125381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399197, 32.312675, 26.084810>,  <37.865593, 32.687160, 25.807276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399197, 32.312675, 26.084810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.382381, 32.633022, 26.323753>,  <38.372292, 32.825230, 26.467119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.382381, 32.633022, 26.323753>,  <38.399197, 32.312675, 26.084810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382381, 32.633022, 26.323753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093147, -0.598426, 0.795745,
		0.994764, -0.022190, 0.099756,
		-0.042039, 0.800871, 0.597360,
		38.369770, 32.873283, 26.502962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923557, 32.197136, 26.657373>,  <38.399197, 32.312675, 26.084810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923557, 32.197136, 26.657373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676453, 32.485516, 26.782980>,  <38.528191, 32.658543, 26.858343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676453, 32.485516, 26.782980>,  <38.923557, 32.197136, 26.657373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676453, 32.485516, 26.782980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092439, -0.463132, 0.881456,
		0.780915, 0.515501, 0.352748,
		-0.617760, 0.720949, 0.314014,
		38.491123, 32.701801, 26.877184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226604, 32.503391, 27.320578>,  <38.923557, 32.197136, 26.657373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226604, 32.503391, 27.320578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.833218, 32.573879, 27.337248>,  <38.597183, 32.616173, 27.347250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.833218, 32.573879, 27.337248>,  <39.226604, 32.503391, 27.320578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833218, 32.573879, 27.337248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009409, -0.180112, 0.983601,
		0.180832, 0.967733, 0.175476,
		-0.983469, 0.176216, 0.041676,
		38.538177, 32.626743, 27.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092484, 32.870056, 27.940384>,  <39.226604, 32.503391, 27.320578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092484, 32.870056, 27.940384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721844, 32.748909, 27.851223>,  <38.499462, 32.676220, 27.797726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721844, 32.748909, 27.851223>,  <39.092484, 32.870056, 27.940384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721844, 32.748909, 27.851223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192961, -0.125830, 0.973105,
		-0.322774, 0.944688, 0.058151,
		-0.926597, -0.302872, -0.222903,
		38.443863, 32.658047, 27.784351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659878, 33.112244, 28.435726>,  <39.092484, 32.870056, 27.940384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659878, 33.112244, 28.435726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431038, 32.826847, 28.273920>,  <38.293736, 32.655609, 28.176836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431038, 32.826847, 28.273920>,  <38.659878, 33.112244, 28.435726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431038, 32.826847, 28.273920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301622, -0.275621, 0.912720,
		-0.762712, 0.644175, -0.057523,
		-0.572097, -0.713493, -0.404516,
		38.259407, 32.612801, 28.152565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988060, 33.247856, 28.634012>,  <38.659878, 33.112244, 28.435726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988060, 33.247856, 28.634012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.045948, 32.861027, 28.550280>,  <38.080681, 32.628929, 28.500040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.045948, 32.861027, 28.550280>,  <37.988060, 33.247856, 28.634012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045948, 32.861027, 28.550280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137000, -0.229107, 0.963712,
		-0.979942, -0.110793, -0.165646,
		0.144723, -0.967076, -0.209333,
		38.089367, 32.570904, 28.487480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431885, 32.936268, 28.900835>,  <37.988060, 33.247856, 28.634012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431885, 32.936268, 28.900835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721565, 32.661522, 28.876347>,  <37.895374, 32.496674, 28.861654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721565, 32.661522, 28.876347>,  <37.431885, 32.936268, 28.900835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721565, 32.661522, 28.876347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352696, -0.445221, 0.823033,
		-0.592572, -0.574447, -0.564685,
		0.724198, -0.686869, -0.061220,
		37.938824, 32.455463, 28.857981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133495, 32.399086, 29.196890>,  <37.431885, 32.936268, 28.900835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133495, 32.399086, 29.196890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509872, 32.264545, 29.181402>,  <37.735699, 32.183819, 29.172110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509872, 32.264545, 29.181402>,  <37.133495, 32.399086, 29.196890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509872, 32.264545, 29.181402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048138, -0.246105, 0.968047,
		-0.335137, -0.909009, -0.247761,
		0.940939, -0.336355, -0.038721,
		37.792156, 32.163639, 29.169786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986210, 31.880928, 29.553015>,  <37.133495, 32.399086, 29.196890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986210, 31.880928, 29.553015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383308, 31.928812, 29.548576>,  <37.621567, 31.957542, 29.545914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383308, 31.928812, 29.548576>,  <36.986210, 31.880928, 29.553015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383308, 31.928812, 29.548576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085437, -0.637532, 0.765672,
		0.084585, -0.761066, -0.643135,
		0.992746, 0.119712, -0.011098,
		37.681133, 31.964725, 29.545246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240738, 31.275572, 29.629732>,  <36.986210, 31.880928, 29.553015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240738, 31.275572, 29.629732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519402, 31.532560, 29.757414>,  <37.686600, 31.686754, 29.834023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519402, 31.532560, 29.757414>,  <37.240738, 31.275572, 29.629732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519402, 31.532560, 29.757414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149765, -0.565391, 0.811113,
		0.701592, -0.517266, -0.490106,
		0.696662, 0.642471, 0.319206,
		37.728401, 31.725302, 29.853176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706810, 30.910908, 29.981518>,  <37.240738, 31.275572, 29.629732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706810, 30.910908, 29.981518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816769, 31.264215, 30.133450>,  <37.882744, 31.476200, 30.224609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816769, 31.264215, 30.133450>,  <37.706810, 30.910908, 29.981518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816769, 31.264215, 30.133450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006199, -0.396669, 0.917941,
		0.961453, -0.249986, -0.114519,
		0.274899, 0.883267, 0.379829,
		37.899239, 31.529196, 30.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.503162, 36.021152, 25.977745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.152439, 36.201981, 25.912224>,  <40.942005, 36.310478, 25.872911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.152439, 36.201981, 25.912224>,  <41.503162, 36.021152, 25.977745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152439, 36.201981, 25.912224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222858, 0.080211, -0.971545,
		-0.426070, -0.888367, -0.171078,
		-0.876812, 0.452073, -0.163804,
		40.889397, 36.337601, 25.863083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267551, 35.775997, 25.285503>,  <41.503162, 36.021152, 25.977745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267551, 35.775997, 25.285503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041721, 36.096600, 25.364349>,  <40.906223, 36.288960, 25.411657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041721, 36.096600, 25.364349>,  <41.267551, 35.775997, 25.285503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041721, 36.096600, 25.364349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052673, 0.203342, -0.977690,
		-0.823702, -0.562358, -0.072584,
		-0.564571, 0.801502, 0.197114,
		40.872349, 36.337051, 25.423483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736519, 35.750069, 24.755159>,  <41.267551, 35.775997, 25.285503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736519, 35.750069, 24.755159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.763371, 36.123501, 24.895964>,  <40.779484, 36.347561, 24.980446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.763371, 36.123501, 24.895964>,  <40.736519, 35.750069, 24.755159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763371, 36.123501, 24.895964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020465, 0.351445, -0.935985,
		-0.997534, 0.070039, 0.004487,
		0.067133, 0.933585, 0.352012,
		40.783512, 36.403576, 25.001568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228783, 36.107349, 24.349749>,  <40.736519, 35.750069, 24.755159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228783, 36.107349, 24.349749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505680, 36.352009, 24.502945>,  <40.671822, 36.498802, 24.594864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505680, 36.352009, 24.502945>,  <40.228783, 36.107349, 24.349749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505680, 36.352009, 24.502945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141421, 0.405444, -0.903114,
		-0.707667, 0.679343, 0.194168,
		0.692248, 0.611644, 0.382993,
		40.713356, 36.535503, 24.617844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144112, 36.761124, 23.980316>,  <40.228783, 36.107349, 24.349749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144112, 36.761124, 23.980316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502289, 36.809608, 24.151659>,  <40.717194, 36.838699, 24.254465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502289, 36.809608, 24.151659>,  <40.144112, 36.761124, 23.980316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502289, 36.809608, 24.151659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234997, 0.688530, -0.686077,
		-0.378096, 0.715006, 0.588056,
		0.895444, 0.121212, 0.428355,
		40.770924, 36.845974, 24.280165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137646, 37.501583, 24.006132>,  <40.144112, 36.761124, 23.980316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137646, 37.501583, 24.006132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509762, 37.356953, 24.030890>,  <40.733032, 37.270176, 24.045744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.509762, 37.356953, 24.030890>,  <40.137646, 37.501583, 24.006132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509762, 37.356953, 24.030890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314317, 0.698691, -0.642679,
		0.189133, 0.617329, 0.763632,
		0.930287, -0.361574, 0.061892,
		40.788849, 37.248482, 24.049458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616241, 38.135506, 24.077353>,  <40.137646, 37.501583, 24.006132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616241, 38.135506, 24.077353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.791920, 37.816105, 23.912674>,  <40.897327, 37.624462, 23.813868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.791920, 37.816105, 23.912674>,  <40.616241, 38.135506, 24.077353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791920, 37.816105, 23.912674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316877, 0.566496, -0.760704,
		0.840651, 0.203643, 0.501832,
		0.439198, -0.798506, -0.411696,
		40.923679, 37.576553, 23.789165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038517, 38.460487, 23.576460>,  <40.616241, 38.135506, 24.077353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038517, 38.460487, 23.576460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058983, 38.070072, 23.491858>,  <41.071262, 37.835823, 23.441095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058983, 38.070072, 23.491858>,  <41.038517, 38.460487, 23.576460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058983, 38.070072, 23.491858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175856, 0.217280, -0.960138,
		0.983085, 0.011935, 0.182760,
		0.051169, -0.976037, -0.211506,
		41.074333, 37.777260, 23.428406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455353, 38.419285, 23.076399>,  <41.038517, 38.460487, 23.576460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455353, 38.419285, 23.076399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.238979, 38.085571, 23.033772>,  <41.109154, 37.885342, 23.008194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.238979, 38.085571, 23.033772>,  <41.455353, 38.419285, 23.076399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238979, 38.085571, 23.033772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003554, 0.128975, -0.991642,
		0.841058, -0.536033, -0.072732,
		-0.540933, -0.834286, -0.106570,
		41.076698, 37.835285, 23.001801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840958, 38.030121, 22.536308>,  <41.455353, 38.419285, 23.076399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840958, 38.030121, 22.536308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460732, 37.913105, 22.577963>,  <41.232597, 37.842896, 22.602957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.460732, 37.913105, 22.577963>,  <41.840958, 38.030121, 22.536308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460732, 37.913105, 22.577963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113280, 0.014440, -0.993458,
		0.289122, -0.956144, -0.046865,
		-0.950566, -0.292540, 0.104137,
		41.175560, 37.825344, 22.609203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887825, 37.422508, 22.075729>,  <41.840958, 38.030121, 22.536308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887825, 37.422508, 22.075729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.500435, 37.497627, 22.141199>,  <41.268002, 37.542698, 22.180481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.500435, 37.497627, 22.141199>,  <41.887825, 37.422508, 22.075729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500435, 37.497627, 22.141199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194853, -0.161722, -0.967408,
		-0.155191, -0.968805, 0.193214,
		-0.968477, 0.187782, 0.163677,
		41.209892, 37.553967, 22.190302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596191, 36.906452, 21.715534>,  <41.887825, 37.422508, 22.075729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596191, 36.906452, 21.715534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.308109, 37.180401, 21.759811>,  <41.135262, 37.344772, 21.786377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.308109, 37.180401, 21.759811>,  <41.596191, 36.906452, 21.715534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308109, 37.180401, 21.759811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173486, -0.023307, -0.984561,
		-0.671720, -0.728289, 0.135602,
		-0.720205, 0.684874, 0.110692,
		41.092049, 37.385864, 21.793018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930855, 36.665710, 21.430586>,  <41.596191, 36.906452, 21.715534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930855, 36.665710, 21.430586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.945385, 37.064236, 21.399477>,  <40.954105, 37.303349, 21.380812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.945385, 37.064236, 21.399477>,  <40.930855, 36.665710, 21.430586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945385, 37.064236, 21.399477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015815, -0.077242, -0.996887,
		-0.999215, 0.037444, 0.012950,
		0.036327, 0.996309, -0.077774,
		40.956284, 37.363129, 21.376144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398235, 36.945763, 20.943851>,  <40.930855, 36.665710, 21.430586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398235, 36.945763, 20.943851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.722324, 37.180187, 20.947197>,  <40.916779, 37.320843, 20.949203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.722324, 37.180187, 20.947197>,  <40.398235, 36.945763, 20.943851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722324, 37.180187, 20.947197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111566, -0.140202, -0.983817,
		-0.575408, 0.798043, -0.178980,
		0.810221, 0.586064, 0.008361,
		40.965389, 37.356007, 20.949705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858185, 36.508915, 21.044779>,  <40.398235, 36.945763, 20.943851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858185, 36.508915, 21.044779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464821, 36.470287, 20.983355>,  <39.228802, 36.447109, 20.946501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464821, 36.470287, 20.983355>,  <39.858185, 36.508915, 21.044779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464821, 36.470287, 20.983355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085119, -0.501896, 0.860730,
		-0.160190, 0.859520, 0.485349,
		-0.983409, -0.096568, -0.153560,
		39.169800, 36.441319, 20.937286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460541, 36.768841, 21.719049>,  <39.858185, 36.508915, 21.044779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460541, 36.768841, 21.719049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.238991, 36.521618, 21.495899>,  <39.106060, 36.373283, 21.362009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.238991, 36.521618, 21.495899>,  <39.460541, 36.768841, 21.719049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238991, 36.521618, 21.495899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232181, -0.528804, 0.816369,
		-0.799571, 0.581695, 0.149390,
		-0.553875, -0.618059, -0.557875,
		39.072826, 36.336201, 21.328537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821007, 36.710266, 22.089041>,  <39.460541, 36.768841, 21.719049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821007, 36.710266, 22.089041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853016, 36.389992, 21.851555>,  <38.872223, 36.197826, 21.709063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853016, 36.389992, 21.851555>,  <38.821007, 36.710266, 22.089041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853016, 36.389992, 21.851555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283105, -0.589356, 0.756645,
		-0.955745, 0.107534, -0.273841,
		0.080025, -0.800685, -0.593717,
		38.877022, 36.149788, 21.673439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133797, 36.524197, 22.130539>,  <38.821007, 36.710266, 22.089041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133797, 36.524197, 22.130539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.328716, 36.200294, 21.999792>,  <38.445667, 36.005955, 21.921343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.328716, 36.200294, 21.999792>,  <38.133797, 36.524197, 22.130539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328716, 36.200294, 21.999792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378374, -0.533150, 0.756693,
		-0.787004, -0.245055, -0.566192,
		0.487297, -0.809752, -0.326868,
		38.474907, 35.957367, 21.901731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673111, 36.013996, 22.192389>,  <38.133797, 36.524197, 22.130539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673111, 36.013996, 22.192389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031445, 35.836952, 22.176546>,  <38.246445, 35.730724, 22.167042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031445, 35.836952, 22.176546>,  <37.673111, 36.013996, 22.192389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031445, 35.836952, 22.176546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232966, -0.543667, 0.806321,
		-0.378419, -0.713106, -0.590151,
		0.895838, -0.442612, -0.039605,
		38.300198, 35.704170, 22.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585953, 35.307602, 22.280384>,  <37.673111, 36.013996, 22.192389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585953, 35.307602, 22.280384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979431, 35.327797, 22.349419>,  <38.215519, 35.339912, 22.390841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979431, 35.327797, 22.349419>,  <37.585953, 35.307602, 22.280384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979431, 35.327797, 22.349419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084580, -0.717086, 0.691833,
		0.158686, -0.695153, -0.701128,
		0.983699, 0.050483, 0.172587,
		38.274540, 35.342941, 22.401196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904823, 34.702084, 22.136932>,  <37.585953, 35.307602, 22.280384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904823, 34.702084, 22.136932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.193993, 34.845985, 22.372885>,  <38.367493, 34.932327, 22.514456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.193993, 34.845985, 22.372885>,  <37.904823, 34.702084, 22.136932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193993, 34.845985, 22.372885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118987, -0.776170, 0.619195,
		0.680606, -0.517819, -0.518304,
		0.722923, 0.359757, 0.589880,
		38.410870, 34.953911, 22.549849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429256, 34.190701, 22.302595>,  <37.904823, 34.702084, 22.136932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429256, 34.190701, 22.302595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448719, 34.445839, 22.610044>,  <38.460396, 34.598923, 22.794514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.448719, 34.445839, 22.610044>,  <38.429256, 34.190701, 22.302595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448719, 34.445839, 22.610044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015642, -0.769929, 0.637938,
		0.998693, -0.019017, -0.047439,
		0.048657, 0.637846, 0.768625,
		38.463318, 34.637192, 22.840631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044685, 33.991058, 22.912848>,  <38.429256, 34.190701, 22.302595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044685, 33.991058, 22.912848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793987, 34.230518, 23.112371>,  <38.643570, 34.374195, 23.232086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793987, 34.230518, 23.112371>,  <39.044685, 33.991058, 22.912848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793987, 34.230518, 23.112371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096792, -0.575370, 0.812146,
		0.773189, 0.557290, 0.302667,
		-0.626746, 0.598646, 0.498811,
		38.605965, 34.410110, 23.262014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357998, 34.167614, 23.577597>,  <39.044685, 33.991058, 22.912848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357998, 34.167614, 23.577597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976986, 34.268745, 23.645447>,  <38.748379, 34.329422, 23.686157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.976986, 34.268745, 23.645447>,  <39.357998, 34.167614, 23.577597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976986, 34.268745, 23.645447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020132, -0.503620, 0.863691,
		0.303792, 0.826102, 0.474621,
		-0.952526, 0.252827, 0.169627,
		38.691227, 34.344593, 23.696335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399883, 34.545807, 24.191687>,  <39.357998, 34.167614, 23.577597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399883, 34.545807, 24.191687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.013191, 34.452705, 24.149256>,  <38.781174, 34.396847, 24.123798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.013191, 34.452705, 24.149256>,  <39.399883, 34.545807, 24.191687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013191, 34.452705, 24.149256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038152, -0.278859, 0.959574,
		-0.252921, 0.931700, 0.260703,
		-0.966734, -0.232750, -0.106076,
		38.723171, 34.382881, 24.117434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088177, 34.872665, 24.616594>,  <39.399883, 34.545807, 24.191687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088177, 34.872665, 24.616594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831028, 34.571041, 24.562763>,  <38.676739, 34.390068, 24.530464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.831028, 34.571041, 24.562763>,  <39.088177, 34.872665, 24.616594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831028, 34.571041, 24.562763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129207, -0.279931, 0.951286,
		-0.754998, 0.594167, 0.277389,
		-0.642872, -0.754059, -0.134577,
		38.638165, 34.344822, 24.522390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538555, 34.974247, 25.162981>,  <39.088177, 34.872665, 24.616594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538555, 34.974247, 25.162981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545574, 34.595467, 25.034624>,  <38.549786, 34.368198, 24.957609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545574, 34.595467, 25.034624>,  <38.538555, 34.974247, 25.162981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545574, 34.595467, 25.034624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034292, -0.321323, 0.946348,
		-0.999258, -0.005605, -0.038112,
		0.017551, -0.946953, -0.320892,
		38.550838, 34.311382, 24.938356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997223, 34.616131, 25.446924>,  <38.538555, 34.974247, 25.162981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997223, 34.616131, 25.446924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257244, 34.325321, 25.358505>,  <38.413258, 34.150833, 25.305454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257244, 34.325321, 25.358505>,  <37.997223, 34.616131, 25.446924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257244, 34.325321, 25.358505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013391, -0.279889, 0.959939,
		-0.759769, -0.626973, -0.172207,
		0.650055, -0.727026, -0.221047,
		38.452259, 34.107212, 25.292191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222347, 34.743027, 25.292744>,  <37.997223, 34.616131, 25.446924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222347, 34.743027, 25.292744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932861, 34.947224, 25.478487>,  <36.759171, 35.069740, 25.589933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932861, 34.947224, 25.478487>,  <37.222347, 34.743027, 25.292744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932861, 34.947224, 25.478487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280090, 0.397689, -0.873724,
		-0.630699, -0.762393, -0.144832,
		-0.723719, 0.510491, 0.464360,
		36.715744, 35.100372, 25.617796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556366, 34.626244, 24.945440>,  <37.222347, 34.743027, 25.292744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556366, 34.626244, 24.945440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.530624, 34.965191, 25.156275>,  <36.515179, 35.168560, 25.282776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.530624, 34.965191, 25.156275>,  <36.556366, 34.626244, 24.945440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530624, 34.965191, 25.156275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363101, 0.472092, -0.803298,
		-0.929525, -0.243084, 0.277299,
		-0.064358, 0.847372, 0.527085,
		36.511318, 35.219402, 25.314400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974426, 34.816620, 24.777603>,  <36.556366, 34.626244, 24.945440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974426, 34.816620, 24.777603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173332, 35.135696, 24.914083>,  <36.292675, 35.327141, 24.995972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173332, 35.135696, 24.914083>,  <35.974426, 34.816620, 24.777603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173332, 35.135696, 24.914083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248940, 0.507921, -0.824648,
		-0.831115, 0.325134, 0.451150,
		0.497269, 0.797687, 0.341202,
		36.322514, 35.375004, 25.016443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516743, 35.420364, 24.610044>,  <35.974426, 34.816620, 24.777603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516743, 35.420364, 24.610044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881840, 35.568844, 24.678297>,  <36.100899, 35.657932, 24.719248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881840, 35.568844, 24.678297>,  <35.516743, 35.420364, 24.610044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881840, 35.568844, 24.678297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076053, 0.564744, -0.821755,
		-0.401398, 0.737072, 0.543696,
		0.912741, 0.371200, 0.170630,
		36.155663, 35.680202, 24.729486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445469, 36.139118, 24.632750>,  <35.516743, 35.420364, 24.610044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445469, 36.139118, 24.632750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827576, 36.070610, 24.536308>,  <36.056839, 36.029503, 24.478443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827576, 36.070610, 24.536308>,  <35.445469, 36.139118, 24.632750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827576, 36.070610, 24.536308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071220, 0.658017, -0.749627,
		0.287041, 0.733266, 0.616384,
		0.955267, -0.171275, -0.241101,
		36.114155, 36.019226, 24.463978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802402, 36.766956, 24.528328>,  <35.445469, 36.139118, 24.632750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802402, 36.766956, 24.528328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024025, 36.500187, 24.329031>,  <36.156998, 36.340126, 24.209454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024025, 36.500187, 24.329031>,  <35.802402, 36.766956, 24.528328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024025, 36.500187, 24.329031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041912, 0.575395, -0.816801,
		0.831425, 0.473434, 0.290848,
		0.554054, -0.666919, -0.498240,
		36.190243, 36.300110, 24.179560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878010, 37.144531, 23.945644>,  <35.802402, 36.766956, 24.528328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878010, 37.144531, 23.945644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059452, 36.803936, 23.840420>,  <36.168316, 36.599579, 23.777285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059452, 36.803936, 23.840420>,  <35.878010, 37.144531, 23.945644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059452, 36.803936, 23.840420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140725, 0.359909, -0.922313,
		0.880022, 0.381347, 0.283083,
		0.453606, -0.851493, -0.263063,
		36.195534, 36.548489, 23.761501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077415, 37.866364, 24.059998>,  <35.878010, 37.144531, 23.945644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077415, 37.866364, 24.059998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747459, 38.091499, 24.081045>,  <35.549484, 38.226582, 24.093674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747459, 38.091499, 24.081045>,  <36.077415, 37.866364, 24.059998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747459, 38.091499, 24.081045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228335, -0.416898, 0.879806,
		0.517125, 0.713729, 0.472411,
		-0.824891, 0.562838, 0.052619,
		35.499992, 38.260349, 24.096830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174049, 38.238331, 24.750952>,  <36.077415, 37.866364, 24.059998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174049, 38.238331, 24.750952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787827, 38.283287, 24.657078>,  <35.556095, 38.310261, 24.600754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787827, 38.283287, 24.657078>,  <36.174049, 38.238331, 24.750952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787827, 38.283287, 24.657078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258978, -0.327460, 0.908681,
		0.025281, 0.938156, 0.345287,
		-0.965552, 0.112394, -0.234683,
		35.498161, 38.317005, 24.586674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802315, 38.638943, 25.294537>,  <36.174049, 38.238331, 24.750952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802315, 38.638943, 25.294537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.525990, 38.419922, 25.105661>,  <35.360195, 38.288509, 24.992336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.525990, 38.419922, 25.105661>,  <35.802315, 38.638943, 25.294537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525990, 38.419922, 25.105661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352557, -0.315074, 0.881154,
		-0.631251, 0.775188, 0.024615,
		-0.690815, -0.547551, -0.472189,
		35.318745, 38.255657, 24.964005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201641, 38.721519, 25.572313>,  <35.802315, 38.638943, 25.294537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201641, 38.721519, 25.572313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170357, 38.359547, 25.404989>,  <35.151585, 38.142365, 25.304594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170357, 38.359547, 25.404989>,  <35.201641, 38.721519, 25.572313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170357, 38.359547, 25.404989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335965, -0.371128, 0.865674,
		-0.938621, 0.208246, -0.274997,
		-0.078214, -0.904930, -0.418312,
		35.146893, 38.088066, 25.279495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523884, 38.530861, 25.809610>,  <35.201641, 38.721519, 25.572313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523884, 38.530861, 25.809610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677067, 38.180565, 25.692013>,  <34.768974, 37.970387, 25.621454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677067, 38.180565, 25.692013>,  <34.523884, 38.530861, 25.809610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677067, 38.180565, 25.692013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318258, -0.423848, 0.847977,
		-0.867212, -0.231171, -0.441024,
		0.382955, -0.875736, -0.293994,
		34.791954, 37.917843, 25.603815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946411, 37.903473, 25.658991>,  <34.523884, 38.530861, 25.809610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946411, 37.903473, 25.658991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.309856, 37.761181, 25.746515>,  <34.527924, 37.675804, 25.799030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.309856, 37.761181, 25.746515>,  <33.946411, 37.903473, 25.658991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309856, 37.761181, 25.746515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349330, -0.360199, 0.865000,
		-0.228893, -0.862387, -0.451549,
		0.908612, -0.355733, 0.218810,
		34.582439, 37.654461, 25.812159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793079, 37.211037, 25.763264>,  <33.946411, 37.903473, 25.658991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793079, 37.211037, 25.763264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159134, 37.255028, 25.918404>,  <34.378769, 37.281422, 26.011488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159134, 37.255028, 25.918404>,  <33.793079, 37.211037, 25.763264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159134, 37.255028, 25.918404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260796, -0.572140, 0.777587,
		0.307418, -0.812750, -0.494907,
		0.915139, 0.109974, 0.387848,
		34.433674, 37.288021, 26.034758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.477535, 40.681553, 22.716434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.514648, 40.293171, 22.628222>,  <39.536919, 40.060143, 22.575294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.514648, 40.293171, 22.628222>,  <39.477535, 40.681553, 22.716434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514648, 40.293171, 22.628222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477441, -0.237749, 0.845887,
		-0.873751, 0.026803, -0.485634,
		0.092787, -0.970957, -0.220531,
		39.542484, 40.001884, 22.562063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760284, 40.355766, 22.731503>,  <39.477535, 40.681553, 22.716434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760284, 40.355766, 22.731503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050098, 40.093300, 22.815880>,  <39.223988, 39.935822, 22.866507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050098, 40.093300, 22.815880>,  <38.760284, 40.355766, 22.731503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050098, 40.093300, 22.815880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443562, -0.209648, 0.871378,
		-0.527545, -0.724909, -0.442947,
		0.724533, -0.656166, 0.210944,
		39.267460, 39.896450, 22.879164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353180, 39.662399, 22.976038>,  <38.760284, 40.355766, 22.731503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353180, 39.662399, 22.976038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.728287, 39.701157, 23.109426>,  <38.953350, 39.724411, 23.189459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.728287, 39.701157, 23.109426>,  <38.353180, 39.662399, 22.976038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728287, 39.701157, 23.109426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296987, -0.273901, 0.914755,
		0.179976, -0.956864, -0.228078,
		0.937768, 0.096898, 0.333472,
		39.009617, 39.730225, 23.209469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473621, 39.109215, 23.409245>,  <38.353180, 39.662399, 22.976038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473621, 39.109215, 23.409245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733311, 39.392895, 23.519178>,  <38.889126, 39.563103, 23.585138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733311, 39.392895, 23.519178>,  <38.473621, 39.109215, 23.409245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733311, 39.392895, 23.519178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201206, -0.188331, 0.961274,
		0.733500, -0.679382, 0.020428,
		0.649225, 0.709205, 0.274837,
		38.928078, 39.605656, 23.601629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937450, 38.651127, 23.919876>,  <38.473621, 39.109215, 23.409245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937450, 38.651127, 23.919876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.993366, 39.038170, 24.003969>,  <39.026917, 39.270397, 24.054424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.993366, 39.038170, 24.003969>,  <38.937450, 38.651127, 23.919876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993366, 39.038170, 24.003969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125604, -0.193273, 0.973072,
		0.982183, -0.162428, 0.094519,
		0.139786, 0.967607, 0.210231,
		39.035301, 39.328453, 24.067038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465328, 38.651459, 24.490776>,  <38.937450, 38.651127, 23.919876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465328, 38.651459, 24.490776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263306, 38.995285, 24.521935>,  <39.142090, 39.201580, 24.540628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263306, 38.995285, 24.521935>,  <39.465328, 38.651459, 24.490776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263306, 38.995285, 24.521935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058544, -0.124163, 0.990533,
		0.861096, 0.495719, 0.113032,
		-0.505060, 0.859562, 0.077894,
		39.111786, 39.253155, 24.545303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606457, 38.885029, 25.099091>,  <39.465328, 38.651459, 24.490776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606457, 38.885029, 25.099091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296452, 39.123756, 25.015997>,  <39.110447, 39.266994, 24.966141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296452, 39.123756, 25.015997>,  <39.606457, 38.885029, 25.099091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296452, 39.123756, 25.015997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233649, 0.034810, 0.971698,
		0.587163, 0.801617, 0.112468,
		-0.775015, 0.596823, -0.207736,
		39.063946, 39.302803, 24.953676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709412, 39.386669, 25.508518>,  <39.606457, 38.885029, 25.099091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709412, 39.386669, 25.508518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317585, 39.404236, 25.430010>,  <39.082489, 39.414776, 25.382904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.317585, 39.404236, 25.430010>,  <39.709412, 39.386669, 25.508518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317585, 39.404236, 25.430010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190951, 0.103399, 0.976138,
		0.063161, 0.993670, -0.092900,
		-0.979565, 0.043915, -0.196273,
		39.023716, 39.417412, 25.371128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451756, 39.674564, 26.097681>,  <39.709412, 39.386669, 25.508518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451756, 39.674564, 26.097681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.121750, 39.521843, 25.931030>,  <38.923748, 39.430210, 25.831039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.121750, 39.521843, 25.931030>,  <39.451756, 39.674564, 26.097681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121750, 39.521843, 25.931030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413005, -0.095848, 0.905671,
		-0.385724, 0.919259, -0.078612,
		-0.825012, -0.381806, -0.416629,
		38.874245, 39.407303, 25.806042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891148, 40.010082, 26.431032>,  <39.451756, 39.674564, 26.097681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891148, 40.010082, 26.431032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.789284, 39.649319, 26.291487>,  <38.728165, 39.432861, 26.207760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.789284, 39.649319, 26.291487>,  <38.891148, 40.010082, 26.431032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789284, 39.649319, 26.291487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236200, -0.291819, 0.926850,
		-0.937741, 0.318432, -0.138717,
		-0.254658, -0.901911, -0.348865,
		38.712887, 39.378746, 26.186827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188461, 39.876019, 26.735573>,  <38.891148, 40.010082, 26.431032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188461, 39.876019, 26.735573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.344128, 39.526939, 26.617626>,  <38.437527, 39.317493, 26.546858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.344128, 39.526939, 26.617626>,  <38.188461, 39.876019, 26.735573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344128, 39.526939, 26.617626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376433, -0.442822, 0.813761,
		-0.840741, -0.205693, -0.500845,
		0.389170, -0.872696, -0.294869,
		38.460880, 39.265129, 26.529165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645905, 39.475208, 26.758598>,  <38.188461, 39.876019, 26.735573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645905, 39.475208, 26.758598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970470, 39.243221, 26.787544>,  <38.165211, 39.104027, 26.804911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970470, 39.243221, 26.787544>,  <37.645905, 39.475208, 26.758598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970470, 39.243221, 26.787544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282255, -0.280422, 0.917440,
		-0.511797, -0.764850, -0.391239,
		0.811416, -0.579972, 0.072363,
		38.213894, 39.069229, 26.809254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938202, 39.482491, 26.926960>,  <37.645905, 39.475208, 26.758598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938202, 39.482491, 26.926960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.757324, 39.787361, 27.112263>,  <36.648796, 39.970284, 27.223444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.757324, 39.787361, 27.112263>,  <36.938202, 39.482491, 26.926960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757324, 39.787361, 27.112263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241485, 0.395374, -0.886208,
		-0.858604, -0.512612, 0.005266,
		-0.452198, 0.762174, 0.463258,
		36.621666, 40.016014, 27.251240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292725, 39.682198, 26.457613>,  <36.938202, 39.482491, 26.926960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292725, 39.682198, 26.457613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359009, 39.975677, 26.721193>,  <36.398781, 40.151768, 26.879341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359009, 39.975677, 26.721193>,  <36.292725, 39.682198, 26.457613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359009, 39.975677, 26.721193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296959, 0.674302, -0.676116,
		-0.940401, -0.083640, 0.329621,
		0.165713, 0.733704, 0.658952,
		36.408722, 40.195789, 26.918879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723877, 40.120934, 26.293249>,  <36.292725, 39.682198, 26.457613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723877, 40.120934, 26.293249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.009972, 40.319801, 26.489719>,  <36.181629, 40.439121, 26.607601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.009972, 40.319801, 26.489719>,  <35.723877, 40.120934, 26.293249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009972, 40.319801, 26.489719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014095, 0.712927, -0.701097,
		-0.698736, 0.494529, 0.516922,
		0.715240, 0.497168, 0.491177,
		36.224545, 40.468952, 26.637074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443100, 40.717209, 26.300425>,  <35.723877, 40.120934, 26.293249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443100, 40.717209, 26.300425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.832085, 40.765896, 26.379932>,  <36.065475, 40.795109, 26.427637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.832085, 40.765896, 26.379932>,  <35.443100, 40.717209, 26.300425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832085, 40.765896, 26.379932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047716, 0.730789, -0.680933,
		-0.228139, 0.671664, 0.704855,
		0.972459, 0.121714, 0.198770,
		36.123821, 40.802410, 26.439564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547760, 41.381805, 26.398392>,  <35.443100, 40.717209, 26.300425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547760, 41.381805, 26.398392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.910694, 41.242924, 26.303568>,  <36.128452, 41.159595, 26.246674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.910694, 41.242924, 26.303568>,  <35.547760, 41.381805, 26.398392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910694, 41.242924, 26.303568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112112, 0.743271, -0.659529,
		0.405193, 0.571834, 0.713319,
		0.907331, -0.347209, -0.237059,
		36.182892, 41.138760, 26.232450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047215, 42.003059, 26.426567>,  <35.547760, 41.381805, 26.398392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047215, 42.003059, 26.426567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.225075, 41.725498, 26.200016>,  <36.331791, 41.558960, 26.064085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.225075, 41.725498, 26.200016>,  <36.047215, 42.003059, 26.426567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225075, 41.725498, 26.200016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270109, 0.706768, -0.653850,
		0.854007, 0.137750, 0.501693,
		0.444649, -0.693905, -0.566377,
		36.358471, 41.517326, 26.030104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636120, 42.298820, 26.155653>,  <36.047215, 42.003059, 26.426567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636120, 42.298820, 26.155653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.602543, 41.990269, 25.903326>,  <36.582397, 41.805138, 25.751930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.602543, 41.990269, 25.903326>,  <36.636120, 42.298820, 26.155653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602543, 41.990269, 25.903326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390688, 0.556891, -0.732963,
		0.916688, -0.307977, 0.254624,
		-0.083938, -0.771377, -0.630818,
		36.577362, 41.758854, 25.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074375, 42.440327, 25.801199>,  <36.636120, 42.298820, 26.155653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074375, 42.440327, 25.801199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851025, 42.188847, 25.584698>,  <36.717014, 42.037960, 25.454796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851025, 42.188847, 25.584698>,  <37.074375, 42.440327, 25.801199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851025, 42.188847, 25.584698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230845, 0.508918, -0.829285,
		0.796824, -0.587998, -0.139035,
		-0.558375, -0.628698, -0.541255,
		36.683514, 42.000237, 25.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348869, 42.503212, 25.153831>,  <37.074375, 42.440327, 25.801199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348869, 42.503212, 25.153831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018585, 42.312187, 25.033747>,  <36.820415, 42.197571, 24.961697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.018585, 42.312187, 25.033747>,  <37.348869, 42.503212, 25.153831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018585, 42.312187, 25.033747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125115, 0.363895, -0.922999,
		0.550038, -0.799694, -0.240722,
		-0.825714, -0.477566, -0.300210,
		36.770870, 42.168919, 24.943684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494564, 41.979130, 24.646111>,  <37.348869, 42.503212, 25.153831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494564, 41.979130, 24.646111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.126694, 42.132889, 24.613998>,  <36.905972, 42.225143, 24.594730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.126694, 42.132889, 24.613998>,  <37.494564, 41.979130, 24.646111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126694, 42.132889, 24.613998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156752, 0.171912, -0.972561,
		-0.360046, -0.907021, -0.218357,
		-0.919672, 0.384395, -0.080281,
		36.850792, 42.248207, 24.589914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206894, 41.697693, 23.944613>,  <37.494564, 41.979130, 24.646111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206894, 41.697693, 23.944613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971138, 42.001663, 24.054249>,  <36.829685, 42.184048, 24.120031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971138, 42.001663, 24.054249>,  <37.206894, 41.697693, 23.944613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971138, 42.001663, 24.054249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044121, 0.308498, -0.950201,
		-0.806642, -0.572134, -0.148297,
		-0.589392, 0.759929, 0.274090,
		36.794319, 42.229641, 24.136477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655350, 41.682758, 23.525152>,  <37.206894, 41.697693, 23.944613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655350, 41.682758, 23.525152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.637177, 42.061726, 23.651850>,  <36.626274, 42.289108, 23.727869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.637177, 42.061726, 23.651850>,  <36.655350, 41.682758, 23.525152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637177, 42.061726, 23.651850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087041, 0.319621, -0.943540,
		-0.995168, -0.015296, -0.096985,
		-0.045431, 0.947422, 0.316745,
		36.623547, 42.345951, 23.746874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131004, 42.102196, 23.110777>,  <36.655350, 41.682758, 23.525152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131004, 42.102196, 23.110777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.366577, 42.382587, 23.271673>,  <36.507919, 42.550823, 23.368212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.366577, 42.382587, 23.271673>,  <36.131004, 42.102196, 23.110777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366577, 42.382587, 23.271673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020898, 0.510751, -0.859475,
		-0.807915, 0.497763, 0.315444,
		0.588929, 0.700975, 0.402241,
		36.543255, 42.592880, 23.392345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001537, 41.365723, 23.086111>,  <36.131004, 42.102196, 23.110777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001537, 41.365723, 23.086111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.866230, 41.190201, 22.753119>,  <35.785046, 41.084888, 22.553324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.866230, 41.190201, 22.753119>,  <36.001537, 41.365723, 23.086111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866230, 41.190201, 22.753119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027286, -0.879683, 0.474777,
		-0.940654, 0.183317, 0.285596,
		-0.338268, -0.438808, -0.832479,
		35.764751, 41.058559, 22.503374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388039, 41.101940, 23.233067>,  <36.001537, 41.365723, 23.086111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388039, 41.101940, 23.233067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521030, 40.879166, 22.928625>,  <35.600826, 40.745502, 22.745960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521030, 40.879166, 22.928625>,  <35.388039, 41.101940, 23.233067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521030, 40.879166, 22.928625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280766, -0.828875, 0.483876,
		-0.900348, 0.052814, -0.431953,
		0.332480, -0.556935, -0.761105,
		35.620773, 40.712086, 22.700294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007412, 40.602093, 23.255079>,  <35.388039, 41.101940, 23.233067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007412, 40.602093, 23.255079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.271275, 40.452156, 22.994513>,  <35.429592, 40.362194, 22.838173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.271275, 40.452156, 22.994513>,  <35.007412, 40.602093, 23.255079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271275, 40.452156, 22.994513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223759, -0.925396, 0.305898,
		-0.717482, -0.056028, -0.694320,
		0.659660, -0.374837, -0.651418,
		35.469173, 40.339706, 22.799088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720425, 40.079300, 22.930819>,  <35.007412, 40.602093, 23.255079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720425, 40.079300, 22.930819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.093437, 39.966599, 22.840481>,  <35.317245, 39.898975, 22.786278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.093437, 39.966599, 22.840481>,  <34.720425, 40.079300, 22.930819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093437, 39.966599, 22.840481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143001, -0.862455, 0.485512,
		-0.331577, -0.420457, -0.844555,
		0.932527, -0.281757, -0.225844,
		35.373196, 39.882072, 22.772728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699287, 39.363647, 22.578403>,  <34.720425, 40.079300, 22.930819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699287, 39.363647, 22.578403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.076340, 39.420544, 22.699215>,  <35.302570, 39.454681, 22.771702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.076340, 39.420544, 22.699215>,  <34.699287, 39.363647, 22.578403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076340, 39.420544, 22.699215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046132, -0.840521, 0.539811,
		0.330645, -0.522774, -0.785736,
		0.942627, 0.142238, 0.302031,
		35.359127, 39.463215, 22.789824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003151, 38.638195, 22.539124>,  <34.699287, 39.363647, 22.578403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003151, 38.638195, 22.539124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.217915, 38.839184, 22.810194>,  <35.346775, 38.959778, 22.972836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.217915, 38.839184, 22.810194>,  <35.003151, 38.638195, 22.539124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217915, 38.839184, 22.810194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082220, -0.768289, 0.634801,
		0.839622, -0.396551, -0.371191,
		0.536913, 0.502473, 0.677676,
		35.378990, 38.989925, 23.013496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462791, 38.119873, 22.794312>,  <35.003151, 38.638195, 22.539124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462791, 38.119873, 22.794312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.427742, 38.416973, 23.059835>,  <35.406712, 38.595234, 23.219151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.427742, 38.416973, 23.059835>,  <35.462791, 38.119873, 22.794312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427742, 38.416973, 23.059835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044283, -0.668620, 0.742285,
		0.995169, 0.035644, 0.091477,
		-0.087621, 0.742750, 0.663811,
		35.401455, 38.639797, 23.258978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930752, 37.908504, 23.364258>,  <35.462791, 38.119873, 22.794312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930752, 37.908504, 23.364258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.698593, 38.195000, 23.519255>,  <35.559299, 38.366898, 23.612253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.698593, 38.195000, 23.519255>,  <35.930752, 37.908504, 23.364258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698593, 38.195000, 23.519255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026558, -0.492235, 0.870057,
		0.813902, 0.494686, 0.304712,
		-0.580395, 0.716234, 0.387493,
		35.524475, 38.409870, 23.635502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554512, 37.365841, 23.583057>,  <35.930752, 37.908504, 23.364258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554512, 37.365841, 23.583057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.446270, 37.002296, 23.456099>,  <36.381325, 36.784168, 23.379923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.446270, 37.002296, 23.456099>,  <36.554512, 37.365841, 23.583057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446270, 37.002296, 23.456099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076600, 0.308327, -0.948191,
		0.959637, -0.280901, -0.013817,
		-0.270608, -0.908862, -0.317399,
		36.365086, 36.729637, 23.360878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029064, 37.265743, 23.107203>,  <36.554512, 37.365841, 23.583057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029064, 37.265743, 23.107203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720757, 37.019409, 23.041883>,  <36.535774, 36.871609, 23.002693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720757, 37.019409, 23.041883>,  <37.029064, 37.265743, 23.107203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720757, 37.019409, 23.041883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031813, 0.293186, -0.955526,
		0.636322, -0.731293, -0.245570,
		-0.770767, -0.615835, -0.163296,
		36.489525, 36.834660, 22.992895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172630, 36.974720, 22.526947>,  <37.029064, 37.265743, 23.107203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172630, 36.974720, 22.526947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780464, 36.899681, 22.550941>,  <36.545166, 36.854660, 22.565338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780464, 36.899681, 22.550941>,  <37.172630, 36.974720, 22.526947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780464, 36.899681, 22.550941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085898, 0.133194, -0.987361,
		0.177237, -0.973173, -0.146699,
		-0.980412, -0.187598, 0.059987,
		36.486340, 36.843403, 22.568937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987671, 36.452530, 22.011782>,  <37.172630, 36.974720, 22.526947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987671, 36.452530, 22.011782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641518, 36.639408, 22.084278>,  <36.433826, 36.751534, 22.127775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641518, 36.639408, 22.084278>,  <36.987671, 36.452530, 22.011782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641518, 36.639408, 22.084278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160741, 0.083771, -0.983435,
		-0.474639, -0.880176, 0.002604,
		-0.865378, 0.467196, 0.181242,
		36.381905, 36.779568, 22.138651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444363, 36.166832, 21.498398>,  <36.987671, 36.452530, 22.011782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444363, 36.166832, 21.498398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.278873, 36.507030, 21.628319>,  <36.179581, 36.711147, 21.706272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.278873, 36.507030, 21.628319>,  <36.444363, 36.166832, 21.498398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278873, 36.507030, 21.628319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274118, 0.223839, -0.935283,
		-0.868156, -0.475980, 0.140529,
		-0.413720, 0.850493, 0.324803,
		36.154758, 36.762180, 21.725760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806347, 36.116810, 21.327799>,  <36.444363, 36.166832, 21.498398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806347, 36.116810, 21.327799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888947, 36.507042, 21.357719>,  <35.938507, 36.741180, 21.375671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888947, 36.507042, 21.357719>,  <35.806347, 36.116810, 21.327799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888947, 36.507042, 21.357719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377308, 0.149934, -0.913870,
		-0.902771, 0.160495, 0.399057,
		0.206503, 0.975583, 0.074800,
		35.950897, 36.799717, 21.380159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186733, 36.459801, 21.103933>,  <35.806347, 36.116810, 21.327799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186733, 36.459801, 21.103933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.473095, 36.736561, 21.066498>,  <35.644913, 36.902618, 21.044037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.473095, 36.736561, 21.066498>,  <35.186733, 36.459801, 21.103933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473095, 36.736561, 21.066498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458187, 0.364421, -0.810717,
		-0.526831, 0.623273, 0.577910,
		0.715901, 0.691902, -0.093587,
		35.687866, 36.944130, 21.038422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906860, 37.122509, 20.905191>,  <35.186733, 36.459801, 21.103933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906860, 37.122509, 20.905191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.283905, 37.120525, 20.771646>,  <35.510132, 37.119335, 20.691519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.283905, 37.120525, 20.771646>,  <34.906860, 37.122509, 20.905191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283905, 37.120525, 20.771646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321406, 0.257490, -0.911261,
		0.090484, 0.966268, 0.241119,
		0.942608, -0.004958, -0.333863,
		35.566689, 37.119038, 20.671488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134823, 37.715076, 20.422756>,  <34.906860, 37.122509, 20.905191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134823, 37.715076, 20.422756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.380157, 37.413994, 20.327049>,  <35.527359, 37.233345, 20.269625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.380157, 37.413994, 20.327049>,  <35.134823, 37.715076, 20.422756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380157, 37.413994, 20.327049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238232, 0.112524, -0.964668,
		0.753037, 0.648667, -0.110304,
		0.613336, -0.752708, -0.239267,
		35.564159, 37.188183, 20.255268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.238041, 31.528284, 35.166080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621525, 31.447401, 35.086090>,  <35.851616, 31.398872, 35.038097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621525, 31.447401, 35.086090>,  <35.238041, 31.528284, 35.166080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621525, 31.447401, 35.086090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023736, 0.757611, -0.652275,
		0.283397, 0.620595, 0.731128,
		0.958709, -0.202206, -0.199974,
		35.909138, 31.386740, 35.026096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550720, 32.178757, 35.224911>,  <35.238041, 31.528284, 35.166080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550720, 32.178757, 35.224911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815323, 31.948399, 35.032764>,  <35.974087, 31.810183, 34.917477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815323, 31.948399, 35.032764>,  <35.550720, 32.178757, 35.224911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815323, 31.948399, 35.032764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111176, 0.708766, -0.696628,
		0.741651, 0.407420, 0.532881,
		0.661509, -0.575898, -0.480362,
		36.013775, 31.775629, 34.888657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242592, 32.662399, 35.023987>,  <35.550720, 32.178757, 35.224911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242592, 32.662399, 35.023987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199802, 32.354179, 34.772652>,  <36.174129, 32.169247, 34.621849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199802, 32.354179, 34.772652>,  <36.242592, 32.662399, 35.023987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199802, 32.354179, 34.772652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070891, 0.636270, -0.768203,
		0.991732, -0.037630, -0.122686,
		-0.106969, -0.770548, -0.628341,
		36.167713, 32.123016, 34.584148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756969, 32.767326, 34.510185>,  <36.242592, 32.662399, 35.023987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756969, 32.767326, 34.510185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499245, 32.513672, 34.339195>,  <36.344608, 32.361481, 34.236603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499245, 32.513672, 34.339195>,  <36.756969, 32.767326, 34.510185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499245, 32.513672, 34.339195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200669, 0.679562, -0.705640,
		0.737969, -0.368870, -0.565100,
		-0.644309, -0.634138, -0.427474,
		36.305950, 32.323429, 34.210953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044239, 32.581856, 33.802589>,  <36.756969, 32.767326, 34.510185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044239, 32.581856, 33.802589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655159, 32.498611, 33.761497>,  <36.421711, 32.448666, 33.736843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655159, 32.498611, 33.761497>,  <37.044239, 32.581856, 33.802589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655159, 32.498611, 33.761497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010783, 0.482687, -0.875726,
		0.231833, -0.850708, -0.471752,
		-0.972696, -0.208110, -0.102729,
		36.363350, 32.436180, 33.730679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876511, 32.367771, 33.106941>,  <37.044239, 32.581856, 33.802589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876511, 32.367771, 33.106941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512974, 32.467857, 33.240444>,  <36.294849, 32.527908, 33.320545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512974, 32.467857, 33.240444>,  <36.876511, 32.367771, 33.106941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512974, 32.467857, 33.240444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216428, 0.401146, -0.890079,
		-0.356595, -0.881178, -0.310427,
		-0.908845, 0.250213, 0.333758,
		36.240322, 32.542923, 33.340572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545067, 32.144432, 32.620377>,  <36.876511, 32.367771, 33.106941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545067, 32.144432, 32.620377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302086, 32.398941, 32.810600>,  <36.156300, 32.551647, 32.924736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302086, 32.398941, 32.810600>,  <36.545067, 32.144432, 32.620377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302086, 32.398941, 32.810600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341572, 0.331276, -0.879537,
		-0.717170, -0.696712, 0.016100,
		-0.607450, 0.636277, 0.475559,
		36.119850, 32.589825, 32.953266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980057, 32.050377, 32.337273>,  <36.545067, 32.144432, 32.620377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980057, 32.050377, 32.337273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918552, 32.410236, 32.500732>,  <35.881649, 32.626152, 32.598808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918552, 32.410236, 32.500732>,  <35.980057, 32.050377, 32.337273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918552, 32.410236, 32.500732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330245, 0.342996, -0.879370,
		-0.931287, -0.270169, 0.244364,
		-0.153763, 0.899646, 0.408650,
		35.872425, 32.680130, 32.623329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223503, 32.208195, 32.188751>,  <35.980057, 32.050377, 32.337273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223503, 32.208195, 32.188751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423607, 32.547649, 32.257523>,  <35.543671, 32.751320, 32.298786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423607, 32.547649, 32.257523>,  <35.223503, 32.208195, 32.188751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423607, 32.547649, 32.257523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281634, 0.347235, -0.894489,
		-0.818792, 0.399059, 0.412713,
		0.500262, 0.848634, 0.171925,
		35.573685, 32.802238, 32.309101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759544, 32.808289, 31.934797>,  <35.223503, 32.208195, 32.188751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759544, 32.808289, 31.934797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124340, 32.971157, 31.954727>,  <35.343220, 33.068878, 31.966686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124340, 32.971157, 31.954727>,  <34.759544, 32.808289, 31.934797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124340, 32.971157, 31.954727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092339, 0.322121, -0.942184,
		-0.399678, 0.854664, 0.331370,
		0.911993, 0.407169, 0.049826,
		35.397938, 33.093307, 31.969675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705292, 33.555401, 31.714922>,  <34.759544, 32.808289, 31.934797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705292, 33.555401, 31.714922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095181, 33.477928, 31.670364>,  <35.329113, 33.431446, 31.643629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095181, 33.477928, 31.670364>,  <34.705292, 33.555401, 31.714922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095181, 33.477928, 31.670364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018548, 0.426705, -0.904201,
		0.222657, 0.883409, 0.412325,
		0.974720, -0.193678, -0.111395,
		35.387596, 33.419827, 31.636946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038025, 34.187500, 31.438942>,  <34.705292, 33.555401, 31.714922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038025, 34.187500, 31.438942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253960, 33.862652, 31.350367>,  <35.383522, 33.667744, 31.297220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253960, 33.862652, 31.350367>,  <35.038025, 34.187500, 31.438942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253960, 33.862652, 31.350367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023122, 0.248659, -0.968315,
		0.841452, 0.527852, 0.115457,
		0.539837, -0.812121, -0.221439,
		35.415909, 33.619015, 31.283936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843266, 34.809994, 31.390873>,  <35.038025, 34.187500, 31.438942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843266, 34.809994, 31.390873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443474, 34.809177, 31.403715>,  <34.203598, 34.808689, 31.411421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443474, 34.809177, 31.403715>,  <34.843266, 34.809994, 31.390873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443474, 34.809177, 31.403715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031329, -0.288524, 0.956960,
		0.007314, 0.957471, 0.288439,
		-0.999482, -0.002038, 0.032107,
		34.143631, 34.808567, 31.413347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655445, 35.316658, 31.917648>,  <34.843266, 34.809994, 31.390873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655445, 35.316658, 31.917648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322357, 35.097038, 31.889013>,  <34.122505, 34.965267, 31.871832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322357, 35.097038, 31.889013>,  <34.655445, 35.316658, 31.917648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322357, 35.097038, 31.889013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007323, -0.118357, 0.992944,
		-0.553644, 0.827370, 0.094538,
		-0.832721, -0.549045, -0.071586,
		34.072540, 34.932323, 31.867537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137386, 35.635620, 32.410435>,  <34.655445, 35.316658, 31.917648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137386, 35.635620, 32.410435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008648, 35.266045, 32.327721>,  <33.931404, 35.044300, 32.278091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008648, 35.266045, 32.327721>,  <34.137386, 35.635620, 32.410435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008648, 35.266045, 32.327721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144260, -0.168004, 0.975174,
		-0.935737, 0.343687, -0.079216,
		-0.321846, -0.923934, -0.206788,
		33.912094, 34.988865, 32.265686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491611, 35.565475, 32.733730>,  <34.137386, 35.635620, 32.410435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491611, 35.565475, 32.733730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634293, 35.195465, 32.681435>,  <33.719902, 34.973457, 32.650059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634293, 35.195465, 32.681435>,  <33.491611, 35.565475, 32.733730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634293, 35.195465, 32.681435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170117, -0.201920, 0.964514,
		-0.918600, -0.321800, -0.229387,
		0.356699, -0.925026, -0.130740,
		33.741302, 34.917957, 32.642212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039921, 35.090717, 33.188171>,  <33.491611, 35.565475, 32.733730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039921, 35.090717, 33.188171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373825, 34.879642, 33.125282>,  <33.574169, 34.752998, 33.087551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373825, 34.879642, 33.125282>,  <33.039921, 35.090717, 33.188171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373825, 34.879642, 33.125282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063298, -0.375615, 0.924611,
		-0.546958, -0.761880, -0.346952,
		0.834764, -0.527685, -0.157220,
		33.624256, 34.721336, 33.078117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809139, 34.461266, 33.274223>,  <33.039921, 35.090717, 33.188171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809139, 34.461266, 33.274223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207520, 34.451607, 33.308861>,  <33.446548, 34.445812, 33.329643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207520, 34.451607, 33.308861>,  <32.809139, 34.461266, 33.274223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207520, 34.451607, 33.308861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088748, -0.417494, 0.904336,
		0.014312, -0.908359, -0.417947,
		0.995951, -0.024149, 0.086591,
		33.506306, 34.444363, 33.334839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995232, 33.775448, 33.478596>,  <32.809139, 34.461266, 33.274223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995232, 33.775448, 33.478596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319714, 33.986294, 33.579861>,  <33.514404, 34.112801, 33.640621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319714, 33.986294, 33.579861>,  <32.995232, 33.775448, 33.478596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319714, 33.986294, 33.579861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028945, -0.468610, 0.882931,
		0.584039, -0.708914, -0.395398,
		0.811209, 0.527111, 0.253167,
		33.563076, 34.144428, 33.655811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402229, 33.313423, 33.890598>,  <32.995232, 33.775448, 33.478596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402229, 33.313423, 33.890598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539097, 33.677879, 33.982460>,  <33.621216, 33.896553, 34.037579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539097, 33.677879, 33.982460>,  <33.402229, 33.313423, 33.890598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539097, 33.677879, 33.982460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117116, -0.283859, 0.951687,
		0.932313, -0.298737, -0.203836,
		0.342165, 0.911142, 0.229659,
		33.641747, 33.951221, 34.051357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940750, 33.157558, 34.330593>,  <33.402229, 33.313423, 33.890598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940750, 33.157558, 34.330593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846504, 33.534512, 34.425591>,  <33.789955, 33.760681, 34.482590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846504, 33.534512, 34.425591>,  <33.940750, 33.157558, 34.330593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846504, 33.534512, 34.425591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001874, -0.243934, 0.969790,
		0.971845, 0.228942, 0.055708,
		-0.235614, 0.942381, 0.237495,
		33.775822, 33.817226, 34.496838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333218, 33.307434, 34.949329>,  <33.940750, 33.157558, 34.330593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333218, 33.307434, 34.949329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043999, 33.583599, 34.940071>,  <33.870468, 33.749298, 34.934517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043999, 33.583599, 34.940071>,  <34.333218, 33.307434, 34.949329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043999, 33.583599, 34.940071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082782, -0.053333, 0.995140,
		0.685820, 0.721449, 0.095716,
		-0.723047, 0.690410, -0.023146,
		33.827084, 33.790722, 34.933128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445602, 33.618458, 35.520180>,  <34.333218, 33.307434, 34.949329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445602, 33.618458, 35.520180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093983, 33.789799, 35.436481>,  <33.883011, 33.892605, 35.386261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093983, 33.789799, 35.436481>,  <34.445602, 33.618458, 35.520180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093983, 33.789799, 35.436481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210581, 0.044894, 0.976545,
		0.427700, 0.902495, 0.050739,
		-0.879050, 0.428353, -0.209250,
		33.830269, 33.918304, 35.373707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400295, 34.183636, 36.007214>,  <34.445602, 33.618458, 35.520180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400295, 34.183636, 36.007214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029499, 34.102070, 35.881290>,  <33.807022, 34.053131, 35.805737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029499, 34.102070, 35.881290>,  <34.400295, 34.183636, 36.007214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029499, 34.102070, 35.881290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308331, -0.063629, 0.949149,
		-0.213580, 0.976918, -0.003891,
		-0.926993, -0.203919, -0.314804,
		33.751400, 34.040894, 35.786850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040813, 34.729691, 36.306660>,  <34.400295, 34.183636, 36.007214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040813, 34.729691, 36.306660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776848, 34.435650, 36.244511>,  <33.618469, 34.259224, 36.207222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776848, 34.435650, 36.244511>,  <34.040813, 34.729691, 36.306660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776848, 34.435650, 36.244511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262234, 0.031555, 0.964488,
		-0.704096, 0.677220, -0.213593,
		-0.659911, -0.735103, -0.155372,
		33.578873, 34.215118, 36.197899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958778, 34.464340, 36.963905>,  <34.040813, 34.729691, 36.306660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958778, 34.464340, 36.963905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036819, 34.072758, 36.987804>,  <34.083645, 33.837807, 37.002144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036819, 34.072758, 36.987804>,  <33.958778, 34.464340, 36.963905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036819, 34.072758, 36.987804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717957, 0.101054, -0.688714,
		0.668186, 0.177268, 0.722567,
		0.195106, -0.978961, 0.059748,
		34.095352, 33.779068, 37.005730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166805, 35.162571, 37.143215>,  <33.958778, 34.464340, 36.963905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166805, 35.162571, 37.143215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564838, 35.164398, 37.182785>,  <34.803658, 35.165493, 37.206528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564838, 35.164398, 37.182785>,  <34.166805, 35.162571, 37.143215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564838, 35.164398, 37.182785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075931, 0.606068, -0.791780,
		-0.063573, 0.795400, 0.602742,
		0.995084, 0.004568, 0.098925,
		34.863365, 35.165768, 37.212463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359875, 35.499092, 36.618889>,  <34.166805, 35.162571, 37.143215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359875, 35.499092, 36.618889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743351, 35.465248, 36.727520>,  <34.973438, 35.444942, 36.792698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743351, 35.465248, 36.727520>,  <34.359875, 35.499092, 36.618889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743351, 35.465248, 36.727520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273162, 0.540163, -0.795994,
		-0.079350, 0.837296, 0.540961,
		0.958690, -0.084608, 0.271579,
		35.030956, 35.439865, 36.808994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639206, 36.227627, 36.609943>,  <34.359875, 35.499092, 36.618889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639206, 36.227627, 36.609943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888393, 35.927792, 36.520470>,  <35.037907, 35.747890, 36.466785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.888393, 35.927792, 36.520470>,  <34.639206, 36.227627, 36.609943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888393, 35.927792, 36.520470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213853, 0.438251, -0.873042,
		0.752450, 0.496041, 0.433317,
		0.622966, -0.749586, -0.223682,
		35.075283, 35.702915, 36.453365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280193, 36.547539, 36.404751>,  <34.639206, 36.227627, 36.609943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280193, 36.547539, 36.404751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259342, 36.179188, 36.250210>,  <35.246834, 35.958176, 36.157486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259342, 36.179188, 36.250210>,  <35.280193, 36.547539, 36.404751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259342, 36.179188, 36.250210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272617, 0.359060, -0.892612,
		0.960710, -0.151852, 0.232331,
		-0.052124, -0.920878, -0.386350,
		35.243706, 35.902924, 36.134304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736942, 36.696140, 35.826427>,  <35.280193, 36.547539, 36.404751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736942, 36.696140, 35.826427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565979, 36.342537, 35.750683>,  <35.463402, 36.130375, 35.705238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565979, 36.342537, 35.750683>,  <35.736942, 36.696140, 35.826427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565979, 36.342537, 35.750683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149623, 0.137398, -0.979150,
		0.891592, -0.446828, 0.073542,
		-0.427407, -0.884006, -0.189359,
		35.437756, 36.077335, 35.693874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185474, 36.474083, 35.326820>,  <35.736942, 36.696140, 35.826427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185474, 36.474083, 35.326820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825726, 36.299442, 35.317833>,  <35.609875, 36.194660, 35.312443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825726, 36.299442, 35.317833>,  <36.185474, 36.474083, 35.326820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825726, 36.299442, 35.317833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023820, 0.100247, -0.994678,
		0.436526, -0.894055, -0.100559,
		-0.899376, -0.436598, -0.022464,
		35.555912, 36.168465, 35.311092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236721, 36.051907, 34.785213>,  <36.185474, 36.474083, 35.326820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236721, 36.051907, 34.785213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842220, 36.072235, 34.848099>,  <35.605518, 36.084431, 34.885830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842220, 36.072235, 34.848099>,  <36.236721, 36.051907, 34.785213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842220, 36.072235, 34.848099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137276, 0.277513, -0.950864,
		-0.091954, -0.959377, -0.266722,
		-0.986256, 0.050821, 0.157218,
		35.546345, 36.087482, 34.895264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926105, 35.611183, 34.211319>,  <36.236721, 36.051907, 34.785213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926105, 35.611183, 34.211319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633568, 35.851490, 34.340450>,  <35.458046, 35.995674, 34.417931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633568, 35.851490, 34.340450>,  <35.926105, 35.611183, 34.211319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633568, 35.851490, 34.340450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205213, 0.257572, -0.944216,
		-0.650407, -0.756792, -0.065088,
		-0.731340, 0.600769, 0.322830,
		35.414165, 36.031719, 34.437298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420418, 35.405815, 33.804863>,  <35.926105, 35.611183, 34.211319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420418, 35.405815, 33.804863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327900, 35.766006, 33.952183>,  <35.272388, 35.982121, 34.040573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327900, 35.766006, 33.952183>,  <35.420418, 35.405815, 33.804863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327900, 35.766006, 33.952183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196857, 0.327417, -0.924146,
		-0.952759, -0.286253, 0.101535,
		-0.231295, 0.900476, 0.368301,
		35.258511, 36.036148, 34.062672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689186, 35.645542, 33.431744>,  <35.420418, 35.405815, 33.804863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689186, 35.645542, 33.431744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880131, 35.974922, 33.554417>,  <34.994698, 36.172550, 33.628021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.880131, 35.974922, 33.554417>,  <34.689186, 35.645542, 33.431744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880131, 35.974922, 33.554417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188810, 0.436982, -0.879430,
		-0.858181, 0.361905, 0.364076,
		0.477364, 0.823451, 0.306679,
		35.023338, 36.221958, 33.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328476, 36.212643, 33.210072>,  <34.689186, 35.645542, 33.431744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328476, 36.212643, 33.210072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691753, 36.353653, 33.300320>,  <34.909721, 36.438259, 33.354469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691753, 36.353653, 33.300320>,  <34.328476, 36.212643, 33.210072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691753, 36.353653, 33.300320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043510, 0.615661, -0.786809,
		-0.416275, 0.704761, 0.574480,
		0.908197, 0.352524, 0.225620,
		34.964214, 36.459412, 33.368004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312817, 36.907860, 33.090797>,  <34.328476, 36.212643, 33.210072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312817, 36.907860, 33.090797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708588, 36.849865, 33.092293>,  <34.946049, 36.815067, 33.093189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708588, 36.849865, 33.092293>,  <34.312817, 36.907860, 33.090797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708588, 36.849865, 33.092293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082456, 0.541129, -0.836887,
		0.119318, 0.828346, 0.547362,
		0.989426, -0.144989, 0.003735,
		35.005417, 36.806370, 33.093414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602077, 37.619659, 33.004391>,  <34.312817, 36.907860, 33.090797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602077, 37.619659, 33.004391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898232, 37.366207, 32.914642>,  <35.075924, 37.214134, 32.860794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898232, 37.366207, 32.914642>,  <34.602077, 37.619659, 33.004391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898232, 37.366207, 32.914642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274221, 0.589471, -0.759820,
		0.613706, 0.501032, 0.610190,
		0.740383, -0.633633, -0.224368,
		35.120346, 37.176117, 32.847332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197433, 38.116173, 32.969650>,  <34.602077, 37.619659, 33.004391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197433, 38.116173, 32.969650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319622, 37.777840, 32.794716>,  <35.392933, 37.574841, 32.689754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319622, 37.777840, 32.794716>,  <35.197433, 38.116173, 32.969650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319622, 37.777840, 32.794716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505812, 0.533267, -0.678071,
		0.806749, -0.014081, 0.590727,
		0.305467, -0.845830, -0.437335,
		35.411263, 37.524090, 32.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945782, 38.168392, 32.823147>,  <35.197433, 38.116173, 32.969650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945782, 38.168392, 32.823147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801514, 37.888103, 32.576923>,  <35.714954, 37.719929, 32.429192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801514, 37.888103, 32.576923>,  <35.945782, 38.168392, 32.823147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801514, 37.888103, 32.576923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355628, 0.506802, -0.785290,
		0.862234, -0.502137, 0.066409,
		-0.360667, -0.700721, -0.615556,
		35.693314, 37.677887, 32.392258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513477, 37.865257, 32.247974>,  <35.945782, 38.168392, 32.823147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513477, 37.865257, 32.247974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146534, 37.825825, 32.093708>,  <35.926369, 37.802166, 32.001148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146534, 37.825825, 32.093708>,  <36.513477, 37.865257, 32.247974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146534, 37.825825, 32.093708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310688, 0.428382, -0.848505,
		0.248864, -0.898203, -0.362349,
		-0.917355, -0.098585, -0.385670,
		35.871326, 37.796249, 31.978006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640541, 37.605278, 31.516453>,  <36.513477, 37.865257, 32.247974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640541, 37.605278, 31.516453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259552, 37.725983, 31.533075>,  <36.030956, 37.798405, 31.543049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259552, 37.725983, 31.533075>,  <36.640541, 37.605278, 31.516453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259552, 37.725983, 31.533075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079174, 0.376986, -0.922829,
		-0.294144, -0.875682, -0.382962,
		-0.952476, 0.301766, 0.041557,
		35.973808, 37.816513, 31.545542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283157, 37.447140, 30.804703>,  <36.640541, 37.605278, 31.516453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283157, 37.447140, 30.804703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037163, 37.709141, 30.980320>,  <35.889565, 37.866341, 31.085691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037163, 37.709141, 30.980320>,  <36.283157, 37.447140, 30.804703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037163, 37.709141, 30.980320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139070, 0.457962, -0.878026,
		-0.776176, -0.601033, -0.190550,
		-0.614988, 0.655003, 0.439045,
		35.852665, 37.905643, 31.112034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694340, 37.418552, 30.420790>,  <36.283157, 37.447140, 30.804703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694340, 37.418552, 30.420790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690903, 37.775887, 30.600513>,  <35.688843, 37.990288, 30.708347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690903, 37.775887, 30.600513>,  <35.694340, 37.418552, 30.420790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690903, 37.775887, 30.600513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071060, 0.448735, -0.890835,
		-0.997435, 0.024276, -0.067335,
		-0.008589, 0.893335, 0.449309,
		35.688324, 38.043888, 30.735306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372807, 37.895203, 29.980848>,  <35.694340, 37.418552, 30.420790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372807, 37.895203, 29.980848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581200, 38.140930, 30.217894>,  <35.706238, 38.288364, 30.360121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581200, 38.140930, 30.217894>,  <35.372807, 37.895203, 29.980848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581200, 38.140930, 30.217894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076677, 0.657789, -0.749289,
		-0.850114, 0.435810, 0.295596,
		0.520987, 0.614316, 0.592612,
		35.737495, 38.325226, 30.395678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034847, 38.491158, 29.918411>,  <35.372807, 37.895203, 29.980848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034847, 38.491158, 29.918411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399357, 38.594978, 30.046289>,  <35.618065, 38.657272, 30.123016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399357, 38.594978, 30.046289>,  <35.034847, 38.491158, 29.918411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399357, 38.594978, 30.046289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100362, 0.612951, -0.783721,
		-0.399376, 0.746272, 0.532519,
		0.911277, 0.259555, 0.319696,
		35.672741, 38.672844, 30.142199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113934, 39.299110, 29.686838>,  <35.034847, 38.491158, 29.918411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113934, 39.299110, 29.686838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490479, 39.192711, 29.769857>,  <35.716408, 39.128872, 29.819670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490479, 39.192711, 29.769857>,  <35.113934, 39.299110, 29.686838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490479, 39.192711, 29.769857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317926, 0.493460, -0.809581,
		0.112927, 0.828097, 0.549093,
		0.941366, -0.265995, 0.207548,
		35.772888, 39.112911, 29.832121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446255, 39.857357, 29.588455>,  <35.113934, 39.299110, 29.686838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446255, 39.857357, 29.588455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742508, 39.589146, 29.571247>,  <35.920261, 39.428219, 29.560923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742508, 39.589146, 29.571247>,  <35.446255, 39.857357, 29.588455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742508, 39.589146, 29.571247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477796, 0.570608, -0.667920,
		0.472407, 0.474131, 0.742988,
		0.740637, -0.670527, -0.043021,
		35.964699, 39.387989, 29.558340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955280, 40.184685, 29.458876>,  <35.446255, 39.857357, 29.588455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955280, 40.184685, 29.458876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083023, 39.821907, 29.348993>,  <36.159668, 39.604240, 29.283064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083023, 39.821907, 29.348993>,  <35.955280, 40.184685, 29.458876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083023, 39.821907, 29.348993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383035, 0.388695, -0.837974,
		0.866771, 0.162394, 0.471525,
		0.319362, -0.906942, -0.274707,
		36.178833, 39.549824, 29.266581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663342, 40.273609, 29.324701>,  <35.955280, 40.184685, 29.458876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663342, 40.273609, 29.324701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532135, 39.947727, 29.133429>,  <36.453411, 39.752197, 29.018665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532135, 39.947727, 29.133429>,  <36.663342, 40.273609, 29.324701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532135, 39.947727, 29.133429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283889, 0.397781, -0.872455,
		0.901007, -0.421929, 0.100808,
		-0.328015, -0.814706, -0.478184,
		36.433731, 39.703316, 28.989973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144493, 40.298096, 28.722225>,  <36.663342, 40.273609, 29.324701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144493, 40.298096, 28.722225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868858, 40.039566, 28.591127>,  <36.703476, 39.884449, 28.512468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868858, 40.039566, 28.591127>,  <37.144493, 40.298096, 28.722225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868858, 40.039566, 28.591127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228944, 0.234937, -0.944664,
		0.687563, -0.725991, -0.013919,
		-0.689088, -0.646329, -0.327745,
		36.662132, 39.845669, 28.492804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413815, 39.985146, 28.130182>,  <37.144493, 40.298096, 28.722225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413815, 39.985146, 28.130182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016186, 39.946739, 28.109795>,  <36.777607, 39.923695, 28.097561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016186, 39.946739, 28.109795>,  <37.413815, 39.985146, 28.130182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016186, 39.946739, 28.109795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024021, 0.263265, -0.964424,
		0.106020, -0.959933, -0.259399,
		-0.994074, -0.096017, -0.050970,
		36.717964, 39.917934, 28.094503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192909, 39.467556, 27.633722>,  <37.413815, 39.985146, 28.130182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192909, 39.467556, 27.633722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874866, 39.709343, 27.653419>,  <36.684040, 39.854416, 27.665237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874866, 39.709343, 27.653419>,  <37.192909, 39.467556, 27.633722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874866, 39.709343, 27.653419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037241, 0.129704, -0.990853,
		-0.605325, -0.786000, -0.125639,
		-0.795106, 0.604468, 0.049242,
		36.636333, 39.890682, 27.668192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369320, 38.721386, 27.236879>,  <37.192909, 39.467556, 27.633722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369320, 38.721386, 27.236879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769119, 38.717171, 27.224974>,  <38.008999, 38.714642, 27.217831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769119, 38.717171, 27.224974>,  <37.369320, 38.721386, 27.236879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769119, 38.717171, 27.224974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022164, -0.437227, 0.899078,
		-0.022487, -0.899289, -0.436776,
		0.999501, -0.010537, -0.029764,
		38.068970, 38.714008, 27.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619518, 38.038555, 27.445307>,  <37.369320, 38.721386, 27.236879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619518, 38.038555, 27.445307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919003, 38.294945, 27.512936>,  <38.098694, 38.448780, 27.553513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919003, 38.294945, 27.512936>,  <37.619518, 38.038555, 27.445307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919003, 38.294945, 27.512936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215502, -0.476543, 0.852329,
		0.626894, -0.601710, -0.494924,
		0.748707, 0.640977, 0.169072,
		38.143616, 38.487240, 27.563658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222809, 37.580791, 27.535198>,  <37.619518, 38.038555, 27.445307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222809, 37.580791, 27.535198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317322, 37.925568, 27.714636>,  <38.374031, 38.132431, 27.822298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317322, 37.925568, 27.714636>,  <38.222809, 37.580791, 27.535198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317322, 37.925568, 27.714636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138191, -0.486782, 0.862524,
		0.961807, -0.141810, -0.234130,
		0.236284, 0.861936, 0.448593,
		38.388206, 38.184147, 27.849215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657345, 37.357872, 28.118343>,  <38.222809, 37.580791, 27.535198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657345, 37.357872, 28.118343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.557808, 37.735752, 28.203775>,  <38.498085, 37.962482, 28.255033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.557808, 37.735752, 28.203775>,  <38.657345, 37.357872, 28.118343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557808, 37.735752, 28.203775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024347, -0.226547, 0.973696,
		0.968239, 0.237094, 0.079375,
		-0.248840, 0.944703, 0.213579,
		38.483154, 38.019161, 28.267849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107239, 37.409332, 28.540731>,  <38.657345, 37.357872, 28.118343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107239, 37.409332, 28.540731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845860, 37.707874, 28.591257>,  <38.689034, 37.887001, 28.621572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845860, 37.707874, 28.591257>,  <39.107239, 37.409332, 28.540731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845860, 37.707874, 28.591257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015899, -0.180363, 0.983472,
		0.756806, 0.640638, 0.129724,
		-0.653446, 0.746359, 0.126314,
		38.649826, 37.931782, 28.629152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
