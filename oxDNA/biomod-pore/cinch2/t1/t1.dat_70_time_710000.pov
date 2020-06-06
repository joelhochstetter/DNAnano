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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.809704, 32.535954, 23.319401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802086, 32.609451, 22.926285>,  <42.797516, 32.653549, 22.690414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802086, 32.609451, 22.926285>,  <42.809704, 32.535954, 23.319401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802086, 32.609451, 22.926285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974043, 0.218349, 0.059697,
		0.225560, 0.958417, 0.174812,
		-0.019045, 0.183740, -0.982790,
		42.796371, 32.664574, 22.631447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609699, 33.251183, 23.078579>,  <42.809704, 32.535954, 23.319401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609699, 33.251183, 23.078579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509262, 33.008308, 22.777042>,  <42.449001, 32.862583, 22.596121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509262, 33.008308, 22.777042>,  <42.609699, 33.251183, 23.078579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509262, 33.008308, 22.777042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937445, 0.346557, 0.033110,
		0.241145, 0.714997, -0.656223,
		-0.251092, -0.607188, -0.753840,
		42.433933, 32.826153, 22.550890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282452, 33.893276, 23.210974>,  <42.609699, 33.251183, 23.078579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282452, 33.893276, 23.210974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344627, 34.114521, 22.883583>,  <42.381931, 34.247269, 22.687149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344627, 34.114521, 22.883583>,  <42.282452, 33.893276, 23.210974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344627, 34.114521, 22.883583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496384, 0.672616, 0.548809,
		0.854074, -0.491586, -0.170003,
		0.155440, 0.553110, -0.818479,
		42.391258, 34.280453, 22.638039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559635, 33.672016, 23.597643>,  <42.282452, 33.893276, 23.210974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559635, 33.672016, 23.597643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591423, 33.295448, 23.728737>,  <41.610497, 33.069508, 23.807392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591423, 33.295448, 23.728737>,  <41.559635, 33.672016, 23.597643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591423, 33.295448, 23.728737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191730, 0.337070, 0.921750,
		-0.978225, -0.010417, 0.207286,
		0.079472, -0.941422, 0.327733,
		41.615265, 33.013023, 23.827057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035496, 33.804398, 23.907015>,  <41.559635, 33.672016, 23.597643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035496, 33.804398, 23.907015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959568, 34.188251, 23.990025>,  <40.914013, 34.418564, 24.039831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959568, 34.188251, 23.990025>,  <41.035496, 33.804398, 23.907015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959568, 34.188251, 23.990025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940480, -0.238406, 0.242198,
		0.281898, -0.149201, 0.947772,
		-0.189819, 0.959636, 0.207526,
		40.902622, 34.476143, 24.052282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376266, 33.857841, 24.616978>,  <41.035496, 33.804398, 23.907015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376266, 33.857841, 24.616978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019108, 33.763401, 24.770336>,  <40.804813, 33.706738, 24.862352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019108, 33.763401, 24.770336>,  <41.376266, 33.857841, 24.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019108, 33.763401, 24.770336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302844, -0.945025, 0.123344,
		0.333200, 0.226243, 0.915310,
		-0.892896, -0.236098, 0.383398,
		40.751240, 33.692574, 24.885355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436310, 33.549156, 25.248482>,  <41.376266, 33.857841, 24.616978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436310, 33.549156, 25.248482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086952, 33.404999, 25.117455>,  <40.877338, 33.318504, 25.038839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086952, 33.404999, 25.117455>,  <41.436310, 33.549156, 25.248482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086952, 33.404999, 25.117455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322102, -0.931946, 0.166516,
		-0.365286, 0.039924, 0.930039,
		-0.873394, -0.360394, -0.327567,
		40.824936, 33.296879, 25.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231915, 32.945801, 25.680918>,  <41.436310, 33.549156, 25.248482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231915, 32.945801, 25.680918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023010, 32.899811, 25.342918>,  <40.897667, 32.872215, 25.140120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023010, 32.899811, 25.342918>,  <41.231915, 32.945801, 25.680918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023010, 32.899811, 25.342918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345137, -0.934590, -0.086150,
		-0.779821, -0.336633, 0.527785,
		-0.522264, -0.114976, -0.844998,
		40.866333, 32.865318, 25.089418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859760, 32.290798, 25.851185>,  <41.231915, 32.945801, 25.680918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859760, 32.290798, 25.851185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806610, 32.311939, 25.455296>,  <40.774719, 32.324623, 25.217762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806610, 32.311939, 25.455296>,  <40.859760, 32.290798, 25.851185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806610, 32.311939, 25.455296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038323, -0.997556, -0.058418,
		-0.990391, -0.045691, 0.130526,
		-0.132876, 0.052855, -0.989722,
		40.766747, 32.327797, 25.158379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399963, 31.836012, 25.702059>,  <40.859760, 32.290798, 25.851185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399963, 31.836012, 25.702059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616985, 31.890224, 25.370453>,  <40.747196, 31.922752, 25.171490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616985, 31.890224, 25.370453>,  <40.399963, 31.836012, 25.702059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616985, 31.890224, 25.370453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076500, -0.990770, -0.111908,
		-0.836532, -0.002704, -0.547912,
		0.542552, 0.135530, -0.829017,
		40.779751, 31.930883, 25.121748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262310, 31.188126, 25.341793>,  <40.399963, 31.836012, 25.702059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262310, 31.188126, 25.341793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558235, 31.354172, 25.130001>,  <40.735790, 31.453800, 25.002926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558235, 31.354172, 25.130001>,  <40.262310, 31.188126, 25.341793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558235, 31.354172, 25.130001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327356, -0.909629, -0.255759,
		-0.587801, 0.015886, -0.808850,
		0.739816, 0.415117, -0.529480,
		40.780182, 31.478706, 24.971157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290958, 30.881456, 24.654819>,  <40.262310, 31.188126, 25.341793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290958, 30.881456, 24.654819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656727, 31.016708, 24.743809>,  <40.876190, 31.097860, 24.797203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656727, 31.016708, 24.743809>,  <40.290958, 30.881456, 24.654819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656727, 31.016708, 24.743809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397002, -0.856334, -0.330276,
		0.078835, 0.390335, -0.917292,
		0.914426, 0.338130, 0.222472,
		40.931053, 31.118147, 24.810551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738861, 30.573038, 24.126789>,  <40.290958, 30.881456, 24.654819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738861, 30.573038, 24.126789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995228, 30.657093, 24.422104>,  <41.149048, 30.707525, 24.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995228, 30.657093, 24.422104>,  <40.738861, 30.573038, 24.126789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995228, 30.657093, 24.422104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390642, -0.917228, -0.078054,
		0.660776, 0.338433, -0.669954,
		0.640916, 0.210136, 0.738288,
		41.187504, 30.720135, 24.643591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269497, 30.216047, 23.848820>,  <40.738861, 30.573038, 24.126789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269497, 30.216047, 23.848820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333313, 30.306847, 24.233116>,  <41.371601, 30.361326, 24.463694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333313, 30.306847, 24.233116>,  <41.269497, 30.216047, 23.848820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333313, 30.306847, 24.233116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571534, -0.814754, 0.097595,
		0.804920, 0.533524, -0.259723,
		0.159541, 0.226997, 0.960739,
		41.381176, 30.374947, 24.521338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055763, 30.219580, 23.947582>,  <41.269497, 30.216047, 23.848820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055763, 30.219580, 23.947582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883198, 30.180000, 24.306267>,  <41.779659, 30.156254, 24.521477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883198, 30.180000, 24.306267>,  <42.055763, 30.219580, 23.947582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883198, 30.180000, 24.306267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579900, -0.791831, 0.191621,
		0.691084, 0.602671, 0.398986,
		-0.431414, -0.098946, 0.896711,
		41.753773, 30.150316, 24.575281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617805, 30.177551, 24.431599>,  <42.055763, 30.219580, 23.947582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617805, 30.177551, 24.431599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297356, 30.027668, 24.618271>,  <42.105087, 29.937738, 24.730274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297356, 30.027668, 24.618271>,  <42.617805, 30.177551, 24.431599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297356, 30.027668, 24.618271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567531, -0.723183, 0.393592,
		0.190015, 0.580173, 0.792019,
		-0.801126, -0.374707, 0.466682,
		42.057018, 29.915257, 24.758276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853252, 29.944504, 25.159899>,  <42.617805, 30.177551, 24.431599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853252, 29.944504, 25.159899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522388, 29.729874, 25.093082>,  <42.323872, 29.601095, 25.052994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522388, 29.729874, 25.093082>,  <42.853252, 29.944504, 25.159899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522388, 29.729874, 25.093082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406570, -0.776575, 0.481282,
		-0.387962, 0.330181, 0.860503,
		-0.827155, -0.536574, -0.167040,
		42.274242, 29.568901, 25.042971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686783, 29.665958, 25.798429>,  <42.853252, 29.944504, 25.159899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686783, 29.665958, 25.798429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527878, 29.442387, 25.507286>,  <42.432533, 29.308243, 25.332600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527878, 29.442387, 25.507286>,  <42.686783, 29.665958, 25.798429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527878, 29.442387, 25.507286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420087, -0.815910, 0.397262,
		-0.815910, -0.147948, 0.558929,
		-0.397262, -0.558929, -0.727860,
		42.408699, 29.274708, 25.288927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451248, 29.104790, 26.139807>,  <42.686783, 29.665958, 25.798429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451248, 29.104790, 26.139807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453342, 28.994686, 25.755264>,  <42.454597, 28.928625, 25.524538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453342, 28.994686, 25.755264>,  <42.451248, 29.104790, 26.139807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453342, 28.994686, 25.755264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345420, -0.901696, 0.260057,
		-0.938434, -0.333433, 0.090359,
		0.005235, -0.275257, -0.961356,
		42.454914, 28.912109, 25.466858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033096, 28.436804, 26.052788>,  <42.451248, 29.104790, 26.139807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033096, 28.436804, 26.052788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307808, 28.448296, 25.762268>,  <42.472633, 28.455191, 25.587955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307808, 28.448296, 25.762268>,  <42.033096, 28.436804, 26.052788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307808, 28.448296, 25.762268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338860, -0.896646, 0.284955,
		-0.643048, -0.441814, -0.625531,
		0.686777, 0.028728, -0.726300,
		42.513840, 28.456915, 25.544378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955711, 27.830713, 25.677591>,  <42.033096, 28.436804, 26.052788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955711, 27.830713, 25.677591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337349, 27.924870, 25.603504>,  <42.566330, 27.981363, 25.559052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337349, 27.924870, 25.603504>,  <41.955711, 27.830713, 25.677591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337349, 27.924870, 25.603504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279642, -0.921568, 0.269282,
		-0.107303, -0.308713, -0.945083,
		0.954089, 0.235391, -0.185216,
		42.623577, 27.995487, 25.547939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245525, 27.191412, 25.616116>,  <41.955711, 27.830713, 25.677591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245525, 27.191412, 25.616116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574795, 27.418427, 25.622978>,  <42.772354, 27.554634, 25.627096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574795, 27.418427, 25.622978>,  <42.245525, 27.191412, 25.616116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574795, 27.418427, 25.622978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513004, -0.756347, 0.405914,
		0.243346, -0.325336, -0.913750,
		0.823170, 0.567535, 0.017155,
		42.821747, 27.588688, 25.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755486, 26.733040, 25.511505>,  <42.245525, 27.191412, 25.616116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755486, 26.733040, 25.511505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965580, 27.049355, 25.637230>,  <43.091637, 27.239143, 25.712664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965580, 27.049355, 25.637230>,  <42.755486, 26.733040, 25.511505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965580, 27.049355, 25.637230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669845, -0.612009, 0.420421,
		0.524823, -0.010280, -0.851149,
		0.525233, 0.790784, 0.314310,
		43.123150, 27.286591, 25.731524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477428, 26.606295, 25.386274>,  <42.755486, 26.733040, 25.511505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477428, 26.606295, 25.386274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487682, 26.869427, 25.687366>,  <43.493835, 27.027306, 25.868021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487682, 26.869427, 25.687366>,  <43.477428, 26.606295, 25.386274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487682, 26.869427, 25.687366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550951, -0.637592, 0.538450,
		0.834144, 0.400917, -0.378774,
		0.025630, 0.657831, 0.752730,
		43.495373, 27.066776, 25.913185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174282, 26.767830, 25.661091>,  <43.477428, 26.606295, 25.386274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174282, 26.767830, 25.661091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911835, 26.813358, 25.959499>,  <43.754364, 26.840675, 26.138544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911835, 26.813358, 25.959499>,  <44.174282, 26.767830, 25.661091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911835, 26.813358, 25.959499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597241, -0.525975, 0.605519,
		0.461310, 0.842849, 0.277124,
		-0.656122, 0.113822, 0.746022,
		43.714996, 26.847506, 26.183306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519463, 26.715622, 26.185652>,  <44.174282, 26.767830, 25.661091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519463, 26.715622, 26.185652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170029, 26.673237, 26.375648>,  <43.960369, 26.647806, 26.489647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170029, 26.673237, 26.375648>,  <44.519463, 26.715622, 26.185652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170029, 26.673237, 26.375648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426644, -0.636316, 0.642711,
		0.234140, 0.764116, 0.601086,
		-0.873587, -0.105965, 0.474992,
		43.907951, 26.641447, 26.518147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536041, 26.781345, 26.914259>,  <44.519463, 26.715622, 26.185652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536041, 26.781345, 26.914259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240902, 26.528927, 26.818455>,  <44.063820, 26.377476, 26.760971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240902, 26.528927, 26.818455>,  <44.536041, 26.781345, 26.914259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240902, 26.528927, 26.818455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350698, -0.661610, 0.662784,
		-0.576711, 0.405035, 0.709472,
		-0.737845, -0.631045, -0.239512,
		44.019550, 26.339613, 26.746601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071369, 26.492798, 27.446503>,  <44.536041, 26.781345, 26.914259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071369, 26.492798, 27.446503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116734, 26.206608, 27.170753>,  <44.143951, 26.034893, 27.005304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116734, 26.206608, 27.170753>,  <44.071369, 26.492798, 27.446503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116734, 26.206608, 27.170753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325099, -0.628930, 0.706228,
		-0.938855, -0.304208, 0.161274,
		0.113410, -0.715475, -0.689372,
		44.150757, 25.991964, 26.963942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104038, 27.001394, 28.051712>,  <44.071369, 26.492798, 27.446503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104038, 27.001394, 28.051712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801048, 26.909447, 28.296135>,  <43.619255, 26.854279, 28.442789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801048, 26.909447, 28.296135>,  <44.104038, 27.001394, 28.051712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801048, 26.909447, 28.296135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449457, -0.862457, 0.232715,
		0.473516, 0.450920, 0.756607,
		-0.757477, -0.229868, 0.611056,
		43.573807, 26.840487, 28.479452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288422, 26.901869, 28.834833>,  <44.104038, 27.001394, 28.051712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288422, 26.901869, 28.834833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998943, 26.654682, 28.711945>,  <43.825256, 26.506371, 28.638210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998943, 26.654682, 28.711945>,  <44.288422, 26.901869, 28.834833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998943, 26.654682, 28.711945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470231, -0.767388, 0.435889,
		-0.505123, 0.170984, 0.845940,
		-0.723694, -0.617965, -0.307223,
		43.781834, 26.469294, 28.619778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028191, 26.557476, 29.445883>,  <44.288422, 26.901869, 28.834833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028191, 26.557476, 29.445883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995724, 26.339897, 29.111809>,  <43.976242, 26.209351, 28.911364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995724, 26.339897, 29.111809>,  <44.028191, 26.557476, 29.445883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995724, 26.339897, 29.111809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464074, -0.762202, 0.451313,
		-0.882070, -0.350957, 0.314296,
		-0.081166, -0.543947, -0.835185,
		43.971375, 26.176714, 28.861254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550694, 26.376354, 29.982317>,  <44.028191, 26.557476, 29.445883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550694, 26.376354, 29.982317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853313, 26.632828, 29.930904>,  <44.034885, 26.786713, 29.900057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853313, 26.632828, 29.930904>,  <43.550694, 26.376354, 29.982317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853313, 26.632828, 29.930904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638216, 0.681105, -0.358854,
		-0.142547, 0.353521, 0.924501,
		0.756545, 0.641185, -0.128533,
		44.080276, 26.825184, 29.892344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106091, 26.879004, 29.640966>,  <43.550694, 26.376354, 29.982317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106091, 26.879004, 29.640966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991508, 26.510323, 29.536350>,  <42.922760, 26.289114, 29.473581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991508, 26.510323, 29.536350>,  <43.106091, 26.879004, 29.640966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991508, 26.510323, 29.536350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863012, 0.366790, -0.347382,
		0.416114, 0.126203, -0.900512,
		-0.286458, -0.921704, -0.261541,
		42.905571, 26.233810, 29.457888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946377, 26.742674, 28.889219>,  <43.106091, 26.879004, 29.640966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946377, 26.742674, 28.889219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733154, 26.546692, 29.165131>,  <42.605221, 26.429102, 29.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733154, 26.546692, 29.165131>,  <42.946377, 26.742674, 28.889219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733154, 26.546692, 29.165131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845822, 0.328679, -0.420185,
		-0.020843, -0.807412, -0.589620,
		-0.533058, -0.489955, 0.689778,
		42.573238, 26.399706, 29.372065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372509, 26.589560, 28.632940>,  <42.946377, 26.742674, 28.889219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372509, 26.589560, 28.632940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246132, 26.569065, 29.011898>,  <42.170303, 26.556768, 29.239273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246132, 26.569065, 29.011898>,  <42.372509, 26.589560, 28.632940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246132, 26.569065, 29.011898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845860, 0.467519, -0.256801,
		-0.429767, -0.882497, -0.191047,
		-0.315944, -0.051234, 0.947393,
		42.151348, 26.553694, 29.296116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731693, 26.372551, 28.628841>,  <42.372509, 26.589560, 28.632940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731693, 26.372551, 28.628841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766079, 26.586678, 28.964947>,  <41.786709, 26.715155, 29.166611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766079, 26.586678, 28.964947>,  <41.731693, 26.372551, 28.628841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766079, 26.586678, 28.964947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757952, 0.582517, -0.293570,
		-0.646622, -0.611645, 0.455819,
		0.085962, 0.535317, 0.840265,
		41.791866, 26.747272, 29.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042229, 26.313740, 28.915071>,  <41.731693, 26.372551, 28.628841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042229, 26.313740, 28.915071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238930, 26.648411, 29.011524>,  <41.356953, 26.849213, 29.069397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238930, 26.648411, 29.011524>,  <41.042229, 26.313740, 28.915071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238930, 26.648411, 29.011524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729205, 0.547063, -0.411074,
		-0.475852, 0.026313, 0.879132,
		0.491757, 0.836678, 0.241133,
		41.386456, 26.899414, 29.083864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516781, 26.747427, 29.209686>,  <41.042229, 26.313740, 28.915071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516781, 26.747427, 29.209686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805058, 27.017818, 29.148155>,  <40.978024, 27.180054, 29.111237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805058, 27.017818, 29.148155>,  <40.516781, 26.747427, 29.209686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805058, 27.017818, 29.148155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692023, 0.688215, -0.217863,
		-0.041405, 0.263462, 0.963781,
		0.720687, 0.675979, -0.153827,
		41.021263, 27.220612, 29.102007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364117, 27.519892, 29.567741>,  <40.516781, 26.747427, 29.209686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364117, 27.519892, 29.567741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605835, 27.548088, 29.250286>,  <40.750866, 27.565006, 29.059813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605835, 27.548088, 29.250286>,  <40.364117, 27.519892, 29.567741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605835, 27.548088, 29.250286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591703, 0.706774, -0.387760,
		0.533588, 0.703918, 0.468810,
		0.604294, 0.070492, -0.793637,
		40.787125, 27.569235, 29.012196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540829, 28.271212, 29.388186>,  <40.364117, 27.519892, 29.567741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540829, 28.271212, 29.388186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608746, 28.075100, 29.046238>,  <40.649494, 27.957434, 28.841070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608746, 28.075100, 29.046238>,  <40.540829, 28.271212, 29.388186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608746, 28.075100, 29.046238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488991, 0.711226, -0.505020,
		0.855604, 0.503770, -0.118982,
		0.169791, -0.490279, -0.854867,
		40.659683, 27.928017, 28.789778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553078, 28.746283, 28.814672>,  <40.540829, 28.271212, 29.388186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553078, 28.746283, 28.814672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544922, 28.428097, 28.572411>,  <40.540028, 28.237185, 28.427053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544922, 28.428097, 28.572411>,  <40.553078, 28.746283, 28.814672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544922, 28.428097, 28.572411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459753, 0.545391, -0.700839,
		0.887812, 0.264162, -0.376839,
		-0.020390, -0.795467, -0.605654,
		40.538803, 28.189457, 28.390715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936275, 28.815063, 28.093353>,  <40.553078, 28.746283, 28.814672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936275, 28.815063, 28.093353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651035, 28.535343, 28.073471>,  <40.479893, 28.367512, 28.061543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651035, 28.535343, 28.073471>,  <40.936275, 28.815063, 28.093353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651035, 28.535343, 28.073471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477176, 0.536089, -0.696356,
		0.513598, -0.472861, -0.715974,
		-0.713106, -0.699293, -0.049696,
		40.437107, 28.325554, 28.058559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883938, 28.599419, 27.337032>,  <40.936275, 28.815063, 28.093353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883938, 28.599419, 27.337032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546577, 28.476215, 27.513126>,  <40.344162, 28.402294, 27.618784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546577, 28.476215, 27.513126>,  <40.883938, 28.599419, 27.337032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546577, 28.476215, 27.513126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533774, 0.386783, -0.751987,
		0.061340, -0.869213, -0.490619,
		-0.843399, -0.308006, 0.440238,
		40.293556, 28.383814, 27.645197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558033, 28.233965, 26.885180>,  <40.883938, 28.599419, 27.337032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558033, 28.233965, 26.885180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264957, 28.344677, 27.133877>,  <40.089111, 28.411104, 27.283094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264957, 28.344677, 27.133877>,  <40.558033, 28.233965, 26.885180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264957, 28.344677, 27.133877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540601, 0.318275, -0.778750,
		-0.413427, -0.906694, -0.083569,
		-0.732686, 0.276779, 0.621743,
		40.045151, 28.427710, 27.320400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947655, 28.170181, 26.443407>,  <40.558033, 28.233965, 26.885180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947655, 28.170181, 26.443407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830902, 28.404438, 26.745884>,  <39.760849, 28.544992, 26.927370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830902, 28.404438, 26.745884>,  <39.947655, 28.170181, 26.443407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830902, 28.404438, 26.745884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526538, 0.561647, -0.638209,
		-0.798476, -0.584446, 0.144429,
		-0.291881, 0.585642, 0.756194,
		39.743340, 28.580130, 26.972742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241390, 28.229050, 26.320322>,  <39.947655, 28.170181, 26.443407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241390, 28.229050, 26.320322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358402, 28.517708, 26.571289>,  <39.428612, 28.690903, 26.721869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358402, 28.517708, 26.571289>,  <39.241390, 28.229050, 26.320322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358402, 28.517708, 26.571289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525469, 0.669490, -0.525038,
		-0.798941, -0.176096, 0.575051,
		0.292534, 0.721646, 0.627416,
		39.446163, 28.734201, 26.759514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645790, 28.770285, 26.208838>,  <39.241390, 28.229050, 26.320322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645790, 28.770285, 26.208838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953453, 28.938480, 26.401333>,  <39.138050, 29.039398, 26.516830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953453, 28.938480, 26.401333>,  <38.645790, 28.770285, 26.208838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953453, 28.938480, 26.401333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241656, 0.888495, -0.390102,
		-0.591611, 0.183756, 0.785004,
		0.769155, 0.420489, 0.481237,
		39.184200, 29.064627, 26.545704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349781, 29.321865, 26.615379>,  <38.645790, 28.770285, 26.208838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349781, 29.321865, 26.615379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735134, 29.415672, 26.563377>,  <38.966347, 29.471956, 26.532175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735134, 29.415672, 26.563377>,  <38.349781, 29.321865, 26.615379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735134, 29.415672, 26.563377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260769, 0.932317, -0.250570,
		0.062444, 0.275296, 0.959330,
		0.963380, 0.234516, -0.130006,
		39.024147, 29.486027, 26.524376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515129, 29.882168, 27.043690>,  <38.349781, 29.321865, 26.615379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515129, 29.882168, 27.043690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723827, 29.872555, 26.702583>,  <38.849045, 29.866787, 26.497919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723827, 29.872555, 26.702583>,  <38.515129, 29.882168, 27.043690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723827, 29.872555, 26.702583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503295, 0.798443, -0.330428,
		0.688825, 0.601590, 0.404487,
		0.521743, -0.024031, -0.852764,
		38.880352, 29.865345, 26.446754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366299, 30.529556, 26.767740>,  <38.515129, 29.882168, 27.043690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366299, 30.529556, 26.767740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582130, 30.386673, 26.462780>,  <38.711628, 30.300943, 26.279804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582130, 30.386673, 26.462780>,  <38.366299, 30.529556, 26.767740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582130, 30.386673, 26.462780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248155, 0.797834, -0.549436,
		0.804533, 0.485658, 0.341852,
		0.539579, -0.357207, -0.762402,
		38.744003, 30.279510, 26.234058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801456, 31.070078, 26.518404>,  <38.366299, 30.529556, 26.767740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801456, 31.070078, 26.518404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754505, 30.826996, 26.204227>,  <38.726334, 30.681147, 26.015722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754505, 30.826996, 26.204227>,  <38.801456, 31.070078, 26.518404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754505, 30.826996, 26.204227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165317, 0.791831, -0.587941,
		0.979231, 0.060835, -0.193408,
		-0.117379, -0.607703, -0.785442,
		38.719292, 30.644686, 25.968596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336136, 31.130613, 25.971928>,  <38.801456, 31.070078, 26.518404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336136, 31.130613, 25.971928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016846, 30.984203, 25.780567>,  <38.825272, 30.896358, 25.665751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016846, 30.984203, 25.780567>,  <39.336136, 31.130613, 25.971928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016846, 30.984203, 25.780567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056339, 0.836093, -0.545687,
		0.599721, -0.408627, -0.688010,
		-0.798223, -0.366022, -0.478401,
		38.777378, 30.874397, 25.637047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513081, 31.286169, 25.287428>,  <39.336136, 31.130613, 25.971928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513081, 31.286169, 25.287428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122913, 31.198212, 25.293083>,  <38.888813, 31.145437, 25.296476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122913, 31.198212, 25.293083>,  <39.513081, 31.286169, 25.287428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122913, 31.198212, 25.293083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189731, 0.805536, -0.561349,
		0.112049, -0.550235, -0.827458,
		-0.975421, -0.219894, 0.014137,
		38.830288, 31.132244, 25.297323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275734, 31.434370, 24.530998>,  <39.513081, 31.286169, 25.287428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275734, 31.434370, 24.530998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930504, 31.410736, 24.731644>,  <38.723366, 31.396557, 24.852032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930504, 31.410736, 24.731644>,  <39.275734, 31.434370, 24.530998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930504, 31.410736, 24.731644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400606, 0.684924, -0.608600,
		-0.307610, -0.726215, -0.614807,
		-0.863071, -0.059084, 0.501616,
		38.671581, 31.393011, 24.882128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750469, 31.504488, 23.933500>,  <39.275734, 31.434370, 24.530998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750469, 31.504488, 23.933500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587276, 31.590992, 24.288303>,  <38.489361, 31.642895, 24.501184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587276, 31.590992, 24.288303>,  <38.750469, 31.504488, 23.933500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587276, 31.590992, 24.288303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310881, 0.880578, -0.357682,
		-0.858432, -0.421681, -0.292028,
		-0.407981, 0.216260, 0.887008,
		38.464882, 31.655870, 24.554405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123592, 31.758875, 23.747524>,  <38.750469, 31.504488, 23.933500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123592, 31.758875, 23.747524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149807, 31.889637, 24.124638>,  <38.165535, 31.968094, 24.350904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149807, 31.889637, 24.124638>,  <38.123592, 31.758875, 23.747524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149807, 31.889637, 24.124638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460802, 0.847951, -0.261994,
		-0.885080, -0.417265, 0.206210,
		0.065535, 0.326907, 0.942781,
		38.169468, 31.987709, 24.407473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404686, 32.073124, 23.999926>,  <38.123592, 31.758875, 23.747524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404686, 32.073124, 23.999926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721355, 32.231037, 24.186428>,  <37.911358, 32.325787, 24.298330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721355, 32.231037, 24.186428>,  <37.404686, 32.073124, 23.999926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721355, 32.231037, 24.186428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192614, 0.885542, -0.422747,
		-0.579782, 0.244872, 0.777104,
		0.791677, 0.394783, 0.466256,
		37.958858, 32.349472, 24.326305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202991, 32.722389, 24.106844>,  <37.404686, 32.073124, 23.999926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202991, 32.722389, 24.106844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597198, 32.725960, 24.174580>,  <37.833721, 32.728104, 24.215221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597198, 32.725960, 24.174580>,  <37.202991, 32.722389, 24.106844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597198, 32.725960, 24.174580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027006, 0.977604, -0.208712,
		-0.167411, 0.210262, 0.963205,
		0.985517, 0.008928, 0.169340,
		37.892853, 32.728638, 24.225382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187092, 33.324028, 24.356722>,  <37.202991, 32.722389, 24.106844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187092, 33.324028, 24.356722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560642, 33.256783, 24.230476>,  <37.784771, 33.216434, 24.154730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560642, 33.256783, 24.230476>,  <37.187092, 33.324028, 24.356722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560642, 33.256783, 24.230476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081942, 0.959718, -0.268751,
		0.348080, 0.225118, 0.910034,
		0.933877, -0.168116, -0.315612,
		37.840805, 33.206348, 24.135794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381416, 33.349945, 24.594667>,  <37.187092, 33.324028, 24.356722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381416, 33.349945, 24.594667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257435, 33.695995, 24.752392>,  <36.183044, 33.903625, 24.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257435, 33.695995, 24.752392>,  <36.381416, 33.349945, 24.594667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257435, 33.695995, 24.752392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682649, 0.491180, -0.541048,
		-0.661753, 0.101475, -0.742823,
		-0.309957, 0.865128, 0.394311,
		36.164448, 33.955532, 24.870686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214939, 32.946911, 25.166319>,  <36.381416, 33.349945, 24.594667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214939, 32.946911, 25.166319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986168, 32.696159, 25.377945>,  <35.848904, 32.545708, 25.504921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986168, 32.696159, 25.377945>,  <36.214939, 32.946911, 25.166319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986168, 32.696159, 25.377945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368571, 0.379812, 0.848468,
		-0.732836, 0.680265, 0.013824,
		-0.571932, -0.626883, 0.529066,
		35.814587, 32.508095, 25.536665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493923, 33.071087, 24.799908>,  <36.214939, 32.946911, 25.166319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493923, 33.071087, 24.799908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581245, 32.967972, 24.423420>,  <35.633636, 32.906105, 24.197527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581245, 32.967972, 24.423420>,  <35.493923, 33.071087, 24.799908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581245, 32.967972, 24.423420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918162, -0.381032, -0.108596,
		-0.330639, 0.887897, -0.319870,
		0.218303, -0.257786, -0.941217,
		35.646736, 32.890636, 24.141054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950432, 33.036552, 24.319418>,  <35.493923, 33.071087, 24.799908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950432, 33.036552, 24.319418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187859, 32.796822, 24.104572>,  <35.330315, 32.652985, 23.975664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187859, 32.796822, 24.104572>,  <34.950432, 33.036552, 24.319418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187859, 32.796822, 24.104572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804041, -0.412873, -0.427849,
		0.034659, 0.685819, -0.726947,
		0.593563, -0.599323, -0.537116,
		35.365929, 32.617023, 23.943438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391689, 33.459373, 24.138020>,  <34.950432, 33.036552, 24.319418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391689, 33.459373, 24.138020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402473, 33.187393, 23.844913>,  <34.408943, 33.024204, 23.669050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402473, 33.187393, 23.844913>,  <34.391689, 33.459373, 24.138020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402473, 33.187393, 23.844913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769302, -0.453963, 0.449547,
		-0.638316, -0.575838, 0.510845,
		0.026962, -0.679947, -0.732765,
		34.410561, 32.983410, 23.625084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802174, 33.936050, 24.222889>,  <34.391689, 33.459373, 24.138020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802174, 33.936050, 24.222889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455544, 33.949738, 24.422035>,  <33.247566, 33.957951, 24.541523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455544, 33.949738, 24.422035>,  <33.802174, 33.936050, 24.222889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455544, 33.949738, 24.422035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237155, -0.849555, 0.471183,
		0.439088, 0.526388, 0.728091,
		-0.866579, 0.034220, 0.497865,
		33.195568, 33.960003, 24.571394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929195, 33.840710, 24.947474>,  <33.802174, 33.936050, 24.222889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929195, 33.840710, 24.947474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552990, 33.738014, 24.858463>,  <33.327267, 33.676395, 24.805058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552990, 33.738014, 24.858463>,  <33.929195, 33.840710, 24.947474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552990, 33.738014, 24.858463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141476, -0.891425, 0.430518,
		-0.308896, 0.373426, 0.874721,
		-0.940515, -0.256737, -0.222526,
		33.270836, 33.660992, 24.791706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698559, 33.401794, 25.522087>,  <33.929195, 33.840710, 24.947474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698559, 33.401794, 25.522087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430210, 33.330128, 25.234245>,  <33.269199, 33.287128, 25.061541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430210, 33.330128, 25.234245>,  <33.698559, 33.401794, 25.522087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430210, 33.330128, 25.234245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038425, -0.977469, 0.207552,
		-0.740577, 0.111590, 0.662641,
		-0.670872, -0.179170, -0.719603,
		33.228947, 33.276375, 25.018364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283791, 32.961842, 25.847649>,  <33.698559, 33.401794, 25.522087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283791, 32.961842, 25.847649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187988, 32.888226, 25.466331>,  <33.130505, 32.844055, 25.237541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187988, 32.888226, 25.466331>,  <33.283791, 32.961842, 25.847649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187988, 32.888226, 25.466331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033706, -0.979702, 0.197605,
		-0.970309, 0.079460, 0.228444,
		-0.239509, -0.184038, -0.953292,
		33.116135, 32.833015, 25.180344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725124, 32.426842, 25.973602>,  <33.283791, 32.961842, 25.847649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725124, 32.426842, 25.973602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845417, 32.415730, 25.592281>,  <32.917595, 32.409061, 25.363489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845417, 32.415730, 25.592281>,  <32.725124, 32.426842, 25.973602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845417, 32.415730, 25.592281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053879, -0.997484, 0.046064,
		-0.952184, -0.065216, -0.298483,
		0.300736, -0.027779, -0.953303,
		32.935638, 32.407394, 25.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270355, 31.982019, 25.631256>,  <32.725124, 32.426842, 25.973602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270355, 31.982019, 25.631256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596779, 31.984005, 25.400078>,  <32.792633, 31.985195, 25.261372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596779, 31.984005, 25.400078>,  <32.270355, 31.982019, 25.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596779, 31.984005, 25.400078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036287, -0.997550, -0.059804,
		-0.576825, 0.069776, -0.813882,
		0.816061, 0.004963, -0.577944,
		32.841599, 31.985495, 25.226694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150799, 31.548466, 25.027967>,  <32.270355, 31.982019, 25.631256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150799, 31.548466, 25.027967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546635, 31.587551, 25.070244>,  <32.784134, 31.611002, 25.095610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546635, 31.587551, 25.070244>,  <32.150799, 31.548466, 25.027967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546635, 31.587551, 25.070244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098718, -0.995106, -0.004311,
		0.104753, 0.014700, -0.994390,
		0.989587, 0.097713, 0.105691,
		32.843510, 31.616865, 25.101952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416012, 31.144680, 24.537111>,  <32.150799, 31.548466, 25.027967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416012, 31.144680, 24.537111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745800, 31.195427, 24.757713>,  <32.943672, 31.225876, 24.890074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745800, 31.195427, 24.757713>,  <32.416012, 31.144680, 24.537111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745800, 31.195427, 24.757713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178017, -0.983216, -0.039949,
		0.537181, 0.131114, -0.833214,
		0.824468, 0.126866, 0.551505,
		32.993141, 31.233486, 24.923164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840752, 30.661158, 24.328516>,  <32.416012, 31.144680, 24.537111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840752, 30.661158, 24.328516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950264, 30.755447, 24.701500>,  <33.015972, 30.812021, 24.925289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950264, 30.755447, 24.701500>,  <32.840752, 30.661158, 24.328516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950264, 30.755447, 24.701500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043170, -0.965512, 0.256755,
		0.960823, -0.110548, -0.254160,
		0.273779, 0.235724, 0.932459,
		33.032398, 30.826164, 24.981237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288902, 30.151176, 24.516279>,  <32.840752, 30.661158, 24.328516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288902, 30.151176, 24.516279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176037, 30.290512, 24.873837>,  <33.108318, 30.374113, 25.088371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176037, 30.290512, 24.873837>,  <33.288902, 30.151176, 24.516279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176037, 30.290512, 24.873837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035724, -0.927292, 0.372629,
		0.958700, 0.137077, 0.249206,
		-0.282166, 0.348337, 0.893892,
		33.091389, 30.395014, 25.142004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660439, 29.695156, 24.885599>,  <33.288902, 30.151176, 24.516279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660439, 29.695156, 24.885599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394619, 29.848339, 25.142262>,  <33.235126, 29.940248, 25.296259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394619, 29.848339, 25.142262>,  <33.660439, 29.695156, 24.885599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394619, 29.848339, 25.142262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109479, -0.799531, 0.590564,
		0.739184, 0.462704, 0.489399,
		-0.664545, 0.382957, 0.641657,
		33.195255, 29.963226, 25.334759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932621, 29.611370, 25.530090>,  <33.660439, 29.695156, 24.885599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932621, 29.611370, 25.530090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542721, 29.642700, 25.613731>,  <33.308781, 29.661499, 25.663916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542721, 29.642700, 25.613731>,  <33.932621, 29.611370, 25.530090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542721, 29.642700, 25.613731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043854, -0.851063, 0.523229,
		0.218941, 0.519188, 0.826141,
		-0.974752, 0.078327, 0.209101,
		33.250294, 29.666199, 25.676462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918133, 29.453220, 26.202208>,  <33.932621, 29.611370, 25.530090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918133, 29.453220, 26.202208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526722, 29.418938, 26.127216>,  <33.291878, 29.398369, 26.082222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526722, 29.418938, 26.127216>,  <33.918133, 29.453220, 26.202208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526722, 29.418938, 26.127216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057747, -0.759091, 0.648418,
		-0.197885, 0.645318, 0.737839,
		-0.978523, -0.085704, -0.187477,
		33.233166, 29.393227, 26.070972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594177, 29.546932, 26.929209>,  <33.918133, 29.453220, 26.202208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594177, 29.546932, 26.929209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344780, 29.364517, 26.675190>,  <33.195141, 29.255068, 26.522779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344780, 29.364517, 26.675190>,  <33.594177, 29.546932, 26.929209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344780, 29.364517, 26.675190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114335, -0.750341, 0.651088,
		-0.773424, 0.478557, 0.415691,
		-0.623493, -0.456039, -0.635048,
		33.157734, 29.227705, 26.484676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892250, 29.451849, 27.243975>,  <33.594177, 29.546932, 26.929209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892250, 29.451849, 27.243975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945614, 29.179028, 26.956364>,  <32.977631, 29.015335, 26.783796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945614, 29.179028, 26.956364>,  <32.892250, 29.451849, 27.243975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945614, 29.179028, 26.956364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160628, -0.730802, 0.663421,
		-0.977958, 0.026990, -0.207052,
		0.133408, -0.682056, -0.719029,
		32.985638, 28.974411, 26.740656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458725, 28.891947, 27.472797>,  <32.892250, 29.451849, 27.243975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458725, 28.891947, 27.472797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628590, 28.681465, 27.178104>,  <32.730507, 28.555176, 27.001289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628590, 28.681465, 27.178104>,  <32.458725, 28.891947, 27.472797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628590, 28.681465, 27.178104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145998, -0.842903, 0.517879,
		-0.893503, -0.112362, -0.434773,
		0.424661, -0.526202, -0.736732,
		32.755989, 28.523605, 26.957085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046761, 28.325188, 27.337351>,  <32.458725, 28.891947, 27.472797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046761, 28.325188, 27.337351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419094, 28.238773, 27.219452>,  <32.642494, 28.186926, 27.148712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419094, 28.238773, 27.219452>,  <32.046761, 28.325188, 27.337351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419094, 28.238773, 27.219452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002808, -0.802303, 0.596910,
		-0.365431, -0.556452, -0.746204,
		0.930834, -0.216035, -0.294749,
		32.698345, 28.173964, 27.131027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073692, 27.573736, 27.180517>,  <32.046761, 28.325188, 27.337351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073692, 27.573736, 27.180517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459789, 27.667179, 27.227406>,  <32.691448, 27.723246, 27.255539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459789, 27.667179, 27.227406>,  <32.073692, 27.573736, 27.180517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459789, 27.667179, 27.227406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133839, -0.826996, 0.546044,
		0.224500, -0.511375, -0.829515,
		0.965239, 0.233608, 0.117219,
		32.749363, 27.737261, 27.262571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390316, 26.936100, 27.101467>,  <32.073692, 27.573736, 27.180517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390316, 26.936100, 27.101467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633335, 27.184303, 27.299805>,  <32.779144, 27.333225, 27.418806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633335, 27.184303, 27.299805>,  <32.390316, 26.936100, 27.101467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633335, 27.184303, 27.299805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127593, -0.692397, 0.710145,
		0.783971, -0.368179, -0.499834,
		0.607544, 0.620508, 0.495842,
		32.815598, 27.370455, 27.448557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759151, 26.515848, 27.381458>,  <32.390316, 26.936100, 27.101467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759151, 26.515848, 27.381458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850426, 26.841476, 27.595081>,  <32.905190, 27.036854, 27.723255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850426, 26.841476, 27.595081>,  <32.759151, 26.515848, 27.381458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850426, 26.841476, 27.595081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106320, -0.566085, 0.817462,
		0.967795, -0.129753, -0.215725,
		0.228187, 0.814071, 0.534059,
		32.918880, 27.085697, 27.755299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362179, 26.294865, 27.767269>,  <32.759151, 26.515848, 27.381458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362179, 26.294865, 27.767269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208542, 26.611557, 27.957275>,  <33.116360, 26.801573, 28.071280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208542, 26.611557, 27.957275>,  <33.362179, 26.294865, 27.767269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208542, 26.611557, 27.957275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012998, -0.519063, 0.854637,
		0.923204, 0.322084, 0.209658,
		-0.384091, 0.791730, 0.475014,
		33.093315, 26.849075, 28.099779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758778, 26.332397, 28.332294>,  <33.362179, 26.294865, 27.767269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758778, 26.332397, 28.332294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419041, 26.532310, 28.400227>,  <33.215199, 26.652258, 28.440985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419041, 26.532310, 28.400227>,  <33.758778, 26.332397, 28.332294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419041, 26.532310, 28.400227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061150, -0.412733, 0.908797,
		0.524295, 0.761491, 0.381112,
		-0.849338, 0.499783, 0.169829,
		33.164238, 26.682245, 28.451176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881447, 26.711128, 28.932329>,  <33.758778, 26.332397, 28.332294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881447, 26.711128, 28.932329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484978, 26.676888, 28.891827>,  <33.247097, 26.656343, 28.867525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484978, 26.676888, 28.891827>,  <33.881447, 26.711128, 28.932329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484978, 26.676888, 28.891827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080102, -0.221974, 0.971757,
		-0.105663, 0.971288, 0.213157,
		-0.991171, -0.085604, -0.101257,
		33.187626, 26.651207, 28.861450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541016, 27.233223, 29.394085>,  <33.881447, 26.711128, 28.932329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541016, 27.233223, 29.394085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268833, 26.941563, 29.364891>,  <33.105526, 26.766567, 29.347374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268833, 26.941563, 29.364891>,  <33.541016, 27.233223, 29.394085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268833, 26.941563, 29.364891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009879, -0.090460, 0.995851,
		-0.732726, 0.678349, 0.054350,
		-0.680452, -0.729149, -0.072984,
		33.064697, 26.722818, 29.342997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140614, 27.260849, 29.968142>,  <33.541016, 27.233223, 29.394085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140614, 27.260849, 29.968142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022873, 26.905872, 29.826263>,  <32.952229, 26.692886, 29.741137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022873, 26.905872, 29.826263>,  <33.140614, 27.260849, 29.968142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022873, 26.905872, 29.826263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037155, -0.360228, 0.932124,
		-0.954975, 0.287550, 0.073061,
		-0.294351, -0.887440, -0.354693,
		32.934566, 26.639641, 29.719856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714199, 26.922775, 30.562401>,  <33.140614, 27.260849, 29.968142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714199, 26.922775, 30.562401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780273, 26.604317, 30.329552>,  <32.819920, 26.413242, 30.189842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780273, 26.604317, 30.329552>,  <32.714199, 26.922775, 30.562401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780273, 26.604317, 30.329552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220626, -0.605100, 0.764969,
		-0.961269, 0.002069, -0.275604,
		0.165186, -0.796147, -0.582121,
		32.829830, 26.365473, 30.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172543, 26.456253, 30.685009>,  <32.714199, 26.922775, 30.562401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172543, 26.456253, 30.685009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480091, 26.237961, 30.551739>,  <32.664619, 26.106985, 30.471775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480091, 26.237961, 30.551739>,  <32.172543, 26.456253, 30.685009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480091, 26.237961, 30.551739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066027, -0.586060, 0.807573,
		-0.635985, -0.598921, -0.486638,
		0.768872, -0.545736, -0.333181,
		32.710754, 26.074242, 30.451786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964964, 25.772387, 30.656284>,  <32.172543, 26.456253, 30.685009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964964, 25.772387, 30.656284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362488, 25.730839, 30.640526>,  <32.601002, 25.705910, 30.631071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362488, 25.730839, 30.640526>,  <31.964964, 25.772387, 30.656284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362488, 25.730839, 30.640526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040099, -0.666142, 0.744746,
		-0.103602, -0.738557, -0.666184,
		0.993810, -0.103870, -0.039398,
		32.660629, 25.699678, 30.628706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182281, 25.133316, 30.525103>,  <31.964964, 25.772387, 30.656284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182281, 25.133316, 30.525103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481121, 25.279629, 30.747108>,  <32.660427, 25.367416, 30.880312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481121, 25.279629, 30.747108>,  <32.182281, 25.133316, 30.525103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481121, 25.279629, 30.747108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062477, -0.792637, 0.606484,
		0.661767, -0.487781, -0.569328,
		0.747102, 0.365781, 0.555016,
		32.705254, 25.389362, 30.913612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537178, 24.533939, 30.806547>,  <32.182281, 25.133316, 30.525103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537178, 24.533939, 30.806547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686226, 24.837837, 31.019691>,  <32.775654, 25.020176, 31.147579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686226, 24.837837, 31.019691>,  <32.537178, 24.533939, 30.806547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686226, 24.837837, 31.019691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038987, -0.586526, 0.808992,
		0.927164, -0.280674, -0.248173,
		0.372623, 0.759743, 0.532863,
		32.798012, 25.065760, 31.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221199, 24.266024, 30.964912>,  <32.537178, 24.533939, 30.806547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221199, 24.266024, 30.964912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137936, 24.572014, 31.208710>,  <33.087978, 24.755608, 31.354988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137936, 24.572014, 31.208710>,  <33.221199, 24.266024, 30.964912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137936, 24.572014, 31.208710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264761, -0.555810, 0.788021,
		0.941580, 0.325402, -0.086841,
		-0.208157, 0.764976, 0.609493,
		33.075489, 24.801506, 31.391558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750084, 24.245829, 31.445034>,  <33.221199, 24.266024, 30.964912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750084, 24.245829, 31.445034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469666, 24.465099, 31.627480>,  <33.301414, 24.596661, 31.736946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469666, 24.465099, 31.627480>,  <33.750084, 24.245829, 31.445034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469666, 24.465099, 31.627480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170167, -0.492533, 0.853496,
		0.692515, 0.675955, 0.252007,
		-0.701046, 0.548176, 0.456112,
		33.259350, 24.629553, 31.764313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057209, 24.625004, 31.872639>,  <33.750084, 24.245829, 31.445034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057209, 24.625004, 31.872639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681026, 24.526501, 31.966354>,  <33.455315, 24.467400, 32.022583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681026, 24.526501, 31.966354>,  <34.057209, 24.625004, 31.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681026, 24.526501, 31.966354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338291, -0.611096, 0.715626,
		-0.033056, 0.752276, 0.658018,
		-0.940461, -0.246257, 0.234287,
		33.398888, 24.452623, 32.036640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143150, 24.394356, 32.464474>,  <34.057209, 24.625004, 31.872639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143150, 24.394356, 32.464474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768559, 24.279766, 32.383533>,  <33.543804, 24.211012, 32.334969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768559, 24.279766, 32.383533>,  <34.143150, 24.394356, 32.464474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768559, 24.279766, 32.383533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146365, -0.843499, 0.516804,
		-0.318731, 0.454358, 0.831847,
		-0.936476, -0.286475, -0.202347,
		33.487617, 24.193823, 32.322830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856457, 24.213146, 33.110474>,  <34.143150, 24.394356, 32.464474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856457, 24.213146, 33.110474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620079, 24.011673, 32.858414>,  <33.478252, 23.890789, 32.707180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620079, 24.011673, 32.858414>,  <33.856457, 24.213146, 33.110474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620079, 24.011673, 32.858414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055792, -0.804779, 0.590947,
		-0.804779, 0.314062, 0.503683,
		-0.590947, -0.503683, -0.630147,
		33.442795, 23.860569, 32.669369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257183, 23.983366, 33.513157>,  <33.856457, 24.213146, 33.110474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257183, 23.983366, 33.513157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279484, 23.745728, 33.192173>,  <33.292866, 23.603144, 32.999584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279484, 23.745728, 33.192173>,  <33.257183, 23.983366, 33.513157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279484, 23.745728, 33.192173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041038, -0.801666, 0.596362,
		-0.997601, -0.066182, -0.020316,
		0.055755, -0.594097, -0.802459,
		33.296211, 23.567499, 32.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869591, 23.417345, 33.699650>,  <33.257183, 23.983366, 33.513157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869591, 23.417345, 33.699650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090534, 23.301289, 33.387054>,  <33.223099, 23.231655, 33.199497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090534, 23.301289, 33.387054>,  <32.869591, 23.417345, 33.699650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090534, 23.301289, 33.387054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217403, -0.854893, 0.471056,
		-0.804758, -0.430089, -0.409130,
		0.552358, -0.290140, -0.781485,
		33.256241, 23.214247, 33.152607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654999, 22.734621, 33.478981>,  <32.869591, 23.417345, 33.699650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654999, 22.734621, 33.478981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035248, 22.757240, 33.356918>,  <33.263397, 22.770811, 33.283680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035248, 22.757240, 33.356918>,  <32.654999, 22.734621, 33.478981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035248, 22.757240, 33.356918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222511, -0.809633, 0.543124,
		-0.216354, -0.584207, -0.782236,
		0.950621, 0.056549, -0.305160,
		33.320435, 22.774204, 33.265369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887802, 22.026062, 33.513214>,  <32.654999, 22.734621, 33.478981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887802, 22.026062, 33.513214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213444, 22.257702, 33.495869>,  <33.408829, 22.396687, 33.485462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213444, 22.257702, 33.495869>,  <32.887802, 22.026062, 33.513214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213444, 22.257702, 33.495869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468233, -0.610402, 0.638880,
		0.343505, -0.540419, -0.768083,
		0.814102, 0.579100, -0.043366,
		33.457676, 22.431433, 33.482861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449986, 21.589550, 33.377480>,  <32.887802, 22.026062, 33.513214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449986, 21.589550, 33.377480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599648, 21.920750, 33.544537>,  <33.689445, 22.119469, 33.644772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599648, 21.920750, 33.544537>,  <33.449986, 21.589550, 33.377480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599648, 21.920750, 33.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434099, -0.554341, 0.710115,
		0.819491, -0.084396, -0.566844,
		0.374155, 0.828000, 0.417641,
		33.711895, 22.169149, 33.669830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033810, 21.355011, 33.746338>,  <33.449986, 21.589550, 33.377480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033810, 21.355011, 33.746338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023048, 21.733692, 33.874729>,  <34.016590, 21.960901, 33.951763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023048, 21.733692, 33.874729>,  <34.033810, 21.355011, 33.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023048, 21.733692, 33.874729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398283, -0.284353, 0.872074,
		0.916868, 0.151304, -0.369406,
		-0.026906, 0.946705, 0.320976,
		34.014977, 22.017704, 33.971024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701008, 21.556889, 33.921600>,  <34.033810, 21.355011, 33.746338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701008, 21.556889, 33.921600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477028, 21.800423, 34.146374>,  <34.342640, 21.946543, 34.281239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477028, 21.800423, 34.146374>,  <34.701008, 21.556889, 33.921600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477028, 21.800423, 34.146374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457095, -0.338669, 0.822416,
		0.691028, 0.717370, -0.088658,
		-0.559951, 0.608837, 0.561936,
		34.309044, 21.983074, 34.314953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016479, 21.612339, 34.505856>,  <34.701008, 21.556889, 33.921600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016479, 21.612339, 34.505856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656372, 21.739975, 34.624313>,  <34.440308, 21.816557, 34.695389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656372, 21.739975, 34.624313>,  <35.016479, 21.612339, 34.505856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656372, 21.739975, 34.624313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183684, -0.338315, 0.922932,
		0.394685, 0.885283, 0.245963,
		-0.900269, 0.319088, 0.296140,
		34.386292, 21.835701, 34.713154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161602, 22.134041, 34.978455>,  <35.016479, 21.612339, 34.505856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161602, 22.134041, 34.978455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825665, 21.968544, 35.119011>,  <34.624100, 21.869246, 35.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825665, 21.968544, 35.119011>,  <35.161602, 22.134041, 34.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825665, 21.968544, 35.119011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456950, -0.189444, 0.869084,
		-0.293007, 0.890466, 0.348163,
		-0.839848, -0.413741, 0.351390,
		34.573711, 21.844421, 35.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172997, 22.312353, 35.680576>,  <35.161602, 22.134041, 34.978455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172997, 22.312353, 35.680576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929592, 21.995090, 35.670589>,  <34.783550, 21.804733, 35.664597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929592, 21.995090, 35.670589>,  <35.172997, 22.312353, 35.680576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929592, 21.995090, 35.670589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488970, -0.399548, 0.775416,
		-0.625002, 0.459637, 0.630957,
		-0.608507, -0.793155, -0.024970,
		34.747040, 21.757143, 35.663097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943859, 22.104479, 36.428104>,  <35.172997, 22.312353, 35.680576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943859, 22.104479, 36.428104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967945, 21.789215, 36.183094>,  <34.982395, 21.600058, 36.036087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967945, 21.789215, 36.183094>,  <34.943859, 22.104479, 36.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967945, 21.789215, 36.183094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408725, -0.540368, 0.735491,
		-0.910669, -0.294637, 0.289604,
		0.060210, -0.788157, -0.612522,
		34.986008, 21.552769, 35.999336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569260, 21.549404, 36.775700>,  <34.943859, 22.104479, 36.428104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569260, 21.549404, 36.775700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855225, 21.407234, 36.534843>,  <35.026806, 21.321932, 36.390331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855225, 21.407234, 36.534843>,  <34.569260, 21.549404, 36.775700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855225, 21.407234, 36.534843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500667, -0.340921, 0.795679,
		-0.488086, -0.870314, -0.065780,
		0.714916, -0.355425, -0.602136,
		35.069698, 21.300606, 36.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053684, 21.740908, 37.266285>,  <34.569260, 21.549404, 36.775700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053684, 21.740908, 37.266285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773140, 21.885815, 37.511841>,  <33.604813, 21.972759, 37.659172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773140, 21.885815, 37.511841>,  <34.053684, 21.740908, 37.266285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773140, 21.885815, 37.511841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158938, 0.919021, -0.360747,
		-0.694862, -0.155444, -0.702143,
		-0.701360, 0.362266, 0.613887,
		33.562733, 21.994495, 37.696007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525757, 22.012474, 36.837471>,  <34.053684, 21.740908, 37.266285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525757, 22.012474, 36.837471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561134, 22.182404, 37.197849>,  <33.582359, 22.284361, 37.414078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561134, 22.182404, 37.197849>,  <33.525757, 22.012474, 36.837471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561134, 22.182404, 37.197849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286202, 0.855512, -0.431495,
		-0.954079, 0.296014, -0.045923,
		0.088441, 0.424823, 0.900946,
		33.587666, 22.309851, 37.468132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993629, 22.453375, 36.978920>,  <33.525757, 22.012474, 36.837471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993629, 22.453375, 36.978920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358425, 22.547546, 37.113293>,  <33.577301, 22.604050, 37.193916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358425, 22.547546, 37.113293>,  <32.993629, 22.453375, 36.978920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358425, 22.547546, 37.113293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051806, 0.878456, -0.475006,
		-0.406929, 0.415797, 0.813340,
		0.911990, 0.235429, 0.335928,
		33.632023, 22.618176, 37.214069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058468, 23.213717, 36.962063>,  <32.993629, 22.453375, 36.978920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058468, 23.213717, 36.962063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436165, 23.097527, 37.024071>,  <33.662785, 23.027813, 37.061275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436165, 23.097527, 37.024071>,  <33.058468, 23.213717, 36.962063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436165, 23.097527, 37.024071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328793, 0.856644, -0.397564,
		-0.017312, 0.426365, 0.904385,
		0.944243, -0.290473, 0.155016,
		33.719437, 23.010386, 37.070576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384682, 23.823797, 37.449574>,  <33.058468, 23.213717, 36.962063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384682, 23.823797, 37.449574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577332, 23.604759, 37.175880>,  <33.692921, 23.473335, 37.011665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577332, 23.604759, 37.175880>,  <33.384682, 23.823797, 37.449574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577332, 23.604759, 37.175880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063234, 0.800430, -0.596081,
		0.874092, 0.243821, 0.420135,
		0.481626, -0.547597, -0.684232,
		33.721821, 23.440479, 36.970612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981110, 24.145561, 37.219067>,  <33.384682, 23.823797, 37.449574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981110, 24.145561, 37.219067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853241, 23.931274, 36.906448>,  <33.776520, 23.802702, 36.718876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853241, 23.931274, 36.906448>,  <33.981110, 24.145561, 37.219067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853241, 23.931274, 36.906448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107222, 0.839981, -0.531917,
		0.941443, -0.086239, -0.325958,
		-0.319670, -0.535720, -0.781547,
		33.757339, 23.770559, 36.671986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261208, 24.434513, 36.653431>,  <33.981110, 24.145561, 37.219067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261208, 24.434513, 36.653431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965439, 24.214542, 36.498081>,  <33.787975, 24.082560, 36.404873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965439, 24.214542, 36.498081>,  <34.261208, 24.434513, 36.653431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965439, 24.214542, 36.498081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228777, 0.747786, -0.623279,
		0.633174, -0.372018, -0.678743,
		-0.739426, -0.549925, -0.388370,
		33.743610, 24.049564, 36.381569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346977, 24.438976, 35.952988>,  <34.261208, 24.434513, 36.653431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346977, 24.438976, 35.952988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958397, 24.351620, 35.990044>,  <33.725246, 24.299206, 36.012280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958397, 24.351620, 35.990044>,  <34.346977, 24.438976, 35.952988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958397, 24.351620, 35.990044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227853, 0.750254, -0.620646,
		0.066038, -0.624038, -0.778598,
		-0.971453, -0.218392, 0.092643,
		33.666962, 24.286102, 36.017838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049500, 24.457884, 35.266876>,  <34.346977, 24.438976, 35.952988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049500, 24.457884, 35.266876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740967, 24.488201, 35.519634>,  <33.555847, 24.506392, 35.671291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740967, 24.488201, 35.519634>,  <34.049500, 24.457884, 35.266876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740967, 24.488201, 35.519634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382069, 0.738912, -0.555006,
		-0.508985, -0.669525, -0.540991,
		-0.771335, 0.075794, 0.631900,
		33.509567, 24.510939, 35.709206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513767, 24.419027, 34.762875>,  <34.049500, 24.457884, 35.266876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513767, 24.419027, 34.762875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345814, 24.529774, 35.108601>,  <33.245041, 24.596222, 35.316036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345814, 24.529774, 35.108601>,  <33.513767, 24.419027, 34.762875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345814, 24.529774, 35.108601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656384, 0.565053, -0.499875,
		-0.626783, -0.777213, -0.055525,
		-0.419883, 0.276867, 0.864316,
		33.219849, 24.612833, 35.367897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800278, 24.269733, 34.724869>,  <33.513767, 24.419027, 34.762875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800278, 24.269733, 34.724869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849442, 24.543781, 35.012066>,  <32.878941, 24.708210, 35.184383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849442, 24.543781, 35.012066>,  <32.800278, 24.269733, 34.724869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849442, 24.543781, 35.012066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587489, 0.633316, -0.503754,
		-0.799844, -0.359895, 0.480339,
		0.122907, 0.685118, 0.717988,
		32.886314, 24.749317, 35.227463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142303, 24.449156, 34.908615>,  <32.800278, 24.269733, 34.724869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142303, 24.449156, 34.908615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392685, 24.753098, 34.978821>,  <32.542912, 24.935463, 35.020943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392685, 24.753098, 34.978821>,  <32.142303, 24.449156, 34.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392685, 24.753098, 34.978821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627272, 0.624281, -0.465620,
		-0.463374, 0.181361, 0.867406,
		0.625951, 0.759856, 0.175513,
		32.580471, 24.981054, 35.031475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774298, 25.053896, 35.310928>,  <32.142303, 24.449156, 34.908615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774298, 25.053896, 35.310928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080364, 25.209133, 35.105442>,  <32.264004, 25.302275, 34.982151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080364, 25.209133, 35.105442>,  <31.774298, 25.053896, 35.310928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080364, 25.209133, 35.105442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639129, 0.554112, -0.533361,
		0.077661, 0.736440, 0.672031,
		0.765169, 0.388093, -0.513713,
		32.309914, 25.325562, 34.951328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556679, 25.757973, 35.261349>,  <31.774298, 25.053896, 35.310928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556679, 25.757973, 35.261349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862978, 25.716759, 35.007416>,  <32.046757, 25.692030, 34.855057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862978, 25.716759, 35.007416>,  <31.556679, 25.757973, 35.261349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862978, 25.716759, 35.007416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500551, 0.524318, -0.688868,
		0.403832, 0.845266, 0.349922,
		0.765747, -0.103033, -0.634835,
		32.092701, 25.685848, 34.816967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677103, 26.388052, 35.086132>,  <31.556679, 25.757973, 35.261349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677103, 26.388052, 35.086132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865767, 26.176914, 34.803596>,  <31.978964, 26.050232, 34.634075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865767, 26.176914, 34.803596>,  <31.677103, 26.388052, 35.086132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865767, 26.176914, 34.803596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432007, 0.559992, -0.706951,
		0.768706, 0.638584, 0.036092,
		0.471658, -0.527845, -0.706342,
		32.007263, 26.018560, 34.591694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042179, 26.842598, 34.668804>,  <31.677103, 26.388052, 35.086132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042179, 26.842598, 34.668804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005978, 26.522354, 34.431881>,  <31.984257, 26.330208, 34.289726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005978, 26.522354, 34.431881>,  <32.042179, 26.842598, 34.668804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005978, 26.522354, 34.431881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089790, 0.598888, -0.795783,
		0.991840, -0.018837, -0.126088,
		-0.090503, -0.800611, -0.592310,
		31.978827, 26.282171, 34.254189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194729, 27.109110, 34.023232>,  <32.042179, 26.842598, 34.668804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194729, 27.109110, 34.023232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075138, 26.739403, 33.928284>,  <32.003384, 26.517578, 33.871315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075138, 26.739403, 33.928284>,  <32.194729, 27.109110, 34.023232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075138, 26.739403, 33.928284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303117, 0.327848, -0.894783,
		0.904838, -0.195572, -0.378181,
		-0.298980, -0.924266, -0.237368,
		31.985443, 26.462124, 33.857075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489597, 26.926136, 33.371700>,  <32.194729, 27.109110, 34.023232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489597, 26.926136, 33.371700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159584, 26.704262, 33.414860>,  <31.961576, 26.571136, 33.440754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159584, 26.704262, 33.414860>,  <32.489597, 26.926136, 33.371700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159584, 26.704262, 33.414860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332587, 0.322286, -0.886294,
		0.456843, -0.767107, -0.450379,
		-0.825033, -0.554688, 0.107896,
		31.912073, 26.537855, 33.447227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470871, 26.521000, 32.821671>,  <32.489597, 26.926136, 33.371700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470871, 26.521000, 32.821671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089600, 26.522274, 32.942623>,  <31.860836, 26.523039, 33.015194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089600, 26.522274, 32.942623>,  <32.470871, 26.521000, 32.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089600, 26.522274, 32.942623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293617, 0.229532, -0.927957,
		-0.072362, -0.973296, -0.217850,
		-0.953180, 0.003185, 0.302385,
		31.803646, 26.523230, 33.033340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079918, 26.035742, 32.452190>,  <32.470871, 26.521000, 32.821671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079918, 26.035742, 32.452190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798624, 26.279522, 32.598633>,  <31.629848, 26.425791, 32.686497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798624, 26.279522, 32.598633>,  <32.079918, 26.035742, 32.452190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798624, 26.279522, 32.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345560, 0.157020, -0.925166,
		-0.621330, -0.777118, 0.100181,
		-0.703233, 0.609453, 0.366102,
		31.587654, 26.462358, 32.708462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499302, 25.890305, 32.048046>,  <32.079918, 26.035742, 32.452190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499302, 25.890305, 32.048046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405214, 26.240685, 32.216515>,  <31.348763, 26.450912, 32.317596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405214, 26.240685, 32.216515>,  <31.499302, 25.890305, 32.048046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405214, 26.240685, 32.216515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352286, 0.327026, -0.876897,
		-0.905851, -0.354634, 0.231662,
		-0.235218, 0.875950, 0.421170,
		31.334648, 26.503469, 32.342865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812210, 26.081179, 31.784910>,  <31.499302, 25.890305, 32.048046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812210, 26.081179, 31.784910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003685, 26.409481, 31.909626>,  <31.118570, 26.606462, 31.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003685, 26.409481, 31.909626>,  <30.812210, 26.081179, 31.784910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003685, 26.409481, 31.909626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288642, 0.482494, -0.826974,
		-0.829182, 0.305868, 0.467870,
		0.478689, 0.820758, 0.311789,
		31.147291, 26.655708, 32.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280830, 26.589020, 31.687996>,  <30.812210, 26.081179, 31.784910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280830, 26.589020, 31.687996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623680, 26.794765, 31.699120>,  <30.829390, 26.918213, 31.705793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623680, 26.794765, 31.699120>,  <30.280830, 26.589020, 31.687996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623680, 26.794765, 31.699120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307315, 0.553936, -0.773765,
		-0.413399, 0.654665, 0.632862,
		0.857122, 0.514362, 0.027808,
		30.880817, 26.949074, 31.707462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052393, 27.325701, 31.522087>,  <30.280830, 26.589020, 31.687996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052393, 27.325701, 31.522087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442652, 27.300995, 31.437897>,  <30.676807, 27.286171, 31.387383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442652, 27.300995, 31.437897>,  <30.052393, 27.325701, 31.522087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442652, 27.300995, 31.437897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103742, 0.715516, -0.690850,
		0.193268, 0.695861, 0.691683,
		0.975646, -0.061762, -0.210476,
		30.735346, 27.282467, 31.374754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309898, 27.940445, 31.496075>,  <30.052393, 27.325701, 31.522087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309898, 27.940445, 31.496075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607584, 27.785133, 31.278679>,  <30.786196, 27.691946, 31.148241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607584, 27.785133, 31.278679>,  <30.309898, 27.940445, 31.496075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607584, 27.785133, 31.278679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012564, 0.805401, -0.592597,
		0.667822, 0.447847, 0.594513,
		0.744215, -0.388280, -0.543492,
		30.830849, 27.668650, 31.115631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920227, 28.449917, 31.452341>,  <30.309898, 27.940445, 31.496075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920227, 28.449917, 31.452341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996992, 28.189827, 31.158298>,  <31.043051, 28.033773, 30.981873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996992, 28.189827, 31.158298>,  <30.920227, 28.449917, 31.452341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996992, 28.189827, 31.158298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290333, 0.753116, -0.590358,
		0.937484, -0.100127, 0.333315,
		0.191914, -0.650223, -0.735105,
		31.054565, 27.994761, 30.937767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643702, 28.593002, 31.195265>,  <30.920227, 28.449917, 31.452341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643702, 28.593002, 31.195265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446444, 28.413364, 30.897240>,  <31.328089, 28.305582, 30.718424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446444, 28.413364, 30.897240>,  <31.643702, 28.593002, 31.195265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446444, 28.413364, 30.897240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111573, 0.816724, -0.566139,
		0.862764, -0.362316, -0.352655,
		-0.493143, -0.449097, -0.745065,
		31.298500, 28.278635, 30.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953276, 28.741739, 30.621136>,  <31.643702, 28.593002, 31.195265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953276, 28.741739, 30.621136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605234, 28.631958, 30.457382>,  <31.396410, 28.566090, 30.359131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605234, 28.631958, 30.457382>,  <31.953276, 28.741739, 30.621136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605234, 28.631958, 30.457382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035961, 0.793049, -0.608096,
		0.491554, -0.543828, -0.680166,
		-0.870104, -0.274452, -0.409383,
		31.344202, 28.549622, 30.334568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969938, 28.620615, 29.828979>,  <31.953276, 28.741739, 30.621136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969938, 28.620615, 29.828979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575886, 28.668304, 29.878460>,  <31.339455, 28.696918, 29.908148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575886, 28.668304, 29.878460>,  <31.969938, 28.620615, 29.828979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575886, 28.668304, 29.878460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023804, 0.618343, -0.785547,
		-0.170145, -0.776812, -0.606311,
		-0.985131, 0.119225, 0.123700,
		31.280346, 28.704071, 29.915569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786692, 28.775576, 29.168102>,  <31.969938, 28.620615, 29.828979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786692, 28.775576, 29.168102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460646, 28.902855, 29.361736>,  <31.265018, 28.979223, 29.477917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460646, 28.902855, 29.361736>,  <31.786692, 28.775576, 29.168102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460646, 28.902855, 29.361736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078323, 0.767432, -0.636328,
		-0.573983, -0.556594, -0.600622,
		-0.815113, 0.318198, 0.484087,
		31.216112, 28.998314, 29.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256662, 28.789118, 28.696857>,  <31.786692, 28.775576, 29.168102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256662, 28.789118, 28.696857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153784, 29.050610, 28.981529>,  <31.092056, 29.207504, 29.152332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153784, 29.050610, 28.981529>,  <31.256662, 28.789118, 28.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153784, 29.050610, 28.981529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154951, 0.699026, -0.698106,
		-0.953855, -0.289826, -0.078491,
		-0.257197, 0.653730, 0.711679,
		31.076624, 29.246729, 29.195032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571810, 29.079704, 28.450451>,  <31.256662, 28.789118, 28.696857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571810, 29.079704, 28.450451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699686, 29.333103, 28.732296>,  <30.776411, 29.485144, 28.901403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699686, 29.333103, 28.732296>,  <30.571810, 29.079704, 28.450451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699686, 29.333103, 28.732296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173606, 0.770209, -0.613709,
		-0.931482, 0.073872, 0.356208,
		0.319691, 0.633499, 0.704611,
		30.795593, 29.523153, 28.943680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072729, 29.583668, 28.456148>,  <30.571810, 29.079704, 28.450451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072729, 29.583668, 28.456148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390438, 29.755657, 28.627846>,  <30.581064, 29.858850, 28.730865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390438, 29.755657, 28.627846>,  <30.072729, 29.583668, 28.456148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390438, 29.755657, 28.627846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127042, 0.808428, -0.574721,
		-0.594129, 0.401954, 0.696738,
		0.794274, 0.429973, 0.429245,
		30.628721, 29.884649, 28.756618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867252, 30.290129, 28.588812>,  <30.072729, 29.583668, 28.456148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867252, 30.290129, 28.588812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266523, 30.309250, 28.603558>,  <30.506086, 30.320723, 28.612406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266523, 30.309250, 28.603558>,  <29.867252, 30.290129, 28.588812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266523, 30.309250, 28.603558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025150, 0.884454, -0.465949,
		-0.054879, 0.464172, 0.884043,
		0.998176, 0.047805, 0.036864,
		30.565977, 30.323591, 28.614616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991005, 30.862505, 29.011269>,  <29.867252, 30.290129, 28.588812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991005, 30.862505, 29.011269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309530, 30.788532, 28.780899>,  <30.500645, 30.744148, 28.642677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309530, 30.788532, 28.780899>,  <29.991005, 30.862505, 29.011269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309530, 30.788532, 28.780899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032392, 0.963789, -0.264693,
		0.604017, 0.192123, 0.773467,
		0.796313, -0.184933, -0.575922,
		30.548424, 30.733053, 28.608122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317429, 31.468180, 29.012545>,  <29.991005, 30.862505, 29.011269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317429, 31.468180, 29.012545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501245, 31.303524, 28.697742>,  <30.611536, 31.204731, 28.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501245, 31.303524, 28.697742>,  <30.317429, 31.468180, 29.012545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501245, 31.303524, 28.697742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061654, 0.898757, -0.434090,
		0.886014, 0.150960, 0.438395,
		0.459541, -0.411638, -0.787004,
		30.639109, 31.180033, 28.461641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999899, 31.774984, 29.041166>,  <30.317429, 31.468180, 29.012545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999899, 31.774984, 29.041166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910982, 31.634624, 28.677307>,  <30.857632, 31.550409, 28.458992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910982, 31.634624, 28.677307>,  <30.999899, 31.774984, 29.041166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910982, 31.634624, 28.677307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192162, 0.898920, -0.393721,
		0.955856, -0.262321, -0.132393,
		-0.222292, -0.350899, -0.909646,
		30.844294, 31.529354, 28.404413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540098, 31.937502, 28.654364>,  <30.999899, 31.774984, 29.041166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540098, 31.937502, 28.654364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233095, 31.896229, 28.401291>,  <31.048893, 31.871464, 28.249447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233095, 31.896229, 28.401291>,  <31.540098, 31.937502, 28.654364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233095, 31.896229, 28.401291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237143, 0.871241, -0.429770,
		0.595564, -0.479888, -0.644214,
		-0.767507, -0.103185, -0.632682,
		31.002844, 31.865273, 28.211487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844774, 32.227917, 28.127695>,  <31.540098, 31.937502, 28.654364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844774, 32.227917, 28.127695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453436, 32.229004, 28.044910>,  <31.218634, 32.229656, 27.995239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453436, 32.229004, 28.044910>,  <31.844774, 32.227917, 28.127695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453436, 32.229004, 28.044910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109586, 0.855055, -0.506826,
		0.175586, -0.518531, -0.836837,
		-0.978346, 0.002714, -0.206960,
		31.159933, 32.229816, 27.982822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809824, 32.239609, 27.407225>,  <31.844774, 32.227917, 28.127695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809824, 32.239609, 27.407225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452065, 32.382351, 27.515083>,  <31.237410, 32.467995, 27.579800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452065, 32.382351, 27.515083>,  <31.809824, 32.239609, 27.407225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452065, 32.382351, 27.515083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129103, 0.783182, -0.608242,
		-0.428237, -0.509197, -0.746546,
		-0.894396, 0.356854, 0.269649,
		31.183746, 32.489407, 27.595978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604208, 32.532661, 26.847645>,  <31.809824, 32.239609, 27.407225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604208, 32.532661, 26.847645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380663, 32.719673, 27.121605>,  <31.246536, 32.831879, 27.285980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380663, 32.719673, 27.121605>,  <31.604208, 32.532661, 26.847645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380663, 32.719673, 27.121605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132674, 0.865690, -0.482678,
		-0.818577, -0.178884, -0.545832,
		-0.558865, 0.467527, 0.684901,
		31.213003, 32.859932, 27.327076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237595, 33.065048, 26.454617>,  <31.604208, 32.532661, 26.847645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237595, 33.065048, 26.454617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151169, 33.176403, 26.828957>,  <31.099314, 33.243217, 27.053560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151169, 33.176403, 26.828957>,  <31.237595, 33.065048, 26.454617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151169, 33.176403, 26.828957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104317, 0.959586, -0.261367,
		-0.970790, 0.041152, -0.236374,
		-0.216065, 0.278390, 0.935850,
		31.086349, 33.259922, 27.109711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655333, 33.435265, 26.535587>,  <31.237595, 33.065048, 26.454617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655333, 33.435265, 26.535587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920902, 33.551952, 26.811008>,  <31.080244, 33.621964, 26.976261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920902, 33.551952, 26.811008>,  <30.655333, 33.435265, 26.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920902, 33.551952, 26.811008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018207, 0.926803, -0.375106,
		-0.747579, 0.236505, 0.620638,
		0.663924, 0.291721, 0.688552,
		31.120079, 33.639469, 27.017574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419092, 34.122253, 26.800486>,  <30.655333, 33.435265, 26.535587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419092, 34.122253, 26.800486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801914, 34.092369, 26.912529>,  <31.031609, 34.074440, 26.979755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801914, 34.092369, 26.912529>,  <30.419092, 34.122253, 26.800486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801914, 34.092369, 26.912529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176091, 0.917361, -0.356990,
		-0.230292, 0.390984, 0.891122,
		0.957057, -0.074706, 0.280109,
		31.089031, 34.069958, 26.996561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605658, 34.691071, 27.199511>,  <30.419092, 34.122253, 26.800486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605658, 34.691071, 27.199511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982224, 34.592266, 27.107670>,  <31.208164, 34.532982, 27.052565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982224, 34.592266, 27.107670>,  <30.605658, 34.691071, 27.199511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982224, 34.592266, 27.107670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141106, 0.906872, -0.397079,
		0.306305, 0.341419, 0.888600,
		0.941417, -0.247015, -0.229603,
		31.264648, 34.518162, 27.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332241, 34.533562, 27.929855>,  <30.605658, 34.691071, 27.199511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332241, 34.533562, 27.929855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935333, 34.553673, 27.975246>,  <29.697189, 34.565739, 28.002481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935333, 34.553673, 27.975246>,  <30.332241, 34.533562, 27.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935333, 34.553673, 27.975246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050964, -0.668604, 0.741870,
		0.113169, 0.741917, 0.660872,
		-0.992268, 0.050277, 0.113476,
		29.637653, 34.568756, 28.009289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254604, 34.232651, 28.542143>,  <30.332241, 34.533562, 27.929855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254604, 34.232651, 28.542143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867155, 34.223721, 28.443134>,  <29.634686, 34.218365, 28.383728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867155, 34.223721, 28.443134>,  <30.254604, 34.232651, 28.542143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867155, 34.223721, 28.443134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166012, -0.683053, 0.711252,
		-0.184948, 0.730028, 0.657916,
		-0.968625, -0.022323, -0.247523,
		29.576567, 34.217022, 28.368877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729769, 34.351295, 29.096769>,  <30.254604, 34.232651, 28.542143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729769, 34.351295, 29.096769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524630, 34.137745, 28.827858>,  <29.401546, 34.009613, 28.666512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524630, 34.137745, 28.827858>,  <29.729769, 34.351295, 29.096769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524630, 34.137745, 28.827858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323849, -0.604935, 0.727444,
		-0.795051, 0.590787, 0.137345,
		-0.512850, -0.533877, -0.672280,
		29.370775, 33.977581, 28.626173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038641, 34.176315, 29.498966>,  <29.729769, 34.351295, 29.096769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038641, 34.176315, 29.498966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055481, 33.928436, 29.185482>,  <29.065586, 33.779709, 28.997391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055481, 33.928436, 29.185482>,  <29.038641, 34.176315, 29.498966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055481, 33.928436, 29.185482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322744, -0.750790, 0.576325,
		-0.945550, 0.228674, -0.231613,
		0.042102, -0.619696, -0.783712,
		29.068111, 33.742527, 28.950369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474045, 33.825775, 29.594503>,  <29.038641, 34.176315, 29.498966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474045, 33.825775, 29.594503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681316, 33.579006, 29.357559>,  <28.805679, 33.430943, 29.215393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681316, 33.579006, 29.357559>,  <28.474045, 33.825775, 29.594503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681316, 33.579006, 29.357559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385802, -0.786737, 0.481874,
		-0.763313, -0.021163, -0.645682,
		0.518179, -0.616926, -0.592362,
		28.836771, 33.393929, 29.179852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997030, 33.340816, 29.311628>,  <28.474045, 33.825775, 29.594503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997030, 33.340816, 29.311628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355169, 33.165985, 29.277416>,  <28.570053, 33.061089, 29.256889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355169, 33.165985, 29.277416>,  <27.997030, 33.340816, 29.311628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355169, 33.165985, 29.277416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359516, -0.822658, 0.440434,
		-0.262864, -0.363593, -0.893702,
		0.895350, -0.437074, -0.085529,
		28.623774, 33.034863, 29.251757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896297, 32.615578, 29.166740>,  <27.997030, 33.340816, 29.311628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896297, 32.615578, 29.166740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269138, 32.639530, 29.309628>,  <28.492842, 32.653904, 29.395359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269138, 32.639530, 29.309628>,  <27.896297, 32.615578, 29.166740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269138, 32.639530, 29.309628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127488, -0.868882, 0.478321,
		0.339023, -0.491383, -0.802251,
		0.932100, 0.059885, 0.357217,
		28.548769, 32.657497, 29.416792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076145, 32.047543, 28.996771>,  <27.896297, 32.615578, 29.166740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076145, 32.047543, 28.996771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328896, 32.149494, 29.289555>,  <28.480547, 32.210667, 29.465225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328896, 32.149494, 29.289555>,  <28.076145, 32.047543, 28.996771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328896, 32.149494, 29.289555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095243, -0.911691, 0.399685,
		0.769194, -0.322266, -0.551801,
		0.631877, 0.254880, 0.731961,
		28.518459, 32.225960, 29.509142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644266, 31.489496, 29.098856>,  <28.076145, 32.047543, 28.996771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644266, 31.489496, 29.098856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621019, 31.686836, 29.446011>,  <28.607071, 31.805241, 29.654305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621019, 31.686836, 29.446011>,  <28.644266, 31.489496, 29.098856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621019, 31.686836, 29.446011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029052, -0.868153, 0.495446,
		0.997887, 0.054006, 0.036120,
		-0.058115, 0.493350, 0.867887,
		28.603584, 31.834841, 29.706377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962053, 31.032900, 29.542530>,  <28.644266, 31.489496, 29.098856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962053, 31.032900, 29.542530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822393, 31.292938, 29.812485>,  <28.738598, 31.448961, 29.974457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822393, 31.292938, 29.812485>,  <28.962053, 31.032900, 29.542530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822393, 31.292938, 29.812485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071759, -0.699546, 0.710975,
		0.934315, 0.296667, 0.197597,
		-0.349151, 0.650095, 0.674885,
		28.717648, 31.487967, 30.014950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415792, 30.961796, 30.184378>,  <28.962053, 31.032900, 29.542530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415792, 30.961796, 30.184378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070095, 31.122150, 30.305950>,  <28.862677, 31.218363, 30.378893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070095, 31.122150, 30.305950>,  <29.415792, 30.961796, 30.184378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070095, 31.122150, 30.305950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058766, -0.680460, 0.730425,
		0.499631, 0.613404, 0.611641,
		-0.864243, 0.400887, 0.303931,
		28.810822, 31.242416, 30.397129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500692, 31.194584, 30.939522>,  <29.415792, 30.961796, 30.184378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500692, 31.194584, 30.939522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112822, 31.149780, 30.852634>,  <28.880100, 31.122898, 30.800503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112822, 31.149780, 30.852634>,  <29.500692, 31.194584, 30.939522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112822, 31.149780, 30.852634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114712, -0.576210, 0.809211,
		-0.215800, 0.809590, 0.545888,
		-0.969676, -0.112008, -0.217216,
		28.821918, 31.116179, 30.787470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222700, 31.332470, 31.661125>,  <29.500692, 31.194584, 30.939522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222700, 31.332470, 31.661125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968498, 31.163826, 31.402397>,  <28.815977, 31.062639, 31.247160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968498, 31.163826, 31.402397>,  <29.222700, 31.332470, 31.661125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968498, 31.163826, 31.402397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347191, -0.592223, 0.727139,
		-0.689632, 0.686670, 0.229981,
		-0.635505, -0.421611, -0.646822,
		28.777847, 31.037342, 31.208351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528435, 31.336781, 31.924137>,  <29.222700, 31.332470, 31.661125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528435, 31.336781, 31.924137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546680, 31.031616, 31.666180>,  <28.557627, 30.848518, 31.511406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546680, 31.031616, 31.666180>,  <28.528435, 31.336781, 31.924137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546680, 31.031616, 31.666180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409804, -0.603033, 0.684406,
		-0.911032, 0.233062, -0.340150,
		0.045613, -0.762911, -0.644892,
		28.560364, 30.802742, 31.472712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945055, 30.913931, 31.991121>,  <28.528435, 31.336781, 31.924137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945055, 30.913931, 31.991121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240513, 30.694599, 31.834282>,  <28.417788, 30.563000, 31.740179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240513, 30.694599, 31.834282>,  <27.945055, 30.913931, 31.991121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240513, 30.694599, 31.834282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263734, -0.770372, 0.580492,
		-0.620361, -0.325369, -0.713644,
		0.738646, -0.548327, -0.392098,
		28.462107, 30.530102, 31.716652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586889, 30.291983, 31.842993>,  <27.945055, 30.913931, 31.991121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586889, 30.291983, 31.842993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975302, 30.197788, 31.826775>,  <28.208349, 30.141272, 31.817043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975302, 30.197788, 31.826775>,  <27.586889, 30.291983, 31.842993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975302, 30.197788, 31.826775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171294, -0.804306, 0.568990,
		-0.166599, -0.545563, -0.821344,
		0.971032, -0.235485, -0.040545,
		28.266611, 30.127142, 31.814611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644382, 29.527437, 31.791929>,  <27.586889, 30.291983, 31.842993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644382, 29.527437, 31.791929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002335, 29.647793, 31.923779>,  <28.217106, 29.720007, 32.002888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002335, 29.647793, 31.923779>,  <27.644382, 29.527437, 31.791929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002335, 29.647793, 31.923779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072441, -0.826695, 0.557968,
		0.440385, -0.475437, -0.761591,
		0.894881, 0.300891, 0.329623,
		28.270800, 29.738060, 32.022667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031822, 28.905733, 31.752333>,  <27.644382, 29.527437, 31.791929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031822, 28.905733, 31.752333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213406, 29.158409, 32.003693>,  <28.322355, 29.310015, 32.154510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213406, 29.158409, 32.003693>,  <28.031822, 28.905733, 31.752333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213406, 29.158409, 32.003693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256548, -0.768057, 0.586747,
		0.853290, -0.105144, -0.510726,
		0.453959, 0.631691, 0.628400,
		28.349594, 29.347916, 32.192211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709383, 28.718239, 31.694555>,  <28.031822, 28.905733, 31.752333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709383, 28.718239, 31.694555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653234, 28.889442, 32.051678>,  <28.619545, 28.992165, 32.265953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653234, 28.889442, 32.051678>,  <28.709383, 28.718239, 31.694555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653234, 28.889442, 32.051678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306585, -0.838625, 0.450238,
		0.941436, 0.336922, -0.013501,
		-0.140373, 0.428009, 0.892807,
		28.611122, 29.017845, 32.319519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339180, 28.617016, 31.935022>,  <28.709383, 28.718239, 31.694555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339180, 28.617016, 31.935022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079220, 28.679203, 32.232601>,  <28.923244, 28.716515, 32.411148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079220, 28.679203, 32.232601>,  <29.339180, 28.617016, 31.935022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079220, 28.679203, 32.232601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275933, -0.863797, 0.421564,
		0.708160, 0.479255, 0.518483,
		-0.649901, 0.155468, 0.743948,
		28.884249, 28.725843, 32.455784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698694, 28.468723, 32.531212>,  <29.339180, 28.617016, 31.935022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698694, 28.468723, 32.531212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312902, 28.441593, 32.633331>,  <29.081427, 28.425316, 32.694603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312902, 28.441593, 32.633331>,  <29.698694, 28.468723, 32.531212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312902, 28.441593, 32.633331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166764, -0.905863, 0.389362,
		0.204855, 0.418106, 0.884998,
		-0.964482, -0.067823, 0.255295,
		29.023558, 28.421246, 32.709919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744944, 28.287783, 33.210773>,  <29.698694, 28.468723, 32.531212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744944, 28.287783, 33.210773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384352, 28.176701, 33.077980>,  <29.167995, 28.110052, 32.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384352, 28.176701, 33.077980>,  <29.744944, 28.287783, 33.210773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384352, 28.176701, 33.077980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142842, -0.914940, 0.377467,
		-0.408569, 0.292858, 0.864468,
		-0.901481, -0.277704, -0.331984,
		29.113907, 28.093390, 32.978386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393963, 27.989405, 33.825062>,  <29.744944, 28.287783, 33.210773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393963, 27.989405, 33.825062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190094, 27.860001, 33.506168>,  <29.067774, 27.782358, 33.314835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190094, 27.860001, 33.506168>,  <29.393963, 27.989405, 33.825062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190094, 27.860001, 33.506168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112194, -0.943693, 0.311217,
		-0.853023, 0.069174, 0.517269,
		-0.509671, -0.323510, -0.797231,
		29.037193, 27.762947, 33.266998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961252, 27.421904, 34.080284>,  <29.393963, 27.989405, 33.825062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961252, 27.421904, 34.080284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961025, 27.353565, 33.686165>,  <28.960888, 27.312563, 33.449692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961025, 27.353565, 33.686165>,  <28.961252, 27.421904, 34.080284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961025, 27.353565, 33.686165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102207, -0.980128, 0.170007,
		-0.994763, 0.100801, -0.016904,
		-0.000569, -0.170844, -0.985298,
		28.960855, 27.302311, 33.390575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314919, 26.944721, 33.935131>,  <28.961252, 27.421904, 34.080284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314919, 26.944721, 33.935131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577126, 26.897762, 33.636730>,  <28.734449, 26.869587, 33.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577126, 26.897762, 33.636730>,  <28.314919, 26.944721, 33.935131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577126, 26.897762, 33.636730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046984, -0.992269, 0.114868,
		-0.753719, -0.040248, -0.655963,
		0.655515, -0.117398, -0.746001,
		28.773781, 26.862543, 33.412930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137939, 26.291018, 33.619633>,  <28.314919, 26.944721, 33.935131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137939, 26.291018, 33.619633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510406, 26.373928, 33.499660>,  <28.733887, 26.423676, 33.427677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510406, 26.373928, 33.499660>,  <28.137939, 26.291018, 33.619633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510406, 26.373928, 33.499660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258526, -0.955464, 0.142314,
		-0.257077, -0.210059, -0.943285,
		0.931169, 0.207278, -0.299933,
		28.789757, 26.436111, 33.409679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373180, 25.825321, 33.002689>,  <28.137939, 26.291018, 33.619633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373180, 25.825321, 33.002689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697060, 25.968983, 33.188332>,  <28.891388, 26.055180, 33.299717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697060, 25.968983, 33.188332>,  <28.373180, 25.825321, 33.002689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697060, 25.968983, 33.188332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287162, -0.932186, 0.220382,
		0.511786, -0.045168, -0.857925,
		0.809700, 0.359152, 0.464109,
		28.939970, 26.076729, 33.327564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962517, 25.383343, 32.786030>,  <28.373180, 25.825321, 33.002689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962517, 25.383343, 32.786030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059832, 25.552795, 33.135052>,  <29.118221, 25.654467, 33.344463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059832, 25.552795, 33.135052>,  <28.962517, 25.383343, 32.786030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059832, 25.552795, 33.135052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331271, -0.881779, 0.335745,
		0.911630, 0.207369, -0.354863,
		0.243288, 0.423631, 0.872552,
		29.132818, 25.679884, 33.396816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594511, 25.132383, 32.849255>,  <28.962517, 25.383343, 32.786030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594511, 25.132383, 32.849255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482695, 25.239914, 33.217949>,  <29.415606, 25.304432, 33.439163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482695, 25.239914, 33.217949>,  <29.594511, 25.132383, 32.849255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482695, 25.239914, 33.217949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235102, -0.911613, 0.337178,
		0.930906, 0.310955, 0.191629,
		-0.279539, 0.268829, 0.921731,
		29.398832, 25.320562, 33.494469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145672, 25.073397, 33.231277>,  <29.594511, 25.132383, 32.849255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145672, 25.073397, 33.231277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840990, 25.059647, 33.490082>,  <29.658180, 25.051397, 33.645363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840990, 25.059647, 33.490082>,  <30.145672, 25.073397, 33.231277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840990, 25.059647, 33.490082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352471, -0.859886, 0.369269,
		0.543661, 0.509327, 0.667097,
		-0.761706, -0.034375, 0.647010,
		29.612478, 25.049334, 33.684185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409733, 24.929155, 33.952076>,  <30.145672, 25.073397, 33.231277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409733, 24.929155, 33.952076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030474, 24.807774, 33.989872>,  <29.802917, 24.734945, 34.012550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030474, 24.807774, 33.989872>,  <30.409733, 24.929155, 33.952076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030474, 24.807774, 33.989872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312291, -0.834290, 0.454351,
		-0.059044, 0.460300, 0.885798,
		-0.948150, -0.303453, 0.094488,
		29.746029, 24.716738, 34.018219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387215, 24.614008, 34.610474>,  <30.409733, 24.929155, 33.952076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387215, 24.614008, 34.610474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070898, 24.464378, 34.416683>,  <29.881107, 24.374601, 34.300407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070898, 24.464378, 34.416683>,  <30.387215, 24.614008, 34.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070898, 24.464378, 34.416683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242422, -0.918203, 0.313266,
		-0.562033, 0.130280, 0.816790,
		-0.790791, -0.374073, -0.484478,
		29.833660, 24.352156, 34.271339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046698, 24.187733, 35.071037>,  <30.387215, 24.614008, 34.610474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046698, 24.187733, 35.071037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901024, 24.059612, 34.721230>,  <29.813620, 23.982740, 34.511345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901024, 24.059612, 34.721230>,  <30.046698, 24.187733, 35.071037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901024, 24.059612, 34.721230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258763, -0.936827, 0.235364,
		-0.894657, -0.140576, 0.424060,
		-0.364184, -0.320301, -0.874515,
		29.791769, 23.963522, 34.458874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818596, 23.541853, 35.218441>,  <30.046698, 24.187733, 35.071037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818596, 23.541853, 35.218441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854816, 23.534309, 34.820156>,  <29.876549, 23.529783, 34.581184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854816, 23.534309, 34.820156>,  <29.818596, 23.541853, 35.218441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854816, 23.534309, 34.820156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327163, -0.943767, 0.047629,
		-0.940619, -0.330073, -0.079289,
		0.090552, -0.018860, -0.995713,
		29.881983, 23.528650, 34.521442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566977, 22.916811, 35.021885>,  <29.818596, 23.541853, 35.218441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566977, 22.916811, 35.021885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823242, 23.037971, 34.739666>,  <29.977001, 23.110668, 34.570335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823242, 23.037971, 34.739666>,  <29.566977, 22.916811, 35.021885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823242, 23.037971, 34.739666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466851, -0.883203, 0.044749,
		-0.609589, -0.358056, -0.707246,
		0.640665, 0.302900, -0.705549,
		30.015442, 23.128841, 34.528000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459953, 22.417862, 34.567776>,  <29.566977, 22.916811, 35.021885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459953, 22.417862, 34.567776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822657, 22.576923, 34.511692>,  <30.040279, 22.672359, 34.478043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822657, 22.576923, 34.511692>,  <29.459953, 22.417862, 34.567776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822657, 22.576923, 34.511692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408943, -0.910405, 0.062681,
		-0.102719, -0.114173, -0.988136,
		0.906760, 0.397653, -0.140206,
		30.094685, 22.696218, 34.469631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765984, 21.892256, 34.101192>,  <29.459953, 22.417862, 34.567776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765984, 21.892256, 34.101192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076481, 22.115532, 34.218410>,  <30.262779, 22.249498, 34.288742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076481, 22.115532, 34.218410>,  <29.765984, 21.892256, 34.101192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076481, 22.115532, 34.218410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586826, -0.809620, -0.012271,
		0.230403, 0.181489, -0.956021,
		0.776241, 0.558191, 0.293041,
		30.309353, 22.282990, 34.306324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322922, 21.735207, 33.625168>,  <29.765984, 21.892256, 34.101192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322922, 21.735207, 33.625168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470940, 21.847157, 33.979507>,  <30.559752, 21.914326, 34.192112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470940, 21.847157, 33.979507>,  <30.322922, 21.735207, 33.625168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470940, 21.847157, 33.979507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667486, -0.743322, -0.043985,
		0.646165, 0.607571, -0.461875,
		0.370046, 0.279873, 0.885854,
		30.581953, 21.931118, 34.245262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212324, 21.540440, 32.915359>,  <30.322922, 21.735207, 33.625168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212324, 21.540440, 32.915359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042671, 21.210266, 32.766354>,  <29.940880, 21.012161, 32.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042671, 21.210266, 32.766354>,  <30.212324, 21.540440, 32.915359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042671, 21.210266, 32.766354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716292, 0.557464, -0.419714,
		0.554086, 0.088767, -0.827713,
		-0.424163, -0.825442, -0.372466,
		29.915430, 20.962635, 32.654598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137379, 21.617010, 32.249115>,  <30.212324, 21.540440, 32.915359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137379, 21.617010, 32.249115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856028, 21.355667, 32.361107>,  <29.687218, 21.198862, 32.428303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856028, 21.355667, 32.361107>,  <30.137379, 21.617010, 32.249115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856028, 21.355667, 32.361107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691445, 0.537567, -0.482624,
		0.164817, -0.533057, -0.829871,
		-0.703377, -0.653355, 0.279979,
		29.645014, 21.159660, 32.445099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743164, 21.420141, 31.729595>,  <30.137379, 21.617010, 32.249115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743164, 21.420141, 31.729595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496735, 21.334450, 32.032795>,  <29.348877, 21.283035, 32.214714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496735, 21.334450, 32.032795>,  <29.743164, 21.420141, 31.729595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496735, 21.334450, 32.032795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668854, 0.650541, -0.359763,
		-0.416038, -0.728631, -0.544068,
		-0.616073, -0.214227, 0.757997,
		29.311913, 21.270182, 32.260193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086826, 21.223749, 31.439787>,  <29.743164, 21.420141, 31.729595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086826, 21.223749, 31.439787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008041, 21.325733, 31.818459>,  <28.960770, 21.386923, 32.045662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008041, 21.325733, 31.818459>,  <29.086826, 21.223749, 31.439787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008041, 21.325733, 31.818459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709038, 0.629829, -0.317145,
		-0.677105, -0.733697, 0.056724,
		-0.196962, 0.254959, 0.946680,
		28.948954, 21.402222, 32.102463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303928, 21.126369, 31.476477>,  <29.086826, 21.223749, 31.439787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303928, 21.126369, 31.476477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434235, 21.370449, 31.765347>,  <28.512419, 21.516897, 31.938667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434235, 21.370449, 31.765347>,  <28.303928, 21.126369, 31.476477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434235, 21.370449, 31.765347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678480, 0.682841, -0.270911,
		-0.658439, -0.401727, 0.636454,
		0.325765, 0.610199, 0.722173,
		28.531963, 21.553509, 31.981998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767519, 21.371065, 31.815151>,  <28.303928, 21.126369, 31.476477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767519, 21.371065, 31.815151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046682, 21.652573, 31.868271>,  <28.214180, 21.821478, 31.900143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046682, 21.652573, 31.868271>,  <27.767519, 21.371065, 31.815151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046682, 21.652573, 31.868271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667802, 0.706469, -0.234396,
		-0.258779, 0.074904, 0.963028,
		0.697907, 0.703769, 0.132798,
		28.256054, 21.863703, 31.908110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331211, 21.859104, 31.835901>,  <27.767519, 21.371065, 31.815151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331211, 21.859104, 31.835901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681200, 22.052494, 31.825500>,  <27.891193, 22.168528, 31.819260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681200, 22.052494, 31.825500>,  <27.331211, 21.859104, 31.835901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681200, 22.052494, 31.825500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474035, 0.844488, -0.249260,
		-0.098553, 0.230421, 0.968088,
		0.874973, 0.483473, -0.026001,
		27.943691, 22.197536, 31.817699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349083, 22.563686, 32.341244>,  <27.331211, 21.859104, 31.835901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349083, 22.563686, 32.341244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627693, 22.600048, 32.056541>,  <27.794859, 22.621864, 31.885721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627693, 22.600048, 32.056541>,  <27.349083, 22.563686, 32.341244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627693, 22.600048, 32.056541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306386, 0.934646, -0.180459,
		0.648832, 0.343765, 0.678855,
		0.696524, 0.090904, -0.711752,
		27.836651, 22.627319, 31.843016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698038, 23.310221, 32.415813>,  <27.349083, 22.563686, 32.341244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698038, 23.310221, 32.415813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784086, 23.174030, 32.049686>,  <27.835714, 23.092316, 31.830011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784086, 23.174030, 32.049686>,  <27.698038, 23.310221, 32.415813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784086, 23.174030, 32.049686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005245, 0.937646, -0.347551,
		0.976574, 0.069964, 0.203491,
		0.215119, -0.340476, -0.915314,
		27.848621, 23.071888, 31.775093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268866, 23.677921, 32.249260>,  <27.698038, 23.310221, 32.415813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268866, 23.677921, 32.249260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117481, 23.549660, 31.901939>,  <28.026651, 23.472702, 31.693546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117481, 23.549660, 31.901939>,  <28.268866, 23.677921, 32.249260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117481, 23.549660, 31.901939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117523, 0.947133, -0.298541,
		0.918127, -0.010940, -0.396136,
		-0.378460, -0.320653, -0.868302,
		28.003942, 23.453465, 31.641449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572121, 24.097610, 31.765617>,  <28.268866, 23.677921, 32.249260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572121, 24.097610, 31.765617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259130, 23.941410, 31.571613>,  <28.071337, 23.847689, 31.455210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259130, 23.941410, 31.571613>,  <28.572121, 24.097610, 31.765617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259130, 23.941410, 31.571613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152672, 0.875454, -0.458555,
		0.603672, -0.284762, -0.744642,
		-0.782478, -0.390502, -0.485011,
		28.024387, 23.824259, 31.426109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634575, 24.267782, 31.045589>,  <28.572121, 24.097610, 31.765617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634575, 24.267782, 31.045589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245131, 24.212551, 31.118267>,  <28.011463, 24.179413, 31.161873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245131, 24.212551, 31.118267>,  <28.634575, 24.267782, 31.045589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245131, 24.212551, 31.118267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193576, 0.921354, -0.337097,
		-0.120857, -0.363373, -0.923771,
		-0.973613, -0.138080, 0.181693,
		27.953047, 24.171127, 31.172775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282284, 24.400803, 30.458601>,  <28.634575, 24.267782, 31.045589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282284, 24.400803, 30.458601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027317, 24.430042, 30.765419>,  <27.874338, 24.447586, 30.949511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027317, 24.430042, 30.765419>,  <28.282284, 24.400803, 30.458601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027317, 24.430042, 30.765419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328511, 0.874696, -0.356351,
		-0.696981, -0.479127, -0.533530,
		-0.637415, 0.073100, 0.767046,
		27.836092, 24.451973, 30.995533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809690, 24.801453, 30.151661>,  <28.282284, 24.400803, 30.458601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809690, 24.801453, 30.151661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670221, 24.805573, 30.526535>,  <27.586540, 24.808044, 30.751461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670221, 24.805573, 30.526535>,  <27.809690, 24.801453, 30.151661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670221, 24.805573, 30.526535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512947, 0.834794, -0.200012,
		-0.784418, -0.550467, -0.285788,
		-0.348674, 0.010299, 0.937188,
		27.565619, 24.808662, 30.807692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073315, 24.982672, 30.114201>,  <27.809690, 24.801453, 30.151661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073315, 24.982672, 30.114201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192432, 25.097401, 30.478409>,  <27.263903, 25.166239, 30.696934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192432, 25.097401, 30.478409>,  <27.073315, 24.982672, 30.114201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192432, 25.097401, 30.478409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367051, 0.914877, -0.168147,
		-0.881245, -0.284135, 0.377723,
		0.297794, 0.286823, 0.910523,
		27.281771, 25.183447, 30.751566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475082, 25.415888, 30.364223>,  <27.073315, 24.982672, 30.114201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475082, 25.415888, 30.364223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808899, 25.486000, 30.573151>,  <27.009190, 25.528067, 30.698507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808899, 25.486000, 30.573151>,  <26.475082, 25.415888, 30.364223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808899, 25.486000, 30.573151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124825, 0.983543, -0.130618,
		-0.536617, 0.043808, 0.842688,
		0.834542, 0.175281, 0.522317,
		27.059261, 25.538584, 30.729845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342478, 25.959372, 30.802139>,  <26.475082, 25.415888, 30.364223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342478, 25.959372, 30.802139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742367, 25.962215, 30.793137>,  <26.982300, 25.963921, 30.787735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742367, 25.962215, 30.793137>,  <26.342478, 25.959372, 30.802139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742367, 25.962215, 30.793137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013300, 0.957433, -0.288350,
		0.019499, 0.288569, 0.957261,
		0.999722, 0.007109, -0.022507,
		27.042284, 25.964348, 30.786385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471321, 26.545818, 31.120565>,  <26.342478, 25.959372, 30.802139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471321, 26.545818, 31.120565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809910, 26.457603, 30.926720>,  <27.013063, 26.404675, 30.810413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809910, 26.457603, 30.926720>,  <26.471321, 26.545818, 31.120565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809910, 26.457603, 30.926720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165715, 0.974100, -0.153841,
		0.505989, 0.049914, 0.861095,
		0.846471, -0.220538, -0.484613,
		27.063850, 26.391441, 30.781336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907839, 26.949774, 31.438795>,  <26.471321, 26.545818, 31.120565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907839, 26.949774, 31.438795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040188, 26.874115, 31.068985>,  <27.119596, 26.828720, 30.847099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040188, 26.874115, 31.068985>,  <26.907839, 26.949774, 31.438795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040188, 26.874115, 31.068985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083604, 0.981730, -0.170931,
		0.939965, -0.020738, 0.340639,
		0.330871, -0.189148, -0.924525,
		27.139448, 26.817371, 30.791628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581030, 27.476419, 31.325575>,  <26.907839, 26.949774, 31.438795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581030, 27.476419, 31.325575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459328, 27.341686, 30.969154>,  <27.386307, 27.260847, 30.755302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459328, 27.341686, 30.969154>,  <27.581030, 27.476419, 31.325575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459328, 27.341686, 30.969154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050625, 0.928359, -0.368221,
		0.951244, -0.157143, -0.265406,
		-0.304255, -0.336832, -0.891051,
		27.368052, 27.240637, 30.701839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019936, 27.814417, 30.848713>,  <27.581030, 27.476419, 31.325575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019936, 27.814417, 30.848713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711929, 27.718826, 30.612080>,  <27.527126, 27.661472, 30.470100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711929, 27.718826, 30.612080>,  <28.019936, 27.814417, 30.848713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711929, 27.718826, 30.612080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087213, 0.879079, -0.468631,
		0.632037, -0.412446, -0.656062,
		-0.770015, -0.238975, -0.591581,
		27.480925, 27.647135, 30.434605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208216, 28.069281, 30.091520>,  <28.019936, 27.814417, 30.848713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208216, 28.069281, 30.091520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815725, 27.992317, 30.096806>,  <27.580231, 27.946140, 30.099976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815725, 27.992317, 30.096806>,  <28.208216, 28.069281, 30.091520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815725, 27.992317, 30.096806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167599, 0.816806, -0.552031,
		0.095424, -0.543882, -0.833719,
		-0.981227, -0.192407, 0.013212,
		27.521357, 27.934595, 30.100769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112900, 28.211409, 29.443224>,  <28.208216, 28.069281, 30.091520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112900, 28.211409, 29.443224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769281, 28.245422, 29.645138>,  <27.563110, 28.265831, 29.766287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769281, 28.245422, 29.645138>,  <28.112900, 28.211409, 29.443224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769281, 28.245422, 29.645138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190168, 0.862522, -0.468927,
		-0.475263, -0.498824, -0.724775,
		-0.859047, 0.085035, 0.504785,
		27.511568, 28.270933, 29.796574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585482, 28.415499, 28.910492>,  <28.112900, 28.211409, 29.443224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585482, 28.415499, 28.910492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446329, 28.509151, 29.273624>,  <27.362837, 28.565344, 29.491505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446329, 28.509151, 29.273624>,  <27.585482, 28.415499, 28.910492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446329, 28.509151, 29.273624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272561, 0.901236, -0.336876,
		-0.897045, -0.364632, -0.249707,
		-0.347881, 0.234132, 0.907833,
		27.341965, 28.579391, 29.545975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257654, 28.896486, 28.783461>,  <27.585482, 28.415499, 28.910492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257654, 28.896486, 28.783461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198923, 28.964432, 29.173248>,  <27.163685, 29.005199, 29.407120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198923, 28.964432, 29.173248>,  <27.257654, 28.896486, 28.783461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198923, 28.964432, 29.173248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442942, 0.869563, -0.218319,
		-0.884445, -0.463688, -0.052438,
		-0.146830, 0.169865, 0.974467,
		27.154875, 29.015390, 29.465588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610699, 29.083410, 28.921320>,  <27.257654, 28.896486, 28.783461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610699, 29.083410, 28.921320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796268, 29.233833, 29.242157>,  <26.907610, 29.324087, 29.434660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796268, 29.233833, 29.242157>,  <26.610699, 29.083410, 28.921320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796268, 29.233833, 29.242157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484289, 0.865813, -0.125822,
		-0.741781, -0.330073, 0.583792,
		0.463924, 0.376056, 0.802094,
		26.935446, 29.346651, 29.482786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099344, 29.267464, 29.376104>,  <26.610699, 29.083410, 28.921320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099344, 29.267464, 29.376104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416880, 29.488781, 29.477047>,  <26.607401, 29.621571, 29.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416880, 29.488781, 29.477047>,  <26.099344, 29.267464, 29.376104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416880, 29.488781, 29.477047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483863, 0.826043, -0.289014,
		-0.368368, 0.107324, 0.923465,
		0.793840, 0.553293, 0.252357,
		26.655031, 29.654770, 29.552753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793083, 29.855844, 29.801428>,  <26.099344, 29.267464, 29.376104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793083, 29.855844, 29.801428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140833, 29.985428, 29.652168>,  <26.349483, 30.063177, 29.562613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140833, 29.985428, 29.652168>,  <25.793083, 29.855844, 29.801428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140833, 29.985428, 29.652168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457431, 0.813250, -0.359697,
		0.186936, 0.483400, 0.855207,
		0.869374, 0.323958, -0.373148,
		26.401646, 30.082615, 29.540224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752813, 30.633751, 29.992201>,  <25.793083, 29.855844, 29.801428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752813, 30.633751, 29.992201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003918, 30.573589, 29.686707>,  <26.154581, 30.537493, 29.503410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003918, 30.573589, 29.686707>,  <25.752813, 30.633751, 29.992201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003918, 30.573589, 29.686707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325202, 0.840752, -0.432873,
		0.707218, 0.520110, 0.478882,
		0.627763, -0.150403, -0.763736,
		26.192247, 30.528469, 29.457586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004129, 31.423809, 29.781780>,  <25.752813, 30.633751, 29.992201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004129, 31.423809, 29.781780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079346, 31.143177, 29.506847>,  <26.124475, 30.974798, 29.341888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079346, 31.143177, 29.506847>,  <26.004129, 31.423809, 29.781780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079346, 31.143177, 29.506847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451212, 0.559885, -0.694936,
		0.872381, 0.440810, -0.211280,
		0.188042, -0.701581, -0.687332,
		26.135757, 30.932703, 29.300648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298481, 31.775320, 29.104540>,  <26.004129, 31.423809, 29.781780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298481, 31.775320, 29.104540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157110, 31.415901, 29.000462>,  <26.072287, 31.200251, 28.938015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157110, 31.415901, 29.000462>,  <26.298481, 31.775320, 29.104540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157110, 31.415901, 29.000462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449533, 0.407062, -0.795123,
		0.820371, -0.164053, -0.547794,
		-0.353428, -0.898547, -0.260195,
		26.051083, 31.146338, 28.922403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238396, 31.778814, 28.326914>,  <26.298481, 31.775320, 29.104540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238396, 31.778814, 28.326914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996426, 31.477566, 28.430351>,  <25.851244, 31.296816, 28.492414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996426, 31.477566, 28.430351>,  <26.238396, 31.778814, 28.326914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996426, 31.477566, 28.430351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658432, 0.290463, -0.694333,
		0.447806, -0.590286, -0.671589,
		-0.604927, -0.753123, 0.258593,
		25.814947, 31.251629, 28.507929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206762, 31.400826, 27.749598>,  <26.238396, 31.778814, 28.326914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206762, 31.400826, 27.749598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876057, 31.317589, 27.958656>,  <25.677633, 31.267647, 28.084091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876057, 31.317589, 27.958656>,  <26.206762, 31.400826, 27.749598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876057, 31.317589, 27.958656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517323, -0.083748, -0.851683,
		0.220998, -0.974518, -0.038410,
		-0.826763, -0.208090, 0.522648,
		25.628027, 31.255161, 28.115450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880972, 30.736444, 27.448107>,  <26.206762, 31.400826, 27.749598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880972, 30.736444, 27.448107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584318, 30.933990, 27.629688>,  <25.406326, 31.052519, 27.738638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584318, 30.933990, 27.629688>,  <25.880972, 30.736444, 27.448107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584318, 30.933990, 27.629688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484609, 0.073467, -0.871640,
		-0.463825, -0.866429, 0.184846,
		-0.741634, 0.493866, 0.453956,
		25.361828, 31.082150, 27.765875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207346, 30.520180, 27.065918>,  <25.880972, 30.736444, 27.448107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207346, 30.520180, 27.065918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090862, 30.845997, 27.266602>,  <25.020971, 31.041487, 27.387012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090862, 30.845997, 27.266602>,  <25.207346, 30.520180, 27.065918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090862, 30.845997, 27.266602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565139, 0.276675, -0.777219,
		-0.771890, -0.509871, 0.379760,
		-0.291211, 0.814544, 0.501711,
		25.003498, 31.090361, 27.417114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.503702, 30.615427, 26.949173>,  <25.207346, 30.520180, 27.065918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.503702, 30.615427, 26.949173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647108, 30.974361, 27.052135>,  <24.733150, 31.189722, 27.113913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647108, 30.974361, 27.052135>,  <24.503702, 30.615427, 26.949173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647108, 30.974361, 27.052135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485172, 0.414675, -0.769839,
		-0.797544, 0.151111, 0.584029,
		0.358514, 0.897335, 0.257406,
		24.754662, 31.243563, 27.129358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040001, 30.966497, 26.795202>,  <24.503702, 30.615427, 26.949173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040001, 30.966497, 26.795202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331751, 31.240105, 26.799789>,  <24.506802, 31.404268, 26.802542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331751, 31.240105, 26.799789>,  <24.040001, 30.966497, 26.795202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331751, 31.240105, 26.799789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393769, 0.433469, -0.810587,
		-0.559426, 0.586707, 0.585507,
		0.729376, 0.684017, 0.011467,
		24.550564, 31.445311, 26.803230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.657570, 31.520514, 26.507000>,  <24.040001, 30.966497, 26.795202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.657570, 31.520514, 26.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.035173, 31.652481, 26.507347>,  <24.261736, 31.731663, 26.507555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.035173, 31.652481, 26.507347>,  <23.657570, 31.520514, 26.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.035173, 31.652481, 26.507347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174900, 0.502674, -0.846598,
		-0.279746, 0.799044, 0.532232,
		0.944009, 0.329920, 0.000868,
		24.318377, 31.751457, 26.507608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593573, 32.185696, 26.506016>,  <23.657570, 31.520514, 26.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593573, 32.185696, 26.506016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953033, 32.127052, 26.340641>,  <24.168711, 32.091866, 26.241415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953033, 32.127052, 26.340641>,  <23.593573, 32.185696, 26.506016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953033, 32.127052, 26.340641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187618, 0.723486, -0.664355,
		0.396515, 0.674593, 0.622656,
		0.898652, -0.146606, -0.413439,
		24.222630, 32.083069, 26.216610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962545, 32.784348, 26.269053>,  <23.593573, 32.185696, 26.506016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962545, 32.784348, 26.269053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.107828, 32.506310, 26.020882>,  <24.194998, 32.339489, 25.871979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.107828, 32.506310, 26.020882>,  <23.962545, 32.784348, 26.269053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.107828, 32.506310, 26.020882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009510, 0.663101, -0.748469,
		0.931660, 0.277749, 0.234232,
		0.363206, -0.695091, -0.620427,
		24.216789, 32.297783, 25.834753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682491, 32.984756, 25.907290>,  <23.962545, 32.784348, 26.269053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682491, 32.984756, 25.907290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433722, 32.749573, 25.700401>,  <24.284460, 32.608463, 25.576269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433722, 32.749573, 25.700401>,  <24.682491, 32.984756, 25.907290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433722, 32.749573, 25.700401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097046, 0.713274, -0.694134,
		0.777038, -0.381507, -0.500664,
		-0.621928, -0.587956, -0.517217,
		24.247143, 32.573185, 25.545237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895046, 32.961918, 25.187771>,  <24.682491, 32.984756, 25.907290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895046, 32.961918, 25.187771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503469, 32.928818, 25.262417>,  <24.268524, 32.908958, 25.307205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503469, 32.928818, 25.262417>,  <24.895046, 32.961918, 25.187771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503469, 32.928818, 25.262417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176533, 0.802226, -0.570324,
		-0.102513, -0.591258, -0.799941,
		-0.978942, -0.082750, 0.186615,
		24.209787, 32.903992, 25.318401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578131, 33.032742, 24.545925>,  <24.895046, 32.961918, 25.187771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578131, 33.032742, 24.545925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344398, 33.164726, 24.842487>,  <24.204159, 33.243916, 25.020426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344398, 33.164726, 24.842487>,  <24.578131, 33.032742, 24.545925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344398, 33.164726, 24.842487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139995, 0.858925, -0.492595,
		-0.799349, -0.391632, -0.455703,
		-0.584331, 0.329960, 0.741407,
		24.169100, 33.263714, 25.064909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100561, 33.448357, 24.204004>,  <24.578131, 33.032742, 24.545925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100561, 33.448357, 24.204004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085745, 33.564117, 24.586601>,  <24.076855, 33.633572, 24.816160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085745, 33.564117, 24.586601>,  <24.100561, 33.448357, 24.204004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.085745, 33.564117, 24.586601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226360, 0.929840, -0.290101,
		-0.973339, -0.227257, 0.031068,
		-0.037039, 0.289399, 0.956492,
		24.074633, 33.650936, 24.873549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606049, 33.875595, 24.206024>,  <24.100561, 33.448357, 24.204004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606049, 33.875595, 24.206024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.767670, 33.958584, 24.562382>,  <23.864641, 34.008377, 24.776197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.767670, 33.958584, 24.562382>,  <23.606049, 33.875595, 24.206024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.767670, 33.958584, 24.562382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214600, 0.968257, -0.128163,
		-0.889207, -0.139402, 0.435750,
		0.404052, 0.207475, 0.890896,
		23.888885, 34.020824, 24.829651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063007, 34.255722, 24.570843>,  <23.606049, 33.875595, 24.206024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.063007, 34.255722, 24.570843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.444630, 34.345932, 24.649750>,  <23.673603, 34.400059, 24.697094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.444630, 34.345932, 24.649750>,  <23.063007, 34.255722, 24.570843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.444630, 34.345932, 24.649750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198941, 0.969107, -0.145790,
		-0.224052, 0.099847, 0.969449,
		0.954056, 0.225527, 0.197267,
		23.730846, 34.413589, 24.708929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592762, 34.691673, 24.383451>,  <23.063007, 34.255722, 24.570843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592762, 34.691673, 24.383451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.502117, 35.081253, 24.386868>,  <22.447731, 35.315002, 24.388916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.502117, 35.081253, 24.386868>,  <22.592762, 34.691673, 24.383451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502117, 35.081253, 24.386868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491919, -0.106881, -0.864056,
		-0.840632, -0.200005, 0.503324,
		-0.226611, 0.973948, 0.008539,
		22.434134, 35.373436, 24.389429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811247, 34.883606, 24.405277>,  <22.592762, 34.691673, 24.383451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811247, 34.883606, 24.405277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008116, 35.171215, 24.209003>,  <22.126238, 35.343781, 24.091240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.008116, 35.171215, 24.209003>,  <21.811247, 34.883606, 24.405277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008116, 35.171215, 24.209003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549899, -0.180162, -0.815569,
		-0.674816, 0.671227, 0.306720,
		0.492173, 0.719024, -0.490684,
		22.155767, 35.386921, 24.061798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293726, 35.120365, 23.986591>,  <21.811247, 34.883606, 24.405277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293726, 35.120365, 23.986591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.627653, 35.254990, 23.812325>,  <21.828009, 35.335766, 23.707764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.627653, 35.254990, 23.812325>,  <21.293726, 35.120365, 23.986591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.627653, 35.254990, 23.812325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451697, -0.033661, -0.891537,
		-0.314722, 0.941060, 0.123923,
		0.834818, 0.336561, -0.435668,
		21.878098, 35.355957, 23.681623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041275, 35.671185, 23.444963>,  <21.293726, 35.120365, 23.986591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041275, 35.671185, 23.444963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421415, 35.580849, 23.359333>,  <21.649500, 35.526646, 23.307955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421415, 35.580849, 23.359333>,  <21.041275, 35.671185, 23.444963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.421415, 35.580849, 23.359333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247964, -0.133974, -0.959461,
		0.188003, 0.964908, -0.183323,
		0.950352, -0.225839, -0.214075,
		21.706520, 35.513096, 23.295111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.263979, 36.040798, 22.881586>,  <21.041275, 35.671185, 23.444963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.263979, 36.040798, 22.881586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526999, 35.739433, 22.880535>,  <21.684811, 35.558617, 22.879906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526999, 35.739433, 22.880535>,  <21.263979, 36.040798, 22.881586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526999, 35.739433, 22.880535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058895, -0.047927, -0.997113,
		0.751108, 0.655804, -0.075887,
		0.657547, -0.753408, -0.002625,
		21.724262, 35.513412, 22.879747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.707043, 36.196598, 22.474604>,  <21.263979, 36.040798, 22.881586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.707043, 36.196598, 22.474604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714449, 35.797024, 22.491478>,  <21.718893, 35.557278, 22.501602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714449, 35.797024, 22.491478>,  <21.707043, 36.196598, 22.474604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714449, 35.797024, 22.491478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101265, -0.043851, -0.993893,
		0.994687, 0.014131, -0.101969,
		0.018516, -0.998938, 0.042187,
		21.720003, 35.497341, 22.504135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114859, 35.903950, 21.863117>,  <21.707043, 36.196598, 22.474604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114859, 35.903950, 21.863117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880013, 35.601143, 21.977814>,  <21.739105, 35.419460, 22.046633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880013, 35.601143, 21.977814>,  <22.114859, 35.903950, 21.863117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880013, 35.601143, 21.977814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143086, -0.251595, -0.957197,
		0.796755, -0.603016, 0.039397,
		-0.587117, -0.757015, 0.286743,
		21.703876, 35.374039, 22.063837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.330690, 35.425194, 21.401009>,  <22.114859, 35.903950, 21.863117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.330690, 35.425194, 21.401009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.989143, 35.278584, 21.548828>,  <21.784216, 35.190617, 21.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.989143, 35.278584, 21.548828>,  <22.330690, 35.425194, 21.401009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.989143, 35.278584, 21.548828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281398, -0.272206, -0.920173,
		0.437864, -0.889697, 0.129288,
		-0.853868, -0.366529, 0.369548,
		21.732983, 35.168625, 21.659693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.297668, 34.834351, 21.092571>,  <22.330690, 35.425194, 21.401009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.297668, 34.834351, 21.092571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.922228, 34.903999, 21.211708>,  <21.696964, 34.945789, 21.283190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.922228, 34.903999, 21.211708>,  <22.297668, 34.834351, 21.092571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.922228, 34.903999, 21.211708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312783, -0.065165, -0.947587,
		-0.145590, -0.982565, 0.115627,
		-0.938600, 0.174125, 0.297842,
		21.640648, 34.956238, 21.301062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.896255, 34.286289, 20.800303>,  <22.297668, 34.834351, 21.092571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.896255, 34.286289, 20.800303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642803, 34.581974, 20.891579>,  <21.490732, 34.759384, 20.946344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642803, 34.581974, 20.891579>,  <21.896255, 34.286289, 20.800303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642803, 34.581974, 20.891579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360453, -0.021101, -0.932539,
		-0.684532, -0.673138, 0.279823,
		-0.633632, 0.739216, 0.228190,
		21.452713, 34.803738, 20.960035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.192024, 34.007824, 20.613577>,  <21.896255, 34.286289, 20.800303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.192024, 34.007824, 20.613577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.163557, 34.406807, 20.611660>,  <21.146477, 34.646194, 20.610510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.163557, 34.406807, 20.611660>,  <21.192024, 34.007824, 20.613577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.163557, 34.406807, 20.611660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496488, -0.039590, -0.867141,
		-0.865121, -0.059333, 0.498041,
		-0.071167, 0.997453, -0.004792,
		21.142206, 34.706043, 20.610222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473200, 34.109928, 20.396458>,  <21.192024, 34.007824, 20.613577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473200, 34.109928, 20.396458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.653311, 34.466522, 20.376461>,  <20.761377, 34.680481, 20.364464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.653311, 34.466522, 20.376461>,  <20.473200, 34.109928, 20.396458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653311, 34.466522, 20.376461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330683, 0.114493, -0.936771,
		-0.829397, 0.438338, 0.346353,
		0.450277, 0.891488, -0.049991,
		20.788393, 34.733971, 20.361464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994354, 34.638493, 20.142935>,  <20.473200, 34.109928, 20.396458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994354, 34.638493, 20.142935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.361217, 34.769878, 20.052662>,  <20.581335, 34.848709, 19.998499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.361217, 34.769878, 20.052662>,  <19.994354, 34.638493, 20.142935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.361217, 34.769878, 20.052662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285670, 0.147010, -0.946985,
		-0.277872, 0.933006, 0.228663,
		0.917159, 0.328463, -0.225682,
		20.636366, 34.868416, 19.984957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.868843, 35.253593, 19.769711>,  <19.994354, 34.638493, 20.142935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.868843, 35.253593, 19.769711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.247778, 35.147324, 19.698193>,  <20.475140, 35.083561, 19.655281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.247778, 35.147324, 19.698193>,  <19.868843, 35.253593, 19.769711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247778, 35.147324, 19.698193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137535, 0.166674, -0.976373,
		0.289194, 0.949547, 0.121358,
		0.947339, -0.265670, -0.178797,
		20.531981, 35.067623, 19.644554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129650, 35.672810, 19.240435>,  <19.868843, 35.253593, 19.769711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129650, 35.672810, 19.240435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414396, 35.393013, 19.215279>,  <20.585243, 35.225136, 19.200186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414396, 35.393013, 19.215279>,  <20.129650, 35.672810, 19.240435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414396, 35.393013, 19.215279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005393, 0.094986, -0.995464,
		0.702296, 0.708296, 0.071389,
		0.711864, -0.699496, -0.062889,
		20.627956, 35.183163, 19.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564682, 35.951057, 18.727591>,  <20.129650, 35.672810, 19.240435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564682, 35.951057, 18.727591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661232, 35.563953, 18.756397>,  <20.719162, 35.331692, 18.773682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661232, 35.563953, 18.756397>,  <20.564682, 35.951057, 18.727591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661232, 35.563953, 18.756397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071059, -0.091637, -0.993254,
		0.967827, 0.234629, -0.090887,
		0.241375, -0.967756, 0.072016,
		20.733644, 35.273628, 18.778002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961344, 35.836781, 18.141722>,  <20.564682, 35.951057, 18.727591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961344, 35.836781, 18.141722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.829613, 35.472698, 18.242172>,  <20.750574, 35.254250, 18.302443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.829613, 35.472698, 18.242172>,  <20.961344, 35.836781, 18.141722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829613, 35.472698, 18.242172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323875, -0.140933, -0.935544,
		0.886932, -0.389435, -0.248380,
		-0.329329, -0.910208, 0.251126,
		20.730814, 35.199635, 18.317511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190260, 35.443985, 17.537260>,  <20.961344, 35.836781, 18.141722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190260, 35.443985, 17.537260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.896492, 35.255501, 17.732643>,  <20.720232, 35.142410, 17.849873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.896492, 35.255501, 17.732643>,  <21.190260, 35.443985, 17.537260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896492, 35.255501, 17.732643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407147, -0.269931, -0.872564,
		0.543010, -0.839702, 0.006391,
		-0.734419, -0.471209, 0.488458,
		20.676167, 35.114140, 17.879181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236296, 34.766109, 17.195877>,  <21.190260, 35.443985, 17.537260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236296, 34.766109, 17.195877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877996, 34.823780, 17.364090>,  <20.663017, 34.858383, 17.465017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877996, 34.823780, 17.364090>,  <21.236296, 34.766109, 17.195877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877996, 34.823780, 17.364090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443921, -0.340741, -0.828752,
		0.023808, -0.929037, 0.369221,
		-0.895749, 0.144174, 0.420532,
		20.609272, 34.867031, 17.490250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841078, 34.190533, 17.057131>,  <21.236296, 34.766109, 17.195877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841078, 34.190533, 17.057131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.578285, 34.481934, 17.134754>,  <20.420609, 34.656773, 17.181328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.578285, 34.481934, 17.134754>,  <20.841078, 34.190533, 17.057131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.578285, 34.481934, 17.134754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545363, -0.281515, -0.789511,
		-0.520531, -0.624527, 0.582249,
		-0.656983, 0.728502, 0.194056,
		20.381189, 34.700485, 17.192970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183521, 33.872307, 16.960222>,  <20.841078, 34.190533, 17.057131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183521, 33.872307, 16.960222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.117441, 34.266411, 16.942440>,  <20.077793, 34.502872, 16.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.117441, 34.266411, 16.942440>,  <20.183521, 33.872307, 16.960222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117441, 34.266411, 16.942440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610951, -0.137614, -0.779616,
		-0.774241, -0.101632, 0.624678,
		-0.165198, 0.985258, -0.044454,
		20.067883, 34.561989, 16.929104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443895, 34.058289, 16.874037>,  <20.183521, 33.872307, 16.960222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443895, 34.058289, 16.874037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.623884, 34.380711, 16.720257>,  <19.731876, 34.574165, 16.627989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.623884, 34.380711, 16.720257>,  <19.443895, 34.058289, 16.874037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623884, 34.380711, 16.720257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781158, 0.146625, -0.606872,
		-0.432803, 0.573390, 0.695634,
		0.449971, 0.806056, -0.384448,
		19.758875, 34.622528, 16.604923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927481, 34.685551, 16.922869>,  <19.443895, 34.058289, 16.874037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927481, 34.685551, 16.922869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.202450, 34.691753, 16.632431>,  <19.367432, 34.695473, 16.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.202450, 34.691753, 16.632431>,  <18.927481, 34.685551, 16.922869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202450, 34.691753, 16.632431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713911, 0.197993, -0.671662,
		0.133348, 0.980081, 0.147173,
		0.687423, 0.015504, -0.726092,
		19.408676, 34.696404, 16.414604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958580, 35.301170, 16.562983>,  <18.927481, 34.685551, 16.922869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958580, 35.301170, 16.562983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057795, 34.997646, 16.322090>,  <19.117323, 34.815533, 16.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057795, 34.997646, 16.322090>,  <18.958580, 35.301170, 16.562983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057795, 34.997646, 16.322090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761914, 0.231132, -0.605033,
		0.598301, 0.608918, -0.520820,
		0.248038, -0.758813, -0.602230,
		19.132206, 34.770004, 16.141420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.932983, 35.501503, 15.938150>,  <18.958580, 35.301170, 16.562983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.932983, 35.501503, 15.938150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.865578, 35.107338, 15.947646>,  <18.825134, 34.870838, 15.953343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.865578, 35.107338, 15.947646>,  <18.932983, 35.501503, 15.938150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865578, 35.107338, 15.947646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773458, 0.117263, -0.622906,
		0.611036, -0.123331, -0.781936,
		-0.168516, -0.985413, 0.023740,
		18.815023, 34.811714, 15.954768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870680, 35.269863, 15.245449>,  <18.932983, 35.501503, 15.938150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870680, 35.269863, 15.245449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.653074, 35.055637, 15.503819>,  <18.522511, 34.927101, 15.658841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.653074, 35.055637, 15.503819>,  <18.870680, 35.269863, 15.245449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653074, 35.055637, 15.503819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808852, 0.129970, -0.573469,
		0.223179, -0.834433, -0.503898,
		-0.544013, -0.535565, 0.645926,
		18.489870, 34.894966, 15.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539268, 35.899323, 15.254345>,  <18.870680, 35.269863, 15.245449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539268, 35.899323, 15.254345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.440723, 35.998474, 15.629123>,  <18.381598, 36.057964, 15.853990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.440723, 35.998474, 15.629123>,  <18.539268, 35.899323, 15.254345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440723, 35.998474, 15.629123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198705, 0.959123, -0.201494,
		-0.948590, 0.136535, -0.285545,
		-0.246361, 0.247874, 0.936944,
		18.366816, 36.072838, 15.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276474, 36.499115, 15.214508>,  <18.539268, 35.899323, 15.254345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276474, 36.499115, 15.214508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.416075, 36.514858, 15.589026>,  <18.499834, 36.524303, 15.813738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.416075, 36.514858, 15.589026>,  <18.276474, 36.499115, 15.214508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416075, 36.514858, 15.589026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245575, 0.960361, -0.131905,
		-0.904374, 0.275966, 0.325502,
		0.349001, 0.039357, 0.936296,
		18.520775, 36.526665, 15.869915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872612, 37.098007, 15.640937>,  <18.276474, 36.499115, 15.214508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872612, 37.098007, 15.640937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240734, 37.064117, 15.793702>,  <18.461607, 37.043785, 15.885362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240734, 37.064117, 15.793702>,  <17.872612, 37.098007, 15.640937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240734, 37.064117, 15.793702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160022, 0.972383, -0.169896,
		-0.356972, 0.217471, 0.908448,
		0.920306, -0.084724, 0.381914,
		18.516827, 37.038700, 15.908277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.978039, 37.545078, 16.291267>,  <17.872612, 37.098007, 15.640937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.978039, 37.545078, 16.291267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.273748, 37.472485, 16.031872>,  <18.451174, 37.428928, 15.876234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.273748, 37.472485, 16.031872>,  <17.978039, 37.545078, 16.291267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273748, 37.472485, 16.031872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050878, 0.975299, -0.214949,
		0.671481, 0.125913, 0.730246,
		0.739273, -0.181488, -0.648489,
		18.495531, 37.418037, 15.837325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731415, 38.188282, 16.041077>,  <17.978039, 37.545078, 16.291267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731415, 38.188282, 16.041077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830564, 38.163807, 15.654334>,  <17.890055, 38.149120, 15.422288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830564, 38.163807, 15.654334>,  <17.731415, 38.188282, 16.041077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.830564, 38.163807, 15.654334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579150, 0.809400, 0.097252,
		0.776623, -0.584062, 0.236069,
		0.247875, -0.061191, -0.966858,
		17.904926, 38.145451, 15.364277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508432, 38.470028, 16.740026>,  <17.731415, 38.188282, 16.041077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508432, 38.470028, 16.740026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845238, 38.533829, 16.533890>,  <18.047321, 38.572109, 16.410208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845238, 38.533829, 16.533890>,  <17.508432, 38.470028, 16.740026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845238, 38.533829, 16.533890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496396, 0.144922, 0.855914,
		0.211208, -0.976502, 0.042847,
		0.842011, 0.159507, -0.515340,
		18.097841, 38.581680, 16.379288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.996952, 38.097733, 16.888330>,  <17.508432, 38.470028, 16.740026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.996952, 38.097733, 16.888330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.231447, 38.401485, 16.775433>,  <18.372145, 38.583736, 16.707693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.231447, 38.401485, 16.775433>,  <17.996952, 38.097733, 16.888330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231447, 38.401485, 16.775433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506235, -0.071379, 0.859437,
		0.632494, -0.646718, -0.426270,
		0.586240, 0.759382, -0.282245,
		18.407320, 38.629299, 16.690760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555923, 37.907055, 17.127522>,  <17.996952, 38.097733, 16.888330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555923, 37.907055, 17.127522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625330, 38.298244, 17.081123>,  <18.666975, 38.532959, 17.053284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625330, 38.298244, 17.081123>,  <18.555923, 37.907055, 17.127522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625330, 38.298244, 17.081123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526588, 0.007397, 0.850089,
		0.832224, -0.208587, -0.513706,
		0.173518, 0.977976, -0.115995,
		18.677385, 38.591637, 17.046326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274426, 37.972157, 17.293983>,  <18.555923, 37.907055, 17.127522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274426, 37.972157, 17.293983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.094406, 38.324760, 17.351109>,  <18.986395, 38.536324, 17.385384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.094406, 38.324760, 17.351109>,  <19.274426, 37.972157, 17.293983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094406, 38.324760, 17.351109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447908, 0.084474, 0.890080,
		0.772552, 0.464544, -0.432853,
		-0.450046, 0.881512, 0.142813,
		18.959393, 38.589214, 17.393951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694313, 38.214874, 17.665682>,  <19.274426, 37.972157, 17.293983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694313, 38.214874, 17.665682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374128, 38.441994, 17.742481>,  <19.182018, 38.578266, 17.788561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.374128, 38.441994, 17.742481>,  <19.694313, 38.214874, 17.665682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374128, 38.441994, 17.742481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227877, -0.007985, 0.973657,
		0.554377, 0.823127, -0.122997,
		-0.800461, 0.567801, 0.191998,
		19.133989, 38.612335, 17.800081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990574, 38.659389, 18.053192>,  <19.694313, 38.214874, 17.665682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990574, 38.659389, 18.053192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.595987, 38.675819, 18.116692>,  <19.359236, 38.685677, 18.154791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.595987, 38.675819, 18.116692>,  <19.990574, 38.659389, 18.053192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.595987, 38.675819, 18.116692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160031, 0.030114, 0.986653,
		0.035744, 0.998702, -0.036280,
		-0.986465, 0.041073, 0.158747,
		19.300049, 38.688141, 18.164316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.870659, 39.290260, 18.545799>,  <19.990574, 38.659389, 18.053192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.870659, 39.290260, 18.545799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559879, 39.040810, 18.580303>,  <19.373411, 38.891140, 18.601006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559879, 39.040810, 18.580303>,  <19.870659, 39.290260, 18.545799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559879, 39.040810, 18.580303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088427, 0.027555, 0.995701,
		-0.623323, 0.781236, 0.033737,
		-0.776948, -0.623627, 0.086258,
		19.326796, 38.853722, 18.606180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574060, 39.540047, 19.139450>,  <19.870659, 39.290260, 18.545799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574060, 39.540047, 19.139450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389425, 39.185368, 19.128811>,  <19.278645, 38.972561, 19.122427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389425, 39.185368, 19.128811>,  <19.574060, 39.540047, 19.139450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389425, 39.185368, 19.128811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093803, -0.078599, 0.992483,
		-0.882122, 0.455621, 0.119455,
		-0.461586, -0.886697, -0.026596,
		19.250950, 38.919357, 19.120832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.297697, 39.537331, 19.711437>,  <19.574060, 39.540047, 19.139450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.297697, 39.537331, 19.711437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.295748, 39.157562, 19.585854>,  <19.294579, 38.929699, 19.510504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.295748, 39.157562, 19.585854>,  <19.297697, 39.537331, 19.711437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.295748, 39.157562, 19.585854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290653, -0.301754, 0.908001,
		-0.956816, -0.086830, 0.277423,
		-0.004872, -0.949424, -0.313960,
		19.294287, 38.872734, 19.491665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.867035, 39.252045, 20.065165>,  <19.297697, 39.537331, 19.711437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.867035, 39.252045, 20.065165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.096033, 38.940193, 19.963631>,  <19.233431, 38.753082, 19.902710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.096033, 38.940193, 19.963631>,  <18.867035, 39.252045, 20.065165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.096033, 38.940193, 19.963631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263002, -0.118615, 0.957476,
		-0.776583, -0.614909, 0.137137,
		0.572494, -0.779626, -0.253836,
		19.267782, 38.706306, 19.887480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790911, 38.813206, 20.578600>,  <18.867035, 39.252045, 20.065165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790911, 38.813206, 20.578600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119209, 38.688644, 20.387016>,  <19.316189, 38.613907, 20.272066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119209, 38.688644, 20.387016>,  <18.790911, 38.813206, 20.578600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119209, 38.688644, 20.387016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424033, -0.229769, 0.876015,
		-0.382841, -0.922082, -0.056539,
		0.820748, -0.311401, -0.478959,
		19.365435, 38.595222, 20.243328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839155, 38.146980, 20.844454>,  <18.790911, 38.813206, 20.578600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.839155, 38.146980, 20.844454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198887, 38.250057, 20.703144>,  <19.414726, 38.311905, 20.618359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198887, 38.250057, 20.703144>,  <18.839155, 38.146980, 20.844454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.198887, 38.250057, 20.703144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420032, -0.284473, 0.861770,
		0.121577, -0.923401, -0.364075,
		0.899329, 0.257694, -0.353273,
		19.468685, 38.327366, 20.597162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227324, 37.690544, 21.210768>,  <18.839155, 38.146980, 20.844454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.227324, 37.690544, 21.210768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492065, 37.958485, 21.076160>,  <19.650909, 38.119251, 20.995396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.492065, 37.958485, 21.076160>,  <19.227324, 37.690544, 21.210768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492065, 37.958485, 21.076160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649350, -0.287994, 0.703849,
		0.374561, -0.684364, -0.625580,
		0.661852, 0.669855, -0.336520,
		19.690620, 38.159443, 20.975204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879908, 37.419525, 20.979261>,  <19.227324, 37.690544, 21.210768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879908, 37.419525, 20.979261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945194, 37.793236, 21.106056>,  <19.984365, 38.017464, 21.182133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945194, 37.793236, 21.106056>,  <19.879908, 37.419525, 20.979261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945194, 37.793236, 21.106056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568517, -0.351654, 0.743726,
		0.806318, 0.058826, -0.588549,
		0.163215, 0.934280, 0.316989,
		19.994160, 38.073521, 21.201153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.519632, 37.458538, 21.147636>,  <19.879908, 37.419525, 20.979261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.519632, 37.458538, 21.147636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439955, 37.808464, 21.324284>,  <20.392149, 38.018417, 21.430271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439955, 37.808464, 21.324284>,  <20.519632, 37.458538, 21.147636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439955, 37.808464, 21.324284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622563, -0.235054, 0.746434,
		0.756793, 0.423621, -0.497804,
		-0.199194, 0.874811, 0.441618,
		20.380196, 38.070908, 21.456768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138695, 37.686462, 21.505705>,  <20.519632, 37.458538, 21.147636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138695, 37.686462, 21.505705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.842764, 37.893684, 21.677414>,  <20.665205, 38.018017, 21.780439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.842764, 37.893684, 21.677414>,  <21.138695, 37.686462, 21.505705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.842764, 37.893684, 21.677414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378342, -0.207255, 0.902166,
		0.556338, 0.829860, -0.042668,
		-0.739828, 0.518052, 0.429274,
		20.620815, 38.049099, 21.806196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455486, 38.154778, 21.821070>,  <21.138695, 37.686462, 21.505705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455486, 38.154778, 21.821070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103357, 38.115730, 22.006760>,  <20.892080, 38.092304, 22.118174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103357, 38.115730, 22.006760>,  <21.455486, 38.154778, 21.821070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103357, 38.115730, 22.006760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474331, -0.194874, 0.858507,
		0.006663, 0.975959, 0.217853,
		-0.880322, -0.097614, 0.464226,
		20.839260, 38.086445, 22.146027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524437, 38.565166, 22.465250>,  <21.455486, 38.154778, 21.821070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524437, 38.565166, 22.465250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219814, 38.306332, 22.479694>,  <21.037041, 38.151031, 22.488361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219814, 38.306332, 22.479694>,  <21.524437, 38.565166, 22.465250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219814, 38.306332, 22.479694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319826, -0.326769, 0.889345,
		-0.563687, 0.688836, 0.455810,
		-0.761557, -0.647092, 0.036112,
		20.991348, 38.112206, 22.490528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210827, 38.686295, 23.145145>,  <21.524437, 38.565166, 22.465250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210827, 38.686295, 23.145145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.112572, 38.314114, 23.036392>,  <21.053617, 38.090805, 22.971140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.112572, 38.314114, 23.036392>,  <21.210827, 38.686295, 23.145145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.112572, 38.314114, 23.036392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110686, -0.305566, 0.945716,
		-0.963021, 0.202212, 0.178048,
		-0.245640, -0.930451, -0.271885,
		21.038879, 38.034977, 22.954826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885675, 38.482468, 23.725037>,  <21.210827, 38.686295, 23.145145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885675, 38.482468, 23.725037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978643, 38.139957, 23.540527>,  <21.034424, 37.934452, 23.429823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978643, 38.139957, 23.540527>,  <20.885675, 38.482468, 23.725037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978643, 38.139957, 23.540527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057322, -0.461375, 0.885352,
		-0.970925, -0.232213, -0.058149,
		0.232419, -0.856277, -0.461272,
		21.048368, 37.883076, 23.402145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657473, 38.034214, 24.141687>,  <20.885675, 38.482468, 23.725037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657473, 38.034214, 24.141687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839722, 37.770760, 23.902153>,  <20.949072, 37.612686, 23.758432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839722, 37.770760, 23.902153>,  <20.657473, 38.034214, 24.141687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839722, 37.770760, 23.902153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024879, -0.681880, 0.731041,
		-0.889825, -0.318181, -0.327067,
		0.455624, -0.658635, -0.598838,
		20.976410, 37.573170, 23.722502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.228630, 37.368591, 24.064528>,  <20.657473, 38.034214, 24.141687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.228630, 37.368591, 24.064528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.613123, 37.289841, 23.987309>,  <20.843819, 37.242592, 23.940977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.613123, 37.289841, 23.987309>,  <20.228630, 37.368591, 24.064528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613123, 37.289841, 23.987309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028746, -0.767872, 0.639958,
		-0.274229, -0.609600, -0.743765,
		0.961234, -0.196875, -0.193049,
		20.901493, 37.230778, 23.929394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310101, 36.741585, 23.741598>,  <20.228630, 37.368591, 24.064528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310101, 36.741585, 23.741598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629095, 36.841797, 23.961143>,  <20.820492, 36.901924, 24.092871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629095, 36.841797, 23.961143>,  <20.310101, 36.741585, 23.741598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629095, 36.841797, 23.961143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100533, -0.841817, 0.530319,
		0.594904, -0.478100, -0.646150,
		0.797485, 0.250529, 0.548864,
		20.868341, 36.916954, 24.125803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.795710, 36.179214, 23.417444>,  <20.310101, 36.741585, 23.741598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.795710, 36.179214, 23.417444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.563705, 35.923588, 23.215382>,  <19.424503, 35.770210, 23.094145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.563705, 35.923588, 23.215382>,  <19.795710, 36.179214, 23.417444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563705, 35.923588, 23.215382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754551, 0.187780, 0.628801,
		-0.306988, 0.745876, -0.591124,
		-0.580009, -0.639068, -0.505156,
		19.389702, 35.731869, 23.063835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199644, 36.452965, 23.077604>,  <19.795710, 36.179214, 23.417444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199644, 36.452965, 23.077604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118370, 36.071693, 23.167194>,  <19.069607, 35.842930, 23.220947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118370, 36.071693, 23.167194>,  <19.199644, 36.452965, 23.077604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118370, 36.071693, 23.167194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725177, 0.300192, 0.619681,
		-0.657902, -0.036512, -0.752218,
		-0.203184, -0.953180, 0.223974,
		19.057415, 35.785740, 23.234386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454811, 36.361797, 22.944975>,  <19.199644, 36.452965, 23.077604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454811, 36.361797, 22.944975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572966, 36.101887, 23.225128>,  <18.643858, 35.945938, 23.393219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572966, 36.101887, 23.225128>,  <18.454811, 36.361797, 22.944975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572966, 36.101887, 23.225128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754420, 0.291147, 0.588289,
		-0.586172, -0.702154, -0.404205,
		0.295387, -0.649779, 0.700381,
		18.661581, 35.906952, 23.435242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.164595, 37.140484, 22.990753>,  <18.454811, 36.361797, 22.944975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.164595, 37.140484, 22.990753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.523649, 37.316132, 22.975647>,  <18.739082, 37.421520, 22.966583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.523649, 37.316132, 22.975647>,  <18.164595, 37.140484, 22.990753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.523649, 37.316132, 22.975647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363499, 0.786063, 0.499974,
		0.249234, -0.435066, 0.865217,
		0.897636, 0.439116, -0.037767,
		18.792940, 37.447865, 22.964317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.133606, 24.302296, 26.459358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.412251, 24.533184, 26.629795>,  <32.579437, 24.671717, 26.732058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.412251, 24.533184, 26.629795>,  <32.133606, 24.302296, 26.459358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412251, 24.533184, 26.629795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177131, 0.713880, -0.677495,
		-0.695243, 0.396474, 0.599538,
		0.696607, 0.577221, 0.426093,
		32.621231, 24.706350, 26.757624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896883, 24.983566, 26.525517>,  <32.133606, 24.302296, 26.459358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896883, 24.983566, 26.525517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.293518, 25.035343, 26.524933>,  <32.531498, 25.066408, 26.524584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.293518, 25.035343, 26.524933>,  <31.896883, 24.983566, 26.525517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293518, 25.035343, 26.524933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092467, 0.700379, -0.707756,
		-0.090591, 0.701936, 0.706455,
		0.991586, 0.129440, -0.001458,
		32.590996, 25.074175, 26.524496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984100, 25.644630, 26.617331>,  <31.896883, 24.983566, 26.525517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984100, 25.644630, 26.617331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.347134, 25.549633, 26.478832>,  <32.564953, 25.492634, 26.395733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.347134, 25.549633, 26.478832>,  <31.984100, 25.644630, 26.617331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347134, 25.549633, 26.478832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104471, 0.670984, -0.734075,
		0.406666, 0.702407, 0.584163,
		0.907584, -0.237495, -0.346248,
		32.619408, 25.478384, 26.374958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385906, 26.245483, 26.656052>,  <31.984100, 25.644630, 26.617331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385906, 26.245483, 26.656052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573704, 26.013699, 26.389580>,  <32.686382, 25.874628, 26.229696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573704, 26.013699, 26.389580>,  <32.385906, 26.245483, 26.656052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573704, 26.013699, 26.389580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011771, 0.758549, -0.651510,
		0.882855, 0.298041, 0.362958,
		0.469498, -0.579461, -0.666181,
		32.714554, 25.839861, 26.189726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948952, 26.540668, 26.521799>,  <32.385906, 26.245483, 26.656052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948952, 26.540668, 26.521799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869347, 26.315399, 26.200993>,  <32.821583, 26.180237, 26.008509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869347, 26.315399, 26.200993>,  <32.948952, 26.540668, 26.521799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869347, 26.315399, 26.200993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173056, 0.785328, -0.594400,
		0.964595, -0.257088, -0.058832,
		-0.199015, -0.563175, -0.802014,
		32.809643, 26.146446, 25.960388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264473, 26.904505, 26.021439>,  <32.948952, 26.540668, 26.521799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264473, 26.904505, 26.021439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.993626, 26.677708, 25.833809>,  <32.831116, 26.541630, 25.721231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.993626, 26.677708, 25.833809>,  <33.264473, 26.904505, 26.021439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993626, 26.677708, 25.833809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108969, 0.707670, -0.698090,
		0.727772, -0.421566, -0.540953,
		-0.677107, -0.566997, -0.469084,
		32.790489, 26.507610, 25.693087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486282, 27.079220, 25.330402>,  <33.264473, 26.904505, 26.021439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486282, 27.079220, 25.330402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132206, 26.899033, 25.283901>,  <32.919762, 26.790920, 25.256001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.132206, 26.899033, 25.283901>,  <33.486282, 27.079220, 25.330402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132206, 26.899033, 25.283901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264675, 0.693123, -0.670468,
		0.382602, -0.562723, -0.732774,
		-0.885191, -0.450470, -0.116252,
		32.866650, 26.763891, 25.249025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355076, 26.985077, 24.582502>,  <33.486282, 27.079220, 25.330402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355076, 26.985077, 24.582502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009560, 26.984203, 24.784042>,  <32.802250, 26.983679, 24.904966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.009560, 26.984203, 24.784042>,  <33.355076, 26.985077, 24.582502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009560, 26.984203, 24.784042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352410, 0.717313, -0.601057,
		-0.360104, -0.696748, -0.620377,
		-0.863790, -0.002185, 0.503848,
		32.750423, 26.983547, 24.935196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749691, 27.311354, 24.121052>,  <33.355076, 26.985077, 24.582502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749691, 27.311354, 24.121052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.574894, 27.313026, 24.480835>,  <32.470016, 27.314030, 24.696705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.574894, 27.313026, 24.480835>,  <32.749691, 27.311354, 24.121052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574894, 27.313026, 24.480835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629792, 0.712533, -0.309288,
		-0.642186, -0.701626, -0.308735,
		-0.436989, 0.004182, 0.899457,
		32.443798, 27.314281, 24.750671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965652, 27.304825, 23.983065>,  <32.749691, 27.311354, 24.121052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965652, 27.304825, 23.983065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.037788, 27.485786, 24.332420>,  <32.081070, 27.594364, 24.542034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.037788, 27.485786, 24.332420>,  <31.965652, 27.304825, 23.983065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037788, 27.485786, 24.332420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583239, 0.764186, -0.275413,
		-0.792030, -0.459727, 0.401672,
		0.180338, 0.452406, 0.873388,
		32.091888, 27.621508, 24.594437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420963, 27.505251, 24.250568>,  <31.965652, 27.304825, 23.983065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420963, 27.505251, 24.250568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.689192, 27.749905, 24.418491>,  <31.850130, 27.896696, 24.519245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.689192, 27.749905, 24.418491>,  <31.420963, 27.505251, 24.250568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689192, 27.749905, 24.418491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607312, 0.777598, -0.162831,
		-0.426032, -0.145763, 0.892888,
		0.670573, 0.611633, 0.419805,
		31.890364, 27.933395, 24.544434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121214, 27.743429, 24.815414>,  <31.420963, 27.505251, 24.250568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121214, 27.743429, 24.815414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.383411, 28.010571, 24.674389>,  <31.540730, 28.170855, 24.589773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.383411, 28.010571, 24.674389>,  <31.121214, 27.743429, 24.815414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383411, 28.010571, 24.674389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724208, 0.688257, -0.042708,
		0.214133, 0.283325, 0.934812,
		0.655492, 0.667854, -0.352565,
		31.580059, 28.210926, 24.568619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834929, 28.410921, 25.135015>,  <31.121214, 27.743429, 24.815414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834929, 28.410921, 25.135015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.109257, 28.518410, 24.864479>,  <31.273853, 28.582903, 24.702156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.109257, 28.518410, 24.864479>,  <30.834929, 28.410921, 25.135015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109257, 28.518410, 24.864479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553055, 0.796510, -0.244341,
		0.473054, 0.541628, 0.694880,
		0.685821, 0.268720, -0.676342,
		31.315002, 28.599026, 24.661577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202541, 29.026869, 25.369497>,  <30.834929, 28.410921, 25.135015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202541, 29.026869, 25.369497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.214891, 29.014774, 24.969872>,  <31.222301, 29.007517, 24.730095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.214891, 29.014774, 24.969872>,  <31.202541, 29.026869, 25.369497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214891, 29.014774, 24.969872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567489, 0.822287, -0.042424,
		0.822802, 0.568269, 0.008228,
		0.030874, -0.030237, -0.999066,
		31.224154, 29.005703, 24.670153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490023, 29.647858, 25.205011>,  <31.202541, 29.026869, 25.369497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490023, 29.647858, 25.205011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.327175, 29.561661, 24.849976>,  <31.229467, 29.509943, 24.636953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.327175, 29.561661, 24.849976>,  <31.490023, 29.647858, 25.205011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327175, 29.561661, 24.849976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486889, 0.873391, 0.011281,
		0.772784, 0.436751, -0.460494,
		-0.407118, -0.215492, -0.887591,
		31.205040, 29.497013, 24.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747641, 30.232155, 24.700279>,  <31.490023, 29.647858, 25.205011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747641, 30.232155, 24.700279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421902, 30.041523, 24.567787>,  <31.226460, 29.927143, 24.488293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421902, 30.041523, 24.567787>,  <31.747641, 30.232155, 24.700279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421902, 30.041523, 24.567787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486557, 0.871720, -0.058022,
		0.316391, 0.113912, -0.941765,
		-0.814346, -0.476579, -0.331229,
		31.177597, 29.898550, 24.468418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437490, 30.675907, 24.134062>,  <31.747641, 30.232155, 24.700279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437490, 30.675907, 24.134062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.129791, 30.443352, 24.240078>,  <30.945171, 30.303818, 24.303688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.129791, 30.443352, 24.240078>,  <31.437490, 30.675907, 24.134062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129791, 30.443352, 24.240078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637770, 0.723866, -0.263189,
		-0.038837, -0.371492, -0.927624,
		-0.769248, -0.581389, 0.265039,
		30.899017, 30.268936, 24.319590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019314, 30.779678, 23.622549>,  <31.437490, 30.675907, 24.134062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019314, 30.779678, 23.622549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.779972, 30.637562, 23.909809>,  <30.636366, 30.552292, 24.082165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.779972, 30.637562, 23.909809>,  <31.019314, 30.779678, 23.622549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779972, 30.637562, 23.909809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711243, 0.648232, -0.271900,
		-0.368922, -0.673471, -0.640573,
		-0.598356, -0.355293, 0.718148,
		30.600466, 30.530973, 24.125254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396658, 30.781406, 23.301617>,  <31.019314, 30.779678, 23.622549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396658, 30.781406, 23.301617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.315491, 30.767151, 23.693035>,  <30.266790, 30.758596, 23.927887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.315491, 30.767151, 23.693035>,  <30.396658, 30.781406, 23.301617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315491, 30.767151, 23.693035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643523, 0.758075, -0.105835,
		-0.738040, -0.651193, -0.176763,
		-0.202919, -0.035641, 0.978547,
		30.254616, 30.756458, 23.986599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762424, 31.036858, 23.315485>,  <30.396658, 30.781406, 23.301617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762424, 31.036858, 23.315485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845726, 31.066120, 23.705620>,  <29.895706, 31.083677, 23.939701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845726, 31.066120, 23.705620>,  <29.762424, 31.036858, 23.315485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845726, 31.066120, 23.705620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657414, 0.748810, 0.084207,
		-0.724181, -0.658735, 0.204035,
		0.208253, 0.073154, 0.975336,
		29.908201, 31.088066, 23.998220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122499, 31.066402, 23.642519>,  <29.762424, 31.036858, 23.315485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122499, 31.066402, 23.642519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.373928, 31.261841, 23.884567>,  <29.524786, 31.379105, 24.029797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.373928, 31.261841, 23.884567>,  <29.122499, 31.066402, 23.642519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373928, 31.261841, 23.884567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688539, 0.711397, 0.140816,
		-0.361678, -0.505161, 0.783583,
		0.628573, 0.488597, 0.605119,
		29.562500, 31.408421, 24.066103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762823, 31.235136, 24.257067>,  <29.122499, 31.066402, 23.642519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762823, 31.235136, 24.257067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.067247, 31.494350, 24.268631>,  <29.249903, 31.649879, 24.275570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.067247, 31.494350, 24.268631>,  <28.762823, 31.235136, 24.257067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067247, 31.494350, 24.268631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614792, 0.706369, 0.350819,
		0.206920, -0.284770, 0.935997,
		0.761062, 0.648035, 0.028912,
		29.295567, 31.688761, 24.277306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763790, 31.640476, 24.806690>,  <28.762823, 31.235136, 24.257067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763790, 31.640476, 24.806690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.902025, 31.843193, 24.490784>,  <28.984966, 31.964823, 24.301239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.902025, 31.843193, 24.490784>,  <28.763790, 31.640476, 24.806690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902025, 31.843193, 24.490784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603688, 0.764411, 0.226357,
		0.718422, 0.398546, 0.570114,
		0.345587, 0.506791, -0.789767,
		29.005701, 31.995230, 24.253853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034212, 31.643774, 24.855230>,  <28.763790, 31.640476, 24.806690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034212, 31.643774, 24.855230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.722773, 31.466305, 24.677719>,  <27.535910, 31.359823, 24.571213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.722773, 31.466305, 24.677719>,  <28.034212, 31.643774, 24.855230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722773, 31.466305, 24.677719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104692, -0.789121, 0.605250,
		-0.618729, 0.424786, 0.660857,
		-0.778598, -0.443672, -0.443780,
		27.489193, 31.333202, 24.544584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662092, 31.289078, 25.405804>,  <28.034212, 31.643774, 24.855230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662092, 31.289078, 25.405804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.537231, 31.085907, 25.084663>,  <27.462315, 30.964005, 24.891979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.537231, 31.085907, 25.084663>,  <27.662092, 31.289078, 25.405804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537231, 31.085907, 25.084663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170960, -0.861316, 0.478443,
		-0.934523, 0.012091, 0.355696,
		-0.312152, -0.507926, -0.802853,
		27.443586, 30.933529, 24.843807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209820, 30.696968, 25.650030>,  <27.662092, 31.289078, 25.405804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209820, 30.696968, 25.650030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.321087, 30.612152, 25.275295>,  <27.387848, 30.561262, 25.050455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.321087, 30.612152, 25.275295>,  <27.209820, 30.696968, 25.650030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321087, 30.612152, 25.275295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181313, -0.946205, 0.267997,
		-0.943262, -0.244411, -0.224766,
		0.278176, -0.212038, -0.936833,
		27.404537, 30.548540, 24.994246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844963, 30.020159, 25.472088>,  <27.209820, 30.696968, 25.650030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844963, 30.020159, 25.472088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.158920, 30.042645, 25.225258>,  <27.347294, 30.056135, 25.077160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.158920, 30.042645, 25.225258>,  <26.844963, 30.020159, 25.472088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158920, 30.042645, 25.225258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134642, -0.987554, 0.081294,
		-0.604826, -0.146891, -0.782693,
		0.784893, 0.056215, -0.617076,
		27.394388, 30.059509, 25.040134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684507, 29.547974, 24.917368>,  <26.844963, 30.020159, 25.472088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684507, 29.547974, 24.917368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.079300, 29.612114, 24.922318>,  <27.316175, 29.650599, 24.925287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.079300, 29.612114, 24.922318>,  <26.684507, 29.547974, 24.917368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079300, 29.612114, 24.922318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158358, -0.982381, 0.099248,
		0.028068, -0.095997, -0.994986,
		0.986983, 0.160350, 0.012372,
		27.375395, 29.660219, 24.926029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944479, 28.974308, 24.585848>,  <26.684507, 29.547974, 24.917368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944479, 28.974308, 24.585848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.290085, 29.086624, 24.753006>,  <27.497448, 29.154015, 24.853300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.290085, 29.086624, 24.753006>,  <26.944479, 28.974308, 24.585848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290085, 29.086624, 24.753006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293679, -0.955275, 0.034670,
		0.408938, 0.092771, -0.907834,
		0.864015, 0.280790, 0.417893,
		27.549290, 29.170862, 24.878374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395994, 28.575914, 24.297182>,  <26.944479, 28.974308, 24.585848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395994, 28.575914, 24.297182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.587845, 28.705479, 24.623383>,  <27.702955, 28.783218, 24.819103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.587845, 28.705479, 24.623383>,  <27.395994, 28.575914, 24.297182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587845, 28.705479, 24.623383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367901, -0.917973, 0.148238,
		0.796624, 0.228925, -0.559450,
		0.479625, 0.323912, 0.815501,
		27.731731, 28.802652, 24.868032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129908, 28.307192, 24.227879>,  <27.395994, 28.575914, 24.297182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129908, 28.307192, 24.227879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.077835, 28.421406, 24.607674>,  <28.046591, 28.489933, 24.835550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.077835, 28.421406, 24.607674>,  <28.129908, 28.307192, 24.227879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077835, 28.421406, 24.607674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391560, -0.864988, 0.313809,
		0.910897, 0.412633, 0.000802,
		-0.130182, 0.285534, 0.949486,
		28.038780, 28.507067, 24.892519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759962, 28.089661, 24.579191>,  <28.129908, 28.307192, 24.227879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759962, 28.089661, 24.579191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.506287, 28.139034, 24.884495>,  <28.354080, 28.168659, 25.067677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.506287, 28.139034, 24.884495>,  <28.759962, 28.089661, 24.579191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506287, 28.139034, 24.884495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384697, -0.805932, 0.449980,
		0.670680, 0.578997, 0.463628,
		-0.634190, 0.123436, 0.763261,
		28.316031, 28.176065, 25.113474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107712, 28.051987, 25.230307>,  <28.759962, 28.089661, 24.579191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107712, 28.051987, 25.230307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.728645, 27.952194, 25.309998>,  <28.501205, 27.892319, 25.357813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.728645, 27.952194, 25.309998>,  <29.107712, 28.051987, 25.230307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728645, 27.952194, 25.309998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311394, -0.859991, 0.404289,
		0.070471, 0.445168, 0.892670,
		-0.947664, -0.249482, 0.199227,
		28.444345, 27.877350, 25.369766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051617, 27.712954, 25.868526>,  <29.107712, 28.051987, 25.230307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051617, 27.712954, 25.868526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.708351, 27.569534, 25.721558>,  <28.502392, 27.483482, 25.633377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.708351, 27.569534, 25.721558>,  <29.051617, 27.712954, 25.868526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708351, 27.569534, 25.721558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172429, -0.875424, 0.451554,
		-0.483552, 0.324153, 0.813082,
		-0.858164, -0.358549, -0.367420,
		28.450901, 27.461969, 25.611332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719612, 27.371347, 26.434290>,  <29.051617, 27.712954, 25.868526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719612, 27.371347, 26.434290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.582178, 27.197517, 26.101280>,  <28.499718, 27.093220, 25.901474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.582178, 27.197517, 26.101280>,  <28.719612, 27.371347, 26.434290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582178, 27.197517, 26.101280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163580, -0.900633, 0.402618,
		-0.924765, 0.002150, 0.380534,
		-0.343587, -0.434574, -0.832522,
		28.479101, 27.067144, 25.851524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273884, 26.814117, 26.689739>,  <28.719612, 27.371347, 26.434290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273884, 26.814117, 26.689739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.375557, 26.692749, 26.322407>,  <28.436560, 26.619928, 26.102007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.375557, 26.692749, 26.322407>,  <28.273884, 26.814117, 26.689739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375557, 26.692749, 26.322407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204803, -0.911095, 0.357716,
		-0.945224, -0.279000, -0.169441,
		0.254180, -0.303420, -0.918329,
		28.451811, 26.601723, 26.046907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951523, 26.100012, 26.617781>,  <28.273884, 26.814117, 26.689739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951523, 26.100012, 26.617781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.230461, 26.120361, 26.331810>,  <28.397823, 26.132570, 26.160227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.230461, 26.120361, 26.331810>,  <27.951523, 26.100012, 26.617781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230461, 26.120361, 26.331810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361128, -0.886550, 0.289163,
		-0.619108, -0.459827, -0.636604,
		0.697346, 0.050872, -0.714927,
		28.439665, 26.135622, 26.117332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875755, 25.441097, 26.186975>,  <27.951523, 26.100012, 26.617781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875755, 25.441097, 26.186975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.245691, 25.582268, 26.130245>,  <28.467653, 25.666971, 26.096207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.245691, 25.582268, 26.130245>,  <27.875755, 25.441097, 26.186975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245691, 25.582268, 26.130245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369626, -0.921880, 0.116249,
		-0.089719, -0.159935, -0.983042,
		0.924839, 0.352928, -0.141826,
		28.523144, 25.688147, 26.087698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280598, 24.911575, 25.634575>,  <27.875755, 25.441097, 26.186975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280598, 24.911575, 25.634575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.542347, 25.112183, 25.860947>,  <28.699396, 25.232548, 25.996771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.542347, 25.112183, 25.860947>,  <28.280598, 24.911575, 25.634575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542347, 25.112183, 25.860947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490323, -0.851168, 0.187342,
		0.575658, 0.154898, -0.802885,
		0.654371, 0.501518, 0.565931,
		28.738659, 25.262638, 26.030725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789318, 24.427197, 25.736322>,  <28.280598, 24.911575, 25.634575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789318, 24.427197, 25.736322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.917423, 24.698994, 26.000359>,  <28.994286, 24.862072, 26.158781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.917423, 24.698994, 26.000359>,  <28.789318, 24.427197, 25.736322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917423, 24.698994, 26.000359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592796, -0.687257, 0.419846,
		0.738935, 0.256837, -0.622905,
		0.320264, 0.679494, 0.660090,
		29.013502, 24.902842, 26.198385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.628546, 24.414133, 25.734453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521715, 24.592144, 26.076359>,  <29.457617, 24.698952, 26.281502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521715, 24.592144, 26.076359>,  <29.628546, 24.414133, 25.734453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521715, 24.592144, 26.076359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537256, -0.667586, 0.515446,
		0.800016, 0.596890, -0.060797,
		-0.267077, 0.445029, 0.854763,
		29.441591, 24.725653, 26.332788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241716, 24.533899, 26.197884>,  <29.628546, 24.414133, 25.734453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241716, 24.533899, 26.197884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922674, 24.533821, 26.439156>,  <29.731249, 24.533773, 26.583918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.922674, 24.533821, 26.439156>,  <30.241716, 24.533899, 26.197884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922674, 24.533821, 26.439156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463433, -0.640269, 0.612605,
		0.386076, 0.768151, 0.510774,
		-0.797606, -0.000197, 0.603179,
		29.683392, 24.533762, 26.620110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382002, 24.681965, 26.872494>,  <30.241716, 24.533899, 26.197884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382002, 24.681965, 26.872494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034008, 24.491539, 26.923859>,  <29.825212, 24.377283, 26.954678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034008, 24.491539, 26.923859>,  <30.382002, 24.681965, 26.872494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034008, 24.491539, 26.923859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455273, -0.675544, 0.579971,
		-0.189355, 0.563029, 0.804452,
		-0.869983, -0.476066, 0.128414,
		29.773012, 24.348719, 26.962383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215010, 24.728106, 27.600508>,  <30.382002, 24.681965, 26.872494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215010, 24.728106, 27.600508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.005981, 24.414463, 27.466583>,  <29.880564, 24.226278, 27.386229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.005981, 24.414463, 27.466583>,  <30.215010, 24.728106, 27.600508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005981, 24.414463, 27.466583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311123, -0.540992, 0.781365,
		-0.793801, 0.304153, 0.526660,
		-0.522573, -0.784104, -0.334811,
		29.849209, 24.179232, 27.366140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928759, 24.376736, 28.197739>,  <30.215010, 24.728106, 27.600508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928759, 24.376736, 28.197739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.896976, 24.093040, 27.917549>,  <29.877907, 23.922823, 27.749435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.896976, 24.093040, 27.917549>,  <29.928759, 24.376736, 28.197739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896976, 24.093040, 27.917549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281078, -0.690124, 0.666876,
		-0.956390, -0.143903, 0.254185,
		-0.079454, -0.709239, -0.700476,
		29.873140, 23.880268, 27.707407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763109, 23.795877, 28.548273>,  <29.928759, 24.376736, 28.197739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763109, 23.795877, 28.548273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.884985, 23.642307, 28.199615>,  <29.958111, 23.550165, 27.990421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.884985, 23.642307, 28.199615>,  <29.763109, 23.795877, 28.548273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884985, 23.642307, 28.199615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516267, -0.702484, 0.489882,
		-0.800395, -0.599264, -0.015834,
		0.304691, -0.383924, -0.871645,
		29.976393, 23.527130, 27.938122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547783, 23.135582, 28.561695>,  <29.763109, 23.795877, 28.548273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547783, 23.135582, 28.561695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845072, 23.145432, 28.294258>,  <30.023445, 23.151342, 28.133797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845072, 23.145432, 28.294258>,  <29.547783, 23.135582, 28.561695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845072, 23.145432, 28.294258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478282, -0.718337, 0.505211,
		-0.467833, -0.695259, -0.545662,
		0.743222, 0.024626, -0.668591,
		30.068039, 23.152819, 28.093681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661242, 22.498671, 28.119177>,  <29.547783, 23.135582, 28.561695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661242, 22.498671, 28.119177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012470, 22.690052, 28.115871>,  <30.223207, 22.804880, 28.113888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012470, 22.690052, 28.115871>,  <29.661242, 22.498671, 28.119177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012470, 22.690052, 28.115871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461234, -0.841618, 0.280967,
		0.127475, -0.250521, -0.959682,
		0.878074, 0.478454, -0.008264,
		30.275892, 22.833588, 28.113392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988588, 21.967785, 27.841148>,  <29.661242, 22.498671, 28.119177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988588, 21.967785, 27.841148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.234734, 22.226566, 28.021271>,  <30.382421, 22.381836, 28.129345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.234734, 22.226566, 28.021271>,  <29.988588, 21.967785, 27.841148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234734, 22.226566, 28.021271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544032, -0.761984, 0.351299,
		0.570402, 0.028806, -0.820861,
		0.615363, 0.646956, 0.450308,
		30.419342, 22.420652, 28.156363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749826, 21.724747, 27.727247>,  <29.988588, 21.967785, 27.841148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749826, 21.724747, 27.727247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.721415, 21.966957, 28.044308>,  <30.704367, 22.112284, 28.234545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.721415, 21.966957, 28.044308>,  <30.749826, 21.724747, 27.727247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721415, 21.966957, 28.044308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441205, -0.693622, 0.569409,
		0.894591, 0.390167, -0.217893,
		-0.071029, 0.605524, 0.792651,
		30.700106, 22.148615, 28.282103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370485, 21.627199, 27.986668>,  <30.749826, 21.724747, 27.727247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370485, 21.627199, 27.986668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183701, 21.818634, 28.284096>,  <31.071629, 21.933495, 28.462553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183701, 21.818634, 28.284096>,  <31.370485, 21.627199, 27.986668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183701, 21.818634, 28.284096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467124, -0.580475, 0.666966,
		0.750826, 0.658790, 0.047502,
		-0.466964, 0.478586, 0.743572,
		31.043612, 21.962210, 28.507168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855869, 21.728939, 28.558949>,  <31.370485, 21.627199, 27.986668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855869, 21.728939, 28.558949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482101, 21.698132, 28.698048>,  <31.257841, 21.679647, 28.781507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482101, 21.698132, 28.698048>,  <31.855869, 21.728939, 28.558949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482101, 21.698132, 28.698048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282916, -0.753630, 0.593297,
		0.216378, 0.652771, 0.725996,
		-0.934419, -0.077019, 0.347748,
		31.201777, 21.675026, 28.802372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948748, 21.410482, 29.148182>,  <31.855869, 21.728939, 28.558949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948748, 21.410482, 29.148182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548779, 21.408241, 29.152592>,  <31.308796, 21.406897, 29.155237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548779, 21.408241, 29.152592>,  <31.948748, 21.410482, 29.148182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548779, 21.408241, 29.152592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011851, -0.688220, 0.725405,
		0.003523, 0.725480, 0.688234,
		-0.999924, -0.005601, 0.011022,
		31.248802, 21.406561, 29.155899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738718, 21.464300, 29.820595>,  <31.948748, 21.410482, 29.148182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738718, 21.464300, 29.820595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417698, 21.286419, 29.661522>,  <31.225086, 21.179689, 29.566078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417698, 21.286419, 29.661522>,  <31.738718, 21.464300, 29.820595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417698, 21.286419, 29.661522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031683, -0.697431, 0.715952,
		-0.595743, 0.561987, 0.573813,
		-0.802550, -0.444703, -0.397684,
		31.176933, 21.153008, 29.542217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307936, 21.251213, 30.387306>,  <31.738718, 21.464300, 29.820595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307936, 21.251213, 30.387306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164764, 21.035496, 30.082401>,  <31.078861, 20.906065, 29.899458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164764, 21.035496, 30.082401>,  <31.307936, 21.251213, 30.387306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164764, 21.035496, 30.082401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106035, -0.787593, 0.607004,
		-0.927708, 0.298092, 0.224720,
		-0.357931, -0.539295, -0.762264,
		31.057384, 20.873707, 29.853722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578777, 20.970106, 30.587635>,  <31.307936, 21.251213, 30.387306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578777, 20.970106, 30.587635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744463, 20.722240, 30.320969>,  <30.843874, 20.573521, 30.160969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744463, 20.722240, 30.320969>,  <30.578777, 20.970106, 30.587635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744463, 20.722240, 30.320969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145726, -0.768155, 0.623459,
		-0.898438, -0.161096, -0.408482,
		0.414215, -0.619665, -0.666664,
		30.868727, 20.536341, 30.120970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314545, 20.310839, 30.699013>,  <30.578777, 20.970106, 30.587635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314545, 20.310839, 30.699013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638678, 20.218918, 30.483402>,  <30.833157, 20.163765, 30.354034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638678, 20.218918, 30.483402>,  <30.314545, 20.310839, 30.699013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638678, 20.218918, 30.483402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113206, -0.841164, 0.528797,
		-0.574931, -0.489523, -0.655608,
		0.810333, -0.229803, -0.539028,
		30.881777, 20.149977, 30.321693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168770, 19.720848, 30.411528>,  <30.314545, 20.310839, 30.699013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168770, 19.720848, 30.411528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567753, 19.735958, 30.387348>,  <30.807142, 19.745024, 30.372841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567753, 19.735958, 30.387348>,  <30.168770, 19.720848, 30.411528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567753, 19.735958, 30.387348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061303, -0.887298, 0.457104,
		-0.036367, -0.459646, -0.887357,
		0.997456, 0.037774, -0.060446,
		30.866989, 19.747290, 30.369215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407251, 19.057840, 30.388186>,  <30.168770, 19.720848, 30.411528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407251, 19.057840, 30.388186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726713, 19.272331, 30.497448>,  <30.918390, 19.401026, 30.563005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726713, 19.272331, 30.497448>,  <30.407251, 19.057840, 30.388186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726713, 19.272331, 30.497448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361589, -0.790425, 0.494451,
		0.481047, -0.296125, -0.825169,
		0.798654, 0.536226, 0.273156,
		30.966309, 19.433199, 30.579395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014418, 18.603664, 30.321756>,  <30.407251, 19.057840, 30.388186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014418, 18.603664, 30.321756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136971, 18.876083, 30.587780>,  <31.210503, 19.039534, 30.747395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136971, 18.876083, 30.587780>,  <31.014418, 18.603664, 30.321756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136971, 18.876083, 30.587780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454412, -0.718555, 0.526487,
		0.836445, 0.140906, -0.529628,
		0.306382, 0.681046, 0.665061,
		31.228886, 19.080397, 30.787298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441040, 18.260195, 30.585222>,  <31.014418, 18.603664, 30.321756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441040, 18.260195, 30.585222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455902, 18.563728, 30.845310>,  <31.464819, 18.745850, 31.001364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455902, 18.563728, 30.845310>,  <31.441040, 18.260195, 30.585222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455902, 18.563728, 30.845310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390252, -0.610022, 0.689621,
		0.919958, 0.228125, -0.318804,
		0.037157, 0.758836, 0.650221,
		31.467049, 18.791380, 31.040377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132675, 18.261578, 30.931583>,  <31.441040, 18.260195, 30.585222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132675, 18.261578, 30.931583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885298, 18.469303, 31.167496>,  <31.736872, 18.593939, 31.309042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885298, 18.469303, 31.167496>,  <32.132675, 18.261578, 30.931583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885298, 18.469303, 31.167496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210306, -0.613765, 0.760963,
		0.757164, 0.594647, 0.270364,
		-0.618445, 0.519314, 0.589779,
		31.699764, 18.625097, 31.344429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486370, 18.545086, 31.514641>,  <32.132675, 18.261578, 30.931583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486370, 18.545086, 31.514641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099869, 18.477791, 31.592670>,  <31.867968, 18.437414, 31.639488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099869, 18.477791, 31.592670>,  <32.486370, 18.545086, 31.514641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099869, 18.477791, 31.592670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257567, -0.618754, 0.742161,
		-0.004158, 0.767358, 0.641205,
		-0.966251, -0.168240, 0.195074,
		31.809994, 18.427319, 31.651192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137589, 18.826464, 32.181755>,  <32.486370, 18.545086, 31.514641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137589, 18.826464, 32.181755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.991446, 18.473259, 32.063904>,  <31.903759, 18.261335, 31.993193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.991446, 18.473259, 32.063904>,  <32.137589, 18.826464, 32.181755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991446, 18.473259, 32.063904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307772, -0.413296, 0.857008,
		-0.878516, 0.222437, 0.422767,
		-0.365358, -0.883011, -0.294627,
		31.881838, 18.208355, 31.975515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453640, 19.442314, 32.486164>,  <32.137589, 18.826464, 32.181755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453640, 19.442314, 32.486164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685349, 19.636326, 32.748215>,  <32.824375, 19.752733, 32.905445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685349, 19.636326, 32.748215>,  <32.453640, 19.442314, 32.486164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685349, 19.636326, 32.748215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394030, 0.536944, -0.745943,
		-0.713570, 0.690244, 0.119920,
		0.579273, 0.485031, 0.655124,
		32.859131, 19.781836, 32.944752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319759, 20.220829, 32.557503>,  <32.453640, 19.442314, 32.486164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319759, 20.220829, 32.557503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710003, 20.153549, 32.613911>,  <32.944149, 20.113182, 32.647755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710003, 20.153549, 32.613911>,  <32.319759, 20.220829, 32.557503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710003, 20.153549, 32.613911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218803, 0.694273, -0.685646,
		0.017418, 0.699781, 0.714145,
		0.975614, -0.168200, 0.141022,
		33.002686, 20.103088, 32.656216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663113, 20.827530, 32.919640>,  <32.319759, 20.220829, 32.557503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663113, 20.827530, 32.919640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929760, 20.626694, 32.699268>,  <33.089748, 20.506191, 32.567043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929760, 20.626694, 32.699268>,  <32.663113, 20.827530, 32.919640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929760, 20.626694, 32.699268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163707, 0.819679, -0.548932,
		0.727200, 0.275737, 0.628609,
		0.666619, -0.502091, -0.550930,
		33.129745, 20.476067, 32.533989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189220, 21.246599, 32.776115>,  <32.663113, 20.827530, 32.919640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189220, 21.246599, 32.776115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280422, 20.981453, 32.490845>,  <33.335144, 20.822365, 32.319683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280422, 20.981453, 32.490845>,  <33.189220, 21.246599, 32.776115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280422, 20.981453, 32.490845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025371, 0.728177, -0.684919,
		0.973329, 0.174260, 0.149211,
		0.228006, -0.662866, -0.713178,
		33.348824, 20.782593, 32.276890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694839, 21.565540, 32.358265>,  <33.189220, 21.246599, 32.776115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694839, 21.565540, 32.358265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571861, 21.255074, 32.138069>,  <33.498074, 21.068794, 32.005951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.571861, 21.255074, 32.138069>,  <33.694839, 21.565540, 32.358265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571861, 21.255074, 32.138069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094564, 0.550728, -0.829311,
		0.946854, -0.307027, -0.095922,
		-0.307448, -0.776166, -0.550493,
		33.479626, 21.022224, 31.972921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243706, 21.380926, 31.834745>,  <33.694839, 21.565540, 32.358265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243706, 21.380926, 31.834745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884041, 21.266785, 31.702030>,  <33.668243, 21.198299, 31.622400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884041, 21.266785, 31.702030>,  <34.243706, 21.380926, 31.834745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884041, 21.266785, 31.702030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109093, 0.588073, -0.801417,
		0.423803, -0.756798, -0.497642,
		-0.899161, -0.285353, -0.331789,
		33.614292, 21.181179, 31.602493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355850, 21.424986, 31.072786>,  <34.243706, 21.380926, 31.834745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355850, 21.424986, 31.072786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959396, 21.428082, 31.125851>,  <33.721523, 21.429939, 31.157688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959396, 21.428082, 31.125851>,  <34.355850, 21.424986, 31.072786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959396, 21.428082, 31.125851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094745, 0.658839, -0.746294,
		-0.093175, -0.752244, -0.652263,
		-0.991132, 0.007737, 0.132659,
		33.662056, 21.430403, 31.165648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082409, 21.585922, 30.403650>,  <34.355850, 21.424986, 31.072786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082409, 21.585922, 30.403650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.747044, 21.647854, 30.612682>,  <33.545826, 21.685013, 30.738102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.747044, 21.647854, 30.612682>,  <34.082409, 21.585922, 30.403650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747044, 21.647854, 30.612682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312233, 0.649440, -0.693353,
		-0.446738, -0.744483, -0.496156,
		-0.838412, 0.154831, 0.522581,
		33.495522, 21.694304, 30.769457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596329, 21.711090, 29.868942>,  <34.082409, 21.585922, 30.403650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596329, 21.711090, 29.868942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426151, 21.877205, 30.190571>,  <33.324043, 21.976873, 30.383549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426151, 21.877205, 30.190571>,  <33.596329, 21.711090, 29.868942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426151, 21.877205, 30.190571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332339, 0.754717, -0.565645,
		-0.841752, -0.507875, -0.183075,
		-0.425447, 0.415289, 0.804071,
		33.298519, 22.001791, 30.431791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934620, 21.820276, 29.585249>,  <33.596329, 21.711090, 29.868942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934620, 21.820276, 29.585249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.983997, 22.052528, 29.907150>,  <33.013622, 22.191879, 30.100290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.983997, 22.052528, 29.907150>,  <32.934620, 21.820276, 29.585249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983997, 22.052528, 29.907150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337843, 0.787102, -0.516074,
		-0.933072, -0.208175, 0.293324,
		0.123442, 0.580632, 0.804754,
		33.021030, 22.226719, 30.148577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293461, 22.224627, 29.664734>,  <32.934620, 21.820276, 29.585249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293461, 22.224627, 29.664734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576698, 22.447338, 29.838448>,  <32.746639, 22.580965, 29.942675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576698, 22.447338, 29.838448>,  <32.293461, 22.224627, 29.664734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576698, 22.447338, 29.838448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371181, 0.816696, -0.441851,
		-0.600690, 0.151675, 0.784963,
		0.708094, 0.556778, 0.434282,
		32.789127, 22.614372, 29.968733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928900, 22.768105, 29.855015>,  <32.293461, 22.224627, 29.664734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928900, 22.768105, 29.855015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300629, 22.913567, 29.880669>,  <32.523666, 23.000845, 29.896061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300629, 22.913567, 29.880669>,  <31.928900, 22.768105, 29.855015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300629, 22.913567, 29.880669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297216, 0.839695, -0.454505,
		-0.219139, 0.403320, 0.888432,
		0.929323, 0.363656, 0.064137,
		32.579426, 23.022663, 29.899910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889217, 23.504189, 30.049906>,  <31.928900, 22.768105, 29.855015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889217, 23.504189, 30.049906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.247261, 23.433380, 29.886227>,  <32.462086, 23.390896, 29.788019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.247261, 23.433380, 29.886227>,  <31.889217, 23.504189, 30.049906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247261, 23.433380, 29.886227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074936, 0.845008, -0.529477,
		0.439503, 0.504604, 0.743109,
		0.895110, -0.177021, -0.409197,
		32.515793, 23.380274, 29.763468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148754, 24.228035, 29.815891>,  <31.889217, 23.504189, 30.049906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148754, 24.228035, 29.815891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.382767, 23.962101, 29.630104>,  <32.523174, 23.802540, 29.518631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.382767, 23.962101, 29.630104>,  <32.148754, 24.228035, 29.815891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382767, 23.962101, 29.630104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035387, 0.593086, -0.804361,
		0.810238, 0.454140, 0.370501,
		0.585031, -0.664835, -0.464470,
		32.558277, 23.762650, 29.490763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763245, 24.575830, 29.568220>,  <32.148754, 24.228035, 29.815891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763245, 24.575830, 29.568220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756245, 24.248501, 29.338425>,  <32.752045, 24.052103, 29.200546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756245, 24.248501, 29.338425>,  <32.763245, 24.575830, 29.568220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756245, 24.248501, 29.338425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260770, 0.550956, -0.792746,
		0.965242, -0.163687, 0.203750,
		-0.017504, -0.818324, -0.574491,
		32.750992, 24.003004, 29.166077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180328, 24.812805, 29.082594>,  <32.763245, 24.575830, 29.568220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180328, 24.812805, 29.082594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993427, 24.491341, 28.935188>,  <32.881287, 24.298462, 28.846745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993427, 24.491341, 28.935188>,  <33.180328, 24.812805, 29.082594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993427, 24.491341, 28.935188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123701, 0.353286, -0.927301,
		0.875428, -0.478868, -0.065660,
		-0.467252, -0.803663, -0.368513,
		32.853252, 24.250242, 28.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622761, 24.344915, 28.629616>,  <33.180328, 24.812805, 29.082594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622761, 24.344915, 28.629616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241867, 24.276604, 28.528355>,  <33.013332, 24.235617, 28.467598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241867, 24.276604, 28.528355>,  <33.622761, 24.344915, 28.629616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241867, 24.276604, 28.528355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216587, 0.206709, -0.954129,
		0.215294, -0.963379, -0.159841,
		-0.952228, -0.170799, -0.253158,
		32.956196, 24.225368, 28.452408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638939, 23.896610, 28.006645>,  <33.622761, 24.344915, 28.629616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638939, 23.896610, 28.006645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286633, 24.085861, 28.014637>,  <33.075249, 24.199411, 28.019432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286633, 24.085861, 28.014637>,  <33.638939, 23.896610, 28.006645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286633, 24.085861, 28.014637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092036, 0.212413, -0.972836,
		-0.464521, -0.855002, -0.230631,
		-0.880766, 0.473129, 0.019980,
		33.022404, 24.227800, 28.020632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339035, 23.717136, 27.298355>,  <33.638939, 23.896610, 28.006645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339035, 23.717136, 27.298355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127457, 24.036255, 27.414104>,  <33.000511, 24.227726, 27.483555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127457, 24.036255, 27.414104>,  <33.339035, 23.717136, 27.298355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127457, 24.036255, 27.414104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131168, 0.413737, -0.900898,
		-0.838458, -0.438569, -0.323489,
		-0.528945, 0.797796, 0.289375,
		32.968773, 24.275595, 27.500917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856056, 23.707689, 26.922247>,  <33.339035, 23.717136, 27.298355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856056, 23.707689, 26.922247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893730, 24.089386, 27.035774>,  <32.916336, 24.318403, 27.103889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893730, 24.089386, 27.035774>,  <32.856056, 23.707689, 26.922247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893730, 24.089386, 27.035774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124814, 0.294153, -0.947573,
		-0.987699, 0.053825, 0.146809,
		0.094187, 0.954241, 0.283817,
		32.921986, 24.375658, 27.120920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.294785, 35.692596, 16.263643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.108110, 35.358746, 16.380676>,  <19.996105, 35.158436, 16.450897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.108110, 35.358746, 16.380676>,  <20.294785, 35.692596, 16.263643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108110, 35.358746, 16.380676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365341, 0.119348, 0.923191,
		-0.805437, 0.537734, 0.249224,
		-0.466687, -0.834625, 0.292584,
		19.968103, 35.108356, 16.468451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873480, 35.866940, 16.914370>,  <20.294785, 35.692596, 16.263643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873480, 35.866940, 16.914370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.914127, 35.469044, 16.909317>,  <19.938515, 35.230305, 16.906284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.914127, 35.469044, 16.909317>,  <19.873480, 35.866940, 16.914370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.914127, 35.469044, 16.909317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359434, 0.024871, 0.932839,
		-0.927621, -0.099333, 0.360072,
		0.101617, -0.994743, -0.012633,
		19.944613, 35.170620, 16.905527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488583, 35.598782, 17.469490>,  <19.873480, 35.866940, 16.914370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488583, 35.598782, 17.469490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771700, 35.323589, 17.405357>,  <19.941570, 35.158474, 17.366877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771700, 35.323589, 17.405357>,  <19.488583, 35.598782, 17.469490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771700, 35.323589, 17.405357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248425, 0.029944, 0.968188,
		-0.661296, -0.725108, 0.192107,
		0.707794, -0.687984, -0.160334,
		19.984037, 35.117195, 17.357258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373043, 34.978798, 18.042339>,  <19.488583, 35.598782, 17.469490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373043, 34.978798, 18.042339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.745731, 34.956139, 17.898846>,  <19.969343, 34.942543, 17.812750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.745731, 34.956139, 17.898846>,  <19.373043, 34.978798, 18.042339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.745731, 34.956139, 17.898846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352573, -0.095905, 0.930857,
		-0.087118, -0.993778, -0.069390,
		0.931720, -0.056630, -0.358735,
		20.025248, 34.939144, 17.791225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589651, 34.507507, 18.500681>,  <19.373043, 34.978798, 18.042339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589651, 34.507507, 18.500681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.901613, 34.680256, 18.319469>,  <20.088791, 34.783905, 18.210743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.901613, 34.680256, 18.319469>,  <19.589651, 34.507507, 18.500681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.901613, 34.680256, 18.319469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488011, 0.033630, 0.872190,
		0.391908, -0.901309, -0.184529,
		0.779906, 0.431870, -0.453028,
		20.135586, 34.809818, 18.183561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166719, 34.083996, 18.646872>,  <19.589651, 34.507507, 18.500681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166719, 34.083996, 18.646872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.344131, 34.429459, 18.551056>,  <20.450579, 34.636738, 18.493567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.344131, 34.429459, 18.551056>,  <20.166719, 34.083996, 18.646872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344131, 34.429459, 18.551056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558677, -0.057427, 0.827394,
		0.700829, -0.500797, -0.507977,
		0.443528, 0.863658, -0.239537,
		20.477190, 34.688557, 18.479195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876833, 34.022881, 18.752045>,  <20.166719, 34.083996, 18.646872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876833, 34.022881, 18.752045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.820976, 34.418480, 18.771576>,  <20.787462, 34.655838, 18.783295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.820976, 34.418480, 18.771576>,  <20.876833, 34.022881, 18.752045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.820976, 34.418480, 18.771576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539038, 0.034562, 0.841572,
		0.830624, 0.143841, -0.537934,
		-0.139644, 0.988997, 0.048828,
		20.779083, 34.715179, 18.786224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460136, 34.181885, 19.120441>,  <20.876833, 34.022881, 18.752045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460136, 34.181885, 19.120441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.205908, 34.490120, 19.139416>,  <21.053371, 34.675060, 19.150801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.205908, 34.490120, 19.139416>,  <21.460136, 34.181885, 19.120441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205908, 34.490120, 19.139416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359942, 0.241397, 0.901204,
		0.683003, 0.589853, -0.430791,
		-0.635569, 0.770585, 0.047438,
		21.015238, 34.721294, 19.153646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.837315, 34.749184, 19.297226>,  <21.460136, 34.181885, 19.120441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.837315, 34.749184, 19.297226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473858, 34.849045, 19.431118>,  <21.255785, 34.908962, 19.511454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473858, 34.849045, 19.431118>,  <21.837315, 34.749184, 19.297226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473858, 34.849045, 19.431118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359962, 0.061978, 0.930906,
		0.211660, 0.966349, -0.146182,
		-0.908640, 0.249656, 0.334731,
		21.201265, 34.923943, 19.531538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.843340, 35.302086, 19.774031>,  <21.837315, 34.749184, 19.297226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.843340, 35.302086, 19.774031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.471308, 35.176117, 19.849689>,  <21.248089, 35.100536, 19.895084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.471308, 35.176117, 19.849689>,  <21.843340, 35.302086, 19.774031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471308, 35.176117, 19.849689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122167, 0.220421, 0.967724,
		-0.346453, 0.923167, -0.166535,
		-0.930079, -0.314926, 0.189146,
		21.192284, 35.081638, 19.906433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.560621, 35.750095, 20.259401>,  <21.843340, 35.302086, 19.774031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.560621, 35.750095, 20.259401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336132, 35.419533, 20.277637>,  <21.201439, 35.221195, 20.288580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336132, 35.419533, 20.277637>,  <21.560621, 35.750095, 20.259401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336132, 35.419533, 20.277637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051597, 0.020042, 0.998467,
		-0.826054, 0.562715, 0.031392,
		-0.561223, -0.826408, 0.045590,
		21.167765, 35.171612, 20.291315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032970, 35.982864, 20.704445>,  <21.560621, 35.750095, 20.259401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032970, 35.982864, 20.704445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.042805, 35.583050, 20.697186>,  <21.048704, 35.343163, 20.692831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.042805, 35.583050, 20.697186>,  <21.032970, 35.982864, 20.704445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042805, 35.583050, 20.697186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081162, -0.016096, 0.996571,
		-0.996398, -0.025972, 0.080729,
		0.024584, -0.999533, -0.018146,
		21.050180, 35.283192, 20.691742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543104, 35.721851, 21.258438>,  <21.032970, 35.982864, 20.704445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543104, 35.721851, 21.258438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829655, 35.458168, 21.167007>,  <21.001585, 35.299957, 21.112150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829655, 35.458168, 21.167007>,  <20.543104, 35.721851, 21.258438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829655, 35.458168, 21.167007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247518, -0.066185, 0.966620,
		-0.652336, -0.749039, 0.115753,
		0.716375, -0.659212, -0.228576,
		21.044567, 35.260403, 21.098434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.388405, 35.220161, 21.658659>,  <20.543104, 35.721851, 21.258438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.388405, 35.220161, 21.658659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.771769, 35.159752, 21.561790>,  <21.001787, 35.123505, 21.503670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.771769, 35.159752, 21.561790>,  <20.388405, 35.220161, 21.658659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771769, 35.159752, 21.561790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218863, -0.155682, 0.963256,
		-0.183186, -0.976193, -0.116151,
		0.958406, -0.151034, -0.242171,
		21.059290, 35.114445, 21.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671101, 34.632828, 22.177380>,  <20.388405, 35.220161, 21.658659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671101, 34.632828, 22.177380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993671, 34.806850, 22.017178>,  <21.187214, 34.911263, 21.921057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993671, 34.806850, 22.017178>,  <20.671101, 34.632828, 22.177380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993671, 34.806850, 22.017178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471797, -0.065056, 0.879304,
		0.356490, -0.898051, -0.257720,
		0.806426, 0.435054, -0.400506,
		21.235600, 34.937366, 21.897026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185966, 34.272114, 22.456635>,  <20.671101, 34.632828, 22.177380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185966, 34.272114, 22.456635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.351727, 34.620060, 22.349590>,  <21.451183, 34.828827, 22.285364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.351727, 34.620060, 22.349590>,  <21.185966, 34.272114, 22.456635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351727, 34.620060, 22.349590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549194, -0.004542, 0.835683,
		0.725712, -0.493276, -0.479605,
		0.414400, 0.869861, -0.267608,
		21.476048, 34.881020, 22.269308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884085, 34.206413, 22.676937>,  <21.185966, 34.272114, 22.456635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884085, 34.206413, 22.676937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.821114, 34.596485, 22.614666>,  <21.783331, 34.830528, 22.577303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.821114, 34.596485, 22.614666>,  <21.884085, 34.206413, 22.676937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.821114, 34.596485, 22.614666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585789, 0.219132, 0.780277,
		0.795027, 0.031644, -0.605748,
		-0.157430, 0.975182, -0.155679,
		21.773884, 34.889038, 22.567963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.459473, 34.466785, 23.059719>,  <21.884085, 34.206413, 22.676937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.459473, 34.466785, 23.059719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.227114, 34.781223, 22.975227>,  <22.087698, 34.969887, 22.924532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.227114, 34.781223, 22.975227>,  <22.459473, 34.466785, 23.059719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.227114, 34.781223, 22.975227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278962, 0.436047, 0.855595,
		0.764684, 0.438086, -0.472588,
		-0.580895, 0.786094, -0.211228,
		22.052845, 35.017052, 22.911860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.868155, 35.053585, 22.952805>,  <22.459473, 34.466785, 23.059719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.868155, 35.053585, 22.952805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.518921, 35.201088, 23.080395>,  <22.309381, 35.289589, 23.156948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.518921, 35.201088, 23.080395>,  <22.868155, 35.053585, 22.952805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.518921, 35.201088, 23.080395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460198, 0.407140, 0.788958,
		0.161063, 0.835618, -0.525167,
		-0.873084, 0.368753, 0.318975,
		22.256996, 35.311714, 23.176086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.979982, 35.779804, 23.134956>,  <22.868155, 35.053585, 22.952805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.979982, 35.779804, 23.134956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.635176, 35.667587, 23.303822>,  <22.428291, 35.600258, 23.405140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.635176, 35.667587, 23.303822>,  <22.979982, 35.779804, 23.134956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.635176, 35.667587, 23.303822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285779, 0.418880, 0.861899,
		-0.418639, 0.863616, -0.280907,
		-0.862016, -0.280547, 0.422163,
		22.376572, 35.583424, 23.430471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.681681, 36.393581, 23.488207>,  <22.979982, 35.779804, 23.134956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.681681, 36.393581, 23.488207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.539169, 36.056259, 23.649151>,  <22.453663, 35.853867, 23.745718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.539169, 36.056259, 23.649151>,  <22.681681, 36.393581, 23.488207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.539169, 36.056259, 23.649151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242172, 0.332565, 0.911457,
		-0.902450, 0.422175, 0.085739,
		-0.356281, -0.843308, 0.402362,
		22.432285, 35.803268, 23.769859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131010, 37.020149, 23.674459>,  <22.681681, 36.393581, 23.488207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131010, 37.020149, 23.674459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.739336, 37.062805, 23.743534>,  <21.504332, 37.088398, 23.784979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.739336, 37.062805, 23.743534>,  <22.131010, 37.020149, 23.674459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739336, 37.062805, 23.743534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077816, 0.588568, -0.804694,
		-0.187453, -0.801384, -0.568019,
		-0.979187, 0.106641, 0.172689,
		21.445580, 37.094799, 23.795341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.829399, 36.855885, 23.021576>,  <22.131010, 37.020149, 23.674459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.829399, 36.855885, 23.021576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.555037, 37.062016, 23.227089>,  <21.390419, 37.185692, 23.350397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.555037, 37.062016, 23.227089>,  <21.829399, 36.855885, 23.021576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555037, 37.062016, 23.227089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191475, 0.553355, -0.810639,
		-0.702046, -0.654400, -0.280878,
		-0.685907, 0.515325, 0.513782,
		21.349264, 37.216614, 23.381224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002131, 36.724571, 22.852385>,  <21.829399, 36.855885, 23.021576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002131, 36.724571, 22.852385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.036703, 37.088364, 23.015049>,  <21.057446, 37.306641, 23.112648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.036703, 37.088364, 23.015049>,  <21.002131, 36.724571, 22.852385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036703, 37.088364, 23.015049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484351, 0.395062, -0.780596,
		-0.870594, -0.129501, 0.474653,
		0.086430, 0.909481, 0.406662,
		21.062632, 37.361210, 23.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371119, 36.940353, 22.654427>,  <21.002131, 36.724571, 22.852385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371119, 36.940353, 22.654427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.596081, 37.258175, 22.745975>,  <20.731058, 37.448868, 22.800905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.596081, 37.258175, 22.745975>,  <20.371119, 36.940353, 22.654427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.596081, 37.258175, 22.745975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490744, 0.543522, -0.680995,
		-0.665485, 0.270678, 0.695603,
		0.562406, 0.794555, 0.228872,
		20.764803, 37.496540, 22.814638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.903872, 37.373562, 22.739954>,  <20.371119, 36.940353, 22.654427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.903872, 37.373562, 22.739954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.233721, 37.579193, 22.645531>,  <20.431631, 37.702572, 22.588877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.233721, 37.579193, 22.645531>,  <19.903872, 37.373562, 22.739954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233721, 37.579193, 22.645531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502582, 0.474277, -0.722823,
		-0.259629, 0.714694, 0.649465,
		0.824623, 0.514076, -0.236057,
		20.481108, 37.733418, 22.574713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647219, 38.051147, 22.591413>,  <19.903872, 37.373562, 22.739954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647219, 38.051147, 22.591413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.022125, 38.090862, 22.457745>,  <20.247070, 38.114693, 22.377542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.022125, 38.090862, 22.457745>,  <19.647219, 38.051147, 22.591413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022125, 38.090862, 22.457745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332550, 0.542247, -0.771608,
		0.104595, 0.834332, 0.541249,
		0.937268, 0.099286, -0.334173,
		20.303305, 38.120647, 22.357492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611174, 38.643688, 22.332415>,  <19.647219, 38.051147, 22.591413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611174, 38.643688, 22.332415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.949408, 38.494873, 22.179276>,  <20.152348, 38.405582, 22.087393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.949408, 38.494873, 22.179276>,  <19.611174, 38.643688, 22.332415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949408, 38.494873, 22.179276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235843, 0.383032, -0.893120,
		0.478920, 0.845501, 0.236143,
		0.845585, -0.372040, -0.382847,
		20.203083, 38.383263, 22.064421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015865, 39.209282, 22.024862>,  <19.611174, 38.643688, 22.332415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015865, 39.209282, 22.024862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.090609, 38.864334, 21.836651>,  <20.135454, 38.657364, 21.723724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.090609, 38.864334, 21.836651>,  <20.015865, 39.209282, 22.024862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090609, 38.864334, 21.836651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248491, 0.421900, -0.871925,
		0.950440, 0.279850, -0.135455,
		0.186859, -0.862372, -0.470530,
		20.146666, 38.605621, 21.695492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148321, 39.337822, 21.367905>,  <20.015865, 39.209282, 22.024862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148321, 39.337822, 21.367905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.112856, 38.942257, 21.320255>,  <20.091578, 38.704918, 21.291666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.112856, 38.942257, 21.320255>,  <20.148321, 39.337822, 21.367905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.112856, 38.942257, 21.320255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369090, 0.143697, -0.918218,
		0.925155, -0.037446, -0.377739,
		-0.088663, -0.988913, -0.119121,
		20.086256, 38.645584, 21.284519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450611, 39.204891, 20.690630>,  <20.148321, 39.337822, 21.367905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450611, 39.204891, 20.690630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.258123, 38.862473, 20.766106>,  <20.142630, 38.657021, 20.811390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.258123, 38.862473, 20.766106>,  <20.450611, 39.204891, 20.690630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.258123, 38.862473, 20.766106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375920, 0.007076, -0.926625,
		0.791903, -0.516844, -0.325212,
		-0.481222, -0.856051, 0.188688,
		20.113756, 38.605656, 20.822712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647928, 38.659164, 20.187035>,  <20.450611, 39.204891, 20.690630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647928, 38.659164, 20.187035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.280407, 38.560658, 20.310421>,  <20.059895, 38.501553, 20.384453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.280407, 38.560658, 20.310421>,  <20.647928, 38.659164, 20.187035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.280407, 38.560658, 20.310421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314061, -0.017262, -0.949246,
		0.239096, -0.969047, -0.061484,
		-0.918802, -0.246270, 0.308468,
		20.004766, 38.486778, 20.402962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477180, 38.120377, 19.806822>,  <20.647928, 38.659164, 20.187035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477180, 38.120377, 19.806822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.125309, 38.259937, 19.936085>,  <19.914186, 38.343674, 20.013643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.125309, 38.259937, 19.936085>,  <20.477180, 38.120377, 19.806822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125309, 38.259937, 19.936085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376542, -0.095932, -0.921419,
		-0.290483, -0.932237, 0.215765,
		-0.879680, 0.348901, 0.323159,
		19.861404, 38.364609, 20.033033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.029392, 37.755505, 19.439726>,  <20.477180, 38.120377, 19.806822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.029392, 37.755505, 19.439726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.811510, 38.063316, 19.573063>,  <19.680780, 38.248005, 19.653065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.811510, 38.063316, 19.573063>,  <20.029392, 37.755505, 19.439726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811510, 38.063316, 19.573063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552957, -0.030723, -0.832643,
		-0.630504, -0.637870, 0.442253,
		-0.544706, 0.769531, 0.333343,
		19.648098, 38.294174, 19.673065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403965, 37.603706, 19.290133>,  <20.029392, 37.755505, 19.439726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403965, 37.603706, 19.290133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373884, 37.999046, 19.343067>,  <19.355837, 38.236248, 19.374828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373884, 37.999046, 19.343067>,  <19.403965, 37.603706, 19.290133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373884, 37.999046, 19.343067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495984, 0.078057, -0.864816,
		-0.865069, -0.130671, 0.484335,
		-0.075200, 0.988348, 0.132336,
		19.351324, 38.295551, 19.382769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805561, 37.687340, 19.055101>,  <19.403965, 37.603706, 19.290133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805561, 37.687340, 19.055101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.946632, 38.061638, 19.055767>,  <19.031275, 38.286217, 19.056168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.946632, 38.061638, 19.055767>,  <18.805561, 37.687340, 19.055101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946632, 38.061638, 19.055767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450143, 0.171218, -0.876388,
		-0.820359, 0.308334, 0.481603,
		0.352680, 0.935743, 0.001666,
		19.052437, 38.342361, 19.056267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293339, 38.099545, 18.822943>,  <18.805561, 37.687340, 19.055101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293339, 38.099545, 18.822943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.621202, 38.314991, 18.744915>,  <18.817921, 38.444260, 18.698097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.621202, 38.314991, 18.744915>,  <18.293339, 38.099545, 18.822943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621202, 38.314991, 18.744915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399018, 0.292476, -0.869046,
		-0.411030, 0.790157, 0.454649,
		0.819657, 0.538618, -0.195071,
		18.867100, 38.476578, 18.686394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023993, 38.753685, 18.532309>,  <18.293339, 38.099545, 18.822943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023993, 38.753685, 18.532309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.404375, 38.722561, 18.412560>,  <18.632605, 38.703888, 18.340710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.404375, 38.722561, 18.412560>,  <18.023993, 38.753685, 18.532309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404375, 38.722561, 18.412560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271092, 0.256424, -0.927769,
		0.148953, 0.963427, 0.222756,
		0.950959, -0.077807, -0.299373,
		18.689663, 38.699219, 18.322748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102440, 39.304352, 18.086943>,  <18.023993, 38.753685, 18.532309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102440, 39.304352, 18.086943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.423214, 39.087925, 17.985634>,  <18.615679, 38.958069, 17.924849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.423214, 39.087925, 17.985634>,  <18.102440, 39.304352, 18.086943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423214, 39.087925, 17.985634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172567, 0.196083, -0.965284,
		0.571942, 0.817803, 0.063876,
		0.801937, -0.541064, -0.253273,
		18.663795, 38.925606, 17.909653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528130, 39.754337, 17.606047>,  <18.102440, 39.304352, 18.086943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528130, 39.754337, 17.606047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.643974, 39.377895, 17.536240>,  <18.713480, 39.152031, 17.494356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.643974, 39.377895, 17.536240>,  <18.528130, 39.754337, 17.606047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.643974, 39.377895, 17.536240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160244, 0.132083, -0.978200,
		0.943635, 0.311263, -0.112553,
		0.289611, -0.941100, -0.174516,
		18.730858, 39.095566, 17.483885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924347, 39.859001, 17.040668>,  <18.528130, 39.754337, 17.606047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924347, 39.859001, 17.040668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.826099, 39.471256, 17.041401>,  <18.767151, 39.238609, 17.041840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.826099, 39.471256, 17.041401>,  <18.924347, 39.859001, 17.040668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826099, 39.471256, 17.041401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159090, 0.038448, -0.986515,
		0.956222, -0.242599, -0.163660,
		-0.245620, -0.969365, 0.001830,
		18.752413, 39.180447, 17.041950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.129818, 39.647587, 16.396656>,  <18.924347, 39.859001, 17.040668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.129818, 39.647587, 16.396656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.918903, 39.323261, 16.498280>,  <18.792355, 39.128666, 16.559254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.918903, 39.323261, 16.498280>,  <19.129818, 39.647587, 16.396656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918903, 39.323261, 16.498280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408896, -0.019969, -0.912363,
		0.744831, -0.584961, -0.321010,
		-0.527287, -0.810816, 0.254061,
		18.760717, 39.080017, 16.574497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.378834, 27.006208, 25.093374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701962, 27.155411, 25.275932>,  <27.895838, 27.244932, 25.385468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701962, 27.155411, 25.275932>,  <27.378834, 27.006208, 25.093374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701962, 27.155411, 25.275932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353144, 0.926221, -0.131922,
		-0.471932, -0.054605, 0.879942,
		0.807818, 0.373004, 0.456397,
		27.944307, 27.267311, 25.412851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184977, 27.548729, 25.590630>,  <27.378834, 27.006208, 25.093374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184977, 27.548729, 25.590630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565741, 27.650620, 25.522537>,  <27.794199, 27.711754, 25.481682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565741, 27.650620, 25.522537>,  <27.184977, 27.548729, 25.590630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565741, 27.650620, 25.522537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258678, 0.965963, -0.001057,
		0.164167, 0.045041, 0.985404,
		0.951911, 0.254729, -0.170231,
		27.851315, 27.727037, 25.471468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291002, 28.197617, 25.957848>,  <27.184977, 27.548729, 25.590630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291002, 28.197617, 25.957848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598198, 28.195843, 25.701668>,  <27.782515, 28.194778, 25.547960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598198, 28.195843, 25.701668>,  <27.291002, 28.197617, 25.957848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598198, 28.195843, 25.701668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092975, 0.988611, -0.118335,
		0.633678, 0.150425, 0.758831,
		0.767989, -0.004434, -0.640447,
		27.828594, 28.194513, 25.509533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694592, 28.707523, 26.133413>,  <27.291002, 28.197617, 25.957848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694592, 28.707523, 26.133413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821568, 28.640247, 25.760117>,  <27.897753, 28.599882, 25.536139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821568, 28.640247, 25.760117>,  <27.694592, 28.707523, 26.133413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821568, 28.640247, 25.760117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026703, 0.982170, -0.186091,
		0.947902, 0.083993, 0.307291,
		0.317442, -0.168190, -0.933243,
		27.916800, 28.589790, 25.480145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199257, 29.209293, 25.955713>,  <27.694592, 28.707523, 26.133413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199257, 29.209293, 25.955713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037884, 29.076866, 25.614506>,  <27.941061, 28.997410, 25.409782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037884, 29.076866, 25.614506>,  <28.199257, 29.209293, 25.955713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037884, 29.076866, 25.614506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206051, 0.941175, -0.267831,
		0.891508, 0.067714, -0.447916,
		-0.403431, -0.331067, -0.853017,
		27.916855, 28.977547, 25.358601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420534, 29.791256, 25.524046>,  <28.199257, 29.209293, 25.955713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420534, 29.791256, 25.524046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176559, 29.559967, 25.307293>,  <28.030174, 29.421194, 25.177242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176559, 29.559967, 25.307293>,  <28.420534, 29.791256, 25.524046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176559, 29.559967, 25.307293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214495, 0.778742, -0.589535,
		0.762871, -0.243346, -0.599008,
		-0.609934, -0.578223, -0.541883,
		27.993578, 29.386501, 25.144730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645119, 29.793957, 24.825630>,  <28.420534, 29.791256, 25.524046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645119, 29.793957, 24.825630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249418, 29.762711, 24.875080>,  <28.011999, 29.743963, 24.904751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249418, 29.762711, 24.875080>,  <28.645119, 29.793957, 24.825630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249418, 29.762711, 24.875080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133840, 0.824256, -0.550172,
		-0.058924, -0.560803, -0.825849,
		-0.989250, -0.078113, 0.123626,
		27.952642, 29.739277, 24.912169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375259, 30.041773, 24.177776>,  <28.645119, 29.793957, 24.825630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375259, 30.041773, 24.177776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074488, 30.073425, 24.439568>,  <27.894024, 30.092417, 24.596642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074488, 30.073425, 24.439568>,  <28.375259, 30.041773, 24.177776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074488, 30.073425, 24.439568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286886, 0.854559, -0.432927,
		-0.593547, -0.513291, -0.619867,
		-0.751930, 0.079131, 0.654476,
		27.848909, 30.097164, 24.635910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734367, 30.256809, 23.799040>,  <28.375259, 30.041773, 24.177776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734367, 30.256809, 23.799040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595076, 30.340351, 24.164577>,  <27.511499, 30.390476, 24.383900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595076, 30.340351, 24.164577>,  <27.734367, 30.256809, 23.799040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595076, 30.340351, 24.164577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353834, 0.873464, -0.334458,
		-0.868065, -0.439819, -0.230267,
		-0.348230, 0.208855, 0.913846,
		27.490606, 30.403008, 24.438732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021923, 30.380787, 23.754929>,  <27.734367, 30.256809, 23.799040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021923, 30.380787, 23.754929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139845, 30.554684, 24.095303>,  <27.210598, 30.659021, 24.299526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139845, 30.554684, 24.095303>,  <27.021923, 30.380787, 23.754929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139845, 30.554684, 24.095303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348120, 0.878175, -0.328056,
		-0.889890, -0.199516, 0.410231,
		0.294802, 0.434743, 0.850935,
		27.228285, 30.685106, 24.350582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489771, 30.640532, 24.053308>,  <27.021923, 30.380787, 23.754929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489771, 30.640532, 24.053308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812019, 30.846004, 24.171360>,  <27.005369, 30.969288, 24.242191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812019, 30.846004, 24.171360>,  <26.489771, 30.640532, 24.053308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812019, 30.846004, 24.171360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301624, 0.784418, -0.541951,
		-0.509896, 0.347590, 0.786884,
		0.805623, 0.513682, 0.295130,
		27.053707, 31.000109, 24.259899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181305, 31.253744, 24.018661>,  <26.489771, 30.640532, 24.053308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181305, 31.253744, 24.018661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573055, 31.332962, 24.002659>,  <26.808105, 31.380493, 23.993057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573055, 31.332962, 24.002659>,  <26.181305, 31.253744, 24.018661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573055, 31.332962, 24.002659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187235, 0.815187, -0.548100,
		-0.075937, 0.544286, 0.835456,
		0.979376, 0.198047, -0.040007,
		26.866867, 31.392376, 23.990656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863224, 31.554939, 24.600498>,  <26.181305, 31.253744, 24.018661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863224, 31.554939, 24.600498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686487, 31.529549, 24.242561>,  <25.580444, 31.514315, 24.027800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686487, 31.529549, 24.242561>,  <25.863224, 31.554939, 24.600498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686487, 31.529549, 24.242561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881847, -0.152384, 0.446234,
		-0.164685, 0.986281, 0.011355,
		-0.441843, -0.063474, -0.894844,
		25.553934, 31.510506, 23.974108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140123, 31.965572, 24.466793>,  <25.863224, 31.554939, 24.600498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140123, 31.965572, 24.466793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153513, 31.602840, 24.298725>,  <25.161547, 31.385202, 24.197884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153513, 31.602840, 24.298725>,  <25.140123, 31.965572, 24.466793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153513, 31.602840, 24.298725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884791, -0.222395, 0.409493,
		-0.464784, 0.358054, -0.809798,
		0.033475, -0.906828, -0.420169,
		25.163555, 31.330791, 24.172674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071899, 31.807119, 25.127455>,  <25.140123, 31.965572, 24.466793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071899, 31.807119, 25.127455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898806, 32.033104, 25.408470>,  <24.794949, 32.168694, 25.577080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898806, 32.033104, 25.408470>,  <25.071899, 31.807119, 25.127455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898806, 32.033104, 25.408470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381360, -0.591407, 0.710494,
		0.816887, 0.575377, 0.040470,
		-0.432736, 0.564959, 0.702539,
		24.768986, 32.202591, 25.619232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409685, 31.947699, 25.655394>,  <25.071899, 31.807119, 25.127455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409685, 31.947699, 25.655394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056644, 31.998192, 25.836536>,  <24.844820, 32.028488, 25.945221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056644, 31.998192, 25.836536>,  <25.409685, 31.947699, 25.655394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056644, 31.998192, 25.836536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391918, -0.334435, 0.857061,
		0.259638, 0.933927, 0.245701,
		-0.882603, 0.126231, 0.452855,
		24.791864, 32.036060, 25.972393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545557, 32.141018, 26.251778>,  <25.409685, 31.947699, 25.655394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545557, 32.141018, 26.251778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163059, 32.053371, 26.329330>,  <24.933561, 32.000786, 26.375862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163059, 32.053371, 26.329330>,  <25.545557, 32.141018, 26.251778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163059, 32.053371, 26.329330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257451, -0.315355, 0.913384,
		-0.138995, 0.923331, 0.357967,
		-0.956242, -0.219115, 0.193880,
		24.876186, 31.987637, 26.387495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406727, 32.430447, 26.930698>,  <25.545557, 32.141018, 26.251778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406727, 32.430447, 26.930698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139585, 32.135998, 26.886715>,  <24.979301, 31.959328, 26.860325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139585, 32.135998, 26.886715>,  <25.406727, 32.430447, 26.930698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139585, 32.135998, 26.886715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155908, -0.282819, 0.946418,
		-0.727781, 0.614925, 0.303649,
		-0.667853, -0.736125, -0.109958,
		24.939230, 31.915159, 26.853727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943609, 32.490036, 27.508284>,  <25.406727, 32.430447, 26.930698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943609, 32.490036, 27.508284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906868, 32.112602, 27.381031>,  <24.884823, 31.886141, 27.304680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906868, 32.112602, 27.381031>,  <24.943609, 32.490036, 27.508284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906868, 32.112602, 27.381031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011756, -0.318434, 0.947872,
		-0.995703, 0.090806, 0.018157,
		-0.091854, -0.943586, -0.318133,
		24.879313, 31.829527, 27.285591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581270, 32.089260, 28.047079>,  <24.943609, 32.490036, 27.508284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581270, 32.089260, 28.047079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752796, 31.782936, 27.855392>,  <24.855711, 31.599140, 27.740381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752796, 31.782936, 27.855392>,  <24.581270, 32.089260, 28.047079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752796, 31.782936, 27.855392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200097, -0.436771, 0.877036,
		-0.880954, -0.471975, -0.034057,
		0.428814, -0.765814, -0.479216,
		24.881441, 31.553192, 27.711628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535522, 31.606777, 28.588797>,  <24.581270, 32.089260, 28.047079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535522, 31.606777, 28.588797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789848, 31.451462, 28.321972>,  <24.942444, 31.358273, 28.161877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789848, 31.451462, 28.321972>,  <24.535522, 31.606777, 28.588797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789848, 31.451462, 28.321972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466375, -0.495366, 0.732876,
		-0.615007, -0.777074, -0.133873,
		0.635815, -0.388289, -0.667062,
		24.980593, 31.334974, 28.121853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596254, 30.934437, 28.749428>,  <24.535522, 31.606777, 28.588797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596254, 30.934437, 28.749428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928019, 31.028324, 28.546654>,  <25.127077, 31.084656, 28.424990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928019, 31.028324, 28.546654>,  <24.596254, 30.934437, 28.749428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928019, 31.028324, 28.546654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558424, -0.373451, 0.740741,
		-0.015451, -0.897465, -0.440816,
		0.829412, 0.234716, -0.506936,
		25.176842, 31.098740, 28.394573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025938, 30.275482, 28.772236>,  <24.596254, 30.934437, 28.749428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025938, 30.275482, 28.772236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278780, 30.562012, 28.654034>,  <25.430485, 30.733929, 28.583113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278780, 30.562012, 28.654034>,  <25.025938, 30.275482, 28.772236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278780, 30.562012, 28.654034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718316, -0.398647, 0.570177,
		0.290628, -0.572679, -0.766534,
		0.632105, 0.716323, -0.295506,
		25.468412, 30.776909, 28.565382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617521, 29.974119, 28.441216>,  <25.025938, 30.275482, 28.772236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617521, 29.974119, 28.441216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736839, 30.318825, 28.605354>,  <25.808430, 30.525648, 28.703838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736839, 30.318825, 28.605354>,  <25.617521, 29.974119, 28.441216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736839, 30.318825, 28.605354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732338, -0.482360, 0.480634,
		0.612129, 0.157144, -0.774987,
		0.298294, 0.861762, 0.410349,
		25.826328, 30.577354, 28.728458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373833, 29.961481, 28.440159>,  <25.617521, 29.974119, 28.441216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373833, 29.961481, 28.440159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291351, 30.253613, 28.700649>,  <26.241861, 30.428892, 28.856943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291351, 30.253613, 28.700649>,  <26.373833, 29.961481, 28.440159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291351, 30.253613, 28.700649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681524, -0.370367, 0.631152,
		0.702143, 0.573974, -0.421366,
		-0.206205, 0.730330, 0.651228,
		26.229490, 30.472712, 28.896017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058060, 30.198938, 28.502985>,  <26.373833, 29.961481, 28.440159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058060, 30.198938, 28.502985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823339, 30.327232, 28.800385>,  <26.682507, 30.404209, 28.978825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823339, 30.327232, 28.800385>,  <27.058060, 30.198938, 28.502985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823339, 30.327232, 28.800385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545510, -0.521977, 0.655713,
		0.598401, 0.790360, 0.131333,
		-0.586801, 0.320735, 0.743500,
		26.647299, 30.423452, 29.023436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513327, 30.428225, 29.051125>,  <27.058060, 30.198938, 28.502985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513327, 30.428225, 29.051125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160715, 30.313763, 29.201336>,  <26.949148, 30.245087, 29.291462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160715, 30.313763, 29.201336>,  <27.513327, 30.428225, 29.051125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160715, 30.313763, 29.201336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464303, -0.669638, 0.579662,
		0.085596, 0.685348, 0.723167,
		-0.881530, -0.286152, 0.375528,
		26.896255, 30.227917, 29.313993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523132, 30.557631, 29.751293>,  <27.513327, 30.428225, 29.051125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523132, 30.557631, 29.751293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287651, 30.249146, 29.654415>,  <27.146362, 30.064054, 29.596289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287651, 30.249146, 29.654415>,  <27.523132, 30.557631, 29.751293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287651, 30.249146, 29.654415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530128, -0.594530, 0.604565,
		-0.610241, 0.227516, 0.758843,
		-0.588703, -0.771214, -0.242194,
		27.111040, 30.017782, 29.581757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520193, 31.074451, 30.334982>,  <27.523132, 30.557631, 29.751293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520193, 31.074451, 30.334982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879623, 31.094425, 30.509369>,  <28.095282, 31.106409, 30.614000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879623, 31.094425, 30.509369>,  <27.520193, 31.074451, 30.334982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879623, 31.094425, 30.509369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122036, 0.925874, -0.357582,
		-0.421505, 0.374519, 0.825875,
		0.898577, 0.049936, 0.435966,
		28.149197, 31.109406, 30.640158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646955, 31.719151, 30.672001>,  <27.520193, 31.074451, 30.334982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646955, 31.719151, 30.672001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020262, 31.588299, 30.612671>,  <28.244246, 31.509789, 30.577072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020262, 31.588299, 30.612671>,  <27.646955, 31.719151, 30.672001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020262, 31.588299, 30.612671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187252, 0.795512, -0.576279,
		0.306511, 0.510047, 0.803680,
		0.933267, -0.327127, -0.148326,
		28.300241, 31.490160, 30.568172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183275, 32.267262, 30.930822>,  <27.646955, 31.719151, 30.672001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183275, 32.267262, 30.930822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340929, 32.037395, 30.643932>,  <28.435522, 31.899475, 30.471798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340929, 32.037395, 30.643932>,  <28.183275, 32.267262, 30.930822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340929, 32.037395, 30.643932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354278, 0.815086, -0.458391,
		0.848023, -0.073428, 0.524848,
		0.394137, -0.574668, -0.717226,
		28.459169, 31.864994, 30.428764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686974, 32.669441, 30.659752>,  <28.183275, 32.267262, 30.930822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686974, 32.669441, 30.659752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675404, 32.390034, 30.373749>,  <28.668463, 32.222389, 30.202147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675404, 32.390034, 30.373749>,  <28.686974, 32.669441, 30.659752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675404, 32.390034, 30.373749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491002, 0.613136, -0.618854,
		0.870678, -0.368971, 0.325239,
		-0.028924, -0.698516, -0.715010,
		28.666727, 32.180477, 30.159246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350319, 32.569973, 30.399422>,  <28.686974, 32.669441, 30.659752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350319, 32.569973, 30.399422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090635, 32.458786, 30.116222>,  <28.934824, 32.392075, 29.946302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090635, 32.458786, 30.116222>,  <29.350319, 32.569973, 30.399422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090635, 32.458786, 30.116222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443392, 0.618003, -0.649211,
		0.618003, -0.735395, -0.277967,
		0.649211, 0.277967, 0.707997,
		28.895872, 32.375397, 29.903824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771389, 32.734577, 29.872623>,  <29.350319, 32.569973, 30.399422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771389, 32.734577, 29.872623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400351, 32.697937, 29.727749>,  <29.177729, 32.675953, 29.640823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400351, 32.697937, 29.727749>,  <29.771389, 32.734577, 29.872623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400351, 32.697937, 29.727749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202202, 0.692109, -0.692892,
		0.314139, -0.715958, -0.623475,
		-0.927594, -0.091596, -0.362187,
		29.122072, 32.670460, 29.619093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846819, 32.526104, 29.200514>,  <29.771389, 32.734577, 29.872623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846819, 32.526104, 29.200514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481453, 32.688721, 29.208488>,  <29.262234, 32.786289, 29.213274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481453, 32.688721, 29.208488>,  <29.846819, 32.526104, 29.200514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481453, 32.688721, 29.208488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236681, 0.570347, -0.786566,
		-0.331142, -0.713742, -0.617184,
		-0.913415, 0.406541, 0.019936,
		29.207428, 32.810684, 29.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635111, 32.663979, 28.517981>,  <29.846819, 32.526104, 29.200514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635111, 32.663979, 28.517981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356819, 32.884182, 28.702545>,  <29.189844, 33.016304, 28.813284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356819, 32.884182, 28.702545>,  <29.635111, 32.663979, 28.517981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356819, 32.884182, 28.702545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138287, 0.732995, -0.666029,
		-0.704867, -0.399569, -0.586095,
		-0.695729, 0.550511, 0.461409,
		29.148100, 33.049335, 28.840967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179012, 32.875523, 27.941460>,  <29.635111, 32.663979, 28.517981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179012, 32.875523, 27.941460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136269, 33.145996, 28.233036>,  <29.110622, 33.308281, 28.407982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136269, 33.145996, 28.233036>,  <29.179012, 32.875523, 27.941460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136269, 33.145996, 28.233036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083619, 0.736653, -0.671082,
		-0.990752, -0.010758, -0.135259,
		-0.106858, 0.676186, 0.728940,
		29.104212, 33.348850, 28.451717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613956, 33.388882, 27.787134>,  <29.179012, 32.875523, 27.941460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613956, 33.388882, 27.787134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865587, 33.559532, 28.047058>,  <29.016565, 33.661922, 28.203012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865587, 33.559532, 28.047058>,  <28.613956, 33.388882, 27.787134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865587, 33.559532, 28.047058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121173, 0.771899, -0.624091,
		-0.767839, 0.471341, 0.433890,
		0.629079, 0.426625, 0.649808,
		29.054312, 33.687519, 28.242001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340824, 34.091255, 27.916162>,  <28.613956, 33.388882, 27.787134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340824, 34.091255, 27.916162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717144, 34.124851, 28.047520>,  <28.942936, 34.145008, 28.126335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717144, 34.124851, 28.047520>,  <28.340824, 34.091255, 27.916162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717144, 34.124851, 28.047520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087998, 0.875083, -0.475905,
		-0.327343, 0.476629, 0.815887,
		0.940799, 0.083988, 0.328395,
		28.999384, 34.150047, 28.146038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391075, 34.756256, 28.248175>,  <28.340824, 34.091255, 27.916162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391075, 34.756256, 28.248175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767895, 34.688034, 28.132622>,  <28.993986, 34.647102, 28.063290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767895, 34.688034, 28.132622>,  <28.391075, 34.756256, 28.248175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767895, 34.688034, 28.132622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032384, 0.903330, -0.427723,
		0.333906, 0.393581, 0.856505,
		0.942050, -0.170556, -0.288881,
		29.050510, 34.636868, 28.045958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.790134, 28.385181, 33.159088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.161976, 28.415154, 33.014744>,  <28.385080, 28.433138, 32.928135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.161976, 28.415154, 33.014744>,  <27.790134, 28.385181, 33.159088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161976, 28.415154, 33.014744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074735, 0.997098, 0.014524,
		0.360905, 0.013468, 0.932506,
		0.929604, 0.074932, -0.360864,
		28.440857, 28.437634, 32.906487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082666, 28.937284, 33.496807>,  <27.790134, 28.385181, 33.159088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082666, 28.937284, 33.496807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.314672, 28.876095, 33.176762>,  <28.453876, 28.839382, 32.984734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.314672, 28.876095, 33.176762>,  <28.082666, 28.937284, 33.496807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314672, 28.876095, 33.176762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136627, 0.950028, -0.280677,
		0.803066, 0.272114, 0.530131,
		0.580015, -0.152972, -0.800114,
		28.488678, 28.830204, 32.936726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471710, 29.580521, 33.469318>,  <28.082666, 28.937284, 33.496807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471710, 29.580521, 33.469318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.522802, 29.402134, 33.114964>,  <28.553457, 29.295101, 32.902351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.522802, 29.402134, 33.114964>,  <28.471710, 29.580521, 33.469318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522802, 29.402134, 33.114964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120957, 0.893542, -0.432380,
		0.984406, -0.051925, 0.168076,
		0.127732, -0.445967, -0.885888,
		28.561121, 29.268343, 32.849197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851276, 29.998508, 33.171307>,  <28.471710, 29.580521, 33.469318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851276, 29.998508, 33.171307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.722145, 29.795273, 32.851902>,  <28.644667, 29.673332, 32.660259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.722145, 29.795273, 32.851902>,  <28.851276, 29.998508, 33.171307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722145, 29.795273, 32.851902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166268, 0.800123, -0.576331,
		0.931739, -0.318823, -0.173823,
		-0.322828, -0.508089, -0.798516,
		28.625298, 29.642847, 32.612347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303284, 30.169409, 32.636021>,  <28.851276, 29.998508, 33.171307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303284, 30.169409, 32.636021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004679, 30.006557, 32.425510>,  <28.825516, 29.908848, 32.299202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004679, 30.006557, 32.425510>,  <29.303284, 30.169409, 32.636021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004679, 30.006557, 32.425510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255555, 0.554851, -0.791727,
		0.614342, -0.725525, -0.310157,
		-0.746509, -0.407129, -0.526280,
		28.780725, 29.884418, 32.267628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582657, 30.042780, 31.852858>,  <29.303284, 30.169409, 32.636021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582657, 30.042780, 31.852858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.183163, 30.026756, 31.840687>,  <28.943466, 30.017141, 31.833384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.183163, 30.026756, 31.840687>,  <29.582657, 30.042780, 31.852858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183163, 30.026756, 31.840687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002333, 0.641084, -0.767467,
		0.050249, -0.766424, -0.640366,
		-0.998734, -0.040059, -0.030426,
		28.883543, 30.014738, 31.831558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415104, 29.883591, 31.154556>,  <29.582657, 30.042780, 31.852858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415104, 29.883591, 31.154556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.114458, 30.076820, 31.334209>,  <28.934071, 30.192759, 31.442001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.114458, 30.076820, 31.334209>,  <29.415104, 29.883591, 31.154556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114458, 30.076820, 31.334209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038403, 0.711802, -0.701329,
		-0.658486, -0.509880, -0.553551,
		-0.751613, 0.483073, 0.449131,
		28.888975, 30.221743, 31.468948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707972, 29.791719, 30.690151>,  <29.415104, 29.883591, 31.154556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707972, 29.791719, 30.690151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.687550, 30.109020, 30.932850>,  <28.675297, 30.299400, 31.078470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.687550, 30.109020, 30.932850>,  <28.707972, 29.791719, 30.690151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687550, 30.109020, 30.932850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121952, 0.598042, -0.792132,
		-0.991222, -0.114437, 0.066205,
		-0.051056, 0.793252, 0.606748,
		28.672234, 30.346996, 31.114874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194963, 30.233253, 30.452101>,  <28.707972, 29.791719, 30.690151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194963, 30.233253, 30.452101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.403318, 30.492352, 30.674488>,  <28.528332, 30.647810, 30.807920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.403318, 30.492352, 30.674488>,  <28.194963, 30.233253, 30.452101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403318, 30.492352, 30.674488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121143, 0.700802, -0.702994,
		-0.844985, 0.298830, 0.443510,
		0.520889, 0.647747, 0.555966,
		28.559586, 30.686676, 30.841278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558741, 29.886280, 30.454144>,  <28.194963, 30.233253, 30.452101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558741, 29.886280, 30.454144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.361444, 29.714863, 30.151340>,  <27.243067, 29.612013, 29.969658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.361444, 29.714863, 30.151340>,  <27.558741, 29.886280, 30.454144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361444, 29.714863, 30.151340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197020, -0.902653, 0.382623,
		-0.847287, 0.039580, 0.529659,
		-0.493243, -0.428544, -0.757008,
		27.213472, 29.586300, 29.924238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197758, 29.389145, 30.677351>,  <27.558741, 29.886280, 30.454144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197758, 29.389145, 30.677351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.154730, 29.259186, 30.301506>,  <27.128912, 29.181210, 30.075998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.154730, 29.259186, 30.301506>,  <27.197758, 29.389145, 30.677351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154730, 29.259186, 30.301506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072132, -0.945155, 0.318556,
		-0.991577, -0.033509, 0.125107,
		-0.107571, -0.324897, -0.939612,
		27.122459, 29.161716, 30.019623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692940, 28.877190, 30.720016>,  <27.197758, 29.389145, 30.677351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692940, 28.877190, 30.720016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.898630, 28.805481, 30.384533>,  <27.022045, 28.762455, 30.183243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.898630, 28.805481, 30.384533>,  <26.692940, 28.877190, 30.720016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898630, 28.805481, 30.384533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050296, -0.982531, 0.179175,
		-0.856177, -0.049953, -0.514262,
		0.514228, -0.179271, -0.838708,
		27.052898, 28.751699, 30.132921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303944, 28.337908, 30.354193>,  <26.692940, 28.877190, 30.720016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303944, 28.337908, 30.354193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.672525, 28.324566, 30.199371>,  <26.893675, 28.316561, 30.106478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.672525, 28.324566, 30.199371>,  <26.303944, 28.337908, 30.354193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672525, 28.324566, 30.199371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023652, -0.989643, 0.141591,
		-0.387769, -0.139623, -0.911121,
		0.921453, -0.033355, -0.387055,
		26.948961, 28.314560, 30.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249445, 27.810228, 29.983324>,  <26.303944, 28.337908, 30.354193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249445, 27.810228, 29.983324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.646076, 27.841419, 30.024685>,  <26.884054, 27.860134, 30.049501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.646076, 27.841419, 30.024685>,  <26.249445, 27.810228, 29.983324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646076, 27.841419, 30.024685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054189, -0.974978, 0.215598,
		0.117627, -0.208179, -0.970992,
		0.991578, 0.077978, 0.103403,
		26.943550, 27.864813, 30.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522821, 27.249838, 29.676069>,  <26.249445, 27.810228, 29.983324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522821, 27.249838, 29.676069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.804207, 27.380695, 29.928455>,  <26.973038, 27.459209, 30.079887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.804207, 27.380695, 29.928455>,  <26.522821, 27.249838, 29.676069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804207, 27.380695, 29.928455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275494, -0.943872, 0.182233,
		0.655167, 0.045634, -0.754105,
		0.703462, 0.327144, 0.630965,
		27.015245, 27.478838, 30.117744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153997, 26.751074, 29.522327>,  <26.522821, 27.249838, 29.676069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153997, 26.751074, 29.522327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.228485, 26.909367, 29.882042>,  <27.273178, 27.004343, 30.097872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.228485, 26.909367, 29.882042>,  <27.153997, 26.751074, 29.522327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228485, 26.909367, 29.882042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266329, -0.901361, 0.341494,
		0.945722, 0.175913, -0.273247,
		0.186221, 0.395732, 0.899288,
		27.284351, 27.028086, 30.151829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821743, 26.547277, 29.723013>,  <27.153997, 26.751074, 29.522327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821743, 26.547277, 29.723013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.596699, 26.626724, 30.044018>,  <27.461672, 26.674393, 30.236620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.596699, 26.626724, 30.044018>,  <27.821743, 26.547277, 29.723013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596699, 26.626724, 30.044018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257700, -0.880216, 0.398510,
		0.785533, 0.431012, 0.444035,
		-0.562609, 0.198615, 0.802511,
		27.427916, 26.686308, 30.284771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159458, 26.050543, 30.163553>,  <27.821743, 26.547277, 29.723013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159458, 26.050543, 30.163553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.844641, 26.181793, 30.372513>,  <27.655750, 26.260544, 30.497889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.844641, 26.181793, 30.372513>,  <28.159458, 26.050543, 30.163553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844641, 26.181793, 30.372513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079337, -0.785941, 0.613190,
		0.611776, 0.524052, 0.592537,
		-0.787042, 0.328125, 0.522397,
		27.608528, 26.280231, 30.529232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308006, 26.083525, 30.807299>,  <28.159458, 26.050543, 30.163553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308006, 26.083525, 30.807299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.912474, 26.038975, 30.767677>,  <27.675154, 26.012245, 30.743904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.912474, 26.038975, 30.767677>,  <28.308006, 26.083525, 30.807299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912474, 26.038975, 30.767677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038556, -0.833074, 0.551816,
		-0.143977, 0.541833, 0.828063,
		-0.988830, -0.111376, -0.099052,
		27.615826, 26.005562, 30.737961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098255, 25.961430, 31.440916>,  <28.308006, 26.083525, 30.807299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098255, 25.961430, 31.440916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.827023, 25.810337, 31.188717>,  <27.664284, 25.719683, 31.037397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.827023, 25.810337, 31.188717>,  <28.098255, 25.961430, 31.440916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827023, 25.810337, 31.188717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015913, -0.865177, 0.501214,
		-0.734815, 0.329831, 0.592672,
		-0.678081, -0.377730, -0.630496,
		27.623598, 25.697018, 30.999569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753893, 25.539976, 31.919167>,  <28.098255, 25.961430, 31.440916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753893, 25.539976, 31.919167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.595749, 25.428139, 31.569191>,  <27.500862, 25.361036, 31.359205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.595749, 25.428139, 31.569191>,  <27.753893, 25.539976, 31.919167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595749, 25.428139, 31.569191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171017, -0.958297, 0.228953,
		-0.902466, -0.059111, 0.426686,
		-0.395358, -0.279593, -0.874940,
		27.477142, 25.344261, 31.306709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374502, 24.978209, 32.088322>,  <27.753893, 25.539976, 31.919167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374502, 24.978209, 32.088322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.435476, 24.941338, 31.694721>,  <27.472061, 24.919214, 31.458559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.435476, 24.941338, 31.694721>,  <27.374502, 24.978209, 32.088322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435476, 24.941338, 31.694721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134806, -0.984396, 0.113099,
		-0.979077, -0.149890, -0.137631,
		0.152436, -0.092179, -0.984005,
		27.481207, 24.913683, 31.399519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889259, 24.508123, 31.879807>,  <27.374502, 24.978209, 32.088322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889259, 24.508123, 31.879807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.200638, 24.511154, 31.628742>,  <27.387465, 24.512972, 31.478104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.200638, 24.511154, 31.628742>,  <26.889259, 24.508123, 31.879807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200638, 24.511154, 31.628742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095235, -0.989777, 0.106168,
		-0.620442, -0.142422, -0.771211,
		0.778448, 0.007575, -0.627663,
		27.434172, 24.513426, 31.440443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.012871, 25.748848, 30.690275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612900, 25.753582, 30.689499>,  <33.372917, 25.756422, 30.689034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612900, 25.753582, 30.689499>,  <34.012871, 25.748848, 30.690275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612900, 25.753582, 30.689499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006326, 0.383171, -0.923656,
		-0.010187, -0.923602, -0.383218,
		-0.999928, 0.011834, -0.001939,
		33.312920, 25.757132, 30.688917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743130, 25.474016, 30.095112>,  <34.012871, 25.748848, 30.690275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743130, 25.474016, 30.095112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.435810, 25.697697, 30.219696>,  <33.251419, 25.831905, 30.294447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.435810, 25.697697, 30.219696>,  <33.743130, 25.474016, 30.095112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435810, 25.697697, 30.219696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131371, 0.338472, -0.931761,
		-0.626461, -0.756791, -0.186586,
		-0.768302, 0.559200, 0.311460,
		33.205318, 25.865458, 30.313133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440155, 25.463377, 29.475279>,  <33.743130, 25.474016, 30.095112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440155, 25.463377, 29.475279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198364, 25.720337, 29.663715>,  <33.053288, 25.874512, 29.776777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198364, 25.720337, 29.663715>,  <33.440155, 25.463377, 29.475279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198364, 25.720337, 29.663715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186098, 0.461128, -0.867599,
		-0.774578, -0.612116, -0.159193,
		-0.604480, 0.642398, 0.471093,
		33.017021, 25.913055, 29.805044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725471, 25.445850, 29.144291>,  <33.440155, 25.463377, 29.475279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725471, 25.445850, 29.144291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782257, 25.798668, 29.324001>,  <32.816330, 26.010359, 29.431828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782257, 25.798668, 29.324001>,  <32.725471, 25.445850, 29.144291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782257, 25.798668, 29.324001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266206, 0.471171, -0.840912,
		-0.953405, -0.000221, 0.301694,
		0.141963, 0.882042, 0.449276,
		32.824844, 26.063280, 29.458784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149876, 25.868877, 29.014870>,  <32.725471, 25.445850, 29.144291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149876, 25.868877, 29.014870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452980, 26.113037, 29.107143>,  <32.634842, 26.259533, 29.162508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452980, 26.113037, 29.107143>,  <32.149876, 25.868877, 29.014870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452980, 26.113037, 29.107143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258911, 0.605747, -0.752353,
		-0.598971, 0.510376, 0.617049,
		0.757759, 0.610399, 0.230683,
		32.680309, 26.296156, 29.176348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925856, 26.504198, 28.722822>,  <32.149876, 25.868877, 29.014870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925856, 26.504198, 28.722822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320671, 26.540653, 28.775665>,  <32.557560, 26.562527, 28.807371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320671, 26.540653, 28.775665>,  <31.925856, 26.504198, 28.722822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320671, 26.540653, 28.775665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042705, 0.644306, -0.763575,
		-0.154709, 0.759318, 0.632062,
		0.987037, 0.091140, 0.132107,
		32.616783, 26.567995, 28.815298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077110, 27.251245, 28.824715>,  <31.925856, 26.504198, 28.722822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077110, 27.251245, 28.824715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411575, 27.073055, 28.696728>,  <32.612255, 26.966141, 28.619936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411575, 27.073055, 28.696728>,  <32.077110, 27.251245, 28.824715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411575, 27.073055, 28.696728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076425, 0.672314, -0.736310,
		0.543125, 0.591225, 0.596212,
		0.836167, -0.445474, -0.319966,
		32.662426, 26.939413, 28.600739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486942, 27.849979, 28.661306>,  <32.077110, 27.251245, 28.824715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486942, 27.849979, 28.661306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676128, 27.539955, 28.493694>,  <32.789642, 27.353941, 28.393127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676128, 27.539955, 28.493694>,  <32.486942, 27.849979, 28.661306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676128, 27.539955, 28.493694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322870, 0.594965, -0.736051,
		0.819790, 0.212837, 0.531643,
		0.472968, -0.775059, -0.419028,
		32.818020, 27.307438, 28.367987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124935, 28.210276, 28.379236>,  <32.486942, 27.849979, 28.661306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124935, 28.210276, 28.379236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058270, 27.855335, 28.207268>,  <33.018269, 27.642370, 28.104088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058270, 27.855335, 28.207268>,  <33.124935, 28.210276, 28.379236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058270, 27.855335, 28.207268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213265, 0.393256, -0.894353,
		0.962674, -0.240742, 0.123700,
		-0.166663, -0.887352, -0.429919,
		33.008270, 27.589130, 28.078293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739426, 28.148159, 28.035601>,  <33.124935, 28.210276, 28.379236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739426, 28.148159, 28.035601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461311, 27.917233, 27.864357>,  <33.294441, 27.778677, 27.761610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.461311, 27.917233, 27.864357>,  <33.739426, 28.148159, 28.035601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461311, 27.917233, 27.864357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064118, 0.543452, -0.836988,
		0.715864, -0.609398, -0.340840,
		-0.695289, -0.577316, -0.428111,
		33.252724, 27.744038, 27.735924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957092, 28.126225, 27.377604>,  <33.739426, 28.148159, 28.035601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957092, 28.126225, 27.377604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590019, 27.973694, 27.332966>,  <33.369778, 27.882175, 27.306183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590019, 27.973694, 27.332966>,  <33.957092, 28.126225, 27.377604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590019, 27.973694, 27.332966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023344, 0.332128, -0.942945,
		0.396637, -0.862716, -0.313689,
		-0.917679, -0.381329, -0.111595,
		33.314716, 27.859297, 27.299488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865242, 27.828430, 26.669485>,  <33.957092, 28.126225, 27.377604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865242, 27.828430, 26.669485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493252, 27.916100, 26.787537>,  <33.270058, 27.968700, 26.858368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493252, 27.916100, 26.787537>,  <33.865242, 27.828430, 26.669485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493252, 27.916100, 26.787537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080647, 0.661634, -0.745478,
		-0.358657, -0.717080, -0.597630,
		-0.929979, 0.219174, 0.295130,
		33.214256, 27.981852, 26.876076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399460, 27.823748, 26.095707>,  <33.865242, 27.828430, 26.669485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399460, 27.823748, 26.095707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224426, 28.058018, 26.368618>,  <33.119404, 28.198580, 26.532364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224426, 28.058018, 26.368618>,  <33.399460, 27.823748, 26.095707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224426, 28.058018, 26.368618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148029, 0.701506, -0.697121,
		-0.886908, -0.406047, -0.220273,
		-0.437586, 0.585675, 0.682278,
		33.093151, 28.233721, 26.573301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966759, 28.149950, 25.709549>,  <33.399460, 27.823748, 26.095707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966759, 28.149950, 25.709549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949490, 28.377529, 26.038044>,  <32.939129, 28.514076, 26.235142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949490, 28.377529, 26.038044>,  <32.966759, 28.149950, 25.709549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949490, 28.377529, 26.038044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145190, 0.809706, -0.568592,
		-0.988461, -0.143785, 0.047645,
		-0.043176, 0.568949, 0.821239,
		32.936535, 28.548214, 26.284416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148182, 28.001720, 25.871801>,  <32.966759, 28.149950, 25.709549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148182, 28.001720, 25.871801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112450, 27.873295, 25.494667>,  <32.091011, 27.796240, 25.268387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112450, 27.873295, 25.494667>,  <32.148182, 28.001720, 25.871801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112450, 27.873295, 25.494667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447486, -0.858638, 0.249995,
		-0.889819, -0.399574, 0.220370,
		-0.089326, -0.321062, -0.942836,
		32.085651, 27.776976, 25.211817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038727, 27.370993, 25.945444>,  <32.148182, 28.001720, 25.871801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038727, 27.370993, 25.945444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.124687, 27.340996, 25.555943>,  <32.176262, 27.322998, 25.322243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.124687, 27.340996, 25.555943>,  <32.038727, 27.370993, 25.945444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124687, 27.340996, 25.555943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284954, -0.948849, 0.135964,
		-0.934141, -0.306693, -0.182537,
		0.214899, -0.074994, -0.973753,
		32.189156, 27.318497, 25.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649845, 26.818829, 25.637459>,  <32.038727, 27.370993, 25.945444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649845, 26.818829, 25.637459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975573, 26.884274, 25.414707>,  <32.171009, 26.923540, 25.281057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975573, 26.884274, 25.414707>,  <31.649845, 26.818829, 25.637459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975573, 26.884274, 25.414707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210370, -0.977408, 0.020461,
		-0.540949, -0.133812, -0.830342,
		0.814321, 0.163611, -0.556878,
		32.219868, 26.933357, 25.247644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685457, 26.269682, 25.095306>,  <31.649845, 26.818829, 25.637459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685457, 26.269682, 25.095306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051964, 26.423759, 25.139271>,  <32.271866, 26.516207, 25.165649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051964, 26.423759, 25.139271>,  <31.685457, 26.269682, 25.095306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051964, 26.423759, 25.139271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305374, -0.849279, 0.430664,
		0.259236, -0.361039, -0.895795,
		0.916266, 0.385196, 0.109912,
		32.326843, 26.539318, 25.172245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199680, 25.716446, 24.840111>,  <31.685457, 26.269682, 25.095306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199680, 25.716446, 24.840111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357105, 25.960464, 25.115196>,  <32.451561, 26.106876, 25.280247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357105, 25.960464, 25.115196>,  <32.199680, 25.716446, 24.840111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357105, 25.960464, 25.115196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382012, -0.788966, 0.481247,
		0.836166, 0.073313, -0.543555,
		0.393565, 0.610047, 0.687713,
		32.475174, 26.143478, 25.321510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761345, 25.410263, 24.882357>,  <32.199680, 25.716446, 24.840111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761345, 25.410263, 24.882357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.765926, 25.627117, 25.218441>,  <32.768673, 25.757231, 25.420092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.765926, 25.627117, 25.218441>,  <32.761345, 25.410263, 24.882357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765926, 25.627117, 25.218441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191142, -0.825960, 0.530335,
		0.981495, 0.154527, -0.113084,
		0.011452, 0.542137, 0.840212,
		32.769363, 25.789759, 25.470505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366531, 25.054226, 25.306110>,  <32.761345, 25.410263, 24.882357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366531, 25.054226, 25.306110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.192146, 25.300838, 25.568356>,  <33.087517, 25.448807, 25.725702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.192146, 25.300838, 25.568356>,  <33.366531, 25.054226, 25.306110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192146, 25.300838, 25.568356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016099, -0.723027, 0.690632,
		0.899822, 0.311643, 0.305286,
		-0.435961, 0.616531, 0.655612,
		33.061359, 25.485798, 25.765039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723286, 24.985428, 25.932932>,  <33.366531, 25.054226, 25.306110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723286, 24.985428, 25.932932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.382317, 25.156624, 26.053066>,  <33.177734, 25.259342, 26.125147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.382317, 25.156624, 26.053066>,  <33.723286, 24.985428, 25.932932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382317, 25.156624, 26.053066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084460, -0.454156, 0.886910,
		0.515989, 0.781387, 0.350984,
		-0.852421, 0.427992, 0.300335,
		33.126591, 25.285021, 26.143167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886692, 25.269382, 26.610437>,  <33.723286, 24.985428, 25.932932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886692, 25.269382, 26.610437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494434, 25.198563, 26.577000>,  <33.259079, 25.156071, 26.556936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494434, 25.198563, 26.577000>,  <33.886692, 25.269382, 26.610437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494434, 25.198563, 26.577000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007825, -0.462059, 0.886815,
		-0.195638, 0.868996, 0.454501,
		-0.980645, -0.177051, -0.083596,
		33.200241, 25.145447, 26.551920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565643, 25.418736, 27.296328>,  <33.886692, 25.269382, 26.610437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565643, 25.418736, 27.296328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281857, 25.203205, 27.114639>,  <33.111584, 25.073887, 27.005627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281857, 25.203205, 27.114639>,  <33.565643, 25.418736, 27.296328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281857, 25.203205, 27.114639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133818, -0.529798, 0.837500,
		-0.691914, 0.654964, 0.303771,
		-0.709470, -0.538828, -0.454220,
		33.069016, 25.041557, 26.978373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943764, 25.571558, 27.672962>,  <33.565643, 25.418736, 27.296328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943764, 25.571558, 27.672962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916920, 25.215382, 27.492912>,  <32.900814, 25.001677, 27.384882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916920, 25.215382, 27.492912>,  <32.943764, 25.571558, 27.672962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916920, 25.215382, 27.492912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302868, -0.411674, 0.859532,
		-0.950666, 0.194016, -0.242056,
		-0.067115, -0.890439, -0.450126,
		32.896786, 24.948250, 27.357874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294952, 25.263620, 27.829220>,  <32.943764, 25.571558, 27.672962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294952, 25.263620, 27.829220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522591, 24.946117, 27.743351>,  <32.659172, 24.755615, 27.691830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522591, 24.946117, 27.743351>,  <32.294952, 25.263620, 27.829220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522591, 24.946117, 27.743351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296691, -0.441702, 0.846684,
		-0.766881, -0.418153, -0.486870,
		0.569095, -0.793755, -0.214670,
		32.693317, 24.707991, 27.678949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843470, 24.767170, 28.039043>,  <32.294952, 25.263620, 27.829220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843470, 24.767170, 28.039043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209473, 24.605808, 28.037117>,  <32.429073, 24.508991, 28.035961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209473, 24.605808, 28.037117>,  <31.843470, 24.767170, 28.039043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209473, 24.605808, 28.037117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206078, -0.477629, 0.854051,
		-0.346828, -0.780472, -0.520168,
		0.915010, -0.403404, -0.004817,
		32.483974, 24.484787, 28.035671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673059, 24.020668, 28.159172>,  <31.843470, 24.767170, 28.039043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673059, 24.020668, 28.159172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.060101, 24.071926, 28.246189>,  <32.292324, 24.102682, 28.298399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.060101, 24.071926, 28.246189>,  <31.673059, 24.020668, 28.159172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060101, 24.071926, 28.246189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068534, -0.695969, 0.714794,
		0.243004, -0.706544, -0.664639,
		0.967601, 0.128147, 0.217545,
		32.350380, 24.110371, 28.311453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417267, 23.367987, 27.903732>,  <31.673059, 24.020668, 28.159172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417267, 23.367987, 27.903732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066050, 23.188511, 27.970325>,  <30.855320, 23.080826, 28.010283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066050, 23.188511, 27.970325>,  <31.417267, 23.367987, 27.903732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066050, 23.188511, 27.970325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452506, 0.665093, -0.594045,
		0.155814, -0.596933, -0.787015,
		-0.878044, -0.448690, 0.166485,
		30.802637, 23.053904, 28.020271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061516, 23.442892, 27.290886>,  <31.417267, 23.367987, 27.903732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061516, 23.442892, 27.290886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.755882, 23.347683, 27.530727>,  <30.572502, 23.290558, 27.674631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.755882, 23.347683, 27.530727>,  <31.061516, 23.442892, 27.290886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755882, 23.347683, 27.530727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612603, 0.559058, -0.558724,
		-0.202224, -0.794229, -0.572980,
		-0.764083, -0.238022, 0.599602,
		30.526657, 23.276276, 27.710608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477337, 23.063997, 26.882740>,  <31.061516, 23.442892, 27.290886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477337, 23.063997, 26.882740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.292826, 23.198345, 27.211231>,  <30.182119, 23.278954, 27.408325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.292826, 23.198345, 27.211231>,  <30.477337, 23.063997, 26.882740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292826, 23.198345, 27.211231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612528, 0.549075, -0.568618,
		-0.641898, -0.765315, -0.047546,
		-0.461278, 0.335872, 0.821226,
		30.154442, 23.299107, 27.457600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710648, 22.998541, 26.813251>,  <30.477337, 23.063997, 26.882740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710648, 22.998541, 26.813251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762808, 23.277920, 27.094723>,  <29.794104, 23.445547, 27.263605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762808, 23.277920, 27.094723>,  <29.710648, 22.998541, 26.813251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762808, 23.277920, 27.094723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652132, 0.595025, -0.469755,
		-0.746807, -0.397635, 0.533072,
		0.130400, 0.698450, 0.703679,
		29.801928, 23.487455, 27.305826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990807, 23.241543, 27.075623>,  <29.710648, 22.998541, 26.813251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990807, 23.241543, 27.075623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252378, 23.532730, 27.158024>,  <29.409321, 23.707443, 27.207464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252378, 23.532730, 27.158024>,  <28.990807, 23.241543, 27.075623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252378, 23.532730, 27.158024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546642, 0.642880, -0.536552,
		-0.523028, 0.238258, 0.818337,
		0.653930, 0.727969, 0.206002,
		29.448557, 23.751122, 27.219824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588551, 23.830519, 27.101402>,  <28.990807, 23.241543, 27.075623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588551, 23.830519, 27.101402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.964178, 23.956871, 27.047188>,  <29.189554, 24.032682, 27.014660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.964178, 23.956871, 27.047188>,  <28.588551, 23.830519, 27.101402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964178, 23.956871, 27.047188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339903, 0.794689, -0.502926,
		-0.051157, 0.518351, 0.853637,
		0.939068, 0.315882, -0.135536,
		29.245899, 24.051636, 27.006527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585423, 24.557701, 27.313318>,  <28.588551, 23.830519, 27.101402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585423, 24.557701, 27.313318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.940918, 24.560314, 27.129971>,  <29.154215, 24.561882, 27.019962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.940918, 24.560314, 27.129971>,  <28.585423, 24.557701, 27.313318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940918, 24.560314, 27.129971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217221, 0.886516, -0.408539,
		0.403681, 0.462651, 0.789301,
		0.888739, 0.006533, -0.458367,
		29.207541, 24.562275, 26.992460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944109, 25.188683, 27.532383>,  <28.585423, 24.557701, 27.313318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944109, 25.188683, 27.532383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.075478, 25.059891, 27.177200>,  <29.154299, 24.982616, 26.964090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.075478, 25.059891, 27.177200>,  <28.944109, 25.188683, 27.532383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075478, 25.059891, 27.177200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168830, 0.904953, -0.390585,
		0.929319, 0.278191, 0.242848,
		0.328423, -0.321978, -0.887957,
		29.174006, 24.963297, 26.910812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301151, 25.734219, 27.226896>,  <28.944109, 25.188683, 27.532383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301151, 25.734219, 27.226896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.218658, 25.496601, 26.915878>,  <29.169163, 25.354031, 26.729267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.218658, 25.496601, 26.915878>,  <29.301151, 25.734219, 27.226896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218658, 25.496601, 26.915878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105132, 0.803480, -0.585975,
		0.972839, -0.039102, -0.228158,
		-0.206233, -0.594046, -0.777546,
		29.156788, 25.318388, 26.682615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587828, 26.038412, 26.667309>,  <29.301151, 25.734219, 27.226896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587828, 26.038412, 26.667309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.337446, 25.785515, 26.484684>,  <29.187218, 25.633778, 26.375109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.337446, 25.785515, 26.484684>,  <29.587828, 26.038412, 26.667309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337446, 25.785515, 26.484684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228425, 0.708408, -0.667817,
		0.745658, -0.313730, -0.587850,
		-0.625952, -0.632243, -0.456566,
		29.149660, 25.595842, 26.347715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693853, 26.089596, 25.895796>,  <29.587828, 26.038412, 26.667309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693853, 26.089596, 25.895796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332729, 25.954727, 26.002567>,  <29.116055, 25.873806, 26.066629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332729, 25.954727, 26.002567>,  <29.693853, 26.089596, 25.895796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332729, 25.954727, 26.002567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429606, 0.735054, -0.524533,
		-0.019350, -0.588227, -0.808464,
		-0.902809, -0.337171, 0.266929,
		29.061886, 25.853577, 26.082645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353195, 26.123583, 25.191235>,  <29.693853, 26.089596, 25.895796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353195, 26.123583, 25.191235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.097591, 26.154205, 25.497387>,  <28.944229, 26.172579, 25.681078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.097591, 26.154205, 25.497387>,  <29.353195, 26.123583, 25.191235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097591, 26.154205, 25.497387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427452, 0.791905, -0.436087,
		-0.639493, -0.605827, -0.473311,
		-0.639010, 0.076557, 0.765380,
		28.905888, 26.177172, 25.727001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700521, 26.288383, 24.824110>,  <29.353195, 26.123583, 25.191235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700521, 26.288383, 24.824110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.634745, 26.400894, 25.202282>,  <28.595278, 26.468401, 25.429186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.634745, 26.400894, 25.202282>,  <28.700521, 26.288383, 24.824110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634745, 26.400894, 25.202282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490442, 0.808291, -0.325781,
		-0.855819, -0.517251, 0.005033,
		-0.164442, 0.281278, 0.945432,
		28.585411, 26.485277, 25.485912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961042, 26.382635, 24.838730>,  <28.700521, 26.288383, 24.824110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961042, 26.382635, 24.838730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.125628, 26.595142, 25.134960>,  <28.224379, 26.722647, 25.312698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.125628, 26.595142, 25.134960>,  <27.961042, 26.382635, 24.838730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125628, 26.595142, 25.134960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551236, 0.792147, -0.261997,
		-0.725836, -0.300430, 0.618793,
		0.411463, 0.531268, 0.740576,
		28.249065, 26.754522, 25.357134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.741634, 26.500374, 27.109941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.104164, 26.545139, 26.946941>,  <43.321682, 26.571999, 26.849142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.104164, 26.545139, 26.946941>,  <42.741634, 26.500374, 27.109941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104164, 26.545139, 26.946941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365000, 0.693283, -0.621396,
		0.212969, 0.711922, 0.669187,
		0.906322, 0.111915, -0.407500,
		43.376060, 26.578714, 26.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945068, 27.205793, 27.156023>,  <42.741634, 26.500374, 27.109941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945068, 27.205793, 27.156023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.191761, 27.102661, 26.858524>,  <43.339779, 27.040783, 26.680025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.191761, 27.102661, 26.858524>,  <42.945068, 27.205793, 27.156023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191761, 27.102661, 26.858524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304679, 0.793006, -0.527553,
		0.725815, 0.551966, 0.410519,
		0.616736, -0.257829, -0.743748,
		43.376781, 27.025312, 26.635401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369816, 27.807947, 26.935436>,  <42.945068, 27.205793, 27.156023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369816, 27.807947, 26.935436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.375328, 27.573780, 26.611191>,  <43.378635, 27.433279, 26.416643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.375328, 27.573780, 26.611191>,  <43.369816, 27.807947, 26.935436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375328, 27.573780, 26.611191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083260, 0.807204, -0.584371,
		0.996433, 0.075545, -0.037619,
		0.013780, -0.585418, -0.810614,
		43.379463, 27.398155, 26.368006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632324, 28.210499, 26.491806>,  <43.369816, 27.807947, 26.935436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632324, 28.210499, 26.491806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.483742, 27.932358, 26.245716>,  <43.394592, 27.765472, 26.098063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.483742, 27.932358, 26.245716>,  <43.632324, 28.210499, 26.491806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483742, 27.932358, 26.245716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204399, 0.707625, -0.676378,
		0.905671, -0.125494, -0.404982,
		-0.371457, -0.695354, -0.615225,
		43.372303, 27.723751, 26.061148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865997, 28.336027, 25.904394>,  <43.632324, 28.210499, 26.491806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865997, 28.336027, 25.904394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.545727, 28.115936, 25.809597>,  <43.353565, 27.983881, 25.752718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.545727, 28.115936, 25.809597>,  <43.865997, 28.336027, 25.904394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545727, 28.115936, 25.809597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316443, 0.724318, -0.612558,
		0.508706, -0.415466, -0.754060,
		-0.800676, -0.550229, -0.236993,
		43.305523, 27.950867, 25.738499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747368, 28.491190, 25.151270>,  <43.865997, 28.336027, 25.904394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747368, 28.491190, 25.151270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.411007, 28.334663, 25.300804>,  <43.209190, 28.240747, 25.390526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.411007, 28.334663, 25.300804>,  <43.747368, 28.491190, 25.151270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411007, 28.334663, 25.300804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534390, 0.709530, -0.459341,
		-0.085501, -0.586036, -0.805761,
		-0.840902, -0.391317, 0.373837,
		43.158737, 28.217268, 25.412954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352158, 28.554382, 24.564529>,  <43.747368, 28.491190, 25.151270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352158, 28.554382, 24.564529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.112839, 28.528820, 24.884018>,  <42.969246, 28.513483, 25.075712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.112839, 28.528820, 24.884018>,  <43.352158, 28.554382, 24.564529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112839, 28.528820, 24.884018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518053, 0.791304, -0.324745,
		-0.611280, -0.608075, -0.506539,
		-0.598296, -0.063904, 0.798723,
		42.933350, 28.509649, 25.123634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665768, 28.552633, 24.283682>,  <43.352158, 28.554382, 24.564529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665768, 28.552633, 24.283682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.622482, 28.683025, 24.659348>,  <42.596512, 28.761261, 24.884747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.622482, 28.683025, 24.659348>,  <42.665768, 28.552633, 24.283682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622482, 28.683025, 24.659348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585485, 0.742593, -0.325213,
		-0.803429, -0.585057, 0.110501,
		-0.108211, 0.325982, 0.939163,
		42.590019, 28.780821, 24.941097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920261, 28.596989, 24.336903>,  <42.665768, 28.552633, 24.283682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920261, 28.596989, 24.336903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.064766, 28.824188, 24.632706>,  <42.151470, 28.960508, 24.810188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.064766, 28.824188, 24.632706>,  <41.920261, 28.596989, 24.336903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064766, 28.824188, 24.632706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671666, 0.708620, -0.216155,
		-0.646805, -0.418614, 0.637500,
		0.361260, 0.567997, 0.739507,
		42.173145, 28.994587, 24.854557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253407, 28.889433, 24.747881>,  <41.920261, 28.596989, 24.336903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253407, 28.889433, 24.747881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.566223, 29.117443, 24.848671>,  <41.753914, 29.254250, 24.909145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.566223, 29.117443, 24.848671>,  <41.253407, 28.889433, 24.747881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566223, 29.117443, 24.848671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542980, 0.821627, -0.173499,
		-0.305927, -0.001133, 0.952054,
		0.782037, 0.570024, 0.251973,
		41.800835, 29.288450, 24.924263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910942, 29.386297, 25.164495>,  <41.253407, 28.889433, 24.747881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910942, 29.386297, 25.164495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.265972, 29.537773, 25.059566>,  <41.478989, 29.628658, 24.996609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.265972, 29.537773, 25.059566>,  <40.910942, 29.386297, 25.164495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265972, 29.537773, 25.059566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419393, 0.899836, -0.120018,
		0.190596, 0.216540, 0.957488,
		0.887571, 0.378689, -0.262321,
		41.532242, 29.651381, 24.980869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177238, 30.008821, 25.652462>,  <40.910942, 29.386297, 25.164495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177238, 30.008821, 25.652462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343819, 30.073563, 25.294609>,  <41.443768, 30.112408, 25.079897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343819, 30.073563, 25.294609>,  <41.177238, 30.008821, 25.652462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343819, 30.073563, 25.294609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278298, 0.959485, 0.044037,
		0.865514, 0.230635, 0.444626,
		0.416455, 0.161853, -0.894633,
		41.468754, 30.122118, 25.026218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500813, 30.586823, 25.782419>,  <41.177238, 30.008821, 25.652462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500813, 30.586823, 25.782419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494549, 30.537136, 25.385567>,  <41.490791, 30.507324, 25.147455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494549, 30.537136, 25.385567>,  <41.500813, 30.586823, 25.782419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494549, 30.537136, 25.385567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157801, 0.980126, -0.120221,
		0.987347, 0.154676, -0.034953,
		-0.015663, -0.124215, -0.992132,
		41.489849, 30.499872, 25.087927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039173, 30.987881, 25.527136>,  <41.500813, 30.586823, 25.782419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039173, 30.987881, 25.527136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.766434, 30.926113, 25.241131>,  <41.602791, 30.889053, 25.069529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.766434, 30.926113, 25.241131>,  <42.039173, 30.987881, 25.527136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766434, 30.926113, 25.241131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110487, 0.987991, -0.108010,
		0.723103, 0.005353, -0.690720,
		-0.681846, -0.154418, -0.715011,
		41.561878, 30.879787, 25.026627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161800, 31.414780, 25.025564>,  <42.039173, 30.987881, 25.527136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161800, 31.414780, 25.025564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.773960, 31.335472, 24.968201>,  <41.541256, 31.287888, 24.933783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.773960, 31.335472, 24.968201>,  <42.161800, 31.414780, 25.025564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773960, 31.335472, 24.968201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202397, 0.979194, 0.014640,
		0.137523, 0.043221, -0.989555,
		-0.969599, -0.198269, -0.143409,
		41.483082, 31.275991, 24.925179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931053, 31.837151, 24.475647>,  <42.161800, 31.414780, 25.025564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931053, 31.837151, 24.475647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.569881, 31.733974, 24.613159>,  <41.353180, 31.672070, 24.695667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.569881, 31.733974, 24.613159>,  <41.931053, 31.837151, 24.475647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569881, 31.733974, 24.613159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238654, 0.966140, 0.098074,
		-0.357438, 0.006509, -0.933914,
		-0.902930, -0.257938, 0.343781,
		41.299004, 31.656593, 24.716293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431190, 32.128849, 24.048056>,  <41.931053, 31.837151, 24.475647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431190, 32.128849, 24.048056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.240341, 32.067116, 24.394127>,  <41.125832, 32.030075, 24.601770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.240341, 32.067116, 24.394127>,  <41.431190, 32.128849, 24.048056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240341, 32.067116, 24.394127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194185, 0.978641, 0.067489,
		-0.857115, -0.135804, -0.496901,
		-0.477122, -0.154336, 0.865179,
		41.097206, 32.020813, 24.653681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796467, 32.385593, 23.859310>,  <41.431190, 32.128849, 24.048056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796467, 32.385593, 23.859310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807957, 32.390240, 24.259117>,  <40.814850, 32.393028, 24.499002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807957, 32.390240, 24.259117>,  <40.796467, 32.385593, 23.859310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807957, 32.390240, 24.259117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463210, 0.886243, 0.003015,
		-0.885783, -0.463074, 0.030839,
		0.028727, 0.011614, 0.999520,
		40.816574, 32.393723, 24.558973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133366, 32.716633, 24.009907>,  <40.796467, 32.385593, 23.859310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133366, 32.716633, 24.009907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364223, 32.751389, 24.334709>,  <40.502739, 32.772240, 24.529591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.364223, 32.751389, 24.334709>,  <40.133366, 32.716633, 24.009907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364223, 32.751389, 24.334709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418087, 0.885570, 0.202406,
		-0.701503, -0.456307, 0.547429,
		0.577146, 0.086885, 0.812006,
		40.537369, 32.777454, 24.578312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697361, 32.944889, 24.579887>,  <40.133366, 32.716633, 24.009907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697361, 32.944889, 24.579887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064232, 33.046360, 24.702812>,  <40.284355, 33.107243, 24.776567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064232, 33.046360, 24.702812>,  <39.697361, 32.944889, 24.579887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064232, 33.046360, 24.702812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360365, 0.857185, 0.367929,
		-0.170087, -0.448199, 0.877604,
		0.917174, 0.253677, 0.307311,
		40.339382, 33.122463, 24.795006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600197, 33.281624, 25.160568>,  <39.697361, 32.944889, 24.579887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600197, 33.281624, 25.160568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953899, 33.426395, 25.042519>,  <40.166122, 33.513256, 24.971689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953899, 33.426395, 25.042519>,  <39.600197, 33.281624, 25.160568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953899, 33.426395, 25.042519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323003, 0.930411, 0.173220,
		0.337281, -0.057844, 0.939625,
		0.884257, 0.361925, -0.295126,
		40.219177, 33.534973, 24.953981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886990, 32.899323, 25.023355>,  <39.600197, 33.281624, 25.160568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886990, 32.899323, 25.023355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.574326, 32.729076, 24.840988>,  <38.386726, 32.626930, 24.731567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.574326, 32.729076, 24.840988>,  <38.886990, 32.899323, 25.023355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574326, 32.729076, 24.840988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406009, -0.902121, 0.146060,
		-0.473460, -0.070939, 0.877954,
		-0.781660, -0.425611, -0.455921,
		38.339828, 32.601395, 24.704212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413254, 32.549492, 25.528170>,  <38.886990, 32.899323, 25.023355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413254, 32.549492, 25.528170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.337799, 32.367016, 25.180305>,  <38.292526, 32.257530, 24.971588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.337799, 32.367016, 25.180305>,  <38.413254, 32.549492, 25.528170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337799, 32.367016, 25.180305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178364, -0.886743, 0.426465,
		-0.965713, -0.074669, 0.248641,
		-0.188637, -0.456191, -0.869658,
		38.281208, 32.230160, 24.919409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995468, 32.021416, 25.720667>,  <38.413254, 32.549492, 25.528170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995468, 32.021416, 25.720667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.093864, 31.886192, 25.357304>,  <38.152901, 31.805058, 25.139286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.093864, 31.886192, 25.357304>,  <37.995468, 32.021416, 25.720667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093864, 31.886192, 25.357304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047740, -0.931843, 0.359709,
		-0.968096, -0.131851, -0.213084,
		0.245989, -0.338060, -0.908408,
		38.167660, 31.784775, 25.084782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563801, 31.512756, 25.551292>,  <37.995468, 32.021416, 25.720667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563801, 31.512756, 25.551292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912235, 31.470669, 25.359406>,  <38.121296, 31.445415, 25.244272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912235, 31.470669, 25.359406>,  <37.563801, 31.512756, 25.551292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912235, 31.470669, 25.359406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124121, -0.897907, 0.422324,
		-0.475180, -0.427425, -0.769098,
		0.871090, -0.105219, -0.479719,
		38.173561, 31.439104, 25.215490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588848, 30.818024, 25.265574>,  <37.563801, 31.512756, 25.551292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588848, 30.818024, 25.265574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976334, 30.917076, 25.259064>,  <38.208824, 30.976507, 25.255157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976334, 30.917076, 25.259064>,  <37.588848, 30.818024, 25.265574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976334, 30.917076, 25.259064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213168, -0.796728, 0.565495,
		0.127067, -0.551275, -0.824591,
		0.968718, 0.247632, -0.016276,
		38.266949, 30.991365, 25.254181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876804, 30.139740, 25.104864>,  <37.588848, 30.818024, 25.265574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876804, 30.139740, 25.104864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.159325, 30.374245, 25.263577>,  <38.328838, 30.514948, 25.358805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.159325, 30.374245, 25.263577>,  <37.876804, 30.139740, 25.104864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159325, 30.374245, 25.263577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441926, -0.803018, 0.399829,
		0.553028, -0.107051, -0.826256,
		0.706301, 0.586261, 0.396783,
		38.371216, 30.550123, 25.382612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592453, 29.848845, 24.994976>,  <37.876804, 30.139740, 25.104864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592453, 29.848845, 24.994976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.666672, 30.099190, 25.297993>,  <38.711201, 30.249397, 25.479803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.666672, 30.099190, 25.297993>,  <38.592453, 29.848845, 24.994976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666672, 30.099190, 25.297993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509967, -0.720310, 0.470199,
		0.839945, 0.299078, -0.452818,
		0.185543, 0.625864, 0.757541,
		38.722336, 30.286949, 25.525255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290672, 29.769587, 25.168194>,  <38.592453, 29.848845, 24.994976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290672, 29.769587, 25.168194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146370, 29.943005, 25.498501>,  <39.059788, 30.047056, 25.696686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146370, 29.943005, 25.498501>,  <39.290672, 29.769587, 25.168194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146370, 29.943005, 25.498501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590336, -0.579313, 0.562050,
		0.722053, 0.690243, -0.046948,
		-0.360754, 0.433545, 0.825770,
		39.038143, 30.073069, 25.746231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846825, 29.944248, 25.573872>,  <39.290672, 29.769587, 25.168194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846825, 29.944248, 25.573872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.561619, 29.938503, 25.854275>,  <39.390495, 29.935057, 26.022516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.561619, 29.938503, 25.854275>,  <39.846825, 29.944248, 25.573872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561619, 29.938503, 25.854275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598530, -0.533227, 0.597855,
		0.365209, 0.845851, 0.388792,
		-0.713010, -0.014361, 0.701006,
		39.347717, 29.934195, 26.064577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181648, 30.017963, 26.229483>,  <39.846825, 29.944248, 25.573872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181648, 30.017963, 26.229483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830673, 29.832451, 26.278488>,  <39.620087, 29.721144, 26.307892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830673, 29.832451, 26.278488>,  <40.181648, 30.017963, 26.229483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830673, 29.832451, 26.278488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435872, -0.664203, 0.607330,
		-0.200295, 0.586294, 0.784947,
		-0.877438, -0.463782, 0.122513,
		39.567440, 29.693316, 26.315243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133335, 29.836790, 27.005943>,  <40.181648, 30.017963, 26.229483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133335, 29.836790, 27.005943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835316, 29.604397, 26.874882>,  <39.656506, 29.464960, 26.796244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835316, 29.604397, 26.874882>,  <40.133335, 29.836790, 27.005943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835316, 29.604397, 26.874882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103780, -0.586221, 0.803477,
		-0.658887, 0.564626, 0.497058,
		-0.745049, -0.580985, -0.327656,
		39.611801, 29.430101, 26.776585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697887, 29.696774, 27.613108>,  <40.133335, 29.836790, 27.005943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697887, 29.696774, 27.613108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589169, 29.414516, 27.351360>,  <39.523937, 29.245163, 27.194311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.589169, 29.414516, 27.351360>,  <39.697887, 29.696774, 27.613108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589169, 29.414516, 27.351360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035100, -0.672245, 0.739496,
		-0.961715, 0.223959, 0.157944,
		-0.271794, -0.705641, -0.654369,
		39.507629, 29.202824, 27.155050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106796, 29.250168, 27.894247>,  <39.697887, 29.696774, 27.613108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106796, 29.250168, 27.894247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.316544, 29.053699, 27.616028>,  <39.442390, 28.935818, 27.449097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.316544, 29.053699, 27.616028>,  <39.106796, 29.250168, 27.894247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316544, 29.053699, 27.616028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347260, -0.622486, 0.701371,
		-0.777464, -0.609313, -0.155848,
		0.524368, -0.491171, -0.695550,
		39.473854, 28.906347, 27.407362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022495, 28.570805, 28.037981>,  <39.106796, 29.250168, 27.894247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022495, 28.570805, 28.037981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355724, 28.545025, 27.818222>,  <39.555660, 28.529556, 27.686367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355724, 28.545025, 27.818222>,  <39.022495, 28.570805, 28.037981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355724, 28.545025, 27.818222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363508, -0.684846, 0.631543,
		-0.416954, -0.725832, -0.547100,
		0.833073, -0.064449, -0.549395,
		39.605648, 28.525690, 27.653404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204170, 27.872498, 28.259478>,  <39.022495, 28.570805, 28.037981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204170, 27.872498, 28.259478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.509941, 28.025711, 28.052044>,  <39.693405, 28.117640, 27.927584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.509941, 28.025711, 28.052044>,  <39.204170, 27.872498, 28.259478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509941, 28.025711, 28.052044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630643, -0.611343, 0.478068,
		-0.133914, -0.692491, -0.708889,
		0.764432, 0.383036, -0.518582,
		39.739269, 28.140621, 27.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578133, 27.290916, 27.964123>,  <39.204170, 27.872498, 28.259478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578133, 27.290916, 27.964123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825516, 27.605244, 27.963661>,  <39.973946, 27.793840, 27.963385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.825516, 27.605244, 27.963661>,  <39.578133, 27.290916, 27.964123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825516, 27.605244, 27.963661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723066, -0.568495, 0.392415,
		0.307710, -0.243526, -0.919788,
		0.618458, 0.785817, -0.001154,
		40.011051, 27.840988, 27.963314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272984, 27.158842, 27.670687>,  <39.578133, 27.290916, 27.964123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272984, 27.158842, 27.670687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.351353, 27.460232, 27.921730>,  <40.398376, 27.641066, 28.072355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.351353, 27.460232, 27.921730>,  <40.272984, 27.158842, 27.670687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351353, 27.460232, 27.921730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699996, -0.555672, 0.448591,
		0.686745, 0.351432, -0.636299,
		0.195925, 0.753475, 0.627606,
		40.410130, 27.686274, 28.110012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988285, 27.251200, 27.694862>,  <40.272984, 27.158842, 27.670687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988285, 27.251200, 27.694862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893158, 27.457153, 28.024307>,  <40.836082, 27.580725, 28.221973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893158, 27.457153, 28.024307>,  <40.988285, 27.251200, 27.694862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893158, 27.457153, 28.024307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791847, -0.388292, 0.471389,
		0.562512, 0.764281, -0.315364,
		-0.237821, 0.514882, 0.823613,
		40.821812, 27.611618, 28.271391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615177, 27.569035, 28.008406>,  <40.988285, 27.251200, 27.694862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615177, 27.569035, 28.008406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.356400, 27.581879, 28.313148>,  <41.201134, 27.589584, 28.495995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.356400, 27.581879, 28.313148>,  <41.615177, 27.569035, 28.008406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356400, 27.581879, 28.313148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693865, -0.389570, 0.605629,
		0.316243, 0.920437, 0.229753,
		-0.646948, 0.032109, 0.761858,
		41.162315, 27.591511, 28.541706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940483, 27.969372, 28.596552>,  <41.615177, 27.569035, 28.008406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940483, 27.969372, 28.596552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.650944, 27.760643, 28.777103>,  <41.477219, 27.635405, 28.885433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.650944, 27.760643, 28.777103>,  <41.940483, 27.969372, 28.596552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650944, 27.760643, 28.777103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689946, -0.551091, 0.469332,
		0.003842, 0.651153, 0.758937,
		-0.723850, -0.521823, 0.451377,
		41.433788, 27.604095, 28.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062885, 27.968567, 29.401016>,  <41.940483, 27.969372, 28.596552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062885, 27.968567, 29.401016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.841110, 27.645084, 29.322437>,  <41.708046, 27.450994, 29.275290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.841110, 27.645084, 29.322437>,  <42.062885, 27.968567, 29.401016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841110, 27.645084, 29.322437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612374, -0.556289, 0.561731,
		-0.563555, 0.191148, 0.803659,
		-0.554440, -0.808706, -0.196446,
		41.674778, 27.402473, 29.263504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.707617, 23.891020, 31.466087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.082888, 23.987709, 31.366974>,  <27.308050, 24.045723, 31.307505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.082888, 23.987709, 31.366974>,  <26.707617, 23.891020, 31.466087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082888, 23.987709, 31.366974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244726, -0.969404, -0.019096,
		-0.244819, -0.042724, -0.968627,
		0.938175, 0.241723, -0.247785,
		27.364340, 24.060226, 31.292639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933220, 23.475443, 30.868275>,  <26.707617, 23.891020, 31.466087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933220, 23.475443, 30.868275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.274315, 23.572506, 31.053295>,  <27.478971, 23.630743, 31.164309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.274315, 23.572506, 31.053295>,  <26.933220, 23.475443, 30.868275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274315, 23.572506, 31.053295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279317, -0.960133, -0.011248,
		0.441382, 0.138791, -0.886521,
		0.852739, 0.242655, 0.462552,
		27.530136, 23.645302, 31.192060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467680, 23.154552, 30.438852>,  <26.933220, 23.475443, 30.868275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467680, 23.154552, 30.438852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.625261, 23.230583, 30.798557>,  <27.719810, 23.276201, 31.014380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.625261, 23.230583, 30.798557>,  <27.467680, 23.154552, 30.438852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625261, 23.230583, 30.798557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341313, -0.938678, 0.048885,
		0.853410, 0.287671, -0.434669,
		0.393951, 0.190077, 0.899263,
		27.743446, 23.287607, 31.068336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118095, 22.791416, 30.523382>,  <27.467680, 23.154552, 30.438852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118095, 22.791416, 30.523382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.040194, 22.876274, 30.906437>,  <27.993452, 22.927189, 31.136269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.040194, 22.876274, 30.906437>,  <28.118095, 22.791416, 30.523382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040194, 22.876274, 30.906437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507271, -0.813837, 0.283454,
		0.839492, 0.540984, 0.050882,
		-0.194754, 0.212146, 0.957635,
		27.981768, 22.939919, 31.193727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830029, 22.706741, 31.051302>,  <28.118095, 22.791416, 30.523382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830029, 22.706741, 31.051302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.513758, 22.709202, 31.296185>,  <28.323996, 22.710678, 31.443113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.513758, 22.709202, 31.296185>,  <28.830029, 22.706741, 31.051302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513758, 22.709202, 31.296185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417982, -0.725224, 0.547120,
		0.447352, 0.688485, 0.570845,
		-0.790675, 0.006152, 0.612205,
		28.276556, 22.711048, 31.479847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072042, 22.857262, 31.738054>,  <28.830029, 22.706741, 31.051302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072042, 22.857262, 31.738054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.730864, 22.650135, 31.764427>,  <28.526157, 22.525858, 31.780251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.730864, 22.650135, 31.764427>,  <29.072042, 22.857262, 31.738054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730864, 22.650135, 31.764427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435158, -0.635591, 0.637700,
		-0.288306, 0.572616, 0.767457,
		-0.852946, -0.517818, 0.065933,
		28.474979, 22.494789, 31.784206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080145, 22.679041, 32.373421>,  <29.072042, 22.857262, 31.738054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080145, 22.679041, 32.373421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.816374, 22.421780, 32.217724>,  <28.658112, 22.267424, 32.124306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.816374, 22.421780, 32.217724>,  <29.080145, 22.679041, 32.373421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816374, 22.421780, 32.217724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407347, -0.740860, 0.534036,
		-0.631844, 0.193599, 0.750529,
		-0.659426, -0.643152, -0.389246,
		28.618546, 22.228834, 32.100948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821836, 22.313011, 32.963585>,  <29.080145, 22.679041, 32.373421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821836, 22.313011, 32.963585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.723454, 22.078247, 32.655029>,  <28.664423, 21.937389, 32.469894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.723454, 22.078247, 32.655029>,  <28.821836, 22.313011, 32.963585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723454, 22.078247, 32.655029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422626, -0.781139, 0.459575,
		-0.872291, -0.212973, 0.440171,
		-0.245958, -0.586911, -0.771389,
		28.649666, 21.902174, 32.423615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630486, 21.710573, 33.315094>,  <28.821836, 22.313011, 32.963585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630486, 21.710573, 33.315094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.739876, 21.624031, 32.940201>,  <28.805510, 21.572105, 32.715267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.739876, 21.624031, 32.940201>,  <28.630486, 21.710573, 33.315094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739876, 21.624031, 32.940201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419924, -0.849764, 0.318694,
		-0.865376, -0.480721, -0.141536,
		0.273475, -0.216356, -0.937231,
		28.821918, 21.559124, 32.659031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623335, 20.919796, 33.293076>,  <28.630486, 21.710573, 33.315094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623335, 20.919796, 33.293076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.826155, 21.042080, 32.970722>,  <28.947847, 21.115450, 32.777309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.826155, 21.042080, 32.970722>,  <28.623335, 20.919796, 33.293076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826155, 21.042080, 32.970722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697268, -0.695115, 0.175021,
		-0.506673, -0.650659, -0.565620,
		0.507050, 0.305710, -0.805880,
		28.978270, 21.133793, 32.728958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797190, 20.301413, 32.889702>,  <28.623335, 20.919796, 33.293076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797190, 20.301413, 32.889702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.058786, 20.590080, 32.798939>,  <29.215744, 20.763281, 32.744480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.058786, 20.590080, 32.798939>,  <28.797190, 20.301413, 32.889702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058786, 20.590080, 32.798939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756499, -0.622995, 0.198965,
		0.002228, -0.301774, -0.953377,
		0.653992, 0.721672, -0.226904,
		29.254984, 20.806581, 32.730869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237167, 19.934673, 32.369640>,  <28.797190, 20.301413, 32.889702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237167, 19.934673, 32.369640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.435085, 20.259502, 32.493389>,  <29.553837, 20.454399, 32.567638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.435085, 20.259502, 32.493389>,  <29.237167, 19.934673, 32.369640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435085, 20.259502, 32.493389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762487, -0.576487, 0.293731,
		0.416882, 0.090557, -0.904439,
		0.494797, 0.812073, 0.309375,
		29.583525, 20.503124, 32.586201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851311, 19.834044, 32.180305>,  <29.237167, 19.934673, 32.369640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851311, 19.834044, 32.180305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.875494, 20.081100, 32.493958>,  <29.890003, 20.229334, 32.682148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.875494, 20.081100, 32.493958>,  <29.851311, 19.834044, 32.180305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875494, 20.081100, 32.493958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750936, -0.545683, 0.371922,
		0.657602, 0.566348, -0.496799,
		0.060457, 0.617640, 0.784133,
		29.893631, 20.266392, 32.729198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486111, 19.668560, 32.357422>,  <29.851311, 19.834044, 32.180305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486111, 19.668560, 32.357422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.342388, 19.921291, 32.632141>,  <30.256155, 20.072929, 32.796974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.342388, 19.921291, 32.632141>,  <30.486111, 19.668560, 32.357422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342388, 19.921291, 32.632141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574524, -0.430185, 0.696321,
		0.735405, 0.644776, -0.208431,
		-0.359307, 0.631826, 0.686800,
		30.234596, 20.110840, 32.838181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631968, 19.106743, 31.946646>,  <30.486111, 19.668560, 32.357422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631968, 19.106743, 31.946646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972431, 18.967514, 31.789486>,  <31.176710, 18.883976, 31.695190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972431, 18.967514, 31.789486>,  <30.631968, 19.106743, 31.946646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972431, 18.967514, 31.789486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051975, 0.800727, -0.596771,
		0.522327, 0.487526, 0.699638,
		0.851160, -0.348073, -0.392902,
		31.227779, 18.863092, 31.671616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206419, 19.650414, 31.990288>,  <30.631968, 19.106743, 31.946646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206419, 19.650414, 31.990288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298140, 19.390202, 31.700672>,  <31.353172, 19.234074, 31.526903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298140, 19.390202, 31.700672>,  <31.206419, 19.650414, 31.990288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298140, 19.390202, 31.700672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076973, 0.729408, -0.679735,
		0.970307, 0.211594, 0.117180,
		0.229300, -0.650532, -0.724037,
		31.366930, 19.195042, 31.483461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657757, 19.988222, 31.574192>,  <31.206419, 19.650414, 31.990288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657757, 19.988222, 31.574192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534096, 19.692142, 31.335350>,  <31.459900, 19.514496, 31.192045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534096, 19.692142, 31.335350>,  <31.657757, 19.988222, 31.574192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534096, 19.692142, 31.335350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014517, 0.631461, -0.775271,
		0.950902, -0.231008, -0.205963,
		-0.309152, -0.740197, -0.597104,
		31.441351, 19.470083, 31.156219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042027, 19.972734, 30.911798>,  <31.657757, 19.988222, 31.574192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042027, 19.972734, 30.911798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674877, 19.825939, 30.851360>,  <31.454588, 19.737862, 30.815098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674877, 19.825939, 30.851360>,  <32.042027, 19.972734, 30.911798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674877, 19.825939, 30.851360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062829, 0.510276, -0.857712,
		0.391869, -0.777778, -0.491426,
		-0.917873, -0.366987, -0.151094,
		31.399515, 19.715843, 30.806032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153160, 19.806246, 30.270996>,  <32.042027, 19.972734, 30.911798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153160, 19.806246, 30.270996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755926, 19.826183, 30.313522>,  <31.517586, 19.838146, 30.339037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755926, 19.826183, 30.313522>,  <32.153160, 19.806246, 30.270996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755926, 19.826183, 30.313522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063202, 0.536169, -0.841741,
		-0.098958, -0.842637, -0.529310,
		-0.993082, 0.049844, 0.106314,
		31.458002, 19.841137, 30.345417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058701, 19.953747, 29.664272>,  <32.153160, 19.806246, 30.270996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058701, 19.953747, 29.664272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703381, 19.978218, 29.846340>,  <31.490189, 19.992901, 29.955582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703381, 19.978218, 29.846340>,  <32.058701, 19.953747, 29.664272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703381, 19.978218, 29.846340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323370, 0.620453, -0.714472,
		-0.326123, -0.781854, -0.531365,
		-0.888299, 0.061178, 0.455172,
		31.436892, 19.996571, 29.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372248, 19.776527, 29.196398>,  <32.058701, 19.953747, 29.664272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372248, 19.776527, 29.196398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217669, 20.016384, 29.476707>,  <31.124920, 20.160297, 29.644894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217669, 20.016384, 29.476707>,  <31.372248, 19.776527, 29.196398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217669, 20.016384, 29.476707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495894, 0.505546, -0.706054,
		-0.777653, -0.620365, 0.101990,
		-0.386450, 0.599642, 0.700775,
		31.101734, 20.196276, 29.686939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655600, 19.984566, 29.023855>,  <31.372248, 19.776527, 29.196398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655600, 19.984566, 29.023855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798279, 20.267963, 29.267429>,  <30.883886, 20.438002, 29.413574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798279, 20.267963, 29.267429>,  <30.655600, 19.984566, 29.023855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798279, 20.267963, 29.267429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290937, 0.703641, -0.648263,
		-0.887763, 0.054072, 0.457114,
		0.356696, 0.708496, 0.608935,
		30.905289, 20.480513, 29.450109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246881, 20.546843, 28.821297>,  <30.655600, 19.984566, 29.023855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246881, 20.546843, 28.821297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522444, 20.725239, 29.049858>,  <30.687782, 20.832275, 29.186995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.522444, 20.725239, 29.049858>,  <30.246881, 20.546843, 28.821297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522444, 20.725239, 29.049858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157174, 0.861461, -0.482888,
		-0.707604, 0.242856, 0.663564,
		0.688907, 0.445989, 0.571403,
		30.729116, 20.859035, 29.221279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965342, 21.137335, 29.071072>,  <30.246881, 20.546843, 28.821297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965342, 21.137335, 29.071072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.347906, 21.245796, 29.114437>,  <30.577444, 21.310873, 29.140457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.347906, 21.245796, 29.114437>,  <29.965342, 21.137335, 29.071072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347906, 21.245796, 29.114437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205703, 0.889069, -0.408954,
		-0.207276, 0.368827, 0.906092,
		0.956412, 0.271152, 0.108414,
		30.634830, 21.327141, 29.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070932, 21.826670, 29.439251>,  <29.965342, 21.137335, 29.071072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070932, 21.826670, 29.439251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.402626, 21.809196, 29.216373>,  <30.601643, 21.798712, 29.082647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.402626, 21.809196, 29.216373>,  <30.070932, 21.826670, 29.439251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402626, 21.809196, 29.216373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173103, 0.927846, -0.330359,
		0.531419, 0.370396, 0.761839,
		0.829234, -0.043683, -0.557192,
		30.651396, 21.796091, 29.049215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355097, 22.467485, 29.486589>,  <30.070932, 21.826670, 29.439251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355097, 22.467485, 29.486589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.573036, 22.330025, 29.180637>,  <30.703800, 22.247549, 28.997066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.573036, 22.330025, 29.180637>,  <30.355097, 22.467485, 29.486589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573036, 22.330025, 29.180637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114669, 0.873060, -0.473938,
		0.830655, 0.345933, 0.436281,
		0.544851, -0.343651, -0.764880,
		30.736492, 22.226929, 28.951174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781176, 22.989359, 29.205847>,  <30.355097, 22.467485, 29.486589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781176, 22.989359, 29.205847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.796761, 22.728428, 28.903072>,  <30.806112, 22.571869, 28.721407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.796761, 22.728428, 28.903072>,  <30.781176, 22.989359, 29.205847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796761, 22.728428, 28.903072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161762, 0.743402, -0.648989,
		0.986060, 0.147731, -0.076555,
		0.038965, -0.652326, -0.756936,
		30.808451, 22.532730, 28.675991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212204, 23.320114, 28.625990>,  <30.781176, 22.989359, 29.205847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212204, 23.320114, 28.625990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982836, 23.028606, 28.476276>,  <30.845215, 22.853703, 28.386448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982836, 23.028606, 28.476276>,  <31.212204, 23.320114, 28.625990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982836, 23.028606, 28.476276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194700, 0.564989, -0.801797,
		0.795791, -0.386892, -0.465866,
		-0.573419, -0.728767, -0.374286,
		30.810810, 22.809977, 28.363991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950949, 23.355820, 28.419844>,  <31.212204, 23.320114, 28.625990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950949, 23.355820, 28.419844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249401, 23.601959, 28.521538>,  <32.428471, 23.749643, 28.582554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249401, 23.601959, 28.521538>,  <31.950949, 23.355820, 28.419844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249401, 23.601959, 28.521538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202547, -0.573537, 0.793744,
		0.634244, -0.540741, -0.552570,
		0.746129, 0.615349, 0.254237,
		32.473240, 23.786564, 28.597809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591301, 22.937487, 28.472488>,  <31.950949, 23.355820, 28.419844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591301, 22.937487, 28.472488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643314, 23.270958, 28.687180>,  <32.674522, 23.471041, 28.815994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643314, 23.270958, 28.687180>,  <32.591301, 22.937487, 28.472488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643314, 23.270958, 28.687180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194453, -0.552253, 0.810681,
		0.972255, -0.001048, -0.233923,
		0.130034, 0.833676, 0.536727,
		32.682323, 23.521061, 28.848198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245296, 22.876345, 28.793880>,  <32.591301, 22.937487, 28.472488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245296, 22.876345, 28.793880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007511, 23.125648, 28.997120>,  <32.864841, 23.275230, 29.119062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007511, 23.125648, 28.997120>,  <33.245296, 22.876345, 28.793880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007511, 23.125648, 28.997120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070436, -0.589076, 0.805002,
		0.801034, 0.514331, 0.306283,
		-0.594461, 0.623260, 0.508097,
		32.829174, 23.312626, 29.149549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667187, 23.056925, 29.341139>,  <33.245296, 22.876345, 28.793880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667187, 23.056925, 29.341139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306889, 23.167782, 29.474911>,  <33.090710, 23.234295, 29.555174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306889, 23.167782, 29.474911>,  <33.667187, 23.056925, 29.341139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306889, 23.167782, 29.474911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167255, -0.489275, 0.855942,
		0.400845, 0.826924, 0.394361,
		-0.900749, 0.277141, 0.334430,
		33.036663, 23.250925, 29.575239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855743, 23.334734, 29.990067>,  <33.667187, 23.056925, 29.341139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855743, 23.334734, 29.990067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466072, 23.245159, 29.978569>,  <33.232269, 23.191414, 29.971670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466072, 23.245159, 29.978569>,  <33.855743, 23.334734, 29.990067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466072, 23.245159, 29.978569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089492, -0.499884, 0.861457,
		-0.207282, 0.836641, 0.507017,
		-0.974179, -0.223939, -0.028745,
		33.173817, 23.177979, 29.969946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543976, 23.368437, 30.654690>,  <33.855743, 23.334734, 29.990067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543976, 23.368437, 30.654690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320045, 23.112354, 30.444271>,  <33.185688, 22.958704, 30.318020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320045, 23.112354, 30.444271>,  <33.543976, 23.368437, 30.654690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320045, 23.112354, 30.444271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074050, -0.670972, 0.737775,
		-0.825294, 0.374073, 0.423037,
		-0.559828, -0.640207, -0.526049,
		33.152096, 22.920292, 30.286457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971592, 23.122868, 31.088127>,  <33.543976, 23.368437, 30.654690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971592, 23.122868, 31.088127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029037, 22.841461, 30.809719>,  <33.063503, 22.672617, 30.642673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029037, 22.841461, 30.809719>,  <32.971592, 23.122868, 31.088127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029037, 22.841461, 30.809719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042565, -0.698268, 0.714570,
		-0.988718, -0.132249, -0.070336,
		0.143614, -0.703514, -0.696019,
		33.072121, 22.630407, 30.600914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723312, 23.212355, 31.831226>,  <32.971592, 23.122868, 31.088127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723312, 23.212355, 31.831226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938774, 23.403599, 32.108719>,  <33.068050, 23.518345, 32.275215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938774, 23.403599, 32.108719>,  <32.723312, 23.212355, 31.831226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938774, 23.403599, 32.108719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401669, 0.869523, -0.287387,
		-0.740618, -0.123848, 0.660415,
		0.538654, 0.478112, 0.693730,
		33.100368, 23.547031, 32.316837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312401, 23.824839, 31.924957>,  <32.723312, 23.212355, 31.831226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312401, 23.824839, 31.924957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658108, 23.949554, 32.082855>,  <32.865532, 24.024384, 32.177593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658108, 23.949554, 32.082855>,  <32.312401, 23.824839, 31.924957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658108, 23.949554, 32.082855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136282, 0.900525, -0.412895,
		-0.484212, 0.303057, 0.820789,
		0.864272, 0.311788, 0.394744,
		32.917389, 24.043091, 32.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161900, 24.387970, 32.375484>,  <32.312401, 23.824839, 31.924957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161900, 24.387970, 32.375484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.546978, 24.404404, 32.268505>,  <32.778027, 24.414265, 32.204319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.546978, 24.404404, 32.268505>,  <32.161900, 24.387970, 32.375484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546978, 24.404404, 32.268505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159339, 0.884931, -0.437616,
		0.218690, 0.463906, 0.858467,
		0.962697, 0.041085, -0.267444,
		32.835789, 24.416729, 32.188271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250275, 25.100679, 32.460838>,  <32.161900, 24.387970, 32.375484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250275, 25.100679, 32.460838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543789, 24.953819, 32.232189>,  <32.719898, 24.865704, 32.095001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543789, 24.953819, 32.232189>,  <32.250275, 25.100679, 32.460838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543789, 24.953819, 32.232189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032416, 0.859357, -0.510348,
		0.678603, 0.355958, 0.642488,
		0.733789, -0.367151, -0.571624,
		32.763927, 24.843674, 32.060703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719532, 25.615627, 32.312904>,  <32.250275, 25.100679, 32.460838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719532, 25.615627, 32.312904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811378, 25.352867, 32.025639>,  <32.866486, 25.195211, 31.853279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811378, 25.352867, 32.025639>,  <32.719532, 25.615627, 32.312904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811378, 25.352867, 32.025639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077855, 0.747909, -0.659219,
		0.970162, 0.095456, 0.222876,
		0.229617, -0.656901, -0.718162,
		32.880264, 25.155796, 31.810190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247406, 26.022491, 31.911818>,  <32.719532, 25.615627, 32.312904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247406, 26.022491, 31.911818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097229, 25.727829, 31.686825>,  <33.007122, 25.551031, 31.551828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097229, 25.727829, 31.686825>,  <33.247406, 26.022491, 31.911818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097229, 25.727829, 31.686825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018503, 0.600798, -0.799187,
		0.926662, -0.310453, -0.211933,
		-0.375439, -0.736655, -0.562481,
		32.984596, 25.506832, 31.518080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730465, 25.983347, 31.382973>,  <33.247406, 26.022491, 31.911818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730465, 25.983347, 31.382973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400135, 25.811394, 31.236984>,  <33.201935, 25.708221, 31.149391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400135, 25.811394, 31.236984>,  <33.730465, 25.983347, 31.382973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400135, 25.811394, 31.236984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145329, 0.463105, -0.874307,
		0.544874, -0.775069, -0.319970,
		-0.825827, -0.429886, -0.364974,
		33.152386, 25.682428, 31.127493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.300417, 22.264692, 35.225277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.063112, 22.165035, 34.919083>,  <30.920731, 22.105242, 34.735367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.063112, 22.165035, 34.919083>,  <31.300417, 22.264692, 35.225277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063112, 22.165035, 34.919083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242276, 0.962075, -0.125357,
		0.767689, 0.111090, -0.631121,
		-0.593260, -0.249141, -0.765488,
		30.885134, 22.090294, 34.689438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338316, 22.875294, 34.782684>,  <31.300417, 22.264692, 35.225277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338316, 22.875294, 34.782684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.022486, 22.684780, 34.627907>,  <30.832987, 22.570473, 34.535042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.022486, 22.684780, 34.627907>,  <31.338316, 22.875294, 34.782684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022486, 22.684780, 34.627907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344102, 0.865730, -0.363462,
		0.508099, -0.153833, -0.847449,
		-0.789575, -0.476284, -0.386943,
		30.785614, 22.541895, 34.511826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227991, 23.072489, 34.012074>,  <31.338316, 22.875294, 34.782684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227991, 23.072489, 34.012074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.863129, 22.967304, 34.137817>,  <30.644211, 22.904194, 34.213264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.863129, 22.967304, 34.137817>,  <31.227991, 23.072489, 34.012074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863129, 22.967304, 34.137817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336149, 0.918828, -0.206786,
		-0.234467, -0.294293, -0.926508,
		-0.912157, -0.262960, 0.314360,
		30.589481, 22.888416, 34.232124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794668, 23.223637, 33.510685>,  <31.227991, 23.072489, 34.012074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794668, 23.223637, 33.510685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.559525, 23.206791, 33.833832>,  <30.418438, 23.196684, 34.027721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.559525, 23.206791, 33.833832>,  <30.794668, 23.223637, 33.510685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559525, 23.206791, 33.833832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464080, 0.835531, -0.294140,
		-0.662609, -0.547827, -0.510719,
		-0.587860, -0.042115, 0.807866,
		30.383167, 23.194157, 34.076191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016493, 23.469303, 33.249474>,  <30.794668, 23.223637, 33.510685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016493, 23.469303, 33.249474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.989990, 23.497215, 33.647617>,  <29.974089, 23.513962, 33.886505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.989990, 23.497215, 33.647617>,  <30.016493, 23.469303, 33.249474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989990, 23.497215, 33.647617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461069, 0.882524, -0.092560,
		-0.884887, -0.465062, -0.026299,
		-0.066256, 0.069780, 0.995360,
		29.970114, 23.518148, 33.946224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286329, 23.560802, 33.351120>,  <30.016493, 23.469303, 33.249474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286329, 23.560802, 33.351120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.475216, 23.676807, 33.684086>,  <29.588547, 23.746410, 33.883865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.475216, 23.676807, 33.684086>,  <29.286329, 23.560802, 33.351120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475216, 23.676807, 33.684086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428633, 0.900712, -0.070649,
		-0.770251, -0.323437, 0.549638,
		0.472216, 0.290010, 0.832410,
		29.616880, 23.763811, 33.933807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794615, 23.883776, 33.629368>,  <29.286329, 23.560802, 33.351120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794615, 23.883776, 33.629368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.120121, 24.028229, 33.811520>,  <29.315424, 24.114901, 33.920811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.120121, 24.028229, 33.811520>,  <28.794615, 23.883776, 33.629368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120121, 24.028229, 33.811520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409612, 0.912220, 0.008556,
		-0.412317, -0.193492, 0.890256,
		0.813764, 0.361132, 0.455380,
		29.364250, 24.136568, 33.948135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536671, 24.281090, 34.143520>,  <28.794615, 23.883776, 33.629368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536671, 24.281090, 34.143520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.906969, 24.420490, 34.084820>,  <29.129148, 24.504131, 34.049599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.906969, 24.420490, 34.084820>,  <28.536671, 24.281090, 34.143520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906969, 24.420490, 34.084820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324013, 0.931143, 0.167294,
		0.194952, -0.107322, 0.974924,
		0.925748, 0.348502, -0.146754,
		29.184694, 24.525042, 34.040794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593168, 25.022810, 34.550423>,  <28.536671, 24.281090, 34.143520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593168, 25.022810, 34.550423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.901909, 25.030052, 34.296207>,  <29.087154, 25.034397, 34.143677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.901909, 25.030052, 34.296207>,  <28.593168, 25.022810, 34.550423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901909, 25.030052, 34.296207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138962, 0.980231, -0.140843,
		0.620429, 0.197026, 0.759111,
		0.771854, 0.018104, -0.635542,
		29.133465, 25.035484, 34.105545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003366, 25.668739, 34.673912>,  <28.593168, 25.022810, 34.550423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003366, 25.668739, 34.673912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.118393, 25.563187, 34.305637>,  <29.187408, 25.499855, 34.084671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.118393, 25.563187, 34.305637>,  <29.003366, 25.668739, 34.673912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118393, 25.563187, 34.305637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024155, 0.958992, -0.282402,
		0.957456, 0.103449, 0.269401,
		0.287567, -0.263880, -0.920691,
		29.204662, 25.484022, 34.029430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515928, 26.177750, 34.481743>,  <29.003366, 25.668739, 34.673912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515928, 26.177750, 34.481743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.396549, 26.027546, 34.130760>,  <29.324923, 25.937424, 33.920170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.396549, 26.027546, 34.130760>,  <29.515928, 26.177750, 34.481743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396549, 26.027546, 34.130760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075114, 0.907258, -0.413813,
		0.951467, -0.189409, -0.242560,
		-0.298445, -0.375510, -0.877453,
		29.307016, 25.914892, 33.867523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934244, 26.552397, 33.960472>,  <29.515928, 26.177750, 34.481743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934244, 26.552397, 33.960472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627735, 26.401024, 33.752773>,  <29.443830, 26.310200, 33.628155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627735, 26.401024, 33.752773>,  <29.934244, 26.552397, 33.960472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627735, 26.401024, 33.752773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028088, 0.827101, -0.561351,
		0.641902, -0.415563, -0.644414,
		-0.766272, -0.378432, -0.519246,
		29.397854, 26.287495, 33.597000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580458, 26.558855, 33.569439>,  <29.934244, 26.552397, 33.960472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580458, 26.558855, 33.569439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.928001, 26.537975, 33.372520>,  <31.136528, 26.525448, 33.254368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.928001, 26.537975, 33.372520>,  <30.580458, 26.558855, 33.569439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928001, 26.537975, 33.372520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371886, -0.587581, 0.718644,
		-0.326778, -0.807480, -0.491113,
		0.868859, -0.052199, -0.492299,
		31.188660, 26.522316, 33.224831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751434, 25.889639, 33.586670>,  <30.580458, 26.558855, 33.569439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751434, 25.889639, 33.586670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.102522, 26.073860, 33.533752>,  <31.313175, 26.184393, 33.502003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.102522, 26.073860, 33.533752>,  <30.751434, 25.889639, 33.586670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102522, 26.073860, 33.533752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425944, -0.623424, 0.655678,
		0.219501, -0.631850, -0.743361,
		0.877719, 0.460552, -0.132290,
		31.365837, 26.212027, 33.494064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254877, 25.399179, 33.549091>,  <30.751434, 25.889639, 33.586670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254877, 25.399179, 33.549091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484932, 25.707169, 33.659622>,  <31.622965, 25.891962, 33.725941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.484932, 25.707169, 33.659622>,  <31.254877, 25.399179, 33.549091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484932, 25.707169, 33.659622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516546, -0.603744, 0.607184,
		0.634348, -0.206476, -0.744963,
		0.575136, 0.769974, 0.276330,
		31.657473, 25.938160, 33.742519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999292, 25.174528, 33.654861>,  <31.254877, 25.399179, 33.549091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999292, 25.174528, 33.654861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.982370, 25.534977, 33.827461>,  <31.972218, 25.751245, 33.931019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.982370, 25.534977, 33.827461>,  <31.999292, 25.174528, 33.654861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982370, 25.534977, 33.827461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581701, -0.328917, 0.743934,
		0.812302, 0.282474, -0.510269,
		-0.042306, 0.901123, 0.431495,
		31.969679, 25.805313, 33.956909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652740, 25.510675, 33.592129>,  <31.999292, 25.174528, 33.654861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652740, 25.510675, 33.592129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.456543, 25.667290, 33.903542>,  <32.338825, 25.761259, 34.090389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.456543, 25.667290, 33.903542>,  <32.652740, 25.510675, 33.592129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456543, 25.667290, 33.903542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654856, -0.423828, 0.625727,
		0.574959, 0.816743, -0.048514,
		-0.490496, 0.391537, 0.778532,
		32.309395, 25.784750, 34.137100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144958, 25.676889, 34.107624>,  <32.652740, 25.510675, 33.592129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144958, 25.676889, 34.107624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815586, 25.694958, 34.333874>,  <32.617962, 25.705799, 34.469624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815586, 25.694958, 34.333874>,  <33.144958, 25.676889, 34.107624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815586, 25.694958, 34.333874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504993, -0.396217, 0.766808,
		0.258744, 0.917045, 0.303446,
		-0.823428, 0.045169, 0.565620,
		32.568558, 25.708508, 34.503559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340340, 26.088621, 34.652287>,  <33.144958, 25.676889, 34.107624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340340, 26.088621, 34.652287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041298, 25.836090, 34.734760>,  <32.861874, 25.684570, 34.784245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041298, 25.836090, 34.734760>,  <33.340340, 26.088621, 34.652287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041298, 25.836090, 34.734760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536631, -0.391302, 0.747602,
		-0.391302, 0.669556, 0.631330,
		-0.747602, -0.631330, 0.206187,
		32.817017, 25.646690, 34.796616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357277, 25.908091, 35.464199>,  <33.340340, 26.088621, 34.652287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357277, 25.908091, 35.464199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.127491, 25.624950, 35.299789>,  <32.989620, 25.455067, 35.201145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.127491, 25.624950, 35.299789>,  <33.357277, 25.908091, 35.464199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127491, 25.624950, 35.299789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232747, -0.622677, 0.747063,
		-0.784743, 0.333495, 0.522455,
		-0.574462, -0.707852, -0.411022,
		32.955151, 25.412594, 35.176483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056259, 25.659245, 36.149143>,  <33.357277, 25.908091, 35.464199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056259, 25.659245, 36.149143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.017227, 25.376972, 35.868431>,  <32.993809, 25.207609, 35.700005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.017227, 25.376972, 35.868431>,  <33.056259, 25.659245, 36.149143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017227, 25.376972, 35.868431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330052, -0.688183, 0.646119,
		-0.938905, -0.168573, 0.300066,
		-0.097582, -0.705682, -0.701777,
		32.987953, 25.165268, 35.657898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612419, 25.146160, 36.414700>,  <33.056259, 25.659245, 36.149143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612419, 25.146160, 36.414700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.814114, 24.984066, 36.109669>,  <32.935131, 24.886810, 35.926651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.814114, 24.984066, 36.109669>,  <32.612419, 25.146160, 36.414700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814114, 24.984066, 36.109669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260509, -0.770540, 0.581724,
		-0.823333, -0.491987, -0.282969,
		0.504240, -0.405237, -0.762579,
		32.965385, 24.862495, 35.880894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422325, 24.489185, 36.347813>,  <32.612419, 25.146160, 36.414700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422325, 24.489185, 36.347813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763832, 24.457829, 36.141930>,  <32.968739, 24.439014, 36.018398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763832, 24.457829, 36.141930>,  <32.422325, 24.489185, 36.347813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763832, 24.457829, 36.141930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139657, -0.917890, 0.371448,
		-0.501567, -0.389015, -0.772721,
		0.853772, -0.078390, -0.514712,
		33.019962, 24.434311, 35.987514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477623, 23.776686, 36.073059>,  <32.422325, 24.489185, 36.347813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477623, 23.776686, 36.073059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.837036, 23.952244, 36.074318>,  <33.052685, 24.057579, 36.075073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.837036, 23.952244, 36.074318>,  <32.477623, 23.776686, 36.073059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837036, 23.952244, 36.074318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387920, -0.797481, 0.462106,
		0.205323, -0.413997, -0.886819,
		0.898532, 0.438896, 0.003144,
		33.106594, 24.083912, 36.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862038, 23.312311, 35.712421>,  <32.477623, 23.776686, 36.073059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862038, 23.312311, 35.712421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.109436, 23.524620, 35.944195>,  <33.257877, 23.652006, 36.083260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.109436, 23.524620, 35.944195>,  <32.862038, 23.312311, 35.712421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109436, 23.524620, 35.944195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499623, -0.834775, 0.231362,
		0.606494, 0.146399, -0.781494,
		0.618500, 0.530771, 0.579430,
		33.294987, 23.683851, 36.118023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529766, 23.095564, 35.565681>,  <32.862038, 23.312311, 35.712421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529766, 23.095564, 35.565681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.585377, 23.288410, 35.911686>,  <33.618744, 23.404118, 36.119289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.585377, 23.288410, 35.911686>,  <33.529766, 23.095564, 35.565681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585377, 23.288410, 35.911686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482737, -0.795672, 0.365884,
		0.864660, 0.366702, -0.343355,
		0.139028, 0.482115, 0.865007,
		33.627087, 23.433044, 36.171188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464890, 22.768801, 34.886524>,  <33.529766, 23.095564, 35.565681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464890, 22.768801, 34.886524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751614, 22.532291, 34.738701>,  <33.923649, 22.390387, 34.650005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751614, 22.532291, 34.738701>,  <33.464890, 22.768801, 34.886524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751614, 22.532291, 34.738701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104495, 0.432935, -0.895348,
		0.689392, 0.680414, 0.248548,
		0.716812, -0.591273, -0.369562,
		33.966656, 22.354910, 34.627831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947800, 23.166605, 34.548542>,  <33.464890, 22.768801, 34.886524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947800, 23.166605, 34.548542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947144, 22.813175, 34.361225>,  <33.946751, 22.601118, 34.248837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947144, 22.813175, 34.361225>,  <33.947800, 23.166605, 34.548542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947144, 22.813175, 34.361225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236009, 0.455403, -0.858433,
		0.971749, 0.109111, -0.209279,
		-0.001642, -0.883574, -0.468289,
		33.946651, 22.548103, 34.220737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479279, 23.100925, 34.070019>,  <33.947800, 23.166605, 34.548542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479279, 23.100925, 34.070019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.222099, 22.827187, 33.932446>,  <34.067791, 22.662943, 33.849903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.222099, 22.827187, 33.932446>,  <34.479279, 23.100925, 34.070019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222099, 22.827187, 33.932446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103399, 0.522495, -0.846350,
		0.758898, -0.508597, -0.406697,
		-0.642948, -0.684346, -0.343932,
		34.029217, 22.621883, 33.829266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522701, 23.186417, 33.415806>,  <34.479279, 23.100925, 34.070019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522701, 23.186417, 33.415806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.186543, 22.969784, 33.423969>,  <33.984848, 22.839804, 33.428867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.186543, 22.969784, 33.423969>,  <34.522701, 23.186417, 33.415806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186543, 22.969784, 33.423969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374388, 0.552906, -0.744398,
		0.391871, -0.633232, -0.667424,
		-0.840399, -0.541584, 0.020406,
		33.934422, 22.807308, 33.430092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469440, 22.927616, 32.752193>,  <34.522701, 23.186417, 33.415806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469440, 22.927616, 32.752193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108162, 22.934334, 32.923752>,  <33.891396, 22.938364, 33.026688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108162, 22.934334, 32.923752>,  <34.469440, 22.927616, 32.752193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108162, 22.934334, 32.923752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404786, 0.299039, -0.864132,
		-0.142770, -0.954093, -0.263292,
		-0.903197, 0.016795, 0.428897,
		33.837204, 22.939373, 33.052422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001392, 22.740349, 32.218372>,  <34.469440, 22.927616, 32.752193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001392, 22.740349, 32.218372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.767838, 22.896511, 32.503094>,  <33.627705, 22.990210, 32.673927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.767838, 22.896511, 32.503094>,  <34.001392, 22.740349, 32.218372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767838, 22.896511, 32.503094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375470, 0.647508, -0.663141,
		-0.719790, -0.654459, -0.231486,
		-0.583887, 0.390407, 0.711799,
		33.592670, 23.013634, 32.716633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465797, 22.798605, 31.906286>,  <34.001392, 22.740349, 32.218372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465797, 22.798605, 31.906286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.394730, 23.035862, 32.220387>,  <33.352089, 23.178215, 32.408848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.394730, 23.035862, 32.220387>,  <33.465797, 22.798605, 31.906286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394730, 23.035862, 32.220387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385878, 0.692051, -0.610052,
		-0.905280, -0.411398, 0.105923,
		-0.177670, 0.593141, 0.785250,
		33.341427, 23.213804, 32.455963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797897, 22.584145, 31.497711>,  <33.465797, 22.798605, 31.906286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797897, 22.584145, 31.497711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.941216, 22.410389, 31.167152>,  <33.027206, 22.306135, 30.968817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.941216, 22.410389, 31.167152>,  <32.797897, 22.584145, 31.497711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941216, 22.410389, 31.167152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219511, -0.821155, 0.526802,
		-0.907438, -0.370151, -0.198858,
		0.358290, -0.434388, -0.826399,
		33.048702, 22.280073, 30.919233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468410, 21.902523, 31.499212>,  <32.797897, 22.584145, 31.497711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468410, 21.902523, 31.499212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798767, 21.856380, 31.278450>,  <32.996979, 21.828695, 31.145992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798767, 21.856380, 31.278450>,  <32.468410, 21.902523, 31.499212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798767, 21.856380, 31.278450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221294, -0.833986, 0.505466,
		-0.518590, -0.539593, -0.663253,
		0.825890, -0.115356, -0.551906,
		33.046535, 21.821774, 31.112879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396339, 21.248501, 31.370111>,  <32.468410, 21.902523, 31.499212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396339, 21.248501, 31.370111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781742, 21.328953, 31.299465>,  <33.012985, 21.377224, 31.257078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781742, 21.328953, 31.299465>,  <32.396339, 21.248501, 31.370111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781742, 21.328953, 31.299465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263638, -0.827174, 0.496264,
		-0.046278, -0.524719, -0.850017,
		0.963511, 0.201130, -0.176615,
		33.070797, 21.389292, 31.246481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609089, 20.634850, 31.038034>,  <32.396339, 21.248501, 31.370111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609089, 20.634850, 31.038034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903770, 20.822311, 31.233025>,  <33.080578, 20.934788, 31.350018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903770, 20.822311, 31.233025>,  <32.609089, 20.634850, 31.038034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903770, 20.822311, 31.233025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035597, -0.746763, 0.664137,
		0.675277, -0.471920, -0.566827,
		0.736705, 0.468654, 0.487473,
		33.124783, 20.962908, 31.379267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987309, 20.023222, 31.266441>,  <32.609089, 20.634850, 31.038034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987309, 20.023222, 31.266441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156620, 20.326973, 31.464100>,  <33.258205, 20.509224, 31.582695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156620, 20.326973, 31.464100>,  <32.987309, 20.023222, 31.266441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156620, 20.326973, 31.464100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155125, -0.598106, 0.786261,
		0.892622, -0.256151, -0.370963,
		0.423276, 0.759379, 0.494147,
		33.283604, 20.554787, 31.612345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684361, 19.891375, 31.420509>,  <32.987309, 20.023222, 31.266441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684361, 19.891375, 31.420509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574612, 20.174847, 31.680508>,  <33.508762, 20.344929, 31.836506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574612, 20.174847, 31.680508>,  <33.684361, 19.891375, 31.420509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574612, 20.174847, 31.680508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112401, -0.647666, 0.753588,
		0.955031, 0.279827, 0.098048,
		-0.274377, 0.708679, 0.649994,
		33.492298, 20.387451, 31.875505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974392, 19.680603, 31.976961>,  <33.684361, 19.891375, 31.420509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974392, 19.680603, 31.976961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.728073, 19.953640, 32.134373>,  <33.580284, 20.117462, 32.228821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.728073, 19.953640, 32.134373>,  <33.974392, 19.680603, 31.976961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728073, 19.953640, 32.134373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010640, -0.506622, 0.862103,
		0.787837, 0.526689, 0.319237,
		-0.615793, 0.682593, 0.393531,
		33.543335, 20.158419, 32.252434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332397, 19.902653, 32.593498>,  <33.974392, 19.680603, 31.976961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332397, 19.902653, 32.593498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937340, 19.961338, 32.615532>,  <33.700306, 19.996550, 32.628754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937340, 19.961338, 32.615532>,  <34.332397, 19.902653, 32.593498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937340, 19.961338, 32.615532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001712, -0.361574, 0.932342,
		0.156702, 0.920728, 0.357358,
		-0.987644, 0.146711, 0.055083,
		33.641045, 20.005352, 32.632057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159325, 20.428488, 33.126568>,  <34.332397, 19.902653, 32.593498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159325, 20.428488, 33.126568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.830971, 20.200050, 33.126049>,  <33.633961, 20.062988, 33.125740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.830971, 20.200050, 33.126049>,  <34.159325, 20.428488, 33.126568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830971, 20.200050, 33.126049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195279, -0.282816, 0.939085,
		-0.536673, 0.770626, 0.343682,
		-0.820883, -0.571095, -0.001293,
		33.584705, 20.028721, 33.125660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.349375, 32.457165, 24.539442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033266, 32.218754, 24.482559>,  <29.843601, 32.075706, 24.448429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033266, 32.218754, 24.482559>,  <30.349375, 32.457165, 24.539442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033266, 32.218754, 24.482559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575037, -0.801547, 0.163876,
		-0.211661, 0.047731, 0.976177,
		-0.790273, -0.596024, -0.142209,
		29.796185, 32.039948, 24.439896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322720, 31.900179, 24.990637>,  <30.349375, 32.457165, 24.539442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322720, 31.900179, 24.990637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099785, 31.747780, 24.695553>,  <29.966024, 31.656342, 24.518503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099785, 31.747780, 24.695553>,  <30.322720, 31.900179, 24.990637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099785, 31.747780, 24.695553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545334, -0.837962, 0.020772,
		-0.626087, -0.390721, 0.674798,
		-0.557338, -0.380995, -0.737710,
		29.932583, 31.633482, 24.474239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119484, 31.282366, 25.213835>,  <30.322720, 31.900179, 24.990637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119484, 31.282366, 25.213835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089417, 31.234573, 24.817841>,  <30.071377, 31.205898, 24.580244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089417, 31.234573, 24.817841>,  <30.119484, 31.282366, 25.213835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089417, 31.234573, 24.817841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370361, -0.925125, 0.083532,
		-0.925842, -0.360373, 0.113792,
		-0.075169, -0.119481, -0.989987,
		30.066866, 31.198729, 24.520845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893282, 30.660778, 25.214954>,  <30.119484, 31.282366, 25.213835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893282, 30.660778, 25.214954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024076, 30.699875, 24.838970>,  <30.102552, 30.723333, 24.613379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024076, 30.699875, 24.838970>,  <29.893282, 30.660778, 25.214954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024076, 30.699875, 24.838970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365514, -0.930309, 0.030413,
		-0.871482, -0.353513, -0.339923,
		0.326984, 0.097743, -0.939961,
		30.122171, 30.729198, 24.556982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836100, 30.005457, 24.997892>,  <29.893282, 30.660778, 25.214954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836100, 30.005457, 24.997892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082788, 30.182331, 24.737392>,  <30.230803, 30.288456, 24.581093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082788, 30.182331, 24.737392>,  <29.836100, 30.005457, 24.997892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082788, 30.182331, 24.737392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539181, -0.840065, -0.059792,
		-0.573531, -0.314266, -0.756505,
		0.616723, 0.442185, -0.651249,
		30.267805, 30.314987, 24.542017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914732, 29.507046, 24.593204>,  <29.836100, 30.005457, 24.997892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914732, 29.507046, 24.593204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225863, 29.746250, 24.515877>,  <30.412540, 29.889772, 24.469481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225863, 29.746250, 24.515877>,  <29.914732, 29.507046, 24.593204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225863, 29.746250, 24.515877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550257, -0.796612, -0.250252,
		-0.303652, 0.088278, -0.948684,
		0.777825, 0.598010, -0.193317,
		30.459209, 29.925653, 24.457882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146578, 29.316036, 23.898115>,  <29.914732, 29.507046, 24.593204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146578, 29.316036, 23.898115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464334, 29.481319, 24.076195>,  <30.654989, 29.580490, 24.183043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464334, 29.481319, 24.076195>,  <30.146578, 29.316036, 23.898115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464334, 29.481319, 24.076195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585714, -0.715240, -0.381275,
		0.160877, 0.563640, -0.810202,
		0.794392, 0.413208, 0.445198,
		30.702652, 29.605282, 24.209755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721321, 29.125113, 23.473650>,  <30.146578, 29.316036, 23.898115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721321, 29.125113, 23.473650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872211, 29.242256, 23.825089>,  <30.962746, 29.312542, 24.035952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872211, 29.242256, 23.825089>,  <30.721321, 29.125113, 23.473650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872211, 29.242256, 23.825089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749581, -0.653701, -0.103939,
		0.543900, 0.697789, -0.466116,
		0.377228, 0.292859, 0.878597,
		30.985380, 29.330114, 24.088667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466150, 29.047764, 23.398001>,  <30.721321, 29.125113, 23.473650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466150, 29.047764, 23.398001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401817, 29.040028, 23.792717>,  <31.363218, 29.035385, 24.029547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401817, 29.040028, 23.792717>,  <31.466150, 29.047764, 23.398001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401817, 29.040028, 23.792717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784206, -0.609587, 0.115865,
		0.599295, 0.792483, 0.113208,
		-0.160831, -0.019342, 0.986792,
		31.353567, 29.034225, 24.088755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099548, 29.142952, 23.737671>,  <31.466150, 29.047764, 23.398001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099548, 29.142952, 23.737671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884352, 28.963127, 24.022896>,  <31.755234, 28.855232, 24.194031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884352, 28.963127, 24.022896>,  <32.099548, 29.142952, 23.737671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884352, 28.963127, 24.022896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790550, -0.562682, 0.241702,
		0.292567, 0.693745, 0.658120,
		-0.537992, -0.449563, 0.713062,
		31.722954, 28.828259, 24.236814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562393, 29.036057, 24.302837>,  <32.099548, 29.142952, 23.737671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562393, 29.036057, 24.302837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252777, 28.791420, 24.368343>,  <32.067009, 28.644638, 24.407646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252777, 28.791420, 24.368343>,  <32.562393, 29.036057, 24.302837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252777, 28.791420, 24.368343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630464, -0.720808, 0.288013,
		-0.058105, 0.326181, 0.943520,
		-0.774041, -0.611590, 0.163763,
		32.020565, 28.607943, 24.417473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623505, 28.855381, 25.016066>,  <32.562393, 29.036057, 24.302837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623505, 28.855381, 25.016066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431068, 28.572140, 24.809322>,  <32.315605, 28.402195, 24.685276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431068, 28.572140, 24.809322>,  <32.623505, 28.855381, 25.016066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431068, 28.572140, 24.809322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733461, -0.648044, 0.205120,
		-0.480191, -0.280412, 0.831135,
		-0.481094, -0.708102, -0.516856,
		32.286739, 28.359709, 24.654264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376865, 28.645514, 25.613354>,  <32.623505, 28.855381, 25.016066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376865, 28.645514, 25.613354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598663, 28.831306, 25.889553>,  <32.731743, 28.942783, 26.055273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598663, 28.831306, 25.889553>,  <32.376865, 28.645514, 25.613354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598663, 28.831306, 25.889553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191526, 0.878696, -0.437277,
		-0.809845, 0.110222, 0.576196,
		0.554499, 0.464483, 0.690497,
		32.765015, 28.970652, 26.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010307, 29.246864, 25.746563>,  <32.376865, 28.645514, 25.613354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010307, 29.246864, 25.746563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384289, 29.311008, 25.873142>,  <32.608677, 29.349495, 25.949089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384289, 29.311008, 25.873142>,  <32.010307, 29.246864, 25.746563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384289, 29.311008, 25.873142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003367, 0.887954, -0.459920,
		-0.354743, 0.431071, 0.829660,
		0.934958, 0.160360, 0.316447,
		32.664776, 29.359116, 25.968077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009308, 29.887228, 25.989239>,  <32.010307, 29.246864, 25.746563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009308, 29.887228, 25.989239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394012, 29.826344, 25.898163>,  <32.624836, 29.789814, 25.843517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394012, 29.826344, 25.898163>,  <32.009308, 29.887228, 25.989239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394012, 29.826344, 25.898163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059315, 0.927378, -0.369395,
		0.267381, 0.341766, 0.900946,
		0.961764, -0.152209, -0.227691,
		32.682541, 29.780682, 25.829855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305607, 30.484074, 26.114582>,  <32.009308, 29.887228, 25.989239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305607, 30.484074, 26.114582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609371, 30.338005, 25.899197>,  <32.791630, 30.250364, 25.769966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609371, 30.338005, 25.899197>,  <32.305607, 30.484074, 26.114582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609371, 30.338005, 25.899197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216728, 0.922347, -0.319852,
		0.613449, 0.126200, 0.779586,
		0.759414, -0.365171, -0.538461,
		32.837196, 30.228455, 25.737658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768600, 31.016533, 26.250723>,  <32.305607, 30.484074, 26.114582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768600, 31.016533, 26.250723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862526, 30.814079, 25.918774>,  <32.918880, 30.692608, 25.719604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862526, 30.814079, 25.918774>,  <32.768600, 31.016533, 26.250723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862526, 30.814079, 25.918774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191823, 0.861084, -0.470891,
		0.952925, -0.048618, 0.299282,
		0.234814, -0.506133, -0.829875,
		32.932968, 30.662239, 25.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383102, 31.161776, 26.145758>,  <32.768600, 31.016533, 26.250723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383102, 31.161776, 26.145758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231445, 31.071495, 25.786800>,  <33.140453, 31.017326, 25.571426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231445, 31.071495, 25.786800>,  <33.383102, 31.161776, 26.145758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231445, 31.071495, 25.786800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459033, 0.796183, -0.394183,
		0.803460, -0.561381, -0.198251,
		-0.379131, -0.225707, -0.897394,
		33.117702, 31.003784, 25.517582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954678, 31.342524, 25.796997>,  <33.383102, 31.161776, 26.145758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954678, 31.342524, 25.796997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640778, 31.329876, 25.549397>,  <33.452438, 31.322287, 25.400837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640778, 31.329876, 25.549397>,  <33.954678, 31.342524, 25.796997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640778, 31.329876, 25.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348167, 0.803752, -0.482454,
		0.512778, -0.594123, -0.619739,
		-0.784754, -0.031620, -0.619001,
		33.405350, 31.320391, 25.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099361, 31.818274, 25.259745>,  <33.954678, 31.342524, 25.796997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099361, 31.818274, 25.259745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713272, 31.738926, 25.191643>,  <33.481617, 31.691317, 25.150782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713272, 31.738926, 25.191643>,  <34.099361, 31.818274, 25.259745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713272, 31.738926, 25.191643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086823, 0.857581, -0.506968,
		0.246575, -0.474557, -0.844983,
		-0.965227, -0.198370, -0.170256,
		33.423702, 31.679415, 25.140566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929710, 32.002312, 24.573366>,  <34.099361, 31.818274, 25.259745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929710, 32.002312, 24.573366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569557, 31.999104, 24.747372>,  <33.353466, 31.997179, 24.851776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569557, 31.999104, 24.747372>,  <33.929710, 32.002312, 24.573366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569557, 31.999104, 24.747372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101978, 0.975869, -0.193082,
		-0.422970, -0.218211, -0.879478,
		-0.900387, -0.008019, 0.435016,
		33.299442, 31.996698, 24.877876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414677, 32.293613, 24.072048>,  <33.929710, 32.002312, 24.573366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414677, 32.293613, 24.072048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275372, 32.325695, 24.445633>,  <33.191788, 32.344944, 24.669783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275372, 32.325695, 24.445633>,  <33.414677, 32.293613, 24.072048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275372, 32.325695, 24.445633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323928, 0.924659, -0.200189,
		-0.879650, -0.372254, -0.296044,
		-0.348261, 0.080199, 0.933960,
		33.170895, 32.349754, 24.725821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733299, 32.589649, 23.969339>,  <33.414677, 32.293613, 24.072048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733299, 32.589649, 23.969339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866390, 32.672020, 24.337444>,  <32.946243, 32.721443, 24.558308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866390, 32.672020, 24.337444>,  <32.733299, 32.589649, 23.969339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866390, 32.672020, 24.337444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387008, 0.919720, -0.065880,
		-0.859952, -0.334230, 0.385712,
		0.332728, 0.205927, 0.920264,
		32.966209, 32.733799, 24.613523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180672, 32.924904, 24.260376>,  <32.733299, 32.589649, 23.969339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180672, 32.924904, 24.260376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505947, 33.051079, 24.456020>,  <32.701111, 33.126785, 24.573408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505947, 33.051079, 24.456020>,  <32.180672, 32.924904, 24.260376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505947, 33.051079, 24.456020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219868, 0.944613, -0.243650,
		-0.538877, 0.090593, 0.837499,
		0.813185, 0.315437, 0.489112,
		32.749901, 33.145710, 24.602755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004520, 33.525028, 24.622232>,  <32.180672, 32.924904, 24.260376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004520, 33.525028, 24.622232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401543, 33.558193, 24.657925>,  <32.639755, 33.578091, 24.679340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401543, 33.558193, 24.657925>,  <32.004520, 33.525028, 24.622232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401543, 33.558193, 24.657925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057585, 0.964939, -0.256080,
		-0.107332, 0.249036, 0.962529,
		0.992554, 0.082913, 0.089229,
		32.699310, 33.583069, 24.684692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073753, 33.971024, 25.167665>,  <32.004520, 33.525028, 24.622232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073753, 33.971024, 25.167665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414219, 33.970924, 24.957706>,  <32.618500, 33.970863, 24.831732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414219, 33.970924, 24.957706>,  <32.073753, 33.971024, 25.167665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414219, 33.970924, 24.957706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007016, 0.999916, 0.010901,
		0.524851, -0.012962, 0.851095,
		0.851165, -0.000250, -0.524898,
		32.669567, 33.970848, 24.800238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575447, 34.476604, 25.646666>,  <32.073753, 33.971024, 25.167665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575447, 34.476604, 25.646666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729902, 34.657871, 25.968048>,  <31.822575, 34.766632, 26.160877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729902, 34.657871, 25.968048>,  <31.575447, 34.476604, 25.646666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729902, 34.657871, 25.968048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487680, -0.639040, 0.594807,
		0.782986, -0.621506, -0.025757,
		0.386136, 0.453164, 0.803455,
		31.845743, 34.793819, 26.209085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033066, 34.064823, 26.066561>,  <31.575447, 34.476604, 25.646666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033066, 34.064823, 26.066561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911844, 34.334721, 26.335747>,  <31.839111, 34.496658, 26.497259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911844, 34.334721, 26.335747>,  <32.033066, 34.064823, 26.066561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911844, 34.334721, 26.335747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361291, -0.734807, 0.574045,
		0.881830, -0.069168, 0.466467,
		-0.303058, 0.674740, 0.672965,
		31.820927, 34.537144, 26.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424873, 34.022854, 26.776842>,  <32.033066, 34.064823, 26.066561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424873, 34.022854, 26.776842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061367, 34.176910, 26.841110>,  <31.843264, 34.269344, 26.879671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061367, 34.176910, 26.841110>,  <32.424873, 34.022854, 26.776842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061367, 34.176910, 26.841110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228033, -0.780750, 0.581748,
		0.349495, 0.492035, 0.797342,
		-0.908765, 0.385138, 0.160669,
		31.788738, 34.292454, 26.889311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270100, 33.997646, 27.500601>,  <32.424873, 34.022854, 26.776842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270100, 33.997646, 27.500601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913244, 34.024105, 27.321846>,  <31.699131, 34.039982, 27.214594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913244, 34.024105, 27.321846>,  <32.270100, 33.997646, 27.500601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913244, 34.024105, 27.321846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332125, -0.766592, 0.549572,
		-0.306229, 0.638718, 0.705877,
		-0.892142, 0.066145, -0.446887,
		31.645601, 34.043949, 27.187780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817591, 33.792141, 28.099936>,  <32.270100, 33.997646, 27.500601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817591, 33.792141, 28.099936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586390, 33.760380, 27.775070>,  <31.447668, 33.741322, 27.580151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586390, 33.760380, 27.775070>,  <31.817591, 33.792141, 28.099936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586390, 33.760380, 27.775070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576374, -0.664819, 0.475193,
		-0.577673, 0.742772, 0.338502,
		-0.578003, -0.079403, -0.812163,
		31.412989, 33.736561, 27.531422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138758, 33.761143, 28.335993>,  <31.817591, 33.792141, 28.099936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138758, 33.761143, 28.335993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100328, 33.612675, 27.966560>,  <31.077271, 33.523594, 27.744900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100328, 33.612675, 27.966560>,  <31.138758, 33.761143, 28.335993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100328, 33.612675, 27.966560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395632, -0.837192, 0.377605,
		-0.913370, 0.401677, -0.066412,
		-0.096075, -0.371168, -0.923582,
		31.071507, 33.501324, 27.689486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460571, 33.441261, 28.206562>,  <31.138758, 33.761143, 28.335993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460571, 33.441261, 28.206562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698065, 33.272331, 27.932590>,  <30.840561, 33.170975, 27.768208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698065, 33.272331, 27.932590>,  <30.460571, 33.441261, 28.206562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698065, 33.272331, 27.932590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247029, -0.905760, 0.344347,
		-0.765805, -0.035254, -0.642106,
		0.593734, -0.422321, -0.684927,
		30.876184, 33.145634, 27.727112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994482, 32.936440, 27.868149>,  <30.460571, 33.441261, 28.206562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994482, 32.936440, 27.868149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370186, 32.808666, 27.817947>,  <30.595608, 32.732002, 27.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370186, 32.808666, 27.817947>,  <29.994482, 32.936440, 27.868149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370186, 32.808666, 27.817947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245071, -0.880245, 0.406336,
		-0.240271, -0.350898, -0.905063,
		0.939260, -0.319436, -0.125502,
		30.651964, 32.712837, 27.780296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935339, 32.227753, 27.560873>,  <29.994482, 32.936440, 27.868149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935339, 32.227753, 27.560873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312206, 32.222507, 27.694824>,  <30.538326, 32.219360, 27.775194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312206, 32.222507, 27.694824>,  <29.935339, 32.227753, 27.560873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312206, 32.222507, 27.694824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153238, -0.905513, 0.395682,
		0.298049, -0.424116, -0.855156,
		0.942170, -0.013110, 0.334878,
		30.594858, 32.218575, 27.795288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090897, 31.545111, 27.407465>,  <29.935339, 32.227753, 27.560873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090897, 31.545111, 27.407465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407955, 31.618748, 27.639954>,  <30.598190, 31.662930, 27.779448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407955, 31.618748, 27.639954>,  <30.090897, 31.545111, 27.407465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407955, 31.618748, 27.639954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070994, -0.974708, 0.211905,
		0.605534, -0.126702, -0.785669,
		0.792647, 0.184093, 0.581224,
		30.645750, 31.673975, 27.814322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598513, 31.063744, 27.177721>,  <30.090897, 31.545111, 27.407465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598513, 31.063744, 27.177721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668303, 31.211300, 27.542900>,  <30.710176, 31.299833, 27.762009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668303, 31.211300, 27.542900>,  <30.598513, 31.063744, 27.177721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668303, 31.211300, 27.542900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245856, -0.914125, 0.322382,
		0.953475, 0.168207, -0.250184,
		0.174473, 0.368892, 0.912950,
		30.720644, 31.321968, 27.816786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254211, 30.711626, 27.441607>,  <30.598513, 31.063744, 27.177721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254211, 30.711626, 27.441607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063395, 30.861454, 27.759632>,  <30.948904, 30.951351, 27.950447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063395, 30.861454, 27.759632>,  <31.254211, 30.711626, 27.441607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063395, 30.861454, 27.759632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346385, -0.751283, 0.561775,
		0.807742, 0.543390, 0.228650,
		-0.477043, 0.374569, 0.795065,
		30.920282, 30.973825, 27.998152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662447, 30.449615, 27.923880>,  <31.254211, 30.711626, 27.441607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662447, 30.449615, 27.923880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337294, 30.536137, 28.140190>,  <31.142202, 30.588049, 28.269976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337294, 30.536137, 28.140190>,  <31.662447, 30.449615, 27.923880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337294, 30.536137, 28.140190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255157, -0.702384, 0.664494,
		0.523564, 0.678137, 0.515763,
		-0.812881, 0.216305, 0.540774,
		31.093430, 30.601028, 28.302422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812750, 30.413105, 28.653093>,  <31.662447, 30.449615, 27.923880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812750, 30.413105, 28.653093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414171, 30.385441, 28.633869>,  <31.175024, 30.368841, 28.622335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414171, 30.385441, 28.633869>,  <31.812750, 30.413105, 28.653093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414171, 30.385441, 28.633869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018538, -0.736756, 0.675904,
		-0.082154, 0.672612, 0.735421,
		-0.996447, -0.069162, -0.048058,
		31.115236, 30.364693, 28.619452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629168, 30.465252, 29.321342>,  <31.812750, 30.413105, 28.653093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629168, 30.465252, 29.321342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308496, 30.299934, 29.148598>,  <31.116095, 30.200745, 29.044950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308496, 30.299934, 29.148598>,  <31.629168, 30.465252, 29.321342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308496, 30.299934, 29.148598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002943, -0.719728, 0.694250,
		-0.597751, 0.557835, 0.575773,
		-0.801677, -0.413293, -0.431860,
		31.067993, 30.175947, 29.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236254, 30.349976, 29.855724>,  <31.629168, 30.465252, 29.321342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236254, 30.349976, 29.855724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110062, 30.104961, 29.565823>,  <31.034346, 29.957952, 29.391882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110062, 30.104961, 29.565823>,  <31.236254, 30.349976, 29.855724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110062, 30.104961, 29.565823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112779, -0.734143, 0.669564,
		-0.942206, 0.292972, 0.162526,
		-0.315481, -0.612538, -0.724755,
		31.015417, 29.921200, 29.348396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715275, 30.047722, 30.185957>,  <31.236254, 30.349976, 29.855724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715275, 30.047722, 30.185957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803028, 29.804989, 29.880375>,  <30.855680, 29.659349, 29.697025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803028, 29.804989, 29.880375>,  <30.715275, 30.047722, 30.185957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803028, 29.804989, 29.880375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177218, -0.794789, 0.580434,
		-0.959409, 0.008050, -0.281904,
		0.219382, -0.606832, -0.763954,
		30.868843, 29.622940, 29.651188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228657, 29.436935, 30.221369>,  <30.715275, 30.047722, 30.185957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228657, 29.436935, 30.221369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527918, 29.295795, 29.996597>,  <30.707474, 29.211111, 29.861734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527918, 29.295795, 29.996597>,  <30.228657, 29.436935, 30.221369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527918, 29.295795, 29.996597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068611, -0.801203, 0.594447,
		-0.659971, -0.483291, -0.575211,
		0.748151, -0.352852, -0.561930,
		30.752363, 29.189939, 29.828018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015079, 28.799818, 29.960606>,  <30.228657, 29.436935, 30.221369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015079, 28.799818, 29.960606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415051, 28.795425, 29.962482>,  <30.655033, 28.792789, 29.963608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415051, 28.795425, 29.962482>,  <30.015079, 28.799818, 29.960606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415051, 28.795425, 29.962482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011906, -0.885927, 0.463673,
		-0.000936, -0.463695, -0.885994,
		0.999929, -0.010982, 0.004692,
		30.715029, 28.792131, 29.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199219, 28.043999, 29.938053>,  <30.015079, 28.799818, 29.960606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199219, 28.043999, 29.938053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546394, 28.202049, 30.058422>,  <30.754700, 28.296881, 30.130644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546394, 28.202049, 30.058422>,  <30.199219, 28.043999, 29.938053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546394, 28.202049, 30.058422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218757, -0.848072, 0.482617,
		0.445899, -0.353053, -0.822512,
		0.867939, 0.395129, 0.300922,
		30.806776, 28.320587, 30.148699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704727, 27.653221, 29.716978>,  <30.199219, 28.043999, 29.938053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704727, 27.653221, 29.716978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847624, 27.852604, 30.032932>,  <30.933363, 27.972235, 30.222504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847624, 27.852604, 30.032932>,  <30.704727, 27.653221, 29.716978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847624, 27.852604, 30.032932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236172, -0.866415, 0.439941,
		0.903659, 0.029382, -0.427243,
		0.357243, 0.498459, 0.789883,
		30.954796, 28.002142, 30.269897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374781, 27.296053, 29.884539>,  <30.704727, 27.653221, 29.716978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374781, 27.296053, 29.884539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253853, 27.506512, 30.202477>,  <31.181297, 27.632786, 30.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253853, 27.506512, 30.202477>,  <31.374781, 27.296053, 29.884539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253853, 27.506512, 30.202477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127039, -0.804183, 0.580647,
		0.944704, 0.276516, 0.176278,
		-0.302318, 0.526145, 0.794843,
		31.163158, 27.664356, 30.440929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750065, 27.054312, 30.430889>,  <31.374781, 27.296053, 29.884539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750065, 27.054312, 30.430889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473818, 27.249958, 30.643986>,  <31.308069, 27.367346, 30.771843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473818, 27.249958, 30.643986>,  <31.750065, 27.054312, 30.430889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473818, 27.249958, 30.643986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197401, -0.581168, 0.789479,
		0.695758, 0.650392, 0.304813,
		-0.690618, 0.489116, 0.532740,
		31.266632, 27.396692, 30.803808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943018, 27.191427, 31.149786>,  <31.750065, 27.054312, 30.430889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943018, 27.191427, 31.149786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553757, 27.256908, 31.214497>,  <31.320200, 27.296198, 31.253323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553757, 27.256908, 31.214497>,  <31.943018, 27.191427, 31.149786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553757, 27.256908, 31.214497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101900, -0.323803, 0.940621,
		0.206366, 0.931855, 0.298429,
		-0.973154, 0.163702, 0.161778,
		31.261810, 27.306019, 31.263031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995823, 27.507195, 31.776014>,  <31.943018, 27.191427, 31.149786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995823, 27.507195, 31.776014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622347, 27.364738, 31.761127>,  <31.398262, 27.279264, 31.752195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622347, 27.364738, 31.761127>,  <31.995823, 27.507195, 31.776014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622347, 27.364738, 31.761127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104133, -0.369495, 0.923380,
		-0.342604, 0.858276, 0.382080,
		-0.933691, -0.356141, -0.037216,
		31.342239, 27.257896, 31.749962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758604, 27.667929, 32.470589>,  <31.995823, 27.507195, 31.776014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758604, 27.667929, 32.470589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532284, 27.381504, 32.307064>,  <31.396492, 27.209650, 32.208950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532284, 27.381504, 32.307064>,  <31.758604, 27.667929, 32.470589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532284, 27.381504, 32.307064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094330, -0.436334, 0.894827,
		-0.819129, 0.544856, 0.179332,
		-0.565800, -0.716062, -0.408810,
		31.362543, 27.166685, 32.184422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087320, 27.704231, 32.762726>,  <31.758604, 27.667929, 32.470589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087320, 27.704231, 32.762726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164095, 27.329647, 32.645283>,  <31.210159, 27.104897, 32.574818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164095, 27.329647, 32.645283>,  <31.087320, 27.704231, 32.762726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164095, 27.329647, 32.645283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000243, -0.299217, 0.954185,
		-0.981408, -0.183071, -0.057658,
		0.191935, -0.936459, -0.293610,
		31.221676, 27.048710, 32.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649105, 27.210550, 33.172234>,  <31.087320, 27.704231, 32.762726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649105, 27.210550, 33.172234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953350, 26.993153, 33.030201>,  <31.135897, 26.862713, 32.944981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953350, 26.993153, 33.030201>,  <30.649105, 27.210550, 33.172234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953350, 26.993153, 33.030201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079521, -0.464826, 0.881824,
		-0.644317, -0.698963, -0.310333,
		0.760613, -0.543496, -0.355077,
		31.181534, 26.830105, 32.923679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029583, 26.772337, 33.074375>,  <30.649105, 27.210550, 33.172234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029583, 26.772337, 33.074375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655067, 26.655605, 33.152557>,  <29.430359, 26.585566, 33.199467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655067, 26.655605, 33.152557>,  <30.029583, 26.772337, 33.074375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655067, 26.655605, 33.152557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347990, 0.846202, -0.403541,
		-0.047627, -0.445845, -0.893842,
		-0.936288, -0.291828, 0.195451,
		29.374182, 26.568056, 33.211193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619200, 26.785418, 32.418694>,  <30.029583, 26.772337, 33.074375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619200, 26.785418, 32.418694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364092, 26.816914, 32.725170>,  <29.211027, 26.835812, 32.909058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364092, 26.816914, 32.725170>,  <29.619200, 26.785418, 32.418694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364092, 26.816914, 32.725170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317428, 0.879486, -0.354605,
		-0.701775, -0.469367, -0.535916,
		-0.637770, 0.078738, 0.766191,
		29.172760, 26.840534, 32.955029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075981, 27.096258, 32.089413>,  <29.619200, 26.785418, 32.418694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075981, 27.096258, 32.089413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001589, 27.138878, 32.480118>,  <28.956953, 27.164450, 32.714539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001589, 27.138878, 32.480118>,  <29.075981, 27.096258, 32.089413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001589, 27.138878, 32.480118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354095, 0.920036, -0.167782,
		-0.916531, -0.377069, -0.133379,
		-0.185979, 0.106548, 0.976760,
		28.945795, 27.170843, 32.773148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289440, 27.234060, 32.316296>,  <29.075981, 27.096258, 32.089413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289440, 27.234060, 32.316296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541481, 27.394630, 32.582176>,  <28.692705, 27.490973, 32.741703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541481, 27.394630, 32.582176>,  <28.289440, 27.234060, 32.316296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541481, 27.394630, 32.582176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398719, 0.901804, -0.166652,
		-0.666330, -0.160022, 0.728284,
		0.630101, 0.401426, 0.664703,
		28.730511, 27.515059, 32.781586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912952, 27.735195, 32.670010>,  <28.289440, 27.234060, 32.316296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912952, 27.735195, 32.670010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282442, 27.842045, 32.779831>,  <28.504135, 27.906155, 32.845726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282442, 27.842045, 32.779831>,  <27.912952, 27.735195, 32.670010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282442, 27.842045, 32.779831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264678, 0.963208, -0.046645,
		-0.276914, -0.029582, 0.960439,
		0.923723, 0.267124, 0.274555,
		28.559559, 27.922182, 32.862198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
