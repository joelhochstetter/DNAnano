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
	<36.176514, 52.997444, 49.574181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141430, 52.611458, 49.475266>,  <36.120380, 52.379868, 49.415916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141430, 52.611458, 49.475266>,  <36.176514, 52.997444, 49.574181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141430, 52.611458, 49.475266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992386, -0.106188, 0.062398,
		-0.086471, -0.239933, 0.966931,
		-0.087705, -0.964964, -0.247289,
		36.115120, 52.321968, 49.401077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604584, 52.683865, 50.030586>,  <36.176514, 52.997444, 49.574181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604584, 52.683865, 50.030586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597195, 52.454605, 49.702888>,  <36.592762, 52.317051, 49.506268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597195, 52.454605, 49.702888>,  <36.604584, 52.683865, 50.030586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597195, 52.454605, 49.702888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978162, -0.180019, 0.103881,
		-0.207019, -0.799437, 0.563954,
		-0.018476, -0.573144, -0.819246,
		36.591652, 52.282661, 49.457115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700764, 51.971104, 50.290405>,  <36.604584, 52.683865, 50.030586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700764, 51.971104, 50.290405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846558, 52.062145, 49.929218>,  <36.934036, 52.116772, 49.712505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846558, 52.062145, 49.929218>,  <36.700764, 51.971104, 50.290405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846558, 52.062145, 49.929218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931048, -0.107051, 0.348840,
		-0.017266, -0.967852, -0.250928,
		0.364488, 0.227603, -0.902965,
		36.955902, 52.130424, 49.658329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008755, 51.488316, 49.888153>,  <36.700764, 51.971104, 50.290405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008755, 51.488316, 49.888153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203316, 51.798676, 49.727455>,  <37.320053, 51.984890, 49.631035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203316, 51.798676, 49.727455>,  <37.008755, 51.488316, 49.888153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203316, 51.798676, 49.727455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865703, -0.365750, 0.341737,
		0.118214, -0.514014, -0.849597,
		0.486398, 0.775897, -0.401747,
		37.349236, 52.031445, 49.606930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646030, 51.217358, 49.553211>,  <37.008755, 51.488316, 49.888153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646030, 51.217358, 49.553211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728859, 51.574844, 49.712402>,  <37.778557, 51.789337, 49.807919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728859, 51.574844, 49.712402>,  <37.646030, 51.217358, 49.553211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728859, 51.574844, 49.712402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640889, -0.431275, 0.635030,
		0.739177, 0.123561, -0.662081,
		0.207074, 0.893719, 0.397977,
		37.790981, 51.842960, 49.831795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230465, 50.780437, 49.885437>,  <37.646030, 51.217358, 49.553211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230465, 50.780437, 49.885437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189281, 50.740002, 50.281250>,  <38.164574, 50.715740, 50.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189281, 50.740002, 50.281250>,  <38.230465, 50.780437, 49.885437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189281, 50.740002, 50.281250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811402, 0.566893, 0.142333,
		-0.575349, 0.817566, 0.023657,
		-0.102955, -0.101087, 0.989536,
		38.158394, 50.709675, 50.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028294, 51.408302, 50.323242>,  <38.230465, 50.780437, 49.885437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028294, 51.408302, 50.323242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239777, 51.140358, 50.531761>,  <38.366669, 50.979591, 50.656872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239777, 51.140358, 50.531761>,  <38.028294, 51.408302, 50.323242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239777, 51.140358, 50.531761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709921, 0.685628, 0.161013,
		-0.465272, 0.284950, 0.838049,
		0.528709, -0.669863, 0.521296,
		38.398388, 50.939400, 50.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253967, 51.717316, 50.965378>,  <38.028294, 51.408302, 50.323242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253967, 51.717316, 50.965378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510773, 51.425507, 50.871048>,  <38.664856, 51.250420, 50.814449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510773, 51.425507, 50.871048>,  <38.253967, 51.717316, 50.965378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510773, 51.425507, 50.871048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764753, 0.631205, 0.129354,
		0.054488, -0.263396, 0.963148,
		0.642015, -0.729522, -0.235826,
		38.703377, 51.206650, 50.800301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637791, 51.625095, 51.573048>,  <38.253967, 51.717316, 50.965378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637791, 51.625095, 51.573048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828438, 51.531288, 51.234146>,  <38.942825, 51.475002, 51.030804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828438, 51.531288, 51.234146>,  <38.637791, 51.625095, 51.573048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828438, 51.531288, 51.234146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654612, 0.737966, 0.163981,
		0.586788, -0.632778, 0.505245,
		0.476617, -0.234517, -0.847253,
		38.971424, 51.460934, 50.979969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354866, 51.543613, 51.669613>,  <38.637791, 51.625095, 51.573048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354866, 51.543613, 51.669613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243660, 51.683086, 51.311588>,  <39.176937, 51.766769, 51.096775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243660, 51.683086, 51.311588>,  <39.354866, 51.543613, 51.669613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243660, 51.683086, 51.311588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589696, 0.797497, 0.127504,
		0.758264, -0.492364, -0.427334,
		-0.278019, 0.348679, -0.895058,
		39.160255, 51.787689, 51.043072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805271, 51.393272, 51.130329>,  <39.354866, 51.543613, 51.669613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805271, 51.393272, 51.130329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616180, 51.744392, 51.099365>,  <39.502728, 51.955067, 51.080788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616180, 51.744392, 51.099365>,  <39.805271, 51.393272, 51.130329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616180, 51.744392, 51.099365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879429, 0.464360, -0.104757,
		-0.056011, -0.117595, -0.991481,
		-0.472723, 0.877805, -0.077407,
		39.474365, 52.007732, 51.076141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536568, 51.147411, 51.158852>,  <39.805271, 51.393272, 51.130329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536568, 51.147411, 51.158852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743759, 51.362236, 51.425163>,  <40.868073, 51.491131, 51.584949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743759, 51.362236, 51.425163>,  <40.536568, 51.147411, 51.158852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743759, 51.362236, 51.425163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097890, -0.810432, 0.577597,
		0.849773, -0.234011, -0.472361,
		0.517980, 0.537066, 0.665776,
		40.899155, 51.523357, 51.624897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105526, 50.687790, 51.325977>,  <40.536568, 51.147411, 51.158852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105526, 50.687790, 51.325977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004368, 50.942383, 51.617439>,  <40.943672, 51.095139, 51.792316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004368, 50.942383, 51.617439>,  <41.105526, 50.687790, 51.325977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004368, 50.942383, 51.617439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084063, -0.735830, 0.671928,
		0.963835, 0.231179, 0.132582,
		-0.252894, 0.636483, 0.728652,
		40.928501, 51.133327, 51.836037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562714, 50.561733, 51.877853>,  <41.105526, 50.687790, 51.325977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562714, 50.561733, 51.877853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229626, 50.732521, 52.018864>,  <41.029774, 50.834991, 52.103470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229626, 50.732521, 52.018864>,  <41.562714, 50.561733, 51.877853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229626, 50.732521, 52.018864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091466, -0.734010, 0.672951,
		0.546085, 0.528136, 0.650279,
		-0.832721, 0.426967, 0.352526,
		40.979809, 50.860611, 52.124622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077206, 50.816963, 51.252243>,  <41.562714, 50.561733, 51.877853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077206, 50.816963, 51.252243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092903, 51.180195, 51.085461>,  <42.102322, 51.398132, 50.985390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092903, 51.180195, 51.085461>,  <42.077206, 50.816963, 51.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092903, 51.180195, 51.085461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334046, 0.381347, 0.861967,
		0.941739, -0.173106, -0.288376,
		0.039240, 0.908080, -0.416955,
		42.104675, 51.452618, 50.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806770, 51.120872, 51.176701>,  <42.077206, 50.816963, 51.252243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806770, 51.120872, 51.176701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510876, 51.388817, 51.202271>,  <42.333340, 51.549583, 51.217613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510876, 51.388817, 51.202271>,  <42.806770, 51.120872, 51.176701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510876, 51.388817, 51.202271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384218, 0.342475, 0.857373,
		0.552422, 0.658790, -0.510711,
		-0.739734, 0.669856, 0.063928,
		42.288956, 51.589775, 51.221451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085857, 51.776947, 51.407967>,  <42.806770, 51.120872, 51.176701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085857, 51.776947, 51.407967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712288, 51.709179, 51.533875>,  <42.488148, 51.668518, 51.609421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712288, 51.709179, 51.533875>,  <43.085857, 51.776947, 51.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712288, 51.709179, 51.533875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171276, 0.560819, 0.810029,
		-0.313766, 0.810419, -0.494745,
		-0.933925, -0.169422, 0.314772,
		42.432110, 51.658352, 51.628307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797806, 52.367874, 51.597450>,  <43.085857, 51.776947, 51.407967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797806, 52.367874, 51.597450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615383, 52.095379, 51.826508>,  <42.505928, 51.931881, 51.963943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615383, 52.095379, 51.826508>,  <42.797806, 52.367874, 51.597450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615383, 52.095379, 51.826508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307707, 0.483069, 0.819732,
		-0.835062, 0.550052, -0.010685,
		-0.456057, -0.681239, 0.572648,
		42.478565, 51.891006, 51.998302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478634, 52.712833, 52.157310>,  <42.797806, 52.367874, 51.597450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478634, 52.712833, 52.157310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559612, 52.334793, 52.259918>,  <42.608200, 52.107967, 52.321484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559612, 52.334793, 52.259918>,  <42.478634, 52.712833, 52.157310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559612, 52.334793, 52.259918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230603, 0.300583, 0.925458,
		-0.951756, -0.128200, 0.278794,
		0.202445, -0.945100, 0.256519,
		42.620346, 52.051262, 52.336872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055820, 52.289043, 52.761578>,  <42.478634, 52.712833, 52.157310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055820, 52.289043, 52.761578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435032, 52.168030, 52.722153>,  <42.662560, 52.095421, 52.698498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435032, 52.168030, 52.722153>,  <42.055820, 52.289043, 52.761578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435032, 52.168030, 52.722153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225345, 0.419704, 0.879243,
		-0.224639, -0.855757, 0.466066,
		0.948028, -0.302538, -0.098559,
		42.719440, 52.077267, 52.692585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354069, 51.824833, 53.233494>,  <42.055820, 52.289043, 52.761578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354069, 51.824833, 53.233494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662804, 52.056152, 53.127785>,  <42.848045, 52.194946, 53.064358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662804, 52.056152, 53.127785>,  <42.354069, 51.824833, 53.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662804, 52.056152, 53.127785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070451, 0.335292, 0.939476,
		0.631909, -0.743738, 0.218048,
		0.771834, 0.578302, -0.264271,
		42.894356, 52.229641, 53.048504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913300, 51.638378, 53.681236>,  <42.354069, 51.824833, 53.233494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913300, 51.638378, 53.681236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919140, 52.015121, 53.546955>,  <42.922642, 52.241165, 53.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919140, 52.015121, 53.546955>,  <42.913300, 51.638378, 53.681236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919140, 52.015121, 53.546955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190368, 0.332217, 0.923792,
		0.981604, 0.050422, 0.184149,
		0.014598, 0.941854, -0.335704,
		42.923519, 52.297676, 53.446243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277885, 51.558617, 54.437511>,  <42.913300, 51.638378, 53.681236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277885, 51.558617, 54.437511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551010, 51.688694, 54.699203>,  <43.714886, 51.766739, 54.856220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551010, 51.688694, 54.699203>,  <43.277885, 51.558617, 54.437511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551010, 51.688694, 54.699203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681314, -0.606741, -0.409485,
		0.263789, 0.725338, -0.635846,
		0.682808, 0.325193, 0.654234,
		43.755852, 51.786251, 54.895473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849247, 51.337746, 54.185890>,  <43.277885, 51.558617, 54.437511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849247, 51.337746, 54.185890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979797, 51.376640, 54.561981>,  <44.058128, 51.399975, 54.787636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979797, 51.376640, 54.561981>,  <43.849247, 51.337746, 54.185890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979797, 51.376640, 54.561981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736516, -0.649630, -0.188480,
		0.592473, 0.754007, -0.283635,
		0.326373, 0.097232, 0.940227,
		44.077709, 51.405811, 54.844048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565292, 51.384937, 54.081985>,  <43.849247, 51.337746, 54.185890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565292, 51.384937, 54.081985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491611, 51.274345, 54.459267>,  <44.447403, 51.207989, 54.685635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491611, 51.274345, 54.459267>,  <44.565292, 51.384937, 54.081985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491611, 51.274345, 54.459267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530554, -0.835778, -0.141379,
		0.827395, 0.474376, 0.300641,
		-0.184203, -0.276482, 0.943200,
		44.436352, 51.191402, 54.742226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189991, 51.240311, 54.485519>,  <44.565292, 51.384937, 54.081985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189991, 51.240311, 54.485519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885792, 51.021584, 54.625595>,  <44.703274, 50.890347, 54.709641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885792, 51.021584, 54.625595>,  <45.189991, 51.240311, 54.485519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885792, 51.021584, 54.625595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537495, -0.832711, -0.133008,
		0.364340, 0.087074, 0.927186,
		-0.760497, -0.546818, 0.350192,
		44.657642, 50.857536, 54.730652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549881, 50.823360, 53.852554>,  <45.189991, 51.240311, 54.485519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549881, 50.823360, 53.852554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918644, 50.943390, 53.950565>,  <46.139904, 51.015408, 54.009373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.918644, 50.943390, 53.950565>,  <45.549881, 50.823360, 53.852554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918644, 50.943390, 53.950565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353089, -0.911081, -0.212742,
		0.159401, 0.282645, -0.945888,
		0.921911, 0.300071, 0.245026,
		46.195217, 51.033413, 54.024075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076492, 50.695774, 53.283035>,  <45.549881, 50.823360, 53.852554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076492, 50.695774, 53.283035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237942, 50.678299, 53.648586>,  <46.334812, 50.667812, 53.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237942, 50.678299, 53.648586>,  <46.076492, 50.695774, 53.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237942, 50.678299, 53.648586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339649, -0.920326, -0.194005,
		0.849545, 0.388704, -0.356625,
		0.403622, -0.043689, 0.913882,
		46.359028, 50.665192, 53.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801781, 50.622643, 53.240009>,  <46.076492, 50.695774, 53.283035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801781, 50.622643, 53.240009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658169, 50.477665, 53.584042>,  <46.572002, 50.390678, 53.790459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658169, 50.477665, 53.584042>,  <46.801781, 50.622643, 53.240009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658169, 50.477665, 53.584042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291470, -0.918969, -0.265595,
		0.886648, 0.155331, 0.435576,
		-0.359026, -0.362447, 0.860077,
		46.550461, 50.368931, 53.842064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.213913, 50.066822, 53.446892>,  <46.801781, 50.622643, 53.240009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.213913, 50.066822, 53.446892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845211, 49.990417, 53.581879>,  <46.623989, 49.944576, 53.662868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845211, 49.990417, 53.581879>,  <47.213913, 50.066822, 53.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845211, 49.990417, 53.581879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207365, -0.978181, 0.012742,
		0.327666, 0.081723, 0.941252,
		-0.921756, -0.191008, 0.337463,
		46.568684, 49.933117, 53.683117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.928524, 49.859001, 53.211769>,  <47.213913, 50.066822, 53.446892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.928524, 49.859001, 53.211769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.326694, 49.835949, 53.242226>,  <48.565598, 49.822117, 53.260498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.326694, 49.835949, 53.242226>,  <47.928524, 49.859001, 53.211769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.326694, 49.835949, 53.242226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004419, 0.768704, 0.639589,
		-0.095388, -0.637003, 0.764937,
		0.995431, -0.057629, 0.076140,
		48.625324, 49.818661, 53.265068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.252983, 49.781643, 53.831192>,  <47.928524, 49.859001, 53.211769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.252983, 49.781643, 53.831192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542282, 49.945896, 53.609097>,  <48.715862, 50.044449, 53.475842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542282, 49.945896, 53.609097>,  <48.252983, 49.781643, 53.831192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.542282, 49.945896, 53.609097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154470, 0.687438, 0.709625,
		0.673088, -0.599005, 0.433759,
		0.723251, 0.410637, -0.555235,
		48.759258, 50.069088, 53.442528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.613522, 50.013607, 54.370083>,  <48.252983, 49.781643, 53.831192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.613522, 50.013607, 54.370083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.702824, 50.218708, 54.038483>,  <48.756405, 50.341766, 53.839523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.702824, 50.218708, 54.038483>,  <48.613522, 50.013607, 54.370083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.702824, 50.218708, 54.038483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064804, 0.840781, 0.537483,
		0.972605, -0.173716, 0.154477,
		0.223251, 0.512748, -0.829004,
		48.769798, 50.372532, 53.789780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.214931, 50.519485, 54.540314>,  <48.613522, 50.013607, 54.370083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.214931, 50.519485, 54.540314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.040058, 50.657207, 54.207970>,  <48.935135, 50.739841, 54.008564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.040058, 50.657207, 54.207970>,  <49.214931, 50.519485, 54.540314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.040058, 50.657207, 54.207970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027649, 0.918240, 0.395058,
		0.898948, 0.195685, -0.391918,
		-0.437182, 0.344300, -0.830860,
		48.908905, 50.760498, 53.958710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.487915, 51.132298, 54.353653>,  <49.214931, 50.519485, 54.540314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.487915, 51.132298, 54.353653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.106312, 51.136265, 54.233803>,  <48.877350, 51.138645, 54.161892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.106312, 51.136265, 54.233803>,  <49.487915, 51.132298, 54.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.106312, 51.136265, 54.233803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112664, 0.914329, 0.388986,
		0.277814, 0.404852, -0.871157,
		-0.954006, 0.009917, -0.299625,
		48.820110, 51.139240, 54.143917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.959301, 50.964386, 53.866459>,  <49.487915, 51.132298, 54.353653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.959301, 50.964386, 53.866459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.972382, 51.332718, 53.711025>,  <49.980228, 51.553719, 53.617767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.972382, 51.332718, 53.711025>,  <49.959301, 50.964386, 53.866459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.972382, 51.332718, 53.711025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130929, 0.381492, 0.915053,
		0.990852, -0.080797, -0.108090,
		0.032699, 0.920834, -0.388580,
		49.982193, 51.608967, 53.594452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.623543, 51.221142, 53.841713>,  <49.959301, 50.964386, 53.866459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.623543, 51.221142, 53.841713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.340935, 51.498932, 53.896156>,  <50.171371, 51.665607, 53.928822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.340935, 51.498932, 53.896156>,  <50.623543, 51.221142, 53.841713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.340935, 51.498932, 53.896156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354811, 0.181197, 0.917211,
		0.612320, 0.696324, -0.374429,
		-0.706522, 0.694479, 0.136113,
		50.128979, 51.707275, 53.936989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.936794, 51.968258, 53.943893>,  <50.623543, 51.221142, 53.841713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.936794, 51.968258, 53.943893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.606300, 51.820023, 54.113598>,  <50.408005, 51.731083, 54.215420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.606300, 51.820023, 54.113598>,  <50.936794, 51.968258, 53.943893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.606300, 51.820023, 54.113598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435347, 0.057893, 0.898400,
		-0.357499, 0.926991, 0.113501,
		-0.826237, -0.370589, 0.424259,
		50.358429, 51.708847, 54.240875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.625145, 51.811222, 54.218349>,  <50.936794, 51.968258, 53.943893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.625145, 51.811222, 54.218349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.987003, 51.805466, 54.047981>,  <52.204117, 51.802013, 53.945759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.987003, 51.805466, 54.047981>,  <51.625145, 51.811222, 54.218349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.987003, 51.805466, 54.047981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336131, 0.638472, 0.692364,
		0.261976, -0.769510, 0.582428,
		0.904646, -0.014390, -0.425921,
		52.258396, 51.801147, 53.920204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.176113, 51.560581, 54.780636>,  <51.625145, 51.811222, 54.218349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.176113, 51.560581, 54.780636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.322353, 51.798138, 54.493965>,  <52.410095, 51.940674, 54.321964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.322353, 51.798138, 54.493965>,  <52.176113, 51.560581, 54.780636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.322353, 51.798138, 54.493965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491868, 0.530411, 0.690456,
		0.790192, -0.604940, -0.098201,
		0.365598, 0.593895, -0.716678,
		52.432034, 51.976307, 54.278961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.919521, 51.551643, 54.611725>,  <52.176113, 51.560581, 54.780636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.919521, 51.551643, 54.611725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.755516, 51.914066, 54.569874>,  <52.657112, 52.131519, 54.544762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.755516, 51.914066, 54.569874>,  <52.919521, 51.551643, 54.611725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.755516, 51.914066, 54.569874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612918, 0.358664, 0.704054,
		0.675442, 0.224540, -0.702396,
		-0.410012, 0.906059, -0.104632,
		52.632511, 52.185883, 54.538483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.453850, 52.117966, 54.280849>,  <52.919521, 51.551643, 54.611725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.453850, 52.117966, 54.280849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.170921, 52.228207, 54.541233>,  <53.001163, 52.294350, 54.697464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.170921, 52.228207, 54.541233>,  <53.453850, 52.117966, 54.280849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.170921, 52.228207, 54.541233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701697, 0.385188, 0.599376,
		-0.085552, 0.880724, -0.465839,
		-0.707321, 0.275600, 0.650955,
		52.958725, 52.310886, 54.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.564667, 52.873550, 54.331547>,  <53.453850, 52.117966, 54.280849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.564667, 52.873550, 54.331547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.391712, 52.719097, 54.657478>,  <53.287941, 52.626427, 54.853039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.391712, 52.719097, 54.657478>,  <53.564667, 52.873550, 54.331547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.391712, 52.719097, 54.657478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737667, 0.368210, 0.565923,
		-0.518547, 0.845770, 0.125627,
		-0.432383, -0.386129, 0.814831,
		53.261997, 52.603260, 54.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.446545, 53.359337, 55.008770>,  <53.564667, 52.873550, 54.331547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.446545, 53.359337, 55.008770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.526363, 52.988625, 55.136055>,  <53.574257, 52.766197, 55.212425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.526363, 52.988625, 55.136055>,  <53.446545, 53.359337, 55.008770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.526363, 52.988625, 55.136055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730893, 0.357075, 0.581629,
		-0.652668, 0.116516, 0.748631,
		0.199549, -0.926780, 0.318212,
		53.586227, 52.710590, 55.231518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.633549, 53.295696, 55.772060>,  <53.446545, 53.359337, 55.008770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.633549, 53.295696, 55.772060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.797871, 53.017082, 55.536743>,  <53.896461, 52.849915, 55.395554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.797871, 53.017082, 55.536743>,  <53.633549, 53.295696, 55.772060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.797871, 53.017082, 55.536743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882115, 0.140539, 0.449579,
		-0.230468, -0.703629, 0.672154,
		0.410801, -0.696531, -0.588292,
		53.921112, 52.808125, 55.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.026379, 52.777348, 56.145695>,  <53.633549, 53.295696, 55.772060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.026379, 52.777348, 56.145695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.175812, 52.834694, 55.779114>,  <54.265472, 52.869102, 55.559166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.175812, 52.834694, 55.779114>,  <54.026379, 52.777348, 56.145695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.175812, 52.834694, 55.779114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883708, 0.245295, 0.398611,
		0.281947, -0.958789, -0.035054,
		0.373586, 0.143365, -0.916450,
		54.287888, 52.877705, 55.504177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.712437, 52.273842, 55.911068>,  <54.026379, 52.777348, 56.145695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.712437, 52.273842, 55.911068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.679504, 52.639324, 55.751892>,  <54.659744, 52.858616, 55.656387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.679504, 52.639324, 55.751892>,  <54.712437, 52.273842, 55.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.679504, 52.639324, 55.751892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716550, 0.331791, 0.613572,
		0.692660, -0.234633, -0.682033,
		-0.082328, 0.913708, -0.397944,
		54.654804, 52.913437, 55.632507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.325291, 52.381634, 55.710693>,  <54.712437, 52.273842, 55.911068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.325291, 52.381634, 55.710693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.162903, 52.745956, 55.740700>,  <55.065472, 52.964550, 55.758701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.162903, 52.745956, 55.740700>,  <55.325291, 52.381634, 55.710693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.162903, 52.745956, 55.740700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736765, 0.277615, 0.616528,
		0.540711, 0.305557, -0.783752,
		-0.405966, 0.910805, 0.075014,
		55.041115, 53.019199, 55.763203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.883121, 52.982086, 55.625469>,  <55.325291, 52.381634, 55.710693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.883121, 52.982086, 55.625469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.571251, 53.126057, 55.830429>,  <55.384129, 53.212440, 55.953403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.571251, 53.126057, 55.830429>,  <55.883121, 52.982086, 55.625469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.571251, 53.126057, 55.830429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619061, 0.320025, 0.717180,
		0.094153, 0.876376, -0.472335,
		-0.779678, 0.359929, 0.512399,
		55.337349, 53.234035, 55.984150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.075790, 53.673164, 55.850941>,  <55.883121, 52.982086, 55.625469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.075790, 53.673164, 55.850941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.842819, 53.445744, 56.083328>,  <55.703037, 53.309292, 56.222759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.842819, 53.445744, 56.083328>,  <56.075790, 53.673164, 55.850941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.842819, 53.445744, 56.083328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552382, 0.247511, 0.795998,
		-0.596361, 0.784530, 0.169899,
		-0.582432, -0.568552, 0.580966,
		55.668091, 53.275177, 56.257618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.747623, 54.020954, 56.462021>,  <56.075790, 53.673164, 55.850941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.747623, 54.020954, 56.462021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.750015, 53.632423, 56.557098>,  <55.751450, 53.399307, 56.614143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.750015, 53.632423, 56.557098>,  <55.747623, 54.020954, 56.462021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.750015, 53.632423, 56.557098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337179, 0.225733, 0.913978,
		-0.941422, 0.074680, 0.328859,
		0.005978, -0.971323, 0.237690,
		55.751808, 53.341026, 56.628407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.347351, 53.739571, 57.031441>,  <55.747623, 54.020954, 56.462021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.347351, 53.739571, 57.031441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.701180, 53.553040, 57.028069>,  <55.913475, 53.441120, 57.026047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.701180, 53.553040, 57.028069>,  <55.347351, 53.739571, 57.031441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.701180, 53.553040, 57.028069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167266, 0.300305, 0.939063,
		-0.435382, -0.832077, 0.343643,
		0.884571, -0.466330, -0.008431,
		55.966549, 53.413139, 57.025539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.417130, 53.494587, 57.682053>,  <55.347351, 53.739571, 57.031441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.417130, 53.494587, 57.682053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.790771, 53.506561, 57.539757>,  <56.014957, 53.513744, 57.454380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.790771, 53.506561, 57.539757>,  <55.417130, 53.494587, 57.682053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.790771, 53.506561, 57.539757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326676, 0.330215, 0.885574,
		0.143977, -0.943431, 0.298677,
		0.934106, 0.029931, -0.355740,
		56.071003, 53.515541, 57.433033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.982407, 52.997814, 57.896137>,  <55.417130, 53.494587, 57.682053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.982407, 52.997814, 57.896137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.083488, 53.382793, 57.856461>,  <56.144138, 53.613781, 57.832653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.083488, 53.382793, 57.856461>,  <55.982407, 52.997814, 57.896137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.083488, 53.382793, 57.856461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041311, 0.091691, 0.994930,
		0.966661, -0.255523, -0.016588,
		0.252707, 0.962445, -0.099190,
		56.159302, 53.671528, 57.826702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.228661, 52.661629, 57.272598>,  <55.982407, 52.997814, 57.896137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.228661, 52.661629, 57.272598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.291275, 52.955250, 57.008278>,  <56.328846, 53.131424, 56.849686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.291275, 52.955250, 57.008278>,  <56.228661, 52.661629, 57.272598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.291275, 52.955250, 57.008278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433185, 0.550237, 0.713856,
		0.887607, -0.397995, -0.231848,
		0.156540, 0.734057, -0.660800,
		56.338238, 53.175468, 56.810040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.761551, 52.824276, 56.965485>,  <56.228661, 52.661629, 57.272598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.761551, 52.824276, 56.965485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.096535, 52.784508, 56.750534>,  <57.297523, 52.760647, 56.621563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.096535, 52.784508, 56.750534>,  <56.761551, 52.824276, 56.965485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.096535, 52.784508, 56.750534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408810, 0.766532, 0.495280,
		0.362679, -0.634463, 0.682583,
		0.837459, -0.099419, -0.537380,
		57.347771, 52.754681, 56.589321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.335670, 52.728748, 57.384598>,  <56.761551, 52.824276, 56.965485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.335670, 52.728748, 57.384598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.448860, 52.889526, 57.036263>,  <57.516773, 52.985992, 56.827263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.448860, 52.889526, 57.036263>,  <57.335670, 52.728748, 57.384598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.448860, 52.889526, 57.036263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476135, 0.729302, 0.491339,
		0.832599, -0.553673, 0.014992,
		0.282975, 0.401950, -0.870839,
		57.533752, 53.010113, 56.775009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.048313, 52.747997, 57.234970>,  <57.335670, 52.728748, 57.384598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.048313, 52.747997, 57.234970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.881149, 53.081020, 57.089531>,  <57.780849, 53.280834, 57.002266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.881149, 53.081020, 57.089531>,  <58.048313, 52.747997, 57.234970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.881149, 53.081020, 57.089531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503237, 0.545357, 0.670327,
		0.756376, 0.097158, -0.646881,
		-0.417909, 0.832554, -0.363601,
		57.755775, 53.330788, 56.980450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.419659, 53.332767, 56.889893>,  <58.048313, 52.747997, 57.234970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.419659, 53.332767, 56.889893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.108215, 53.481861, 57.091820>,  <57.921349, 53.571320, 57.212975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.108215, 53.481861, 57.091820>,  <58.419659, 53.332767, 56.889893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.108215, 53.481861, 57.091820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609321, 0.256782, 0.750194,
		0.149998, 0.891700, -0.427049,
		-0.778607, 0.372738, 0.504815,
		57.874634, 53.593681, 57.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.152199, 53.373985, 56.628536>,  <58.419659, 53.332767, 56.889893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.152199, 53.373985, 56.628536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.013840, 53.003487, 56.688431>,  <58.930824, 52.781189, 56.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.013840, 53.003487, 56.688431>,  <59.152199, 53.373985, 56.628536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.013840, 53.003487, 56.688431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772120, -0.190324, 0.606306,
		-0.533091, 0.325334, 0.781007,
		-0.345896, -0.926248, 0.149737,
		58.910072, 52.725613, 56.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.115410, 53.363914, 57.332127>,  <59.152199, 53.373985, 56.628536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.115410, 53.363914, 57.332127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.135445, 53.005398, 57.155876>,  <59.147465, 52.790287, 57.050125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.135445, 53.005398, 57.155876>,  <59.115410, 53.363914, 57.332127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.135445, 53.005398, 57.155876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749918, -0.257636, 0.609300,
		-0.659632, -0.360953, 0.659241,
		0.050085, -0.896291, -0.440630,
		59.150471, 52.736511, 57.023685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.847828, 53.393139, 57.492264>,  <59.115410, 53.363914, 57.332127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.847828, 53.393139, 57.492264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.219551, 53.508446, 57.399933>,  <60.442585, 53.577629, 57.344536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.219551, 53.508446, 57.399933>,  <59.847828, 53.393139, 57.492264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.219551, 53.508446, 57.399933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364553, 0.815955, -0.448686,
		0.059001, 0.501118, 0.863365,
		0.929312, 0.288269, -0.230826,
		60.498344, 53.594925, 57.330685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.680084, 54.119122, 57.626656>,  <59.847828, 53.393139, 57.492264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.680084, 54.119122, 57.626656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.992744, 53.994240, 57.410675>,  <60.180340, 53.919312, 57.281086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.992744, 53.994240, 57.410675>,  <59.680084, 54.119122, 57.626656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.992744, 53.994240, 57.410675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210124, 0.683288, -0.699260,
		0.587256, 0.660035, 0.468491,
		0.781651, -0.312204, -0.539955,
		60.227242, 53.900578, 57.248688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.140095, 54.677921, 57.336330>,  <59.680084, 54.119122, 57.626656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.140095, 54.677921, 57.336330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.157722, 54.363960, 57.089111>,  <60.168297, 54.175583, 56.940781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.157722, 54.363960, 57.089111>,  <60.140095, 54.677921, 57.336330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.157722, 54.363960, 57.089111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241335, 0.591966, -0.768982,
		0.969441, 0.183045, -0.163338,
		0.044067, -0.784902, -0.618051,
		60.170944, 54.128490, 56.903694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.529442, 54.859066, 56.693180>,  <60.140095, 54.677921, 57.336330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.529442, 54.859066, 56.693180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.253136, 54.573418, 56.647781>,  <60.087353, 54.402031, 56.620541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.253136, 54.573418, 56.647781>,  <60.529442, 54.859066, 56.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.253136, 54.573418, 56.647781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283221, 0.411632, -0.866224,
		0.665307, -0.566209, -0.486593,
		-0.690762, -0.714119, -0.113499,
		60.045906, 54.359180, 56.613731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.548481, 54.612232, 56.039185>,  <60.529442, 54.859066, 56.693180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.548481, 54.612232, 56.039185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.169098, 54.549236, 56.149178>,  <59.941467, 54.511436, 56.215176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.169098, 54.549236, 56.149178>,  <60.548481, 54.612232, 56.039185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.169098, 54.549236, 56.149178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309876, 0.642538, -0.700801,
		-0.066320, -0.749894, -0.658225,
		-0.948461, -0.157491, 0.274987,
		59.884560, 54.501987, 56.231674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.854580, 54.037643, 56.038746>,  <60.548481, 54.612232, 56.039185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.854580, 54.037643, 56.038746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.986305, 53.694519, 56.196587>,  <61.065342, 53.488644, 56.291290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.986305, 53.694519, 56.196587>,  <60.854580, 54.037643, 56.038746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.986305, 53.694519, 56.196587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875435, -0.120798, 0.467997,
		-0.353787, -0.499565, -0.790740,
		0.329315, -0.857813, 0.394600,
		61.085098, 53.437176, 56.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.607113, 53.773602, 56.189632>,  <60.854580, 54.037643, 56.038746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.607113, 53.773602, 56.189632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.776222, 53.615242, 56.515709>,  <61.877689, 53.520226, 56.711353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.776222, 53.615242, 56.515709>,  <61.607113, 53.773602, 56.189632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.776222, 53.615242, 56.515709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835717, -0.177574, -0.519658,
		0.350486, 0.900963, 0.255782,
		0.422773, -0.395895, 0.815187,
		61.903053, 53.496475, 56.760265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.210175, 54.104343, 56.407013>,  <61.607113, 53.773602, 56.189632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.210175, 54.104343, 56.407013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.250137, 53.725842, 56.530052>,  <62.274117, 53.498741, 56.603874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.250137, 53.725842, 56.530052>,  <62.210175, 54.104343, 56.407013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.250137, 53.725842, 56.530052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838050, -0.086621, -0.538673,
		0.536368, 0.311596, 0.784358,
		0.099906, -0.946258, 0.307594,
		62.280109, 53.441963, 56.622330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.933296, 53.924953, 56.750492>,  <62.210175, 54.104343, 56.407013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.933296, 53.924953, 56.750492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.775414, 53.604855, 56.569908>,  <62.680683, 53.412796, 56.461559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.775414, 53.604855, 56.569908>,  <62.933296, 53.924953, 56.750492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.775414, 53.604855, 56.569908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903475, -0.248649, -0.349151,
		0.167152, -0.545692, 0.821146,
		-0.394706, -0.800246, -0.451457,
		62.657001, 53.364780, 56.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.136265, 53.119873, 56.785492>,  <62.933296, 53.924953, 56.750492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.136265, 53.119873, 56.785492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.273849, 53.250671, 57.137573>,  <63.356400, 53.329151, 57.348824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.273849, 53.250671, 57.137573>,  <63.136265, 53.119873, 56.785492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.273849, 53.250671, 57.137573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868489, -0.467143, -0.165841,
		0.356951, 0.821491, -0.444677,
		0.343965, 0.327000, 0.880204,
		63.377041, 53.348770, 57.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.826904, 53.409252, 56.751472>,  <63.136265, 53.119873, 56.785492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.826904, 53.409252, 56.751472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.775810, 53.260033, 57.119064>,  <63.745155, 53.170502, 57.339619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.775810, 53.260033, 57.119064>,  <63.826904, 53.409252, 56.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.775810, 53.260033, 57.119064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825276, -0.553886, -0.110132,
		0.550093, 0.744343, 0.378618,
		-0.127735, -0.373048, 0.918977,
		63.737488, 53.148117, 57.394756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.488251, 53.906120, 56.515369>,  <63.826904, 53.409252, 56.751472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.488251, 53.906120, 56.515369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.496719, 54.247364, 56.306847>,  <64.501801, 54.452110, 56.181732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.496719, 54.247364, 56.306847>,  <64.488251, 53.906120, 56.515369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.496719, 54.247364, 56.306847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955773, 0.135725, 0.260915,
		0.293343, -0.503768, -0.812507,
		0.021163, 0.853110, -0.521302,
		64.503067, 54.503296, 56.150455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.116371, 53.912701, 56.240902>,  <64.488251, 53.906120, 56.515369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.116371, 53.912701, 56.240902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.015121, 54.299446, 56.254173>,  <64.954369, 54.531494, 56.262138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.015121, 54.299446, 56.254173>,  <65.116371, 53.912701, 56.240902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.015121, 54.299446, 56.254173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937983, 0.236881, 0.253130,
		0.236881, 0.095200, -0.966863,
		-0.253130, 0.966863, 0.033183,
		64.939186, 54.589504, 56.264130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.842224, 54.148323, 56.310421>,  <65.116371, 53.912701, 56.240902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.842224, 54.148323, 56.310421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.237511, 54.164982, 56.251511>,  <66.474686, 54.174976, 56.216164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.237511, 54.164982, 56.251511>,  <65.842224, 54.148323, 56.310421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.237511, 54.164982, 56.251511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035081, 0.998284, 0.046893,
		0.148972, -0.041174, 0.987984,
		0.988219, 0.041645, -0.147272,
		66.533974, 54.177475, 56.207329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.076790, 54.579124, 56.877178>,  <65.842224, 54.148323, 56.310421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.076790, 54.579124, 56.877178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.291534, 54.603626, 56.540604>,  <66.420380, 54.618328, 56.338657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.291534, 54.603626, 56.540604>,  <66.076790, 54.579124, 56.877178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.291534, 54.603626, 56.540604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165851, 0.985562, -0.034073,
		0.827205, 0.157846, 0.539275,
		0.536867, 0.061254, -0.841441,
		66.452591, 54.622002, 56.288170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.569923, 55.077026, 56.974388>,  <66.076790, 54.579124, 56.877178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.569923, 55.077026, 56.974388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.456055, 55.041225, 56.592613>,  <66.387733, 55.019745, 56.363548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.456055, 55.041225, 56.592613>,  <66.569923, 55.077026, 56.974388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.456055, 55.041225, 56.592613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342266, 0.939499, 0.013986,
		0.895440, 0.330653, -0.298089,
		-0.284678, -0.089502, -0.954436,
		66.370651, 55.014374, 56.306282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.484016, 55.634018, 57.436436>,  <66.569923, 55.077026, 56.974388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.484016, 55.634018, 57.436436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.646828, 55.370270, 57.689278>,  <66.744514, 55.212021, 57.840984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.646828, 55.370270, 57.689278>,  <66.484016, 55.634018, 57.436436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.646828, 55.370270, 57.689278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789146, -0.094641, -0.606871,
		0.459977, 0.745836, 0.481819,
		0.407026, -0.659372, 0.632106,
		66.768936, 55.172459, 57.878910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.252632, 55.763847, 57.568211>,  <66.484016, 55.634018, 57.436436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.252632, 55.763847, 57.568211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.151649, 55.380146, 57.618973>,  <67.091064, 55.149925, 57.649429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.151649, 55.380146, 57.618973>,  <67.252632, 55.763847, 57.568211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.151649, 55.380146, 57.618973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712981, -0.273080, -0.645821,
		0.654162, -0.072553, 0.752867,
		-0.252449, -0.959251, 0.126910,
		67.075912, 55.092369, 57.657047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.965897, 55.471466, 57.737228>,  <67.252632, 55.763847, 57.568211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.965897, 55.471466, 57.737228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.687981, 55.235233, 57.573044>,  <67.521233, 55.093494, 57.474533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.687981, 55.235233, 57.573044>,  <67.965897, 55.471466, 57.737228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.687981, 55.235233, 57.573044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655448, -0.285019, -0.699394,
		0.296060, -0.754969, 0.585124,
		-0.694793, -0.590581, -0.410460,
		67.479546, 55.058060, 57.449905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.089149, 55.052891, 57.218819>,  <67.965897, 55.471466, 57.737228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.089149, 55.052891, 57.218819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.022461, 55.322544, 56.931000>,  <67.982452, 55.484337, 56.758308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.022461, 55.322544, 56.931000>,  <68.089149, 55.052891, 57.218819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.022461, 55.322544, 56.931000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803546, -0.515809, -0.297077,
		-0.571420, 0.528666, 0.627687,
		-0.166712, 0.674131, -0.719551,
		67.972450, 55.524784, 56.715134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.345772, 55.678345, 57.026756>,  <68.089149, 55.052891, 57.218819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.345772, 55.678345, 57.026756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.143593, 55.947075, 57.243340>,  <68.022285, 56.108315, 57.373287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.143593, 55.947075, 57.243340>,  <68.345772, 55.678345, 57.026756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.143593, 55.947075, 57.243340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368330, 0.399475, -0.839496,
		-0.780291, -0.623756, 0.045539,
		-0.505449, 0.671825, 0.541455,
		67.991959, 56.148621, 57.405777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.720154, 55.874744, 57.646763>,  <68.345772, 55.678345, 57.026756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.720154, 55.874744, 57.646763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.525749, 55.921158, 57.993248>,  <68.409111, 55.949005, 58.201141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.525749, 55.921158, 57.993248>,  <68.720154, 55.874744, 57.646763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.525749, 55.921158, 57.993248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683381, 0.668290, 0.293903,
		-0.544781, 0.734796, -0.404089,
		-0.486008, 0.116034, 0.866217,
		68.379944, 55.955967, 58.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.586708, 56.640739, 57.762608>,  <68.720154, 55.874744, 57.646763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.586708, 56.640739, 57.762608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.639717, 56.408695, 58.084084>,  <68.671524, 56.269470, 58.276970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.639717, 56.408695, 58.084084>,  <68.586708, 56.640739, 57.762608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.639717, 56.408695, 58.084084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694167, 0.633100, 0.342514,
		-0.707509, 0.512502, 0.486592,
		0.132522, -0.580108, 0.803687,
		68.679474, 56.234661, 58.325191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.543068, 57.100327, 58.308598>,  <68.586708, 56.640739, 57.762608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.543068, 57.100327, 58.308598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.766830, 56.792816, 58.432564>,  <68.901085, 56.608311, 58.506943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.766830, 56.792816, 58.432564>,  <68.543068, 57.100327, 58.308598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.766830, 56.792816, 58.432564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711688, 0.637147, 0.295879,
		-0.424926, 0.055045, 0.903553,
		0.559409, -0.768774, 0.309915,
		68.934654, 56.562183, 58.525539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.858971, 57.196747, 58.986992>,  <68.543068, 57.100327, 58.308598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.858971, 57.196747, 58.986992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.120575, 56.928082, 58.847771>,  <69.277534, 56.766884, 58.764236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.120575, 56.928082, 58.847771>,  <68.858971, 57.196747, 58.986992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.120575, 56.928082, 58.847771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740995, 0.661420, 0.115974,
		0.152317, -0.333757, 0.930272,
		0.654007, -0.671663, -0.348057,
		69.316780, 56.726582, 58.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.450615, 57.120796, 59.346817>,  <68.858971, 57.196747, 58.986992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.450615, 57.120796, 59.346817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.600670, 56.979195, 59.004135>,  <69.690704, 56.894234, 58.798527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.600670, 56.979195, 59.004135>,  <69.450615, 57.120796, 59.346817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.600670, 56.979195, 59.004135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796454, 0.595948, 0.102501,
		0.474267, -0.720781, 0.505516,
		0.375142, -0.354007, -0.856707,
		69.713211, 56.872993, 58.747124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.175171, 56.978619, 59.366138>,  <69.450615, 57.120796, 59.346817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.175171, 56.978619, 59.366138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.151413, 57.036083, 58.971001>,  <70.137161, 57.070560, 58.733917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.151413, 57.036083, 58.971001>,  <70.175171, 56.978619, 59.366138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.151413, 57.036083, 58.971001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813564, 0.580392, 0.035490,
		0.578435, -0.801566, -0.151344,
		-0.059391, 0.143657, -0.987844,
		70.133598, 57.079182, 58.674648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.755272, 56.497299, 59.740108>,  <70.175171, 56.978619, 59.366138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.755272, 56.497299, 59.740108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.068245, 56.248253, 59.735046>,  <70.256027, 56.098824, 59.732010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.068245, 56.248253, 59.735046>,  <69.755272, 56.497299, 59.740108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.068245, 56.248253, 59.735046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504871, -0.622294, -0.598211,
		0.364581, 0.474444, -0.801239,
		0.782423, -0.622618, -0.012656,
		70.302971, 56.061466, 59.731251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.985825, 56.332684, 59.011909>,  <69.755272, 56.497299, 59.740108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.985825, 56.332684, 59.011909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.031700, 56.058769, 59.299774>,  <70.059227, 55.894421, 59.472492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.031700, 56.058769, 59.299774>,  <69.985825, 56.332684, 59.011909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.031700, 56.058769, 59.299774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440669, -0.684331, -0.580949,
		0.890314, -0.250507, -0.380247,
		0.114682, -0.684790, 0.719660,
		70.066101, 55.853333, 59.515671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.534180, 55.877010, 59.165684>,  <69.985825, 56.332684, 59.011909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.534180, 55.877010, 59.165684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.732094, 55.688869, 58.873398>,  <70.850845, 55.575985, 58.698025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.732094, 55.688869, 58.873398>,  <70.534180, 55.877010, 59.165684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.732094, 55.688869, 58.873398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865576, 0.341441, 0.366327,
		0.077192, -0.813746, 0.576071,
		0.494792, -0.470356, -0.730716,
		70.880531, 55.547764, 58.654182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.192619, 55.606712, 59.471661>,  <70.534180, 55.877010, 59.165684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.192619, 55.606712, 59.471661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.237549, 55.616352, 59.074310>,  <71.264503, 55.622135, 58.835899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.237549, 55.616352, 59.074310>,  <71.192619, 55.606712, 59.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.237549, 55.616352, 59.074310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913180, 0.391649, 0.112753,
		0.391766, -0.919801, 0.022055,
		0.112348, 0.024033, -0.993378,
		71.271248, 55.623581, 58.776295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.784889, 55.305618, 59.261078>,  <71.192619, 55.606712, 59.471661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.784889, 55.305618, 59.261078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.706093, 55.581043, 58.981911>,  <71.658813, 55.746296, 58.814411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.706093, 55.581043, 58.981911>,  <71.784889, 55.305618, 59.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.706093, 55.581043, 58.981911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838762, 0.486932, 0.243670,
		0.507618, -0.537386, -0.673454,
		-0.196982, 0.688559, -0.697914,
		71.646996, 55.787609, 58.772537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.442604, 55.493656, 58.896240>,  <71.784889, 55.305618, 59.261078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.442604, 55.493656, 58.896240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.171326, 55.787140, 58.912819>,  <72.008560, 55.963230, 58.922764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.171326, 55.787140, 58.912819>,  <72.442604, 55.493656, 58.896240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.171326, 55.787140, 58.912819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688737, 0.614939, 0.384045,
		0.256291, 0.289003, -0.922384,
		-0.678200, 0.733708, 0.041443,
		71.967865, 56.007252, 58.925251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.642540, 56.103733, 58.480293>,  <72.442604, 55.493656, 58.896240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.642540, 56.103733, 58.480293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.399010, 56.223808, 58.774017>,  <72.252892, 56.295853, 58.950253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.399010, 56.223808, 58.774017>,  <72.642540, 56.103733, 58.480293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.399010, 56.223808, 58.774017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521141, 0.849236, 0.084912,
		-0.598115, 0.434378, -0.673479,
		-0.608827, 0.300191, 0.734313,
		72.216362, 56.313866, 58.994312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.296410, 56.742989, 58.358021>,  <72.642540, 56.103733, 58.480293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.296410, 56.742989, 58.358021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.336060, 56.707569, 58.754471>,  <72.359848, 56.686317, 58.992340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.336060, 56.707569, 58.754471>,  <72.296410, 56.742989, 58.358021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.336060, 56.707569, 58.754471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479402, 0.877068, 0.030413,
		-0.871979, 0.472133, 0.129393,
		0.099128, -0.088551, 0.991127,
		72.365799, 56.681004, 59.051807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.950066, 57.154861, 58.763729>,  <72.296410, 56.742989, 58.358021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.950066, 57.154861, 58.763729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.282738, 57.115089, 58.982239>,  <72.482338, 57.091225, 59.113346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.282738, 57.115089, 58.982239>,  <71.950066, 57.154861, 58.763729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.282738, 57.115089, 58.982239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108334, 0.993986, 0.015992,
		-0.544582, 0.045880, 0.837452,
		0.831681, -0.099433, 0.546278,
		72.532242, 57.085258, 59.146122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.873322, 57.513309, 59.494099>,  <71.950066, 57.154861, 58.763729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.873322, 57.513309, 59.494099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.228447, 57.508827, 59.310066>,  <72.441521, 57.506138, 59.199646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.228447, 57.508827, 59.310066>,  <71.873322, 57.513309, 59.494099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.228447, 57.508827, 59.310066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080321, 0.988133, 0.130927,
		0.453150, -0.153192, 0.878173,
		0.887808, -0.011206, -0.460077,
		72.494789, 57.505466, 59.172043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.492599, 57.756004, 59.939129>,  <71.873322, 57.513309, 59.494099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.492599, 57.756004, 59.939129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.549774, 57.820770, 59.548569>,  <72.584084, 57.859631, 59.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.549774, 57.820770, 59.548569>,  <72.492599, 57.756004, 59.939129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.549774, 57.820770, 59.548569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031801, 0.985268, 0.168037,
		0.989220, -0.055069, 0.135686,
		0.142941, 0.161911, -0.976398,
		72.592659, 57.869343, 59.255650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.635658, 57.850674, 60.668106>,  <72.492599, 57.756004, 59.939129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.635658, 57.850674, 60.668106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.025429, 57.762005, 60.653465>,  <73.259293, 57.708805, 60.644680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.025429, 57.762005, 60.653465>,  <72.635658, 57.850674, 60.668106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.025429, 57.762005, 60.653465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072617, -0.156562, -0.984995,
		0.212614, 0.962471, -0.168656,
		0.974434, -0.221671, -0.036604,
		73.317757, 57.695503, 60.642483>
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
