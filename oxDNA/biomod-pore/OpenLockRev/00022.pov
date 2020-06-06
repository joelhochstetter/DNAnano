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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.570053, 33.407764, 51.437885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346016, 33.724060, 51.536697>,  <40.211594, 33.913837, 51.595985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346016, 33.724060, 51.536697>,  <40.570053, 33.407764, 51.437885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346016, 33.724060, 51.536697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735779, 0.611852, -0.290289,
		-0.380690, 0.019171, -0.924504,
		-0.560094, 0.790740, 0.247032,
		40.177986, 33.961281, 51.610806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683151, 33.847557, 50.880108>,  <40.570053, 33.407764, 51.437885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683151, 33.847557, 50.880108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547836, 34.111660, 51.148323>,  <40.466648, 34.270123, 51.309254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547836, 34.111660, 51.148323>,  <40.683151, 33.847557, 50.880108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547836, 34.111660, 51.148323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760891, 0.611185, -0.217941,
		-0.553721, 0.436481, -0.709138,
		-0.338288, 0.660255, 0.670540,
		40.446350, 34.309738, 51.349483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873081, 34.526653, 50.664005>,  <40.683151, 33.847557, 50.880108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873081, 34.526653, 50.664005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804249, 34.606503, 51.049862>,  <40.762951, 34.654411, 51.281376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804249, 34.606503, 51.049862>,  <40.873081, 34.526653, 50.664005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804249, 34.606503, 51.049862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855891, 0.515099, 0.046084,
		-0.487687, 0.833560, -0.259498,
		-0.172081, 0.199627, 0.964643,
		40.752625, 34.666389, 51.339256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843529, 35.285271, 50.739296>,  <40.873081, 34.526653, 50.664005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843529, 35.285271, 50.739296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954910, 35.093632, 51.072266>,  <41.021740, 34.978649, 51.272049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954910, 35.093632, 51.072266>,  <40.843529, 35.285271, 50.739296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954910, 35.093632, 51.072266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801889, 0.592991, 0.073053,
		-0.528620, 0.647172, 0.549299,
		0.278451, -0.479094, 0.832427,
		41.038445, 34.949905, 51.321995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385040, 35.642784, 50.921684>,  <40.843529, 35.285271, 50.739296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385040, 35.642784, 50.921684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420345, 35.372456, 51.214390>,  <41.441528, 35.210258, 51.390015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420345, 35.372456, 51.214390>,  <41.385040, 35.642784, 50.921684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420345, 35.372456, 51.214390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974904, 0.209341, 0.075752,
		-0.204383, 0.706712, 0.677337,
		0.088259, -0.675821, 0.731762,
		41.446823, 35.169708, 51.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719364, 35.947536, 51.523079>,  <41.385040, 35.642784, 50.921684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719364, 35.947536, 51.523079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786671, 35.554882, 51.559025>,  <41.827057, 35.319290, 51.580593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786671, 35.554882, 51.559025>,  <41.719364, 35.947536, 51.523079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786671, 35.554882, 51.559025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946285, 0.186395, 0.264200,
		-0.276099, 0.040583, 0.960272,
		0.168268, -0.981636, 0.089866,
		41.837151, 35.260391, 51.585983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166214, 35.946537, 51.992897>,  <41.719364, 35.947536, 51.523079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166214, 35.946537, 51.992897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197273, 35.567039, 51.870346>,  <42.215908, 35.339340, 51.796818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197273, 35.567039, 51.870346>,  <42.166214, 35.946537, 51.992897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197273, 35.567039, 51.870346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952550, -0.020122, 0.303715,
		-0.294312, -0.315418, 0.902160,
		0.077644, -0.948739, -0.306374,
		42.220566, 35.282417, 51.778435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537029, 35.577309, 52.515594>,  <42.166214, 35.946537, 51.992897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537029, 35.577309, 52.515594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581493, 35.348820, 52.190304>,  <42.608173, 35.211727, 51.995129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581493, 35.348820, 52.190304>,  <42.537029, 35.577309, 52.515594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581493, 35.348820, 52.190304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993795, 0.067117, 0.088700,
		0.003914, -0.818044, 0.575142,
		0.111162, -0.571226, -0.813230,
		42.614841, 35.177452, 51.946335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014519, 34.932777, 52.673744>,  <42.537029, 35.577309, 52.515594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014519, 34.932777, 52.673744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009911, 34.986412, 52.277382>,  <43.007145, 35.018593, 52.039566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009911, 34.986412, 52.277382>,  <43.014519, 34.932777, 52.673744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009911, 34.986412, 52.277382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999915, -0.004506, -0.012240,
		-0.006106, -0.990959, -0.134025,
		-0.011525, 0.134089, -0.990902,
		43.006454, 35.026638, 51.980110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515686, 34.403923, 52.449905>,  <43.014519, 34.932777, 52.673744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515686, 34.403923, 52.449905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491386, 34.694702, 52.176304>,  <43.476807, 34.869167, 52.012142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491386, 34.694702, 52.176304>,  <43.515686, 34.403923, 52.449905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491386, 34.694702, 52.176304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993185, -0.024254, -0.113991,
		-0.099455, -0.686268, -0.720517,
		-0.060754, 0.726944, -0.684004,
		43.473160, 34.912785, 51.971104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885807, 34.164719, 51.913288>,  <43.515686, 34.403923, 52.449905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885807, 34.164719, 51.913288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855042, 34.557007, 51.841431>,  <43.836582, 34.792381, 51.798317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855042, 34.557007, 51.841431>,  <43.885807, 34.164719, 51.913288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855042, 34.557007, 51.841431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990866, 0.055173, -0.123047,
		-0.110764, -0.187466, -0.976006,
		-0.076917, 0.980720, -0.179642,
		43.831966, 34.851223, 51.787537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383244, 34.217258, 51.355587>,  <43.885807, 34.164719, 51.913288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383244, 34.217258, 51.355587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317802, 34.576611, 51.518627>,  <44.278538, 34.792221, 51.616451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317802, 34.576611, 51.518627>,  <44.383244, 34.217258, 51.355587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317802, 34.576611, 51.518627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953287, 0.250313, -0.169076,
		-0.253924, 0.360902, -0.897370,
		-0.163603, 0.898384, 0.407603,
		44.268723, 34.846127, 51.640907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744026, 34.639000, 50.969776>,  <44.383244, 34.217258, 51.355587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744026, 34.639000, 50.969776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692284, 34.850441, 51.305359>,  <44.661236, 34.977306, 51.506710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692284, 34.850441, 51.305359>,  <44.744026, 34.639000, 50.969776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692284, 34.850441, 51.305359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974639, 0.223585, 0.009408,
		-0.182605, 0.818897, -0.544117,
		-0.129361, 0.528599, 0.838957,
		44.653477, 35.009022, 51.557045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928291, 35.337307, 50.813202>,  <44.744026, 34.639000, 50.969776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928291, 35.337307, 50.813202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954327, 35.316639, 51.211819>,  <44.969948, 35.304237, 51.450989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954327, 35.316639, 51.211819>,  <44.928291, 35.337307, 50.813202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954327, 35.316639, 51.211819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935491, 0.350735, -0.042912,
		-0.347304, 0.935048, 0.071167,
		0.065085, -0.051672, 0.996541,
		44.973854, 35.301136, 51.510780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346786, 35.939449, 51.099705>,  <44.928291, 35.337307, 50.813202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346786, 35.939449, 51.099705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358662, 35.737793, 51.444950>,  <45.365788, 35.616798, 51.652096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358662, 35.737793, 51.444950>,  <45.346786, 35.939449, 51.099705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358662, 35.737793, 51.444950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942037, 0.302812, 0.144472,
		-0.334195, 0.808795, 0.483905,
		0.029684, -0.504138, 0.863113,
		45.367565, 35.586552, 51.703884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724022, 36.331131, 51.592716>,  <45.346786, 35.939449, 51.099705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724022, 36.331131, 51.592716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748577, 35.951645, 51.716766>,  <45.763309, 35.723953, 51.791199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748577, 35.951645, 51.716766>,  <45.724022, 36.331131, 51.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748577, 35.951645, 51.716766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994806, 0.083435, 0.058310,
		-0.081195, 0.304938, 0.948905,
		0.061391, -0.948710, 0.310129,
		45.766994, 35.667030, 51.809803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970280, 36.318470, 52.281712>,  <45.724022, 36.331131, 51.592716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970280, 36.318470, 52.281712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060600, 35.973892, 52.099754>,  <46.114792, 35.767147, 51.990582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060600, 35.973892, 52.099754>,  <45.970280, 36.318470, 52.281712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060600, 35.973892, 52.099754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972430, 0.171395, 0.158128,
		-0.058253, -0.478057, 0.876395,
		0.225804, -0.861444, -0.454892,
		46.128342, 35.715458, 51.963287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483974, 36.177624, 52.636017>,  <45.970280, 36.318470, 52.281712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483974, 36.177624, 52.636017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508427, 35.936626, 52.317703>,  <46.523098, 35.792030, 52.126717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508427, 35.936626, 52.317703>,  <46.483974, 36.177624, 52.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508427, 35.936626, 52.317703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998025, 0.025382, 0.057453,
		-0.014417, -0.797722, 0.602853,
		0.061133, -0.602491, -0.795781,
		46.526768, 35.755878, 52.078968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902393, 35.627525, 52.854317>,  <46.483974, 36.177624, 52.636017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902393, 35.627525, 52.854317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922543, 35.622787, 52.454853>,  <46.934631, 35.619946, 52.215176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922543, 35.622787, 52.454853>,  <46.902393, 35.627525, 52.854317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922543, 35.622787, 52.454853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998584, 0.017707, 0.050162,
		0.017089, -0.999773, 0.012716,
		0.050376, -0.011841, -0.998660,
		46.937656, 35.619236, 52.155254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518871, 35.196419, 52.728474>,  <46.902393, 35.627525, 52.854317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518871, 35.196419, 52.728474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466827, 35.383114, 52.378567>,  <47.435600, 35.495132, 52.168621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466827, 35.383114, 52.378567>,  <47.518871, 35.196419, 52.728474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466827, 35.383114, 52.378567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973605, -0.106724, -0.201753,
		-0.187525, -0.877931, -0.440535,
		-0.130110, 0.466740, -0.874771,
		47.427795, 35.523136, 52.116135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.808952, 34.761276, 52.139568>,  <47.518871, 35.196419, 52.728474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.808952, 34.761276, 52.139568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801929, 35.137375, 52.003555>,  <47.797718, 35.363033, 51.921947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801929, 35.137375, 52.003555>,  <47.808952, 34.761276, 52.139568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801929, 35.137375, 52.003555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945830, -0.094651, -0.310560,
		-0.324189, -0.327061, -0.887656,
		-0.017554, 0.940251, -0.340029,
		47.796661, 35.419449, 51.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.291691, 34.811234, 51.759998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.397415, 35.054913, 52.059067>,  <24.460850, 35.201122, 52.238506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.397415, 35.054913, 52.059067>,  <24.291691, 34.811234, 51.759998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397415, 35.054913, 52.059067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960027, -0.092132, -0.264309,
		-0.092132, 0.787645, -0.609201,
		0.264309, 0.609201, 0.747673,
		24.476707, 35.237675, 52.283367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686613, 35.357121, 51.496349>,  <24.291691, 34.811234, 51.759998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686613, 35.357121, 51.496349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.786886, 35.327675, 51.882454>,  <24.847050, 35.310005, 52.114117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.786886, 35.327675, 51.882454>,  <24.686613, 35.357121, 51.496349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786886, 35.327675, 51.882454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963344, -0.079422, -0.256243,
		0.095528, 0.994119, 0.051009,
		0.250684, -0.073618, 0.965266,
		24.862091, 35.305588, 52.172035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180752, 35.864143, 51.482388>,  <24.686613, 35.357121, 51.496349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180752, 35.864143, 51.482388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.250870, 35.647728, 51.811398>,  <25.292940, 35.517879, 52.008804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.250870, 35.647728, 51.811398>,  <25.180752, 35.864143, 51.482388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250870, 35.647728, 51.811398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973882, -0.027167, -0.225422,
		0.144307, 0.840561, 0.522142,
		0.175296, -0.541035, 0.822528,
		25.303459, 35.485416, 52.058155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663719, 36.174911, 51.791641>,  <25.180752, 35.864143, 51.482388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663719, 36.174911, 51.791641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.679552, 35.803028, 51.938103>,  <25.689053, 35.579899, 52.025978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.679552, 35.803028, 51.938103>,  <25.663719, 36.174911, 51.791641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679552, 35.803028, 51.938103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994317, 0.000405, -0.106460,
		0.098829, 0.368287, 0.924445,
		0.039582, -0.929712, 0.366154,
		25.691427, 35.524113, 52.047951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100748, 36.192513, 52.285084>,  <25.663719, 36.174911, 51.791641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100748, 36.192513, 52.285084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.100412, 35.819244, 52.141315>,  <26.100212, 35.595284, 52.055054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.100412, 35.819244, 52.141315>,  <26.100748, 36.192513, 52.285084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100412, 35.819244, 52.141315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972363, 0.083155, -0.218166,
		0.233475, -0.349670, 0.907315,
		-0.000838, -0.933175, -0.359421,
		26.100161, 35.539291, 52.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795132, 35.882320, 52.574089>,  <26.100748, 36.192513, 52.285084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795132, 35.882320, 52.574089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.694645, 35.619518, 52.289768>,  <26.634354, 35.461838, 52.119175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.694645, 35.619518, 52.289768>,  <26.795132, 35.882320, 52.574089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694645, 35.619518, 52.289768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966958, -0.203268, -0.153866,
		-0.043392, -0.725966, 0.686360,
		-0.251216, -0.657005, -0.710799,
		26.619280, 35.422417, 52.076530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344128, 35.391949, 52.538803>,  <26.795132, 35.882320, 52.574089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344128, 35.391949, 52.538803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.173595, 35.327415, 52.182777>,  <27.071276, 35.288696, 51.969162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.173595, 35.327415, 52.182777>,  <27.344128, 35.391949, 52.538803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173595, 35.327415, 52.182777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892259, -0.236771, -0.384465,
		-0.148716, -0.958078, 0.244890,
		-0.426330, -0.161329, -0.890065,
		27.045696, 35.279018, 51.915756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573683, 34.760498, 52.384712>,  <27.344128, 35.391949, 52.538803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573683, 34.760498, 52.384712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.468269, 34.938324, 52.042271>,  <27.405022, 35.045017, 51.836807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.468269, 34.938324, 52.042271>,  <27.573683, 34.760498, 52.384712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468269, 34.938324, 52.042271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819590, -0.364859, -0.441758,
		-0.508746, -0.818073, -0.268205,
		-0.263534, 0.444561, -0.856105,
		27.389210, 35.071693, 51.785439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802353, 34.255867, 51.898251>,  <27.573683, 34.760498, 52.384712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802353, 34.255867, 51.898251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.728804, 34.592056, 51.694370>,  <27.684673, 34.793770, 51.572041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.728804, 34.592056, 51.694370>,  <27.802353, 34.255867, 51.898251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728804, 34.592056, 51.694370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692526, -0.257226, -0.673975,
		-0.697566, -0.476910, -0.534750,
		-0.183874, 0.840470, -0.509705,
		27.673641, 34.844196, 51.541458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770491, 34.125603, 51.200451>,  <27.802353, 34.255867, 51.898251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770491, 34.125603, 51.200451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.868116, 34.513504, 51.202148>,  <27.926693, 34.746243, 51.203167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.868116, 34.513504, 51.202148>,  <27.770491, 34.125603, 51.200451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868116, 34.513504, 51.202148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855363, -0.213209, -0.472119,
		-0.456932, 0.118860, -0.881525,
		0.244065, 0.969750, 0.004246,
		27.941336, 34.804428, 51.203423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066681, 34.295185, 50.450722>,  <27.770491, 34.125603, 51.200451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066681, 34.295185, 50.450722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.160440, 34.572006, 50.723816>,  <28.216696, 34.738098, 50.887672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.160440, 34.572006, 50.723816>,  <28.066681, 34.295185, 50.450722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160440, 34.572006, 50.723816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915385, 0.079330, -0.394687,
		-0.327304, 0.717479, -0.614896,
		0.234400, 0.692048, 0.682734,
		28.230761, 34.779621, 50.928635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351824, 34.902649, 50.076267>,  <28.066681, 34.295185, 50.450722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351824, 34.902649, 50.076267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490383, 34.872017, 50.450249>,  <28.573519, 34.853638, 50.674637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490383, 34.872017, 50.450249>,  <28.351824, 34.902649, 50.076267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490383, 34.872017, 50.450249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929306, -0.108041, -0.353154,
		0.128057, 0.991193, 0.033739,
		0.346398, -0.076578, 0.934957,
		28.594303, 34.849045, 50.730736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024769, 35.033234, 49.993084>,  <28.351824, 34.902649, 50.076267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024769, 35.033234, 49.993084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.061811, 34.929256, 50.377552>,  <29.084038, 34.866871, 50.608234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.061811, 34.929256, 50.377552>,  <29.024769, 35.033234, 49.993084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061811, 34.929256, 50.377552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981749, -0.137207, -0.131696,
		0.166113, 0.955827, 0.242491,
		0.092607, -0.259942, 0.961173,
		29.089594, 34.851273, 50.665905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516319, 35.497868, 50.295948>,  <29.024769, 35.033234, 49.993084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516319, 35.497868, 50.295948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.497278, 35.175285, 50.531700>,  <29.485853, 34.981735, 50.673149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.497278, 35.175285, 50.531700>,  <29.516319, 35.497868, 50.295948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497278, 35.175285, 50.531700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995272, -0.088307, -0.040446,
		0.084664, 0.584666, 0.806844,
		-0.047603, -0.806454, 0.589378,
		29.482998, 34.933350, 50.708515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048397, 35.603317, 50.712852>,  <29.516319, 35.497868, 50.295948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048397, 35.603317, 50.712852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.978321, 35.211899, 50.756207>,  <29.936275, 34.977047, 50.782219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.978321, 35.211899, 50.756207>,  <30.048397, 35.603317, 50.712852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978321, 35.211899, 50.756207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980946, -0.182883, -0.065574,
		0.083989, 0.094832, 0.991944,
		-0.175191, -0.978550, 0.108386,
		29.925764, 34.918335, 50.788723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454760, 35.437374, 51.229591>,  <30.048397, 35.603317, 50.712852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454760, 35.437374, 51.229591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.376907, 35.087135, 51.052750>,  <30.330196, 34.876991, 50.946644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.376907, 35.087135, 51.052750>,  <30.454760, 35.437374, 51.229591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376907, 35.087135, 51.052750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973569, -0.117528, -0.195832,
		0.119510, -0.468534, 0.875325,
		-0.194630, -0.875593, -0.442104,
		30.318518, 34.824459, 50.920120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971283, 35.055737, 51.360832>,  <30.454760, 35.437374, 51.229591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971283, 35.055737, 51.360832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.811216, 34.837639, 51.066193>,  <30.715176, 34.706779, 50.889408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.811216, 34.837639, 51.066193>,  <30.971283, 35.055737, 51.360832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811216, 34.837639, 51.066193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913733, -0.299130, -0.274979,
		-0.070409, -0.783091, 0.617908,
		-0.400169, -0.545242, -0.736597,
		30.691166, 34.674065, 50.845215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272795, 34.418118, 51.477680>,  <30.971283, 35.055737, 51.360832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272795, 34.418118, 51.477680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.149466, 34.363541, 51.101101>,  <31.075468, 34.330795, 50.875153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.149466, 34.363541, 51.101101>,  <31.272795, 34.418118, 51.477680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149466, 34.363541, 51.101101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920276, -0.293393, -0.258869,
		-0.240892, -0.946205, 0.216027,
		-0.308324, -0.136445, -0.941445,
		31.056969, 34.322609, 50.818668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566042, 33.760639, 51.173523>,  <31.272795, 34.418118, 51.477680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566042, 33.760639, 51.173523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.486477, 33.994560, 50.858959>,  <31.438738, 34.134914, 50.670219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.486477, 33.994560, 50.858959>,  <31.566042, 33.760639, 51.173523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486477, 33.994560, 50.858959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913695, -0.179516, -0.364604,
		-0.354394, -0.791063, -0.498623,
		-0.198914, 0.584802, -0.786409,
		31.426804, 34.170002, 50.623035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838398, 33.397087, 50.612820>,  <31.566042, 33.760639, 51.173523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838398, 33.397087, 50.612820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.830917, 33.778000, 50.490959>,  <31.826429, 34.006546, 50.417843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.830917, 33.778000, 50.490959>,  <31.838398, 33.397087, 50.612820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830917, 33.778000, 50.490959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991090, -0.022533, -0.131270,
		-0.131870, -0.304390, -0.943375,
		-0.018701, 0.952281, -0.304650,
		31.825308, 34.063683, 50.399563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210899, 33.505608, 49.981594>,  <31.838398, 33.397087, 50.612820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210899, 33.505608, 49.981594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.209885, 33.853020, 50.179844>,  <32.209274, 34.061466, 50.298794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.209885, 33.853020, 50.179844>,  <32.210899, 33.505608, 49.981594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209885, 33.853020, 50.179844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998615, -0.023840, 0.046893,
		0.052544, 0.495058, -0.867269,
		-0.002540, 0.868533, 0.495625,
		32.209122, 34.113579, 50.328533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.948339, 34.554966, 35.023788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.042686, 34.911552, 34.869049>,  <24.099295, 35.125504, 34.776207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.042686, 34.911552, 34.869049>,  <23.948339, 34.554966, 35.023788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.042686, 34.911552, 34.869049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965658, -0.170375, 0.196158,
		0.108959, -0.419830, -0.901039,
		0.235867, 0.891468, -0.386848,
		24.113447, 35.178993, 34.752995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447054, 34.516102, 34.526409>,  <23.948339, 34.554966, 35.023788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447054, 34.516102, 34.526409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.466776, 34.873325, 34.705303>,  <24.478609, 35.087658, 34.812641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.466776, 34.873325, 34.705303>,  <24.447054, 34.516102, 34.526409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466776, 34.873325, 34.705303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954762, -0.173616, 0.241426,
		0.293254, 0.415104, -0.861214,
		0.049304, 0.893054, 0.447240,
		24.481567, 35.141243, 34.839474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006470, 34.973946, 34.258125>,  <24.447054, 34.516102, 34.526409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006470, 34.973946, 34.258125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.945402, 35.057709, 34.644459>,  <24.908762, 35.107967, 34.876259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.945402, 35.057709, 34.644459>,  <25.006470, 34.973946, 34.258125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945402, 35.057709, 34.644459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967924, -0.165638, 0.188911,
		0.199539, 0.963698, -0.177400,
		-0.152669, 0.209405, 0.965837,
		24.899601, 35.120529, 34.934212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606010, 35.290478, 34.415802>,  <25.006470, 34.973946, 34.258125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606010, 35.290478, 34.415802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.455038, 35.223408, 34.780094>,  <25.364454, 35.183167, 34.998669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.455038, 35.223408, 34.780094>,  <25.606010, 35.290478, 34.415802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455038, 35.223408, 34.780094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896987, -0.310597, 0.314552,
		0.230126, 0.935635, 0.267635,
		-0.377433, -0.167678, 0.910730,
		25.341808, 35.173103, 35.053314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945982, 35.749046, 34.932278>,  <25.606010, 35.290478, 34.415802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945982, 35.749046, 34.932278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.839632, 35.382782, 35.052864>,  <25.775822, 35.163025, 35.125217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.839632, 35.382782, 35.052864>,  <25.945982, 35.749046, 34.932278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839632, 35.382782, 35.052864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953089, -0.202744, 0.224758,
		-0.144681, 0.347081, 0.926608,
		-0.265873, -0.915658, 0.301466,
		25.759871, 35.108086, 35.143303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255890, 35.645607, 35.566833>,  <25.945982, 35.749046, 34.932278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255890, 35.645607, 35.566833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.170591, 35.280643, 35.427101>,  <26.119411, 35.061665, 35.343262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.170591, 35.280643, 35.427101>,  <26.255890, 35.645607, 35.566833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170591, 35.280643, 35.427101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959615, -0.262754, 0.100494,
		-0.183480, -0.313794, 0.931594,
		-0.213246, -0.912411, -0.349332,
		26.106617, 35.006920, 35.322300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335976, 35.090504, 36.078526>,  <26.255890, 35.645607, 35.566833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335976, 35.090504, 36.078526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.396671, 34.931583, 35.716503>,  <26.433088, 34.836231, 35.499290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.396671, 34.931583, 35.716503>,  <26.335976, 35.090504, 36.078526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396671, 34.931583, 35.716503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964353, -0.141324, 0.223722,
		-0.216791, -0.906739, 0.361697,
		0.151741, -0.397305, -0.905054,
		26.442194, 34.812393, 35.444988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944696, 34.807442, 36.599133>,  <26.335976, 35.090504, 36.078526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944696, 34.807442, 36.599133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.895004, 35.070370, 36.896454>,  <26.865189, 35.228127, 37.074848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.895004, 35.070370, 36.896454>,  <26.944696, 34.807442, 36.599133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895004, 35.070370, 36.896454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848963, -0.317364, 0.422543,
		0.513643, 0.683529, -0.518612,
		-0.124232, 0.657319, 0.743302,
		26.857735, 35.267567, 37.119446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547789, 35.338116, 36.685211>,  <26.944696, 34.807442, 36.599133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547789, 35.338116, 36.685211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.359814, 35.293602, 37.035473>,  <27.247028, 35.266891, 37.245628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.359814, 35.293602, 37.035473>,  <27.547789, 35.338116, 36.685211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359814, 35.293602, 37.035473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882654, -0.069227, 0.464897,
		0.008883, 0.991374, 0.130760,
		-0.469939, -0.111286, 0.875656,
		27.218832, 35.260216, 37.298168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668322, 35.826786, 37.199600>,  <27.547789, 35.338116, 36.685211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668322, 35.826786, 37.199600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595438, 35.471268, 37.367809>,  <27.551708, 35.257957, 37.468735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595438, 35.471268, 37.367809>,  <27.668322, 35.826786, 37.199600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595438, 35.471268, 37.367809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944724, -0.039691, 0.325455,
		-0.272572, 0.456578, 0.846901,
		-0.182210, -0.888798, 0.420521,
		27.540775, 35.204628, 37.493965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787355, 35.696930, 37.962292>,  <27.668322, 35.826786, 37.199600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787355, 35.696930, 37.962292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.833220, 35.346951, 37.774113>,  <27.860737, 35.136963, 37.661205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.833220, 35.346951, 37.774113>,  <27.787355, 35.696930, 37.962292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833220, 35.346951, 37.774113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935932, -0.063601, 0.346390,
		-0.332994, -0.480026, 0.811597,
		0.114658, -0.874946, -0.470451,
		27.867617, 35.084465, 37.632977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026758, 35.092632, 38.436497>,  <27.787355, 35.696930, 37.962292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026758, 35.092632, 38.436497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.189503, 35.029175, 38.076653>,  <28.287149, 34.991100, 37.860744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.189503, 35.029175, 38.076653>,  <28.026758, 35.092632, 38.436497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189503, 35.029175, 38.076653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898561, -0.107815, 0.425400,
		-0.164477, -0.981432, 0.098683,
		0.406861, -0.158641, -0.899609,
		28.311562, 34.981583, 37.806770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494455, 34.604454, 38.599895>,  <28.026758, 35.092632, 38.436497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494455, 34.604454, 38.599895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641499, 34.782921, 38.273510>,  <28.729725, 34.890003, 38.077679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641499, 34.782921, 38.273510>,  <28.494455, 34.604454, 38.599895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641499, 34.782921, 38.273510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928015, -0.118988, 0.353029,
		0.060422, -0.887002, -0.457795,
		0.367609, 0.446172, -0.815962,
		28.751781, 34.916771, 38.028721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055283, 34.168438, 38.245037>,  <28.494455, 34.604454, 38.599895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055283, 34.168438, 38.245037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077049, 34.567421, 38.226593>,  <29.090109, 34.806808, 38.215527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077049, 34.567421, 38.226593>,  <29.055283, 34.168438, 38.245037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077049, 34.567421, 38.226593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918085, -0.031821, 0.395105,
		0.392631, -0.063837, -0.917478,
		0.054417, 0.997453, -0.046114,
		29.093374, 34.866657, 38.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680477, 34.546028, 37.972427>,  <29.055283, 34.168438, 38.245037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680477, 34.546028, 37.972427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568878, 34.705196, 38.322014>,  <29.501919, 34.800697, 38.531765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568878, 34.705196, 38.322014>,  <29.680477, 34.546028, 37.972427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568878, 34.705196, 38.322014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959582, 0.080518, 0.269665,
		0.036935, 0.913881, -0.404300,
		-0.278995, 0.397919, 0.873969,
		29.485180, 34.824574, 38.584206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371035, 34.619827, 38.292534>,  <29.680477, 34.546028, 37.972427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371035, 34.619827, 38.292534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097904, 34.777863, 38.538349>,  <29.934027, 34.872684, 38.685837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097904, 34.777863, 38.538349>,  <30.371035, 34.619827, 38.292534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097904, 34.777863, 38.538349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728413, 0.303406, 0.614296,
		0.056247, 0.867093, -0.494961,
		-0.682826, 0.395088, 0.614536,
		29.893057, 34.896389, 38.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737846, 35.076237, 38.650860>,  <30.371035, 34.619827, 38.292534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737846, 35.076237, 38.650860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377136, 35.106712, 38.821033>,  <30.160709, 35.125000, 38.923138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377136, 35.106712, 38.821033>,  <30.737846, 35.076237, 38.650860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377136, 35.106712, 38.821033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402927, 0.504332, 0.763740,
		-0.156371, 0.860142, -0.485494,
		-0.901775, 0.076191, 0.425437,
		30.106604, 35.129570, 38.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553984, 35.723320, 38.780338>,  <30.737846, 35.076237, 38.650860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553984, 35.723320, 38.780338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.392235, 35.469254, 39.043564>,  <30.295185, 35.316814, 39.201500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.392235, 35.469254, 39.043564>,  <30.553984, 35.723320, 38.780338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392235, 35.469254, 39.043564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505905, 0.444079, 0.739496,
		-0.761933, 0.631951, 0.141758,
		-0.404374, -0.635163, 0.658065,
		30.270924, 35.278706, 39.240982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075565, 36.138851, 39.380909>,  <30.553984, 35.723320, 38.780338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075565, 36.138851, 39.380909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231346, 35.797882, 39.520454>,  <30.324814, 35.593300, 39.604183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231346, 35.797882, 39.520454>,  <30.075565, 36.138851, 39.380909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231346, 35.797882, 39.520454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656072, 0.522585, 0.544494,
		-0.646450, 0.016826, 0.762771,
		0.389451, -0.852421, 0.348865,
		30.348181, 35.542156, 39.625114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210764, 36.156612, 40.172924>,  <30.075565, 36.138851, 39.380909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210764, 36.156612, 40.172924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450769, 35.888596, 39.998096>,  <30.594772, 35.727787, 39.893200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450769, 35.888596, 39.998096>,  <30.210764, 36.156612, 40.172924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450769, 35.888596, 39.998096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790727, 0.413837, 0.451098,
		-0.121382, -0.616264, 0.778129,
		0.600014, -0.670043, -0.437065,
		30.630774, 35.687584, 39.866978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500973, 35.653767, 40.584194>,  <30.210764, 36.156612, 40.172924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500973, 35.653767, 40.584194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848787, 35.458099, 40.557011>,  <31.057476, 35.340698, 40.540699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848787, 35.458099, 40.557011>,  <30.500973, 35.653767, 40.584194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848787, 35.458099, 40.557011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475763, 0.792768, 0.381009,
		-0.132502, -0.363634, 0.922070,
		0.869536, -0.489171, -0.067960,
		31.109648, 35.311348, 40.536621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825766, 35.781715, 41.276245>,  <30.500973, 35.653767, 40.584194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825766, 35.781715, 41.276245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088209, 35.711311, 40.982704>,  <31.245676, 35.669067, 40.806580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088209, 35.711311, 40.982704>,  <30.825766, 35.781715, 41.276245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088209, 35.711311, 40.982704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544508, 0.783708, 0.298853,
		0.522525, -0.595670, 0.610037,
		0.656108, -0.176011, -0.733854,
		31.285042, 35.658508, 40.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503130, 35.654739, 41.520721>,  <30.825766, 35.781715, 41.276245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503130, 35.654739, 41.520721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453264, 35.821247, 41.160458>,  <31.423346, 35.921150, 40.944302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453264, 35.821247, 41.160458>,  <31.503130, 35.654739, 41.520721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453264, 35.821247, 41.160458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466152, 0.825890, 0.317187,
		0.875877, -0.380302, -0.297001,
		-0.124663, 0.416265, -0.900657,
		31.415865, 35.946125, 40.890259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124298, 35.829781, 41.229836>,  <31.503130, 35.654739, 41.520721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124298, 35.829781, 41.229836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827299, 36.075497, 41.122993>,  <31.649099, 36.222927, 41.058887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827299, 36.075497, 41.122993>,  <32.124298, 35.829781, 41.229836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827299, 36.075497, 41.122993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594684, 0.788037, 0.159213,
		0.308289, -0.040625, -0.950425,
		-0.742502, 0.614286, -0.267102,
		31.604549, 36.259781, 41.042862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260273, 35.032959, 41.412140>,  <32.124298, 35.829781, 41.229836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260273, 35.032959, 41.412140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479149, 35.367733, 41.416401>,  <32.610474, 35.568600, 41.418957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479149, 35.367733, 41.416401>,  <32.260273, 35.032959, 41.412140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479149, 35.367733, 41.416401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565057, -0.378762, 0.732973,
		0.617489, -0.395058, -0.680174,
		0.547192, 0.836940, 0.010651,
		32.643307, 35.618816, 41.419598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965420, 34.966812, 41.511269>,  <32.260273, 35.032959, 41.412140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965420, 34.966812, 41.511269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.919239, 35.328892, 41.674870>,  <32.891529, 35.546139, 41.773029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.919239, 35.328892, 41.674870>,  <32.965420, 34.966812, 41.511269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919239, 35.328892, 41.674870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450263, -0.319328, 0.833842,
		0.885401, 0.280425, -0.370712,
		-0.115452, 0.905203, 0.408998,
		32.884605, 35.600452, 41.797569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641575, 35.320004, 41.846455>,  <32.965420, 34.966812, 41.511269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641575, 35.320004, 41.846455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308384, 35.422123, 42.042809>,  <33.108467, 35.483395, 42.160622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308384, 35.422123, 42.042809>,  <33.641575, 35.320004, 41.846455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308384, 35.422123, 42.042809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446930, -0.212562, 0.868948,
		0.326183, 0.943208, 0.062960,
		-0.832982, 0.255297, 0.490882,
		33.058491, 35.498711, 42.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828785, 35.896069, 42.413376>,  <33.641575, 35.320004, 41.846455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828785, 35.896069, 42.413376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497719, 35.697483, 42.518059>,  <33.299080, 35.578331, 42.580868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.497719, 35.697483, 42.518059>,  <33.828785, 35.896069, 42.413376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497719, 35.697483, 42.518059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335083, -0.063070, 0.940075,
		-0.450210, 0.865762, 0.218559,
		-0.827666, -0.496466, 0.261708,
		33.249420, 35.548542, 42.596573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701324, 35.484112, 43.041908>,  <33.828785, 35.896069, 42.413376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701324, 35.484112, 43.041908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727970, 35.782578, 43.306877>,  <33.743958, 35.961655, 43.465858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727970, 35.782578, 43.306877>,  <33.701324, 35.484112, 43.041908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727970, 35.782578, 43.306877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809109, -0.348099, 0.473465,
		0.583870, -0.567514, 0.580537,
		0.066614, 0.746160, 0.662426,
		33.747955, 36.006424, 43.505604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810696, 35.169197, 43.762844>,  <33.701324, 35.484112, 43.041908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810696, 35.169197, 43.762844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626484, 35.524132, 43.772259>,  <33.515957, 35.737091, 43.777908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626484, 35.524132, 43.772259>,  <33.810696, 35.169197, 43.762844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626484, 35.524132, 43.772259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663743, -0.361848, 0.654607,
		0.589372, 0.285842, 0.755603,
		-0.460528, 0.887333, 0.023538,
		33.488327, 35.790333, 43.779320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732376, 35.289654, 44.474396>,  <33.810696, 35.169197, 43.762844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732376, 35.289654, 44.474396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455101, 35.456482, 44.239262>,  <33.288734, 35.556580, 44.098183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455101, 35.456482, 44.239262>,  <33.732376, 35.289654, 44.474396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455101, 35.456482, 44.239262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713741, -0.283684, 0.640388,
		0.100327, 0.863468, 0.494325,
		-0.693187, 0.417068, -0.587832,
		33.247147, 35.581604, 44.062912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987850, 35.373428, 45.084641>,  <33.732376, 35.289654, 44.474396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987850, 35.373428, 45.084641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174053, 35.088821, 45.295181>,  <34.285774, 34.918056, 45.421505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174053, 35.088821, 45.295181>,  <33.987850, 35.373428, 45.084641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174053, 35.088821, 45.295181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498742, 0.280404, 0.820140,
		-0.731138, -0.644291, -0.224337,
		0.465504, -0.711521, 0.526349,
		34.313705, 34.875366, 45.453087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534481, 35.086826, 45.551891>,  <33.987850, 35.373428, 45.084641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534481, 35.086826, 45.551891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902176, 35.052692, 45.705627>,  <34.122791, 35.032211, 45.797871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902176, 35.052692, 45.705627>,  <33.534481, 35.086826, 45.551891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902176, 35.052692, 45.705627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316855, 0.419075, 0.850870,
		-0.233676, -0.903933, 0.358192,
		0.919238, -0.085333, 0.384343,
		34.177948, 35.027092, 45.820930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620720, 34.686634, 46.167046>,  <33.534481, 35.086826, 45.551891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620720, 34.686634, 46.167046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854336, 35.009541, 46.133041>,  <33.994503, 35.203285, 46.112637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854336, 35.009541, 46.133041>,  <33.620720, 34.686634, 46.167046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854336, 35.009541, 46.133041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363835, 0.353961, 0.861589,
		0.725621, -0.472267, 0.500437,
		0.584036, 0.807264, -0.085015,
		34.029545, 35.251720, 46.107536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171120, 34.724312, 46.730457>,  <33.620720, 34.686634, 46.167046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171120, 34.724312, 46.730457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042137, 35.065495, 46.566269>,  <33.964748, 35.270203, 46.467754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042137, 35.065495, 46.566269>,  <34.171120, 34.724312, 46.730457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042137, 35.065495, 46.566269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463612, 0.235756, 0.854098,
		0.825280, 0.465708, 0.319420,
		-0.322455, 0.852957, -0.410472,
		33.945400, 35.321381, 46.443127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552494, 35.421463, 47.028934>,  <34.171120, 34.724312, 46.730457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552494, 35.421463, 47.028934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163994, 35.390198, 46.938988>,  <33.930893, 35.371437, 46.885021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.163994, 35.390198, 46.938988>,  <34.552494, 35.421463, 47.028934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163994, 35.390198, 46.938988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218473, -0.082550, 0.972345,
		-0.094566, 0.993517, 0.063099,
		-0.971250, -0.078165, -0.224863,
		33.872620, 35.366749, 46.871529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124104, 36.074741, 47.285110>,  <34.552494, 35.421463, 47.028934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124104, 36.074741, 47.285110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935635, 35.721924, 47.284637>,  <33.822556, 35.510235, 47.284355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935635, 35.721924, 47.284637>,  <34.124104, 36.074741, 47.285110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935635, 35.721924, 47.284637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117948, 0.061680, 0.991103,
		-0.874122, 0.467115, -0.133096,
		-0.471169, -0.882042, -0.001180,
		33.794285, 35.457310, 47.284283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548409, 36.242825, 47.716827>,  <34.124104, 36.074741, 47.285110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548409, 36.242825, 47.716827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660713, 35.861557, 47.671852>,  <33.728096, 35.632797, 47.644867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660713, 35.861557, 47.671852>,  <33.548409, 36.242825, 47.716827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660713, 35.861557, 47.671852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019846, -0.122890, 0.992222,
		-0.959573, -0.276343, -0.053419,
		0.280759, -0.953169, -0.112438,
		33.744942, 35.575607, 47.638123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421104, 35.783871, 48.361866>,  <33.548409, 36.242825, 47.716827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421104, 35.783871, 48.361866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674805, 35.540222, 48.171421>,  <33.827026, 35.394032, 48.057152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674805, 35.540222, 48.171421>,  <33.421104, 35.783871, 48.361866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674805, 35.540222, 48.171421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329787, -0.343836, 0.879214,
		-0.699257, -0.714663, -0.017198,
		0.634256, -0.609125, -0.476116,
		33.865082, 35.357483, 48.028587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401867, 35.014572, 48.612812>,  <33.421104, 35.783871, 48.361866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401867, 35.014572, 48.612812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764645, 35.111481, 48.474964>,  <33.982311, 35.169628, 48.392258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764645, 35.111481, 48.474964>,  <33.401867, 35.014572, 48.612812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764645, 35.111481, 48.474964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392910, -0.191482, 0.899420,
		0.151918, -0.951125, -0.268855,
		0.906942, 0.242274, -0.344617,
		34.036728, 35.184162, 48.371578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746029, 34.886211, 49.072922>,  <33.401867, 35.014572, 48.612812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746029, 34.886211, 49.072922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806076, 34.830288, 49.464417>,  <32.842102, 34.796734, 49.699314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806076, 34.830288, 49.464417>,  <32.746029, 34.886211, 49.072922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806076, 34.830288, 49.464417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988612, 0.010607, -0.150115,
		0.010607, 0.990122, 0.139810,
		0.150115, -0.139810, 0.978733,
		32.851112, 34.788345, 49.758038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138432, 35.502705, 49.386383>,  <32.746029, 34.886211, 49.072922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138432, 35.502705, 49.386383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.221500, 35.187527, 49.618252>,  <33.271343, 34.998421, 49.757374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.221500, 35.187527, 49.618252>,  <33.138432, 35.502705, 49.386383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221500, 35.187527, 49.618252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976094, 0.205766, -0.070003,
		-0.064118, 0.580352, 0.811838,
		0.207675, -0.787942, 0.579671,
		33.283802, 34.951145, 49.792152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866058, 35.653221, 49.758381>,  <33.138432, 35.502705, 49.386383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866058, 35.653221, 49.758381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784870, 35.262684, 49.788193>,  <33.736156, 35.028362, 49.806080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784870, 35.262684, 49.788193>,  <33.866058, 35.653221, 49.758381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784870, 35.262684, 49.788193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974719, -0.194193, 0.110513,
		-0.093426, 0.095073, 0.991077,
		-0.202967, -0.976345, 0.074527,
		33.723980, 34.969780, 49.810551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300835, 35.476192, 50.279663>,  <33.866058, 35.653221, 49.758381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300835, 35.476192, 50.279663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222271, 35.178673, 50.024105>,  <34.175133, 35.000160, 49.870770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222271, 35.178673, 50.024105>,  <34.300835, 35.476192, 50.279663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222271, 35.178673, 50.024105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979845, -0.173089, -0.099722,
		-0.036413, -0.645604, 0.762804,
		-0.196414, -0.743798, -0.638894,
		34.163345, 34.955532, 49.832436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911835, 35.208611, 50.285992>,  <34.300835, 35.476192, 50.279663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911835, 35.208611, 50.285992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742313, 34.996357, 49.992378>,  <34.640598, 34.869003, 49.816208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742313, 34.996357, 49.992378>,  <34.911835, 35.208611, 50.285992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742313, 34.996357, 49.992378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905743, -0.244591, -0.346128,
		0.004130, -0.811540, 0.584282,
		-0.423807, -0.530639, -0.734037,
		34.615170, 34.837166, 49.772167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184139, 34.445541, 50.410957>,  <34.911835, 35.208611, 50.285992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184139, 34.445541, 50.410957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.078331, 34.506767, 50.030094>,  <35.014847, 34.543503, 49.801579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.078331, 34.506767, 50.030094>,  <35.184139, 34.445541, 50.410957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078331, 34.506767, 50.030094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875182, -0.376610, -0.303681,
		-0.405074, -0.913639, -0.034337,
		-0.264523, 0.153064, -0.952155,
		34.998974, 34.552685, 49.744446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345608, 33.908409, 50.001629>,  <35.184139, 34.445541, 50.410957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345608, 33.908409, 50.001629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344872, 34.179340, 49.707355>,  <35.344429, 34.341900, 49.530792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344872, 34.179340, 49.707355>,  <35.345608, 33.908409, 50.001629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344872, 34.179340, 49.707355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842709, -0.395015, -0.365792,
		-0.538366, -0.620637, -0.570063,
		-0.001840, 0.677328, -0.735679,
		35.344318, 34.382538, 49.486652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805885, 33.690758, 49.476639>,  <35.345608, 33.908409, 50.001629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805885, 33.690758, 49.476639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731140, 34.062897, 49.350437>,  <35.686295, 34.286179, 49.274715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731140, 34.062897, 49.350437>,  <35.805885, 33.690758, 49.476639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731140, 34.062897, 49.350437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875768, 0.012244, -0.482577,
		-0.445099, -0.366485, -0.817053,
		-0.186862, 0.930343, -0.315506,
		35.675083, 34.341999, 49.255787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944633, 33.662605, 48.749043>,  <35.805885, 33.690758, 49.476639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944633, 33.662605, 48.749043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965496, 34.048485, 48.852291>,  <35.978012, 34.280014, 48.914242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965496, 34.048485, 48.852291>,  <35.944633, 33.662605, 48.749043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965496, 34.048485, 48.852291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896559, 0.068614, -0.437578,
		-0.439844, 0.254246, -0.861334,
		0.052153, 0.964703, 0.258126,
		35.981140, 34.337894, 48.929729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261715, 33.952057, 48.169949>,  <35.944633, 33.662605, 48.749043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261715, 33.952057, 48.169949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290375, 34.188290, 48.491467>,  <36.307571, 34.330029, 48.684376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290375, 34.188290, 48.491467>,  <36.261715, 33.952057, 48.169949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290375, 34.188290, 48.491467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995279, -0.095232, -0.018744,
		0.065477, 0.801338, -0.594617,
		0.071647, 0.590583, 0.803790,
		36.311871, 34.365463, 48.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777889, 34.333817, 48.006706>,  <36.261715, 33.952057, 48.169949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777889, 34.333817, 48.006706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765499, 34.374115, 48.404476>,  <36.758064, 34.398296, 48.643139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765499, 34.374115, 48.404476>,  <36.777889, 34.333817, 48.006706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765499, 34.374115, 48.404476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999440, 0.015723, 0.029537,
		-0.012660, 0.994788, -0.101180,
		-0.030973, 0.100749, 0.994430,
		36.756207, 34.404339, 48.702805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385895, 34.715168, 48.165207>,  <36.777889, 34.333817, 48.006706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385895, 34.715168, 48.165207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265564, 34.528126, 48.497677>,  <37.193367, 34.415901, 48.697159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265564, 34.528126, 48.497677>,  <37.385895, 34.715168, 48.165207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265564, 34.528126, 48.497677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952898, -0.182631, 0.242138,
		0.038572, 0.864863, 0.500523,
		-0.300828, -0.467608, 0.831171,
		37.175316, 34.387844, 48.747028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826290, 34.968761, 48.496662>,  <37.385895, 34.715168, 48.165207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826290, 34.968761, 48.496662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.704346, 34.659149, 48.718632>,  <37.631180, 34.473381, 48.851814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.704346, 34.659149, 48.718632>,  <37.826290, 34.968761, 48.496662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704346, 34.659149, 48.718632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950640, -0.211917, 0.226660,
		-0.057844, 0.596631, 0.800429,
		-0.304857, -0.774030, 0.554923,
		37.612888, 34.426941, 48.885109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995430, 35.049801, 49.287495>,  <37.826290, 34.968761, 48.496662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995430, 35.049801, 49.287495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018532, 34.677876, 49.142101>,  <38.032394, 34.454720, 49.054867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018532, 34.677876, 49.142101>,  <37.995430, 35.049801, 49.287495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018532, 34.677876, 49.142101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896390, -0.111981, 0.428888,
		-0.439487, -0.350590, 0.827005,
		0.057755, -0.929810, -0.363479,
		38.035858, 34.398933, 49.033058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546185, 34.754009, 49.582569>,  <37.995430, 35.049801, 49.287495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546185, 34.754009, 49.582569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.515999, 34.491028, 49.282688>,  <38.497887, 34.333237, 49.102760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.515999, 34.491028, 49.282688>,  <38.546185, 34.754009, 49.582569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515999, 34.491028, 49.282688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992577, -0.121439, 0.006588,
		-0.095375, -0.743641, 0.661741,
		-0.075462, -0.657458, -0.749703,
		38.493359, 34.293789, 49.057777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875259, 34.211773, 49.840061>,  <38.546185, 34.754009, 49.582569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875259, 34.211773, 49.840061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893795, 34.211868, 49.440491>,  <38.904919, 34.211926, 49.200748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893795, 34.211868, 49.440491>,  <38.875259, 34.211773, 49.840061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893795, 34.211868, 49.440491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991171, -0.124370, 0.045951,
		-0.124226, -0.992236, -0.005999,
		0.046340, 0.000238, -0.998926,
		38.907696, 34.211941, 49.140812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160229, 33.583664, 49.608364>,  <38.875259, 34.211773, 49.840061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160229, 33.583664, 49.608364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232162, 33.865784, 49.334076>,  <39.275322, 34.035057, 49.169502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232162, 33.865784, 49.334076>,  <39.160229, 33.583664, 49.608364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232162, 33.865784, 49.334076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980318, -0.070776, 0.184304,
		0.081458, -0.705366, -0.704147,
		0.179839, 0.705301, -0.685718,
		39.286114, 34.077374, 49.128361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573006, 33.079365, 49.876385>,  <39.160229, 33.583664, 49.608364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573006, 33.079365, 49.876385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699322, 33.437420, 49.750523>,  <39.775112, 33.652252, 49.675007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699322, 33.437420, 49.750523>,  <39.573006, 33.079365, 49.876385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699322, 33.437420, 49.750523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732078, 0.018901, -0.680958,
		-0.603602, 0.445395, 0.661277,
		0.315794, 0.895134, -0.314656,
		39.794060, 33.705959, 49.656124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481209, 33.312763, 50.625191>,  <39.573006, 33.079365, 49.876385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481209, 33.312763, 50.625191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.813461, 33.526726, 50.563320>,  <40.012814, 33.655106, 50.526199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.813461, 33.526726, 50.563320>,  <39.481209, 33.312763, 50.625191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813461, 33.526726, 50.563320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455610, 0.493207, -0.741058,
		-0.320114, 0.686016, 0.653383,
		0.830630, 0.534911, -0.154673,
		40.062649, 33.687199, 50.516918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974228, 33.035652, 51.060795>,  <39.481209, 33.312763, 50.625191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974228, 33.035652, 51.060795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063072, 33.331032, 51.315464>,  <39.116379, 33.508259, 51.468266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063072, 33.331032, 51.315464>,  <38.974228, 33.035652, 51.060795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063072, 33.331032, 51.315464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802898, -0.231957, 0.549136,
		0.553193, -0.633153, 0.541383,
		0.222110, 0.738453, 0.636675,
		39.129704, 33.552567, 51.506466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945976, 32.757446, 51.817459>,  <38.974228, 33.035652, 51.060795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945976, 32.757446, 51.817459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858791, 33.146366, 51.783695>,  <38.806480, 33.379719, 51.763439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858791, 33.146366, 51.783695>,  <38.945976, 32.757446, 51.817459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858791, 33.146366, 51.783695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736379, -0.107082, 0.668042,
		0.640499, 0.207762, 0.739321,
		-0.217961, 0.972301, -0.084406,
		38.793404, 33.438057, 51.758373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798401, 33.045361, 52.521946>,  <38.945976, 32.757446, 51.817459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798401, 33.045361, 52.521946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610657, 33.268414, 52.248085>,  <38.498013, 33.402245, 52.083767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.610657, 33.268414, 52.248085>,  <38.798401, 33.045361, 52.521946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610657, 33.268414, 52.248085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800337, 0.058919, 0.596648,
		0.373048, 0.827997, 0.418637,
		-0.469357, 0.557629, -0.684656,
		38.469849, 33.435703, 52.042686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432240, 33.580807, 52.878727>,  <38.798401, 33.045361, 52.521946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432240, 33.580807, 52.878727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250294, 33.540028, 52.524845>,  <38.141129, 33.515560, 52.312515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250294, 33.540028, 52.524845>,  <38.432240, 33.580807, 52.878727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250294, 33.540028, 52.524845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886967, -0.037314, 0.460323,
		-0.079938, 0.994090, -0.073448,
		-0.454862, -0.101943, -0.884708,
		38.113834, 33.509445, 52.259434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829651, 34.044769, 52.952408>,  <38.432240, 33.580807, 52.878727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829651, 34.044769, 52.952408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717499, 33.780750, 52.673634>,  <37.650208, 33.622337, 52.506371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.717499, 33.780750, 52.673634>,  <37.829651, 34.044769, 52.952408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717499, 33.780750, 52.673634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920396, -0.021250, 0.390410,
		-0.272500, 0.750921, -0.601549,
		-0.280384, -0.660050, -0.696935,
		37.633385, 33.582737, 52.464554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165535, 34.155617, 52.810829>,  <37.829651, 34.044769, 52.952408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165535, 34.155617, 52.810829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201344, 33.804974, 52.621708>,  <37.222828, 33.594589, 52.508236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201344, 33.804974, 52.621708>,  <37.165535, 34.155617, 52.810829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201344, 33.804974, 52.621708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968382, -0.187593, 0.164453,
		-0.232856, 0.443136, -0.865684,
		0.089521, -0.876607, -0.472807,
		37.228199, 33.541992, 52.479866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675110, 34.147648, 52.278076>,  <37.165535, 34.155617, 52.810829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675110, 34.147648, 52.278076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756962, 33.769966, 52.381310>,  <36.806072, 33.543358, 52.443249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756962, 33.769966, 52.381310>,  <36.675110, 34.147648, 52.278076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756962, 33.769966, 52.381310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972846, -0.167045, 0.160211,
		-0.108161, -0.283857, -0.952747,
		0.204628, -0.944204, 0.258081,
		36.818352, 33.486706, 52.458733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373375, 33.645851, 51.845932>,  <36.675110, 34.147648, 52.278076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373375, 33.645851, 51.845932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421101, 33.518368, 52.222057>,  <36.449738, 33.441879, 52.447731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421101, 33.518368, 52.222057>,  <36.373375, 33.645851, 51.845932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421101, 33.518368, 52.222057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992855, -0.039399, 0.112632,
		0.001151, -0.947035, -0.321128,
		0.119319, -0.318704, 0.940314,
		36.456898, 33.422756, 52.504150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625320, 33.593891, 52.086716>,  <36.373375, 33.645851, 51.845932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625320, 33.593891, 52.086716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828114, 33.421040, 52.385040>,  <35.949791, 33.317329, 52.564034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828114, 33.421040, 52.385040>,  <35.625320, 33.593891, 52.086716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828114, 33.421040, 52.385040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780125, 0.137930, 0.610230,
		-0.366568, -0.891201, -0.267186,
		0.506985, -0.432129, 0.745808,
		35.980209, 33.291401, 52.608784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218792, 33.019585, 52.377594>,  <35.625320, 33.593891, 52.086716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218792, 33.019585, 52.377594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483540, 33.142239, 52.651207>,  <35.642387, 33.215832, 52.815376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483540, 33.142239, 52.651207>,  <35.218792, 33.019585, 52.377594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483540, 33.142239, 52.651207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742141, 0.139475, 0.655571,
		0.105613, -0.941554, 0.319878,
		0.661871, 0.306631, 0.684035,
		35.682102, 33.234230, 52.856419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976013, 32.671368, 52.998814>,  <35.218792, 33.019585, 52.377594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976013, 32.671368, 52.998814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214062, 32.961891, 53.136395>,  <35.356892, 33.136204, 53.218945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.214062, 32.961891, 53.136395>,  <34.976013, 32.671368, 52.998814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214062, 32.961891, 53.136395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709524, 0.273897, 0.649274,
		0.377367, -0.630440, 0.678336,
		0.595122, 0.726310, 0.343953,
		35.392597, 33.179783, 53.239578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004421, 32.600945, 53.728424>,  <34.976013, 32.671368, 52.998814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004421, 32.600945, 53.728424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096497, 32.976307, 53.625351>,  <35.151741, 33.201527, 53.563507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096497, 32.976307, 53.625351>,  <35.004421, 32.600945, 53.728424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096497, 32.976307, 53.625351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804509, 0.332490, 0.492154,
		0.547519, 0.094019, 0.831495,
		0.230192, 0.938409, -0.257684,
		35.165554, 33.257828, 53.548046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047371, 32.894058, 54.344383>,  <35.004421, 32.600945, 53.728424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047371, 32.894058, 54.344383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985435, 33.197662, 54.091423>,  <34.948273, 33.379826, 53.939648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985435, 33.197662, 54.091423>,  <35.047371, 32.894058, 54.344383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985435, 33.197662, 54.091423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705036, 0.363517, 0.608917,
		0.692062, 0.540149, 0.478842,
		-0.154838, 0.759009, -0.632401,
		34.938984, 33.425365, 53.901703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950741, 33.393166, 54.805256>,  <35.047371, 32.894058, 54.344383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950741, 33.393166, 54.805256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798126, 33.554195, 54.472424>,  <34.706558, 33.650814, 54.272724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798126, 33.554195, 54.472424>,  <34.950741, 33.393166, 54.805256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798126, 33.554195, 54.472424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660647, 0.510837, 0.550083,
		0.646509, 0.759591, 0.071056,
		-0.381540, 0.402577, -0.832081,
		34.683662, 33.674969, 54.222797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852093, 34.207912, 54.974567>,  <34.950741, 33.393166, 54.805256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852093, 34.207912, 54.974567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618282, 34.128632, 54.659851>,  <34.477997, 34.081062, 54.471020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618282, 34.128632, 54.659851>,  <34.852093, 34.207912, 54.974567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618282, 34.128632, 54.659851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726056, 0.560618, 0.398183,
		0.362169, 0.804004, -0.471605,
		-0.584531, -0.198202, -0.786791,
		34.442924, 34.069172, 54.423813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607872, 34.805801, 54.712769>,  <34.852093, 34.207912, 54.974567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607872, 34.805801, 54.712769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356831, 34.516773, 54.596832>,  <34.206207, 34.343357, 54.527271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356831, 34.516773, 54.596832>,  <34.607872, 34.805801, 54.712769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356831, 34.516773, 54.596832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765871, 0.506141, 0.396564,
		-0.139843, 0.470868, -0.871050,
		-0.627603, -0.722568, -0.289845,
		34.168549, 34.300003, 54.509880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957623, 35.242786, 54.587193>,  <34.607872, 34.805801, 54.712769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957623, 35.242786, 54.587193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837227, 34.861340, 54.585976>,  <33.764988, 34.632469, 54.585247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837227, 34.861340, 54.585976>,  <33.957623, 35.242786, 54.587193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837227, 34.861340, 54.585976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841648, 0.264148, 0.471015,
		-0.448367, 0.144333, -0.882120,
		-0.300993, -0.953622, -0.003043,
		33.746929, 34.575253, 54.585064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267235, 35.191483, 54.318386>,  <33.957623, 35.242786, 54.587193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267235, 35.191483, 54.318386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328575, 34.864437, 54.540371>,  <33.365379, 34.668209, 54.673561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328575, 34.864437, 54.540371>,  <33.267235, 35.191483, 54.318386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328575, 34.864437, 54.540371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826188, 0.202024, 0.525928,
		-0.542124, -0.539155, -0.644526,
		0.153347, -0.817617, 0.554965,
		33.374580, 34.619152, 54.706860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530586, 34.763233, 54.447624>,  <33.267235, 35.191483, 54.318386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530586, 34.763233, 54.447624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804424, 34.651978, 54.717133>,  <32.968727, 34.585224, 54.878838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804424, 34.651978, 54.717133>,  <32.530586, 34.763233, 54.447624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804424, 34.651978, 54.717133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632951, 0.231619, 0.738733,
		-0.361526, -0.932198, -0.017481,
		0.684596, -0.278135, 0.673772,
		33.009804, 34.568539, 54.919266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120735, 34.511631, 54.958183>,  <32.530586, 34.763233, 54.447624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120735, 34.511631, 54.958183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.461906, 34.527313, 55.166409>,  <32.666607, 34.536720, 55.291344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.461906, 34.527313, 55.166409>,  <32.120735, 34.511631, 54.958183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461906, 34.527313, 55.166409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485262, 0.427172, 0.762919,
		-0.192462, -0.903320, 0.383368,
		0.852924, 0.039201, 0.520561,
		32.717785, 34.539074, 55.322578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988358, 34.191319, 55.568596>,  <32.120735, 34.511631, 54.958183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988358, 34.191319, 55.568596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300930, 34.434975, 55.622723>,  <32.488472, 34.581169, 55.655201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300930, 34.434975, 55.622723>,  <31.988358, 34.191319, 55.568596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300930, 34.434975, 55.622723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494465, 0.472201, 0.729747,
		0.380622, -0.637158, 0.670192,
		0.781430, 0.609143, 0.135322,
		32.535358, 34.617718, 55.663319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118221, 34.079098, 56.281158>,  <31.988358, 34.191319, 55.568596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118221, 34.079098, 56.281158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249481, 34.435566, 56.155849>,  <32.328236, 34.649445, 56.080666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249481, 34.435566, 56.155849>,  <32.118221, 34.079098, 56.281158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249481, 34.435566, 56.155849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514479, 0.446743, 0.731937,
		0.792230, -0.079014, 0.605086,
		0.328151, 0.891167, -0.313272,
		32.347927, 34.702915, 56.061867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265415, 34.461689, 56.901192>,  <32.118221, 34.079098, 56.281158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265415, 34.461689, 56.901192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249073, 34.750046, 56.624454>,  <32.239265, 34.923061, 56.458412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249073, 34.750046, 56.624454>,  <32.265415, 34.461689, 56.901192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249073, 34.750046, 56.624454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366251, 0.633416, 0.681649,
		0.929619, 0.281238, 0.238148,
		-0.040859, 0.720895, -0.691839,
		32.236816, 34.966316, 56.416904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734322, 35.016235, 57.038612>,  <32.265415, 34.461689, 56.901192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734322, 35.016235, 57.038612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416904, 35.162182, 56.843815>,  <32.226452, 35.249748, 56.726936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416904, 35.162182, 56.843815>,  <32.734322, 35.016235, 57.038612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416904, 35.162182, 56.843815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311562, 0.443821, 0.840209,
		0.522698, 0.818473, -0.238515,
		-0.793546, 0.364863, -0.486989,
		32.178841, 35.271641, 56.697720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472313, 35.308117, 57.549458>,  <32.734322, 35.016235, 57.038612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472313, 35.308117, 57.549458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234741, 35.391304, 57.238586>,  <32.092197, 35.441216, 57.052063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234741, 35.391304, 57.238586>,  <32.472313, 35.308117, 57.549458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234741, 35.391304, 57.238586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618266, 0.500125, 0.606319,
		0.514782, 0.840609, -0.168455,
		-0.593925, 0.207972, -0.777175,
		32.056564, 35.453697, 57.005432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289879, 36.137459, 57.407440>,  <32.472313, 35.308117, 57.549458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289879, 36.137459, 57.407440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997013, 35.891735, 57.289757>,  <31.821295, 35.744301, 57.219147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997013, 35.891735, 57.289757>,  <32.289879, 36.137459, 57.407440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997013, 35.891735, 57.289757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646891, 0.491921, 0.582706,
		-0.213238, 0.616955, -0.757559,
		-0.732163, -0.614313, -0.294206,
		31.777365, 35.707439, 57.201496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676352, 36.627907, 57.293472>,  <32.289879, 36.137459, 57.407440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676352, 36.627907, 57.293472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535189, 36.254894, 57.324070>,  <31.450491, 36.031086, 57.342430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535189, 36.254894, 57.324070>,  <31.676352, 36.627907, 57.293472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535189, 36.254894, 57.324070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768636, 0.335557, 0.544609,
		-0.533531, 0.133398, -0.835194,
		-0.352906, -0.932527, 0.076496,
		31.429317, 35.975136, 57.347019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994160, 36.679840, 57.210827>,  <31.676352, 36.627907, 57.293472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994160, 36.679840, 57.210827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988995, 36.308411, 57.359192>,  <30.985895, 36.085552, 57.448212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988995, 36.308411, 57.359192>,  <30.994160, 36.679840, 57.210827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988995, 36.308411, 57.359192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701928, 0.272602, 0.658017,
		-0.712131, -0.251861, -0.655313,
		-0.012911, -0.928576, 0.370917,
		30.985121, 36.029839, 57.470467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390646, 36.699562, 57.479748>,  <30.994160, 36.679840, 57.210827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390646, 36.699562, 57.479748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562321, 36.386597, 57.660252>,  <30.665325, 36.198818, 57.768555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562321, 36.386597, 57.660252>,  <30.390646, 36.699562, 57.479748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562321, 36.386597, 57.660252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656194, 0.073209, 0.751032,
		-0.620653, -0.618443, -0.481994,
		0.429185, -0.782412, 0.451256,
		30.691076, 36.151875, 57.795628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923088, 36.267872, 57.652245>,  <30.390646, 36.699562, 57.479748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923088, 36.267872, 57.652245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223551, 36.192242, 57.905231>,  <30.403828, 36.146866, 58.057022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223551, 36.192242, 57.905231>,  <29.923088, 36.267872, 57.652245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223551, 36.192242, 57.905231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624868, 0.105268, 0.773601,
		-0.212846, -0.976304, -0.039074,
		0.751157, -0.189074, 0.632467,
		30.448898, 36.135521, 58.094971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607033, 35.879471, 58.183849>,  <29.923088, 36.267872, 57.652245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607033, 35.879471, 58.183849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.926180, 36.077545, 58.321365>,  <30.117668, 36.196392, 58.403877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.926180, 36.077545, 58.321365>,  <29.607033, 35.879471, 58.183849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926180, 36.077545, 58.321365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508086, 0.245468, 0.825587,
		0.324433, -0.833386, 0.447450,
		0.797867, 0.495191, 0.343793,
		30.165541, 36.226101, 58.424503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812460, 35.282997, 58.454227>,  <29.607033, 35.879471, 58.183849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812460, 35.282997, 58.454227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079071, 35.555443, 58.575439>,  <30.239037, 35.718910, 58.648167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079071, 35.555443, 58.575439>,  <29.812460, 35.282997, 58.454227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079071, 35.555443, 58.575439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549349, 0.173972, 0.817282,
		0.503944, -0.711209, 0.490126,
		0.666526, 0.681114, 0.303029,
		30.279030, 35.759777, 58.666348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838995, 35.173763, 59.158615>,  <29.812460, 35.282997, 58.454227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838995, 35.173763, 59.158615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001940, 35.537479, 59.124557>,  <30.099707, 35.755707, 59.104122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001940, 35.537479, 59.124557>,  <29.838995, 35.173763, 59.158615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001940, 35.537479, 59.124557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567135, 0.324941, 0.756817,
		0.715830, -0.260014, 0.648058,
		0.407364, 0.909289, -0.085140,
		30.124149, 35.810265, 59.099014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797621, 35.412373, 59.887367>,  <29.838995, 35.173763, 59.158615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797621, 35.412373, 59.887367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870054, 35.744953, 59.677261>,  <29.913515, 35.944500, 59.551197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870054, 35.744953, 59.677261>,  <29.797621, 35.412373, 59.887367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870054, 35.744953, 59.677261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625276, 0.509581, 0.591065,
		0.759104, 0.221401, 0.612162,
		0.181083, 0.831450, -0.525262,
		29.924379, 35.994389, 59.519684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092546, 35.846176, 60.373001>,  <29.797621, 35.412373, 59.887367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092546, 35.846176, 60.373001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.909575, 36.034355, 60.071156>,  <29.799791, 36.147263, 59.890049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.909575, 36.034355, 60.071156>,  <30.092546, 35.846176, 60.373001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909575, 36.034355, 60.071156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542572, 0.524676, 0.655996,
		0.704536, 0.709504, 0.015247,
		-0.457432, 0.470446, -0.754611,
		29.772345, 36.175488, 59.844772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090008, 36.583138, 60.677151>,  <30.092546, 35.846176, 60.373001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090008, 36.583138, 60.677151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.847273, 36.569294, 60.359520>,  <29.701632, 36.560986, 60.168941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.847273, 36.569294, 60.359520>,  <30.090008, 36.583138, 60.677151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847273, 36.569294, 60.359520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543081, 0.747530, 0.382443,
		0.580356, 0.663326, -0.472425,
		-0.606836, -0.034612, -0.794073,
		29.665222, 36.558910, 60.121300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036243, 37.378220, 60.433586>,  <30.090008, 36.583138, 60.677151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036243, 37.378220, 60.433586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.731224, 37.134598, 60.346344>,  <29.548212, 36.988426, 60.293999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.731224, 37.134598, 60.346344>,  <30.036243, 37.378220, 60.433586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731224, 37.134598, 60.346344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626442, 0.610992, 0.484003,
		-0.161521, 0.505709, -0.847449,
		-0.762549, -0.609054, -0.218110,
		29.502459, 36.951881, 60.280910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496370, 37.823643, 60.239731>,  <30.036243, 37.378220, 60.433586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496370, 37.823643, 60.239731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311626, 37.475033, 60.305622>,  <29.200779, 37.265869, 60.345158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311626, 37.475033, 60.305622>,  <29.496370, 37.823643, 60.239731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311626, 37.475033, 60.305622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732595, 0.479540, 0.483059,
		-0.499989, 0.102429, -0.859953,
		-0.461861, -0.871521, 0.164726,
		29.173069, 37.213577, 60.355042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899813, 38.031006, 60.330509>,  <29.496370, 37.823643, 60.239731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899813, 38.031006, 60.330509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.828999, 37.659393, 60.460472>,  <28.786510, 37.436428, 60.538448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.828999, 37.659393, 60.460472>,  <28.899813, 38.031006, 60.330509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828999, 37.659393, 60.460472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778629, 0.334123, 0.531130,
		-0.601993, -0.158952, -0.782520,
		-0.177034, -0.929030, 0.324905,
		28.775888, 37.380684, 60.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141369, 38.009644, 60.362709>,  <28.899813, 38.031006, 60.330509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141369, 38.009644, 60.362709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288633, 37.716396, 60.591442>,  <28.376993, 37.540447, 60.728683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288633, 37.716396, 60.591442>,  <28.141369, 38.009644, 60.362709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288633, 37.716396, 60.591442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726417, 0.157071, 0.669064,
		-0.580322, -0.661713, -0.474723,
		0.368163, -0.733120, 0.571832,
		28.399082, 37.496460, 60.762993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633362, 37.702694, 60.556580>,  <28.141369, 38.009644, 60.362709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633362, 37.702694, 60.556580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.896271, 37.609764, 60.843361>,  <28.054016, 37.554008, 61.015430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.896271, 37.609764, 60.843361>,  <27.633362, 37.702694, 60.556580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896271, 37.609764, 60.843361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734743, 0.014235, 0.678196,
		-0.167765, -0.972535, -0.161340,
		0.657273, -0.232321, 0.716952,
		28.093452, 37.540070, 61.058445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137688, 37.442581, 61.011341>,  <27.633362, 37.702694, 60.556580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137688, 37.442581, 61.011341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.485151, 37.479389, 61.206059>,  <27.693628, 37.501472, 61.322887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.485151, 37.479389, 61.206059>,  <27.137688, 37.442581, 61.011341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485151, 37.479389, 61.206059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490465, 0.298264, 0.818830,
		-0.069847, -0.950038, 0.304220,
		0.868657, 0.092017, 0.486793,
		27.745749, 37.506996, 61.352097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136486, 37.019665, 61.752743>,  <27.137688, 37.442581, 61.011341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136486, 37.019665, 61.752743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.396841, 37.319332, 61.801884>,  <27.553053, 37.499134, 61.831367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.396841, 37.319332, 61.801884>,  <27.136486, 37.019665, 61.752743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396841, 37.319332, 61.801884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452265, 0.252668, 0.855345,
		0.609758, -0.612294, 0.503281,
		0.650886, 0.749169, 0.122853,
		27.592106, 37.544083, 61.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276140, 36.883121, 62.497795>,  <27.136486, 37.019665, 61.752743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276140, 36.883121, 62.497795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.396288, 37.233437, 62.346649>,  <27.468376, 37.443626, 62.255962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.396288, 37.233437, 62.346649>,  <27.276140, 36.883121, 62.497795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396288, 37.233437, 62.346649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250575, 0.454693, 0.854673,
		0.920321, -0.162033, 0.356025,
		0.300367, 0.875785, -0.377862,
		27.486399, 37.496174, 62.233292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845648, 37.213371, 62.889580>,  <27.276140, 36.883121, 62.497795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845648, 37.213371, 62.889580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.589211, 37.454544, 62.699646>,  <27.435349, 37.599247, 62.585686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.589211, 37.454544, 62.699646>,  <27.845648, 37.213371, 62.889580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589211, 37.454544, 62.699646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110059, 0.540082, 0.834385,
		0.759530, 0.587179, -0.279885,
		-0.641094, 0.602936, -0.474833,
		27.396883, 37.635426, 62.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943768, 37.907948, 63.052563>,  <27.845648, 37.213371, 62.889580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943768, 37.907948, 63.052563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.557449, 37.882969, 62.951893>,  <27.325659, 37.867981, 62.891491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.557449, 37.882969, 62.951893>,  <27.943768, 37.907948, 63.052563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557449, 37.882969, 62.951893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241366, 0.571212, 0.784512,
		0.094774, 0.818424, -0.566745,
		-0.965795, -0.062442, -0.251676,
		27.267712, 37.864235, 62.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494404, 38.409393, 63.114700>,  <27.943768, 37.907948, 63.052563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494404, 38.409393, 63.114700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.714434, 38.743309, 63.124069>,  <27.846453, 38.943657, 63.129692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.714434, 38.743309, 63.124069>,  <27.494404, 38.409393, 63.114700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714434, 38.743309, 63.124069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810177, 0.526636, 0.257425,
		0.202558, -0.160583, 0.966014,
		0.550076, 0.834786, 0.023426,
		27.879457, 38.993744, 63.131096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281656, 38.685287, 63.741802>,  <27.494404, 38.409393, 63.114700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281656, 38.685287, 63.741802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.424639, 38.956852, 63.485271>,  <27.510427, 39.119789, 63.331352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.424639, 38.956852, 63.485271>,  <27.281656, 38.685287, 63.741802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424639, 38.956852, 63.485271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807759, 0.569426, 0.152574,
		0.468775, 0.463502, 0.751942,
		0.357457, 0.678911, -0.641331,
		27.531876, 39.160526, 63.292873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809731, 38.411098, 63.347530>,  <27.281656, 38.685287, 63.741802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809731, 38.411098, 63.347530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.544544, 38.701412, 63.274090>,  <26.385433, 38.875603, 63.230026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.544544, 38.701412, 63.274090>,  <26.809731, 38.411098, 63.347530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544544, 38.701412, 63.274090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536385, 0.289408, -0.792801,
		-0.522272, -0.624079, -0.581169,
		-0.662965, 0.725788, -0.183597,
		26.345655, 38.919147, 63.219009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429531, 38.297749, 62.658302>,  <26.809731, 38.411098, 63.347530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429531, 38.297749, 62.658302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.482750, 38.686649, 62.735275>,  <26.514681, 38.919991, 62.781460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.482750, 38.686649, 62.735275>,  <26.429531, 38.297749, 62.658302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482750, 38.686649, 62.735275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476671, 0.107456, -0.872490,
		-0.868956, 0.207807, -0.449146,
		0.133046, 0.972250, 0.192430,
		26.522663, 38.978325, 62.793003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249481, 38.694824, 62.107510>,  <26.429531, 38.297749, 62.658302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249481, 38.694824, 62.107510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.491823, 38.949436, 62.298409>,  <26.637228, 39.102203, 62.412949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.491823, 38.949436, 62.298409>,  <26.249481, 38.694824, 62.107510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491823, 38.949436, 62.298409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471370, 0.196049, -0.859869,
		-0.640898, 0.745918, -0.181264,
		0.605855, 0.636531, 0.477251,
		26.673580, 39.140396, 62.441586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533075, 39.110451, 61.553108>,  <26.249481, 38.694824, 62.107510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533075, 39.110451, 61.553108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.775272, 39.199379, 61.858776>,  <26.920591, 39.252735, 62.042175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.775272, 39.199379, 61.858776>,  <26.533075, 39.110451, 61.553108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775272, 39.199379, 61.858776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668268, 0.379412, -0.639894,
		-0.432197, 0.898120, 0.081159,
		0.605494, 0.222324, 0.764166,
		26.956921, 39.266075, 62.088024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819448, 39.699017, 61.419109>,  <26.533075, 39.110451, 61.553108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819448, 39.699017, 61.419109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.062166, 39.534401, 61.691120>,  <27.207796, 39.435631, 61.854328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.062166, 39.534401, 61.691120>,  <26.819448, 39.699017, 61.419109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062166, 39.534401, 61.691120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790182, 0.404993, -0.459993,
		-0.086102, 0.816467, 0.570936,
		0.606794, -0.411537, 0.680028,
		27.244205, 39.410938, 61.895130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305136, 40.260403, 61.598522>,  <26.819448, 39.699017, 61.419109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305136, 40.260403, 61.598522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.462008, 39.904896, 61.693428>,  <27.556131, 39.691593, 61.750370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.462008, 39.904896, 61.693428>,  <27.305136, 40.260403, 61.598522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462008, 39.904896, 61.693428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805735, 0.207446, -0.554758,
		0.443830, 0.408737, 0.797464,
		0.392181, -0.888763, 0.237263,
		27.579662, 39.638268, 61.764606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932280, 40.300510, 61.894428>,  <27.305136, 40.260403, 61.598522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932280, 40.300510, 61.894428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934595, 39.936893, 61.727760>,  <27.935984, 39.718723, 61.627758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934595, 39.936893, 61.727760>,  <27.932280, 40.300510, 61.894428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934595, 39.936893, 61.727760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754121, 0.277610, -0.595176,
		0.656710, -0.310778, 0.687131,
		0.005787, -0.909038, -0.416673,
		27.936331, 39.664181, 61.602757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639147, 40.090801, 61.941189>,  <27.932280, 40.300510, 61.894428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639147, 40.090801, 61.941189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.442825, 39.900635, 61.649136>,  <28.325033, 39.786537, 61.473904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.442825, 39.900635, 61.649136>,  <28.639147, 40.090801, 61.941189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442825, 39.900635, 61.649136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754896, 0.186378, -0.628805,
		0.435023, -0.859794, 0.267413,
		-0.490803, -0.475413, -0.730133,
		28.295584, 39.758011, 61.430096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103020, 39.645615, 61.692101>,  <28.639147, 40.090801, 61.941189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103020, 39.645615, 61.692101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853062, 39.685863, 61.382423>,  <28.703087, 39.710014, 61.196617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853062, 39.685863, 61.382423>,  <29.103020, 39.645615, 61.692101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853062, 39.685863, 61.382423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775035, -0.039386, -0.630690,
		-0.093954, -0.994145, -0.053375,
		-0.624895, 0.100623, -0.774197,
		28.665594, 39.716049, 61.150166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369333, 39.244244, 61.113712>,  <29.103020, 39.645615, 61.692101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369333, 39.244244, 61.113712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.107845, 39.477196, 60.920429>,  <28.950953, 39.616966, 60.804459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.107845, 39.477196, 60.920429>,  <29.369333, 39.244244, 61.113712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107845, 39.477196, 60.920429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655337, 0.116390, -0.746315,
		-0.378400, -0.804541, -0.457742,
		-0.653718, 0.582381, -0.483203,
		28.911730, 39.651909, 60.775467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306713, 38.991478, 60.422009>,  <29.369333, 39.244244, 61.113712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306713, 38.991478, 60.422009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170921, 39.367226, 60.402668>,  <29.089447, 39.592674, 60.391064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170921, 39.367226, 60.402668>,  <29.306713, 38.991478, 60.422009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170921, 39.367226, 60.402668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572404, 0.165525, -0.803090,
		-0.746396, -0.300308, -0.593892,
		-0.339479, 0.939370, -0.048350,
		29.069078, 39.649036, 60.388165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993376, 38.952820, 59.780254>,  <29.306713, 38.991478, 60.422009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993376, 38.952820, 59.780254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067501, 39.329311, 59.893219>,  <29.111977, 39.555206, 59.960999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067501, 39.329311, 59.893219>,  <28.993376, 38.952820, 59.780254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067501, 39.329311, 59.893219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529323, 0.146523, -0.835672,
		-0.827935, 0.304347, -0.471060,
		0.185313, 0.941225, 0.282410,
		29.123095, 39.611679, 59.977943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904469, 39.394348, 59.120747>,  <28.993376, 38.952820, 59.780254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904469, 39.394348, 59.120747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.074568, 39.660049, 59.366653>,  <29.176626, 39.819469, 59.514198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.074568, 39.660049, 59.366653>,  <28.904469, 39.394348, 59.120747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074568, 39.660049, 59.366653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460452, 0.425994, -0.778790,
		-0.779198, 0.614246, -0.124704,
		0.425246, 0.664252, 0.614764,
		29.202141, 39.859325, 59.551083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805599, 40.056698, 58.731857>,  <28.904469, 39.394348, 59.120747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805599, 40.056698, 58.731857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.123499, 40.059834, 58.974613>,  <29.314240, 40.061714, 59.120266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.123499, 40.059834, 58.974613>,  <28.805599, 40.056698, 58.731857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123499, 40.059834, 58.974613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590788, 0.219129, -0.776500,
		-0.139074, 0.975664, 0.169521,
		0.794750, 0.007840, 0.606886,
		29.361923, 40.062187, 59.156677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185249, 40.297386, 58.278992>,  <28.805599, 40.056698, 58.731857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185249, 40.297386, 58.278992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454983, 40.209862, 58.561096>,  <29.616823, 40.157349, 58.730358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454983, 40.209862, 58.561096>,  <29.185249, 40.297386, 58.278992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454983, 40.209862, 58.561096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734124, 0.095726, -0.672234,
		0.079581, 0.971060, 0.225187,
		0.674336, -0.218812, 0.705261,
		29.657284, 40.144218, 58.772675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694263, 40.792828, 58.273560>,  <29.185249, 40.297386, 58.278992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694263, 40.792828, 58.273560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880154, 40.508804, 58.485165>,  <29.991688, 40.338390, 58.612125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880154, 40.508804, 58.485165>,  <29.694263, 40.792828, 58.273560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880154, 40.508804, 58.485165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739900, -0.016776, -0.672507,
		0.486393, 0.703944, 0.517576,
		0.464725, -0.710057, 0.529008,
		30.019571, 40.295788, 58.643867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304873, 40.975800, 58.455551>,  <29.694263, 40.792828, 58.273560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304873, 40.975800, 58.455551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.351038, 40.579849, 58.488594>,  <30.378736, 40.342278, 58.508419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.351038, 40.579849, 58.488594>,  <30.304873, 40.975800, 58.455551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351038, 40.579849, 58.488594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706192, 0.023284, -0.707637,
		0.698550, 0.140007, 0.701731,
		0.115413, -0.989877, 0.082607,
		30.385662, 40.282887, 58.513374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030523, 40.873051, 58.368149>,  <30.304873, 40.975800, 58.455551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030523, 40.873051, 58.368149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.852539, 40.519650, 58.309593>,  <30.745749, 40.307610, 58.274460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.852539, 40.519650, 58.309593>,  <31.030523, 40.873051, 58.368149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852539, 40.519650, 58.309593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701360, -0.242144, -0.670418,
		0.556871, -0.400981, 0.727399,
		-0.444960, -0.883505, -0.146389,
		30.719051, 40.254597, 58.265675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495913, 40.476673, 58.208027>,  <31.030523, 40.873051, 58.368149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495913, 40.476673, 58.208027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171526, 40.321423, 58.032898>,  <30.976894, 40.228271, 57.927818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171526, 40.321423, 58.032898>,  <31.495913, 40.476673, 58.208027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171526, 40.321423, 58.032898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527266, -0.160421, -0.834419,
		0.253627, -0.907535, 0.334744,
		-0.810965, -0.388130, -0.437825,
		30.928236, 40.204983, 57.901550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598478, 39.750710, 58.013054>,  <31.495913, 40.476673, 58.208027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598478, 39.750710, 58.013054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317114, 39.931435, 57.793571>,  <31.148294, 40.039871, 57.661884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317114, 39.931435, 57.793571>,  <31.598478, 39.750710, 58.013054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317114, 39.931435, 57.793571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607369, -0.018919, -0.794194,
		-0.369210, -0.891911, -0.261111,
		-0.703411, 0.451816, -0.548704,
		31.106091, 40.066978, 57.628960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468849, 39.335796, 57.363331>,  <31.598478, 39.750710, 58.013054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468849, 39.335796, 57.363331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355293, 39.717865, 57.329735>,  <31.287159, 39.947105, 57.309578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.355293, 39.717865, 57.329735>,  <31.468849, 39.335796, 57.363331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355293, 39.717865, 57.329735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562137, 0.094833, -0.821589,
		-0.776794, -0.280453, -0.563860,
		-0.283889, 0.955172, -0.083987,
		31.270126, 40.004417, 57.304539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162565, 39.335396, 56.703056>,  <31.468849, 39.335796, 57.363331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162565, 39.335396, 56.703056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280588, 39.704147, 56.803513>,  <31.351402, 39.925400, 56.863785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280588, 39.704147, 56.803513>,  <31.162565, 39.335396, 56.703056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280588, 39.704147, 56.803513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568534, 0.041855, -0.821594,
		-0.767925, 0.385201, -0.511772,
		0.295059, 0.921883, 0.251141,
		31.369106, 39.980713, 56.878857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978815, 39.819187, 56.120392>,  <31.162565, 39.335396, 56.703056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978815, 39.819187, 56.120392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.297895, 39.949940, 56.323101>,  <31.489344, 40.028393, 56.444725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.297895, 39.949940, 56.323101>,  <30.978815, 39.819187, 56.120392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297895, 39.949940, 56.323101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480922, 0.162198, -0.861630,
		-0.363849, 0.931042, -0.027820,
		0.797702, 0.326882, 0.506774,
		31.537207, 40.048004, 56.475132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350689, 40.222595, 55.631969>,  <30.978815, 39.819187, 56.120392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350689, 40.222595, 55.631969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655937, 40.211891, 55.890247>,  <31.839087, 40.205467, 56.045216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655937, 40.211891, 55.890247>,  <31.350689, 40.222595, 55.631969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655937, 40.211891, 55.890247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645287, -0.023060, -0.763592,
		0.035326, 0.999376, -0.000327,
		0.763123, -0.026764, 0.645699,
		31.884874, 40.203861, 56.083958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920433, 40.818573, 55.539131>,  <31.350689, 40.222595, 55.631969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920433, 40.818573, 55.539131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.112316, 40.532070, 55.741856>,  <32.227444, 40.360168, 55.863491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.112316, 40.532070, 55.741856>,  <31.920433, 40.818573, 55.539131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112316, 40.532070, 55.741856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704498, -0.029898, -0.709076,
		0.523034, 0.697194, 0.490261,
		0.479706, -0.716258, 0.506810,
		32.256229, 40.317192, 55.893898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603241, 40.987041, 55.571075>,  <31.920433, 40.818573, 55.539131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603241, 40.987041, 55.571075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626621, 40.591835, 55.628227>,  <32.640648, 40.354713, 55.662518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.626621, 40.591835, 55.628227>,  <32.603241, 40.987041, 55.571075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626621, 40.591835, 55.628227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826057, -0.032498, -0.562649,
		0.560548, 0.150908, 0.814256,
		0.058446, -0.988013, 0.142876,
		32.644154, 40.295429, 55.671089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326313, 40.871727, 55.591774>,  <32.603241, 40.987041, 55.571075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326313, 40.871727, 55.591774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198296, 40.500057, 55.517796>,  <33.121487, 40.277054, 55.473408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198296, 40.500057, 55.517796>,  <33.326313, 40.871727, 55.591774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198296, 40.500057, 55.517796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858544, -0.201901, -0.471315,
		0.400593, -0.309627, 0.862355,
		-0.320042, -0.929175, -0.184948,
		33.102283, 40.221306, 55.462311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904057, 40.467155, 55.728279>,  <33.326313, 40.871727, 55.591774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904057, 40.467155, 55.728279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.665840, 40.240788, 55.500221>,  <33.522911, 40.104969, 55.363384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.665840, 40.240788, 55.500221>,  <33.904057, 40.467155, 55.728279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665840, 40.240788, 55.500221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803259, -0.410459, -0.431623,
		0.010241, -0.715025, 0.699024,
		-0.595542, -0.565918, -0.570146,
		33.487179, 40.071011, 55.329178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221725, 39.868114, 55.807697>,  <33.904057, 40.467155, 55.728279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221725, 39.868114, 55.807697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000149, 39.805859, 55.480545>,  <33.867203, 39.768505, 55.284256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000149, 39.805859, 55.480545>,  <34.221725, 39.868114, 55.807697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000149, 39.805859, 55.480545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744434, -0.532453, -0.402880,
		-0.372777, -0.832028, 0.410812,
		-0.553946, -0.155638, -0.817876,
		33.833965, 39.759167, 55.235184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240738, 39.094490, 55.565731>,  <34.221725, 39.868114, 55.807697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240738, 39.094490, 55.565731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124355, 39.293594, 55.238911>,  <34.054523, 39.413055, 55.042816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124355, 39.293594, 55.238911>,  <34.240738, 39.094490, 55.565731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124355, 39.293594, 55.238911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646385, -0.527346, -0.551446,
		-0.705357, -0.688581, -0.168308,
		-0.290959, 0.497758, -0.817055,
		34.037067, 39.442921, 54.993793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066162, 38.576061, 55.000278>,  <34.240738, 39.094490, 55.565731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066162, 38.576061, 55.000278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118031, 38.927937, 54.817265>,  <34.149151, 39.139061, 54.707455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118031, 38.927937, 54.817265>,  <34.066162, 38.576061, 55.000278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118031, 38.927937, 54.817265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571901, -0.443298, -0.690229,
		-0.810009, -0.172159, -0.560578,
		0.129674, 0.879686, -0.457533,
		34.156933, 39.191841, 54.680004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746918, 38.570171, 54.332958>,  <34.066162, 38.576061, 55.000278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746918, 38.570171, 54.332958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051651, 38.829277, 54.334671>,  <34.234489, 38.984741, 54.335701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051651, 38.829277, 54.334671>,  <33.746918, 38.570171, 54.332958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051651, 38.829277, 54.334671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445508, -0.519133, -0.729399,
		-0.470254, 0.557587, -0.684075,
		0.761829, 0.647764, 0.004286,
		34.280201, 39.023605, 54.335957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920944, 38.614399, 53.663540>,  <33.746918, 38.570171, 54.332958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920944, 38.614399, 53.663540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255836, 38.753857, 53.832058>,  <34.456772, 38.837532, 53.933170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255836, 38.753857, 53.832058>,  <33.920944, 38.614399, 53.663540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255836, 38.753857, 53.832058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544691, -0.463271, -0.699064,
		-0.048549, 0.814756, -0.577768,
		0.837230, 0.348644, 0.421299,
		34.507004, 38.858448, 53.958447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232861, 38.816887, 53.035393>,  <33.920944, 38.614399, 53.663540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232861, 38.816887, 53.035393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493454, 38.776512, 53.336159>,  <34.649811, 38.752289, 53.516621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493454, 38.776512, 53.336159>,  <34.232861, 38.816887, 53.035393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493454, 38.776512, 53.336159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617926, -0.504420, -0.603099,
		0.440156, 0.857539, -0.266252,
		0.651483, -0.100933, 0.751919,
		34.688900, 38.746231, 53.561733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799118, 39.015949, 52.740711>,  <34.232861, 38.816887, 53.035393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799118, 39.015949, 52.740711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917347, 38.809605, 53.062340>,  <34.988285, 38.685799, 53.255318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917347, 38.809605, 53.062340>,  <34.799118, 39.015949, 52.740711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917347, 38.809605, 53.062340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633626, -0.524040, -0.569122,
		0.714953, 0.677692, 0.171975,
		0.295568, -0.515863, 0.804068,
		35.006016, 38.654846, 53.303558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484959, 38.925472, 52.533440>,  <34.799118, 39.015949, 52.740711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484959, 38.925472, 52.533440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427418, 38.670235, 52.836002>,  <35.392895, 38.517094, 53.017540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427418, 38.670235, 52.836002>,  <35.484959, 38.925472, 52.533440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427418, 38.670235, 52.836002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636659, -0.644841, -0.422901,
		0.757610, 0.420735, 0.499009,
		-0.143852, -0.638092, 0.756403,
		35.384262, 38.478806, 53.062923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147373, 38.675705, 52.652817>,  <35.484959, 38.925472, 52.533440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147373, 38.675705, 52.652817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891472, 38.401127, 52.791103>,  <35.737930, 38.236382, 52.874073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891472, 38.401127, 52.791103>,  <36.147373, 38.675705, 52.652817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891472, 38.401127, 52.791103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508851, -0.715393, -0.478836,
		0.576013, -0.130419, 0.806970,
		-0.639750, -0.686443, 0.345712,
		35.699547, 38.195194, 52.894817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502453, 38.072762, 52.989925>,  <36.147373, 38.675705, 52.652817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502453, 38.072762, 52.989925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138481, 37.941376, 52.888618>,  <35.920097, 37.862545, 52.827835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138481, 37.941376, 52.888618>,  <36.502453, 38.072762, 52.989925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138481, 37.941376, 52.888618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412173, -0.784267, -0.463723,
		-0.046317, -0.526346, 0.849008,
		-0.909927, -0.328460, -0.253271,
		35.865501, 37.842838, 52.812637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689522, 37.523701, 52.680122>,  <36.502453, 38.072762, 52.989925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689522, 37.523701, 52.680122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304707, 37.474510, 52.582672>,  <36.073818, 37.444996, 52.524200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304707, 37.474510, 52.582672>,  <36.689522, 37.523701, 52.680122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304707, 37.474510, 52.582672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263033, -0.655801, -0.707629,
		-0.072748, -0.744850, 0.663254,
		-0.962040, -0.122979, -0.243628,
		36.016094, 37.437618, 52.509583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485710, 36.820957, 52.840733>,  <36.689522, 37.523701, 52.680122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485710, 36.820957, 52.840733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263680, 36.980579, 52.548801>,  <36.130463, 37.076355, 52.373642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263680, 36.980579, 52.548801>,  <36.485710, 36.820957, 52.840733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263680, 36.980579, 52.548801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222884, -0.773962, -0.592711,
		-0.801381, -0.491666, 0.340664,
		-0.555077, 0.399058, -0.729823,
		36.097157, 37.100296, 52.329853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020088, 36.342960, 52.535854>,  <36.485710, 36.820957, 52.840733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020088, 36.342960, 52.535854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023239, 36.605965, 52.234493>,  <36.025127, 36.763767, 52.053677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023239, 36.605965, 52.234493>,  <36.020088, 36.342960, 52.535854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023239, 36.605965, 52.234493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052671, -0.752110, -0.656929,
		-0.998581, 0.044856, 0.028709,
		0.007875, 0.657509, -0.753405,
		36.025600, 36.803219, 52.008472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574810, 36.102352, 52.092804>,  <36.020088, 36.342960, 52.535854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574810, 36.102352, 52.092804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788208, 36.342899, 51.854900>,  <35.916248, 36.487228, 51.712158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788208, 36.342899, 51.854900>,  <35.574810, 36.102352, 52.092804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788208, 36.342899, 51.854900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021521, -0.712614, -0.701226,
		-0.845527, 0.361303, -0.393121,
		0.533499, 0.601366, -0.594759,
		35.948257, 36.523308, 51.676472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219227, 36.122375, 51.453003>,  <35.574810, 36.102352, 52.092804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219227, 36.122375, 51.453003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604446, 36.209618, 51.389801>,  <35.835579, 36.261963, 51.351879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604446, 36.209618, 51.389801>,  <35.219227, 36.122375, 51.453003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604446, 36.209618, 51.389801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018918, -0.639993, -0.768147,
		-0.268657, 0.736775, -0.620472,
		0.963050, 0.218106, -0.158000,
		35.893360, 36.275051, 51.342400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213947, 36.042282, 50.740597>,  <35.219227, 36.122375, 51.453003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213947, 36.042282, 50.740597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589924, 36.082325, 50.871132>,  <35.815510, 36.106350, 50.949451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589924, 36.082325, 50.871132>,  <35.213947, 36.042282, 50.740597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589924, 36.082325, 50.871132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290295, -0.737357, -0.609946,
		0.179565, 0.668045, -0.722130,
		0.939939, 0.100106, 0.326334,
		35.871906, 36.112358, 50.969032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734730, 36.615612, 50.646141>,  <35.213947, 36.042282, 50.740597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734730, 36.615612, 50.646141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030571, 36.753994, 50.415211>,  <35.208076, 36.837025, 50.276653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030571, 36.753994, 50.415211>,  <34.734730, 36.615612, 50.646141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030571, 36.753994, 50.415211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308907, 0.936583, 0.165497,
		0.597964, 0.055936, 0.799569,
		0.739605, 0.345954, -0.577322,
		35.252453, 36.857780, 50.242016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073849, 37.202065, 50.839348>,  <34.734730, 36.615612, 50.646141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073849, 37.202065, 50.839348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143322, 37.216396, 50.445686>,  <35.185005, 37.224995, 50.209492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.143322, 37.216396, 50.445686>,  <35.073849, 37.202065, 50.839348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143322, 37.216396, 50.445686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583470, 0.808800, -0.073522,
		0.793345, 0.586991, 0.161380,
		0.173681, 0.035832, -0.984150,
		35.195427, 37.227146, 50.150440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152901, 37.961689, 50.595287>,  <35.073849, 37.202065, 50.839348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152901, 37.961689, 50.595287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018894, 37.742203, 50.288906>,  <34.938492, 37.610512, 50.105080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018894, 37.742203, 50.288906>,  <35.152901, 37.961689, 50.595287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018894, 37.742203, 50.288906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671358, 0.709396, -0.214561,
		0.661094, 0.442345, -0.606041,
		-0.335013, -0.548715, -0.765949,
		34.918392, 37.577587, 50.059120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078293, 38.485138, 50.033203>,  <35.152901, 37.961689, 50.595287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078293, 38.485138, 50.033203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822414, 38.181404, 49.985527>,  <34.668888, 37.999165, 49.956921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822414, 38.181404, 49.985527>,  <35.078293, 38.485138, 50.033203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822414, 38.181404, 49.985527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766815, 0.641115, 0.031081,
		0.052814, 0.111280, -0.992385,
		-0.639692, -0.759334, -0.119191,
		34.630508, 37.953606, 49.949768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565907, 38.721649, 49.542622>,  <35.078293, 38.485138, 50.033203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565907, 38.721649, 49.542622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391811, 38.404827, 49.713833>,  <34.287354, 38.214733, 49.816559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391811, 38.404827, 49.713833>,  <34.565907, 38.721649, 49.542622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391811, 38.404827, 49.713833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827842, 0.538963, 0.155553,
		-0.353899, -0.286637, -0.890278,
		-0.435240, -0.792059, 0.428029,
		34.261238, 38.167210, 49.842243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824276, 38.767914, 49.387741>,  <34.565907, 38.721649, 49.542622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824276, 38.767914, 49.387741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810337, 38.505684, 49.689468>,  <33.801971, 38.348347, 49.870506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810337, 38.505684, 49.689468>,  <33.824276, 38.767914, 49.387741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810337, 38.505684, 49.689468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886414, 0.368878, 0.279639,
		-0.461579, -0.658896, -0.593970,
		-0.034849, -0.655579, 0.754322,
		33.799881, 38.309010, 49.915764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221535, 38.375900, 49.336864>,  <33.824276, 38.767914, 49.387741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221535, 38.375900, 49.336864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325195, 38.356277, 49.722702>,  <33.387390, 38.344501, 49.954205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325195, 38.356277, 49.722702>,  <33.221535, 38.375900, 49.336864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325195, 38.356277, 49.722702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941573, 0.209622, 0.263626,
		-0.215133, -0.976551, 0.008129,
		0.259148, -0.049060, 0.964591,
		33.402939, 38.341560, 50.012081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632751, 38.117073, 49.660519>,  <33.221535, 38.375900, 49.336864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632751, 38.117073, 49.660519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845478, 38.295338, 49.948563>,  <32.973114, 38.402298, 50.121387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845478, 38.295338, 49.948563>,  <32.632751, 38.117073, 49.660519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845478, 38.295338, 49.948563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829915, 0.443509, 0.338439,
		-0.168545, -0.777616, 0.605727,
		0.531821, 0.445660, 0.720106,
		33.005024, 38.429035, 50.164593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159367, 38.192188, 50.063732>,  <32.632751, 38.117073, 49.660519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159367, 38.192188, 50.063732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433033, 38.442471, 50.213615>,  <32.597233, 38.592640, 50.303543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433033, 38.442471, 50.213615>,  <32.159367, 38.192188, 50.063732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433033, 38.442471, 50.213615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721081, 0.503299, 0.476164,
		0.109352, -0.595969, 0.795527,
		0.684167, 0.625709, 0.374705,
		32.638283, 38.630184, 50.326027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203629, 38.085175, 50.820923>,  <32.159367, 38.192188, 50.063732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203629, 38.085175, 50.820923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.323563, 38.457161, 50.735817>,  <32.395523, 38.680351, 50.684753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.323563, 38.457161, 50.735817>,  <32.203629, 38.085175, 50.820923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323563, 38.457161, 50.735817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771349, 0.367555, 0.519542,
		0.561357, 0.008339, 0.827531,
		0.299830, 0.929964, -0.212762,
		32.413513, 38.736149, 50.671989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315285, 38.406857, 51.472023>,  <32.203629, 38.085175, 50.820923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315285, 38.406857, 51.472023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258625, 38.712719, 51.220554>,  <32.224628, 38.896236, 51.069672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258625, 38.712719, 51.220554>,  <32.315285, 38.406857, 51.472023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258625, 38.712719, 51.220554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625302, 0.423218, 0.655656,
		0.767419, 0.485985, 0.418195,
		-0.141651, 0.764661, -0.628673,
		32.216129, 38.942116, 51.031952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403965, 38.931950, 51.875954>,  <32.315285, 38.406857, 51.472023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403965, 38.931950, 51.875954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237846, 39.108906, 51.558006>,  <32.138176, 39.215080, 51.367237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237846, 39.108906, 51.558006>,  <32.403965, 38.931950, 51.875954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237846, 39.108906, 51.558006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562335, 0.561991, 0.606585,
		0.715055, 0.698899, 0.015374,
		-0.415301, 0.442387, -0.794870,
		32.113255, 39.241623, 51.319546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419765, 39.617626, 51.962021>,  <32.403965, 38.931950, 51.875954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419765, 39.617626, 51.962021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131298, 39.568375, 51.689327>,  <31.958218, 39.538822, 51.525711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.131298, 39.568375, 51.689327>,  <32.419765, 39.617626, 51.962021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131298, 39.568375, 51.689327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629110, 0.528448, 0.570055,
		0.290069, 0.839989, -0.458561,
		-0.721166, -0.123130, -0.681732,
		31.914948, 39.531437, 51.484806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209858, 40.233021, 51.820568>,  <32.419765, 39.617626, 51.962021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209858, 40.233021, 51.820568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896126, 40.006485, 51.719311>,  <31.707886, 39.870564, 51.658554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.896126, 40.006485, 51.719311>,  <32.209858, 40.233021, 51.820568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896126, 40.006485, 51.719311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594207, 0.568683, 0.568787,
		-0.178167, 0.596538, -0.782559,
		-0.784331, -0.566341, -0.253146,
		31.660826, 39.836582, 51.643368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617437, 40.715099, 51.610718>,  <32.209858, 40.233021, 51.820568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617437, 40.715099, 51.610718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452238, 40.363407, 51.705704>,  <31.353119, 40.152393, 51.762695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452238, 40.363407, 51.705704>,  <31.617437, 40.715099, 51.610718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452238, 40.363407, 51.705704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701670, 0.473408, 0.532488,
		-0.580597, 0.053294, -0.812445,
		-0.412996, -0.879229, 0.237465,
		31.328339, 40.099640, 51.776943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902212, 40.887711, 51.817551>,  <31.617437, 40.715099, 51.610718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902212, 40.887711, 51.817551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919571, 40.512325, 51.954609>,  <30.929987, 40.287094, 52.036842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919571, 40.512325, 51.954609>,  <30.902212, 40.887711, 51.817551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919571, 40.512325, 51.954609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570680, 0.258221, 0.779516,
		-0.820025, -0.229370, -0.524356,
		0.043398, -0.938463, 0.342644,
		30.932590, 40.230785, 52.057404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240364, 40.701889, 51.982643>,  <30.902212, 40.887711, 51.817551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240364, 40.701889, 51.982643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475983, 40.453564, 52.189568>,  <30.617353, 40.304569, 52.313725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475983, 40.453564, 52.189568>,  <30.240364, 40.701889, 51.982643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475983, 40.453564, 52.189568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641742, 0.029681, 0.766346,
		-0.491113, -0.783395, -0.380920,
		0.589045, -0.620815, 0.517315,
		30.652697, 40.267319, 52.344761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831362, 40.315136, 52.307312>,  <30.240364, 40.701889, 51.982643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831362, 40.315136, 52.307312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171253, 40.284378, 52.515945>,  <30.375189, 40.265923, 52.641125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171253, 40.284378, 52.515945>,  <29.831362, 40.315136, 52.307312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171253, 40.284378, 52.515945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523207, -0.001167, 0.852205,
		-0.064926, -0.997038, -0.041226,
		0.849729, -0.076900, 0.521581,
		30.426172, 40.261307, 52.672421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635656, 39.810085, 52.809887>,  <29.831362, 40.315136, 52.307312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635656, 39.810085, 52.809887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967419, 39.983345, 52.951008>,  <30.166475, 40.087299, 53.035679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967419, 39.983345, 52.951008>,  <29.635656, 39.810085, 52.809887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967419, 39.983345, 52.951008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374049, -0.038483, 0.926610,
		0.414938, -0.900500, 0.130102,
		0.829406, 0.433150, 0.352799,
		30.216240, 40.113289, 53.056847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939909, 39.324760, 53.301723>,  <29.635656, 39.810085, 52.809887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939909, 39.324760, 53.301723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061117, 39.698586, 53.376308>,  <30.133842, 39.922882, 53.421059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061117, 39.698586, 53.376308>,  <29.939909, 39.324760, 53.301723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061117, 39.698586, 53.376308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373307, -0.063622, 0.925524,
		0.876825, -0.350059, 0.329601,
		0.303018, 0.934564, 0.186464,
		30.152023, 39.978954, 53.432247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352797, 39.208824, 53.874557>,  <29.939909, 39.324760, 53.301723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352797, 39.208824, 53.874557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.289129, 39.603241, 53.894070>,  <30.250929, 39.839893, 53.905777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.289129, 39.603241, 53.894070>,  <30.352797, 39.208824, 53.874557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289129, 39.603241, 53.894070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380642, -0.106884, 0.918525,
		0.910921, 0.127631, 0.392343,
		-0.159168, 0.986046, 0.048781,
		30.241379, 39.899055, 53.908703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585752, 39.421791, 54.500061>,  <30.352797, 39.208824, 53.874557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585752, 39.421791, 54.500061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342659, 39.728321, 54.416725>,  <30.196804, 39.912239, 54.366726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342659, 39.728321, 54.416725>,  <30.585752, 39.421791, 54.500061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342659, 39.728321, 54.416725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281238, 0.037654, 0.958899,
		0.742676, 0.641345, 0.192638,
		-0.607732, 0.766328, -0.208335,
		30.160339, 39.958218, 54.354225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673466, 39.879913, 55.035686>,  <30.585752, 39.421791, 54.500061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673466, 39.879913, 55.035686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319920, 39.981548, 54.878601>,  <30.107792, 40.042530, 54.784351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.319920, 39.981548, 54.878601>,  <30.673466, 39.879913, 55.035686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319920, 39.981548, 54.878601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377687, 0.107584, 0.919662,
		0.275927, 0.961178, 0.000877,
		-0.883865, 0.254091, -0.392710,
		30.054760, 40.057777, 54.760788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540606, 40.488167, 55.495296>,  <30.673466, 39.879913, 55.035686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540606, 40.488167, 55.495296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201820, 40.365128, 55.321842>,  <29.998549, 40.291306, 55.217770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201820, 40.365128, 55.321842>,  <30.540606, 40.488167, 55.495296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201820, 40.365128, 55.321842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504856, 0.209664, 0.837354,
		-0.166649, 0.928131, -0.332869,
		-0.846965, -0.307595, -0.433632,
		29.947731, 40.272850, 55.191753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092764, 41.101669, 55.522110>,  <30.540606, 40.488167, 55.495296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092764, 41.101669, 55.522110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899277, 40.751957, 55.505817>,  <29.783184, 40.542130, 55.496040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899277, 40.751957, 55.505817>,  <30.092764, 41.101669, 55.522110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899277, 40.751957, 55.505817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415137, 0.188216, 0.890077,
		-0.770506, 0.447454, -0.453988,
		-0.483716, -0.874277, -0.040733,
		29.754162, 40.489674, 55.493599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492249, 41.356468, 55.704273>,  <30.092764, 41.101669, 55.522110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492249, 41.356468, 55.704273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489771, 40.963600, 55.779430>,  <29.488285, 40.727879, 55.824524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489771, 40.963600, 55.779430>,  <29.492249, 41.356468, 55.704273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489771, 40.963600, 55.779430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550279, 0.160234, 0.819462,
		-0.834958, -0.098316, -0.541460,
		-0.006194, -0.982171, 0.187890,
		29.487913, 40.668949, 55.835796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730627, 41.262665, 55.812626>,  <29.492249, 41.356468, 55.704273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730627, 41.262665, 55.812626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.949564, 40.979446, 55.991104>,  <29.080927, 40.809517, 56.098190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.949564, 40.979446, 55.991104>,  <28.730627, 41.262665, 55.812626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949564, 40.979446, 55.991104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585072, 0.057502, 0.808940,
		-0.598421, -0.703825, -0.382783,
		0.547342, -0.708042, 0.446199,
		29.113766, 40.767033, 56.124966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224112, 40.706177, 55.971043>,  <28.730627, 41.262665, 55.812626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224112, 40.706177, 55.971043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551489, 40.687916, 56.200153>,  <28.747915, 40.676960, 56.337620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551489, 40.687916, 56.200153>,  <28.224112, 40.706177, 55.971043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551489, 40.687916, 56.200153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573686, -0.009078, 0.819025,
		-0.032195, -0.998916, -0.033623,
		0.818442, -0.045658, 0.572772,
		28.797022, 40.674221, 56.371986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134684, 40.127575, 56.341557>,  <28.224112, 40.706177, 55.971043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134684, 40.127575, 56.341557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.379583, 40.376953, 56.536068>,  <28.526524, 40.526581, 56.652775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.379583, 40.376953, 56.536068>,  <28.134684, 40.127575, 56.341557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379583, 40.376953, 56.536068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560248, -0.091900, 0.823211,
		0.557917, -0.776447, 0.293019,
		0.612251, 0.623446, 0.486275,
		28.563259, 40.563988, 56.681950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310202, 39.804359, 56.987617>,  <28.134684, 40.127575, 56.341557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310202, 39.804359, 56.987617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.396637, 40.192028, 57.034973>,  <28.448498, 40.424629, 57.063389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.396637, 40.192028, 57.034973>,  <28.310202, 39.804359, 56.987617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396637, 40.192028, 57.034973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616506, 0.041410, 0.786261,
		0.757117, -0.242892, 0.606447,
		0.216090, 0.969169, 0.118392,
		28.461464, 40.482780, 57.070492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119953, 39.915810, 57.663738>,  <28.310202, 39.804359, 56.987617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119953, 39.915810, 57.663738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.169531, 40.296223, 57.550480>,  <28.199278, 40.524471, 57.482525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.169531, 40.296223, 57.550480>,  <28.119953, 39.915810, 57.663738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169531, 40.296223, 57.550480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602886, 0.298814, 0.739756,
		0.788141, 0.079017, 0.610401,
		0.123943, 0.951034, -0.283146,
		28.206715, 40.581532, 57.465534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384886, 40.367062, 58.245907>,  <28.119953, 39.915810, 57.663738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384886, 40.367062, 58.245907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.188303, 40.595928, 57.983276>,  <28.070353, 40.733250, 57.825699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.188303, 40.595928, 57.983276>,  <28.384886, 40.367062, 58.245907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188303, 40.595928, 57.983276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662655, 0.243528, 0.708225,
		0.565118, 0.783147, 0.259465,
		-0.491457, 0.572166, -0.656578,
		28.040865, 40.767578, 57.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163452, 40.848827, 58.692764>,  <28.384886, 40.367062, 58.245907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163452, 40.848827, 58.692764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934761, 40.924309, 58.373386>,  <27.797546, 40.969597, 58.181759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934761, 40.924309, 58.373386>,  <28.163452, 40.848827, 58.692764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934761, 40.924309, 58.373386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738908, 0.304519, 0.601068,
		0.356568, 0.933626, -0.034666,
		-0.571730, 0.188707, -0.798445,
		27.763243, 40.980923, 58.133854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879005, 41.580616, 58.752274>,  <28.163452, 40.848827, 58.692764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879005, 41.580616, 58.752274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.640503, 41.378906, 58.502415>,  <27.497402, 41.257881, 58.352497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.640503, 41.378906, 58.502415>,  <27.879005, 41.580616, 58.752274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640503, 41.378906, 58.502415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793931, 0.255104, 0.551901,
		-0.118957, 0.825004, -0.552464,
		-0.596257, -0.504271, -0.624651,
		27.461626, 41.227623, 58.315018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336943, 41.663925, 58.896832>,  <27.879005, 41.580616, 58.752274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336943, 41.663925, 58.896832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.178951, 41.465889, 58.587284>,  <27.084156, 41.347065, 58.401554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.178951, 41.465889, 58.587284>,  <27.336943, 41.663925, 58.896832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178951, 41.465889, 58.587284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912626, 0.114834, 0.392335,
		-0.105375, 0.861218, -0.497191,
		-0.394980, -0.495092, -0.773870,
		27.060457, 41.317360, 58.355122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922184, 42.153992, 58.472687>,  <27.336943, 41.663925, 58.896832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922184, 42.153992, 58.472687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.785799, 41.778057, 58.481190>,  <26.703968, 41.552498, 58.486294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.785799, 41.778057, 58.481190>,  <26.922184, 42.153992, 58.472687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785799, 41.778057, 58.481190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881470, 0.327482, 0.340243,
		-0.326735, 0.097268, -0.940097,
		-0.340960, -0.939837, 0.021261,
		26.683512, 41.496105, 58.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261908, 42.157776, 58.114323>,  <26.922184, 42.153992, 58.472687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261908, 42.157776, 58.114323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.241301, 41.837090, 58.352512>,  <26.228935, 41.644676, 58.495426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.241301, 41.837090, 58.352512>,  <26.261908, 42.157776, 58.114323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241301, 41.837090, 58.352512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922891, 0.266058, 0.278360,
		-0.381598, -0.535220, -0.753606,
		-0.051519, -0.801718, 0.595478,
		26.225845, 41.596573, 58.531155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576902, 42.032787, 58.114738>,  <26.261908, 42.157776, 58.114323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576902, 42.032787, 58.114738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.702366, 41.799671, 58.414600>,  <25.777645, 41.659801, 58.594517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.702366, 41.799671, 58.414600>,  <25.576902, 42.032787, 58.114738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702366, 41.799671, 58.414600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865179, 0.149903, 0.478534,
		-0.391258, -0.798679, -0.457197,
		0.313660, -0.582788, 0.749651,
		25.796463, 41.624836, 58.639496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187899, 41.382599, 58.253651>,  <25.576902, 42.032787, 58.114738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187899, 41.382599, 58.253651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.360315, 41.573456, 58.559994>,  <25.463766, 41.687969, 58.743801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.360315, 41.573456, 58.559994>,  <25.187899, 41.382599, 58.253651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360315, 41.573456, 58.559994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900663, 0.279110, 0.333021,
		-0.054859, -0.833324, 0.550056,
		0.431041, 0.477146, 0.765856,
		25.489628, 41.716599, 58.789749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026646, 40.545246, 58.183975>,  <25.187899, 41.382599, 58.253651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026646, 40.545246, 58.183975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.954691, 40.159466, 58.261414>,  <24.911518, 39.927998, 58.307877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.954691, 40.159466, 58.261414>,  <25.026646, 40.545246, 58.183975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954691, 40.159466, 58.261414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547539, -0.261670, -0.794815,
		0.817216, -0.036975, 0.575144,
		-0.179886, -0.964449, 0.193595,
		24.900724, 39.870132, 58.319492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650726, 40.146919, 58.074886>,  <25.026646, 40.545246, 58.183975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650726, 40.146919, 58.074886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.377073, 39.857376, 58.039120>,  <25.212881, 39.683651, 58.017658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.377073, 39.857376, 58.039120>,  <25.650726, 40.146919, 58.074886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377073, 39.857376, 58.039120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393498, -0.263089, -0.880876,
		0.614102, -0.637823, 0.464824,
		-0.684133, -0.723855, -0.089419,
		25.171833, 39.640221, 58.012295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033482, 39.653961, 57.798790>,  <25.650726, 40.146919, 58.074886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033482, 39.653961, 57.798790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.651005, 39.563824, 57.724049>,  <25.421518, 39.509743, 57.679203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.651005, 39.563824, 57.724049>,  <26.033482, 39.653961, 57.798790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651005, 39.563824, 57.724049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247819, -0.283363, -0.926440,
		0.155820, -0.932162, 0.326794,
		-0.956194, -0.225344, -0.186854,
		25.364147, 39.496220, 57.667992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012548, 38.986973, 57.501507>,  <26.033482, 39.653961, 57.798790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012548, 38.986973, 57.501507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.656916, 39.129734, 57.386860>,  <25.443537, 39.215393, 57.318069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.656916, 39.129734, 57.386860>,  <26.012548, 38.986973, 57.501507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656916, 39.129734, 57.386860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171756, -0.320298, -0.931616,
		-0.424306, -0.877511, 0.223470,
		-0.889081, 0.356908, -0.286622,
		25.390192, 39.236805, 57.300873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614080, 38.413265, 57.192280>,  <26.012548, 38.986973, 57.501507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614080, 38.413265, 57.192280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.486275, 38.766502, 57.054840>,  <25.409592, 38.978443, 56.972374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.486275, 38.766502, 57.054840>,  <25.614080, 38.413265, 57.192280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486275, 38.766502, 57.054840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083861, -0.334835, -0.938537,
		-0.943863, -0.328692, 0.032929,
		-0.319516, 0.883089, -0.343603,
		25.390419, 39.031429, 56.951759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188675, 38.310635, 56.598042>,  <25.614080, 38.413265, 57.192280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188675, 38.310635, 56.598042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.339434, 38.680248, 56.572369>,  <25.429888, 38.902016, 56.556965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.339434, 38.680248, 56.572369>,  <25.188675, 38.310635, 56.598042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339434, 38.680248, 56.572369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131759, -0.122072, -0.983737,
		-0.916837, 0.362309, -0.167757,
		0.376895, 0.924029, -0.064183,
		25.452503, 38.957458, 56.553112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907816, 38.564808, 56.021885>,  <25.188675, 38.310635, 56.598042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907816, 38.564808, 56.021885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.216377, 38.813026, 56.078247>,  <25.401514, 38.961960, 56.112064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.216377, 38.813026, 56.078247>,  <24.907816, 38.564808, 56.021885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216377, 38.813026, 56.078247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190330, -0.013713, -0.981624,
		-0.607215, 0.784047, -0.128688,
		0.771404, 0.620550, 0.140901,
		25.447798, 38.999191, 56.120518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906822, 39.023254, 55.435562>,  <24.907816, 38.564808, 56.021885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906822, 39.023254, 55.435562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.275253, 39.101292, 55.570354>,  <25.496311, 39.148113, 55.651230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.275253, 39.101292, 55.570354>,  <24.906822, 39.023254, 55.435562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275253, 39.101292, 55.570354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310142, 0.155702, -0.937853,
		-0.235434, 0.968347, 0.082908,
		0.921077, 0.195090, 0.336983,
		25.551577, 39.159817, 55.671448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131428, 39.760067, 55.257362>,  <24.906822, 39.023254, 55.435562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131428, 39.760067, 55.257362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.477072, 39.568573, 55.319504>,  <25.684458, 39.453678, 55.356789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.477072, 39.568573, 55.319504>,  <25.131428, 39.760067, 55.257362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477072, 39.568573, 55.319504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288341, 0.217877, -0.932410,
		0.412525, 0.850498, 0.326307,
		0.864108, -0.478730, 0.155354,
		25.736303, 39.424953, 55.366112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597462, 40.137623, 54.921677>,  <25.131428, 39.760067, 55.257362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597462, 40.137623, 54.921677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.766151, 39.778206, 54.970287>,  <25.867365, 39.562557, 54.999454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.766151, 39.778206, 54.970287>,  <25.597462, 40.137623, 54.921677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766151, 39.778206, 54.970287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424765, 0.077367, -0.901992,
		0.801076, 0.432014, 0.414297,
		0.421726, -0.898542, 0.121527,
		25.892670, 39.508644, 55.006744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288818, 40.146496, 54.620110>,  <25.597462, 40.137623, 54.921677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288818, 40.146496, 54.620110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.216980, 39.753784, 54.644974>,  <26.173878, 39.518158, 54.659893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.216980, 39.753784, 54.644974>,  <26.288818, 40.146496, 54.620110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216980, 39.753784, 54.644974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385491, -0.128373, -0.913738,
		0.905065, -0.140139, 0.401520,
		-0.179595, -0.981775, 0.062163,
		26.163101, 39.459251, 54.663624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937168, 39.901134, 54.536983>,  <26.288818, 40.146496, 54.620110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937168, 39.901134, 54.536983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673393, 39.614395, 54.446419>,  <26.515129, 39.442352, 54.392078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673393, 39.614395, 54.446419>,  <26.937168, 39.901134, 54.536983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673393, 39.614395, 54.446419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515160, -0.211565, -0.830572,
		0.547496, -0.664351, 0.508808,
		-0.659437, -0.716853, -0.226416,
		26.475561, 39.399338, 54.378494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288786, 39.170132, 54.494293>,  <26.937168, 39.901134, 54.536983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288786, 39.170132, 54.494293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.971643, 39.236195, 54.259655>,  <26.781357, 39.275833, 54.118870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.971643, 39.236195, 54.259655>,  <27.288786, 39.170132, 54.494293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971643, 39.236195, 54.259655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507911, -0.352818, -0.785841,
		-0.336742, -0.921002, 0.195856,
		-0.792863, 0.165148, -0.586596,
		26.733786, 39.285744, 54.083675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249073, 38.648922, 54.200935>,  <27.288786, 39.170132, 54.494293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249073, 38.648922, 54.200935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.017347, 38.869930, 53.961231>,  <26.878311, 39.002533, 53.817410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.017347, 38.869930, 53.961231>,  <27.249073, 38.648922, 54.200935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017347, 38.869930, 53.961231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346724, -0.498329, -0.794639,
		-0.737683, -0.668125, 0.097118,
		-0.579315, 0.552519, -0.599264,
		26.843554, 39.035686, 53.781452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889681, 38.151600, 53.764263>,  <27.249073, 38.648922, 54.200935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889681, 38.151600, 53.764263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.861629, 38.508404, 53.585644>,  <26.844799, 38.722485, 53.478470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.861629, 38.508404, 53.585644>,  <26.889681, 38.151600, 53.764263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861629, 38.508404, 53.585644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381322, -0.389684, -0.838296,
		-0.921778, -0.229069, -0.312813,
		-0.070129, 0.892006, -0.446551,
		26.840591, 38.776005, 53.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716307, 37.978718, 53.090969>,  <26.889681, 38.151600, 53.764263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716307, 37.978718, 53.090969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.841444, 38.357372, 53.059952>,  <26.916527, 38.584564, 53.041340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.841444, 38.357372, 53.059952>,  <26.716307, 37.978718, 53.090969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841444, 38.357372, 53.059952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638680, -0.270091, -0.720513,
		-0.703005, 0.175883, -0.689093,
		0.312844, 0.946634, -0.077542,
		26.935297, 38.641361, 53.036690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795803, 38.109314, 52.353561>,  <26.716307, 37.978718, 53.090969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795803, 38.109314, 52.353561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.027613, 38.390648, 52.518227>,  <27.166698, 38.559448, 52.617027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.027613, 38.390648, 52.518227>,  <26.795803, 38.109314, 52.353561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027613, 38.390648, 52.518227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630477, -0.066860, -0.773323,
		-0.516383, 0.707705, -0.482185,
		0.579523, 0.703337, 0.411667,
		27.201469, 38.601650, 52.641727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028862, 38.517776, 51.723423>,  <26.795803, 38.109314, 52.353561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028862, 38.517776, 51.723423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.263327, 38.575600, 52.042301>,  <27.404005, 38.610294, 52.233627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.263327, 38.575600, 52.042301>,  <27.028862, 38.517776, 51.723423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263327, 38.575600, 52.042301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809570, -0.065830, -0.583321,
		-0.031845, 0.987304, -0.155617,
		0.586159, 0.144559, 0.797195,
		27.439175, 38.618969, 52.281460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602694, 38.821915, 51.371872>,  <27.028862, 38.517776, 51.723423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602694, 38.821915, 51.371872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742676, 38.716106, 51.731331>,  <27.826666, 38.652622, 51.947006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742676, 38.716106, 51.731331>,  <27.602694, 38.821915, 51.371872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742676, 38.716106, 51.731331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936621, 0.081948, -0.340625,
		0.016460, 0.960892, 0.276434,
		0.349957, -0.264520, 0.898643,
		27.847664, 38.636749, 52.000923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031471, 39.347694, 51.563484>,  <27.602694, 38.821915, 51.371872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031471, 39.347694, 51.563484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.108343, 38.998859, 51.743500>,  <28.154467, 38.789558, 51.851509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.108343, 38.998859, 51.743500>,  <28.031471, 39.347694, 51.563484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108343, 38.998859, 51.743500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947718, 0.045884, -0.315792,
		0.254748, 0.487200, 0.835308,
		0.192181, -0.872084, 0.450039,
		28.165997, 38.737232, 51.878513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701262, 39.400829, 51.689919>,  <28.031471, 39.347694, 51.563484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701262, 39.400829, 51.689919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610605, 39.014713, 51.741852>,  <28.556211, 38.783043, 51.773010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610605, 39.014713, 51.741852>,  <28.701262, 39.400829, 51.689919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610605, 39.014713, 51.741852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877143, -0.260231, -0.403608,
		0.423384, 0.022410, 0.905673,
		-0.226640, -0.965286, 0.129834,
		28.542614, 38.725128, 51.780804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301329, 39.129353, 51.968315>,  <28.701262, 39.400829, 51.689919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301329, 39.129353, 51.968315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.093004, 38.857880, 51.761185>,  <28.968010, 38.694996, 51.636906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.093004, 38.857880, 51.761185>,  <29.301329, 39.129353, 51.968315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093004, 38.857880, 51.761185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838415, -0.292489, -0.459903,
		0.160670, -0.673675, 0.721351,
		-0.520812, -0.678684, -0.517825,
		28.936760, 38.654274, 51.605839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728109, 38.582561, 52.056103>,  <29.301329, 39.129353, 51.968315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728109, 38.582561, 52.056103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.483774, 38.506489, 51.748672>,  <29.337173, 38.460846, 51.564213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.483774, 38.506489, 51.748672>,  <29.728109, 38.582561, 52.056103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483774, 38.506489, 51.748672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768546, -0.375744, -0.517835,
		-0.190305, -0.906999, 0.375681,
		-0.610836, -0.190182, -0.768577,
		29.300524, 38.449436, 51.518101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959785, 37.929451, 51.846340>,  <29.728109, 38.582561, 52.056103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959785, 37.929451, 51.846340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.739225, 38.061214, 51.539761>,  <29.606890, 38.140274, 51.355812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.739225, 38.061214, 51.539761>,  <29.959785, 37.929451, 51.846340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739225, 38.061214, 51.539761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743429, -0.222818, -0.630607,
		-0.378509, -0.917518, -0.122033,
		-0.551402, 0.329413, -0.766448,
		29.573805, 38.160038, 51.309826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938406, 37.358673, 51.322254>,  <29.959785, 37.929451, 51.846340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938406, 37.358673, 51.322254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848314, 37.696239, 51.127495>,  <29.794258, 37.898781, 51.010639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848314, 37.696239, 51.127495>,  <29.938406, 37.358673, 51.322254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848314, 37.696239, 51.127495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573115, -0.289377, -0.766681,
		-0.787915, -0.451729, -0.418487,
		-0.225232, 0.843921, -0.486897,
		29.780745, 37.949417, 50.981426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739668, 37.129230, 50.704880>,  <29.938406, 37.358673, 51.322254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739668, 37.129230, 50.704880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829012, 37.512798, 50.634922>,  <29.882618, 37.742939, 50.592949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829012, 37.512798, 50.634922>,  <29.739668, 37.129230, 50.704880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829012, 37.512798, 50.634922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403465, -0.254287, -0.878951,
		-0.887314, 0.125761, -0.443687,
		0.223361, 0.958917, -0.174892,
		29.896021, 37.800472, 50.582455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518444, 37.306816, 50.018738>,  <29.739668, 37.129230, 50.704880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518444, 37.306816, 50.018738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813856, 37.566853, 50.090244>,  <29.991104, 37.722874, 50.133148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813856, 37.566853, 50.090244>,  <29.518444, 37.306816, 50.018738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813856, 37.566853, 50.090244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377042, -0.178414, -0.908850,
		-0.558937, 0.738617, -0.376875,
		0.738531, 0.650087, 0.178768,
		30.035416, 37.761879, 50.143875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648026, 37.634876, 49.415531>,  <29.518444, 37.306816, 50.018738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648026, 37.634876, 49.415531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995693, 37.659576, 49.611790>,  <30.204294, 37.674397, 49.729546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.995693, 37.659576, 49.611790>,  <29.648026, 37.634876, 49.415531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995693, 37.659576, 49.611790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490562, -0.232825, -0.839727,
		0.062383, 0.970557, -0.232655,
		0.869170, 0.061747, 0.490642,
		30.256445, 37.678101, 49.758984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066006, 37.964066, 48.944698>,  <29.648026, 37.634876, 49.415531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066006, 37.964066, 48.944698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.305422, 37.786602, 49.211506>,  <30.449072, 37.680122, 49.371590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.305422, 37.786602, 49.211506>,  <30.066006, 37.964066, 48.944698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305422, 37.786602, 49.211506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426590, -0.528247, -0.734151,
		0.678065, 0.723962, -0.126915,
		0.598539, -0.443661, 0.667020,
		30.484983, 37.653503, 49.411613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742117, 37.942730, 48.624886>,  <30.066006, 37.964066, 48.944698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742117, 37.942730, 48.624886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734596, 37.674084, 48.921150>,  <30.730083, 37.512894, 49.098907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734596, 37.674084, 48.921150>,  <30.742117, 37.942730, 48.624886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734596, 37.674084, 48.921150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541146, -0.629741, -0.557303,
		0.840718, 0.390328, 0.375282,
		-0.018800, -0.671617, 0.740660,
		30.728956, 37.472599, 49.143349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412527, 37.715591, 48.636765>,  <30.742117, 37.942730, 48.624886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412527, 37.715591, 48.636765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.221193, 37.425011, 48.834129>,  <31.106394, 37.250660, 48.952549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.221193, 37.425011, 48.834129>,  <31.412527, 37.715591, 48.636765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221193, 37.425011, 48.834129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552744, -0.685660, -0.473650,
		0.682401, 0.046170, 0.729519,
		-0.478334, -0.726456, 0.493415,
		31.077694, 37.207073, 48.982155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887102, 37.236320, 48.906994>,  <31.412527, 37.715591, 48.636765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887102, 37.236320, 48.906994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544905, 37.031948, 48.873348>,  <31.339586, 36.909325, 48.853161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544905, 37.031948, 48.873348>,  <31.887102, 37.236320, 48.906994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544905, 37.031948, 48.873348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501077, -0.775893, -0.383292,
		0.130573, -0.370052, 0.919789,
		-0.855495, -0.510933, -0.084114,
		31.288256, 36.878670, 48.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061100, 36.501431, 48.988430>,  <31.887102, 37.236320, 48.906994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061100, 36.501431, 48.988430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688616, 36.461910, 48.848091>,  <31.465126, 36.438198, 48.763889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688616, 36.461910, 48.848091>,  <32.061100, 36.501431, 48.988430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688616, 36.461910, 48.848091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242202, -0.887047, -0.393047,
		-0.272381, -0.450983, 0.849955,
		-0.931207, -0.098802, -0.350843,
		31.409254, 36.432270, 48.742840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930401, 35.837521, 49.112782>,  <32.061100, 36.501431, 48.988430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930401, 35.837521, 49.112782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674175, 35.950024, 48.826965>,  <31.520439, 36.017525, 48.655476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674175, 35.950024, 48.826965>,  <31.930401, 35.837521, 49.112782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674175, 35.950024, 48.826965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261081, -0.795310, -0.547101,
		-0.722159, -0.537007, 0.436016,
		-0.640565, 0.281258, -0.714542,
		31.482006, 36.034401, 48.612602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717863, 35.221397, 48.819221>,  <31.930401, 35.837521, 49.112782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717863, 35.221397, 48.819221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579823, 35.463776, 48.532520>,  <31.496998, 35.609203, 48.360500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579823, 35.463776, 48.532520>,  <31.717863, 35.221397, 48.819221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579823, 35.463776, 48.532520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038720, -0.753822, -0.655936,
		-0.937766, -0.254118, 0.236684,
		-0.345103, 0.605950, -0.716749,
		31.476292, 35.645561, 48.317497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130337, 34.846405, 48.456642>,  <31.717863, 35.221397, 48.819221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130337, 34.846405, 48.456642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271248, 35.128769, 48.210850>,  <31.355795, 35.298187, 48.063374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271248, 35.128769, 48.210850>,  <31.130337, 34.846405, 48.456642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271248, 35.128769, 48.210850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294525, -0.706834, -0.643148,
		-0.888343, 0.045586, -0.456911,
		0.352279, 0.705909, -0.614485,
		31.376932, 35.340542, 48.026505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953646, 34.617161, 47.918072>,  <31.130337, 34.846405, 48.456642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953646, 34.617161, 47.918072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.231619, 34.877644, 47.796093>,  <31.398403, 35.033936, 47.722904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.231619, 34.877644, 47.796093>,  <30.953646, 34.617161, 47.918072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231619, 34.877644, 47.796093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252562, -0.618114, -0.744411,
		-0.673261, 0.440297, -0.594019,
		0.694933, 0.651209, -0.304950,
		31.440100, 35.073006, 47.704609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773321, 34.824100, 47.263321>,  <30.953646, 34.617161, 47.918072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773321, 34.824100, 47.263321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165518, 34.896763, 47.293358>,  <31.400835, 34.940361, 47.311378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165518, 34.896763, 47.293358>,  <30.773321, 34.824100, 47.263321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165518, 34.896763, 47.293358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181945, -0.694180, -0.696427,
		-0.074379, 0.696504, -0.713688,
		0.980492, 0.181652, 0.075093,
		31.459665, 34.951260, 47.315887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101461, 34.794205, 46.541790>,  <30.773321, 34.824100, 47.263321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101461, 34.794205, 46.541790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392611, 34.729530, 46.808342>,  <31.567301, 34.690727, 46.968273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392611, 34.729530, 46.808342>,  <31.101461, 34.794205, 46.541790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392611, 34.729530, 46.808342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292005, -0.806199, -0.514564,
		0.620430, 0.569123, -0.539598,
		0.727874, -0.161686, 0.666377,
		31.610973, 34.681026, 47.008255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719681, 34.680851, 46.093960>,  <31.101461, 34.794205, 46.541790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719681, 34.680851, 46.093960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812729, 34.534859, 46.454556>,  <31.868559, 34.447266, 46.670914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812729, 34.534859, 46.454556>,  <31.719681, 34.680851, 46.093960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812729, 34.534859, 46.454556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551209, -0.714196, -0.431384,
		0.801284, 0.597257, 0.035041,
		0.232621, -0.364976, 0.901488,
		31.882515, 34.425365, 46.725002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385433, 34.636471, 46.011162>,  <31.719681, 34.680851, 46.093960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385433, 34.636471, 46.011162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287491, 34.372025, 46.294842>,  <32.228725, 34.213356, 46.465050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287491, 34.372025, 46.294842>,  <32.385433, 34.636471, 46.011162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287491, 34.372025, 46.294842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511649, -0.709433, -0.484686,
		0.823566, 0.244184, 0.511970,
		-0.244856, -0.661120, 0.709201,
		32.214035, 34.173687, 46.507603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010780, 34.374359, 46.454708>,  <32.385433, 34.636471, 46.011162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010780, 34.374359, 46.454708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710773, 34.113102, 46.412971>,  <32.530769, 33.956348, 46.387928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710773, 34.113102, 46.412971>,  <33.010780, 34.374359, 46.454708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710773, 34.113102, 46.412971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632081, -0.661301, -0.403925,
		0.194816, -0.368903, 0.908822,
		-0.750014, -0.653140, -0.104345,
		32.485771, 33.917160, 46.381668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110737, 33.672653, 46.016495>,  <33.010780, 34.374359, 46.454708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110737, 33.672653, 46.016495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460693, 33.501114, 46.106518>,  <33.670670, 33.398190, 46.160530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460693, 33.501114, 46.106518>,  <33.110737, 33.672653, 46.016495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460693, 33.501114, 46.106518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243628, 0.011916, 0.969795,
		-0.418574, -0.903299, -0.094053,
		0.874895, -0.428845, 0.225057,
		33.723164, 33.372459, 46.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953579, 33.250549, 46.672112>,  <33.110737, 33.672653, 46.016495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953579, 33.250549, 46.672112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352882, 33.274075, 46.670277>,  <33.592464, 33.288189, 46.669174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352882, 33.274075, 46.670277>,  <32.953579, 33.250549, 46.672112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352882, 33.274075, 46.670277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007184, -0.044003, 0.999006,
		0.058552, -0.997299, -0.044349,
		0.998258, 0.058813, -0.004588,
		33.652359, 33.291718, 46.668900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246063, 32.586449, 46.978390>,  <32.953579, 33.250549, 46.672112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246063, 32.586449, 46.978390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435509, 32.938595, 46.988522>,  <33.549175, 33.149883, 46.994602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435509, 32.938595, 46.988522>,  <33.246063, 32.586449, 46.978390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435509, 32.938595, 46.988522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084121, -0.073847, 0.993715,
		0.876705, -0.468509, -0.109032,
		0.473616, 0.880367, 0.025331,
		33.577595, 33.202705, 46.996120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880352, 32.550617, 47.348103>,  <33.246063, 32.586449, 46.978390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880352, 32.550617, 47.348103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756126, 32.929909, 47.374641>,  <33.681591, 33.157486, 47.390564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756126, 32.929909, 47.374641>,  <33.880352, 32.550617, 47.348103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756126, 32.929909, 47.374641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014402, -0.065102, 0.997775,
		0.950443, 0.310831, 0.006562,
		-0.310566, 0.948233, 0.066352,
		33.662956, 33.214378, 47.394547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539948, 32.482395, 46.994499>,  <33.880352, 32.550617, 47.348103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539948, 32.482395, 46.994499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817261, 32.762344, 47.063248>,  <34.983650, 32.930313, 47.104496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817261, 32.762344, 47.063248>,  <34.539948, 32.482395, 46.994499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817261, 32.762344, 47.063248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665977, -0.713316, 0.218300,
		0.275381, -0.036881, -0.960627,
		0.693282, 0.699872, 0.171872,
		35.025246, 32.972305, 47.114811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230301, 32.261078, 46.689053>,  <34.539948, 32.482395, 46.994499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230301, 32.261078, 46.689053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294994, 32.537807, 46.970539>,  <35.333809, 32.703846, 47.139431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294994, 32.537807, 46.970539>,  <35.230301, 32.261078, 46.689053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294994, 32.537807, 46.970539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732918, -0.561725, 0.383792,
		0.660813, 0.453697, -0.597901,
		0.161731, 0.691827, 0.703718,
		35.343513, 32.745354, 47.181656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976177, 32.314068, 46.761543>,  <35.230301, 32.261078, 46.689053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976177, 32.314068, 46.761543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810390, 32.475410, 47.087864>,  <35.710918, 32.572216, 47.283657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810390, 32.475410, 47.087864>,  <35.976177, 32.314068, 46.761543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810390, 32.475410, 47.087864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672654, -0.468021, 0.573143,
		0.612991, 0.786295, -0.077342,
		-0.414462, 0.403356, 0.815797,
		35.686050, 32.596416, 47.332603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538372, 32.434570, 47.180183>,  <35.976177, 32.314068, 46.761543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538372, 32.434570, 47.180183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231789, 32.454689, 47.436314>,  <36.047840, 32.466763, 47.589993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231789, 32.454689, 47.436314>,  <36.538372, 32.434570, 47.180183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231789, 32.454689, 47.436314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628293, -0.148345, 0.763703,
		0.133403, 0.987656, 0.082097,
		-0.766454, 0.050299, 0.640326,
		36.001854, 32.469780, 47.628410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749977, 32.820522, 47.719795>,  <36.538372, 32.434570, 47.180183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749977, 32.820522, 47.719795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455719, 32.602253, 47.880325>,  <36.279163, 32.471291, 47.976643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455719, 32.602253, 47.880325>,  <36.749977, 32.820522, 47.719795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455719, 32.602253, 47.880325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603648, -0.259339, 0.753892,
		-0.307302, 0.796857, 0.520178,
		-0.735646, -0.545677, 0.401325,
		36.235023, 32.438549, 48.000725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716614, 33.030598, 48.368996>,  <36.749977, 32.820522, 47.719795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716614, 33.030598, 48.368996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551983, 32.666523, 48.387630>,  <36.453205, 32.448078, 48.398811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551983, 32.666523, 48.387630>,  <36.716614, 33.030598, 48.368996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551983, 32.666523, 48.387630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504365, -0.184895, 0.843463,
		-0.759093, 0.370645, 0.535163,
		-0.411574, -0.910185, 0.046588,
		36.428513, 32.393467, 48.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470142, 32.885315, 49.052956>,  <36.716614, 33.030598, 48.368996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470142, 32.885315, 49.052956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530022, 32.526196, 48.887283>,  <36.565948, 32.310722, 48.787880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530022, 32.526196, 48.887283>,  <36.470142, 32.885315, 49.052956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530022, 32.526196, 48.887283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552789, -0.271315, 0.787916,
		-0.819766, -0.346900, 0.455681,
		0.149695, -0.897802, -0.414178,
		36.574932, 32.256855, 48.763031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357906, 32.485825, 49.616726>,  <36.470142, 32.885315, 49.052956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357906, 32.485825, 49.616726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525143, 32.233974, 49.354801>,  <36.625484, 32.082867, 49.197647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525143, 32.233974, 49.354801>,  <36.357906, 32.485825, 49.616726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525143, 32.233974, 49.354801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637012, -0.310692, 0.705468,
		-0.647623, -0.712071, 0.271181,
		0.418090, -0.629623, -0.654809,
		36.650570, 32.045086, 49.158360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370960, 31.904802, 49.972641>,  <36.357906, 32.485825, 49.616726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370960, 31.904802, 49.972641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661846, 31.868177, 49.700531>,  <36.836376, 31.846203, 49.537266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661846, 31.868177, 49.700531>,  <36.370960, 31.904802, 49.972641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661846, 31.868177, 49.700531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650623, -0.223885, 0.725648,
		-0.218753, -0.970304, -0.103233,
		0.727212, -0.091572, -0.680278,
		36.880009, 31.840710, 49.496449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832340, 31.584087, 50.321884>,  <36.370960, 31.904802, 49.972641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832340, 31.584087, 50.321884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065685, 31.680182, 50.011536>,  <37.205692, 31.737839, 49.825325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.065685, 31.680182, 50.011536>,  <36.832340, 31.584087, 50.321884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065685, 31.680182, 50.011536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809517, -0.094191, 0.579492,
		0.066135, -0.966134, -0.249423,
		0.583360, 0.240236, -0.775872,
		37.240692, 31.752253, 49.778774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343277, 31.227882, 50.580376>,  <36.832340, 31.584087, 50.321884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343277, 31.227882, 50.580376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486084, 31.456102, 50.284534>,  <37.571766, 31.593035, 50.107029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486084, 31.456102, 50.284534>,  <37.343277, 31.227882, 50.580376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486084, 31.456102, 50.284534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886071, 0.043765, 0.461479,
		0.295666, -0.820095, -0.489925,
		0.357015, 0.570551, -0.739602,
		37.593189, 31.627268, 50.062653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031712, 30.993231, 50.306911>,  <37.343277, 31.227882, 50.580376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031712, 30.993231, 50.306911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033337, 31.383585, 50.219616>,  <38.034313, 31.617798, 50.167240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033337, 31.383585, 50.219616>,  <38.031712, 30.993231, 50.306911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033337, 31.383585, 50.219616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893318, 0.094536, 0.439370,
		0.449407, -0.196739, -0.871394,
		0.004063, 0.975888, -0.218235,
		38.034557, 31.676352, 50.154144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520760, 31.303602, 49.744080>,  <38.031712, 30.993231, 50.306911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520760, 31.303602, 49.744080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454422, 31.556385, 50.046902>,  <38.414619, 31.708054, 50.228596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454422, 31.556385, 50.046902>,  <38.520760, 31.303602, 49.744080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454422, 31.556385, 50.046902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957886, -0.079254, 0.275995,
		0.234416, 0.770942, -0.592197,
		-0.165843, 0.631955, 0.757053,
		38.404671, 31.745972, 50.274017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125580, 30.916712, 49.898605>,  <38.520760, 31.303602, 49.744080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125580, 30.916712, 49.898605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354492, 31.062613, 49.604816>,  <39.491840, 31.150152, 49.428543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354492, 31.062613, 49.604816>,  <39.125580, 30.916712, 49.898605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354492, 31.062613, 49.604816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258801, 0.769534, 0.583814,
		0.778152, -0.524187, 0.345988,
		0.572277, 0.364754, -0.734475,
		39.526176, 31.172039, 49.384476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756508, 30.949448, 50.199142>,  <39.125580, 30.916712, 49.898605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756508, 30.949448, 50.199142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745533, 31.191702, 49.881035>,  <39.738949, 31.337055, 49.690170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745533, 31.191702, 49.881035>,  <39.756508, 30.949448, 50.199142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745533, 31.191702, 49.881035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183737, 0.785070, 0.591529,
		0.982592, -0.129890, -0.132818,
		-0.027438, 0.605635, -0.795269,
		39.737301, 31.373392, 49.642452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075169, 30.298958, 50.238640>,  <39.756508, 30.949448, 50.199142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075169, 30.298958, 50.238640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.386715, 30.147875, 50.038357>,  <40.573643, 30.057224, 49.918186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.386715, 30.147875, 50.038357>,  <40.075169, 30.298958, 50.238640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386715, 30.147875, 50.038357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412846, 0.292242, -0.862643,
		0.472155, 0.878596, 0.071682,
		0.778863, -0.377708, -0.500708,
		40.620373, 30.034563, 49.888145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454525, 30.889261, 49.887550>,  <40.075169, 30.298958, 50.238640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454525, 30.889261, 49.887550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446247, 30.522388, 49.728378>,  <40.441280, 30.302265, 49.632874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446247, 30.522388, 49.728378>,  <40.454525, 30.889261, 49.887550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446247, 30.522388, 49.728378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604442, 0.328520, -0.725758,
		0.796380, 0.225507, -0.561182,
		-0.020696, -0.917181, -0.397933,
		40.440037, 30.247234, 49.608997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311951, 31.065348, 49.234169>,  <40.454525, 30.889261, 49.887550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311951, 31.065348, 49.234169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.225201, 30.675838, 49.206654>,  <40.173149, 30.442133, 49.190144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.225201, 30.675838, 49.206654>,  <40.311951, 31.065348, 49.234169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225201, 30.675838, 49.206654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524837, 0.175722, -0.832867,
		0.823110, -0.144529, -0.549183,
		-0.216877, -0.973773, -0.068784,
		40.160137, 30.383707, 49.186020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180882, 31.031609, 48.589897>,  <40.311951, 31.065348, 49.234169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180882, 31.031609, 48.589897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076576, 30.666639, 48.716064>,  <40.013992, 30.447657, 48.791763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076576, 30.666639, 48.716064>,  <40.180882, 31.031609, 48.589897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076576, 30.666639, 48.716064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221071, -0.261601, -0.939517,
		0.939751, -0.314717, -0.133496,
		-0.260760, -0.912424, 0.315414,
		39.998348, 30.392912, 48.810688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908276, 31.012728, 48.834686>,  <40.180882, 31.031609, 48.589897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908276, 31.012728, 48.834686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.653286, 30.714270, 48.911514>,  <40.500290, 30.535194, 48.957611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.653286, 30.714270, 48.911514>,  <40.908276, 31.012728, 48.834686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653286, 30.714270, 48.911514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270962, 0.016251, 0.962453,
		-0.721251, 0.665585, 0.191817,
		-0.637477, -0.746145, 0.192070,
		40.462044, 30.490427, 48.969135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943882, 30.743996, 48.163120>,  <40.908276, 31.012728, 48.834686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943882, 30.743996, 48.163120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.888409, 30.349142, 48.194962>,  <40.855125, 30.112230, 48.214066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.888409, 30.349142, 48.194962>,  <40.943882, 30.743996, 48.163120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888409, 30.349142, 48.194962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031588, -0.084747, -0.995902,
		0.989833, -0.135601, 0.042935,
		-0.138684, -0.987132, 0.079602,
		40.846802, 30.053001, 48.218842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227032, 30.500666, 47.569386>,  <40.943882, 30.743996, 48.163120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227032, 30.500666, 47.569386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957184, 30.226936, 47.680084>,  <40.795277, 30.062698, 47.746506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957184, 30.226936, 47.680084>,  <41.227032, 30.500666, 47.569386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957184, 30.226936, 47.680084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080268, -0.440698, -0.894059,
		0.733788, -0.580936, 0.352233,
		-0.674620, -0.684323, 0.276749,
		40.754799, 30.021639, 47.763107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588211, 30.099396, 47.112453>,  <41.227032, 30.500666, 47.569386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588211, 30.099396, 47.112453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366123, 30.023226, 46.788609>,  <41.232868, 29.977524, 46.594303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366123, 30.023226, 46.788609>,  <41.588211, 30.099396, 47.112453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366123, 30.023226, 46.788609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734038, 0.345491, -0.584657,
		0.391044, -0.918899, -0.052047,
		-0.555223, -0.190423, -0.809609,
		41.199558, 29.966099, 46.545727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913410, 29.638876, 46.605183>,  <41.588211, 30.099396, 47.112453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913410, 29.638876, 46.605183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.684776, 29.901823, 46.408749>,  <41.547596, 30.059591, 46.290890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.684776, 29.901823, 46.408749>,  <41.913410, 29.638876, 46.605183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684776, 29.901823, 46.408749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748251, 0.171937, -0.640749,
		-0.336774, -0.733691, -0.590154,
		-0.571581, 0.657370, -0.491081,
		41.513302, 30.099033, 46.261425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648670, 29.411917, 45.927547>,  <41.913410, 29.638876, 46.605183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648670, 29.411917, 45.927547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.705898, 29.805685, 45.968430>,  <41.740234, 30.041946, 45.992958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.705898, 29.805685, 45.968430>,  <41.648670, 29.411917, 45.927547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705898, 29.805685, 45.968430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559123, 0.004822, -0.829071,
		-0.816648, 0.175759, -0.549723,
		0.143066, 0.984421, 0.102208,
		41.748817, 30.101011, 45.999092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510838, 29.822208, 45.295307>,  <41.648670, 29.411917, 45.927547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510838, 29.822208, 45.295307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794014, 30.006037, 45.509827>,  <41.963921, 30.116333, 45.638538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.794014, 30.006037, 45.509827>,  <41.510838, 29.822208, 45.295307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794014, 30.006037, 45.509827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631476, -0.071787, -0.772065,
		-0.316318, 0.885236, -0.341028,
		0.707942, 0.459569, 0.536298,
		42.006397, 30.143908, 45.670715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719067, 30.419659, 44.880901>,  <41.510838, 29.822208, 45.295307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719067, 30.419659, 44.880901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021282, 30.264433, 45.092018>,  <42.202610, 30.171297, 45.218689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021282, 30.264433, 45.092018>,  <41.719067, 30.419659, 44.880901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021282, 30.264433, 45.092018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611589, 0.129099, -0.780572,
		0.234774, 0.912546, 0.334874,
		0.755540, -0.388064, 0.527794,
		42.247944, 30.148014, 45.250355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204231, 30.931713, 44.769531>,  <41.719067, 30.419659, 44.880901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204231, 30.931713, 44.769531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.371647, 30.589384, 44.891121>,  <42.472095, 30.383987, 44.964073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.371647, 30.589384, 44.891121>,  <42.204231, 30.931713, 44.769531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371647, 30.589384, 44.891121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688848, 0.081017, -0.720364,
		0.591875, 0.510889, 0.623439,
		0.418535, -0.855820, 0.303973,
		42.497208, 30.332638, 44.982311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914688, 31.010586, 44.817783>,  <42.204231, 30.931713, 44.769531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914688, 31.010586, 44.817783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906742, 30.612547, 44.779030>,  <42.901974, 30.373724, 44.755779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906742, 30.612547, 44.779030>,  <42.914688, 31.010586, 44.817783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906742, 30.612547, 44.779030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782047, 0.044909, -0.621600,
		0.622903, -0.088112, 0.777321,
		-0.019862, -0.995098, -0.096882,
		42.900784, 30.314018, 44.749966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611946, 30.666826, 44.946659>,  <42.914688, 31.010586, 44.817783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611946, 30.666826, 44.946659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.404823, 30.446564, 44.684772>,  <43.280552, 30.314405, 44.527641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.404823, 30.446564, 44.684772>,  <43.611946, 30.666826, 44.946659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404823, 30.446564, 44.684772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830794, -0.141085, -0.538401,
		0.204104, -0.822722, 0.530537,
		-0.517805, -0.550657, -0.654717,
		43.249481, 30.281366, 44.488358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043289, 30.004650, 44.815975>,  <43.611946, 30.666826, 44.946659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043289, 30.004650, 44.815975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.811829, 30.111181, 44.507629>,  <43.672951, 30.175100, 44.322624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.811829, 30.111181, 44.507629>,  <44.043289, 30.004650, 44.815975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811829, 30.111181, 44.507629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752976, -0.188685, -0.630417,
		-0.313348, -0.945234, -0.091356,
		-0.578654, 0.266328, -0.770862,
		43.638233, 30.191080, 44.276371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069462, 29.359436, 44.293911>,  <44.043289, 30.004650, 44.815975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069462, 29.359436, 44.293911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.010204, 29.738647, 44.181274>,  <43.974648, 29.966173, 44.113693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.010204, 29.738647, 44.181274>,  <44.069462, 29.359436, 44.293911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010204, 29.738647, 44.181274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938526, 0.044999, -0.342264,
		-0.311804, -0.314990, -0.896415,
		-0.148148, 0.948028, -0.281595,
		43.965759, 30.023056, 44.096794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382107, 29.441444, 43.607124>,  <44.069462, 29.359436, 44.293911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382107, 29.441444, 43.607124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335049, 29.821444, 43.722824>,  <44.306812, 30.049442, 43.792244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335049, 29.821444, 43.722824>,  <44.382107, 29.441444, 43.607124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335049, 29.821444, 43.722824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942368, 0.198669, -0.269208,
		-0.313213, 0.240911, -0.918618,
		-0.117646, 0.949996, 0.289253,
		44.299755, 30.106441, 43.809601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378708, 29.969412, 43.104042>,  <44.382107, 29.441444, 43.607124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378708, 29.969412, 43.104042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.545319, 30.114359, 43.437553>,  <44.645287, 30.201328, 43.637661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.545319, 30.114359, 43.437553>,  <44.378708, 29.969412, 43.104042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545319, 30.114359, 43.437553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850816, 0.167780, -0.497958,
		-0.320337, 0.916809, -0.238424,
		0.416529, 0.362369, 0.833782,
		44.670277, 30.223070, 43.687687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894073, 30.485216, 42.786472>,  <44.378708, 29.969412, 43.104042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894073, 30.485216, 42.786472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.999969, 30.396559, 43.161873>,  <45.063507, 30.343365, 43.387112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.999969, 30.396559, 43.161873>,  <44.894073, 30.485216, 42.786472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999969, 30.396559, 43.161873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934286, -0.182042, -0.306546,
		0.238791, 0.957984, 0.158885,
		0.264743, -0.221645, 0.938501,
		45.079391, 30.330065, 43.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349174, 29.999851, 42.414055>,  <44.894073, 30.485216, 42.786472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349174, 29.999851, 42.414055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.529182, 30.354664, 42.372753>,  <45.637188, 30.567551, 42.347973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.529182, 30.354664, 42.372753>,  <45.349174, 29.999851, 42.414055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529182, 30.354664, 42.372753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652686, -0.405618, -0.639903,
		-0.609495, 0.220575, -0.761487,
		0.450019, 0.887029, -0.103256,
		45.664188, 30.620773, 42.341778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323200, 30.281509, 41.736416>,  <45.349174, 29.999851, 42.414055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323200, 30.281509, 41.736416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.654324, 30.371225, 41.942104>,  <45.852997, 30.425055, 42.065517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.654324, 30.371225, 41.942104>,  <45.323200, 30.281509, 41.736416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654324, 30.371225, 41.942104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542491, -0.553583, -0.631862,
		0.142942, 0.802022, -0.579938,
		0.827811, 0.224292, 0.514220,
		45.902668, 30.438513, 42.096371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807228, 30.759541, 41.434879>,  <45.323200, 30.281509, 41.736416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807228, 30.759541, 41.434879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.034534, 30.505814, 41.644531>,  <46.170918, 30.353577, 41.770325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.034534, 30.505814, 41.644531>,  <45.807228, 30.759541, 41.434879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034534, 30.505814, 41.644531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581699, -0.140833, -0.801119,
		0.581980, 0.760135, 0.288952,
		0.568265, -0.634319, 0.524133,
		46.205013, 30.315517, 41.801769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468449, 30.970179, 41.481121>,  <45.807228, 30.759541, 41.434879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468449, 30.970179, 41.481121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.481182, 30.571682, 41.513348>,  <46.488823, 30.332584, 41.532684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.481182, 30.571682, 41.513348>,  <46.468449, 30.970179, 41.481121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481182, 30.571682, 41.513348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601604, -0.045274, -0.797511,
		0.798160, 0.073855, 0.597901,
		0.031830, -0.996241, 0.080567,
		46.490730, 30.272810, 41.537518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372845, 31.637060, 41.465275>,  <46.468449, 30.970179, 41.481121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372845, 31.637060, 41.465275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.987606, 31.634182, 41.572903>,  <45.756462, 31.632456, 41.637482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.987606, 31.634182, 41.572903>,  <46.372845, 31.637060, 41.465275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987606, 31.634182, 41.572903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018514, 0.995505, 0.092886,
		-0.268532, 0.094439, -0.958630,
		-0.963093, -0.007195, 0.269073,
		45.698677, 31.632023, 41.653625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058743, 31.790257, 40.867916>,  <46.372845, 31.637060, 41.465275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058743, 31.790257, 40.867916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.138218, 32.175205, 40.942070>,  <46.185902, 32.406174, 40.986561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.138218, 32.175205, 40.942070>,  <46.058743, 31.790257, 40.867916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138218, 32.175205, 40.942070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077683, 0.173093, -0.981837,
		-0.976980, 0.209478, -0.040369,
		0.198686, 0.962371, 0.185381,
		46.197823, 32.463917, 40.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574104, 32.270596, 40.495899>,  <46.058743, 31.790257, 40.867916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574104, 32.270596, 40.495899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.940575, 32.411083, 40.573112>,  <46.160458, 32.495377, 40.619442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.940575, 32.411083, 40.573112>,  <45.574104, 32.270596, 40.495899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940575, 32.411083, 40.573112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117234, 0.225721, -0.967112,
		-0.383244, 0.908676, 0.165625,
		0.916177, 0.351223, 0.193034,
		46.215427, 32.516449, 40.631023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812122, 33.029667, 40.307758>,  <45.574104, 32.270596, 40.495899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812122, 33.029667, 40.307758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.061947, 32.721485, 40.256649>,  <46.211842, 32.536575, 40.225983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.061947, 32.721485, 40.256649>,  <45.812122, 33.029667, 40.307758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.061947, 32.721485, 40.256649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043734, 0.128841, -0.990700,
		0.779750, 0.624342, 0.046774,
		0.624562, -0.770453, -0.127769,
		46.249317, 32.490349, 40.218319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950138, 33.255333, 39.664181>,  <45.812122, 33.029667, 40.307758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950138, 33.255333, 39.664181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.118176, 32.893097, 39.640759>,  <46.218998, 32.675755, 39.626705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.118176, 32.893097, 39.640759>,  <45.950138, 33.255333, 39.664181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118176, 32.893097, 39.640759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296573, 0.197985, -0.934262,
		0.857650, 0.375114, 0.351746,
		0.420095, -0.905589, -0.058553,
		46.244205, 32.621422, 39.623192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576279, 33.311848, 39.353333>,  <45.950138, 33.255333, 39.664181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576279, 33.311848, 39.353333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.441051, 32.946945, 39.260815>,  <46.359913, 32.728004, 39.205303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.441051, 32.946945, 39.260815>,  <46.576279, 33.311848, 39.353333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441051, 32.946945, 39.260815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154210, 0.188751, -0.969841,
		0.928400, -0.363543, 0.076868,
		-0.338070, -0.912255, -0.231299,
		46.339630, 32.673267, 39.191425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942299, 33.618549, 38.814354>,  <46.576279, 33.311848, 39.353333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942299, 33.618549, 38.814354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.202808, 33.384403, 38.621193>,  <47.359112, 33.243916, 38.505299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.202808, 33.384403, 38.621193>,  <46.942299, 33.618549, 38.814354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202808, 33.384403, 38.621193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751759, -0.584454, -0.305405,
		-0.103459, 0.561926, -0.820692,
		0.651271, -0.585366, -0.482900,
		47.398190, 33.208794, 38.476322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981407, 33.623352, 38.046310>,  <46.942299, 33.618549, 38.814354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981407, 33.623352, 38.046310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.041656, 33.262638, 38.208351>,  <47.077808, 33.046211, 38.305576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.041656, 33.262638, 38.208351>,  <46.981407, 33.623352, 38.046310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041656, 33.262638, 38.208351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920083, -0.277763, -0.276214,
		0.361606, -0.331119, -0.871551,
		0.150625, -0.901780, 0.405098,
		47.086845, 32.992104, 38.329880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252769, 34.244808, 37.671562>,  <46.981407, 33.623352, 38.046310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252769, 34.244808, 37.671562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.103092, 34.574387, 37.501343>,  <47.013287, 34.772133, 37.399212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.103092, 34.574387, 37.501343>,  <47.252769, 34.244808, 37.671562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.103092, 34.574387, 37.501343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116560, -0.413462, -0.903030,
		-0.919997, -0.387509, 0.058675,
		-0.374192, 0.823946, -0.425552,
		46.990833, 34.821571, 37.373676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733761, 34.079472, 37.164490>,  <47.252769, 34.244808, 37.671562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733761, 34.079472, 37.164490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.892262, 34.437469, 37.082546>,  <46.987362, 34.652267, 37.033379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.892262, 34.437469, 37.082546>,  <46.733761, 34.079472, 37.164490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892262, 34.437469, 37.082546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214892, -0.307331, -0.927022,
		-0.892640, 0.323311, -0.314107,
		0.396252, 0.894996, -0.204859,
		47.011135, 34.705967, 37.021088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629189, 34.072876, 36.541664>,  <46.733761, 34.079472, 37.164490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629189, 34.072876, 36.541664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.851799, 34.403305, 36.577187>,  <46.985367, 34.601562, 36.598499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.851799, 34.403305, 36.577187>,  <46.629189, 34.072876, 36.541664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.851799, 34.403305, 36.577187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220883, -0.044069, -0.974304,
		-0.800929, 0.561844, -0.206990,
		0.556529, 0.826069, 0.088806,
		47.018757, 34.651127, 36.603828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.383812, 34.526890, 36.073669>,  <46.629189, 34.072876, 36.541664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.383812, 34.526890, 36.073669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.771557, 34.580967, 36.155701>,  <47.004204, 34.613415, 36.204918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.771557, 34.580967, 36.155701>,  <46.383812, 34.526890, 36.073669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.771557, 34.580967, 36.155701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226223, -0.166086, -0.959812,
		-0.095701, 0.976800, -0.191582,
		0.969363, 0.135196, 0.205079,
		47.062366, 34.621525, 36.217224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668381, 35.099915, 35.641014>,  <46.383812, 34.526890, 36.073669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668381, 35.099915, 35.641014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.943291, 34.824253, 35.732864>,  <47.108234, 34.658855, 35.787975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.943291, 34.824253, 35.732864>,  <46.668381, 35.099915, 35.641014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943291, 34.824253, 35.732864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164261, -0.160483, -0.973275,
		0.707586, 0.706621, 0.002906,
		0.687270, -0.689153, 0.229626,
		47.149471, 34.617508, 35.801754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.201801, 35.370686, 35.343685>,  <46.668381, 35.099915, 35.641014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.201801, 35.370686, 35.343685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.250340, 34.975273, 35.379635>,  <47.279461, 34.738026, 35.401203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.250340, 34.975273, 35.379635>,  <47.201801, 35.370686, 35.343685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.250340, 34.975273, 35.379635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012653, -0.092078, -0.995671,
		0.992530, 0.119684, -0.023681,
		0.121346, -0.988533, 0.089875,
		47.286743, 34.678715, 35.406597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.965717, 35.198299, 35.142460>,  <47.201801, 35.370686, 35.343685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.965717, 35.198299, 35.142460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.669243, 34.949467, 35.041538>,  <47.491360, 34.800167, 34.980984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.669243, 34.949467, 35.041538>,  <47.965717, 35.198299, 35.142460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669243, 34.949467, 35.041538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260341, 0.080068, -0.962191,
		0.618767, -0.778844, 0.102609,
		-0.741181, -0.622085, -0.252308,
		47.446888, 34.762840, 34.965847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.563898, 32.572685, 55.726444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.862740, 32.777317, 55.896210>,  <30.042044, 32.900097, 55.998070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.862740, 32.777317, 55.896210>,  <29.563898, 32.572685, 55.726444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862740, 32.777317, 55.896210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568514, -0.160938, -0.806778,
		-0.344425, 0.844031, -0.411076,
		0.747103, 0.511577, 0.424413,
		30.086870, 32.930790, 56.023533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731661, 33.034576, 55.278152>,  <29.563898, 32.572685, 55.726444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731661, 33.034576, 55.278152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.054344, 33.018188, 55.513962>,  <30.247955, 33.008354, 55.655449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.054344, 33.018188, 55.513962>,  <29.731661, 33.034576, 55.278152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054344, 33.018188, 55.513962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573590, -0.185731, -0.797809,
		0.142180, 0.981746, -0.126331,
		0.806709, -0.040970, 0.589527,
		30.296356, 33.005898, 55.690819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192299, 33.467472, 54.953255>,  <29.731661, 33.034576, 55.278152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192299, 33.467472, 54.953255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.429031, 33.248173, 55.189617>,  <30.571070, 33.116592, 55.331432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.429031, 33.248173, 55.189617>,  <30.192299, 33.467472, 54.953255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429031, 33.248173, 55.189617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662445, -0.086843, -0.744060,
		0.459243, 0.831797, 0.311786,
		0.591830, -0.548245, 0.590901,
		30.606581, 33.083698, 55.366886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878099, 33.838699, 54.937931>,  <30.192299, 33.467472, 54.953255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878099, 33.838699, 54.937931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932261, 33.456947, 55.044388>,  <30.964758, 33.227898, 55.108261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932261, 33.456947, 55.044388>,  <30.878099, 33.838699, 54.937931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932261, 33.456947, 55.044388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784273, -0.060905, -0.617419,
		0.605461, 0.292324, 0.740246,
		0.135402, -0.954378, 0.266138,
		30.972881, 33.170635, 55.124229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602320, 33.729187, 55.021046>,  <30.878099, 33.838699, 54.937931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602320, 33.729187, 55.021046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.432327, 33.379189, 54.928288>,  <31.330332, 33.169189, 54.872631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.432327, 33.379189, 54.928288>,  <31.602320, 33.729187, 55.021046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432327, 33.379189, 54.928288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705407, -0.159584, -0.690604,
		0.567268, -0.457075, 0.685047,
		-0.424980, -0.874995, -0.231897,
		31.304832, 33.116692, 54.858719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200600, 33.314228, 54.813961>,  <31.602320, 33.729187, 55.021046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200600, 33.314228, 54.813961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.872465, 33.115253, 54.701099>,  <31.675585, 32.995869, 54.633381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.872465, 33.115253, 54.701099>,  <32.200600, 33.314228, 54.813961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872465, 33.115253, 54.701099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508310, -0.408132, -0.758320,
		0.262062, -0.765495, 0.587657,
		-0.820332, -0.497438, -0.282153,
		31.626366, 32.966022, 54.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210297, 32.528427, 55.021297>,  <32.200600, 33.314228, 54.813961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210297, 32.528427, 55.021297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.971069, 32.591248, 54.706936>,  <31.827532, 32.628941, 54.518318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.971069, 32.591248, 54.706936>,  <32.210297, 32.528427, 55.021297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971069, 32.591248, 54.706936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668719, -0.442685, -0.597365,
		-0.441711, -0.882820, 0.159752,
		-0.598085, 0.157033, -0.785897,
		31.791647, 32.638363, 54.471165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304787, 31.946604, 54.551392>,  <32.210297, 32.528427, 55.021297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304787, 31.946604, 54.551392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.138687, 32.207870, 54.298111>,  <32.039028, 32.364632, 54.146141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.138687, 32.207870, 54.298111>,  <32.304787, 31.946604, 54.551392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138687, 32.207870, 54.298111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584702, -0.341609, -0.735817,
		-0.696918, -0.675780, -0.240055,
		-0.415246, 0.653165, -0.633203,
		32.014114, 32.403820, 54.108150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048489, 31.597340, 53.857784>,  <32.304787, 31.946604, 54.551392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048489, 31.597340, 53.857784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.070026, 31.982466, 53.751888>,  <32.082951, 32.213543, 53.688351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.070026, 31.982466, 53.751888>,  <32.048489, 31.597340, 53.857784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070026, 31.982466, 53.751888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681399, -0.229231, -0.695089,
		-0.729929, -0.142960, -0.668406,
		0.053849, 0.962816, -0.264735,
		32.086182, 32.271309, 53.672466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029095, 31.698446, 53.157009>,  <32.048489, 31.597340, 53.857784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029095, 31.698446, 53.157009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.160812, 32.071877, 53.213573>,  <32.239845, 32.295937, 53.247513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.160812, 32.071877, 53.213573>,  <32.029095, 31.698446, 53.157009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160812, 32.071877, 53.213573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588636, -0.085870, -0.803824,
		-0.738289, 0.347937, -0.577814,
		0.329297, 0.933577, 0.141411,
		32.259602, 32.351952, 53.255997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051277, 31.991726, 52.457485>,  <32.029095, 31.698446, 53.157009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051277, 31.991726, 52.457485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.262348, 32.262794, 52.662354>,  <32.388992, 32.425434, 52.785275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.262348, 32.262794, 52.662354>,  <32.051277, 31.991726, 52.457485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262348, 32.262794, 52.662354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591541, 0.139563, -0.794104,
		-0.609621, 0.722002, -0.327225,
		0.527676, 0.677669, 0.512174,
		32.420650, 32.466095, 52.816006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028782, 32.746902, 52.151020>,  <32.051277, 31.991726, 52.457485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028782, 32.746902, 52.151020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.363865, 32.654961, 52.349178>,  <32.564915, 32.599796, 52.468075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.363865, 32.654961, 52.349178>,  <32.028782, 32.746902, 52.151020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363865, 32.654961, 52.349178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530728, 0.128764, -0.837704,
		0.128764, 0.964668, 0.229858,
		0.837704, -0.229858, 0.495396,
		32.615177, 32.586002, 52.497799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511677, 33.221577, 51.957188>,  <32.028782, 32.746902, 52.151020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511677, 33.221577, 51.957188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723938, 32.915607, 52.103233>,  <32.851295, 32.732025, 52.190861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723938, 32.915607, 52.103233>,  <32.511677, 33.221577, 51.957188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723938, 32.915607, 52.103233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595783, 0.030229, -0.802576,
		0.602869, 0.643417, 0.471767,
		0.530652, -0.764919, 0.365113,
		32.883133, 32.686131, 52.212769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152775, 33.382187, 51.788872>,  <32.511677, 33.221577, 51.957188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152775, 33.382187, 51.788872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.173115, 32.988708, 51.857872>,  <33.185318, 32.752621, 51.899273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.173115, 32.988708, 51.857872>,  <33.152775, 33.382187, 51.788872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173115, 32.988708, 51.857872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653272, -0.097887, -0.750769,
		0.755414, 0.150870, 0.637642,
		0.050852, -0.983695, 0.172504,
		33.188370, 32.693600, 51.909622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869854, 33.179905, 51.656010>,  <33.152775, 33.382187, 51.788872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869854, 33.179905, 51.656010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.653770, 32.843674, 51.639965>,  <33.524120, 32.641937, 51.630337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.653770, 32.843674, 51.639965>,  <33.869854, 33.179905, 51.656010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653770, 32.843674, 51.639965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544925, -0.313083, -0.777840,
		0.641275, -0.442054, 0.627180,
		-0.540207, -0.840575, -0.040114,
		33.491707, 32.591499, 51.627930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340389, 32.694244, 51.416451>,  <33.869854, 33.179905, 51.656010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340389, 32.694244, 51.416451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.981976, 32.528862, 51.351742>,  <33.766926, 32.429634, 51.312916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.981976, 32.528862, 51.351742>,  <34.340389, 32.694244, 51.416451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981976, 32.528862, 51.351742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314974, -0.335175, -0.887946,
		0.312902, -0.846589, 0.430557,
		-0.896038, -0.413455, -0.161776,
		33.713165, 32.404827, 51.303207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440727, 32.070255, 50.963844>,  <34.340389, 32.694244, 51.416451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440727, 32.070255, 50.963844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050972, 32.146996, 50.916912>,  <33.817120, 32.193039, 50.888752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.050972, 32.146996, 50.916912>,  <34.440727, 32.070255, 50.963844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050972, 32.146996, 50.916912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063003, -0.267972, -0.961364,
		-0.215877, -0.944132, 0.249021,
		-0.974386, 0.191847, -0.117333,
		33.758656, 32.204552, 50.881714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125446, 31.416508, 50.599411>,  <34.440727, 32.070255, 50.963844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125446, 31.416508, 50.599411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.908806, 31.747253, 50.538795>,  <33.778824, 31.945702, 50.502426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.908806, 31.747253, 50.538795>,  <34.125446, 31.416508, 50.599411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908806, 31.747253, 50.538795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081817, -0.231263, -0.969445,
		-0.836647, -0.512650, 0.192903,
		-0.541598, 0.826866, -0.151542,
		33.746326, 31.995314, 50.493332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678699, 31.210762, 50.029682>,  <34.125446, 31.416508, 50.599411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678699, 31.210762, 50.029682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.650513, 31.609596, 50.041393>,  <33.633602, 31.848896, 50.048420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.650513, 31.609596, 50.041393>,  <33.678699, 31.210762, 50.029682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650513, 31.609596, 50.041393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106467, 0.036705, -0.993639,
		-0.991816, -0.066899, -0.108743,
		-0.070465, 0.997085, 0.029283,
		33.629372, 31.908722, 50.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101334, 31.295654, 49.626175>,  <33.678699, 31.210762, 50.029682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101334, 31.295654, 49.626175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.329288, 31.624332, 49.623474>,  <33.466061, 31.821541, 49.621853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.329288, 31.624332, 49.623474>,  <33.101334, 31.295654, 49.626175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329288, 31.624332, 49.623474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054751, -0.046165, -0.997432,
		-0.819899, 0.568051, -0.071298,
		0.569884, 0.821698, -0.006749,
		33.500252, 31.870842, 49.621449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874660, 31.625896, 49.029190>,  <33.101334, 31.295654, 49.626175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874660, 31.625896, 49.029190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.220490, 31.808573, 49.113041>,  <33.427986, 31.918179, 49.163353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.220490, 31.808573, 49.113041>,  <32.874660, 31.625896, 49.029190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220490, 31.808573, 49.113041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259176, -0.047864, -0.964643,
		-0.430509, 0.888337, -0.159745,
		0.864575, 0.456690, 0.209630,
		33.479862, 31.945580, 49.175930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950340, 32.137230, 48.545242>,  <32.874660, 31.625896, 49.029190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950340, 32.137230, 48.545242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.321575, 32.029697, 48.648308>,  <33.544315, 31.965179, 48.710148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.321575, 32.029697, 48.648308>,  <32.950340, 32.137230, 48.545242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321575, 32.029697, 48.648308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287883, 0.079110, -0.954392,
		0.236182, 0.959934, 0.150812,
		0.928085, -0.268827, 0.257665,
		33.600002, 31.949049, 48.725609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503498, 31.681301, 48.157375>,  <32.950340, 32.137230, 48.545242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503498, 31.681301, 48.157375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.194916, 31.832527, 47.952663>,  <32.009766, 31.923262, 47.829834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.194916, 31.832527, 47.952663>,  <32.503498, 31.681301, 48.157375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194916, 31.832527, 47.952663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566912, -0.043204, 0.822645,
		0.288901, 0.924771, 0.247660,
		-0.771458, 0.378064, -0.511782,
		31.963478, 31.945946, 47.799129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247814, 32.137840, 48.519890>,  <32.503498, 31.681301, 48.157375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247814, 32.137840, 48.519890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.925543, 32.044437, 48.302135>,  <31.732180, 31.988396, 48.171482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.925543, 32.044437, 48.302135>,  <32.247814, 32.137840, 48.519890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925543, 32.044437, 48.302135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578452, 0.112220, 0.807960,
		-0.127571, 0.965858, -0.225484,
		-0.805679, -0.233505, -0.544387,
		31.683840, 31.974386, 48.138821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777508, 32.589474, 48.702282>,  <32.247814, 32.137840, 48.519890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777508, 32.589474, 48.702282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.549137, 32.307140, 48.534550>,  <31.412115, 32.137741, 48.433910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.549137, 32.307140, 48.534550>,  <31.777508, 32.589474, 48.702282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549137, 32.307140, 48.534550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648968, 0.075143, 0.757096,
		-0.502873, 0.704381, -0.500965,
		-0.570928, -0.705833, -0.419334,
		31.377859, 32.095390, 48.408749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990498, 32.828045, 48.795391>,  <31.777508, 32.589474, 48.702282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990498, 32.828045, 48.795391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.991930, 32.430424, 48.751858>,  <30.992788, 32.191853, 48.725739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.991930, 32.430424, 48.751858>,  <30.990498, 32.828045, 48.795391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991930, 32.430424, 48.751858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696646, -0.080560, 0.712878,
		-0.717406, 0.073269, -0.692791,
		0.003579, -0.994053, -0.108837,
		30.993004, 32.132206, 48.719208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257420, 32.590202, 48.708839>,  <30.990498, 32.828045, 48.795391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257420, 32.590202, 48.708839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.451220, 32.260475, 48.825981>,  <30.567499, 32.062641, 48.896267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.451220, 32.260475, 48.825981>,  <30.257420, 32.590202, 48.708839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451220, 32.260475, 48.825981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770519, -0.243618, 0.589025,
		-0.414196, -0.511035, -0.753183,
		0.484501, -0.824314, 0.292857,
		30.596569, 32.013180, 48.913837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696426, 32.114975, 48.797791>,  <30.257420, 32.590202, 48.708839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696426, 32.114975, 48.797791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.016363, 31.952549, 48.974590>,  <30.208324, 31.855093, 49.080669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.016363, 31.952549, 48.974590>,  <29.696426, 32.114975, 48.797791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016363, 31.952549, 48.974590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567837, -0.273346, 0.776429,
		-0.194459, -0.872006, -0.449211,
		0.799841, -0.406063, 0.442003,
		30.256315, 31.830729, 49.107189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595861, 31.218708, 49.039730>,  <29.696426, 32.114975, 48.797791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595861, 31.218708, 49.039730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.863691, 31.418896, 49.259258>,  <30.024389, 31.539007, 49.390976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.863691, 31.418896, 49.259258>,  <29.595861, 31.218708, 49.039730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863691, 31.418896, 49.259258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481947, -0.269484, 0.833730,
		0.565153, -0.822745, 0.060760,
		0.669574, 0.500469, 0.548819,
		30.064564, 31.569036, 49.423904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579308, 30.784630, 49.609383>,  <29.595861, 31.218708, 49.039730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579308, 30.784630, 49.609383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.795805, 31.092617, 49.744560>,  <29.925703, 31.277409, 49.825668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.795805, 31.092617, 49.744560>,  <29.579308, 30.784630, 49.609383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795805, 31.092617, 49.744560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334407, -0.171650, 0.926665,
		0.771509, -0.614564, 0.164577,
		0.541245, 0.769966, 0.337944,
		29.958178, 31.323606, 49.845943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015066, 30.610336, 50.280403>,  <29.579308, 30.784630, 49.609383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015066, 30.610336, 50.280403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.926872, 30.997717, 50.233944>,  <29.873957, 31.230145, 50.206070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.926872, 30.997717, 50.233944>,  <30.015066, 30.610336, 50.280403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926872, 30.997717, 50.233944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474087, -0.002341, 0.880475,
		0.852424, 0.249194, 0.459646,
		-0.220485, 0.968451, -0.116144,
		29.860727, 31.288252, 50.199100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192827, 30.978367, 50.934818>,  <30.015066, 30.610336, 50.280403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192827, 30.978367, 50.934818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.931467, 31.229944, 50.766296>,  <29.774651, 31.380890, 50.665184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.931467, 31.229944, 50.766296>,  <30.192827, 30.978367, 50.934818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931467, 31.229944, 50.766296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398851, 0.187010, 0.897744,
		0.643418, 0.754626, 0.128662,
		-0.653400, 0.628941, -0.421309,
		29.735447, 31.418627, 50.639904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224266, 31.623579, 51.415123>,  <30.192827, 30.978367, 50.934818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224266, 31.623579, 51.415123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.895151, 31.693811, 51.198906>,  <29.697681, 31.735950, 51.069176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.895151, 31.693811, 51.198906>,  <30.224266, 31.623579, 51.415123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895151, 31.693811, 51.198906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374869, 0.547218, 0.748349,
		0.427191, 0.818367, -0.384425,
		-0.822789, 0.175579, -0.540547,
		29.648315, 31.746485, 51.036743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055193, 32.263214, 51.579163>,  <30.224266, 31.623579, 51.415123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055193, 32.263214, 51.579163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.721960, 32.128021, 51.404007>,  <29.522020, 32.046906, 51.298916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.721960, 32.128021, 51.404007>,  <30.055193, 32.263214, 51.579163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721960, 32.128021, 51.404007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550375, 0.427251, 0.717318,
		-0.055353, 0.838586, -0.541951,
		-0.833081, -0.337981, -0.437887,
		29.472036, 32.026627, 51.272640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735289, 32.805363, 51.447689>,  <30.055193, 32.263214, 51.579163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735289, 32.805363, 51.447689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.438259, 32.538223, 51.427433>,  <29.260042, 32.377941, 51.415279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.438259, 32.538223, 51.427433>,  <29.735289, 32.805363, 51.447689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438259, 32.538223, 51.427433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528633, 0.537995, 0.656588,
		-0.411256, 0.514336, -0.752547,
		-0.742573, -0.667847, -0.050641,
		29.215487, 32.337868, 51.412239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041113, 33.155170, 51.294216>,  <29.735289, 32.805363, 51.447689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041113, 33.155170, 51.294216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.932198, 32.831654, 51.502724>,  <28.866848, 32.637543, 51.627827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.932198, 32.831654, 51.502724>,  <29.041113, 33.155170, 51.294216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932198, 32.831654, 51.502724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614777, 0.562973, 0.552369,
		-0.740209, -0.170060, -0.650515,
		-0.272287, -0.808790, 0.521267,
		28.850512, 32.589016, 51.659103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276545, 33.108601, 51.331093>,  <29.041113, 33.155170, 51.294216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276545, 33.108601, 51.331093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.418623, 32.900612, 51.641827>,  <28.503870, 32.775818, 51.828266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.418623, 32.900612, 51.641827>,  <28.276545, 33.108601, 51.331093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418623, 32.900612, 51.641827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670445, 0.437395, 0.599324,
		-0.651413, -0.733699, -0.193252,
		0.355196, -0.519972, 0.776830,
		28.525183, 32.744621, 51.874874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654938, 32.993786, 51.665100>,  <28.276545, 33.108601, 51.331093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654938, 32.993786, 51.665100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.952827, 32.921982, 51.922211>,  <28.131561, 32.878899, 52.076477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.952827, 32.921982, 51.922211>,  <27.654938, 32.993786, 51.665100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952827, 32.921982, 51.922211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536435, 0.411953, 0.736568,
		-0.397015, -0.893348, 0.210496,
		0.744726, -0.179512, 0.642774,
		28.176245, 32.868130, 52.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351139, 32.936821, 52.284554>,  <27.654938, 32.993786, 51.665100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351139, 32.936821, 52.284554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.725355, 33.011635, 52.404408>,  <27.949884, 33.056522, 52.476318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.725355, 33.011635, 52.404408>,  <27.351139, 32.936821, 52.284554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725355, 33.011635, 52.404408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346754, 0.324782, 0.879931,
		0.067256, -0.927112, 0.368700,
		0.935541, 0.187029, 0.299637,
		28.006018, 33.067745, 52.494297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435596, 32.634609, 52.996468>,  <27.351139, 32.936821, 52.284554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435596, 32.634609, 52.996468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.752670, 32.878239, 52.986053>,  <27.942915, 33.024418, 52.979805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.752670, 32.878239, 52.986053>,  <27.435596, 32.634609, 52.996468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752670, 32.878239, 52.986053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222003, 0.328170, 0.918161,
		0.567771, -0.722033, 0.395352,
		0.792686, 0.609074, -0.026032,
		27.990477, 33.060963, 52.978245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.807610, 32.340065, 53.570301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931126, 32.714321, 53.501926>,  <28.005236, 32.938877, 53.460899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931126, 32.714321, 53.501926>,  <27.807610, 32.340065, 53.570301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931126, 32.714321, 53.501926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062067, 0.199161, 0.977999,
		0.949103, -0.291385, 0.119571,
		0.308789, 0.935644, -0.170939,
		28.023762, 32.995014, 53.450645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299038, 32.541061, 54.149132>,  <27.807610, 32.340065, 53.570301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299038, 32.541061, 54.149132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167767, 32.888702, 54.001102>,  <28.089005, 33.097286, 53.912285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167767, 32.888702, 54.001102>,  <28.299038, 32.541061, 54.149132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167767, 32.888702, 54.001102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022898, 0.384336, 0.922909,
		0.944338, 0.311353, -0.106230,
		-0.328178, 0.869106, -0.370073,
		28.069313, 33.149433, 53.890079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673189, 32.961426, 54.480785>,  <28.299038, 32.541061, 54.149132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673189, 32.961426, 54.480785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377039, 33.199608, 54.356033>,  <28.199348, 33.342518, 54.281181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377039, 33.199608, 54.356033>,  <28.673189, 32.961426, 54.480785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377039, 33.199608, 54.356033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060943, 0.402605, 0.913343,
		0.669423, 0.695226, -0.261791,
		-0.740378, 0.595458, -0.311882,
		28.154926, 33.378246, 54.262470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775324, 33.589886, 54.766895>,  <28.673189, 32.961426, 54.480785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775324, 33.589886, 54.766895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383873, 33.566124, 54.688145>,  <28.149002, 33.551868, 54.640892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383873, 33.566124, 54.688145>,  <28.775324, 33.589886, 54.766895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383873, 33.566124, 54.688145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205135, 0.349378, 0.914251,
		0.014479, 0.935097, -0.354096,
		-0.978626, -0.059400, -0.196880,
		28.090284, 33.548306, 54.629082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594673, 34.286247, 55.002865>,  <28.775324, 33.589886, 54.766895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594673, 34.286247, 55.002865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258360, 34.070107, 54.989597>,  <28.056572, 33.940422, 54.981636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258360, 34.070107, 54.989597>,  <28.594673, 34.286247, 55.002865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258360, 34.070107, 54.989597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293921, 0.404166, 0.866176,
		-0.454638, 0.738014, -0.498638,
		-0.840783, -0.540356, -0.033169,
		28.006124, 33.908001, 54.979649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146515, 34.716335, 55.043358>,  <28.594673, 34.286247, 55.002865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146515, 34.716335, 55.043358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903400, 34.409657, 55.126080>,  <27.757532, 34.225651, 55.175713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903400, 34.409657, 55.126080>,  <28.146515, 34.716335, 55.043358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903400, 34.409657, 55.126080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290597, 0.457108, 0.840599,
		-0.739019, 0.450807, -0.500625,
		-0.607787, -0.766698, 0.206808,
		27.721064, 34.179646, 55.188122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593466, 34.983780, 55.359222>,  <28.146515, 34.716335, 55.043358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593466, 34.983780, 55.359222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550970, 34.601406, 55.468689>,  <27.525473, 34.371983, 55.534370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550970, 34.601406, 55.468689>,  <27.593466, 34.983780, 55.359222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550970, 34.601406, 55.468689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456654, 0.291391, 0.840571,
		-0.883278, -0.035670, -0.467490,
		-0.106239, -0.955939, 0.273668,
		27.519098, 34.314625, 55.550789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886381, 34.945629, 55.549873>,  <27.593466, 34.983780, 55.359222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886381, 34.945629, 55.549873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054115, 34.629387, 55.728359>,  <27.154757, 34.439644, 55.835449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054115, 34.629387, 55.728359>,  <26.886381, 34.945629, 55.549873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054115, 34.629387, 55.728359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354929, 0.309619, 0.882135,
		-0.835574, -0.528284, -0.150773,
		0.419336, -0.790602, 0.446213,
		27.179916, 34.392208, 55.862225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314268, 34.390827, 55.732613>,  <26.886381, 34.945629, 55.549873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314268, 34.390827, 55.732613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622021, 34.346657, 55.984283>,  <26.806671, 34.320156, 56.135284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622021, 34.346657, 55.984283>,  <26.314268, 34.390827, 55.732613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622021, 34.346657, 55.984283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597223, 0.225152, 0.769825,
		-0.226668, -0.968046, 0.107280,
		0.769381, -0.110425, 0.629174,
		26.852835, 34.313530, 56.173035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077782, 34.023960, 56.355217>,  <26.314268, 34.390827, 55.732613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077782, 34.023960, 56.355217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420622, 34.190994, 56.475883>,  <26.626326, 34.291214, 56.548283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420622, 34.190994, 56.475883>,  <26.077782, 34.023960, 56.355217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420622, 34.190994, 56.475883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482813, 0.446976, 0.753063,
		0.179630, -0.791098, 0.584719,
		0.857102, 0.417583, 0.301662,
		26.677753, 34.316269, 56.566383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130976, 33.990974, 57.158989>,  <26.077782, 34.023960, 56.355217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130976, 33.990974, 57.158989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400434, 34.261826, 57.040527>,  <26.562109, 34.424335, 56.969452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400434, 34.261826, 57.040527>,  <26.130976, 33.990974, 57.158989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400434, 34.261826, 57.040527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314001, 0.624979, 0.714706,
		0.669035, -0.388464, 0.633630,
		0.673643, 0.677124, -0.296155,
		26.602528, 34.464962, 56.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361687, 34.337517, 57.713112>,  <26.130976, 33.990974, 57.158989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361687, 34.337517, 57.713112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432478, 34.606476, 57.425625>,  <26.474953, 34.767853, 57.253132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432478, 34.606476, 57.425625>,  <26.361687, 34.337517, 57.713112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432478, 34.606476, 57.425625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307966, 0.731412, 0.608435,
		0.934792, 0.113661, 0.336520,
		0.176979, 0.672397, -0.718722,
		26.485573, 34.808193, 57.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599640, 34.926781, 58.127525>,  <26.361687, 34.337517, 57.713112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599640, 34.926781, 58.127525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488113, 35.054489, 57.765236>,  <26.421198, 35.131115, 57.547863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488113, 35.054489, 57.765236>,  <26.599640, 34.926781, 58.127525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488113, 35.054489, 57.765236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264243, 0.881210, 0.391976,
		0.923274, 0.348620, -0.161333,
		-0.278818, 0.319270, -0.905719,
		26.404469, 35.150269, 57.493519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031906, 35.518528, 57.929661>,  <26.599640, 34.926781, 58.127525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031906, 35.518528, 57.929661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695915, 35.557499, 57.716141>,  <26.494320, 35.580883, 57.588028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695915, 35.557499, 57.716141>,  <27.031906, 35.518528, 57.929661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695915, 35.557499, 57.716141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193878, 0.864922, 0.462949,
		0.506804, 0.492359, -0.707625,
		-0.839977, 0.097431, -0.533803,
		26.443922, 35.586727, 57.556000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041822, 36.160152, 57.645607>,  <27.031906, 35.518528, 57.929661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041822, 36.160152, 57.645607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658108, 36.048077, 57.659809>,  <26.427879, 35.980831, 57.668331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658108, 36.048077, 57.659809>,  <27.041822, 36.160152, 57.645607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658108, 36.048077, 57.659809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255907, 0.915490, 0.310466,
		-0.119496, 0.288739, -0.949921,
		-0.959287, -0.280191, 0.035507,
		26.370321, 35.964020, 57.670460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756178, 36.628765, 57.259926>,  <27.041822, 36.160152, 57.645607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756178, 36.628765, 57.259926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455170, 36.467190, 57.467983>,  <26.274565, 36.370247, 57.592819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455170, 36.467190, 57.467983>,  <26.756178, 36.628765, 57.259926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455170, 36.467190, 57.467983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320943, 0.914608, 0.245944,
		-0.575075, 0.018140, -0.817900,
		-0.752519, -0.403935, 0.520146,
		26.229414, 36.346008, 57.624027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239962, 37.205704, 57.215160>,  <26.756178, 36.628765, 57.259926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239962, 37.205704, 57.215160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095388, 36.940521, 57.477413>,  <26.008644, 36.781410, 57.634766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095388, 36.940521, 57.477413>,  <26.239962, 37.205704, 57.215160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095388, 36.940521, 57.477413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492315, 0.732851, 0.469633,
		-0.791828, -0.153037, -0.591260,
		-0.361434, -0.662955, 0.655635,
		25.986958, 36.741634, 57.674103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499899, 37.319134, 57.324852>,  <26.239962, 37.205704, 57.215160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499899, 37.319134, 57.324852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686504, 37.164955, 57.643295>,  <25.798468, 37.072449, 57.834362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686504, 37.164955, 57.643295>,  <25.499899, 37.319134, 57.324852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686504, 37.164955, 57.643295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269902, 0.795097, 0.543115,
		-0.842329, -0.468242, 0.266890,
		0.466513, -0.385447, 0.796113,
		25.826458, 37.049320, 57.882130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990799, 37.378658, 57.823158>,  <25.499899, 37.319134, 57.324852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990799, 37.378658, 57.823158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311598, 37.315830, 58.053680>,  <25.504078, 37.278133, 58.191994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311598, 37.315830, 58.053680>,  <24.990799, 37.378658, 57.823158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311598, 37.315830, 58.053680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290627, 0.740297, 0.606215,
		-0.521855, -0.653673, 0.548068,
		0.801999, -0.157073, 0.576303,
		25.552198, 37.268707, 58.226570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708607, 37.420170, 58.401077>,  <24.990799, 37.378658, 57.823158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708607, 37.420170, 58.401077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098106, 37.476971, 58.472233>,  <25.331806, 37.511051, 58.514927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098106, 37.476971, 58.472233>,  <24.708607, 37.420170, 58.401077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098106, 37.476971, 58.472233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224530, 0.727594, 0.648223,
		-0.037380, -0.671149, 0.740380,
		0.973750, 0.142006, 0.177890,
		25.390232, 37.519573, 58.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832390, 37.280384, 59.116894>,  <24.708607, 37.420170, 58.401077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832390, 37.280384, 59.116894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111847, 37.545273, 59.008553>,  <25.279522, 37.704205, 58.943546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111847, 37.545273, 59.008553>,  <24.832390, 37.280384, 59.116894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111847, 37.545273, 59.008553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265300, 0.591360, 0.761518,
		0.664466, -0.460171, 0.588836,
		0.698642, 0.662221, -0.270855,
		25.321440, 37.743938, 58.927296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085300, 37.534904, 59.770496>,  <24.832390, 37.280384, 59.116894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085300, 37.534904, 59.770496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146732, 37.801834, 59.478992>,  <25.183592, 37.961990, 59.304089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146732, 37.801834, 59.478992>,  <25.085300, 37.534904, 59.770496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146732, 37.801834, 59.478992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117185, 0.744605, 0.657139,
		0.981163, -0.015524, 0.192557,
		0.153580, 0.667325, -0.728760,
		25.192806, 38.002033, 59.260365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676682, 37.825394, 59.934944>,  <25.085300, 37.534904, 59.770496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676682, 37.825394, 59.934944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479885, 37.494545, 60.043617>,  <25.361807, 37.296036, 60.108822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479885, 37.494545, 60.043617>,  <25.676682, 37.825394, 59.934944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479885, 37.494545, 60.043617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806123, -0.314942, 0.500977,
		-0.328805, 0.465486, 0.821711,
		-0.491989, -0.827124, 0.271685,
		25.332289, 37.246407, 60.125122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568499, 37.750854, 60.724613>,  <25.676682, 37.825394, 59.934944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568499, 37.750854, 60.724613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603542, 37.408230, 60.521194>,  <25.624569, 37.202656, 60.399143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603542, 37.408230, 60.521194>,  <25.568499, 37.750854, 60.724613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603542, 37.408230, 60.521194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662248, -0.331279, 0.672073,
		-0.744145, -0.395667, 0.538234,
		0.087612, -0.856564, -0.508550,
		25.629826, 37.151260, 60.368629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449764, 37.142494, 61.213825>,  <25.568499, 37.750854, 60.724613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449764, 37.142494, 61.213825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709536, 37.107845, 60.911636>,  <25.865398, 37.087055, 60.730324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709536, 37.107845, 60.911636>,  <25.449764, 37.142494, 61.213825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709536, 37.107845, 60.911636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724787, -0.230059, 0.649428,
		-0.230059, -0.969314, -0.086623,
		-0.649428, 0.086623, 0.755473,
		25.904364, 37.081860, 60.684994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489212, 36.592144, 60.814838>,  <25.449764, 37.142494, 61.213825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489212, 36.592144, 60.814838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113827, 36.664680, 60.932415>,  <24.888596, 36.708202, 61.002960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113827, 36.664680, 60.932415>,  <25.489212, 36.592144, 60.814838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113827, 36.664680, 60.932415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330852, -0.227809, -0.915773,
		-0.099107, -0.956670, 0.273788,
		-0.938464, 0.181342, 0.293939,
		24.832287, 36.719082, 61.020596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003412, 36.568722, 60.381092>,  <25.489212, 36.592144, 60.814838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003412, 36.568722, 60.381092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074480, 36.433552, 60.750793>,  <26.117121, 36.352448, 60.972614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074480, 36.433552, 60.750793>,  <26.003412, 36.568722, 60.381092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074480, 36.433552, 60.750793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853661, -0.414326, -0.315589,
		0.489587, 0.845068, 0.214861,
		0.177672, -0.337927, 0.924250,
		26.127781, 36.332172, 61.028069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552734, 36.933380, 60.605572>,  <26.003412, 36.568722, 60.381092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552734, 36.933380, 60.605572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516310, 36.555058, 60.730251>,  <26.494455, 36.328064, 60.805058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516310, 36.555058, 60.730251>,  <26.552734, 36.933380, 60.605572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516310, 36.555058, 60.730251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867159, -0.229202, -0.442155,
		0.489635, 0.230028, 0.841038,
		-0.091060, -0.945808, 0.311696,
		26.488993, 36.271317, 60.823761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179998, 36.714214, 60.957516>,  <26.552734, 36.933380, 60.605572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179998, 36.714214, 60.957516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000544, 36.379112, 60.833004>,  <26.892872, 36.178051, 60.758297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000544, 36.379112, 60.833004>,  <27.179998, 36.714214, 60.957516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000544, 36.379112, 60.833004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791463, -0.210656, -0.573768,
		0.415105, -0.503777, 0.757560,
		-0.448636, -0.837755, -0.311276,
		26.865953, 36.127785, 60.739620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750025, 36.152039, 61.084305>,  <27.179998, 36.714214, 60.957516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750025, 36.152039, 61.084305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482044, 36.000690, 60.828808>,  <27.321255, 35.909882, 60.675510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482044, 36.000690, 60.828808>,  <27.750025, 36.152039, 61.084305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482044, 36.000690, 60.828808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741874, -0.373701, -0.556751,
		-0.028041, -0.846866, 0.531067,
		-0.669954, -0.378372, -0.638746,
		27.281057, 35.887180, 60.637184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939407, 35.371906, 60.964146>,  <27.750025, 36.152039, 61.084305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939407, 35.371906, 60.964146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705379, 35.493740, 60.663502>,  <27.564962, 35.566841, 60.483116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705379, 35.493740, 60.663502>,  <27.939407, 35.371906, 60.964146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705379, 35.493740, 60.663502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640739, -0.394522, -0.658639,
		-0.497138, -0.866938, 0.035666,
		-0.585071, 0.304582, -0.751613,
		27.529858, 35.585114, 60.438019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937838, 34.722805, 60.429008>,  <27.939407, 35.371906, 60.964146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937838, 34.722805, 60.429008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825359, 35.040096, 60.212963>,  <27.757872, 35.230473, 60.083336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825359, 35.040096, 60.212963>,  <27.937838, 34.722805, 60.429008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825359, 35.040096, 60.212963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576785, -0.310120, -0.755741,
		-0.766974, -0.524039, -0.370317,
		-0.281195, 0.793227, -0.540112,
		27.741001, 35.278065, 60.050930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651653, 34.419258, 59.782753>,  <27.937838, 34.722805, 60.429008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651653, 34.419258, 59.782753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730593, 34.801483, 59.695156>,  <27.777956, 35.030819, 59.642597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730593, 34.801483, 59.695156>,  <27.651653, 34.419258, 59.782753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730593, 34.801483, 59.695156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342965, -0.276564, -0.897712,
		-0.918384, 0.102056, -0.382304,
		0.197348, 0.955561, -0.218990,
		27.789797, 35.088150, 59.629459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286596, 34.605114, 59.228577>,  <27.651653, 34.419258, 59.782753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286596, 34.605114, 59.228577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602251, 34.850361, 59.243256>,  <27.791645, 34.997509, 59.252064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602251, 34.850361, 59.243256>,  <27.286596, 34.605114, 59.228577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602251, 34.850361, 59.243256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256085, -0.274128, -0.926971,
		-0.558284, 0.740905, -0.373335,
		0.789138, 0.613118, 0.036693,
		27.838993, 35.034298, 59.254265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304586, 34.886806, 58.629608>,  <27.286596, 34.605114, 59.228577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304586, 34.886806, 58.629608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678694, 34.944893, 58.758717>,  <27.903158, 34.979744, 58.836182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678694, 34.944893, 58.758717>,  <27.304586, 34.886806, 58.629608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678694, 34.944893, 58.758717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352972, -0.315471, -0.880846,
		-0.026085, 0.937758, -0.346307,
		0.935270, 0.145214, 0.322773,
		27.959274, 34.988457, 58.855549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693035, 35.193138, 58.091999>,  <27.304586, 34.886806, 58.629608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693035, 35.193138, 58.091999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971289, 35.025536, 58.325417>,  <28.138241, 34.924973, 58.465469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971289, 35.025536, 58.325417>,  <27.693035, 35.193138, 58.091999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971289, 35.025536, 58.325417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488382, -0.319888, -0.811883,
		0.526855, 0.849767, -0.017890,
		0.695635, -0.419007, 0.583545,
		28.179979, 34.899834, 58.500481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371756, 35.283817, 57.767776>,  <27.693035, 35.193138, 58.091999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371756, 35.283817, 57.767776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409962, 34.976486, 58.020935>,  <28.432886, 34.792088, 58.172829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409962, 34.976486, 58.020935>,  <28.371756, 35.283817, 57.767776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409962, 34.976486, 58.020935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395903, -0.554030, -0.732333,
		0.913311, 0.320514, 0.251263,
		0.095516, -0.768324, 0.632894,
		28.438616, 34.745991, 58.210804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040258, 35.040726, 57.715744>,  <28.371756, 35.283817, 57.767776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040258, 35.040726, 57.715744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890240, 34.713779, 57.890675>,  <28.800228, 34.517612, 57.995632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890240, 34.713779, 57.890675>,  <29.040258, 35.040726, 57.715744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890240, 34.713779, 57.890675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643000, -0.569202, -0.512407,
		0.667750, 0.089025, 0.739043,
		-0.375048, -0.817364, 0.437328,
		28.777725, 34.468571, 58.021873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566086, 34.638988, 57.923409>,  <29.040258, 35.040726, 57.715744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566086, 34.638988, 57.923409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269714, 34.371399, 57.899742>,  <29.091890, 34.210846, 57.885544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269714, 34.371399, 57.899742>,  <29.566086, 34.638988, 57.923409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269714, 34.371399, 57.899742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569850, -0.579631, -0.582494,
		0.355377, -0.465303, 0.810678,
		-0.740931, -0.668970, -0.059166,
		29.047436, 34.170708, 57.881992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847044, 33.962540, 58.123913>,  <29.566086, 34.638988, 57.923409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847044, 33.962540, 58.123913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521736, 33.930576, 57.893360>,  <29.326551, 33.911400, 57.755028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521736, 33.930576, 57.893360>,  <29.847044, 33.962540, 58.123913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521736, 33.930576, 57.893360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503283, -0.593760, -0.627817,
		-0.292064, -0.800665, 0.523101,
		-0.813268, -0.079906, -0.576377,
		29.277756, 33.906605, 57.720448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984558, 33.350903, 57.973476>,  <29.847044, 33.962540, 58.123913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984558, 33.350903, 57.973476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708817, 33.457436, 57.703999>,  <29.543371, 33.521355, 57.542313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708817, 33.457436, 57.703999>,  <29.984558, 33.350903, 57.973476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708817, 33.457436, 57.703999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458985, -0.558913, -0.690615,
		-0.560505, -0.785277, 0.263010,
		-0.689323, 0.266375, -0.673704,
		29.502010, 33.537334, 57.501892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908192, 32.786781, 57.618206>,  <29.984558, 33.350903, 57.973476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908192, 32.786781, 57.618206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737535, 33.042999, 57.362804>,  <29.635141, 33.196728, 57.209564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737535, 33.042999, 57.362804>,  <29.908192, 32.786781, 57.618206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737535, 33.042999, 57.362804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492801, -0.427330, -0.757982,
		-0.758369, -0.638041, -0.133342,
		-0.426642, 0.640541, -0.638501,
		29.609543, 33.235161, 57.171253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392946, 32.499825, 57.164753>,  <29.908192, 32.786781, 57.618206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392946, 32.499825, 57.164753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549797, 32.813923, 56.973072>,  <29.643908, 33.002380, 56.858063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549797, 32.813923, 56.973072>,  <29.392946, 32.499825, 57.164753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549797, 32.813923, 56.973072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426823, -0.616757, -0.661387,
		-0.814898, 0.054815, -0.577007,
		0.392127, 0.785243, -0.479198,
		29.667435, 33.049496, 56.829311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561825, 32.297081, 56.489342>,  <29.392946, 32.499825, 57.164753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561825, 32.297081, 56.489342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747698, 32.650913, 56.473396>,  <29.859221, 32.863213, 56.463829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747698, 32.650913, 56.473396>,  <29.561825, 32.297081, 56.489342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747698, 32.650913, 56.473396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499069, -0.298820, -0.813411,
		-0.731439, 0.358083, -0.580322,
		0.464680, 0.884581, -0.039860,
		29.887102, 32.916286, 56.461437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.584232, 36.605846, 51.423019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.674271, 36.235649, 51.544865>,  <47.728294, 36.013531, 51.617970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.674271, 36.235649, 51.544865>,  <47.584232, 36.605846, 51.423019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674271, 36.235649, 51.544865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969103, -0.245023, -0.028325,
		0.100851, -0.288823, -0.952056,
		0.225095, -0.925497, 0.304610,
		47.741798, 35.958000, 51.636250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195599, 36.209194, 51.034004>,  <47.584232, 36.605846, 51.423019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195599, 36.209194, 51.034004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.268154, 35.989494, 51.360298>,  <47.311687, 35.857674, 51.556076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.268154, 35.989494, 51.360298>,  <47.195599, 36.209194, 51.034004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268154, 35.989494, 51.360298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976558, -0.198359, 0.083593,
		0.115896, -0.811776, -0.572353,
		0.181390, -0.549248, 0.815735,
		47.322571, 35.824718, 51.605019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944817, 35.557896, 50.876579>,  <47.195599, 36.209194, 51.034004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944817, 35.557896, 50.876579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.945511, 35.611122, 51.273022>,  <46.945927, 35.643059, 51.510887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.945511, 35.611122, 51.273022>,  <46.944817, 35.557896, 50.876579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.945511, 35.611122, 51.273022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954200, -0.296282, 0.041454,
		0.299163, -0.945786, 0.126455,
		0.001740, 0.133065, 0.991106,
		46.946033, 35.651043, 51.570354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651627, 34.991283, 51.040977>,  <46.944817, 35.557896, 50.876579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651627, 34.991283, 51.040977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.627342, 35.201397, 51.380482>,  <46.612770, 35.327465, 51.584183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.627342, 35.201397, 51.380482>,  <46.651627, 34.991283, 51.040977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627342, 35.201397, 51.380482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906252, -0.385404, 0.173700,
		0.418357, -0.758642, 0.499439,
		-0.060709, 0.525286, 0.848757,
		46.609131, 35.358982, 51.635109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304054, 34.441624, 51.535553>,  <46.651627, 34.991283, 51.040977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304054, 34.441624, 51.535553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.253483, 34.823170, 51.644478>,  <46.223141, 35.052097, 51.709835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.253483, 34.823170, 51.644478>,  <46.304054, 34.441624, 51.535553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253483, 34.823170, 51.644478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964773, -0.182088, 0.189887,
		0.230712, -0.238714, 0.943286,
		-0.126432, 0.953866, 0.272315,
		46.215553, 35.109329, 51.726173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760323, 34.415905, 52.000866>,  <46.304054, 34.441624, 51.535553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760323, 34.415905, 52.000866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.768986, 34.810986, 51.938938>,  <45.774185, 35.048035, 51.901783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.768986, 34.810986, 51.938938>,  <45.760323, 34.415905, 52.000866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768986, 34.810986, 51.938938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995572, 0.035478, 0.087047,
		0.091470, 0.152249, 0.984101,
		0.021661, 0.987706, -0.154820,
		45.775486, 35.107296, 51.892490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409016, 34.726215, 52.631969>,  <45.760323, 34.415905, 52.000866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409016, 34.726215, 52.631969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.396641, 35.005310, 52.345695>,  <45.389214, 35.172768, 52.173931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.396641, 35.005310, 52.345695>,  <45.409016, 34.726215, 52.631969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396641, 35.005310, 52.345695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982878, 0.108885, 0.148646,
		0.181643, 0.708035, 0.682417,
		-0.030942, 0.697733, -0.715689,
		45.387360, 35.214630, 52.130989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977596, 35.287884, 52.833729>,  <45.409016, 34.726215, 52.631969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977596, 35.287884, 52.833729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.989292, 35.283306, 52.433926>,  <44.996311, 35.280560, 52.194042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.989292, 35.283306, 52.433926>,  <44.977596, 35.287884, 52.833729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989292, 35.283306, 52.433926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996959, 0.071926, -0.029988,
		0.072233, 0.997344, -0.009310,
		0.029238, -0.011448, -0.999507,
		44.998062, 35.279873, 52.134075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377750, 35.721550, 52.663429>,  <44.977596, 35.287884, 52.833729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377750, 35.721550, 52.663429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.486725, 35.530186, 52.329506>,  <44.552109, 35.415367, 52.129154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.486725, 35.530186, 52.329506>,  <44.377750, 35.721550, 52.663429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486725, 35.530186, 52.329506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936570, 0.066972, -0.344023,
		0.220494, 0.875576, -0.429823,
		0.272433, -0.478415, -0.834805,
		44.568455, 35.386662, 52.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145428, 36.068516, 52.103306>,  <44.377750, 35.721550, 52.663429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145428, 36.068516, 52.103306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.169415, 35.695053, 51.962063>,  <44.183807, 35.470974, 51.877316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.169415, 35.695053, 51.962063>,  <44.145428, 36.068516, 52.103306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169415, 35.695053, 51.962063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944049, 0.061882, -0.323947,
		0.324308, 0.352777, -0.877709,
		0.059966, -0.933659, -0.353107,
		44.187405, 35.414955, 51.856133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768517, 36.136398, 51.514095>,  <44.145428, 36.068516, 52.103306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768517, 36.136398, 51.514095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.795029, 35.746208, 51.598061>,  <43.810936, 35.512096, 51.648438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.795029, 35.746208, 51.598061>,  <43.768517, 36.136398, 51.514095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795029, 35.746208, 51.598061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925716, -0.138626, -0.351898,
		0.372366, -0.170994, -0.912198,
		0.066282, -0.975471, 0.209911,
		43.814915, 35.453568, 51.661034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285416, 35.883144, 51.090164>,  <43.768517, 36.136398, 51.514095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285416, 35.883144, 51.090164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.352825, 35.577362, 51.339066>,  <43.393272, 35.393890, 51.488407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.352825, 35.577362, 51.339066>,  <43.285416, 35.883144, 51.090164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352825, 35.577362, 51.339066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919445, -0.349447, -0.180298,
		0.355276, -0.541745, -0.761769,
		0.168523, -0.764460, 0.622254,
		43.403381, 35.348022, 51.525742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113220, 35.221439, 50.701271>,  <43.285416, 35.883144, 51.090164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113220, 35.221439, 50.701271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.083637, 35.163479, 51.095943>,  <43.065887, 35.128700, 51.332745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.083637, 35.163479, 51.095943>,  <43.113220, 35.221439, 50.701271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083637, 35.163479, 51.095943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960956, -0.254174, -0.109360,
		0.266635, -0.956241, -0.120450,
		-0.073959, -0.144906, 0.986677,
		43.061451, 35.120007, 51.391945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788898, 34.582191, 50.831242>,  <43.113220, 35.221439, 50.701271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788898, 34.582191, 50.831242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.746056, 34.741276, 51.195736>,  <42.720348, 34.836727, 51.414433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.746056, 34.741276, 51.195736>,  <42.788898, 34.582191, 50.831242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746056, 34.741276, 51.195736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974971, -0.221614, -0.017878,
		0.194833, -0.890345, 0.411493,
		-0.107110, 0.397710, 0.911237,
		42.713921, 34.860588, 51.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359261, 34.091621, 51.288738>,  <42.788898, 34.582191, 50.831242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359261, 34.091621, 51.288738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.313931, 34.458225, 51.442192>,  <42.286732, 34.678188, 51.534264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.313931, 34.458225, 51.442192>,  <42.359261, 34.091621, 51.288738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313931, 34.458225, 51.442192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993422, -0.110911, -0.028495,
		0.016433, -0.384339, 0.923046,
		-0.113327, 0.916506, 0.383633,
		42.279934, 34.733177, 51.557281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889271, 33.987267, 51.709885>,  <42.359261, 34.091621, 51.288738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889271, 33.987267, 51.709885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.882740, 34.383698, 51.656963>,  <41.878822, 34.621555, 51.625210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.882740, 34.383698, 51.656963>,  <41.889271, 33.987267, 51.709885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882740, 34.383698, 51.656963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998226, -0.008576, 0.058921,
		0.057260, 0.133031, 0.989456,
		-0.016324, 0.991075, -0.132303,
		41.877842, 34.681019, 51.617271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598423, 34.201099, 52.243904>,  <41.889271, 33.987267, 51.709885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598423, 34.201099, 52.243904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538803, 34.484589, 51.968082>,  <41.503029, 34.654682, 51.802589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538803, 34.484589, 51.968082>,  <41.598423, 34.201099, 52.243904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538803, 34.484589, 51.968082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988779, -0.113852, 0.096714,
		-0.009964, 0.696235, 0.717745,
		-0.149052, 0.708727, -0.689557,
		41.494087, 34.697208, 51.761215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105679, 34.563744, 52.573261>,  <41.598423, 34.201099, 52.243904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105679, 34.563744, 52.573261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105000, 34.688744, 52.193295>,  <41.104591, 34.763744, 51.965313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.105000, 34.688744, 52.193295>,  <41.105679, 34.563744, 52.573261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105000, 34.688744, 52.193295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999139, 0.038846, 0.014560,
		0.041451, 0.949123, 0.312165,
		-0.001693, 0.312500, -0.949917,
		41.104492, 34.782494, 51.908321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573620, 35.037640, 52.540661>,  <41.105679, 34.563744, 52.573261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573620, 35.037640, 52.540661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613430, 34.915272, 52.161922>,  <40.637318, 34.841850, 51.934681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613430, 34.915272, 52.161922>,  <40.573620, 35.037640, 52.540661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613430, 34.915272, 52.161922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977483, -0.207997, -0.035544,
		-0.186067, 0.929060, -0.319729,
		0.099525, -0.305916, -0.946842,
		40.643288, 34.823498, 51.877869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919655, 35.061768, 52.243340>,  <40.573620, 35.037640, 52.540661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919655, 35.061768, 52.243340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067524, 34.829910, 51.952862>,  <40.156246, 34.690796, 51.778576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067524, 34.829910, 51.952862>,  <39.919655, 35.061768, 52.243340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067524, 34.829910, 51.952862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897125, -0.426123, -0.116557,
		-0.241886, 0.694573, -0.677539,
		0.369672, -0.579644, -0.726192,
		40.178425, 34.656017, 51.735004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369476, 34.967201, 51.826374>,  <39.919655, 35.061768, 52.243340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369476, 34.967201, 51.826374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.615124, 34.658482, 51.760422>,  <39.762512, 34.473251, 51.720848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.615124, 34.658482, 51.760422>,  <39.369476, 34.967201, 51.826374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615124, 34.658482, 51.760422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776267, -0.628401, 0.050208,
		-0.142363, 0.097160, -0.985034,
		0.614119, -0.771797, -0.164884,
		39.799358, 34.426941, 51.710957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278824, 34.528255, 51.207298>,  <39.369476, 34.967201, 51.826374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278824, 34.528255, 51.207298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441490, 34.274239, 51.470005>,  <39.539089, 34.121830, 51.627628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441490, 34.274239, 51.470005>,  <39.278824, 34.528255, 51.207298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441490, 34.274239, 51.470005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736578, -0.653188, -0.175492,
		0.540439, -0.412396, -0.733386,
		0.406667, -0.635039, 0.656771,
		39.563492, 34.083725, 51.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028584, 33.830406, 50.896999>,  <39.278824, 34.528255, 51.207298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028584, 33.830406, 50.896999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721367, 33.910816, 51.140213>,  <38.537037, 33.959061, 51.286140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721367, 33.910816, 51.140213>,  <39.028584, 33.830406, 50.896999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721367, 33.910816, 51.140213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603057, 0.546511, 0.581074,
		-0.215488, 0.812967, -0.540971,
		-0.768041, 0.201022, 0.608032,
		38.490955, 33.971123, 51.322624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536743, 33.344048, 50.465210>,  <39.028584, 33.830406, 50.896999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536743, 33.344048, 50.465210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380642, 33.367443, 50.097672>,  <38.286980, 33.381481, 49.877148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380642, 33.367443, 50.097672>,  <38.536743, 33.344048, 50.465210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380642, 33.367443, 50.097672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853391, -0.351608, -0.384832,
		-0.345584, -0.934318, 0.087300,
		-0.390251, 0.058491, -0.918849,
		38.263565, 33.384991, 49.822018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152618, 32.896000, 49.939701>,  <38.536743, 33.344048, 50.465210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152618, 32.896000, 49.939701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111877, 32.500294, 49.981632>,  <38.087433, 32.262871, 50.006790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111877, 32.500294, 49.981632>,  <38.152618, 32.896000, 49.939701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111877, 32.500294, 49.981632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691875, -0.005270, -0.721998,
		0.714796, -0.146065, -0.683909,
		-0.101854, -0.989261, 0.104825,
		38.081322, 32.203514, 50.013081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068295, 32.671963, 49.300060>,  <38.152618, 32.896000, 49.939701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068295, 32.671963, 49.300060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939224, 32.354088, 49.505722>,  <37.861782, 32.163364, 49.629120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939224, 32.354088, 49.505722>,  <38.068295, 32.671963, 49.300060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939224, 32.354088, 49.505722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607764, -0.242472, -0.756194,
		0.725606, -0.556488, -0.404743,
		-0.322674, -0.794687, 0.514153,
		37.842422, 32.115681, 49.659969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963058, 32.181751, 48.754101>,  <38.068295, 32.671963, 49.300060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963058, 32.181751, 48.754101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732704, 32.051525, 49.054066>,  <37.594490, 31.973391, 49.234043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732704, 32.051525, 49.054066>,  <37.963058, 32.181751, 48.754101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732704, 32.051525, 49.054066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702340, -0.272451, -0.657639,
		0.418416, -0.905417, -0.071754,
		-0.575888, -0.325562, 0.749908,
		37.559937, 31.953856, 49.279037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697430, 31.595169, 48.495758>,  <37.963058, 32.181751, 48.754101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697430, 31.595169, 48.495758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.457100, 31.697956, 48.798538>,  <37.312901, 31.759628, 48.980206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.457100, 31.697956, 48.798538>,  <37.697430, 31.595169, 48.495758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457100, 31.697956, 48.798538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796400, -0.274099, -0.539089,
		0.068952, -0.926736, 0.369333,
		-0.600827, 0.256965, 0.756952,
		37.276852, 31.775045, 49.025623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220768, 31.146450, 48.459805>,  <37.697430, 31.595169, 48.495758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220768, 31.146450, 48.459805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.031620, 31.427534, 48.672443>,  <36.918133, 31.596186, 48.800026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.031620, 31.427534, 48.672443>,  <37.220768, 31.146450, 48.459805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031620, 31.427534, 48.672443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794602, -0.079353, -0.601923,
		-0.380795, -0.707035, 0.595900,
		-0.472867, 0.702712, 0.531594,
		36.889759, 31.638348, 48.831921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578144, 31.110981, 48.141682>,  <37.220768, 31.146450, 48.459805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578144, 31.110981, 48.141682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545078, 31.451742, 48.348534>,  <36.525238, 31.656199, 48.472645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545078, 31.451742, 48.348534>,  <36.578144, 31.110981, 48.141682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545078, 31.451742, 48.348534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844939, 0.215241, -0.489642,
		-0.528436, -0.477420, 0.702015,
		-0.082662, 0.851905, 0.517131,
		36.520279, 31.707314, 48.503674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873844, 31.196117, 48.449062>,  <36.578144, 31.110981, 48.141682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873844, 31.196117, 48.449062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042809, 31.556366, 48.408169>,  <36.144188, 31.772514, 48.383633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042809, 31.556366, 48.408169>,  <35.873844, 31.196117, 48.449062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042809, 31.556366, 48.408169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798398, 0.316307, -0.512358,
		-0.429102, 0.298051, 0.852665,
		0.422413, 0.900620, -0.102236,
		36.169533, 31.826551, 48.377499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215889, 31.722143, 48.409042>,  <35.873844, 31.196117, 48.449062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215889, 31.722143, 48.409042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541931, 31.920900, 48.289913>,  <35.737556, 32.040154, 48.218433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541931, 31.920900, 48.289913>,  <35.215889, 31.722143, 48.409042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541931, 31.920900, 48.289913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579029, 0.682796, -0.445550,
		-0.018036, 0.535620, 0.844266,
		0.815107, 0.496891, -0.297825,
		35.786465, 32.069969, 48.200565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056293, 32.412292, 48.477779>,  <35.215889, 31.722143, 48.409042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056293, 32.412292, 48.477779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366241, 32.452103, 48.228085>,  <35.552212, 32.475990, 48.078266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366241, 32.452103, 48.228085>,  <35.056293, 32.412292, 48.477779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366241, 32.452103, 48.228085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530047, 0.640377, -0.555848,
		0.344424, 0.761585, 0.548963,
		0.774869, 0.099528, -0.624237,
		35.598701, 32.481960, 48.040813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158993, 33.117229, 48.445503>,  <35.056293, 32.412292, 48.477779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158993, 33.117229, 48.445503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313313, 32.939686, 48.121986>,  <35.405907, 32.833160, 47.927876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.313313, 32.939686, 48.121986>,  <35.158993, 33.117229, 48.445503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313313, 32.939686, 48.121986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532917, 0.608397, -0.588093,
		0.753097, 0.657907, -0.001818,
		0.385804, -0.443860, -0.808792,
		35.429054, 32.806526, 47.879349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505833, 33.650223, 48.051918>,  <35.158993, 33.117229, 48.445503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505833, 33.650223, 48.051918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412971, 33.347870, 47.807053>,  <35.357254, 33.166458, 47.660133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.412971, 33.347870, 47.807053>,  <35.505833, 33.650223, 48.051918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412971, 33.347870, 47.807053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500800, 0.632421, -0.590968,
		0.833849, 0.169378, -0.525363,
		-0.232153, -0.755880, -0.612168,
		35.343327, 33.121105, 47.623402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.338240, 31.557709, 50.815212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.695742, 31.695097, 50.930611>,  <28.910242, 31.777531, 50.999847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.695742, 31.695097, 50.930611>,  <28.338240, 31.557709, 50.815212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695742, 31.695097, 50.930611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370727, -0.203564, -0.906159,
		-0.252513, 0.916836, -0.309271,
		0.893755, 0.343472, 0.288493,
		28.963869, 31.798140, 51.017159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627277, 31.949232, 50.300377>,  <28.338240, 31.557709, 50.815212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627277, 31.949232, 50.300377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.956842, 31.921041, 50.525303>,  <29.154581, 31.904127, 50.660259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.956842, 31.921041, 50.525303>,  <28.627277, 31.949232, 50.300377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956842, 31.921041, 50.525303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564506, 0.014464, -0.825303,
		0.050030, 0.997409, 0.051701,
		0.823912, -0.070475, 0.562319,
		29.204016, 31.899899, 50.694000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187641, 32.448841, 50.020542>,  <28.627277, 31.949232, 50.300377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187641, 32.448841, 50.020542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353193, 32.146217, 50.223057>,  <29.452524, 31.964643, 50.344566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353193, 32.146217, 50.223057>,  <29.187641, 32.448841, 50.020542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353193, 32.146217, 50.223057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554804, -0.231297, -0.799183,
		0.721731, 0.611653, 0.324013,
		0.413879, -0.756560, 0.506282,
		29.477358, 31.919249, 50.374943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967468, 32.589870, 50.139175>,  <29.187641, 32.448841, 50.020542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967468, 32.589870, 50.139175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904869, 32.195145, 50.155674>,  <29.867310, 31.958309, 50.165573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.904869, 32.195145, 50.155674>,  <29.967468, 32.589870, 50.139175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904869, 32.195145, 50.155674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656190, -0.135095, -0.742404,
		0.738189, -0.089118, 0.668681,
		-0.156497, -0.986817, 0.041248,
		29.857920, 31.899099, 50.168049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663385, 32.383068, 50.303562>,  <29.967468, 32.589870, 50.139175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663385, 32.383068, 50.303562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.441439, 32.087589, 50.150486>,  <30.308271, 31.910303, 50.058640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.441439, 32.087589, 50.150486>,  <30.663385, 32.383068, 50.303562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441439, 32.087589, 50.150486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626002, -0.067748, -0.776873,
		0.547946, -0.670626, 0.500016,
		-0.554866, -0.738695, -0.382691,
		30.274979, 31.865980, 50.035679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074354, 31.947760, 50.063530>,  <30.663385, 32.383068, 50.303562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074354, 31.947760, 50.063530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754383, 31.806364, 49.869556>,  <30.562401, 31.721527, 49.753170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.754383, 31.806364, 49.869556>,  <31.074354, 31.947760, 50.063530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754383, 31.806364, 49.869556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563938, -0.166529, -0.808852,
		0.205164, -0.920497, 0.332557,
		-0.799926, -0.353488, -0.484938,
		30.514406, 31.700317, 49.724075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268440, 31.333141, 49.767681>,  <31.074354, 31.947760, 50.063530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268440, 31.333141, 49.767681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.959066, 31.463865, 49.550426>,  <30.773443, 31.542299, 49.420074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.959066, 31.463865, 49.550426>,  <31.268440, 31.333141, 49.767681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959066, 31.463865, 49.550426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541522, -0.104713, -0.834140,
		-0.329479, -0.939271, -0.095987,
		-0.773432, 0.326810, -0.543137,
		30.727037, 31.561909, 49.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187119, 30.907549, 49.154148>,  <31.268440, 31.333141, 49.767681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187119, 30.907549, 49.154148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998701, 31.250679, 49.071930>,  <30.885651, 31.456558, 49.022598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998701, 31.250679, 49.071930>,  <31.187119, 30.907549, 49.154148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998701, 31.250679, 49.071930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348065, -0.033363, -0.936876,
		-0.810536, -0.512854, -0.282864,
		-0.471043, 0.857827, -0.205549,
		30.857388, 31.508028, 49.010265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907341, 30.884586, 48.442310>,  <31.187119, 30.907549, 49.154148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907341, 30.884586, 48.442310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947897, 31.270697, 48.538612>,  <30.972231, 31.502363, 48.596394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947897, 31.270697, 48.538612>,  <30.907341, 30.884586, 48.442310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947897, 31.270697, 48.538612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359496, 0.190103, -0.913577,
		-0.927622, 0.179181, -0.327737,
		0.101392, 0.965274, 0.240759,
		30.978315, 31.560280, 48.610840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678160, 31.114313, 47.886944>,  <30.907341, 30.884586, 48.442310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678160, 31.114313, 47.886944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888857, 31.415939, 48.043880>,  <31.015274, 31.596914, 48.138042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888857, 31.415939, 48.043880>,  <30.678160, 31.114313, 47.886944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888857, 31.415939, 48.043880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399143, 0.188097, -0.897388,
		-0.750486, 0.629291, -0.201900,
		0.526741, 0.754064, 0.392341,
		31.046879, 31.642159, 48.161583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632318, 31.671846, 47.414280>,  <30.678160, 31.114313, 47.886944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632318, 31.671846, 47.414280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957855, 31.743496, 47.635395>,  <31.153177, 31.786486, 47.768063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957855, 31.743496, 47.635395>,  <30.632318, 31.671846, 47.414280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957855, 31.743496, 47.635395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535280, 0.139096, -0.833143,
		-0.226126, 0.973944, 0.017322,
		0.813844, 0.179123, 0.552786,
		31.202009, 31.797234, 47.801231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908216, 32.339165, 47.179474>,  <30.632318, 31.671846, 47.414280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908216, 32.339165, 47.179474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237123, 32.201916, 47.361084>,  <31.434467, 32.119568, 47.470051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237123, 32.201916, 47.361084>,  <30.908216, 32.339165, 47.179474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237123, 32.201916, 47.361084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526514, 0.155863, -0.835757,
		0.216002, 0.926268, 0.308821,
		0.822269, -0.343123, 0.454027,
		31.483805, 32.098980, 47.497292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444407, 32.848618, 47.139839>,  <30.908216, 32.339165, 47.179474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444407, 32.848618, 47.139839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.546965, 32.462009, 47.135769>,  <31.608500, 32.230045, 47.133327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.546965, 32.462009, 47.135769>,  <31.444407, 32.848618, 47.139839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546965, 32.462009, 47.135769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269673, 0.081639, -0.959485,
		0.928191, 0.243265, 0.281576,
		0.256396, -0.966518, -0.010174,
		31.623884, 32.172054, 47.132717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746674, 33.458656, 47.575436>,  <31.444407, 32.848618, 47.139839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746674, 33.458656, 47.575436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.896803, 33.669159, 47.270229>,  <31.986881, 33.795460, 47.087105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.896803, 33.669159, 47.270229>,  <31.746674, 33.458656, 47.575436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896803, 33.669159, 47.270229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267433, 0.849669, 0.454469,
		0.887476, 0.033483, 0.459637,
		0.375322, 0.526252, -0.763015,
		32.009399, 33.827034, 47.041325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305820, 33.918133, 47.804787>,  <31.746674, 33.458656, 47.575436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305820, 33.918133, 47.804787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165714, 34.070717, 47.462605>,  <32.081650, 34.162270, 47.257294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.165714, 34.070717, 47.462605>,  <32.305820, 33.918133, 47.804787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165714, 34.070717, 47.462605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141058, 0.881413, 0.450793,
		0.925970, 0.278565, -0.254916,
		-0.350262, 0.381463, -0.855455,
		32.060635, 34.185154, 47.205967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673393, 34.583973, 47.784054>,  <32.305820, 33.918133, 47.804787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673393, 34.583973, 47.784054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362339, 34.621052, 47.535316>,  <32.175705, 34.643299, 47.386074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362339, 34.621052, 47.535316>,  <32.673393, 34.583973, 47.784054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362339, 34.621052, 47.535316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136684, 0.940488, 0.311127,
		0.613673, 0.326940, -0.718690,
		-0.777640, 0.092697, -0.621839,
		32.129047, 34.648861, 47.348766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785351, 35.147633, 47.531223>,  <32.673393, 34.583973, 47.784054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785351, 35.147633, 47.531223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394264, 35.100491, 47.461735>,  <32.159611, 35.072205, 47.420040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394264, 35.100491, 47.461735>,  <32.785351, 35.147633, 47.531223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394264, 35.100491, 47.461735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161358, 0.951277, 0.262746,
		0.134291, 0.284923, -0.949097,
		-0.977716, -0.117860, -0.173723,
		32.100948, 35.065132, 47.409618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442326, 35.805775, 47.305588>,  <32.785351, 35.147633, 47.531223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442326, 35.805775, 47.305588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140850, 35.579205, 47.438927>,  <31.959965, 35.443264, 47.518929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140850, 35.579205, 47.438927>,  <32.442326, 35.805775, 47.305588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140850, 35.579205, 47.438927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353630, 0.777013, 0.520766,
		-0.553988, 0.274614, -0.785929,
		-0.753686, -0.566426, 0.333344,
		31.914743, 35.409275, 47.538929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907713, 36.142994, 47.116856>,  <32.442326, 35.805775, 47.305588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907713, 36.142994, 47.116856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759995, 35.911003, 47.407303>,  <31.671364, 35.771809, 47.581573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759995, 35.911003, 47.407303>,  <31.907713, 36.142994, 47.116856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759995, 35.911003, 47.407303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308574, 0.813548, 0.492871,
		-0.876587, -0.042047, -0.479404,
		-0.369294, -0.579975, 0.726120,
		31.649206, 35.737011, 47.625137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290318, 36.396889, 47.274235>,  <31.907713, 36.142994, 47.116856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290318, 36.396889, 47.274235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.351097, 36.187668, 47.609692>,  <31.387566, 36.062134, 47.810966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.351097, 36.187668, 47.609692>,  <31.290318, 36.396889, 47.274235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351097, 36.187668, 47.609692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585001, 0.636320, 0.502862,
		-0.796671, -0.567017, -0.209300,
		0.151950, -0.523056, 0.838644,
		31.396683, 36.030750, 47.861286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696411, 36.259808, 47.608742>,  <31.290318, 36.396889, 47.274235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696411, 36.259808, 47.608742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.943459, 36.201809, 47.917938>,  <31.091686, 36.167011, 48.103458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.943459, 36.201809, 47.917938>,  <30.696411, 36.259808, 47.608742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943459, 36.201809, 47.917938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540553, 0.635654, 0.551132,
		-0.571270, -0.758235, 0.314214,
		0.617619, -0.144997, 0.772996,
		31.128744, 36.158310, 48.149837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246063, 36.398716, 48.200447>,  <30.696411, 36.259808, 47.608742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246063, 36.398716, 48.200447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.608517, 36.397861, 48.369640>,  <30.825989, 36.397346, 48.471157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.608517, 36.397861, 48.369640>,  <30.246063, 36.398716, 48.200447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608517, 36.397861, 48.369640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363883, 0.505890, 0.782090,
		-0.215657, -0.862595, 0.457626,
		0.906135, -0.002141, 0.422982,
		30.880358, 36.397221, 48.496536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127453, 36.280258, 48.973526>,  <30.246063, 36.398716, 48.200447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127453, 36.280258, 48.973526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.487375, 36.450199, 48.933834>,  <30.703329, 36.552162, 48.910019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.487375, 36.450199, 48.933834>,  <30.127453, 36.280258, 48.973526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487375, 36.450199, 48.933834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186519, 0.580213, 0.792820,
		0.394407, -0.694876, 0.601323,
		0.899808, 0.424852, -0.099233,
		30.757317, 36.577656, 48.904064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461927, 36.242130, 49.661247>,  <30.127453, 36.280258, 48.973526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461927, 36.242130, 49.661247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626661, 36.543888, 49.456783>,  <30.725502, 36.724941, 49.334103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626661, 36.543888, 49.456783>,  <30.461927, 36.242130, 49.661247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626661, 36.543888, 49.456783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173379, 0.615561, 0.768781,
		0.894613, -0.227984, 0.384305,
		0.411833, 0.754392, -0.511162,
		30.750212, 36.770206, 49.303436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834705, 36.619076, 50.098965>,  <30.461927, 36.242130, 49.661247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834705, 36.619076, 50.098965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.812637, 36.885460, 49.801388>,  <30.799397, 37.045292, 49.622841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.812637, 36.885460, 49.801388>,  <30.834705, 36.619076, 50.098965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812637, 36.885460, 49.801388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192751, 0.723960, 0.662366,
		0.979696, 0.179938, 0.088426,
		-0.055168, 0.665961, -0.743944,
		30.796087, 37.085247, 49.578205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351151, 37.201988, 50.330025>,  <30.834705, 36.619076, 50.098965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351151, 37.201988, 50.330025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082966, 37.325436, 50.060139>,  <30.922056, 37.399506, 49.898209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082966, 37.325436, 50.060139>,  <31.351151, 37.201988, 50.330025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082966, 37.325436, 50.060139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282523, 0.734676, 0.616792,
		0.686050, 0.604155, -0.405378,
		-0.670460, 0.308622, -0.674712,
		30.881828, 37.418022, 49.857723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326855, 37.980049, 50.367699>,  <31.351151, 37.201988, 50.330025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326855, 37.980049, 50.367699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984604, 37.859081, 50.199677>,  <30.779253, 37.786499, 50.098866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984604, 37.859081, 50.199677>,  <31.326855, 37.980049, 50.367699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984604, 37.859081, 50.199677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517322, 0.525880, 0.675150,
		0.016719, 0.794980, -0.606405,
		-0.855628, -0.302419, -0.420053,
		30.727915, 37.768356, 50.073662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891624, 38.581337, 50.490925>,  <31.326855, 37.980049, 50.367699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891624, 38.581337, 50.490925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612827, 38.320789, 50.370979>,  <30.445549, 38.164459, 50.299011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.612827, 38.320789, 50.370979>,  <30.891624, 38.581337, 50.490925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612827, 38.320789, 50.370979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678290, 0.463209, 0.570403,
		-0.232647, 0.600959, -0.764672,
		-0.696992, -0.651372, -0.299860,
		30.403730, 38.125378, 50.281021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040127, 39.342323, 50.577297>,  <30.891624, 38.581337, 50.490925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040127, 39.342323, 50.577297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.322033, 39.406586, 50.853699>,  <31.491177, 39.445145, 51.019539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.322033, 39.406586, 50.853699>,  <31.040127, 39.342323, 50.577297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322033, 39.406586, 50.853699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706355, -0.249621, -0.662383,
		0.066073, 0.954923, -0.289407,
		0.704767, 0.160659, 0.691008,
		31.533463, 39.454784, 51.061001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487665, 39.774136, 50.298615>,  <31.040127, 39.342323, 50.577297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487665, 39.774136, 50.298615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.685410, 39.603683, 50.601673>,  <31.804056, 39.501411, 50.783508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.685410, 39.603683, 50.601673>,  <31.487665, 39.774136, 50.298615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685410, 39.603683, 50.601673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757018, -0.217334, -0.616190,
		0.427236, 0.878170, 0.215143,
		0.494362, -0.426126, 0.757643,
		31.833717, 39.475845, 50.828968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226536, 40.039570, 50.333305>,  <31.487665, 39.774136, 50.298615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226536, 40.039570, 50.333305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203465, 39.682327, 50.511753>,  <32.189621, 39.467979, 50.618824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203465, 39.682327, 50.511753>,  <32.226536, 40.039570, 50.333305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203465, 39.682327, 50.511753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814920, -0.300255, -0.495735,
		0.576697, 0.334963, 0.745131,
		-0.057676, -0.893111, 0.446124,
		32.186161, 39.414394, 50.645592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985325, 39.861290, 50.504566>,  <32.226536, 40.039570, 50.333305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985325, 39.861290, 50.504566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.794395, 39.515530, 50.567791>,  <32.679840, 39.308075, 50.605724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.794395, 39.515530, 50.567791>,  <32.985325, 39.861290, 50.504566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794395, 39.515530, 50.567791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788587, -0.500728, -0.356935,
		0.387680, -0.045726, 0.920659,
		-0.477321, -0.864396, 0.158063,
		32.651199, 39.256210, 50.615211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529232, 39.434090, 50.830986>,  <32.985325, 39.861290, 50.504566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529232, 39.434090, 50.830986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257774, 39.187908, 50.670654>,  <33.094902, 39.040199, 50.574455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257774, 39.187908, 50.670654>,  <33.529232, 39.434090, 50.830986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257774, 39.187908, 50.670654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733894, -0.546604, -0.403267,
		0.029097, -0.567840, 0.822625,
		-0.678641, -0.615453, -0.400830,
		33.054184, 39.003273, 50.550404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759518, 38.880230, 51.113075>,  <33.529232, 39.434090, 50.830986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759518, 38.880230, 51.113075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517956, 38.750561, 50.821812>,  <33.373020, 38.672760, 50.647053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517956, 38.750561, 50.821812>,  <33.759518, 38.880230, 51.113075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517956, 38.750561, 50.821812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695125, -0.661212, -0.282134,
		-0.390007, -0.676543, 0.624648,
		-0.603900, -0.324174, -0.728159,
		33.336784, 38.653309, 50.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671368, 38.139702, 51.261696>,  <33.759518, 38.880230, 51.113075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671368, 38.139702, 51.261696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607136, 38.231937, 50.877811>,  <33.568596, 38.287277, 50.647480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.607136, 38.231937, 50.877811>,  <33.671368, 38.139702, 51.261696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607136, 38.231937, 50.877811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677934, -0.680924, -0.277034,
		-0.717371, -0.695106, -0.046982,
		-0.160577, 0.230587, -0.959711,
		33.558964, 38.301113, 50.589897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776966, 37.525593, 50.935741>,  <33.671368, 38.139702, 51.261696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776966, 37.525593, 50.935741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784660, 37.767021, 50.616913>,  <33.789276, 37.911880, 50.425613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784660, 37.767021, 50.616913>,  <33.776966, 37.525593, 50.935741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784660, 37.767021, 50.616913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653595, -0.610880, -0.446810,
		-0.756600, -0.512372, -0.406240,
		0.019231, 0.603572, -0.797076,
		33.790428, 37.948093, 50.377789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799599, 37.090870, 50.385437>,  <33.776966, 37.525593, 50.935741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799599, 37.090870, 50.385437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930984, 37.440842, 50.243107>,  <34.009815, 37.650826, 50.157707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930984, 37.440842, 50.243107>,  <33.799599, 37.090870, 50.385437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930984, 37.440842, 50.243107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799619, -0.458099, -0.388272,
		-0.502713, -0.156991, -0.850078,
		0.328465, 0.874928, -0.355825,
		34.029526, 37.703320, 50.136360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910053, 36.955753, 49.669231>,  <33.799599, 37.090870, 50.385437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910053, 36.955753, 49.669231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128208, 37.267262, 49.793217>,  <34.259102, 37.454166, 49.867607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128208, 37.267262, 49.793217>,  <33.910053, 36.955753, 49.669231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128208, 37.267262, 49.793217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831688, -0.456838, -0.315586,
		-0.104166, 0.429908, -0.896844,
		0.545385, 0.778767, 0.309963,
		34.291824, 37.500893, 49.886204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406399, 37.026436, 49.116966>,  <33.910053, 36.955753, 49.669231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406399, 37.026436, 49.116966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552540, 37.163990, 49.462975>,  <34.640224, 37.246521, 49.670578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552540, 37.163990, 49.462975>,  <34.406399, 37.026436, 49.116966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552540, 37.163990, 49.462975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863701, -0.471819, -0.177222,
		0.347189, 0.811867, -0.469394,
		0.365350, 0.343887, 0.865021,
		34.662144, 37.267155, 49.722481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109875, 37.055077, 48.937836>,  <34.406399, 37.026436, 49.116966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109875, 37.055077, 48.937836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072556, 37.055447, 49.336090>,  <35.050163, 37.055668, 49.575043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072556, 37.055447, 49.336090>,  <35.109875, 37.055077, 48.937836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072556, 37.055447, 49.336090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871905, -0.482736, 0.082148,
		0.480707, 0.875765, 0.044230,
		-0.093293, 0.000924, 0.995638,
		35.044567, 37.055725, 49.634781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.662586, 39.731144, 56.695454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500393, 40.048248, 56.513416>,  <29.403076, 40.238510, 56.404194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.500393, 40.048248, 56.513416>,  <29.662586, 39.731144, 56.695454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500393, 40.048248, 56.513416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240550, -0.387772, -0.889814,
		-0.881884, -0.470277, -0.033464,
		-0.405483, 0.792763, -0.455095,
		29.378748, 40.286076, 56.376888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342333, 39.436535, 56.120163>,  <29.662586, 39.731144, 56.695454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342333, 39.436535, 56.120163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.379711, 39.823917, 56.027763>,  <29.402138, 40.056347, 55.972324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.379711, 39.823917, 56.027763>,  <29.342333, 39.436535, 56.120163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379711, 39.823917, 56.027763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204042, -0.245719, -0.947623,
		-0.974492, 0.041419, -0.220567,
		0.093447, 0.968456, -0.231000,
		29.407745, 40.114452, 55.958462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038023, 39.406525, 55.387833>,  <29.342333, 39.436535, 56.120163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038023, 39.406525, 55.387833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248182, 39.745773, 55.415112>,  <29.374279, 39.949322, 55.431480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248182, 39.745773, 55.415112>,  <29.038023, 39.406525, 55.387833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248182, 39.745773, 55.415112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303720, -0.112069, -0.946147,
		-0.794801, 0.517819, -0.316472,
		0.525400, 0.848118, 0.068199,
		29.405802, 40.000210, 55.435570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809782, 39.831303, 54.773331>,  <29.038023, 39.406525, 55.387833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809782, 39.831303, 54.773331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167780, 39.966164, 54.890167>,  <29.382578, 40.047081, 54.960270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167780, 39.966164, 54.890167>,  <28.809782, 39.831303, 54.773331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167780, 39.966164, 54.890167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326318, -0.048379, -0.944021,
		-0.304145, 0.940208, -0.153316,
		0.894993, 0.337149, 0.292092,
		29.436277, 40.067307, 54.977795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898529, 40.309692, 54.312996>,  <28.809782, 39.831303, 54.773331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898529, 40.309692, 54.312996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261116, 40.234173, 54.464085>,  <29.478668, 40.188862, 54.554737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261116, 40.234173, 54.464085>,  <28.898529, 40.309692, 54.312996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261116, 40.234173, 54.464085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398547, 0.086890, -0.913023,
		0.139554, 0.978165, 0.154007,
		0.906468, -0.188795, 0.377719,
		29.533056, 40.177536, 54.577400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296625, 40.892120, 54.125362>,  <28.898529, 40.309692, 54.312996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296625, 40.892120, 54.125362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561859, 40.600071, 54.191383>,  <29.720999, 40.424843, 54.230995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561859, 40.600071, 54.191383>,  <29.296625, 40.892120, 54.125362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561859, 40.600071, 54.191383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390349, 0.149134, -0.908508,
		0.638709, 0.666843, 0.383890,
		0.663083, -0.730123, 0.165048,
		29.760784, 40.381035, 54.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927876, 41.195679, 53.823959>,  <29.296625, 40.892120, 54.125362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927876, 41.195679, 53.823959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035559, 40.812561, 53.864254>,  <30.100168, 40.582687, 53.888432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035559, 40.812561, 53.864254>,  <29.927876, 41.195679, 53.823959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035559, 40.812561, 53.864254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581309, 0.078205, -0.809916,
		0.767859, 0.276596, 0.577830,
		0.269209, -0.957799, 0.100737,
		30.116322, 40.525223, 53.894474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613613, 41.184040, 53.809856>,  <29.927876, 41.195679, 53.823959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613613, 41.184040, 53.809856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474670, 40.830582, 53.684311>,  <30.391304, 40.618507, 53.608982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474670, 40.830582, 53.684311>,  <30.613613, 41.184040, 53.809856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474670, 40.830582, 53.684311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689642, -0.013927, -0.724017,
		0.635403, -0.467949, 0.614236,
		-0.347358, -0.883645, -0.313868,
		30.370462, 40.565487, 53.590149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238678, 40.745152, 53.574425>,  <30.613613, 41.184040, 53.809856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238678, 40.745152, 53.574425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.934433, 40.526932, 53.433659>,  <30.751886, 40.396000, 53.349197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.934433, 40.526932, 53.433659>,  <31.238678, 40.745152, 53.574425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934433, 40.526932, 53.433659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593159, -0.363648, -0.718278,
		0.263882, -0.755073, 0.600193,
		-0.760611, -0.545550, -0.351918,
		30.706249, 40.363266, 53.328083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490776, 40.037231, 53.380260>,  <31.238678, 40.745152, 53.574425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490776, 40.037231, 53.380260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.152666, 40.084705, 53.171867>,  <30.949800, 40.113190, 53.046833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.152666, 40.084705, 53.171867>,  <31.490776, 40.037231, 53.380260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152666, 40.084705, 53.171867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474730, -0.280682, -0.834176,
		-0.245225, -0.952436, 0.180916,
		-0.845279, 0.118675, -0.520980,
		30.899082, 40.120312, 53.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308603, 39.393055, 53.088947>,  <31.490776, 40.037231, 53.380260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308603, 39.393055, 53.088947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156935, 39.690319, 52.868423>,  <31.065933, 39.868679, 52.736111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.156935, 39.690319, 52.868423>,  <31.308603, 39.393055, 53.088947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156935, 39.690319, 52.868423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419964, -0.392694, -0.818182,
		-0.824536, -0.541761, -0.163202,
		-0.379171, 0.743159, -0.551311,
		31.043184, 39.913265, 52.703030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997864, 39.039314, 52.544884>,  <31.308603, 39.393055, 53.088947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997864, 39.039314, 52.544884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986841, 39.403305, 52.379391>,  <30.980228, 39.621700, 52.280094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986841, 39.403305, 52.379391>,  <30.997864, 39.039314, 52.544884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986841, 39.403305, 52.379391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286170, -0.389387, -0.875491,
		-0.957783, -0.142522, -0.249679,
		-0.027555, 0.909981, -0.413734,
		30.978575, 39.676300, 52.255272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692307, 38.929314, 51.849457>,  <30.997864, 39.039314, 52.544884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692307, 38.929314, 51.849457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895117, 39.273731, 51.833870>,  <31.016804, 39.480381, 51.824516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895117, 39.273731, 51.833870>,  <30.692307, 38.929314, 51.849457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895117, 39.273731, 51.833870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350783, -0.247435, -0.903176,
		-0.787321, 0.444265, -0.427498,
		0.507028, 0.861048, -0.038970,
		31.047226, 39.532047, 51.822178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649170, 39.096069, 51.192009>,  <30.692307, 38.929314, 51.849457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649170, 39.096069, 51.192009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947729, 39.315838, 51.342224>,  <31.126863, 39.447701, 51.432354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947729, 39.315838, 51.342224>,  <30.649170, 39.096069, 51.192009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947729, 39.315838, 51.342224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596386, -0.301801, -0.743801,
		-0.295324, 0.779135, -0.552931,
		0.746396, 0.549423, 0.375536,
		31.171648, 39.480663, 51.454884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238842, 39.050110, 50.454254>,  <30.649170, 39.096069, 51.192009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238842, 39.050110, 50.454254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.110970, 38.671680, 50.475235>,  <30.034246, 38.444622, 50.487823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.110970, 38.671680, 50.475235>,  <30.238842, 39.050110, 50.454254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110970, 38.671680, 50.475235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742247, 0.284448, 0.606761,
		-0.588960, 0.155036, -0.793152,
		-0.319681, -0.946072, 0.052454,
		30.015066, 38.387859, 50.490971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540646, 39.064510, 50.403122>,  <30.238842, 39.050110, 50.454254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540646, 39.064510, 50.403122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600874, 38.704540, 50.566814>,  <29.637011, 38.488560, 50.665028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.600874, 38.704540, 50.566814>,  <29.540646, 39.064510, 50.403122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600874, 38.704540, 50.566814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879696, 0.066905, 0.470807,
		-0.451070, -0.430885, -0.781584,
		0.150572, -0.899923, 0.409227,
		29.646046, 38.434563, 50.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853132, 38.692089, 50.320709>,  <29.540646, 39.064510, 50.403122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853132, 38.692089, 50.320709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095425, 38.561909, 50.611134>,  <29.240799, 38.483799, 50.785389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095425, 38.561909, 50.611134>,  <28.853132, 38.692089, 50.320709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095425, 38.561909, 50.611134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735927, 0.117760, 0.666742,
		-0.302495, -0.938196, -0.168180,
		0.605730, -0.325454, 0.726066,
		29.277143, 38.464272, 50.828953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489559, 38.118229, 50.636089>,  <28.853132, 38.692089, 50.320709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489559, 38.118229, 50.636089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750595, 38.247223, 50.910351>,  <28.907217, 38.324619, 51.074909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.750595, 38.247223, 50.910351>,  <28.489559, 38.118229, 50.636089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750595, 38.247223, 50.910351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691191, -0.117394, 0.713073,
		0.310451, -0.939265, 0.146291,
		0.652591, 0.322489, 0.685657,
		28.946373, 38.343967, 51.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363985, 37.684891, 51.069889>,  <28.489559, 38.118229, 50.636089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363985, 37.684891, 51.069889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542162, 37.994484, 51.249905>,  <28.649069, 38.180241, 51.357914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.542162, 37.994484, 51.249905>,  <28.363985, 37.684891, 51.069889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542162, 37.994484, 51.249905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543104, -0.166025, 0.823088,
		0.711772, -0.611056, 0.346398,
		0.445442, 0.773981, 0.450039,
		28.675795, 38.226677, 51.384914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517704, 37.464264, 51.883560>,  <28.363985, 37.684891, 51.069889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517704, 37.464264, 51.883560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497303, 37.858444, 51.818710>,  <28.485062, 38.094952, 51.779800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497303, 37.858444, 51.818710>,  <28.517704, 37.464264, 51.883560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497303, 37.858444, 51.818710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538108, 0.109636, 0.835715,
		0.841331, 0.129863, 0.524688,
		-0.051004, 0.985452, -0.162120,
		28.482002, 38.154079, 51.770073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434753, 37.667538, 52.582729>,  <28.517704, 37.464264, 51.883560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434753, 37.667538, 52.582729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340839, 37.967144, 52.334908>,  <28.284491, 38.146908, 52.186214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340839, 37.967144, 52.334908>,  <28.434753, 37.667538, 52.582729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340839, 37.967144, 52.334908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634696, 0.364620, 0.681332,
		0.736232, 0.553198, 0.389789,
		-0.234787, 0.749016, -0.619557,
		28.270403, 38.191849, 52.149040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331070, 38.143547, 53.109928>,  <28.434753, 37.667538, 52.582729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331070, 38.143547, 53.109928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191832, 38.311737, 52.774780>,  <28.108288, 38.412651, 52.573692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.191832, 38.311737, 52.774780>,  <28.331070, 38.143547, 53.109928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191832, 38.311737, 52.774780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727457, 0.442585, 0.524333,
		0.591300, 0.792033, 0.151817,
		-0.348097, 0.420478, -0.837870,
		28.087402, 38.437881, 52.523418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173880, 38.787121, 53.343754>,  <28.331070, 38.143547, 53.109928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173880, 38.787121, 53.343754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952383, 38.737682, 53.014370>,  <27.819485, 38.708019, 52.816738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952383, 38.737682, 53.014370>,  <28.173880, 38.787121, 53.343754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952383, 38.737682, 53.014370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761281, 0.475820, 0.440507,
		0.337373, 0.870815, -0.357576,
		-0.553742, -0.123600, -0.823464,
		27.786261, 38.700603, 52.767330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020958, 39.474903, 53.243275>,  <28.173880, 38.787121, 53.343754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020958, 39.474903, 53.243275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755951, 39.235237, 53.063461>,  <27.596947, 39.091438, 52.955574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755951, 39.235237, 53.063461>,  <28.020958, 39.474903, 53.243275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755951, 39.235237, 53.063461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746705, 0.480854, 0.459577,
		-0.059200, 0.640146, -0.765969,
		-0.662515, -0.599161, -0.449533,
		27.557196, 39.055489, 52.928600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431452, 39.807228, 53.060314>,  <28.020958, 39.474903, 53.243275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431452, 39.807228, 53.060314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.289524, 39.433426, 53.049030>,  <27.204367, 39.209145, 53.042259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.289524, 39.433426, 53.049030>,  <27.431452, 39.807228, 53.060314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289524, 39.433426, 53.049030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829036, 0.300537, 0.471568,
		-0.432206, 0.190711, -0.881378,
		-0.354820, -0.934509, -0.028212,
		27.183079, 39.153072, 53.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748947, 39.969009, 52.882557>,  <27.431452, 39.807228, 53.060314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748947, 39.969009, 52.882557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788179, 39.611435, 53.057484>,  <26.811720, 39.396889, 53.162441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.788179, 39.611435, 53.057484>,  <26.748947, 39.969009, 52.882557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788179, 39.611435, 53.057484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688612, 0.256289, 0.678329,
		-0.718466, -0.367677, -0.590440,
		0.098082, -0.893941, 0.437321,
		26.817604, 39.343254, 53.188679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101070, 39.793388, 53.050087>,  <26.748947, 39.969009, 52.882557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101070, 39.793388, 53.050087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329739, 39.555630, 53.276321>,  <26.466940, 39.412975, 53.412064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329739, 39.555630, 53.276321>,  <26.101070, 39.793388, 53.050087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329739, 39.555630, 53.276321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619854, 0.138759, 0.772352,
		-0.537564, -0.792109, -0.289115,
		0.571669, -0.594397, 0.565584,
		26.501240, 39.377312, 53.445995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624317, 39.349026, 53.376953>,  <26.101070, 39.793388, 53.050087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624317, 39.349026, 53.376953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.962177, 39.332836, 53.590469>,  <26.164892, 39.323120, 53.718578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.962177, 39.332836, 53.590469>,  <25.624317, 39.349026, 53.376953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962177, 39.332836, 53.590469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493606, 0.327009, 0.805865,
		-0.207173, -0.944154, 0.256228,
		0.844649, -0.040477, 0.533787,
		26.215572, 39.320694, 53.750607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.358936, 35.217846, 58.484680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154087, 35.494930, 58.281551>,  <31.031178, 35.661179, 58.159676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154087, 35.494930, 58.281551>,  <31.358936, 35.217846, 58.484680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154087, 35.494930, 58.281551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414952, -0.318125, -0.852415,
		-0.752026, -0.647264, -0.124521,
		-0.512124, 0.692709, -0.507822,
		31.000450, 35.702744, 58.129204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059658, 34.819305, 57.899834>,  <31.358936, 35.217846, 58.484680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059658, 34.819305, 57.899834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055130, 35.205776, 57.796776>,  <31.052412, 35.437656, 57.734940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.055130, 35.205776, 57.796776>,  <31.059658, 34.819305, 57.899834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055130, 35.205776, 57.796776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234307, -0.247924, -0.940018,
		-0.972097, -0.071011, -0.223574,
		-0.011322, 0.966173, -0.257644,
		31.051733, 35.495628, 57.719482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861498, 34.751919, 57.289825>,  <31.059658, 34.819305, 57.899834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861498, 34.751919, 57.289825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042727, 35.107845, 57.311546>,  <31.151463, 35.321404, 57.324577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042727, 35.107845, 57.311546>,  <30.861498, 34.751919, 57.289825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042727, 35.107845, 57.311546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581181, -0.248633, -0.774862,
		-0.675985, 0.382627, -0.629794,
		0.453070, 0.889819, 0.054303,
		31.178648, 35.374790, 57.327839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839005, 35.017918, 56.676239>,  <30.861498, 34.751919, 57.289825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839005, 35.017918, 56.676239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142696, 35.213810, 56.847694>,  <31.324911, 35.331345, 56.950565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142696, 35.213810, 56.847694>,  <30.839005, 35.017918, 56.676239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142696, 35.213810, 56.847694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580607, -0.212109, -0.786070,
		-0.294047, 0.845678, -0.445382,
		0.759231, 0.489734, 0.428636,
		31.370466, 35.360729, 56.976284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081596, 35.441902, 56.219276>,  <30.839005, 35.017918, 56.676239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081596, 35.441902, 56.219276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.404257, 35.437649, 56.455650>,  <31.597853, 35.435097, 56.597473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.404257, 35.437649, 56.455650>,  <31.081596, 35.441902, 56.219276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404257, 35.437649, 56.455650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590471, -0.028889, -0.806542,
		0.025647, 0.999526, -0.017025,
		0.806651, -0.010633, 0.590932,
		31.646252, 35.434460, 56.632931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580849, 36.077496, 56.037743>,  <31.081596, 35.441902, 56.219276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580849, 36.077496, 56.037743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741346, 35.742027, 56.185055>,  <31.837645, 35.540745, 56.273441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.741346, 35.742027, 56.185055>,  <31.580849, 36.077496, 56.037743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741346, 35.742027, 56.185055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506045, -0.132169, -0.852321,
		0.763493, 0.528356, 0.371374,
		0.401245, -0.838672, 0.368282,
		31.861719, 35.490425, 56.295540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152401, 35.946686, 55.577534>,  <31.580849, 36.077496, 56.037743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152401, 35.946686, 55.577534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172859, 35.642315, 55.836262>,  <32.185135, 35.459694, 55.991497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.172859, 35.642315, 55.836262>,  <32.152401, 35.946686, 55.577534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172859, 35.642315, 55.836262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760213, -0.390351, -0.519328,
		0.647657, 0.518281, 0.558503,
		0.051146, -0.760928, 0.646818,
		32.188202, 35.414036, 56.030308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857708, 35.875309, 55.715191>,  <32.152401, 35.946686, 55.577534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857708, 35.875309, 55.715191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702457, 35.519772, 55.812614>,  <32.609306, 35.306450, 55.871067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.702457, 35.519772, 55.812614>,  <32.857708, 35.875309, 55.715191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702457, 35.519772, 55.812614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819091, -0.453819, -0.350910,
		0.422434, 0.063298, 0.904181,
		-0.388122, -0.888843, 0.243555,
		32.586021, 35.253120, 55.885681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394695, 35.503071, 55.967579>,  <32.857708, 35.875309, 55.715191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394695, 35.503071, 55.967579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124733, 35.232796, 55.848953>,  <32.962753, 35.070633, 55.777779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124733, 35.232796, 55.848953>,  <33.394695, 35.503071, 55.967579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124733, 35.232796, 55.848953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714759, -0.498758, -0.490265,
		0.183354, -0.542853, 0.819569,
		-0.674908, -0.675686, -0.296559,
		32.922260, 35.030090, 55.759987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691284, 34.876102, 56.074081>,  <33.394695, 35.503071, 55.967579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691284, 34.876102, 56.074081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411255, 34.775269, 55.806843>,  <33.243237, 34.714767, 55.646500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411255, 34.775269, 55.806843>,  <33.691284, 34.876102, 56.074081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411255, 34.775269, 55.806843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657609, -0.592233, -0.465629,
		-0.278289, -0.765319, 0.580381,
		-0.700075, -0.252084, -0.668093,
		33.201233, 34.699642, 55.606415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737297, 34.173252, 55.921013>,  <33.691284, 34.876102, 56.074081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737297, 34.173252, 55.921013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545971, 34.316956, 55.600479>,  <33.431175, 34.403179, 55.408157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545971, 34.316956, 55.600479>,  <33.737297, 34.173252, 55.921013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545971, 34.316956, 55.600479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618458, -0.510024, -0.597817,
		-0.623474, -0.781541, 0.021766,
		-0.478319, 0.359263, -0.801337,
		33.402473, 34.424736, 55.360077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664356, 33.652153, 55.482769>,  <33.737297, 34.173252, 55.921013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664356, 33.652153, 55.482769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.563969, 33.945374, 55.229897>,  <33.503738, 34.121307, 55.078175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.563969, 33.945374, 55.229897>,  <33.664356, 33.652153, 55.482769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563969, 33.945374, 55.229897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487672, -0.468400, -0.736734,
		-0.836177, -0.493193, -0.239935,
		-0.250966, 0.733050, -0.632182,
		33.488678, 34.165287, 55.040241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427273, 33.363564, 54.861183>,  <33.664356, 33.652153, 55.482769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427273, 33.363564, 54.861183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518452, 33.737991, 54.753994>,  <33.573158, 33.962650, 54.689682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518452, 33.737991, 54.753994>,  <33.427273, 33.363564, 54.861183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518452, 33.737991, 54.753994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531249, -0.350207, -0.771446,
		-0.815975, 0.033491, -0.577116,
		0.227947, 0.936073, -0.267968,
		33.586834, 34.018814, 54.673603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369152, 33.325001, 54.083118>,  <33.427273, 33.363564, 54.861183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369152, 33.325001, 54.083118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602638, 33.622616, 54.213158>,  <33.742729, 33.801186, 54.291180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602638, 33.622616, 54.213158>,  <33.369152, 33.325001, 54.083118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602638, 33.622616, 54.213158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696944, -0.253700, -0.670750,
		-0.416585, 0.618100, -0.666640,
		0.583717, 0.744035, 0.325094,
		33.777752, 33.845825, 54.310684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811749, 33.438122, 53.569183>,  <33.369152, 33.325001, 54.083118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811749, 33.438122, 53.569183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645283, 33.089050, 53.467018>,  <32.545403, 32.879608, 53.405720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645283, 33.089050, 53.467018>,  <32.811749, 33.438122, 53.569183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645283, 33.089050, 53.467018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725891, 0.149683, 0.671326,
		-0.547619, 0.464790, -0.695761,
		-0.416169, -0.872677, -0.255418,
		32.520432, 32.827248, 53.390392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020557, 33.582584, 53.494110>,  <32.811749, 33.438122, 53.569183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020557, 33.582584, 53.494110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067307, 33.188602, 53.545013>,  <32.095356, 32.952213, 53.575558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067307, 33.188602, 53.545013>,  <32.020557, 33.582584, 53.494110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067307, 33.188602, 53.545013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800536, -0.017593, 0.599027,
		-0.587779, -0.171888, -0.790551,
		0.116874, -0.984960, 0.127262,
		32.102367, 32.893116, 53.583191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445690, 33.279430, 53.366955>,  <32.020557, 33.582584, 53.494110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445690, 33.279430, 53.366955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607347, 32.994701, 53.596729>,  <31.704342, 32.823864, 53.734596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607347, 32.994701, 53.596729>,  <31.445690, 33.279430, 53.366955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607347, 32.994701, 53.596729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816519, 0.002304, 0.577314,
		-0.412267, -0.702358, -0.580284,
		0.404144, -0.711820, 0.574438,
		31.728590, 32.781155, 53.769062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976917, 32.696747, 53.500671>,  <31.445690, 33.279430, 53.366955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976917, 32.696747, 53.500671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223576, 32.685513, 53.815369>,  <31.371571, 32.678772, 54.004185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223576, 32.685513, 53.815369>,  <30.976917, 32.696747, 53.500671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223576, 32.685513, 53.815369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786594, 0.018556, 0.617192,
		-0.031942, -0.999433, -0.010661,
		0.616644, -0.028100, 0.786740,
		31.408569, 32.677086, 54.051392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552700, 32.369354, 54.047363>,  <30.976917, 32.696747, 53.500671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552700, 32.369354, 54.047363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.869928, 32.529514, 54.230980>,  <31.060265, 32.625610, 54.341152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.869928, 32.529514, 54.230980>,  <30.552700, 32.369354, 54.047363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869928, 32.529514, 54.230980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548475, 0.141559, 0.824097,
		0.264986, -0.905340, 0.331875,
		0.793069, 0.400400, 0.459045,
		31.107849, 32.649635, 54.368694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745028, 31.960161, 54.716480>,  <30.552700, 32.369354, 54.047363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745028, 31.960161, 54.716480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905689, 32.324764, 54.751881>,  <31.002087, 32.543526, 54.773121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905689, 32.324764, 54.751881>,  <30.745028, 31.960161, 54.716480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905689, 32.324764, 54.751881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417515, 0.096244, 0.903559,
		0.815081, -0.399869, 0.419224,
		0.401652, 0.911505, 0.088505,
		31.026186, 32.598217, 54.778431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118086, 31.871965, 55.362194>,  <30.745028, 31.960161, 54.716480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118086, 31.871965, 55.362194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076672, 32.268219, 55.326580>,  <31.051823, 32.505970, 55.305210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.076672, 32.268219, 55.326580>,  <31.118086, 31.871965, 55.362194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076672, 32.268219, 55.326580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338112, 0.049133, 0.939823,
		0.935394, 0.127409, 0.329858,
		-0.103535, 0.990633, -0.089037,
		31.045610, 32.565411, 55.299870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437946, 32.269211, 56.007538>,  <31.118086, 31.871965, 55.362194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437946, 32.269211, 56.007538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176683, 32.507496, 55.820557>,  <31.019926, 32.650467, 55.708366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176683, 32.507496, 55.820557>,  <31.437946, 32.269211, 56.007538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176683, 32.507496, 55.820557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465463, 0.171067, 0.868378,
		0.597268, 0.784770, 0.165548,
		-0.653157, 0.595711, -0.467455,
		30.980736, 32.686211, 55.680321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318563, 32.916573, 56.509346>,  <31.437946, 32.269211, 56.007538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318563, 32.916573, 56.509346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013000, 32.944775, 56.252762>,  <30.829662, 32.961697, 56.098812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013000, 32.944775, 56.252762>,  <31.318563, 32.916573, 56.509346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013000, 32.944775, 56.252762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638425, 0.062387, 0.767152,
		0.094108, 0.995559, -0.002645,
		-0.763909, 0.070507, -0.641461,
		30.783827, 32.965927, 56.060322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039204, 33.592518, 56.730396>,  <31.318563, 32.916573, 56.509346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039204, 33.592518, 56.730396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767609, 33.388542, 56.519138>,  <30.604652, 33.266155, 56.392384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.767609, 33.388542, 56.519138>,  <31.039204, 33.592518, 56.730396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767609, 33.388542, 56.519138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721942, 0.333135, 0.606483,
		-0.133329, 0.793082, -0.594343,
		-0.678987, -0.509943, -0.528143,
		30.563913, 33.235558, 56.360695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516296, 34.076031, 56.495983>,  <31.039204, 33.592518, 56.730396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516296, 34.076031, 56.495983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.328987, 33.723064, 56.477825>,  <30.216602, 33.511284, 56.466930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.328987, 33.723064, 56.477825>,  <30.516296, 34.076031, 56.495983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328987, 33.723064, 56.477825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754731, 0.372745, 0.539854,
		-0.459457, 0.287057, -0.840534,
		-0.468274, -0.882417, -0.045391,
		30.188505, 33.458340, 56.464207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857550, 34.254402, 56.264854>,  <30.516296, 34.076031, 56.495983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857550, 34.254402, 56.264854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.817175, 33.895805, 56.437420>,  <29.792950, 33.680649, 56.540958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.817175, 33.895805, 56.437420>,  <29.857550, 34.254402, 56.264854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817175, 33.895805, 56.437420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702386, 0.371319, 0.607270,
		-0.704604, -0.241727, -0.667159,
		-0.100935, -0.896488, 0.431418,
		29.786894, 33.626858, 56.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213320, 34.194267, 56.308102>,  <29.857550, 34.254402, 56.264854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213320, 34.194267, 56.308102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.323984, 33.903969, 56.560055>,  <29.390383, 33.729790, 56.711227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.323984, 33.903969, 56.560055>,  <29.213320, 34.194267, 56.308102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323984, 33.903969, 56.560055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671026, 0.323296, 0.667236,
		-0.687883, -0.607264, -0.397552,
		0.276662, -0.725748, 0.629880,
		29.406982, 33.686245, 56.749020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626545, 33.868065, 56.584522>,  <29.213320, 34.194267, 56.308102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626545, 33.868065, 56.584522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897469, 33.778614, 56.864876>,  <29.060022, 33.724945, 57.033089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897469, 33.778614, 56.864876>,  <28.626545, 33.868065, 56.584522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897469, 33.778614, 56.864876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660358, 0.235172, 0.713177,
		-0.324316, -0.945878, 0.011610,
		0.677308, -0.223628, 0.700888,
		29.100660, 33.711525, 57.075142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963087, 33.552307, 56.420456>,  <28.626545, 33.868065, 56.584522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963087, 33.552307, 56.420456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.672882, 33.783653, 56.271259>,  <27.498758, 33.922462, 56.181740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.672882, 33.783653, 56.271259>,  <27.963087, 33.552307, 56.420456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672882, 33.783653, 56.271259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037388, -0.508055, -0.860513,
		-0.687192, -0.638259, 0.346976,
		-0.725513, 0.578365, -0.372994,
		27.455229, 33.957161, 56.159363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580322, 33.105804, 55.902988>,  <27.963087, 33.552307, 56.420456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580322, 33.105804, 55.902988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.520655, 33.485184, 55.791138>,  <27.484854, 33.712811, 55.724026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.520655, 33.485184, 55.791138>,  <27.580322, 33.105804, 55.902988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520655, 33.485184, 55.791138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053141, -0.290074, -0.955528,
		-0.987383, -0.127674, 0.093671,
		-0.149168, 0.948449, -0.279630,
		27.475904, 33.769718, 55.707249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022524, 33.123100, 55.522179>,  <27.580322, 33.105804, 55.902988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022524, 33.123100, 55.522179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.264112, 33.423168, 55.414497>,  <27.409065, 33.603207, 55.349888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.264112, 33.423168, 55.414497>,  <27.022524, 33.123100, 55.522179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264112, 33.423168, 55.414497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016987, -0.349803, -0.936670,
		-0.796823, 0.561151, -0.224014,
		0.603974, 0.750165, -0.269199,
		27.445305, 33.648216, 55.333736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854895, 33.249790, 54.784290>,  <27.022524, 33.123100, 55.522179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854895, 33.249790, 54.784290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.200275, 33.436131, 54.861683>,  <27.407503, 33.547935, 54.908119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.200275, 33.436131, 54.861683>,  <26.854895, 33.249790, 54.784290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200275, 33.436131, 54.861683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219845, -0.002316, -0.975532,
		-0.454005, 0.884860, -0.104415,
		0.863451, 0.465851, 0.193481,
		27.459311, 33.575886, 54.919727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900103, 33.868999, 54.335888>,  <26.854895, 33.249790, 54.784290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900103, 33.868999, 54.335888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.269972, 33.743423, 54.422066>,  <27.491894, 33.668079, 54.473774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.269972, 33.743423, 54.422066>,  <26.900103, 33.868999, 54.335888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269972, 33.743423, 54.422066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225904, -0.003156, -0.974144,
		0.306501, 0.949438, 0.068002,
		0.924675, -0.313938, 0.215449,
		27.547375, 33.649242, 54.486702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229969, 34.183098, 53.879730>,  <26.900103, 33.868999, 54.335888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229969, 34.183098, 53.879730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.534500, 33.950424, 53.994289>,  <27.717218, 33.810818, 54.063023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.534500, 33.950424, 53.994289>,  <27.229969, 34.183098, 53.879730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534500, 33.950424, 53.994289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288989, -0.090973, -0.953000,
		0.580403, 0.808308, 0.098841,
		0.761326, -0.581689, 0.286394,
		27.762897, 33.775917, 54.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772285, 34.348217, 53.424091>,  <27.229969, 34.183098, 53.879730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772285, 34.348217, 53.424091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.878410, 33.987450, 53.560421>,  <27.942085, 33.770988, 53.642220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.878410, 33.987450, 53.560421>,  <27.772285, 34.348217, 53.424091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878410, 33.987450, 53.560421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346776, -0.240571, -0.906572,
		0.899643, 0.358711, 0.248937,
		0.265311, -0.901915, 0.340820,
		27.958004, 33.716873, 53.662666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362457, 34.277676, 53.184593>,  <27.772285, 34.348217, 53.424091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362457, 34.277676, 53.184593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.269693, 33.898872, 53.273491>,  <28.214035, 33.671589, 53.326828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.269693, 33.898872, 53.273491>,  <28.362457, 34.277676, 53.184593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269693, 33.898872, 53.273491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339496, -0.292904, -0.893839,
		0.911570, -0.131839, 0.389433,
		-0.231909, -0.947009, 0.222244,
		28.200121, 33.614769, 53.340164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953358, 33.901043, 53.008896>,  <28.362457, 34.277676, 53.184593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953358, 33.901043, 53.008896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.655458, 33.634644, 52.991936>,  <28.476719, 33.474804, 52.981758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.655458, 33.634644, 52.991936>,  <28.953358, 33.901043, 53.008896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655458, 33.634644, 52.991936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396046, -0.389947, -0.831318,
		0.537121, -0.635915, 0.554178,
		-0.744748, -0.665998, -0.042403,
		28.432034, 33.434845, 52.979214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250666, 33.277901, 52.847557>,  <28.953358, 33.901043, 53.008896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250666, 33.277901, 52.847557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.865074, 33.207058, 52.768177>,  <28.633720, 33.164551, 52.720551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.865074, 33.207058, 52.768177>,  <29.250666, 33.277901, 52.847557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865074, 33.207058, 52.768177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265197, -0.697410, -0.665800,
		-0.020480, -0.694444, 0.719256,
		-0.963977, -0.177109, -0.198447,
		28.575882, 33.153927, 52.708641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171721, 32.521114, 52.907299>,  <29.250666, 33.277901, 52.847557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171721, 32.521114, 52.907299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853565, 32.623764, 52.687664>,  <28.662672, 32.685352, 52.555882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853565, 32.623764, 52.687664>,  <29.171721, 32.521114, 52.907299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853565, 32.623764, 52.687664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184621, -0.760310, -0.622771,
		-0.577295, -0.596719, 0.557366,
		-0.795390, 0.256621, -0.549090,
		28.614948, 32.700752, 52.522938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879274, 31.911049, 52.839993>,  <29.171721, 32.521114, 52.907299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879274, 31.911049, 52.839993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.765402, 32.153168, 52.542652>,  <28.697079, 32.298439, 52.364246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.765402, 32.153168, 52.542652>,  <28.879274, 31.911049, 52.839993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765402, 32.153168, 52.542652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223172, -0.712282, -0.665469,
		-0.932282, -0.355343, 0.067689,
		-0.284684, 0.605298, -0.743350,
		28.679996, 32.334759, 52.319649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572111, 31.477821, 52.283875>,  <28.879274, 31.911049, 52.839993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572111, 31.477821, 52.283875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.682026, 31.814123, 52.097275>,  <28.747974, 32.015903, 51.985313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.682026, 31.814123, 52.097275>,  <28.572111, 31.477821, 52.283875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682026, 31.814123, 52.097275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367936, -0.540196, -0.756843,
		-0.888322, 0.036327, -0.457782,
		0.274786, 0.840755, -0.466502,
		28.764462, 32.066349, 51.957325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542292, 31.261097, 51.545757>,  <28.572111, 31.477821, 52.283875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542292, 31.261097, 51.545757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.717743, 31.618715, 51.509350>,  <28.823013, 31.833286, 51.487507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.717743, 31.618715, 51.509350>,  <28.542292, 31.261097, 51.545757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717743, 31.618715, 51.509350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430113, -0.297780, -0.852250,
		-0.789055, 0.334672, -0.515157,
		0.438628, 0.894048, -0.091018,
		28.849331, 31.886930, 51.482044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.549555, 38.517799, 54.079048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.852562, 38.765072, 54.162971>,  <26.034367, 38.913433, 54.213326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.852562, 38.765072, 54.162971>,  <25.549555, 38.517799, 54.079048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852562, 38.765072, 54.162971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376536, 0.151210, 0.913978,
		0.533278, -0.771356, 0.347311,
		0.757519, 0.618180, 0.209806,
		26.079819, 38.950527, 54.225914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783415, 38.283390, 54.813801>,  <25.549555, 38.517799, 54.079048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783415, 38.283390, 54.813801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.926756, 38.651581, 54.751450>,  <26.012760, 38.872498, 54.714039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.926756, 38.651581, 54.751450>,  <25.783415, 38.283390, 54.813801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926756, 38.651581, 54.751450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081058, 0.197015, 0.977044,
		0.930061, -0.337489, 0.145213,
		0.358351, 0.920482, -0.155880,
		26.034262, 38.927727, 54.704685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510603, 38.365658, 55.064606>,  <25.783415, 38.283390, 54.813801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510603, 38.365658, 55.064606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.320036, 38.717194, 55.054241>,  <26.205696, 38.928116, 55.048023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.320036, 38.717194, 55.054241>,  <26.510603, 38.365658, 55.064606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320036, 38.717194, 55.054241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027433, 0.014602, 0.999517,
		0.878790, 0.476900, 0.017152,
		-0.476419, 0.878836, -0.025915,
		26.177111, 38.980843, 55.046467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778301, 38.702015, 55.588112>,  <26.510603, 38.365658, 55.064606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778301, 38.702015, 55.588112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.456884, 38.927288, 55.511021>,  <26.264034, 39.062450, 55.464767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.456884, 38.927288, 55.511021>,  <26.778301, 38.702015, 55.588112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456884, 38.927288, 55.511021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155707, 0.113628, 0.981246,
		0.574519, 0.818483, -0.003614,
		-0.803544, 0.563182, -0.192725,
		26.215820, 39.096241, 55.453201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710772, 39.280979, 56.172962>,  <26.778301, 38.702015, 55.588112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710772, 39.280979, 56.172962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.355307, 39.268925, 55.989937>,  <26.142027, 39.261692, 55.880119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.355307, 39.268925, 55.989937>,  <26.710772, 39.280979, 56.172962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355307, 39.268925, 55.989937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457866, 0.113131, 0.881793,
		0.025195, 0.993123, -0.114332,
		-0.888664, -0.030132, -0.457568,
		26.088707, 39.259884, 55.852665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302927, 39.958973, 56.307671>,  <26.710772, 39.280979, 56.172962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302927, 39.958973, 56.307671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.043940, 39.659042, 56.253201>,  <25.888546, 39.479084, 56.220516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.043940, 39.659042, 56.253201>,  <26.302927, 39.958973, 56.307671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043940, 39.659042, 56.253201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393960, 0.176359, 0.902049,
		-0.652363, 0.637699, -0.409588,
		-0.647470, -0.749825, -0.136178,
		25.849699, 39.434093, 56.212349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711824, 40.227413, 56.471634>,  <26.302927, 39.958973, 56.307671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711824, 40.227413, 56.471634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645088, 39.834278, 56.503113>,  <25.605045, 39.598396, 56.521999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.645088, 39.834278, 56.503113>,  <25.711824, 40.227413, 56.471634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645088, 39.834278, 56.503113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367237, 0.136015, 0.920129,
		-0.915041, 0.124616, -0.383628,
		-0.166842, -0.982838, 0.078696,
		25.595036, 39.539425, 56.526722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080635, 40.229473, 56.560738>,  <25.711824, 40.227413, 56.471634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080635, 40.229473, 56.560738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.157812, 39.854404, 56.676361>,  <25.204119, 39.629364, 56.745735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.157812, 39.854404, 56.676361>,  <25.080635, 40.229473, 56.560738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157812, 39.854404, 56.676361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472727, 0.169317, 0.864790,
		-0.859827, -0.303498, -0.410593,
		0.192942, -0.937668, 0.289055,
		25.215694, 39.573105, 56.763077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355577, 39.911449, 56.879009>,  <25.080635, 40.229473, 56.560738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355577, 39.911449, 56.879009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.678356, 39.706905, 56.997231>,  <24.872025, 39.584179, 57.068161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.678356, 39.706905, 56.997231>,  <24.355577, 39.911449, 56.879009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678356, 39.706905, 56.997231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388518, -0.082685, 0.917724,
		-0.444847, -0.855381, -0.265394,
		0.806948, -0.511357, 0.295549,
		24.920441, 39.553497, 57.085896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.107025, 39.319946, 57.271626>,  <24.355577, 39.911449, 56.879009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.107025, 39.319946, 57.271626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.486273, 39.335274, 57.397865>,  <24.713821, 39.344471, 57.473610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.486273, 39.335274, 57.397865>,  <24.107025, 39.319946, 57.271626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486273, 39.335274, 57.397865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311364, -0.088530, 0.946158,
		0.064200, -0.995336, -0.072004,
		0.948119, 0.038324, 0.315595,
		24.770708, 39.346771, 57.492542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.246132, 38.707115, 57.750751>,  <24.107025, 39.319946, 57.271626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.246132, 38.707115, 57.750751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.506008, 38.997261, 57.841740>,  <24.661934, 39.171349, 57.896332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.506008, 38.997261, 57.841740>,  <24.246132, 38.707115, 57.750751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506008, 38.997261, 57.841740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400663, 0.072439, 0.913357,
		0.646042, -0.684539, 0.337691,
		0.649691, 0.725368, 0.227471,
		24.700916, 39.214870, 57.909981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451632, 38.558067, 58.393444>,  <24.246132, 38.707115, 57.750751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451632, 38.558067, 58.393444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.534594, 38.948257, 58.363945>,  <24.584372, 39.182369, 58.346245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.534594, 38.948257, 58.363945>,  <24.451632, 38.558067, 58.393444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534594, 38.948257, 58.363945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278220, 0.131092, 0.951530,
		0.937857, -0.176836, 0.298585,
		0.207407, 0.975471, -0.073746,
		24.596815, 39.240898, 58.341820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812838, 38.811180, 58.989304>,  <24.451632, 38.558067, 58.393444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812838, 38.811180, 58.989304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.111738, 38.842583, 59.253258>,  <25.291079, 38.861423, 59.411629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.111738, 38.842583, 59.253258>,  <24.812838, 38.811180, 58.989304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111738, 38.842583, 59.253258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630631, -0.396917, -0.666904,
		0.209563, 0.914491, -0.346106,
		0.747253, 0.078506, 0.659886,
		25.335915, 38.866135, 59.451225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426275, 39.238991, 58.731228>,  <24.812838, 38.811180, 58.989304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426275, 39.238991, 58.731228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.510414, 38.946781, 58.991100>,  <25.560898, 38.771454, 59.147022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.510414, 38.946781, 58.991100>,  <25.426275, 39.238991, 58.731228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510414, 38.946781, 58.991100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629582, -0.407179, -0.661689,
		0.747918, 0.548210, 0.374279,
		0.210346, -0.730528, 0.649679,
		25.573519, 38.727623, 59.186005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014713, 38.958572, 58.460003>,  <25.426275, 39.238991, 58.731228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014713, 38.958572, 58.460003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.903250, 38.669098, 58.712551>,  <25.836370, 38.495415, 58.864079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.903250, 38.669098, 58.712551>,  <26.014713, 38.958572, 58.460003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903250, 38.669098, 58.712551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399165, -0.685212, -0.609223,
		0.873508, 0.082254, 0.479811,
		-0.278661, -0.723684, 0.631371,
		25.819651, 38.451992, 58.901962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454237, 38.425812, 58.709953>,  <26.014713, 38.958572, 58.460003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454237, 38.425812, 58.709953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.131296, 38.203957, 58.790508>,  <25.937532, 38.070843, 58.838840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.131296, 38.203957, 58.790508>,  <26.454237, 38.425812, 58.709953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131296, 38.203957, 58.790508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440621, -0.793677, -0.419441,
		0.392476, -0.249901, 0.885162,
		-0.807351, -0.554641, 0.201387,
		25.889091, 38.037563, 58.850925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651541, 37.679760, 58.734638>,  <26.454237, 38.425812, 58.709953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651541, 37.679760, 58.734638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.256800, 37.633587, 58.689392>,  <26.019955, 37.605881, 58.662243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.256800, 37.633587, 58.689392>,  <26.651541, 37.679760, 58.734638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256800, 37.633587, 58.689392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151723, -0.902853, -0.402289,
		-0.055688, -0.414162, 0.908498,
		-0.986853, -0.115437, -0.113116,
		25.960743, 37.598957, 58.655457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496067, 37.004768, 59.046814>,  <26.651541, 37.679760, 58.734638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496067, 37.004768, 59.046814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.210049, 37.088757, 58.780094>,  <26.038437, 37.139149, 58.620064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.210049, 37.088757, 58.780094>,  <26.496067, 37.004768, 59.046814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210049, 37.088757, 58.780094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136171, -0.893723, -0.427454,
		-0.685687, -0.396448, 0.610461,
		-0.715046, 0.209972, -0.666799,
		25.995535, 37.151749, 58.580055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059366, 36.464813, 58.959858>,  <26.496067, 37.004768, 59.046814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059366, 36.464813, 58.959858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.968542, 36.653088, 58.618824>,  <25.914047, 36.766052, 58.414204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.968542, 36.653088, 58.618824>,  <26.059366, 36.464813, 58.959858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968542, 36.653088, 58.618824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162127, -0.844962, -0.509661,
		-0.960291, -0.253951, 0.115546,
		-0.227061, 0.470690, -0.852581,
		25.900423, 36.794296, 58.363049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504084, 36.128571, 58.687561>,  <26.059366, 36.464813, 58.959858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504084, 36.128571, 58.687561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.646566, 36.305817, 58.358498>,  <25.732056, 36.412163, 58.161060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.646566, 36.305817, 58.358498>,  <25.504084, 36.128571, 58.687561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646566, 36.305817, 58.358498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203614, -0.896059, -0.394486,
		-0.911953, -0.026987, -0.409406,
		0.356206, 0.443114, -0.822659,
		25.753428, 36.438751, 58.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151262, 35.793770, 58.065422>,  <25.504084, 36.128571, 58.687561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151262, 35.793770, 58.065422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.488682, 35.963245, 57.933411>,  <25.691133, 36.064930, 57.854202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.488682, 35.963245, 57.933411>,  <25.151262, 35.793770, 58.065422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488682, 35.963245, 57.933411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203397, -0.820774, -0.533816,
		-0.497049, 0.383172, -0.778538,
		0.843547, 0.423685, -0.330029,
		25.741745, 36.090351, 57.834400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171486, 35.580936, 57.400314>,  <25.151262, 35.793770, 58.065422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171486, 35.580936, 57.400314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.541973, 35.715580, 57.468216>,  <25.764265, 35.796368, 57.508957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.541973, 35.715580, 57.468216>,  <25.171486, 35.580936, 57.400314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541973, 35.715580, 57.468216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358881, -0.649393, -0.670442,
		-0.115444, 0.681895, -0.722282,
		0.926216, 0.336612, 0.169751,
		25.819838, 35.816563, 57.519142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412306, 35.682354, 56.725853>,  <25.171486, 35.580936, 57.400314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412306, 35.682354, 56.725853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.718773, 35.673317, 56.982750>,  <25.902653, 35.667892, 57.136890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.718773, 35.673317, 56.982750>,  <25.412306, 35.682354, 56.725853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718773, 35.673317, 56.982750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469928, -0.661995, -0.583892,
		0.438356, 0.749167, -0.496580,
		0.766166, -0.022596, 0.642245,
		25.948624, 35.666538, 57.175423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016338, 35.718845, 56.397839>,  <25.412306, 35.682354, 56.725853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016338, 35.718845, 56.397839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.110790, 35.528168, 56.736546>,  <26.167461, 35.413761, 56.939770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.110790, 35.528168, 56.736546>,  <26.016338, 35.718845, 56.397839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110790, 35.528168, 56.736546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538508, -0.661161, -0.522375,
		0.808858, 0.579337, 0.100582,
		0.236131, -0.476692, 0.846763,
		26.181629, 35.385159, 56.990574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767033, 35.666977, 56.358589>,  <26.016338, 35.718845, 56.397839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767033, 35.666977, 56.358589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.695501, 35.393143, 56.641251>,  <26.652582, 35.228844, 56.810848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.695501, 35.393143, 56.641251>,  <26.767033, 35.666977, 56.358589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695501, 35.393143, 56.641251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540390, -0.668542, -0.510911,
		0.822192, 0.290505, 0.489496,
		-0.178826, -0.684586, 0.706656,
		26.641853, 35.187767, 56.853249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361357, 35.361103, 56.437073>,  <26.767033, 35.666977, 56.358589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361357, 35.361103, 56.437073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.123487, 35.084064, 56.600376>,  <26.980766, 34.917839, 56.698357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.123487, 35.084064, 56.600376>,  <27.361357, 35.361103, 56.437073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123487, 35.084064, 56.600376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514151, -0.718006, -0.469164,
		0.618073, -0.069093, 0.783078,
		-0.594671, -0.692599, 0.408257,
		26.945086, 34.876286, 56.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761759, 34.880581, 56.903912>,  <27.361357, 35.361103, 56.437073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761759, 34.880581, 56.903912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.424536, 34.695431, 56.794365>,  <27.222202, 34.584343, 56.728638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.424536, 34.695431, 56.794365>,  <27.761759, 34.880581, 56.903912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424536, 34.695431, 56.794365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537691, -0.736754, -0.409978,
		-0.012008, -0.492892, 0.870007,
		-0.843057, -0.462872, -0.273870,
		27.171619, 34.556568, 56.712204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977398, 34.183102, 56.835529>,  <27.761759, 34.880581, 56.903912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977398, 34.183102, 56.835529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.628828, 34.188004, 56.639378>,  <27.419687, 34.190945, 56.521687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.628828, 34.188004, 56.639378>,  <27.977398, 34.183102, 56.835529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628828, 34.188004, 56.639378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356033, -0.671872, -0.649483,
		-0.337433, -0.740566, 0.581121,
		-0.871424, 0.012259, -0.490378,
		27.367401, 34.191681, 56.492264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220205, 33.584698, 57.108856>,  <27.977398, 34.183102, 56.835529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220205, 33.584698, 57.108856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.555944, 33.693260, 57.297253>,  <28.757387, 33.758400, 57.410290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.555944, 33.693260, 57.297253>,  <28.220205, 33.584698, 57.108856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555944, 33.693260, 57.297253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543281, 0.448350, 0.709808,
		-0.018523, -0.851657, 0.523772,
		0.839346, 0.271408, 0.470994,
		28.807749, 33.774681, 57.438549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066387, 33.364269, 57.717468>,  <28.220205, 33.584698, 57.108856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066387, 33.364269, 57.717468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373756, 33.613392, 57.776299>,  <28.558178, 33.762867, 57.811596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373756, 33.613392, 57.776299>,  <28.066387, 33.364269, 57.717468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373756, 33.613392, 57.776299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525821, 0.483495, 0.699817,
		0.364741, -0.615094, 0.699016,
		0.768424, 0.622809, 0.147078,
		28.604284, 33.800236, 57.820423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311640, 33.386829, 58.469448>,  <28.066387, 33.364269, 57.717468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311640, 33.386829, 58.469448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.451040, 33.741261, 58.347198>,  <28.534681, 33.953918, 58.273849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.451040, 33.741261, 58.347198>,  <28.311640, 33.386829, 58.469448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451040, 33.741261, 58.347198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483647, 0.449305, 0.751139,
		0.802889, -0.113957, 0.585134,
		0.348502, 0.886080, -0.305627,
		28.555592, 34.007084, 58.255508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593491, 33.755764, 59.028679>,  <28.311640, 33.386829, 58.469448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593491, 33.755764, 59.028679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.542723, 34.060204, 58.774242>,  <28.512262, 34.242867, 58.621578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.542723, 34.060204, 58.774242>,  <28.593491, 33.755764, 59.028679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542723, 34.060204, 58.774242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196530, 0.609273, 0.768220,
		0.972249, 0.222513, 0.072251,
		-0.126918, 0.761101, -0.636095,
		28.504648, 34.288532, 58.583412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096811, 34.367973, 59.279980>,  <28.593491, 33.755764, 59.028679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096811, 34.367973, 59.279980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.825838, 34.555271, 59.053059>,  <28.663254, 34.667648, 58.916904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.825838, 34.555271, 59.053059>,  <29.096811, 34.367973, 59.279980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825838, 34.555271, 59.053059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319145, 0.507765, 0.800201,
		0.662745, 0.723135, -0.194539,
		-0.677433, 0.468243, -0.567303,
		28.622608, 34.695744, 58.882866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110022, 35.060577, 59.404938>,  <29.096811, 34.367973, 59.279980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110022, 35.060577, 59.404938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.750811, 35.041504, 59.230000>,  <28.535284, 35.030060, 59.125034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.750811, 35.041504, 59.230000>,  <29.110022, 35.060577, 59.404938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750811, 35.041504, 59.230000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351121, 0.676653, 0.647190,
		0.265071, 0.734756, -0.624397,
		-0.898027, -0.047688, -0.437349,
		28.481403, 35.027199, 59.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883451, 35.782562, 59.365585>,  <29.110022, 35.060577, 59.404938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883451, 35.782562, 59.365585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.560881, 35.548828, 59.329315>,  <28.367338, 35.408588, 59.307552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.560881, 35.548828, 59.329315>,  <28.883451, 35.782562, 59.365585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560881, 35.548828, 59.329315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472166, 0.543988, 0.693640,
		-0.355996, 0.602183, -0.714592,
		-0.806427, -0.584340, -0.090673,
		28.318953, 35.373528, 59.302113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822035, 36.494892, 59.155800>,  <28.883451, 35.782562, 59.365585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822035, 36.494892, 59.155800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.080994, 36.543476, 59.456764>,  <29.236368, 36.572628, 59.637344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.080994, 36.543476, 59.456764>,  <28.822035, 36.494892, 59.155800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080994, 36.543476, 59.456764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730905, -0.378729, -0.567752,
		0.216002, 0.917503, -0.333963,
		0.647396, 0.121460, 0.752413,
		29.275213, 36.579914, 59.682487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366812, 36.917110, 58.913372>,  <28.822035, 36.494892, 59.155800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366812, 36.917110, 58.913372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.522861, 36.715511, 59.221603>,  <29.616491, 36.594551, 59.406544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.522861, 36.715511, 59.221603>,  <29.366812, 36.917110, 58.913372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522861, 36.715511, 59.221603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828627, -0.172733, -0.532486,
		0.401475, 0.846258, 0.350236,
		0.390123, -0.503994, 0.770580,
		29.639898, 36.564312, 59.452778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002275, 37.010845, 58.743565>,  <29.366812, 36.917110, 58.913372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002275, 37.010845, 58.743565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.003155, 36.717175, 59.015144>,  <30.003681, 36.540970, 59.178093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.003155, 36.717175, 59.015144>,  <30.002275, 37.010845, 58.743565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003155, 36.717175, 59.015144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835018, -0.372227, -0.405205,
		0.550217, 0.567828, 0.612235,
		0.002197, -0.734179, 0.678952,
		30.003815, 36.496922, 59.218830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702505, 36.974915, 59.024899>,  <30.002275, 37.010845, 58.743565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702505, 36.974915, 59.024899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520374, 36.619106, 59.040054>,  <30.411095, 36.405621, 59.049149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520374, 36.619106, 59.040054>,  <30.702505, 36.974915, 59.024899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520374, 36.619106, 59.040054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741634, -0.402486, -0.536641,
		0.492601, -0.216249, 0.842959,
		-0.455328, -0.889517, 0.037887,
		30.383776, 36.352253, 59.051422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194777, 36.514690, 59.032707>,  <30.702505, 36.974915, 59.024899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194777, 36.514690, 59.032707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.899759, 36.295746, 58.874508>,  <30.722748, 36.164379, 58.779587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.899759, 36.295746, 58.874508>,  <31.194777, 36.514690, 59.032707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899759, 36.295746, 58.874508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599320, -0.260664, -0.756882,
		0.311198, -0.795264, 0.520298,
		-0.737545, -0.547365, -0.395499,
		30.678495, 36.131535, 58.755859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478691, 35.808472, 58.894234>,  <31.194777, 36.514690, 59.032707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478691, 35.808472, 58.894234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153351, 35.872555, 58.670521>,  <30.958147, 35.911007, 58.536293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153351, 35.872555, 58.670521>,  <31.478691, 35.808472, 58.894234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153351, 35.872555, 58.670521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507810, -0.273587, -0.816872,
		-0.283890, -0.948410, 0.141161,
		-0.813349, 0.160219, -0.559280,
		30.909346, 35.920616, 58.502739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001137, 36.382320, 58.615982>,  <31.478691, 35.808472, 58.894234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001137, 36.382320, 58.615982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810831, 36.727406, 58.684544>,  <31.696648, 36.934456, 58.725681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810831, 36.727406, 58.684544>,  <32.001137, 36.382320, 58.615982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810831, 36.727406, 58.684544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650257, 0.476210, -0.591938,
		-0.592297, -0.170163, -0.787546,
		-0.475763, 0.862710, 0.171409,
		31.668102, 36.986217, 58.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<25.884533, 41.578453, 59.927040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708212, 41.499752, 59.576729>,  <25.602419, 41.452534, 59.366543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708212, 41.499752, 59.576729>,  <25.884533, 41.578453, 59.927040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708212, 41.499752, 59.576729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892841, -0.196486, -0.405250,
		-0.092345, -0.960564, 0.262278,
		-0.440803, -0.196750, -0.875775,
		25.575972, 41.440727, 59.313995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306196, 41.106834, 59.684967>,  <25.884533, 41.578453, 59.927040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306196, 41.106834, 59.684967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103786, 41.210052, 59.355762>,  <25.982342, 41.271984, 59.158237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103786, 41.210052, 59.355762>,  <26.306196, 41.106834, 59.684967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103786, 41.210052, 59.355762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793667, -0.234275, -0.561435,
		-0.337689, -0.937297, -0.086257,
		-0.506023, 0.258049, -0.823014,
		25.951979, 41.287468, 59.108860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198172, 40.483349, 59.195995>,  <26.306196, 41.106834, 59.684967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198172, 40.483349, 59.195995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213188, 40.844727, 59.025169>,  <26.222198, 41.061554, 58.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213188, 40.844727, 59.025169>,  <26.198172, 40.483349, 59.195995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213188, 40.844727, 59.025169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714061, -0.323226, -0.621000,
		-0.699076, -0.281639, -0.657246,
		0.037541, 0.903440, -0.427067,
		26.224451, 41.115757, 58.897049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286890, 40.273617, 58.538799>,  <26.198172, 40.483349, 59.195995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286890, 40.273617, 58.538799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411436, 40.653709, 58.543072>,  <26.486164, 40.881763, 58.545635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411436, 40.653709, 58.543072>,  <26.286890, 40.273617, 58.538799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411436, 40.653709, 58.543072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808305, -0.258918, -0.528777,
		-0.499694, 0.173276, -0.848694,
		0.311366, 0.950230, 0.010680,
		26.504847, 40.938778, 58.546276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699512, 40.195202, 57.985725>,  <26.286890, 40.273617, 58.538799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699512, 40.195202, 57.985725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772066, 40.570885, 58.102333>,  <26.815598, 40.796295, 58.172298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772066, 40.570885, 58.102333>,  <26.699512, 40.195202, 57.985725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772066, 40.570885, 58.102333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883045, -0.025083, -0.468618,
		-0.432818, 0.342425, -0.833914,
		0.181383, 0.939210, 0.291521,
		26.826481, 40.852646, 58.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708229, 40.761131, 57.401844>,  <26.699512, 40.195202, 57.985725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708229, 40.761131, 57.401844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941259, 40.892815, 57.699089>,  <27.081078, 40.971825, 57.877438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941259, 40.892815, 57.699089>,  <26.708229, 40.761131, 57.401844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941259, 40.892815, 57.699089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770972, 0.065608, -0.633480,
		-0.257304, 0.941974, -0.215592,
		0.582578, 0.329212, 0.743117,
		27.116034, 40.991577, 57.922024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044153, 41.347702, 57.138294>,  <26.708229, 40.761131, 57.401844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044153, 41.347702, 57.138294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267551, 41.236664, 57.450966>,  <27.401590, 41.170040, 57.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267551, 41.236664, 57.450966>,  <27.044153, 41.347702, 57.138294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267551, 41.236664, 57.450966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829332, 0.167474, -0.533068,
		0.017065, 0.945988, 0.323751,
		0.558496, -0.277594, 0.781680,
		27.435101, 41.153385, 57.685471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665733, 41.813450, 57.122356>,  <27.044153, 41.347702, 57.138294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665733, 41.813450, 57.122356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767435, 41.484470, 57.325901>,  <27.828457, 41.287083, 57.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767435, 41.484470, 57.325901>,  <27.665733, 41.813450, 57.122356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767435, 41.484470, 57.325901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833759, -0.080234, -0.546268,
		0.490103, 0.563158, 0.665321,
		0.254254, -0.822445, 0.508861,
		27.843712, 41.237736, 57.478558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408670, 41.881023, 57.117489>,  <27.665733, 41.813450, 57.122356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408670, 41.881023, 57.117489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332531, 41.500946, 57.216202>,  <28.286848, 41.272900, 57.275429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332531, 41.500946, 57.216202>,  <28.408670, 41.881023, 57.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332531, 41.500946, 57.216202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777808, -0.299345, -0.552637,
		0.598985, 0.086758, 0.796046,
		-0.190347, -0.950192, 0.246784,
		28.275427, 41.215889, 57.290237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043100, 41.544353, 57.419125>,  <28.408670, 41.881023, 57.117489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043100, 41.544353, 57.419125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851496, 41.218784, 57.287621>,  <28.736532, 41.023445, 57.208717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851496, 41.218784, 57.287621>,  <29.043100, 41.544353, 57.419125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851496, 41.218784, 57.287621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833571, -0.304374, -0.460994,
		0.275147, -0.494866, 0.824259,
		-0.479013, -0.813919, -0.328758,
		28.707792, 40.974609, 57.188992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596970, 40.961937, 57.440250>,  <29.043100, 41.544353, 57.419125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596970, 40.961937, 57.440250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290403, 40.848339, 57.209789>,  <29.106464, 40.780178, 57.071510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290403, 40.848339, 57.209789>,  <29.596970, 40.961937, 57.440250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290403, 40.848339, 57.209789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642273, -0.325191, -0.694072,
		0.009755, -0.901995, 0.431636,
		-0.766414, -0.283999, -0.576155,
		29.060480, 40.763138, 57.036942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754726, 40.217461, 57.198975>,  <29.596970, 40.961937, 57.440250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754726, 40.217461, 57.198975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498106, 40.403107, 56.954678>,  <29.344133, 40.514492, 56.808098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498106, 40.403107, 56.954678>,  <29.754726, 40.217461, 57.198975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498106, 40.403107, 56.954678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581442, -0.225105, -0.781827,
		-0.500337, -0.856696, -0.125437,
		-0.641552, 0.464111, -0.610747,
		29.305641, 40.542339, 56.771454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103909, 39.608883, 57.339127>,  <29.754726, 40.217461, 57.198975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103909, 39.608883, 57.339127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418409, 39.708294, 57.565414>,  <30.607109, 39.767941, 57.701187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418409, 39.708294, 57.565414>,  <30.103909, 39.608883, 57.339127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418409, 39.708294, 57.565414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533663, -0.188375, 0.824451,
		0.311470, -0.950130, -0.015478,
		0.786251, 0.248532, 0.565722,
		30.654285, 39.782852, 57.735130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172218, 39.248932, 57.919479>,  <30.103909, 39.608883, 57.339127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172218, 39.248932, 57.919479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411066, 39.538086, 58.058556>,  <30.554375, 39.711578, 58.142002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411066, 39.538086, 58.058556>,  <30.172218, 39.248932, 57.919479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411066, 39.538086, 58.058556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454782, -0.051964, 0.889086,
		0.660773, -0.689013, 0.297726,
		0.597121, 0.722884, 0.347687,
		30.590202, 39.754951, 58.162861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500635, 39.016781, 58.534702>,  <30.172218, 39.248932, 57.919479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500635, 39.016781, 58.534702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461056, 39.414780, 58.540226>,  <30.437309, 39.653580, 58.543541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461056, 39.414780, 58.540226>,  <30.500635, 39.016781, 58.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461056, 39.414780, 58.540226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569419, -0.067997, 0.819230,
		0.816071, 0.073197, 0.573298,
		-0.098948, 0.994997, 0.013811,
		30.431372, 39.713280, 58.544369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347469, 39.186134, 59.160477>,  <30.500635, 39.016781, 58.534702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347469, 39.186134, 59.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245428, 39.531658, 58.986694>,  <30.184204, 39.738972, 58.882423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245428, 39.531658, 58.986694>,  <30.347469, 39.186134, 59.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245428, 39.531658, 58.986694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586542, 0.218962, 0.779759,
		0.768695, 0.453744, 0.450805,
		-0.255102, 0.863813, -0.434455,
		30.168898, 39.790802, 58.856358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454378, 39.605827, 59.616207>,  <30.347469, 39.186134, 59.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454378, 39.605827, 59.616207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199635, 39.789742, 59.368656>,  <30.046787, 39.900089, 59.220127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199635, 39.789742, 59.368656>,  <30.454378, 39.605827, 59.616207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199635, 39.789742, 59.368656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528090, 0.324690, 0.784664,
		0.561721, 0.826542, 0.036027,
		-0.636860, 0.459788, -0.618873,
		30.008577, 39.927677, 59.182995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386051, 40.101334, 59.964645>,  <30.454378, 39.605827, 59.616207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386051, 40.101334, 59.964645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067020, 40.067444, 59.725750>,  <29.875603, 40.047112, 59.582413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067020, 40.067444, 59.725750>,  <30.386051, 40.101334, 59.964645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067020, 40.067444, 59.725750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588893, 0.323855, 0.740488,
		0.130684, 0.942306, -0.308190,
		-0.797575, -0.084721, -0.597240,
		29.827747, 40.042027, 59.546577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014923, 40.665657, 60.120228>,  <30.386051, 40.101334, 59.964645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014923, 40.665657, 60.120228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772497, 40.391273, 59.959160>,  <29.627041, 40.226643, 59.862518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772497, 40.391273, 59.959160>,  <30.014923, 40.665657, 60.120228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772497, 40.391273, 59.959160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649431, 0.134443, 0.748441,
		-0.459264, 0.715112, -0.526965,
		-0.606065, -0.685959, -0.402672,
		29.590677, 40.185486, 59.838360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425426, 40.855972, 60.318916>,  <30.014923, 40.665657, 60.120228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425426, 40.855972, 60.318916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329651, 40.489052, 60.191650>,  <29.272186, 40.268898, 60.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329651, 40.489052, 60.191650>,  <29.425426, 40.855972, 60.318916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329651, 40.489052, 60.191650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684290, -0.073038, 0.725543,
		-0.688780, 0.391439, -0.610212,
		-0.239437, -0.917301, -0.318165,
		29.257820, 40.213863, 60.096203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653795, 40.911915, 60.392601>,  <29.425426, 40.855972, 60.318916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653795, 40.911915, 60.392601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780430, 40.533966, 60.359161>,  <28.856411, 40.307198, 60.339100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780430, 40.533966, 60.359161>,  <28.653795, 40.911915, 60.392601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780430, 40.533966, 60.359161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748264, -0.302928, 0.590200,
		-0.582988, -0.124296, -0.802917,
		0.316585, -0.944873, -0.083597,
		28.875406, 40.250504, 60.334084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104513, 40.496346, 60.205093>,  <28.653795, 40.911915, 60.392601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104513, 40.496346, 60.205093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357260, 40.269825, 60.416771>,  <28.508907, 40.133911, 60.543777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357260, 40.269825, 60.416771>,  <28.104513, 40.496346, 60.205093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357260, 40.269825, 60.416771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757464, -0.306454, 0.576484,
		-0.164293, -0.765105, -0.622594,
		0.631867, -0.566305, 0.529191,
		28.546820, 40.099934, 60.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682373, 39.926815, 60.283970>,  <28.104513, 40.496346, 60.205093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682373, 39.926815, 60.283970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997396, 39.857956, 60.520653>,  <28.186411, 39.816639, 60.662663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997396, 39.857956, 60.520653>,  <27.682373, 39.926815, 60.283970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997396, 39.857956, 60.520653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582997, -0.519240, 0.624903,
		0.199661, -0.837111, -0.509294,
		0.787559, -0.172148, 0.591706,
		28.233664, 39.806313, 60.698166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699528, 39.243275, 60.407211>,  <27.682373, 39.926815, 60.283970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699528, 39.243275, 60.407211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901730, 39.373219, 60.726944>,  <28.023050, 39.451183, 60.918785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901730, 39.373219, 60.726944>,  <27.699528, 39.243275, 60.407211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901730, 39.373219, 60.726944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617630, -0.510658, 0.598132,
		0.602492, -0.796051, -0.057500,
		0.505506, 0.324856, 0.799332,
		28.053381, 39.470676, 60.966743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751993, 38.643517, 60.801670>,  <27.699528, 39.243275, 60.407211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751993, 38.643517, 60.801670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807173, 38.944668, 61.059090>,  <27.840281, 39.125359, 61.213539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807173, 38.944668, 61.059090>,  <27.751993, 38.643517, 60.801670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807173, 38.944668, 61.059090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621192, -0.440307, 0.648268,
		0.771421, -0.489194, 0.406938,
		0.137951, 0.752874, 0.643545,
		27.848558, 39.170528, 61.252151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991537, 38.426353, 61.499836>,  <27.751993, 38.643517, 60.801670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991537, 38.426353, 61.499836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790766, 38.765610, 61.567638>,  <27.670303, 38.969162, 61.608318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790766, 38.765610, 61.567638>,  <27.991537, 38.426353, 61.499836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790766, 38.765610, 61.567638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524786, -0.454421, 0.719793,
		0.687510, 0.272330, 0.673177,
		-0.501927, 0.848138, 0.169504,
		27.640188, 39.020050, 61.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471670, 38.430664, 62.039257>,  <27.991537, 38.426353, 61.499836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471670, 38.430664, 62.039257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219006, 38.124817, 61.988091>,  <28.067406, 37.941307, 61.957390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219006, 38.124817, 61.988091>,  <28.471670, 38.430664, 62.039257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219006, 38.124817, 61.988091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597334, -0.374860, -0.708993,
		0.494160, -0.524251, 0.693518,
		-0.631663, -0.764618, -0.127913,
		28.029507, 37.895432, 61.949718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899212, 37.838726, 61.956219>,  <28.471670, 38.430664, 62.039257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899212, 37.838726, 61.956219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553625, 37.750988, 61.774910>,  <28.346273, 37.698345, 61.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553625, 37.750988, 61.774910>,  <28.899212, 37.838726, 61.956219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553625, 37.750988, 61.774910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479302, -0.634188, -0.606693,
		-0.154381, -0.741413, 0.653049,
		-0.863966, -0.219346, -0.453267,
		28.294436, 37.685184, 61.638931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858822, 37.110958, 61.990341>,  <28.899212, 37.838726, 61.956219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858822, 37.110958, 61.990341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617168, 37.241879, 61.699715>,  <28.472176, 37.320431, 61.525337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617168, 37.241879, 61.699715>,  <28.858822, 37.110958, 61.990341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617168, 37.241879, 61.699715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410669, -0.653488, -0.635849,
		-0.682916, -0.682515, 0.260381,
		-0.604133, 0.327302, -0.726565,
		28.435928, 37.340069, 61.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103672, 36.730404, 61.547253>,  <28.858822, 37.110958, 61.990341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103672, 36.730404, 61.547253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832191, 36.920551, 61.323326>,  <28.669304, 37.034637, 61.188972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832191, 36.920551, 61.323326>,  <29.103672, 36.730404, 61.547253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832191, 36.920551, 61.323326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305084, -0.510884, -0.803693,
		-0.668049, -0.716257, 0.201711,
		-0.678701, 0.475367, -0.559813,
		28.628582, 37.063160, 61.155380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709572, 36.219723, 61.226860>,  <29.103672, 36.730404, 61.547253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709572, 36.219723, 61.226860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712614, 36.558308, 61.013901>,  <28.714439, 36.761459, 60.886127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712614, 36.558308, 61.013901>,  <28.709572, 36.219723, 61.226860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712614, 36.558308, 61.013901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430802, -0.483242, -0.762159,
		-0.902414, -0.223561, -0.368332,
		0.007604, 0.846462, -0.532395,
		28.714895, 36.812244, 60.854183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551405, 36.067043, 60.644630>,  <28.709572, 36.219723, 61.226860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551405, 36.067043, 60.644630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743004, 36.407093, 60.557133>,  <28.857964, 36.611122, 60.504635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743004, 36.407093, 60.557133>,  <28.551405, 36.067043, 60.644630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743004, 36.407093, 60.557133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373964, -0.423073, -0.825324,
		-0.794175, 0.313524, -0.520567,
		0.478997, 0.850125, -0.218748,
		28.886703, 36.662132, 60.491508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491257, 36.155937, 59.965908>,  <28.551405, 36.067043, 60.644630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491257, 36.155937, 59.965908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784521, 36.420277, 60.030102>,  <28.960480, 36.578880, 60.068619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784521, 36.420277, 60.030102>,  <28.491257, 36.155937, 59.965908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784521, 36.420277, 60.030102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482878, -0.339718, -0.807106,
		-0.478854, 0.669234, -0.568177,
		0.733163, 0.660846, 0.160483,
		29.004471, 36.618530, 60.078247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150146, 36.326660, 59.370251>,  <28.491257, 36.155937, 59.965908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150146, 36.326660, 59.370251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039675, 35.949478, 59.444618>,  <27.973392, 35.723167, 59.489239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039675, 35.949478, 59.444618>,  <28.150146, 36.326660, 59.370251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039675, 35.949478, 59.444618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653574, 0.326087, 0.683014,
		-0.704675, 0.067125, -0.706348,
		-0.276178, -0.942954, 0.185914,
		27.956821, 35.666592, 59.500393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321205, 36.296444, 59.334286>,  <28.150146, 36.326660, 59.370251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321205, 36.296444, 59.334286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433083, 35.981453, 59.553974>,  <27.500210, 35.792458, 59.685787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433083, 35.981453, 59.553974>,  <27.321205, 36.296444, 59.334286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433083, 35.981453, 59.553974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688206, 0.234429, 0.686597,
		-0.669435, -0.570017, -0.476380,
		0.279695, -0.787480, 0.549224,
		27.516991, 35.745209, 59.718742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719187, 35.953594, 59.530880>,  <27.321205, 36.296444, 59.334286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719187, 35.953594, 59.530880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976181, 35.825207, 59.809216>,  <27.130377, 35.748173, 59.976215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976181, 35.825207, 59.809216>,  <26.719187, 35.953594, 59.530880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976181, 35.825207, 59.809216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704249, 0.110627, 0.701281,
		-0.302070, -0.940606, -0.154968,
		0.642486, -0.320972, 0.695837,
		27.168926, 35.728916, 60.017967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408537, 35.346889, 59.881882>,  <26.719187, 35.953594, 59.530880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408537, 35.346889, 59.881882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684139, 35.526951, 60.109085>,  <26.849501, 35.634987, 60.245407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684139, 35.526951, 60.109085>,  <26.408537, 35.346889, 59.881882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684139, 35.526951, 60.109085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692028, 0.175774, 0.700143,
		0.215332, -0.875480, 0.432628,
		0.689006, 0.450154, 0.568007,
		26.890841, 35.661995, 60.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433680, 34.937550, 60.437641>,  <26.408537, 35.346889, 59.881882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433680, 34.937550, 60.437641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556255, 35.302795, 60.545204>,  <26.629801, 35.521942, 60.609741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556255, 35.302795, 60.545204>,  <26.433680, 34.937550, 60.437641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556255, 35.302795, 60.545204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724003, 0.040176, 0.688625,
		0.617992, -0.405713, 0.673412,
		0.306439, 0.913117, 0.268909,
		26.648188, 35.576729, 60.625877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405317, 34.988667, 61.121281>,  <26.433680, 34.937550, 60.437641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405317, 34.988667, 61.121281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425049, 35.380432, 61.042984>,  <26.436888, 35.615490, 60.996006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425049, 35.380432, 61.042984>,  <26.405317, 34.988667, 61.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425049, 35.380432, 61.042984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750350, 0.165689, 0.639939,
		0.659198, 0.115306, 0.743077,
		0.049331, 0.979414, -0.195742,
		26.439848, 35.674255, 60.984261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355139, 35.370464, 61.763023>,  <26.405317, 34.988667, 61.121281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355139, 35.370464, 61.763023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214956, 35.603531, 61.469715>,  <26.130848, 35.743370, 61.293732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214956, 35.603531, 61.469715>,  <26.355139, 35.370464, 61.763023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214956, 35.603531, 61.469715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851707, 0.127404, 0.508296,
		0.389587, 0.802666, 0.451609,
		-0.350454, 0.582663, -0.733271,
		26.109819, 35.778332, 61.249733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978683, 35.885075, 62.116257>,  <26.355139, 35.370464, 61.763023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978683, 35.885075, 62.116257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866188, 35.929916, 61.735031>,  <25.798691, 35.956821, 61.506294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866188, 35.929916, 61.735031>,  <25.978683, 35.885075, 62.116257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866188, 35.929916, 61.735031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846896, 0.438069, 0.301433,
		0.451300, 0.891924, -0.028264,
		-0.281237, 0.112100, -0.953068,
		25.781816, 35.963547, 61.449112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447515, 36.451099, 62.150799>,  <25.978683, 35.885075, 62.116257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447515, 36.451099, 62.150799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374153, 36.224606, 61.829369>,  <25.330135, 36.088707, 61.636509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374153, 36.224606, 61.829369>,  <25.447515, 36.451099, 62.150799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374153, 36.224606, 61.829369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961904, -0.065213, 0.265496,
		-0.202737, 0.821658, -0.532706,
		-0.183407, -0.566238, -0.803577,
		25.319132, 36.054733, 61.588295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.320000, 33.297604, 49.498665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402851, 33.659969, 49.350925>,  <37.452560, 33.877388, 49.262283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402851, 33.659969, 49.350925>,  <37.320000, 33.297604, 49.498665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402851, 33.659969, 49.350925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978236, 0.196538, -0.066529,
		0.012321, 0.375091, 0.926906,
		0.207127, 0.905914, -0.369349,
		37.464989, 33.931744, 49.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840431, 33.664558, 49.776817>,  <37.320000, 33.297604, 49.498665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840431, 33.664558, 49.776817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944965, 33.921024, 49.488205>,  <37.007687, 34.074905, 49.315037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944965, 33.921024, 49.488205>,  <36.840431, 33.664558, 49.776817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944965, 33.921024, 49.488205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952443, 0.292644, -0.084925,
		0.156702, 0.709415, 0.687150,
		0.261337, 0.641163, -0.721535,
		37.023365, 34.113373, 49.271744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557152, 34.343822, 49.960537>,  <36.840431, 33.664558, 49.776817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557152, 34.343822, 49.960537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643135, 34.392517, 49.572933>,  <36.694725, 34.421734, 49.340370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643135, 34.392517, 49.572933>,  <36.557152, 34.343822, 49.960537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643135, 34.392517, 49.572933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884531, 0.444875, -0.140326,
		0.414005, 0.887280, 0.203308,
		0.214955, 0.121737, -0.969007,
		36.707623, 34.429039, 49.282230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440098, 35.069901, 49.818417>,  <36.557152, 34.343822, 49.960537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440098, 35.069901, 49.818417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397335, 34.856125, 49.483047>,  <36.371677, 34.727859, 49.281826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397335, 34.856125, 49.483047>,  <36.440098, 35.069901, 49.818417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397335, 34.856125, 49.483047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934066, 0.342955, -0.099507,
		0.340720, 0.772500, -0.535866,
		-0.106909, -0.534439, -0.838419,
		36.365261, 34.695793, 49.231522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086842, 35.523685, 49.352306>,  <36.440098, 35.069901, 49.818417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086842, 35.523685, 49.352306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050388, 35.156368, 49.198200>,  <36.028519, 34.935978, 49.105736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050388, 35.156368, 49.198200>,  <36.086842, 35.523685, 49.352306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050388, 35.156368, 49.198200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994569, 0.103459, -0.011341,
		0.050274, 0.382143, -0.922735,
		-0.091131, -0.918294, -0.385269,
		36.023048, 34.880878, 49.082619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569073, 35.557804, 48.810501>,  <36.086842, 35.523685, 49.352306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569073, 35.557804, 48.810501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610622, 35.188881, 48.959393>,  <35.635551, 34.967525, 49.048729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610622, 35.188881, 48.959393>,  <35.569073, 35.557804, 48.810501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610622, 35.188881, 48.959393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994016, -0.083547, 0.070378,
		-0.033812, -0.377315, -0.925467,
		0.103875, -0.922308, 0.372232,
		35.641785, 34.912189, 49.071060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134155, 35.200340, 48.509041>,  <35.569073, 35.557804, 48.810501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134155, 35.200340, 48.509041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193157, 34.955765, 48.820011>,  <35.228558, 34.809021, 49.006592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193157, 34.955765, 48.820011>,  <35.134155, 35.200340, 48.509041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193157, 34.955765, 48.820011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967379, 0.074489, 0.242135,
		-0.205960, -0.787781, -0.580502,
		0.147508, -0.611435, 0.777424,
		35.237411, 34.772335, 49.053238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516148, 34.772312, 48.447105>,  <35.134155, 35.200340, 48.509041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516148, 34.772312, 48.447105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673290, 34.721790, 48.811459>,  <34.767574, 34.691479, 49.030071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673290, 34.721790, 48.811459>,  <34.516148, 34.772312, 48.447105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673290, 34.721790, 48.811459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916635, -0.133265, 0.376857,
		0.073792, -0.983000, -0.168126,
		0.392855, -0.126301, 0.910886,
		34.791145, 34.683899, 49.084724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103367, 34.270290, 48.730686>,  <34.516148, 34.772312, 48.447105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103367, 34.270290, 48.730686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258003, 34.423119, 49.066441>,  <34.350784, 34.514816, 49.267895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258003, 34.423119, 49.066441>,  <34.103367, 34.270290, 48.730686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258003, 34.423119, 49.066441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877776, -0.126800, 0.461985,
		0.282947, -0.915392, 0.286355,
		0.386587, 0.382073, 0.839387,
		34.373981, 34.537739, 49.318256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809837, 33.845238, 49.298359>,  <34.103367, 34.270290, 48.730686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809837, 33.845238, 49.298359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931999, 34.182392, 49.475571>,  <34.005295, 34.384686, 49.581898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931999, 34.182392, 49.475571>,  <33.809837, 33.845238, 49.298359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931999, 34.182392, 49.475571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798127, -0.027170, 0.601876,
		0.519348, -0.537411, 0.664430,
		0.305402, 0.842883, 0.443033,
		34.023621, 34.435257, 49.608482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919174, 33.734955, 49.955654>,  <33.809837, 33.845238, 49.298359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919174, 33.734955, 49.955654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.830784, 34.123032, 49.915852>,  <33.777748, 34.355877, 49.891972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.830784, 34.123032, 49.915852>,  <33.919174, 33.734955, 49.955654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830784, 34.123032, 49.915852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867897, -0.149080, 0.473846,
		0.444886, 0.191072, 0.874968,
		-0.220979, 0.970189, -0.099507,
		33.764492, 34.414089, 49.885998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564934, 33.924061, 50.503670>,  <33.919174, 33.734955, 49.955654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564934, 33.924061, 50.503670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478600, 34.255020, 50.296272>,  <33.426800, 34.453594, 50.171833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478600, 34.255020, 50.296272>,  <33.564934, 33.924061, 50.503670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478600, 34.255020, 50.296272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919995, 0.005594, 0.391891,
		0.327149, 0.561591, 0.759992,
		-0.215832, 0.827396, -0.518491,
		33.413849, 34.503239, 50.140724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197170, 34.377876, 51.002968>,  <33.564934, 33.924061, 50.503670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197170, 34.377876, 51.002968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.103718, 34.507721, 50.636353>,  <33.047646, 34.585629, 50.416382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.103718, 34.507721, 50.636353>,  <33.197170, 34.377876, 51.002968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103718, 34.507721, 50.636353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959967, 0.072809, 0.270485,
		0.154535, 0.943040, 0.294608,
		-0.233628, 0.324613, -0.916539,
		33.033630, 34.605106, 50.361389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891060, 35.041653, 50.988102>,  <33.197170, 34.377876, 51.002968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891060, 35.041653, 50.988102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754135, 34.823971, 50.681725>,  <32.671982, 34.693363, 50.497898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754135, 34.823971, 50.681725>,  <32.891060, 35.041653, 50.988102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754135, 34.823971, 50.681725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937587, 0.144675, 0.316227,
		-0.061279, 0.826386, -0.559761,
		-0.342308, -0.544202, -0.765943,
		32.651443, 34.660709, 50.451942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208527, 35.327477, 50.783928>,  <32.891060, 35.041653, 50.988102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208527, 35.327477, 50.783928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236626, 34.961048, 50.625999>,  <32.253487, 34.741192, 50.531242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236626, 34.961048, 50.625999>,  <32.208527, 35.327477, 50.783928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236626, 34.961048, 50.625999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997085, -0.076305, -0.000365,
		-0.029792, 0.393695, -0.918758,
		0.070250, -0.916069, -0.394820,
		32.257702, 34.686226, 50.507553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805849, 35.343819, 50.191044>,  <32.208527, 35.327477, 50.783928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805849, 35.343819, 50.191044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.814674, 34.949055, 50.254936>,  <31.819969, 34.712196, 50.293274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.814674, 34.949055, 50.254936>,  <31.805849, 35.343819, 50.191044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814674, 34.949055, 50.254936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994413, -0.038161, -0.098417,
		0.103224, -0.156670, -0.982242,
		0.022064, -0.986914, 0.159734,
		31.821293, 34.652981, 50.302856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336128, 35.031479, 49.731525>,  <31.805849, 35.343819, 50.191044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336128, 35.031479, 49.731525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.353968, 34.779984, 50.042061>,  <31.364672, 34.629086, 50.228382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.353968, 34.779984, 50.042061>,  <31.336128, 35.031479, 49.731525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353968, 34.779984, 50.042061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992132, 0.063123, 0.108117,
		-0.116982, -0.775048, -0.620979,
		0.044597, -0.628741, 0.776335,
		31.367348, 34.591362, 50.274960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854601, 34.396919, 49.517815>,  <31.336128, 35.031479, 49.731525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854601, 34.396919, 49.517815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.910336, 34.424129, 49.912975>,  <30.943777, 34.440456, 50.150074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.910336, 34.424129, 49.912975>,  <30.854601, 34.396919, 49.517815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910336, 34.424129, 49.912975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968538, -0.198379, 0.150265,
		0.206202, -0.977762, 0.038245,
		0.139337, 0.068026, 0.987906,
		30.952137, 34.444538, 50.209347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313887, 33.974049, 49.852272>,  <30.854601, 34.396919, 49.517815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313887, 33.974049, 49.852272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.421429, 34.203053, 50.162098>,  <30.485954, 34.340454, 50.347992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.421429, 34.203053, 50.162098>,  <30.313887, 33.974049, 49.852272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421429, 34.203053, 50.162098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932032, -0.048216, 0.359153,
		0.242964, -0.818481, 0.520631,
		0.268857, 0.572506, 0.774566,
		30.502087, 34.374805, 50.394466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939510, 33.698601, 50.368767>,  <30.313887, 33.974049, 49.852272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939510, 33.698601, 50.368767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054880, 34.056740, 50.504509>,  <30.124102, 34.271622, 50.585957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.054880, 34.056740, 50.504509>,  <29.939510, 33.698601, 50.368767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054880, 34.056740, 50.504509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849965, 0.076219, 0.521296,
		0.440876, -0.438797, 0.782998,
		0.288422, 0.895348, 0.339360,
		30.141407, 34.325344, 50.606316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661755, 33.630852, 50.916344>,  <29.939510, 33.698601, 50.368767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661755, 33.630852, 50.916344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.745457, 34.021088, 50.889687>,  <29.795679, 34.255230, 50.873692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.745457, 34.021088, 50.889687>,  <29.661755, 33.630852, 50.916344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745457, 34.021088, 50.889687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833758, 0.213613, 0.509134,
		0.510939, -0.050979, 0.858104,
		0.209257, 0.975587, -0.066639,
		29.808233, 34.313763, 50.869694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490314, 33.911842, 51.522064>,  <29.661755, 33.630852, 50.916344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490314, 33.911842, 51.522064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.479990, 34.220932, 51.268379>,  <29.473795, 34.406387, 51.116169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.479990, 34.220932, 51.268379>,  <29.490314, 33.911842, 51.522064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479990, 34.220932, 51.268379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908022, 0.247238, 0.338187,
		0.418128, 0.584611, 0.695269,
		-0.025811, 0.772725, -0.634216,
		29.472246, 34.452751, 51.078114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199459, 34.440952, 51.916317>,  <29.490314, 33.911842, 51.522064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199459, 34.440952, 51.916317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.145185, 34.554878, 51.536743>,  <29.112621, 34.623234, 51.308998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.145185, 34.554878, 51.536743>,  <29.199459, 34.440952, 51.916317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145185, 34.554878, 51.536743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910561, 0.341630, 0.232738,
		0.390471, 0.895638, 0.212991,
		-0.135685, 0.284819, -0.948930,
		29.104481, 34.640324, 51.252064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130182, 35.143417, 51.839401>,  <29.199459, 34.440952, 51.916317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130182, 35.143417, 51.839401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.957880, 35.037411, 51.494328>,  <28.854498, 34.973808, 51.287285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.957880, 35.037411, 51.494328>,  <29.130182, 35.143417, 51.839401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957880, 35.037411, 51.494328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822646, 0.508363, 0.254598,
		0.371083, 0.819350, -0.436994,
		-0.430757, -0.265015, -0.862680,
		28.828653, 34.957905, 51.235523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730478, 35.679302, 51.752083>,  <29.130182, 35.143417, 51.839401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730478, 35.679302, 51.752083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.578508, 35.399498, 51.509975>,  <28.487328, 35.231617, 51.364712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.578508, 35.399498, 51.509975>,  <28.730478, 35.679302, 51.752083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578508, 35.399498, 51.509975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924575, 0.307413, 0.225073,
		0.028626, 0.645123, -0.763543,
		-0.379923, -0.699510, -0.605264,
		28.464531, 35.189644, 51.328396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355881, 35.981869, 51.232208>,  <28.730478, 35.679302, 51.752083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355881, 35.981869, 51.232208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.219887, 35.605984, 51.246933>,  <28.138290, 35.380455, 51.255768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.219887, 35.605984, 51.246933>,  <28.355881, 35.981869, 51.232208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219887, 35.605984, 51.246933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929176, 0.341694, 0.140987,
		-0.145064, 0.013733, -0.989327,
		-0.339984, -0.939711, 0.036808,
		28.117891, 35.324070, 51.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587727, 36.061634, 50.973877>,  <28.355881, 35.981869, 51.232208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587727, 36.061634, 50.973877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.611458, 35.688084, 51.114929>,  <27.625696, 35.463951, 51.199562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.611458, 35.688084, 51.114929>,  <27.587727, 36.061634, 50.973877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611458, 35.688084, 51.114929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964989, 0.036761, 0.259702,
		-0.255493, -0.355696, -0.899002,
		0.059327, -0.933879, 0.352634,
		27.629255, 35.407921, 51.220718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002069, 35.695587, 50.721409>,  <27.587727, 36.061634, 50.973877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002069, 35.695587, 50.721409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130587, 35.482231, 51.034397>,  <27.207697, 35.354218, 51.222191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.130587, 35.482231, 51.034397>,  <27.002069, 35.695587, 50.721409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130587, 35.482231, 51.034397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926687, -0.006953, 0.375770,
		-0.194993, -0.845838, -0.496524,
		0.321293, -0.533395, 0.782471,
		27.226974, 35.322212, 51.269138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554790, 35.264088, 50.748360>,  <27.002069, 35.695587, 50.721409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554790, 35.264088, 50.748360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.723768, 35.256596, 51.110836>,  <26.825155, 35.252102, 51.328323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.723768, 35.256596, 51.110836>,  <26.554790, 35.264088, 50.748360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723768, 35.256596, 51.110836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906377, -0.013859, 0.422242,
		0.004655, -0.999729, -0.022820,
		0.422444, -0.018718, 0.906196,
		26.850502, 35.250977, 51.382694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220615, 34.657673, 51.135921>,  <26.554790, 35.264088, 50.748360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220615, 34.657673, 51.135921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.339539, 34.914959, 51.418167>,  <26.410892, 35.069328, 51.587513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.339539, 34.914959, 51.418167>,  <26.220615, 34.657673, 51.135921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339539, 34.914959, 51.418167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878744, -0.104673, 0.465674,
		0.373386, -0.758499, 0.534099,
		0.297307, 0.643213, 0.705610,
		26.428730, 35.107922, 51.629848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192974, 34.305550, 51.857151>,  <26.220615, 34.657673, 51.135921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192974, 34.305550, 51.857151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.144598, 34.702301, 51.872913>,  <26.115572, 34.940353, 51.882370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.144598, 34.702301, 51.872913>,  <26.192974, 34.305550, 51.857151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144598, 34.702301, 51.872913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815703, -0.121925, 0.565476,
		0.565687, 0.036245, 0.823823,
		-0.120940, 0.991877, 0.039407,
		26.108316, 34.999863, 51.884735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132812, 34.381927, 52.571518>,  <26.192974, 34.305550, 51.857151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132812, 34.381927, 52.571518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.966478, 34.696400, 52.388653>,  <25.866678, 34.885082, 52.278934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.966478, 34.696400, 52.388653>,  <26.132812, 34.381927, 52.571518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966478, 34.696400, 52.388653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784340, -0.055588, 0.617836,
		0.460318, 0.615490, 0.639749,
		-0.415834, 0.786182, -0.457166,
		25.841728, 34.932255, 52.251503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603165, 34.642132, 53.004799>,  <26.132812, 34.381927, 52.571518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603165, 34.642132, 53.004799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.498466, 34.881748, 52.702110>,  <25.435648, 35.025520, 52.520496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.498466, 34.881748, 52.702110>,  <25.603165, 34.642132, 53.004799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498466, 34.881748, 52.702110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921931, 0.076778, 0.379669,
		0.285539, 0.797026, 0.532182,
		-0.261746, 0.599045, -0.756726,
		25.419943, 35.061462, 52.475094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247120, 35.240669, 53.399349>,  <25.603165, 34.642132, 53.004799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247120, 35.240669, 53.399349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.122114, 35.248928, 53.019474>,  <25.047110, 35.253883, 52.791550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.122114, 35.248928, 53.019474>,  <25.247120, 35.240669, 53.399349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122114, 35.248928, 53.019474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895213, 0.327964, 0.301718,
		0.317692, 0.944465, -0.084014,
		-0.312516, 0.020643, -0.949688,
		25.028360, 35.255119, 52.734566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010113, 35.872395, 53.314255>,  <25.247120, 35.240669, 53.399349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010113, 35.872395, 53.314255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.845015, 35.693863, 52.996655>,  <24.745956, 35.586746, 52.806095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.845015, 35.693863, 52.996655>,  <25.010113, 35.872395, 53.314255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.845015, 35.693863, 52.996655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902196, 0.320183, 0.289007,
		0.125234, 0.835630, -0.534826,
		-0.412746, -0.446324, -0.794000,
		24.721191, 35.559967, 52.758453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.770088, 31.628803, 49.125275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422981, 31.783955, 49.001003>,  <34.214718, 31.877045, 48.926441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422981, 31.783955, 49.001003>,  <34.770088, 31.628803, 49.125275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422981, 31.783955, 49.001003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150250, 0.391135, 0.907986,
		0.473707, 0.834604, -0.281137,
		-0.867771, 0.387879, -0.310682,
		34.162651, 31.900318, 48.907799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648949, 32.430599, 49.320194>,  <34.770088, 31.628803, 49.125275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648949, 32.430599, 49.320194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285229, 32.269253, 49.279247>,  <34.066998, 32.172447, 49.254677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285229, 32.269253, 49.279247>,  <34.648949, 32.430599, 49.320194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285229, 32.269253, 49.279247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211636, 0.236411, 0.948325,
		-0.358319, 0.883972, -0.300334,
		-0.909295, -0.403364, -0.102370,
		34.012440, 32.148243, 49.248535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256363, 32.891964, 49.587013>,  <34.648949, 32.430599, 49.320194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256363, 32.891964, 49.587013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015060, 32.573448, 49.604931>,  <33.870281, 32.382339, 49.615681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015060, 32.573448, 49.604931>,  <34.256363, 32.891964, 49.587013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015060, 32.573448, 49.604931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260017, 0.249457, 0.932825,
		-0.753973, 0.551083, -0.357535,
		-0.603254, -0.796290, 0.044793,
		33.834084, 32.334560, 49.618370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514618, 33.089497, 49.721985>,  <34.256363, 32.891964, 49.587013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514618, 33.089497, 49.721985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564400, 32.715988, 49.856197>,  <33.594269, 32.491882, 49.936726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564400, 32.715988, 49.856197>,  <33.514618, 33.089497, 49.721985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564400, 32.715988, 49.856197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244710, 0.298825, 0.922399,
		-0.961576, -0.196905, -0.191313,
		0.124456, -0.933773, 0.335527,
		33.601738, 32.435856, 49.956856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979221, 33.023434, 50.261269>,  <33.514618, 33.089497, 49.721985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979221, 33.023434, 50.261269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215515, 32.711243, 50.343132>,  <33.357292, 32.523926, 50.392250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215515, 32.711243, 50.343132>,  <32.979221, 33.023434, 50.261269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215515, 32.711243, 50.343132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321482, 0.004976, 0.946903,
		-0.740057, -0.625161, -0.247970,
		0.590733, -0.780480, 0.204661,
		33.392735, 32.477100, 50.404530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575726, 32.599392, 50.692047>,  <32.979221, 33.023434, 50.261269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575726, 32.599392, 50.692047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949074, 32.468323, 50.750629>,  <33.173084, 32.389683, 50.785778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949074, 32.468323, 50.750629>,  <32.575726, 32.599392, 50.692047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949074, 32.468323, 50.750629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175200, -0.059833, 0.982713,
		-0.313245, -0.942895, -0.113254,
		0.933371, -0.327672, 0.146453,
		33.229084, 32.370022, 50.794567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483597, 32.014191, 51.137596>,  <32.575726, 32.599392, 50.692047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483597, 32.014191, 51.137596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858456, 32.149082, 51.173450>,  <33.083370, 32.230015, 51.194965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.858456, 32.149082, 51.173450>,  <32.483597, 32.014191, 51.137596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858456, 32.149082, 51.173450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090606, -0.012901, 0.995803,
		0.336967, -0.941335, 0.018465,
		0.937147, 0.337226, 0.089637,
		33.139599, 32.250248, 51.200340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727798, 31.469429, 51.562096>,  <32.483597, 32.014191, 51.137596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727798, 31.469429, 51.562096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938889, 31.808424, 51.584988>,  <33.065544, 32.011822, 51.598724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938889, 31.808424, 51.584988>,  <32.727798, 31.469429, 51.562096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938889, 31.808424, 51.584988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150092, 0.026718, 0.988311,
		0.836050, -0.530146, 0.141300,
		0.527724, 0.847486, 0.057233,
		33.097206, 32.062668, 51.602158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235523, 31.423851, 52.130222>,  <32.727798, 31.469429, 51.562096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235523, 31.423851, 52.130222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213726, 31.818724, 52.070225>,  <33.200649, 32.055649, 52.034225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213726, 31.818724, 52.070225>,  <33.235523, 31.423851, 52.130222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213726, 31.818724, 52.070225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271723, 0.129892, 0.953569,
		0.960832, 0.092717, 0.261163,
		-0.054489, 0.987184, -0.149998,
		33.197380, 32.114880, 52.025227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564159, 31.694317, 52.729248>,  <33.235523, 31.423851, 52.130222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564159, 31.694317, 52.729248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345539, 31.981644, 52.557060>,  <33.214367, 32.154041, 52.453747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345539, 31.981644, 52.557060>,  <33.564159, 31.694317, 52.729248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345539, 31.981644, 52.557060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329795, 0.287867, 0.899093,
		0.769752, 0.633365, 0.079564,
		-0.546550, 0.718318, -0.430467,
		33.181576, 32.197140, 52.427921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673080, 32.318935, 53.119381>,  <33.564159, 31.694317, 52.729248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673080, 32.318935, 53.119381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337906, 32.414509, 52.923107>,  <33.136799, 32.471855, 52.805344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337906, 32.414509, 52.923107>,  <33.673080, 32.318935, 53.119381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337906, 32.414509, 52.923107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391810, 0.362507, 0.845620,
		0.379925, 0.900832, -0.210141,
		-0.837939, 0.238936, -0.490681,
		33.086525, 32.486191, 52.775902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454700, 33.001472, 53.314911>,  <33.673080, 32.318935, 53.119381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454700, 33.001472, 53.314911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114494, 32.828407, 53.195297>,  <32.910370, 32.724567, 53.123531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114494, 32.828407, 53.195297>,  <33.454700, 33.001472, 53.314911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114494, 32.828407, 53.195297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406712, 0.180566, 0.895534,
		-0.333470, 0.883288, -0.329544,
		-0.850520, -0.432663, -0.299030,
		32.859337, 32.698608, 53.105587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759861, 33.598625, 53.440056>,  <33.454700, 33.001472, 53.314911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759861, 33.598625, 53.440056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956730, 33.754360, 53.751488>,  <34.074852, 33.847801, 53.938347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956730, 33.754360, 53.751488>,  <33.759861, 33.598625, 53.440056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956730, 33.754360, 53.751488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870359, -0.204092, -0.448131,
		-0.015571, 0.898201, -0.439309,
		0.492171, 0.389335, 0.778579,
		34.104382, 33.871162, 53.985062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152950, 34.216736, 53.222321>,  <33.759861, 33.598625, 53.440056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152950, 34.216736, 53.222321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319946, 34.045120, 53.542728>,  <34.420143, 33.942150, 53.734974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319946, 34.045120, 53.542728>,  <34.152950, 34.216736, 53.222321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319946, 34.045120, 53.542728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819800, -0.202408, -0.535685,
		0.391960, 0.880318, 0.267220,
		0.417486, -0.429035, 0.801021,
		34.445190, 33.916409, 53.783035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839142, 34.493721, 53.097881>,  <34.152950, 34.216736, 53.222321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839142, 34.493721, 53.097881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868313, 34.182167, 53.347046>,  <34.885815, 33.995235, 53.496544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.868313, 34.182167, 53.347046>,  <34.839142, 34.493721, 53.097881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868313, 34.182167, 53.347046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755660, -0.364466, -0.544189,
		0.650891, 0.510398, 0.561992,
		0.072926, -0.778883, 0.622915,
		34.890190, 33.948502, 53.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534161, 34.452137, 53.273666>,  <34.839142, 34.493721, 53.097881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534161, 34.452137, 53.273666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413094, 34.084026, 53.372845>,  <35.340454, 33.863159, 53.432350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413094, 34.084026, 53.372845>,  <35.534161, 34.452137, 53.273666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413094, 34.084026, 53.372845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792993, -0.387472, -0.470136,
		0.528728, 0.054320, 0.847052,
		-0.302671, -0.920280, 0.247943,
		35.322292, 33.807941, 53.447227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103729, 34.174248, 53.714993>,  <35.534161, 34.452137, 53.273666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103729, 34.174248, 53.714993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891968, 33.881115, 53.544022>,  <35.764912, 33.705235, 53.441441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891968, 33.881115, 53.544022>,  <36.103729, 34.174248, 53.714993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891968, 33.881115, 53.544022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833910, -0.356885, -0.420983,
		0.155967, -0.579305, 0.800050,
		-0.529404, -0.732829, -0.427426,
		35.733147, 33.661266, 53.415794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510574, 33.572643, 53.761913>,  <36.103729, 34.174248, 53.714993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510574, 33.572643, 53.761913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257141, 33.488651, 53.464062>,  <36.105080, 33.438255, 53.285351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257141, 33.488651, 53.464062>,  <36.510574, 33.572643, 53.761913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257141, 33.488651, 53.464062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724260, -0.499429, -0.475413,
		-0.272063, -0.840522, 0.468512,
		-0.633584, -0.209982, -0.744633,
		36.067066, 33.425655, 53.240673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720749, 32.895607, 53.594849>,  <36.510574, 33.572643, 53.761913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720749, 32.895607, 53.594849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516674, 33.020432, 53.274269>,  <36.394230, 33.095325, 53.081921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516674, 33.020432, 53.274269>,  <36.720749, 32.895607, 53.594849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516674, 33.020432, 53.274269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749566, -0.295604, -0.592258,
		-0.421734, -0.902904, -0.083099,
		-0.510187, 0.312063, -0.801452,
		36.363617, 33.114052, 53.033833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524834, 32.344543, 53.085297>,  <36.720749, 32.895607, 53.594849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524834, 32.344543, 53.085297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564579, 32.709084, 52.925510>,  <36.588425, 32.927807, 52.829639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564579, 32.709084, 52.925510>,  <36.524834, 32.344543, 53.085297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564579, 32.709084, 52.925510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875804, -0.270661, -0.399637,
		-0.472328, -0.310147, -0.825055,
		0.099364, 0.911346, -0.399469,
		36.594387, 32.982487, 52.805668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042637, 32.233807, 52.782413>,  <36.524834, 32.344543, 53.085297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042637, 32.233807, 52.782413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987087, 32.616592, 52.680477>,  <36.953758, 32.846264, 52.619316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987087, 32.616592, 52.680477>,  <37.042637, 32.233807, 52.782413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987087, 32.616592, 52.680477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940599, 0.046950, -0.336257,
		-0.309820, -0.286396, -0.906636,
		-0.138869, 0.956960, -0.254838,
		36.945427, 32.903679, 52.604027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408867, 32.282463, 52.235809>,  <37.042637, 32.233807, 52.782413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408867, 32.282463, 52.235809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322079, 32.668350, 52.295456>,  <37.270004, 32.899883, 52.331242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322079, 32.668350, 52.295456>,  <37.408867, 32.282463, 52.235809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322079, 32.668350, 52.295456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833506, 0.262600, -0.486116,
		-0.508124, 0.018814, -0.861079,
		-0.216974, 0.964721, 0.149115,
		37.256985, 32.957767, 52.340191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327946, 32.672680, 51.602020>,  <37.408867, 32.282463, 52.235809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327946, 32.672680, 51.602020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430668, 32.953674, 51.867523>,  <37.492302, 33.122269, 52.026825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430668, 32.953674, 51.867523>,  <37.327946, 32.672680, 51.602020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430668, 32.953674, 51.867523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774933, 0.260731, -0.575759,
		-0.577522, 0.662222, -0.477421,
		0.256802, 0.702482, 0.663756,
		37.507710, 33.164417, 52.066650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578156, 33.138672, 51.151154>,  <37.327946, 32.672680, 51.602020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578156, 33.138672, 51.151154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729866, 33.264587, 51.499191>,  <37.820892, 33.340137, 51.708012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729866, 33.264587, 51.499191>,  <37.578156, 33.138672, 51.151154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729866, 33.264587, 51.499191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819630, 0.322061, -0.473797,
		-0.429370, 0.892851, -0.135864,
		0.379273, 0.314792, 0.870091,
		37.843647, 33.359024, 51.760220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711189, 33.864346, 51.106201>,  <37.578156, 33.138672, 51.151154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711189, 33.864346, 51.106201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946438, 33.723717, 51.397545>,  <38.087585, 33.639339, 51.572350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946438, 33.723717, 51.397545>,  <37.711189, 33.864346, 51.106201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946438, 33.723717, 51.397545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793287, 0.426142, -0.434854,
		-0.157502, 0.833547, 0.529521,
		0.588123, -0.351572, 0.728360,
		38.122875, 33.618244, 51.616055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039547, 34.184761, 51.031158>,  <37.711189, 33.864346, 51.106201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039547, 34.184761, 51.031158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011585, 34.505558, 50.793865>,  <36.994808, 34.698036, 50.651489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.011585, 34.505558, 50.793865>,  <37.039547, 34.184761, 51.031158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011585, 34.505558, 50.793865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693533, -0.466524, -0.548968,
		-0.717025, 0.373053, 0.588817,
		-0.069903, 0.801989, -0.593234,
		36.990616, 34.746155, 50.615894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316200, 34.496475, 51.124722>,  <37.039547, 34.184761, 51.031158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316200, 34.496475, 51.124722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522007, 34.505051, 50.781837>,  <36.645493, 34.510197, 50.576107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522007, 34.505051, 50.781837>,  <36.316200, 34.496475, 51.124722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522007, 34.505051, 50.781837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787053, -0.384955, -0.482034,
		-0.340322, 0.922687, -0.181192,
		0.514517, 0.021439, -0.857212,
		36.676361, 34.511482, 50.524673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655872, 35.099506, 51.339657>,  <36.316200, 34.496475, 51.124722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655872, 35.099506, 51.339657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753727, 35.350368, 51.043865>,  <36.812439, 35.500885, 50.866390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753727, 35.350368, 51.043865>,  <36.655872, 35.099506, 51.339657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753727, 35.350368, 51.043865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598282, 0.697799, 0.393873,
		0.763027, 0.346062, 0.545921,
		0.244639, 0.627151, -0.739482,
		36.827118, 35.538513, 50.822021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996269, 35.594982, 51.556263>,  <36.655872, 35.099506, 51.339657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996269, 35.594982, 51.556263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768482, 35.707333, 51.247246>,  <36.631809, 35.774742, 51.061836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768482, 35.707333, 51.247246>,  <36.996269, 35.594982, 51.556263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768482, 35.707333, 51.247246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397471, 0.728556, 0.557874,
		0.719530, 0.624753, -0.303250,
		-0.569468, 0.280874, -0.772539,
		36.597641, 35.791595, 51.015484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113323, 36.273972, 51.545715>,  <36.996269, 35.594982, 51.556263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113323, 36.273972, 51.545715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776638, 36.193985, 51.345100>,  <36.574627, 36.145992, 51.224731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776638, 36.193985, 51.345100>,  <37.113323, 36.273972, 51.545715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776638, 36.193985, 51.345100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409536, 0.841778, 0.351695,
		0.351856, 0.501423, -0.790426,
		-0.841711, -0.199962, -0.501535,
		36.524124, 36.133995, 51.194641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083374, 36.706509, 51.001839>,  <37.113323, 36.273972, 51.545715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083374, 36.706509, 51.001839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727062, 36.577724, 51.130123>,  <36.513275, 36.500454, 51.207096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727062, 36.577724, 51.130123>,  <37.083374, 36.706509, 51.001839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727062, 36.577724, 51.130123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169782, 0.890409, 0.422311,
		-0.421536, 0.321733, -0.847818,
		-0.890776, -0.321964, 0.320715,
		36.459831, 36.481136, 51.226337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671299, 37.223938, 50.904934>,  <37.083374, 36.706509, 51.001839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671299, 37.223938, 50.904934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442879, 37.013985, 51.157410>,  <36.305828, 36.888012, 51.308895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442879, 37.013985, 51.157410>,  <36.671299, 37.223938, 50.904934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442879, 37.013985, 51.157410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215929, 0.837847, 0.501386,
		-0.792009, 0.150024, -0.591789,
		-0.571048, -0.524886, 0.631188,
		36.271564, 36.856518, 51.346767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997566, 37.585819, 51.045990>,  <36.671299, 37.223938, 50.904934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997566, 37.585819, 51.045990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004383, 37.339756, 51.361279>,  <36.008472, 37.192120, 51.550453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.004383, 37.339756, 51.361279>,  <35.997566, 37.585819, 51.045990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004383, 37.339756, 51.361279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437707, 0.704192, 0.559040,
		-0.898956, -0.354539, -0.257256,
		0.017044, -0.615155, 0.788222,
		36.009495, 37.155209, 51.597744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353794, 37.669495, 51.426422>,  <35.997566, 37.585819, 51.045990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353794, 37.669495, 51.426422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590660, 37.508007, 51.705376>,  <35.732780, 37.411114, 51.872749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590660, 37.508007, 51.705376>,  <35.353794, 37.669495, 51.426422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590660, 37.508007, 51.705376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274393, 0.712698, 0.645578,
		-0.757657, -0.573649, 0.311260,
		0.592169, -0.403719, 0.697386,
		35.768311, 37.386890, 51.914593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858883, 37.540958, 51.999119>,  <35.353794, 37.669495, 51.426422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858883, 37.540958, 51.999119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.221928, 37.514694, 52.164974>,  <35.439754, 37.498936, 52.264488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.221928, 37.514694, 52.164974>,  <34.858883, 37.540958, 51.999119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221928, 37.514694, 52.164974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240284, 0.728644, 0.641359,
		-0.344233, -0.681737, 0.645552,
		0.907616, -0.065661, 0.414635,
		35.494213, 37.494995, 52.289364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701057, 37.366440, 52.635277>,  <34.858883, 37.540958, 51.999119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701057, 37.366440, 52.635277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068745, 37.521320, 52.663895>,  <35.289356, 37.614250, 52.681065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068745, 37.521320, 52.663895>,  <34.701057, 37.366440, 52.635277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068745, 37.521320, 52.663895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264367, 0.472235, 0.840895,
		0.291807, -0.791878, 0.536448,
		0.919216, 0.387198, 0.071545,
		35.344509, 37.637482, 52.685356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890697, 37.288471, 53.397381>,  <34.701057, 37.366440, 52.635277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890697, 37.288471, 53.397381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137707, 37.569363, 53.255657>,  <35.285912, 37.737900, 53.170624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137707, 37.569363, 53.255657>,  <34.890697, 37.288471, 53.397381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137707, 37.569363, 53.255657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242043, 0.598255, 0.763876,
		0.748383, -0.385955, 0.539408,
		0.617525, 0.702231, -0.354306,
		35.322964, 37.780033, 53.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313362, 37.575516, 53.976551>,  <34.890697, 37.288471, 53.397381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313362, 37.575516, 53.976551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329952, 37.858452, 53.694286>,  <35.339905, 38.028214, 53.524929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329952, 37.858452, 53.694286>,  <35.313362, 37.575516, 53.976551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329952, 37.858452, 53.694286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213668, 0.696208, 0.685303,
		0.976026, 0.122357, 0.180008,
		0.041471, 0.707335, -0.705660,
		35.342392, 38.070652, 53.482590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541222, 38.122215, 54.374832>,  <35.313362, 37.575516, 53.976551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541222, 38.122215, 54.374832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393913, 38.284252, 54.040104>,  <35.305527, 38.381474, 53.839268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393913, 38.284252, 54.040104>,  <35.541222, 38.122215, 54.374832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393913, 38.284252, 54.040104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277436, 0.811191, 0.514779,
		0.887359, 0.421744, -0.186351,
		-0.368271, 0.405093, -0.836825,
		35.283432, 38.405781, 53.789055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711926, 38.874012, 54.403923>,  <35.541222, 38.122215, 54.374832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711926, 38.874012, 54.403923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399624, 38.829166, 54.158047>,  <35.212242, 38.802258, 54.010521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399624, 38.829166, 54.158047>,  <35.711926, 38.874012, 54.403923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399624, 38.829166, 54.158047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521789, 0.658190, 0.542699,
		0.343740, 0.744456, -0.572388,
		-0.780756, -0.112118, -0.614695,
		35.165398, 38.795532, 53.973637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512871, 39.556236, 54.297691>,  <35.711926, 38.874012, 54.403923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512871, 39.556236, 54.297691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198177, 39.344284, 54.171024>,  <35.009361, 39.217113, 54.095024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.198177, 39.344284, 54.171024>,  <35.512871, 39.556236, 54.297691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198177, 39.344284, 54.171024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609379, 0.584762, 0.535454,
		-0.098554, 0.614228, -0.782950,
		-0.786730, -0.529884, -0.316667,
		34.962158, 39.185318, 54.076023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977165, 40.037350, 54.029133>,  <35.512871, 39.556236, 54.297691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977165, 40.037350, 54.029133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774910, 39.710163, 54.138866>,  <34.653557, 39.513851, 54.204708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774910, 39.710163, 54.138866>,  <34.977165, 40.037350, 54.029133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774910, 39.710163, 54.138866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666883, 0.572299, 0.477222,
		-0.547352, 0.058354, -0.834865,
		-0.505640, -0.817966, 0.274334,
		34.623219, 39.464775, 54.221165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367935, 40.309975, 54.009018>,  <34.977165, 40.037350, 54.029133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367935, 40.309975, 54.009018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302814, 39.966019, 54.202545>,  <34.263744, 39.759644, 54.318661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302814, 39.966019, 54.202545>,  <34.367935, 40.309975, 54.009018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302814, 39.966019, 54.202545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824317, 0.388014, 0.412245,
		-0.542215, -0.331707, -0.771993,
		-0.162799, -0.859892, 0.483819,
		34.253975, 39.708050, 54.347691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684811, 40.146404, 53.982063>,  <34.367935, 40.309975, 54.009018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684811, 40.146404, 53.982063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796246, 39.938072, 54.304832>,  <33.863106, 39.813072, 54.498493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796246, 39.938072, 54.304832>,  <33.684811, 40.146404, 53.982063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796246, 39.938072, 54.304832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828789, 0.294159, 0.476002,
		-0.485282, -0.801376, -0.349712,
		0.278586, -0.520833, 0.806922,
		33.879822, 39.781822, 54.546909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136642, 39.614212, 54.137115>,  <33.684811, 40.146404, 53.982063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136642, 39.614212, 54.137115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.339207, 39.656368, 54.479446>,  <33.460747, 39.681660, 54.684845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.339207, 39.656368, 54.479446>,  <33.136642, 39.614212, 54.137115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339207, 39.656368, 54.479446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833840, 0.312697, 0.454898,
		-0.219673, -0.943988, 0.246231,
		0.506414, 0.105388, 0.855826,
		33.491131, 39.687984, 54.736195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653149, 39.459515, 54.566734>,  <33.136642, 39.614212, 54.137115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653149, 39.459515, 54.566734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914196, 39.631744, 54.816113>,  <33.070824, 39.735085, 54.965740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914196, 39.631744, 54.816113>,  <32.653149, 39.459515, 54.566734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914196, 39.631744, 54.816113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746852, 0.226937, 0.625070,
		0.127656, -0.873559, 0.469680,
		0.652623, 0.430575, 0.623449,
		33.109982, 39.760918, 55.003147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551460, 39.105618, 55.188515>,  <32.653149, 39.459515, 54.566734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551460, 39.105618, 55.188515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753750, 39.433849, 55.295017>,  <32.875122, 39.630791, 55.358917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753750, 39.433849, 55.295017>,  <32.551460, 39.105618, 55.188515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753750, 39.433849, 55.295017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605290, 0.117590, 0.787272,
		0.614713, -0.559300, 0.556158,
		0.505720, 0.820583, 0.266254,
		32.905464, 39.680023, 55.374893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680183, 39.043667, 55.935135>,  <32.551460, 39.105618, 55.188515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680183, 39.043667, 55.935135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674950, 39.435623, 55.855488>,  <32.671810, 39.670795, 55.807701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674950, 39.435623, 55.855488>,  <32.680183, 39.043667, 55.935135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674950, 39.435623, 55.855488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488659, 0.167464, 0.856252,
		0.872377, 0.108505, 0.476640,
		-0.013088, 0.979889, -0.199114,
		32.671024, 39.729591, 55.795753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774628, 39.356144, 56.565140>,  <32.680183, 39.043667, 55.935135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774628, 39.356144, 56.565140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624130, 39.660892, 56.354240>,  <32.533833, 39.843742, 56.227699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624130, 39.660892, 56.354240>,  <32.774628, 39.356144, 56.565140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624130, 39.660892, 56.354240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621684, 0.214356, 0.753366,
		0.686989, 0.611230, 0.392994,
		-0.376239, 0.761872, -0.527252,
		32.511257, 39.889454, 56.196064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799389, 39.934940, 56.976856>,  <32.774628, 39.356144, 56.565140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799389, 39.934940, 56.976856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522346, 40.019428, 56.700977>,  <32.356121, 40.070122, 56.535450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522346, 40.019428, 56.700977>,  <32.799389, 39.934940, 56.976856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522346, 40.019428, 56.700977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612328, 0.333200, 0.716960,
		0.381243, 0.918892, -0.101440,
		-0.692609, 0.211222, -0.689694,
		32.314564, 40.082794, 56.494068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419250, 40.648895, 57.186188>,  <32.799389, 39.934940, 56.976856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419250, 40.648895, 57.186188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157436, 40.479244, 56.935844>,  <32.000347, 40.377453, 56.785637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157436, 40.479244, 56.935844>,  <32.419250, 40.648895, 57.186188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157436, 40.479244, 56.935844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750805, 0.267457, 0.603953,
		-0.088764, 0.865206, -0.493498,
		-0.654533, -0.424130, -0.625860,
		31.961077, 40.352005, 56.748085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837828, 41.157330, 57.122803>,  <32.419250, 40.648895, 57.186188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837828, 41.157330, 57.122803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703045, 40.785454, 57.063290>,  <31.622175, 40.562328, 57.027584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703045, 40.785454, 57.063290>,  <31.837828, 41.157330, 57.122803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703045, 40.785454, 57.063290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632049, 0.106240, 0.767611,
		-0.697834, 0.352690, -0.623408,
		-0.336959, -0.929690, -0.148779,
		31.601957, 40.506546, 57.018658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136791, 41.271286, 56.927536>,  <31.837828, 41.157330, 57.122803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136791, 41.271286, 56.927536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.191944, 40.902573, 57.072479>,  <31.225035, 40.681343, 57.159447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.191944, 40.902573, 57.072479>,  <31.136791, 41.271286, 56.927536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191944, 40.902573, 57.072479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715175, 0.160446, 0.680281,
		-0.685211, -0.352946, -0.637114,
		0.137880, -0.921784, 0.362358,
		31.233309, 40.626038, 57.181187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507540, 41.046257, 56.976757>,  <31.136791, 41.271286, 56.927536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507540, 41.046257, 56.976757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664545, 40.775349, 57.225670>,  <30.758747, 40.612804, 57.375019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664545, 40.775349, 57.225670>,  <30.507540, 41.046257, 56.976757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664545, 40.775349, 57.225670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767234, 0.132024, 0.627632,
		-0.507234, -0.723790, -0.467805,
		0.392512, -0.677273, 0.622283,
		30.782299, 40.572166, 57.412354>
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
