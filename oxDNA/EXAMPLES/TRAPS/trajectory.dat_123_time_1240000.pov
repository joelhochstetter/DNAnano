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
	<36.278816, 52.820015, 50.554138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658474, 52.928535, 50.490242>,  <36.886269, 52.993649, 50.451904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658474, 52.928535, 50.490242>,  <36.278816, 52.820015, 50.554138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658474, 52.928535, 50.490242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305314, -0.917011, 0.256660,
		-0.076853, -0.292380, -0.953209,
		0.949145, 0.271303, -0.159743,
		36.943218, 53.009926, 50.442318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519997, 52.234631, 50.176426>,  <36.278816, 52.820015, 50.554138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519997, 52.234631, 50.176426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811909, 52.418922, 50.378471>,  <36.987057, 52.529499, 50.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811909, 52.418922, 50.378471>,  <36.519997, 52.234631, 50.176426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811909, 52.418922, 50.378471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345638, -0.886084, 0.308853,
		0.589872, -0.050809, -0.805897,
		0.729785, 0.460732, 0.505115,
		37.030846, 52.557140, 50.530006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250999, 51.967556, 50.094090>,  <36.519997, 52.234631, 50.176426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250999, 51.967556, 50.094090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169338, 52.077515, 50.469910>,  <37.120342, 52.143490, 50.695400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169338, 52.077515, 50.469910>,  <37.250999, 51.967556, 50.094090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169338, 52.077515, 50.469910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176441, -0.933713, 0.311525,
		0.962907, 0.229374, 0.142117,
		-0.204152, 0.274895, 0.939550,
		37.108093, 52.159985, 50.751774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927872, 51.920872, 50.452377>,  <37.250999, 51.967556, 50.094090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927872, 51.920872, 50.452377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583820, 51.869400, 50.649811>,  <37.377392, 51.838516, 50.768272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583820, 51.869400, 50.649811>,  <37.927872, 51.920872, 50.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583820, 51.869400, 50.649811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266973, -0.938100, 0.220666,
		0.434639, 0.321574, 0.841236,
		-0.860124, -0.128677, 0.493587,
		37.325783, 51.830795, 50.797886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678951, 52.103210, 50.674335>,  <37.927872, 51.920872, 50.452377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678951, 52.103210, 50.674335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827221, 52.474472, 50.687763>,  <38.916183, 52.697231, 50.695820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827221, 52.474472, 50.687763>,  <38.678951, 52.103210, 50.674335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827221, 52.474472, 50.687763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510416, 0.173379, 0.842268,
		0.775937, -0.329338, 0.538013,
		0.370671, 0.928157, 0.033568,
		38.938423, 52.752918, 50.697834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186432, 51.769981, 50.295322>,  <38.678951, 52.103210, 50.674335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186432, 51.769981, 50.295322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045574, 51.421211, 50.431408>,  <38.961060, 51.211948, 50.513062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045574, 51.421211, 50.431408>,  <39.186432, 51.769981, 50.295322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045574, 51.421211, 50.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928664, -0.280241, 0.242998,
		-0.116533, 0.401517, 0.908407,
		-0.352141, -0.871922, 0.340217,
		38.939934, 51.159634, 50.533474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323853, 51.642735, 51.057442>,  <39.186432, 51.769981, 50.295322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323853, 51.642735, 51.057442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319759, 51.287804, 50.873032>,  <39.317303, 51.074844, 50.762386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319759, 51.287804, 50.873032>,  <39.323853, 51.642735, 51.057442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319759, 51.287804, 50.873032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916547, -0.192657, 0.350465,
		-0.399797, -0.418962, 0.815251,
		-0.010233, -0.887330, -0.461022,
		39.316689, 51.021606, 50.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366940, 51.017860, 51.485744>,  <39.323853, 51.642735, 51.057442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366940, 51.017860, 51.485744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573334, 50.899872, 51.164062>,  <39.697170, 50.829079, 50.971054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573334, 50.899872, 51.164062>,  <39.366940, 51.017860, 51.485744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573334, 50.899872, 51.164062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830268, -0.058751, 0.554259,
		-0.210737, -0.953699, 0.214587,
		0.515990, -0.294968, -0.804207,
		39.728130, 50.811382, 50.922802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791969, 50.463474, 51.695477>,  <39.366940, 51.017860, 51.485744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791969, 50.463474, 51.695477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939667, 50.593735, 51.347313>,  <40.028286, 50.671890, 51.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939667, 50.593735, 51.347313>,  <39.791969, 50.463474, 51.695477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939667, 50.593735, 51.347313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887844, 0.153108, 0.433925,
		0.274577, -0.933009, -0.232597,
		0.369244, 0.325656, -0.870407,
		40.050442, 50.691433, 51.086189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321014, 49.987526, 51.394115>,  <39.791969, 50.463474, 51.695477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321014, 49.987526, 51.394115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364807, 50.373249, 51.297676>,  <40.391083, 50.604683, 51.239811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364807, 50.373249, 51.297676>,  <40.321014, 49.987526, 51.394115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364807, 50.373249, 51.297676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884843, 0.015958, 0.465616,
		0.452843, -0.264310, -0.851512,
		0.109478, 0.964306, -0.241100,
		40.397652, 50.662540, 51.225346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072166, 49.939342, 51.065762>,  <40.321014, 49.987526, 51.394115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072166, 49.939342, 51.065762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274559, 50.230770, 51.250443>,  <41.395996, 50.405624, 51.361252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274559, 50.230770, 51.250443>,  <41.072166, 49.939342, 51.065762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274559, 50.230770, 51.250443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083526, -0.491380, 0.866931,
		0.858490, -0.477217, -0.187775,
		0.505983, 0.728567, 0.461705,
		41.426353, 50.449341, 51.388954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208385, 49.270741, 51.180504>,  <41.072166, 49.939342, 51.065762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208385, 49.270741, 51.180504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567513, 49.101921, 51.130226>,  <41.782990, 49.000629, 51.100060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567513, 49.101921, 51.130226>,  <41.208385, 49.270741, 51.180504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567513, 49.101921, 51.130226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407234, 0.687087, 0.601725,
		-0.167596, -0.591425, 0.788751,
		0.897815, -0.422053, -0.125695,
		41.836857, 48.975304, 51.092518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564560, 49.162743, 51.793629>,  <41.208385, 49.270741, 51.180504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564560, 49.162743, 51.793629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870651, 49.185509, 51.537136>,  <42.054306, 49.199169, 51.383240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870651, 49.185509, 51.537136>,  <41.564560, 49.162743, 51.793629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870651, 49.185509, 51.537136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463074, 0.643276, 0.609720,
		0.447193, -0.763516, 0.465899,
		0.765233, 0.056917, -0.641233,
		42.100220, 49.202583, 51.344765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172009, 48.883301, 51.961094>,  <41.564560, 49.162743, 51.793629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172009, 48.883301, 51.961094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208805, 49.220398, 51.748936>,  <42.230885, 49.422657, 51.621639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208805, 49.220398, 51.748936>,  <42.172009, 48.883301, 51.961094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208805, 49.220398, 51.748936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439038, 0.443758, 0.781233,
		0.893747, -0.304730, -0.329175,
		0.091991, 0.842745, -0.530395,
		42.236401, 49.473221, 51.589817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831329, 49.215050, 51.901031>,  <42.172009, 48.883301, 51.961094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831329, 49.215050, 51.901031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582989, 49.518692, 51.822742>,  <42.433983, 49.700878, 51.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582989, 49.518692, 51.822742>,  <42.831329, 49.215050, 51.901031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582989, 49.518692, 51.822742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550822, 0.600070, 0.580095,
		0.557797, 0.252346, -0.790685,
		-0.620852, 0.759103, -0.195720,
		42.396732, 49.746422, 51.764027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122402, 49.810196, 51.412617>,  <42.831329, 49.215050, 51.901031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122402, 49.810196, 51.412617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856911, 49.963005, 51.669842>,  <42.697617, 50.054691, 51.824177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856911, 49.963005, 51.669842>,  <43.122402, 49.810196, 51.412617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856911, 49.963005, 51.669842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657935, 0.707138, 0.258993,
		-0.355793, 0.594993, -0.720691,
		-0.663727, 0.382020, 0.643061,
		42.657791, 50.077610, 51.862759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206818, 50.540104, 51.268780>,  <43.122402, 49.810196, 51.412617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206818, 50.540104, 51.268780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035458, 50.456654, 51.620449>,  <42.932640, 50.406586, 51.831451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035458, 50.456654, 51.620449>,  <43.206818, 50.540104, 51.268780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035458, 50.456654, 51.620449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771963, 0.421189, 0.476102,
		-0.469625, 0.882653, -0.019387,
		-0.428399, -0.208624, 0.879176,
		42.906937, 50.394066, 51.884201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840576, 50.326370, 51.596504>,  <43.206818, 50.540104, 51.268780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840576, 50.326370, 51.596504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964767, 50.682823, 51.728855>,  <44.039284, 50.896694, 51.808266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964767, 50.682823, 51.728855>,  <43.840576, 50.326370, 51.596504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964767, 50.682823, 51.728855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824086, -0.078839, -0.560951,
		-0.473796, 0.446840, -0.758849,
		0.310483, 0.891133, 0.330881,
		44.057911, 50.950165, 51.828121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175362, 50.526497, 50.975483>,  <43.840576, 50.326370, 51.596504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175362, 50.526497, 50.975483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281094, 50.737999, 51.298111>,  <44.344532, 50.864899, 51.491688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281094, 50.737999, 51.298111>,  <44.175362, 50.526497, 50.975483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281094, 50.737999, 51.298111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947428, 0.013996, -0.319663,
		-0.180311, 0.848662, -0.497254,
		0.264327, 0.528751, 0.806569,
		44.360390, 50.896626, 51.540081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555012, 50.972256, 50.701900>,  <44.175362, 50.526497, 50.975483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555012, 50.972256, 50.701900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659996, 50.970505, 51.087875>,  <44.722988, 50.969452, 51.319458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659996, 50.970505, 51.087875>,  <44.555012, 50.972256, 50.701900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659996, 50.970505, 51.087875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961468, 0.085969, -0.261128,
		-0.081811, 0.996288, 0.026776,
		0.262461, -0.004381, 0.964933,
		44.738735, 50.969189, 51.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874386, 51.545284, 50.963337>,  <44.555012, 50.972256, 50.701900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874386, 51.545284, 50.963337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993568, 51.208603, 51.143448>,  <45.065079, 51.006592, 51.251514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993568, 51.208603, 51.143448>,  <44.874386, 51.545284, 50.963337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993568, 51.208603, 51.143448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910666, 0.109216, -0.398445,
		0.286195, 0.528776, 0.799055,
		0.297958, -0.841705, 0.450282,
		45.082954, 50.956093, 51.278534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278217, 52.205833, 51.042755>,  <44.874386, 51.545284, 50.963337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278217, 52.205833, 51.042755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427685, 51.938255, 50.785728>,  <45.517365, 51.777710, 50.631512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427685, 51.938255, 50.785728>,  <45.278217, 52.205833, 51.042755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427685, 51.938255, 50.785728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897636, 0.086237, 0.432219,
		-0.233717, -0.738294, 0.632692,
		0.373666, -0.668944, -0.642564,
		45.539783, 51.737572, 50.592960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780281, 52.041370, 51.434193>,  <45.278217, 52.205833, 51.042755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780281, 52.041370, 51.434193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871845, 51.925865, 51.062340>,  <45.926785, 51.856564, 50.839230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871845, 51.925865, 51.062340>,  <45.780281, 52.041370, 51.434193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871845, 51.925865, 51.062340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973343, 0.053917, 0.222926,
		-0.014249, -0.955882, 0.293405,
		0.228910, -0.288761, -0.929633,
		45.940517, 51.839237, 50.783451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406078, 51.457493, 51.446884>,  <45.780281, 52.041370, 51.434193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406078, 51.457493, 51.446884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399902, 51.650135, 51.096382>,  <46.396198, 51.765720, 50.886082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399902, 51.650135, 51.096382>,  <46.406078, 51.457493, 51.446884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399902, 51.650135, 51.096382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990476, 0.127282, 0.052503,
		0.136817, -0.867094, -0.478987,
		-0.015441, 0.481609, -0.876250,
		46.395271, 51.794617, 50.833508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909260, 51.098515, 50.995670>,  <46.406078, 51.457493, 51.446884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909260, 51.098515, 50.995670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831905, 51.485271, 50.929077>,  <46.785492, 51.717327, 50.889122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831905, 51.485271, 50.929077>,  <46.909260, 51.098515, 50.995670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831905, 51.485271, 50.929077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979061, 0.201174, 0.031119,
		0.063582, -0.156983, -0.985553,
		-0.193383, 0.966895, -0.166487,
		46.773891, 51.775341, 50.879131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.401718, 51.306301, 50.464848>,  <46.909260, 51.098515, 50.995670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.401718, 51.306301, 50.464848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302143, 51.594372, 50.723885>,  <47.242397, 51.767216, 50.879307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302143, 51.594372, 50.723885>,  <47.401718, 51.306301, 50.464848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.302143, 51.594372, 50.723885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935940, 0.350845, -0.030391,
		-0.249090, 0.598539, -0.761384,
		-0.248938, 0.720179, 0.647589,
		47.227463, 51.810425, 50.918159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381752, 52.066109, 50.183311>,  <47.401718, 51.306301, 50.464848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381752, 52.066109, 50.183311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484226, 52.017864, 50.566940>,  <47.545712, 51.988918, 50.797119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484226, 52.017864, 50.566940>,  <47.381752, 52.066109, 50.183311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.484226, 52.017864, 50.566940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840567, 0.517716, -0.159427,
		-0.477299, 0.847009, 0.234012,
		0.256188, -0.120609, 0.959073,
		47.561081, 51.981682, 50.854664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490158, 52.706970, 50.622253>,  <47.381752, 52.066109, 50.183311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490158, 52.706970, 50.622253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716347, 52.412170, 50.770348>,  <47.852058, 52.235291, 50.859203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716347, 52.412170, 50.770348>,  <47.490158, 52.706970, 50.622253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.716347, 52.412170, 50.770348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808917, 0.583168, -0.074618,
		-0.160916, 0.341684, 0.925936,
		0.565472, -0.736999, 0.370236,
		47.885990, 52.191071, 50.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.747158, 52.943333, 51.327854>,  <47.490158, 52.706970, 50.622253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.747158, 52.943333, 51.327854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.979424, 52.714867, 51.095787>,  <48.118782, 52.577785, 50.956547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.979424, 52.714867, 51.095787>,  <47.747158, 52.943333, 51.327854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.979424, 52.714867, 51.095787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739298, 0.668376, 0.081922,
		0.340979, -0.476486, 0.810367,
		0.580665, -0.571169, -0.580168,
		48.153622, 52.543514, 50.921738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.339645, 52.583622, 51.711571>,  <47.747158, 52.943333, 51.327854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.339645, 52.583622, 51.711571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.419712, 52.661896, 51.327564>,  <48.467754, 52.708858, 51.097160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.419712, 52.661896, 51.327564>,  <48.339645, 52.583622, 51.711571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.419712, 52.661896, 51.327564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783784, 0.555962, 0.276748,
		0.587890, -0.807846, -0.042086,
		0.200172, 0.195683, -0.960020,
		48.479763, 52.720600, 51.039558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.440853, 52.277359, 52.419067>,  <48.339645, 52.583622, 51.711571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.440853, 52.277359, 52.419067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.098984, 52.131058, 52.566452>,  <47.893864, 52.043278, 52.654884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.098984, 52.131058, 52.566452>,  <48.440853, 52.277359, 52.419067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.098984, 52.131058, 52.566452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453199, -0.871832, 0.185795,
		0.253281, 0.325780, 0.910888,
		-0.854669, -0.365755, 0.368462,
		47.842583, 52.021332, 52.676991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.397064, 52.163902, 53.150227>,  <48.440853, 52.277359, 52.419067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.397064, 52.163902, 53.150227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.192055, 51.877357, 52.960854>,  <48.069050, 51.705429, 52.847229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.192055, 51.877357, 52.960854>,  <48.397064, 52.163902, 53.150227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.192055, 51.877357, 52.960854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745371, -0.644900, 0.168896,
		-0.426310, -0.266322, 0.864484,
		-0.512525, -0.716364, -0.473436,
		48.038296, 51.662449, 52.818821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.588123, 51.509739, 53.525368>,  <48.397064, 52.163902, 53.150227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.588123, 51.509739, 53.525368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.390656, 51.397343, 53.196167>,  <48.272175, 51.329903, 52.998646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.390656, 51.397343, 53.196167>,  <48.588123, 51.509739, 53.525368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.390656, 51.397343, 53.196167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511613, -0.859109, -0.013563,
		-0.703239, -0.427755, 0.567875,
		-0.493668, -0.280994, -0.823003,
		48.242554, 51.313046, 52.949265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.249371, 51.611073, 53.732033>,  <48.588123, 51.509739, 53.525368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.249371, 51.611073, 53.732033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.403362, 51.272697, 53.879642>,  <49.495758, 51.069672, 53.968208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.403362, 51.272697, 53.879642>,  <49.249371, 51.611073, 53.732033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.403362, 51.272697, 53.879642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599446, -0.074838, -0.796909,
		0.701753, 0.528004, 0.478283,
		0.384977, -0.845938, 0.369028,
		49.518856, 51.018917, 53.990353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.037903, 51.454502, 53.697868>,  <49.249371, 51.611073, 53.732033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.037903, 51.454502, 53.697868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.901230, 51.078644, 53.705032>,  <49.819225, 50.853130, 53.709332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.901230, 51.078644, 53.705032>,  <50.037903, 51.454502, 53.697868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.901230, 51.078644, 53.705032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551382, -0.215861, -0.805842,
		0.761073, -0.265463, 0.591859,
		-0.341681, -0.939645, 0.017914,
		49.798725, 50.796749, 53.710407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.620811, 51.072903, 53.580372>,  <50.037903, 51.454502, 53.697868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.620811, 51.072903, 53.580372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.303875, 50.861420, 53.458611>,  <50.113712, 50.734531, 53.385555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.303875, 50.861420, 53.458611>,  <50.620811, 51.072903, 53.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.303875, 50.861420, 53.458611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407975, -0.088219, -0.908721,
		0.453593, -0.844208, 0.285599,
		-0.792345, -0.528706, -0.304400,
		50.066170, 50.702808, 53.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.761219, 50.432522, 53.206760>,  <50.620811, 51.072903, 53.580372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.761219, 50.432522, 53.206760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.421860, 50.614632, 53.098732>,  <50.218243, 50.723900, 53.033913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.421860, 50.614632, 53.098732>,  <50.761219, 50.432522, 53.206760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.421860, 50.614632, 53.098732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273957, -0.058925, -0.959935,
		-0.452951, -0.888398, -0.074734,
		-0.848400, 0.455277, -0.270073,
		50.167339, 50.751213, 53.017712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.374252, 50.052906, 52.577282>,  <50.761219, 50.432522, 53.206760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.374252, 50.052906, 52.577282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.353649, 50.452347, 52.572441>,  <50.341290, 50.692009, 52.569538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.353649, 50.452347, 52.572441>,  <50.374252, 50.052906, 52.577282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.353649, 50.452347, 52.572441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491027, 0.014768, -0.871020,
		-0.869621, -0.050804, -0.491099,
		-0.051503, 0.998600, -0.012104,
		50.338200, 50.751926, 52.568810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.162422, 50.254589, 51.885853>,  <50.374252, 50.052906, 52.577282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.162422, 50.254589, 51.885853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.364162, 50.535904, 52.086258>,  <50.485207, 50.704693, 52.206501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.364162, 50.535904, 52.086258>,  <50.162422, 50.254589, 51.885853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.364162, 50.535904, 52.086258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668807, 0.048838, -0.741830,
		-0.546190, 0.709223, -0.445734,
		0.504354, 0.703290, 0.501009,
		50.515469, 50.746891, 52.236561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.494331, 50.761864, 51.382339>,  <50.162422, 50.254589, 51.885853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.494331, 50.761864, 51.382339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.710346, 50.753983, 51.718903>,  <50.839954, 50.749252, 51.920841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.710346, 50.753983, 51.718903>,  <50.494331, 50.761864, 51.382339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.710346, 50.753983, 51.718903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837416, 0.112616, -0.534838,
		-0.084217, 0.993443, 0.077319,
		0.540038, -0.019706, 0.841410,
		50.872356, 50.748070, 51.971325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.836636, 51.465839, 51.549622>,  <50.494331, 50.761864, 51.382339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.836636, 51.465839, 51.549622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.032356, 51.146851, 51.690826>,  <51.149788, 50.955456, 51.775551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.032356, 51.146851, 51.690826>,  <50.836636, 51.465839, 51.549622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.032356, 51.146851, 51.690826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761297, 0.193099, -0.618983,
		0.425457, 0.571617, 0.701598,
		0.489299, -0.797475, 0.353015,
		51.179146, 50.907608, 51.796730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.246223, 51.716057, 52.019783>,  <50.836636, 51.465839, 51.549622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.246223, 51.716057, 52.019783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.413246, 51.381657, 51.877377>,  <51.513458, 51.181015, 51.791931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.413246, 51.381657, 51.877377>,  <51.246223, 51.716057, 52.019783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.413246, 51.381657, 51.877377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857600, 0.492069, -0.149635,
		0.300281, -0.242840, 0.922421,
		0.417557, -0.836001, -0.356018,
		51.538513, 51.130856, 51.770573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.808735, 51.472816, 52.421574>,  <51.246223, 51.716057, 52.019783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.808735, 51.472816, 52.421574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.856323, 51.381046, 52.035164>,  <51.884876, 51.325985, 51.803318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.856323, 51.381046, 52.035164>,  <51.808735, 51.472816, 52.421574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.856323, 51.381046, 52.035164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871339, 0.490596, -0.009201,
		0.476040, -0.840643, 0.258274,
		0.118974, -0.229424, -0.966028,
		51.892014, 51.312218, 51.745354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.536201, 51.391613, 52.470928>,  <51.808735, 51.472816, 52.421574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.536201, 51.391613, 52.470928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.386944, 51.469116, 52.108002>,  <52.297390, 51.515617, 51.890247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.386944, 51.469116, 52.108002>,  <52.536201, 51.391613, 52.470928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.386944, 51.469116, 52.108002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869248, 0.414853, -0.268896,
		0.324301, -0.889019, -0.323226,
		-0.373145, 0.193760, -0.907315,
		52.275002, 51.527245, 51.835808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.875076, 51.038971, 51.879036>,  <52.536201, 51.391613, 52.470928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.875076, 51.038971, 51.879036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.750931, 51.413116, 51.811192>,  <52.676441, 51.637604, 51.770485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.750931, 51.413116, 51.811192>,  <52.875076, 51.038971, 51.879036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.750931, 51.413116, 51.811192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947044, 0.288783, -0.140396,
		-0.082341, -0.204202, -0.975460,
		-0.310366, 0.935364, -0.169609,
		52.657822, 51.693726, 51.760307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.065914, 51.342918, 51.136341>,  <52.875076, 51.038971, 51.879036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.065914, 51.342918, 51.136341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.052624, 51.623337, 51.421280>,  <53.044651, 51.791588, 51.592243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.052624, 51.623337, 51.421280>,  <53.065914, 51.342918, 51.136341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.052624, 51.623337, 51.421280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960287, 0.219951, -0.171672,
		-0.277030, 0.678353, -0.680509,
		-0.033224, 0.701042, 0.712346,
		53.042656, 51.833649, 51.634983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.475655, 51.924305, 50.745663>,  <53.065914, 51.342918, 51.136341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.475655, 51.924305, 50.745663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.466805, 51.981213, 51.141495>,  <53.461494, 52.015358, 51.378994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.466805, 51.981213, 51.141495>,  <53.475655, 51.924305, 50.745663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.466805, 51.981213, 51.141495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978134, 0.207822, -0.008011,
		-0.206797, 0.967765, -0.143756,
		-0.022123, 0.142270, 0.989581,
		53.460167, 52.023895, 51.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.792912, 52.520840, 50.733360>,  <53.475655, 51.924305, 50.745663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.792912, 52.520840, 50.733360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.827602, 52.314404, 51.074215>,  <53.848415, 52.190544, 51.278728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.827602, 52.314404, 51.074215>,  <53.792912, 52.520840, 50.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.827602, 52.314404, 51.074215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977757, 0.208062, 0.026499,
		-0.190973, 0.830881, 0.522654,
		0.086727, -0.516089, 0.852133,
		53.853619, 52.159576, 51.329853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.309139, 52.838978, 51.265198>,  <53.792912, 52.520840, 50.733360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.309139, 52.838978, 51.265198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.325195, 52.443359, 51.322025>,  <54.334827, 52.205990, 51.356121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.325195, 52.443359, 51.322025>,  <54.309139, 52.838978, 51.265198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.325195, 52.443359, 51.322025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960085, 0.077568, 0.268739,
		-0.276814, 0.125608, 0.952679,
		0.040142, -0.989043, 0.142066,
		54.337238, 52.146645, 51.364647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.407681, 52.675533, 51.892773>,  <54.309139, 52.838978, 51.265198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.407681, 52.675533, 51.892773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.593369, 52.425484, 51.641785>,  <54.704781, 52.275452, 51.491192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.593369, 52.425484, 51.641785>,  <54.407681, 52.675533, 51.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.593369, 52.425484, 51.641785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885439, 0.345400, 0.310961,
		0.022338, -0.699939, 0.713853,
		0.464219, -0.625127, -0.627469,
		54.732635, 52.237946, 51.453545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.851898, 52.230080, 52.188793>,  <54.407681, 52.675533, 51.892773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.851898, 52.230080, 52.188793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.997429, 52.293430, 51.821632>,  <55.084747, 52.331440, 51.601337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.997429, 52.293430, 51.821632>,  <54.851898, 52.230080, 52.188793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.997429, 52.293430, 51.821632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859677, 0.322271, 0.396354,
		0.358589, -0.933305, -0.018905,
		0.363827, 0.158380, -0.917903,
		55.106579, 52.340946, 51.546261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.382969, 51.797718, 52.079010>,  <54.851898, 52.230080, 52.188793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.382969, 51.797718, 52.079010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.407440, 52.141083, 51.875290>,  <55.422123, 52.347103, 51.753059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.407440, 52.141083, 51.875290>,  <55.382969, 51.797718, 52.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.407440, 52.141083, 51.875290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759795, 0.290842, 0.581484,
		0.647278, -0.422537, -0.634424,
		0.061181, 0.858413, -0.509297,
		55.425793, 52.398605, 51.722500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.093319, 51.929844, 51.689083>,  <55.382969, 51.797718, 52.079010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.093319, 51.929844, 51.689083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.882294, 52.222855, 51.861168>,  <55.755680, 52.398663, 51.964420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.882294, 52.222855, 51.861168>,  <56.093319, 51.929844, 51.689083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.882294, 52.222855, 51.861168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746237, 0.157596, 0.646756,
		0.405966, 0.662245, -0.629780,
		-0.527562, 0.732526, 0.430213,
		55.724026, 52.442612, 51.990231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.538883, 52.581127, 51.890827>,  <56.093319, 51.929844, 51.689083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.538883, 52.581127, 51.890827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.223000, 52.623184, 52.132591>,  <56.033470, 52.648418, 52.277649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.223000, 52.623184, 52.132591>,  <56.538883, 52.581127, 51.890827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.223000, 52.623184, 52.132591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608818, 0.255609, 0.751003,
		-0.075530, 0.961046, -0.265869,
		-0.789706, 0.105143, 0.604408,
		55.986088, 52.654728, 52.313915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.578518, 53.192265, 52.182846>,  <56.538883, 52.581127, 51.890827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.578518, 53.192265, 52.182846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.387428, 52.940742, 52.428246>,  <56.272774, 52.789829, 52.575485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.387428, 52.940742, 52.428246>,  <56.578518, 53.192265, 52.182846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.387428, 52.940742, 52.428246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662079, 0.201315, 0.721889,
		-0.577437, 0.751047, 0.320149,
		-0.477722, -0.628809, 0.613499,
		56.244110, 52.752098, 52.612297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.514774, 53.441116, 52.848667>,  <56.578518, 53.192265, 52.182846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.514774, 53.441116, 52.848667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.511436, 53.042374, 52.880203>,  <56.509434, 52.803127, 52.899124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.511436, 53.042374, 52.880203>,  <56.514774, 53.441116, 52.848667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.511436, 53.042374, 52.880203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537975, 0.061982, 0.840679,
		-0.842919, 0.049428, 0.535765,
		-0.008345, -0.996853, 0.078837,
		56.508934, 52.743317, 52.903854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.228558, 53.840363, 53.220192>,  <56.514774, 53.441116, 52.848667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.228558, 53.840363, 53.220192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.402847, 53.560104, 53.446198>,  <56.507423, 53.391949, 53.581802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.402847, 53.560104, 53.446198>,  <56.228558, 53.840363, 53.220192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.402847, 53.560104, 53.446198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850793, 0.115734, -0.512598,
		0.293757, 0.704062, 0.646532,
		0.435726, -0.700644, 0.565014,
		56.533566, 53.349911, 53.615700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.949577, 54.032207, 53.197227>,  <56.228558, 53.840363, 53.220192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.949577, 54.032207, 53.197227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.947861, 53.675056, 53.377342>,  <56.946831, 53.460766, 53.485409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.947861, 53.675056, 53.377342>,  <56.949577, 54.032207, 53.197227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.947861, 53.675056, 53.377342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978426, -0.096756, -0.182541,
		0.206554, 0.439786, 0.874027,
		-0.004289, -0.892875, 0.450283,
		56.946575, 53.407192, 53.512428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.431877, 54.006889, 53.799587>,  <56.949577, 54.032207, 53.197227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.431877, 54.006889, 53.799587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.367966, 53.664452, 53.602985>,  <57.329617, 53.458988, 53.485023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.367966, 53.664452, 53.602985>,  <57.431877, 54.006889, 53.799587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.367966, 53.664452, 53.602985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987152, -0.138325, -0.079982,
		0.000484, -0.497968, 0.867195,
		-0.159783, -0.856092, -0.491503,
		57.320030, 53.407623, 53.455536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.999016, 54.493217, 54.127209>,  <57.431877, 54.006889, 53.799587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.999016, 54.493217, 54.127209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.150536, 54.218643, 53.878914>,  <58.241447, 54.053898, 53.729935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.150536, 54.218643, 53.878914>,  <57.999016, 54.493217, 54.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.150536, 54.218643, 53.878914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232145, 0.578805, -0.781725,
		0.895892, 0.440216, 0.059896,
		0.378796, -0.686436, -0.620741,
		58.264175, 54.012711, 53.692692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.527161, 55.084137, 54.197006>,  <57.999016, 54.493217, 54.127209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.527161, 55.084137, 54.197006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.890686, 55.249378, 54.173645>,  <59.108799, 55.348522, 54.159630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.890686, 55.249378, 54.173645>,  <58.527161, 55.084137, 54.197006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.890686, 55.249378, 54.173645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334921, -0.638897, 0.692559,
		0.248785, -0.648965, -0.718993,
		0.908809, 0.413104, -0.058404,
		59.163330, 55.373310, 54.156124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.883202, 54.599411, 53.924408>,  <58.527161, 55.084137, 54.197006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.883202, 54.599411, 53.924408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.058960, 54.851715, 54.180241>,  <59.164417, 55.003098, 54.333740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.058960, 54.851715, 54.180241>,  <58.883202, 54.599411, 53.924408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.058960, 54.851715, 54.180241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194601, -0.761932, 0.617730,
		0.876961, -0.146965, -0.457538,
		0.439398, 0.630762, 0.639585,
		59.190781, 55.040943, 54.372116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.612804, 54.397015, 54.012554>,  <58.883202, 54.599411, 53.924408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.612804, 54.397015, 54.012554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.472946, 54.588654, 54.334602>,  <59.389030, 54.703636, 54.527832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.472946, 54.588654, 54.334602>,  <59.612804, 54.397015, 54.012554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.472946, 54.588654, 54.334602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305571, -0.754046, 0.581412,
		0.885649, 0.449309, 0.117251,
		-0.349647, 0.479098, 0.805116,
		59.368053, 54.732384, 54.576138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.120461, 54.370541, 54.631008>,  <59.612804, 54.397015, 54.012554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.120461, 54.370541, 54.631008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.765800, 54.445927, 54.799927>,  <59.553005, 54.491158, 54.901279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.765800, 54.445927, 54.799927>,  <60.120461, 54.370541, 54.631008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.765800, 54.445927, 54.799927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165784, -0.722949, 0.670717,
		0.431704, 0.664701, 0.609758,
		-0.886649, 0.188463, 0.422297,
		59.499805, 54.502464, 54.926617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.843124, 54.305622, 55.039082>,  <60.120461, 54.370541, 54.631008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.843124, 54.305622, 55.039082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.210739, 54.376137, 55.180099>,  <61.431309, 54.418446, 55.264709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.210739, 54.376137, 55.180099>,  <60.843124, 54.305622, 55.039082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.210739, 54.376137, 55.180099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211484, 0.975310, 0.063604,
		-0.332632, -0.133013, 0.933629,
		0.919038, 0.176291, 0.352549,
		61.486450, 54.429024, 55.285866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.743095, 54.784737, 55.485600>,  <60.843124, 54.305622, 55.039082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.743095, 54.784737, 55.485600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.135033, 54.815689, 55.411926>,  <61.370193, 54.834263, 55.367722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.135033, 54.815689, 55.411926>,  <60.743095, 54.784737, 55.485600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.135033, 54.815689, 55.411926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082069, 0.996465, -0.017939,
		0.182146, 0.032693, 0.982728,
		0.979841, 0.077384, -0.184185,
		61.428986, 54.838905, 55.356670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.122200, 55.153416, 56.007397>,  <60.743095, 54.784737, 55.485600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.122200, 55.153416, 56.007397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.283203, 55.196140, 55.643730>,  <61.379803, 55.221775, 55.425529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.283203, 55.196140, 55.643730>,  <61.122200, 55.153416, 56.007397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.283203, 55.196140, 55.643730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179311, 0.983129, 0.036118,
		0.897685, 0.148485, 0.414866,
		0.402504, 0.106812, -0.909165,
		61.403954, 55.228184, 55.370979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.758587, 55.586742, 55.972435>,  <61.122200, 55.153416, 56.007397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.758587, 55.586742, 55.972435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.528008, 55.634823, 55.649139>,  <61.389660, 55.663673, 55.455162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.528008, 55.634823, 55.649139>,  <61.758587, 55.586742, 55.972435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.528008, 55.634823, 55.649139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187346, 0.943331, 0.273914,
		0.795367, 0.309319, -0.521262,
		-0.576449, 0.120205, -0.808243,
		61.355072, 55.670883, 55.406666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.370190, 56.075340, 55.820114>,  <61.758587, 55.586742, 55.972435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.370190, 56.075340, 55.820114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.419998, 56.279148, 55.479553>,  <62.449883, 56.401432, 55.275215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.419998, 56.279148, 55.479553>,  <62.370190, 56.075340, 55.820114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.419998, 56.279148, 55.479553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988079, 0.014615, 0.153254,
		0.090529, -0.860334, -0.501627,
		0.124518, 0.509521, -0.851401,
		62.457352, 56.432003, 55.224133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.826473, 55.722183, 55.153908>,  <62.370190, 56.075340, 55.820114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.826473, 55.722183, 55.153908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.851433, 56.121033, 55.171112>,  <62.866409, 56.360344, 55.181435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.851433, 56.121033, 55.171112>,  <62.826473, 55.722183, 55.153908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.851433, 56.121033, 55.171112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979570, -0.069439, 0.188737,
		0.191181, 0.030359, -0.981085,
		0.062396, 0.997124, 0.043014,
		62.870152, 56.420170, 55.184017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.431732, 55.971901, 54.770874>,  <62.826473, 55.722183, 55.153908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.431732, 55.971901, 54.770874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.377396, 56.278595, 55.021843>,  <63.344795, 56.462612, 55.172424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.377396, 56.278595, 55.021843>,  <63.431732, 55.971901, 54.770874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.377396, 56.278595, 55.021843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990138, 0.083144, 0.112759,
		0.034290, 0.636554, -0.770469,
		-0.135837, 0.766737, 0.627425,
		63.336643, 56.508617, 55.210072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.849476, 56.526241, 54.535686>,  <63.431732, 55.971901, 54.770874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.849476, 56.526241, 54.535686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.776260, 56.509918, 54.928589>,  <63.732330, 56.500126, 55.164330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.776260, 56.509918, 54.928589>,  <63.849476, 56.526241, 54.535686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.776260, 56.509918, 54.928589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979811, -0.089308, 0.178868,
		0.080425, 0.995168, 0.056328,
		-0.183034, -0.040806, 0.982259,
		63.721352, 56.497677, 55.223267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.022217, 57.211716, 54.941395>,  <63.849476, 56.526241, 54.535686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.022217, 57.211716, 54.941395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.048393, 56.837341, 55.079811>,  <64.064095, 56.612717, 55.162861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.048393, 56.837341, 55.079811>,  <64.022217, 57.211716, 54.941395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.048393, 56.837341, 55.079811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969735, -0.022104, -0.243155,
		0.235227, 0.351476, 0.906164,
		0.065433, -0.935936, 0.346038,
		64.068024, 56.556561, 55.183624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.558220, 57.253735, 55.408222>,  <64.022217, 57.211716, 54.941395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.558220, 57.253735, 55.408222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.506393, 56.898815, 55.231171>,  <64.475296, 56.685863, 55.124939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.506393, 56.898815, 55.231171>,  <64.558220, 57.253735, 55.408222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.506393, 56.898815, 55.231171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987708, -0.076129, -0.136521,
		0.087437, -0.454878, 0.886251,
		-0.129569, -0.887294, -0.442630,
		64.467522, 56.632626, 55.098381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.082581, 56.760113, 55.679157>,  <64.558220, 57.253735, 55.408222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.082581, 56.760113, 55.679157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.943909, 56.640896, 55.323410>,  <64.860703, 56.569366, 55.109962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.943909, 56.640896, 55.323410>,  <65.082581, 56.760113, 55.679157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.943909, 56.640896, 55.323410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935121, -0.035832, -0.352513,
		0.073197, -0.953879, 0.291131,
		-0.346686, -0.298045, -0.889369,
		64.839905, 56.551483, 55.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.342758, 56.904190, 56.373585>,  <65.082581, 56.760113, 55.679157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.342758, 56.904190, 56.373585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.520096, 56.630505, 56.605202>,  <65.626495, 56.466293, 56.744171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.520096, 56.630505, 56.605202>,  <65.342758, 56.904190, 56.373585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.520096, 56.630505, 56.605202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895886, 0.359025, -0.261703,
		-0.028830, 0.634784, 0.772151,
		0.443347, -0.684215, 0.579045,
		65.653099, 56.425240, 56.778915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.630806, 57.635025, 56.520550>,  <65.342758, 56.904190, 56.373585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.630806, 57.635025, 56.520550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.508163, 57.606842, 56.900238>,  <65.434578, 57.589931, 57.128052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.508163, 57.606842, 56.900238>,  <65.630806, 57.635025, 56.520550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.508163, 57.606842, 56.900238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543791, 0.805516, 0.235447,
		-0.781203, 0.588370, -0.208668,
		-0.306615, -0.070460, 0.949222,
		65.416176, 57.585705, 57.185005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.121490, 57.171989, 56.252953>,  <65.630806, 57.635025, 56.520550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.121490, 57.171989, 56.252953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.491920, 57.068447, 56.143143>,  <66.714180, 57.006321, 56.077255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.491920, 57.068447, 56.143143>,  <66.121490, 57.171989, 56.252953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.491920, 57.068447, 56.143143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376164, 0.690422, 0.617914,
		0.029587, -0.675506, 0.736761,
		0.926080, -0.258861, -0.274528,
		66.769745, 56.990788, 56.060783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.666039, 57.080563, 56.889576>,  <66.121490, 57.171989, 56.252953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.666039, 57.080563, 56.889576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.872864, 57.185097, 56.563545>,  <66.996964, 57.247818, 56.367928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.872864, 57.185097, 56.563545>,  <66.666039, 57.080563, 56.889576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.872864, 57.185097, 56.563545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705752, 0.408630, 0.578737,
		0.484306, -0.874487, 0.026854,
		0.517071, 0.261333, -0.815072,
		67.027985, 57.263496, 56.319023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.170555, 57.611889, 56.825748>,  <66.666039, 57.080563, 56.889576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.170555, 57.611889, 56.825748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.184204, 58.011330, 56.841858>,  <67.192390, 58.250996, 56.851524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.184204, 58.011330, 56.841858>,  <67.170555, 57.611889, 56.825748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.184204, 58.011330, 56.841858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992718, 0.038522, -0.114133,
		-0.115525, -0.036082, 0.992649,
		0.034120, 0.998606, 0.040269,
		67.194443, 58.310913, 56.853939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.844254, 58.061768, 56.845917>,  <67.170555, 57.611889, 56.825748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.844254, 58.061768, 56.845917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.073608, 58.387276, 56.883896>,  <68.211220, 58.582581, 56.906681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.073608, 58.387276, 56.883896>,  <67.844254, 58.061768, 56.845917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.073608, 58.387276, 56.883896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353936, 0.350551, -0.867089,
		-0.738890, 0.463572, 0.489021,
		0.573385, 0.813766, 0.094944,
		68.245621, 58.631405, 56.912380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.437683, 57.688648, 57.034222>,  <67.844254, 58.061768, 56.845917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.437683, 57.688648, 57.034222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.080505, 57.768272, 57.195732>,  <67.866203, 57.816048, 57.292637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.080505, 57.768272, 57.195732>,  <68.437683, 57.688648, 57.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.080505, 57.768272, 57.195732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247714, 0.531658, -0.809925,
		-0.375893, -0.823234, -0.425429,
		-0.892940, 0.199060, 0.403773,
		67.812622, 57.827991, 57.316864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.956200, 57.430180, 56.548710>,  <68.437683, 57.688648, 57.034222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.956200, 57.430180, 56.548710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.289597, 57.645676, 56.597755>,  <69.489639, 57.774975, 56.627182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.289597, 57.645676, 56.597755>,  <68.956200, 57.430180, 56.548710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.289597, 57.645676, 56.597755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141844, -0.005842, 0.989872,
		0.534004, -0.842449, 0.071548,
		0.833499, 0.538744, 0.122616,
		69.539650, 57.807301, 56.634541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.354843, 57.109978, 57.053062>,  <68.956200, 57.430180, 56.548710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.354843, 57.109978, 57.053062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.464462, 57.494324, 57.036858>,  <69.530235, 57.724930, 57.027134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.464462, 57.494324, 57.036858>,  <69.354843, 57.109978, 57.053062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.464462, 57.494324, 57.036858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039940, 0.053458, 0.997771,
		0.960888, -0.271813, 0.053027,
		0.274041, 0.960864, -0.040511,
		69.546677, 57.782581, 57.024704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.847862, 57.266384, 57.553459>,  <69.354843, 57.109978, 57.053062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.847862, 57.266384, 57.553459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658409, 57.611008, 57.480354>,  <69.544739, 57.817780, 57.436493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658409, 57.611008, 57.480354>,  <69.847862, 57.266384, 57.553459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.658409, 57.611008, 57.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127377, 0.138324, 0.982162,
		0.871467, 0.488456, 0.044229,
		-0.473624, 0.861555, -0.182763,
		69.516319, 57.869473, 57.425526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.123177, 57.726604, 58.020271>,  <69.847862, 57.266384, 57.553459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.123177, 57.726604, 58.020271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.742935, 57.822968, 57.941963>,  <69.514793, 57.880783, 57.894978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.742935, 57.822968, 57.941963>,  <70.123177, 57.726604, 58.020271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.742935, 57.822968, 57.941963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127999, 0.270367, 0.954211,
		0.282803, 0.932130, -0.226175,
		-0.950599, 0.240904, -0.195773,
		69.457756, 57.895237, 57.883232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.806198, 58.073662, 58.607262>,  <70.123177, 57.726604, 58.020271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.806198, 58.073662, 58.607262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.189186, 58.020699, 58.504707>,  <70.418976, 57.988922, 58.443176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.189186, 58.020699, 58.504707>,  <69.806198, 58.073662, 58.607262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.189186, 58.020699, 58.504707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181895, -0.966696, -0.180037,
		-0.224004, 0.219013, -0.949661,
		0.957463, -0.132409, -0.256381,
		70.476425, 57.980976, 58.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.793243, 58.508255, 59.244450>,  <69.806198, 58.073662, 58.607262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.793243, 58.508255, 59.244450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.187111, 58.479992, 59.180672>,  <70.423431, 58.463036, 59.142403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.187111, 58.479992, 59.180672>,  <69.793243, 58.508255, 59.244450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.187111, 58.479992, 59.180672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174220, 0.356876, 0.917762,
		-0.007943, -0.931476, 0.363716,
		0.984675, -0.070656, -0.159447,
		70.482513, 58.458794, 59.132839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.235832, 58.076340, 59.834351>,  <69.793243, 58.508255, 59.244450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.235832, 58.076340, 59.834351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.414482, 58.389755, 59.661568>,  <70.521675, 58.577805, 59.557899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.414482, 58.389755, 59.661568>,  <70.235832, 58.076340, 59.834351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.414482, 58.389755, 59.661568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245486, 0.356943, 0.901293,
		0.860383, -0.508583, -0.032927,
		0.446629, 0.783540, -0.431957,
		70.548470, 58.624817, 59.531979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.995667, 57.966942, 59.916607>,  <70.235832, 58.076340, 59.834351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.995667, 57.966942, 59.916607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.791893, 58.309711, 59.885193>,  <70.669632, 58.515373, 59.866344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.791893, 58.309711, 59.885193>,  <70.995667, 57.966942, 59.916607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.791893, 58.309711, 59.885193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040744, 0.067148, 0.996911,
		0.859549, 0.511053, 0.000708,
		-0.509427, 0.856922, -0.078539,
		70.639069, 58.566788, 59.861629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.206123, 58.304047, 60.493275>,  <70.995667, 57.966942, 59.916607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.206123, 58.304047, 60.493275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.834793, 58.426929, 60.409531>,  <70.611992, 58.500660, 60.359283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.834793, 58.426929, 60.409531>,  <71.206123, 58.304047, 60.493275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.834793, 58.426929, 60.409531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228480, -0.027209, 0.973168,
		0.293265, 0.951255, 0.095450,
		-0.928328, 0.307205, -0.209363,
		70.556297, 58.519093, 60.346722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.008804, 58.917774, 60.967220>,  <71.206123, 58.304047, 60.493275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.008804, 58.917774, 60.967220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.690277, 58.699059, 60.863770>,  <70.499161, 58.567829, 60.801701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.690277, 58.699059, 60.863770>,  <71.008804, 58.917774, 60.967220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.690277, 58.699059, 60.863770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189098, -0.181091, 0.965116,
		-0.574551, 0.817450, 0.040810,
		-0.796325, -0.546791, -0.258624,
		70.451378, 58.535023, 60.786182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.568810, 59.056114, 61.506947>,  <71.008804, 58.917774, 60.967220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.568810, 59.056114, 61.506947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.449875, 58.716679, 61.331909>,  <70.378517, 58.513016, 61.226887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.449875, 58.716679, 61.331909>,  <70.568810, 59.056114, 61.506947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.449875, 58.716679, 61.331909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229094, -0.381527, 0.895518,
		-0.926882, 0.366515, -0.080967,
		-0.297330, -0.848589, -0.437597,
		70.360680, 58.462101, 61.200630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.013992, 59.388103, 62.088398>,  <70.568810, 59.056114, 61.506947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.013992, 59.388103, 62.088398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.227425, 59.175514, 62.351555>,  <71.355484, 59.047962, 62.509449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.227425, 59.175514, 62.351555>,  <71.013992, 59.388103, 62.088398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.227425, 59.175514, 62.351555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260504, 0.636785, 0.725702,
		-0.804624, -0.558610, 0.201332,
		0.533590, -0.531469, 0.657892,
		71.387505, 59.016075, 62.548923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.722366, 59.027576, 61.822067>,  <71.013992, 59.388103, 62.088398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.722366, 59.027576, 61.822067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.037132, 58.952019, 61.587090>,  <72.225990, 58.906685, 61.446102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.037132, 58.952019, 61.587090>,  <71.722366, 59.027576, 61.822067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.037132, 58.952019, 61.587090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146308, -0.867733, 0.475008,
		-0.599466, -0.459738, -0.655196,
		0.786914, -0.188891, -0.587440,
		72.273209, 58.895351, 61.410858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.683815, 58.416950, 61.401352>,  <71.722366, 59.027576, 61.822067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.683815, 58.416950, 61.401352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.071953, 58.473129, 61.480057>,  <72.304832, 58.506836, 61.527279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.071953, 58.473129, 61.480057>,  <71.683815, 58.416950, 61.401352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.071953, 58.473129, 61.480057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068782, -0.940679, 0.332253,
		0.231755, -0.308864, -0.922439,
		0.970340, 0.140449, 0.196762,
		72.363052, 58.515263, 61.539085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.097710, 57.842762, 61.030022>,  <71.683815, 58.416950, 61.401352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.097710, 57.842762, 61.030022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.282555, 57.949379, 61.368347>,  <72.393463, 58.013348, 61.571342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.282555, 57.949379, 61.368347>,  <72.097710, 57.842762, 61.030022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.282555, 57.949379, 61.368347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038734, -0.958920, 0.281020,
		0.885974, -0.097101, -0.453454,
		0.462114, 0.266541, 0.845817,
		72.421188, 58.029343, 61.622093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.779839, 57.665524, 61.123974>,  <72.097710, 57.842762, 61.030022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.779839, 57.665524, 61.123974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.553131, 57.664169, 61.453522>,  <72.417107, 57.663357, 61.651249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.553131, 57.664169, 61.453522>,  <72.779839, 57.665524, 61.123974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.553131, 57.664169, 61.453522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199145, -0.970902, 0.133005,
		0.799446, 0.239453, 0.550952,
		-0.566769, -0.003389, 0.823870,
		72.383102, 57.663151, 61.700684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.091927, 58.255356, 61.099682>,  <72.779839, 57.665524, 61.123974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.091927, 58.255356, 61.099682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.335777, 58.486568, 60.882706>,  <73.482086, 58.625298, 60.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.335777, 58.486568, 60.882706>,  <73.091927, 58.255356, 61.099682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.335777, 58.486568, 60.882706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218639, -0.780364, -0.585857,
		-0.761943, 0.238554, -0.602108,
		0.609623, 0.578034, -0.542436,
		73.518661, 58.659977, 60.719975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.011108, 58.431057, 60.345039>,  <73.091927, 58.255356, 61.099682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.011108, 58.431057, 60.345039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.397842, 58.392357, 60.439575>,  <73.629883, 58.369137, 60.496296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.397842, 58.392357, 60.439575>,  <73.011108, 58.431057, 60.345039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.397842, 58.392357, 60.439575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045129, -0.846157, -0.531020,
		0.251359, 0.524078, -0.813732,
		0.966841, -0.096754, 0.236341,
		73.687897, 58.363331, 60.510479>
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
