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
	<41.965717, 31.542063, 22.697714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321716, 31.721935, 22.667534>,  <42.535316, 31.829859, 22.649426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321716, 31.721935, 22.667534>,  <41.965717, 31.542063, 22.697714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321716, 31.721935, 22.667534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330850, -0.523023, 0.785484,
		0.313756, -0.724041, -0.614265,
		0.889998, 0.449680, -0.075448,
		42.588715, 31.856838, 22.644899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785202, 31.820587, 23.372942>,  <41.965717, 31.542063, 22.697714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785202, 31.820587, 23.372942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598209, 31.982441, 23.058559>,  <41.486015, 32.079552, 22.869930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598209, 31.982441, 23.058559>,  <41.785202, 31.820587, 23.372942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598209, 31.982441, 23.058559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857189, 0.009826, 0.514908,
		0.216072, 0.914426, 0.342255,
		-0.467483, 0.404634, -0.785959,
		41.457966, 32.103832, 22.822771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453247, 32.510803, 23.574514>,  <41.785202, 31.820587, 23.372942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453247, 32.510803, 23.574514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265648, 32.307892, 23.285320>,  <41.153088, 32.186146, 23.111803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265648, 32.307892, 23.285320>,  <41.453247, 32.510803, 23.574514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265648, 32.307892, 23.285320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817896, -0.059462, 0.572285,
		-0.333297, 0.859729, -0.387013,
		-0.468997, -0.507278, -0.722988,
		41.124950, 32.155708, 23.068424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887451, 32.850086, 23.468197>,  <41.453247, 32.510803, 23.574514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887451, 32.850086, 23.468197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851269, 32.465134, 23.365715>,  <40.829559, 32.234161, 23.304226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851269, 32.465134, 23.365715>,  <40.887451, 32.850086, 23.468197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851269, 32.465134, 23.365715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826456, -0.071006, 0.558505,
		-0.555687, 0.262260, -0.788943,
		-0.090454, -0.962381, -0.256204,
		40.824131, 32.176418, 23.288855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370319, 33.422482, 23.447084>,  <40.887451, 32.850086, 23.468197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370319, 33.422482, 23.447084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973820, 33.384174, 23.410751>,  <39.735920, 33.361191, 23.388950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973820, 33.384174, 23.410751>,  <40.370319, 33.422482, 23.447084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973820, 33.384174, 23.410751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085386, -0.059535, 0.994568,
		-0.100658, 0.993621, 0.050837,
		-0.991250, -0.095771, -0.090834,
		39.676445, 33.355442, 23.383501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054741, 34.024208, 23.740616>,  <40.370319, 33.422482, 23.447084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054741, 34.024208, 23.740616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852524, 33.681866, 23.784309>,  <39.731194, 33.476460, 23.810526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852524, 33.681866, 23.784309>,  <40.054741, 34.024208, 23.740616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852524, 33.681866, 23.784309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084078, 0.077134, 0.993469,
		-0.858694, 0.511427, 0.032963,
		-0.505545, -0.855858, 0.109234,
		39.700859, 33.425110, 23.817080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368446, 34.149639, 24.086760>,  <40.054741, 34.024208, 23.740616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368446, 34.149639, 24.086760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459259, 33.768387, 24.166756>,  <39.513744, 33.539635, 24.214754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459259, 33.768387, 24.166756>,  <39.368446, 34.149639, 24.086760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459259, 33.768387, 24.166756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167840, 0.163989, 0.972079,
		-0.959316, -0.254256, -0.122743,
		0.227029, -0.953132, 0.199991,
		39.527367, 33.482449, 24.226753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814075, 33.910809, 24.541037>,  <39.368446, 34.149639, 24.086760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814075, 33.910809, 24.541037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129925, 33.673851, 24.605000>,  <39.319435, 33.531677, 24.643377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129925, 33.673851, 24.605000>,  <38.814075, 33.910809, 24.541037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129925, 33.673851, 24.605000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159505, 0.053480, 0.985747,
		-0.592502, -0.803872, -0.052261,
		0.789620, -0.592393, 0.159908,
		39.366810, 33.496132, 24.652971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566078, 33.565117, 25.187742>,  <38.814075, 33.910809, 24.541037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566078, 33.565117, 25.187742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950302, 33.475994, 25.121181>,  <39.180836, 33.422520, 25.081245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950302, 33.475994, 25.121181>,  <38.566078, 33.565117, 25.187742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950302, 33.475994, 25.121181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142958, -0.117612, 0.982716,
		-0.238530, -0.967741, -0.081120,
		0.960555, -0.222810, -0.166400,
		39.238468, 33.409153, 25.071262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681286, 32.905605, 25.545444>,  <38.566078, 33.565117, 25.187742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681286, 32.905605, 25.545444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008110, 33.134682, 25.518806>,  <39.204205, 33.272129, 25.502823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008110, 33.134682, 25.518806>,  <38.681286, 32.905605, 25.545444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008110, 33.134682, 25.518806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040848, 0.057716, 0.997497,
		0.575106, -0.817734, 0.023764,
		0.817059, 0.572695, -0.066595,
		39.253227, 33.306492, 25.498827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213768, 32.633850, 25.968662>,  <38.681286, 32.905605, 25.545444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213768, 32.633850, 25.968662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374664, 32.993908, 25.901798>,  <39.471203, 33.209942, 25.861681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374664, 32.993908, 25.901798>,  <39.213768, 32.633850, 25.968662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374664, 32.993908, 25.901798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073120, 0.150411, 0.985916,
		0.912610, -0.408797, -0.005318,
		0.402240, 0.900145, -0.167158,
		39.495335, 33.263950, 25.851650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525837, 32.682274, 26.585463>,  <39.213768, 32.633850, 25.968662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525837, 32.682274, 26.585463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549091, 33.060513, 26.457417>,  <39.563046, 33.287457, 26.380589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549091, 33.060513, 26.457417>,  <39.525837, 32.682274, 26.585463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549091, 33.060513, 26.457417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200072, 0.303116, 0.931714,
		0.978055, -0.118214, -0.171564,
		0.058137, 0.945593, -0.320116,
		39.566532, 33.344189, 26.361382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062607, 32.886711, 26.955940>,  <39.525837, 32.682274, 26.585463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062607, 32.886711, 26.955940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891670, 33.229919, 26.841972>,  <39.789108, 33.435844, 26.773592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891670, 33.229919, 26.841972>,  <40.062607, 32.886711, 26.955940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891670, 33.229919, 26.841972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095452, 0.356202, 0.929521,
		0.899037, 0.370028, -0.234120,
		-0.427342, 0.858021, -0.284918,
		39.763466, 33.487328, 26.756496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545174, 33.519131, 27.132896>,  <40.062607, 32.886711, 26.955940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545174, 33.519131, 27.132896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160976, 33.629440, 27.117897>,  <39.930458, 33.695625, 27.108898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160976, 33.629440, 27.117897>,  <40.545174, 33.519131, 27.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160976, 33.629440, 27.117897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068704, 0.365512, 0.928268,
		0.269694, 0.889018, -0.370018,
		-0.960492, 0.275770, -0.037498,
		39.872829, 33.712170, 27.106647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468204, 34.010727, 27.514921>,  <40.545174, 33.519131, 27.132896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468204, 34.010727, 27.514921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071362, 33.961704, 27.504280>,  <39.833256, 33.932289, 27.497896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071362, 33.961704, 27.504280>,  <40.468204, 34.010727, 27.514921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071362, 33.961704, 27.504280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079521, 0.450735, 0.889109,
		-0.096980, 0.884204, -0.456922,
		-0.992105, -0.122561, -0.026601,
		39.773731, 33.924934, 27.496300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207317, 34.625206, 27.724176>,  <40.468204, 34.010727, 27.514921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207317, 34.625206, 27.724176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925083, 34.355518, 27.811424>,  <39.755741, 34.193707, 27.863773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925083, 34.355518, 27.811424>,  <40.207317, 34.625206, 27.724176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925083, 34.355518, 27.811424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080116, 0.229935, 0.969903,
		-0.704081, 0.701824, -0.108223,
		-0.705585, -0.674220, 0.218120,
		39.713409, 34.153252, 27.876860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861897, 34.901295, 28.211660>,  <40.207317, 34.625206, 27.724176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861897, 34.901295, 28.211660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744236, 34.522877, 28.266045>,  <39.673641, 34.295826, 28.298676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744236, 34.522877, 28.266045>,  <39.861897, 34.901295, 28.211660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744236, 34.522877, 28.266045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131903, 0.181073, 0.974584,
		-0.946614, 0.268738, -0.178048,
		-0.294148, -0.946040, 0.135959,
		39.655991, 34.239063, 28.306831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310970, 35.015076, 28.645861>,  <39.861897, 34.901295, 28.211660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310970, 35.015076, 28.645861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486237, 34.657806, 28.686352>,  <39.591396, 34.443443, 28.710646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486237, 34.657806, 28.686352>,  <39.310970, 35.015076, 28.645861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486237, 34.657806, 28.686352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131900, 0.047507, 0.990124,
		-0.889165, -0.447189, -0.096994,
		0.438165, -0.893177, 0.101226,
		39.617687, 34.389854, 28.716719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769035, 34.746117, 29.164295>,  <39.310970, 35.015076, 28.645861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769035, 34.746117, 29.164295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054646, 34.466167, 29.156910>,  <39.226013, 34.298199, 29.152479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054646, 34.466167, 29.156910>,  <38.769035, 34.746117, 29.164295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054646, 34.466167, 29.156910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065388, -0.092920, 0.993524,
		-0.697055, -0.708198, -0.112111,
		0.714030, -0.699872, -0.018463,
		39.268856, 34.256207, 29.151371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469574, 34.150654, 29.425051>,  <38.769035, 34.746117, 29.164295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469574, 34.150654, 29.425051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860863, 34.106369, 29.495281>,  <39.095634, 34.079796, 29.537420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860863, 34.106369, 29.495281>,  <38.469574, 34.150654, 29.425051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860863, 34.106369, 29.495281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194890, -0.198786, 0.960470,
		-0.071436, -0.973769, -0.216034,
		0.978220, -0.110715, 0.175577,
		39.154327, 34.073154, 29.547955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454136, 33.510571, 29.808599>,  <38.469574, 34.150654, 29.425051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454136, 33.510571, 29.808599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802567, 33.700127, 29.860218>,  <39.011627, 33.813858, 29.891190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802567, 33.700127, 29.860218>,  <38.454136, 33.510571, 29.808599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802567, 33.700127, 29.860218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058571, -0.160642, 0.985273,
		0.487639, -0.865808, -0.112176,
		0.871078, 0.473888, 0.129047,
		39.063889, 33.842293, 29.898932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786510, 33.174149, 30.302589>,  <38.454136, 33.510571, 29.808599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786510, 33.174149, 30.302589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999828, 33.512333, 30.313862>,  <39.127819, 33.715244, 30.320625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999828, 33.512333, 30.313862>,  <38.786510, 33.174149, 30.302589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999828, 33.512333, 30.313862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144119, -0.123630, 0.981807,
		0.833563, -0.519530, -0.187779,
		0.533294, 0.845461, 0.028179,
		39.159817, 33.765972, 30.322315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348835, 33.032032, 30.760447>,  <38.786510, 33.174149, 30.302589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348835, 33.032032, 30.760447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324745, 33.430679, 30.738110>,  <39.310291, 33.669868, 30.724709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324745, 33.430679, 30.738110>,  <39.348835, 33.032032, 30.760447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324745, 33.430679, 30.738110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353731, 0.073620, 0.932445,
		0.933406, 0.036405, -0.356970,
		-0.060226, 0.996622, -0.055840,
		39.306679, 33.729668, 30.721357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931278, 33.270554, 31.052647>,  <39.348835, 33.032032, 30.760447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931278, 33.270554, 31.052647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682892, 33.581264, 31.094631>,  <39.533859, 33.767693, 31.119822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682892, 33.581264, 31.094631>,  <39.931278, 33.270554, 31.052647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682892, 33.581264, 31.094631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321758, 0.130498, 0.937786,
		0.714757, 0.616101, -0.330970,
		-0.620962, 0.776782, 0.104961,
		39.496605, 33.814301, 31.126120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363544, 33.707912, 31.444952>,  <39.931278, 33.270554, 31.052647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363544, 33.707912, 31.444952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991199, 33.847740, 31.487469>,  <39.767792, 33.931637, 31.512978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991199, 33.847740, 31.487469>,  <40.363544, 33.707912, 31.444952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991199, 33.847740, 31.487469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173402, 0.166615, 0.970655,
		0.321601, 0.921977, -0.215711,
		-0.930862, 0.349569, 0.106289,
		39.711941, 33.952610, 31.519356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430927, 34.372467, 31.734568>,  <40.363544, 33.707912, 31.444952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430927, 34.372467, 31.734568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085052, 34.195820, 31.830311>,  <39.877529, 34.089832, 31.887756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085052, 34.195820, 31.830311>,  <40.430927, 34.372467, 31.734568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085052, 34.195820, 31.830311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312413, -0.099676, 0.944703,
		-0.393341, 0.891648, 0.224156,
		-0.864685, -0.441620, 0.239356,
		39.825645, 34.063335, 31.902117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994789, 34.723656, 32.210178>,  <40.430927, 34.372467, 31.734568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994789, 34.723656, 32.210178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965149, 34.326946, 32.251934>,  <39.947365, 34.088921, 32.276989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965149, 34.326946, 32.251934>,  <39.994789, 34.723656, 32.210178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965149, 34.326946, 32.251934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422643, 0.063581, 0.904063,
		-0.903262, 0.111113, 0.414454,
		-0.074101, -0.991772, 0.104391,
		39.942917, 34.029415, 32.283253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628582, 34.582127, 32.831589>,  <39.994789, 34.723656, 32.210178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628582, 34.582127, 32.831589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870064, 34.276058, 32.742100>,  <40.014954, 34.092415, 32.688408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870064, 34.276058, 32.742100>,  <39.628582, 34.582127, 32.831589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870064, 34.276058, 32.742100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397380, 0.045550, 0.916523,
		-0.691111, -0.642208, 0.331564,
		0.603701, -0.765176, -0.223721,
		40.051174, 34.046505, 32.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668407, 34.241810, 33.391922>,  <39.628582, 34.582127, 32.831589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668407, 34.241810, 33.391922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976154, 34.093239, 33.184029>,  <40.160801, 34.004097, 33.059292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976154, 34.093239, 33.184029>,  <39.668407, 34.241810, 33.391922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976154, 34.093239, 33.184029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474110, -0.213271, 0.854245,
		-0.428136, -0.903634, 0.012016,
		0.769362, -0.371431, -0.519731,
		40.206963, 33.981808, 33.028111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815411, 33.670059, 33.605831>,  <39.668407, 34.241810, 33.391922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815411, 33.670059, 33.605831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151707, 33.842674, 33.475029>,  <40.353485, 33.946243, 33.396549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151707, 33.842674, 33.475029>,  <39.815411, 33.670059, 33.605831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151707, 33.842674, 33.475029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485065, -0.332001, 0.809003,
		0.240548, -0.838781, -0.488450,
		0.840742, 0.431535, -0.327001,
		40.403931, 33.972134, 33.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440346, 33.215019, 33.094223>,  <39.815411, 33.670059, 33.605831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440346, 33.215019, 33.094223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277855, 33.580364, 33.083271>,  <39.180359, 33.799572, 33.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277855, 33.580364, 33.083271>,  <39.440346, 33.215019, 33.094223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277855, 33.580364, 33.083271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508075, 0.250675, 0.824028,
		0.759498, 0.320833, -0.565888,
		-0.406229, 0.913361, -0.027380,
		39.155987, 33.854374, 33.075058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826492, 32.963139, 32.604160>,  <39.440346, 33.215019, 33.094223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826492, 32.963139, 32.604160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932468, 32.608768, 32.756451>,  <39.996056, 32.396149, 32.847824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932468, 32.608768, 32.756451>,  <39.826492, 32.963139, 32.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932468, 32.608768, 32.756451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522956, -0.463736, -0.715169,
		0.810138, -0.009624, -0.586160,
		0.264941, -0.885921, 0.380723,
		40.011951, 32.342991, 32.870667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178352, 32.493984, 32.154999>,  <39.826492, 32.963139, 32.604160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178352, 32.493984, 32.154999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930187, 32.346226, 32.431732>,  <39.781288, 32.257572, 32.597771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930187, 32.346226, 32.431732>,  <40.178352, 32.493984, 32.154999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930187, 32.346226, 32.431732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556004, -0.414979, -0.720176,
		0.553124, -0.831470, 0.052075,
		-0.620414, -0.369392, 0.691835,
		39.744064, 32.235409, 32.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025394, 31.698139, 32.025032>,  <40.178352, 32.493984, 32.154999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025394, 31.698139, 32.025032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728127, 31.881653, 32.219852>,  <39.549767, 31.991760, 32.336746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728127, 31.881653, 32.219852>,  <40.025394, 31.698139, 32.025032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728127, 31.881653, 32.219852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660287, -0.385075, -0.644778,
		-0.108263, -0.800772, 0.589104,
		-0.743169, 0.458783, 0.487050,
		39.505177, 32.019287, 32.365967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487106, 31.205242, 32.080227>,  <40.025394, 31.698139, 32.025032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487106, 31.205242, 32.080227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330433, 31.572956, 32.064720>,  <39.236431, 31.793585, 32.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330433, 31.572956, 32.064720>,  <39.487106, 31.205242, 32.080227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330433, 31.572956, 32.064720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561107, -0.272041, -0.781762,
		-0.729209, -0.284447, 0.622370,
		-0.391680, 0.919285, -0.038769,
		39.212929, 31.848742, 32.053089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771370, 31.190586, 32.057137>,  <39.487106, 31.205242, 32.080227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771370, 31.190586, 32.057137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877094, 31.500748, 31.827744>,  <38.940529, 31.686846, 31.690107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877094, 31.500748, 31.827744>,  <38.771370, 31.190586, 32.057137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877094, 31.500748, 31.827744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640418, -0.303499, -0.705517,
		-0.721114, 0.553745, 0.416366,
		0.264310, 0.775406, -0.573486,
		38.956387, 31.733370, 31.655697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227844, 31.520300, 31.824347>,  <38.771370, 31.190586, 32.057137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227844, 31.520300, 31.824347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509281, 31.627098, 31.560932>,  <38.678143, 31.691177, 31.402884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509281, 31.627098, 31.560932>,  <38.227844, 31.520300, 31.824347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509281, 31.627098, 31.560932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642288, -0.157531, -0.750100,
		-0.304015, 0.950735, 0.060651,
		0.703592, 0.266997, -0.658537,
		38.720360, 31.707197, 31.363371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872139, 31.931787, 31.342407>,  <38.227844, 31.520300, 31.824347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872139, 31.931787, 31.342407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191818, 31.767216, 31.167133>,  <38.383625, 31.668472, 31.061970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191818, 31.767216, 31.167133>,  <37.872139, 31.931787, 31.342407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191818, 31.767216, 31.167133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538455, -0.166098, -0.826122,
		0.267111, 0.896178, -0.354283,
		0.799198, -0.411431, -0.438185,
		38.431580, 31.643785, 31.035677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805752, 32.113731, 30.575314>,  <37.872139, 31.931787, 31.342407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805752, 32.113731, 30.575314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043087, 31.792717, 30.600254>,  <38.185486, 31.600107, 30.615219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043087, 31.792717, 30.600254>,  <37.805752, 32.113731, 30.575314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043087, 31.792717, 30.600254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313896, -0.302007, -0.900145,
		0.741231, 0.514515, -0.431104,
		0.593334, -0.802537, 0.062352,
		38.221088, 31.551956, 30.618959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038509, 32.022850, 29.920879>,  <37.805752, 32.113731, 30.575314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038509, 32.022850, 29.920879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150707, 31.661381, 30.050308>,  <38.218025, 31.444500, 30.127966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150707, 31.661381, 30.050308>,  <38.038509, 32.022850, 29.920879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150707, 31.661381, 30.050308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157174, -0.375798, -0.913275,
		0.946900, 0.205309, -0.247442,
		0.280492, -0.903672, 0.323574,
		38.234856, 31.390280, 30.147381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560040, 31.822884, 29.467880>,  <38.038509, 32.022850, 29.920879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560040, 31.822884, 29.467880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408295, 31.488621, 29.626759>,  <38.317249, 31.288063, 29.722086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408295, 31.488621, 29.626759>,  <38.560040, 31.822884, 29.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408295, 31.488621, 29.626759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082345, -0.397089, -0.914079,
		0.921578, -0.379471, 0.081827,
		-0.379359, -0.835657, 0.397196,
		38.294487, 31.237925, 29.745916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783787, 31.263380, 28.968328>,  <38.560040, 31.822884, 29.467880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783787, 31.263380, 28.968328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531075, 31.048611, 29.191959>,  <38.379448, 30.919748, 29.326138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531075, 31.048611, 29.191959>,  <38.783787, 31.263380, 28.968328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531075, 31.048611, 29.191959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221738, -0.565928, -0.794076,
		0.742756, -0.625650, 0.238486,
		-0.631780, -0.536924, 0.559077,
		38.341541, 30.887533, 29.359682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834995, 30.479935, 28.740782>,  <38.783787, 31.263380, 28.968328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834995, 30.479935, 28.740782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485905, 30.562950, 28.917542>,  <38.276451, 30.612759, 29.023598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485905, 30.562950, 28.917542>,  <38.834995, 30.479935, 28.740782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485905, 30.562950, 28.917542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488205, -0.369178, -0.790799,
		-0.000982, -0.905889, 0.423514,
		-0.872728, 0.207538, 0.441898,
		38.224087, 30.625212, 29.050110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429680, 29.858940, 28.724384>,  <38.834995, 30.479935, 28.740782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429680, 29.858940, 28.724384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180984, 30.169579, 28.765053>,  <38.031769, 30.355963, 28.789454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180984, 30.169579, 28.765053>,  <38.429680, 29.858940, 28.724384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180984, 30.169579, 28.765053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576580, -0.365969, -0.730495,
		-0.530092, -0.512798, 0.675308,
		-0.621738, 0.776598, 0.101671,
		37.994461, 30.402557, 28.795555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706882, 29.629667, 28.509159>,  <38.429680, 29.858940, 28.724384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706882, 29.629667, 28.509159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712772, 30.029598, 28.504620>,  <37.716305, 30.269556, 28.501896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712772, 30.029598, 28.504620>,  <37.706882, 29.629667, 28.509159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712772, 30.029598, 28.504620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530163, -0.001820, -0.847894,
		-0.847768, 0.018500, 0.530045,
		0.014721, 0.999827, -0.011351,
		37.717190, 30.329546, 28.501215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109230, 29.781723, 28.205765>,  <37.706882, 29.629667, 28.509159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109230, 29.781723, 28.205765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338440, 30.107426, 28.168598>,  <37.475964, 30.302847, 28.146297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338440, 30.107426, 28.168598>,  <37.109230, 29.781723, 28.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338440, 30.107426, 28.168598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437088, 0.207736, -0.875100,
		-0.693252, 0.542065, 0.474939,
		0.573023, 0.814255, -0.092917,
		37.510345, 30.351702, 28.140722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657505, 30.151871, 27.854811>,  <37.109230, 29.781723, 28.205765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657505, 30.151871, 27.854811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984055, 30.376839, 27.802326>,  <37.179985, 30.511820, 27.770836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984055, 30.376839, 27.802326>,  <36.657505, 30.151871, 27.854811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984055, 30.376839, 27.802326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421098, 0.424207, -0.801702,
		-0.395232, 0.709742, 0.583145,
		0.816375, 0.562419, -0.131210,
		37.228966, 30.545565, 27.762962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492290, 30.901598, 27.682306>,  <36.657505, 30.151871, 27.854811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492290, 30.901598, 27.682306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868549, 30.844624, 27.559086>,  <37.094303, 30.810440, 27.485153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868549, 30.844624, 27.559086>,  <36.492290, 30.901598, 27.682306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868549, 30.844624, 27.559086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241676, 0.356144, -0.902637,
		0.238278, 0.923511, 0.300583,
		0.940647, -0.142435, -0.308052,
		37.150742, 30.801893, 27.466671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629402, 31.443624, 27.247507>,  <36.492290, 30.901598, 27.682306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629402, 31.443624, 27.247507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935101, 31.216812, 27.124603>,  <37.118519, 31.080725, 27.050861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935101, 31.216812, 27.124603>,  <36.629402, 31.443624, 27.247507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935101, 31.216812, 27.124603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007071, 0.469029, -0.883154,
		0.644891, 0.677116, 0.354443,
		0.764242, -0.567032, -0.307261,
		37.164371, 31.046703, 27.032425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175632, 31.828659, 27.035809>,  <36.629402, 31.443624, 27.247507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175632, 31.828659, 27.035809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242184, 31.482128, 26.847427>,  <37.282116, 31.274210, 26.734398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242184, 31.482128, 26.847427>,  <37.175632, 31.828659, 27.035809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242184, 31.482128, 26.847427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255342, 0.499172, -0.828026,
		0.952427, 0.017513, 0.304262,
		0.166381, -0.866326, -0.470954,
		37.292099, 31.222231, 26.706141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712055, 32.023827, 26.546232>,  <37.175632, 31.828659, 27.035809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712055, 32.023827, 26.546232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574387, 31.675560, 26.405670>,  <37.491787, 31.466600, 26.321333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574387, 31.675560, 26.405670>,  <37.712055, 32.023827, 26.546232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574387, 31.675560, 26.405670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264011, 0.269426, -0.926125,
		0.901024, -0.411521, 0.137137,
		-0.344172, -0.870667, -0.351405,
		37.471134, 31.414360, 26.300249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141296, 31.788836, 26.003241>,  <37.712055, 32.023827, 26.546232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141296, 31.788836, 26.003241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817810, 31.566059, 25.927567>,  <37.623718, 31.432394, 25.882162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817810, 31.566059, 25.927567>,  <38.141296, 31.788836, 26.003241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817810, 31.566059, 25.927567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121126, 0.157055, -0.980134,
		0.575587, -0.815569, -0.059554,
		-0.808720, -0.556939, -0.189185,
		37.575195, 31.398977, 25.870811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343609, 31.342937, 25.464727>,  <38.141296, 31.788836, 26.003241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343609, 31.342937, 25.464727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944267, 31.324608, 25.450901>,  <37.704662, 31.313610, 25.442606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944267, 31.324608, 25.450901>,  <38.343609, 31.342937, 25.464727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944267, 31.324608, 25.450901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027582, 0.145137, -0.989027,
		0.050335, -0.988350, -0.143634,
		-0.998351, -0.045821, -0.034566,
		37.644760, 31.310862, 25.440531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104740, 30.772055, 24.983624>,  <38.343609, 31.342937, 25.464727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104740, 30.772055, 24.983624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797955, 31.026745, 25.015503>,  <37.613884, 31.179558, 25.034630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797955, 31.026745, 25.015503>,  <38.104740, 30.772055, 24.983624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797955, 31.026745, 25.015503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083942, 0.023580, -0.996192,
		-0.636178, -0.770732, 0.035363,
		-0.766963, 0.636723, 0.079698,
		37.567867, 31.217762, 25.039412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457813, 30.540802, 24.530657>,  <38.104740, 30.772055, 24.983624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457813, 30.540802, 24.530657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397221, 30.931110, 24.593803>,  <37.360867, 31.165297, 24.631691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397221, 30.931110, 24.593803>,  <37.457813, 30.540802, 24.530657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397221, 30.931110, 24.593803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125846, 0.139370, -0.982211,
		-0.980417, -0.168652, 0.101685,
		-0.151480, 0.975773, 0.157864,
		37.351776, 31.223843, 24.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949337, 30.707411, 24.050913>,  <37.457813, 30.540802, 24.530657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949337, 30.707411, 24.050913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092236, 31.074615, 24.119770>,  <37.177975, 31.294939, 24.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092236, 31.074615, 24.119770>,  <36.949337, 30.707411, 24.050913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092236, 31.074615, 24.119770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103299, 0.222005, -0.969558,
		-0.928282, 0.328586, 0.174140,
		0.357243, 0.918011, 0.172141,
		37.199409, 31.350019, 24.171412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485317, 31.256815, 23.668427>,  <36.949337, 30.707411, 24.050913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485317, 31.256815, 23.668427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835049, 31.434948, 23.745602>,  <37.044888, 31.541828, 23.791906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835049, 31.434948, 23.745602>,  <36.485317, 31.256815, 23.668427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835049, 31.434948, 23.745602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050784, 0.311410, -0.948918,
		-0.482669, 0.839465, 0.249659,
		0.874329, 0.445334, 0.192940,
		37.097347, 31.568548, 23.803484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344177, 31.829002, 23.412508>,  <36.485317, 31.256815, 23.668427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344177, 31.829002, 23.412508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735966, 31.748577, 23.406803>,  <36.971039, 31.700321, 23.403379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735966, 31.748577, 23.406803>,  <36.344177, 31.829002, 23.412508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735966, 31.748577, 23.406803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053631, 0.328160, -0.943099,
		0.194304, 0.922976, 0.332207,
		0.979474, -0.201064, -0.014262,
		37.029808, 31.688257, 23.402525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159958, 32.358582, 22.850107>,  <36.344177, 31.829002, 23.412508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159958, 32.358582, 22.850107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863548, 32.566509, 22.680088>,  <35.685703, 32.691265, 22.578077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863548, 32.566509, 22.680088>,  <36.159958, 32.358582, 22.850107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863548, 32.566509, 22.680088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670126, -0.532419, 0.517166,
		0.042532, 0.668069, 0.742883,
		-0.741028, 0.519821, -0.425046,
		35.641239, 32.722454, 22.552574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704895, 32.728222, 23.327288>,  <36.159958, 32.358582, 22.850107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704895, 32.728222, 23.327288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558949, 32.593822, 22.979961>,  <35.471378, 32.513184, 22.771564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558949, 32.593822, 22.979961>,  <35.704895, 32.728222, 23.327288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558949, 32.593822, 22.979961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561994, -0.664076, 0.493119,
		-0.742316, 0.667913, 0.053472,
		-0.364870, -0.335999, -0.868317,
		35.449486, 32.493023, 22.719467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949963, 32.832966, 23.338234>,  <35.704895, 32.728222, 23.327288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949963, 32.832966, 23.338234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085037, 32.544888, 23.095818>,  <35.166080, 32.372040, 22.950367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085037, 32.544888, 23.095818>,  <34.949963, 32.832966, 23.338234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085037, 32.544888, 23.095818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567749, -0.669394, 0.479137,
		-0.750754, 0.182283, -0.634935,
		0.337683, -0.720198, -0.606041,
		35.186344, 32.328827, 22.914005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443871, 32.514557, 22.953375>,  <34.949963, 32.832966, 23.338234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443871, 32.514557, 22.953375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738823, 32.266682, 23.060898>,  <34.915794, 32.117958, 23.125412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738823, 32.266682, 23.060898>,  <34.443871, 32.514557, 22.953375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738823, 32.266682, 23.060898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663308, -0.589099, 0.461502,
		-0.127632, -0.518606, -0.845434,
		0.737382, -0.619686, 0.268808,
		34.960037, 32.080776, 23.141541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256683, 31.938469, 22.662422>,  <34.443871, 32.514557, 22.953375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256683, 31.938469, 22.662422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479183, 31.886120, 22.990681>,  <34.612682, 31.854710, 23.187635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479183, 31.886120, 22.990681>,  <34.256683, 31.938469, 22.662422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479183, 31.886120, 22.990681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773616, -0.442200, 0.453847,
		0.303495, -0.887317, -0.347216,
		0.556245, -0.130871, 0.820649,
		34.646057, 31.846859, 23.236876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375023, 31.200993, 22.789492>,  <34.256683, 31.938469, 22.662422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375023, 31.200993, 22.789492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398960, 31.386620, 23.143002>,  <34.413322, 31.497995, 23.355108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398960, 31.386620, 23.143002>,  <34.375023, 31.200993, 22.789492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398960, 31.386620, 23.143002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615548, -0.679833, 0.398656,
		0.785824, -0.567862, 0.244975,
		0.059840, 0.464068, 0.883776,
		34.416912, 31.525841, 23.408134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562096, 30.766411, 23.307573>,  <34.375023, 31.200993, 22.789492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562096, 30.766411, 23.307573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355370, 31.058784, 23.485847>,  <34.231335, 31.234209, 23.592812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355370, 31.058784, 23.485847>,  <34.562096, 30.766411, 23.307573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355370, 31.058784, 23.485847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517610, -0.681460, 0.517389,
		0.681895, 0.036702, 0.730528,
		-0.516816, 0.730934, 0.445687,
		34.200325, 31.278065, 23.619555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587700, 30.470268, 23.861214>,  <34.562096, 30.766411, 23.307573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587700, 30.470268, 23.861214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284035, 30.728603, 23.893631>,  <34.101837, 30.883604, 23.913080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284035, 30.728603, 23.893631>,  <34.587700, 30.470268, 23.861214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284035, 30.728603, 23.893631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563025, -0.714033, 0.416123,
		0.326615, 0.270276, 0.905690,
		-0.759161, 0.645838, 0.081041,
		34.056286, 30.922356, 23.917944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288555, 30.399700, 24.548059>,  <34.587700, 30.470268, 23.861214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288555, 30.399700, 24.548059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017925, 30.549564, 24.294487>,  <33.855545, 30.639482, 24.142344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017925, 30.549564, 24.294487>,  <34.288555, 30.399700, 24.548059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017925, 30.549564, 24.294487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701625, -0.589318, 0.400533,
		-0.223525, 0.715775, 0.661591,
		-0.676579, 0.374660, -0.633933,
		33.814953, 30.661963, 24.104307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713737, 30.483791, 25.014084>,  <34.288555, 30.399700, 24.548059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713737, 30.483791, 25.014084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592915, 30.474499, 24.632881>,  <33.520420, 30.468924, 24.404160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592915, 30.474499, 24.632881>,  <33.713737, 30.483791, 25.014084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592915, 30.474499, 24.632881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814769, -0.512689, 0.270743,
		-0.494885, 0.858260, 0.135937,
		-0.302061, -0.023230, -0.953005,
		33.502296, 30.467529, 24.346979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012680, 30.790312, 24.983189>,  <33.713737, 30.483791, 25.014084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012680, 30.790312, 24.983189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047325, 30.535954, 24.676430>,  <33.068111, 30.383339, 24.492374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047325, 30.535954, 24.676430>,  <33.012680, 30.790312, 24.983189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047325, 30.535954, 24.676430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760344, -0.539595, 0.361545,
		-0.643719, 0.551791, -0.530238,
		0.086616, -0.635896, -0.766898,
		33.073311, 30.345184, 24.446360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368893, 30.623421, 24.904686>,  <33.012680, 30.790312, 24.983189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368893, 30.623421, 24.904686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551174, 30.354641, 24.671165>,  <32.660542, 30.193373, 24.531054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551174, 30.354641, 24.671165>,  <32.368893, 30.623421, 24.904686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551174, 30.354641, 24.671165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668418, -0.691442, 0.274091,
		-0.587838, 0.265318, -0.764234,
		0.455702, -0.671948, -0.583799,
		32.687885, 30.153057, 24.496025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848085, 30.401749, 24.513439>,  <32.368893, 30.623421, 24.904686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848085, 30.401749, 24.513439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139099, 30.127342, 24.516911>,  <32.313709, 29.962698, 24.518993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139099, 30.127342, 24.516911>,  <31.848085, 30.401749, 24.513439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139099, 30.127342, 24.516911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664791, -0.701789, 0.256018,
		-0.169539, -0.192033, -0.966633,
		0.727536, -0.686014, 0.008681,
		32.357361, 29.921537, 24.519514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498030, 29.849026, 24.245771>,  <31.848085, 30.401749, 24.513439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498030, 29.849026, 24.245771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825499, 29.713310, 24.431099>,  <32.021980, 29.631882, 24.542295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825499, 29.713310, 24.431099>,  <31.498030, 29.849026, 24.245771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825499, 29.713310, 24.431099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554661, -0.676177, 0.484909,
		0.148761, -0.653965, -0.741755,
		0.818671, -0.339287, 0.463317,
		32.071098, 29.611525, 24.570093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531473, 29.134592, 24.156342>,  <31.498030, 29.849026, 24.245771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531473, 29.134592, 24.156342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763433, 29.189388, 24.477577>,  <31.902609, 29.222265, 24.670319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763433, 29.189388, 24.477577>,  <31.531473, 29.134592, 24.156342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763433, 29.189388, 24.477577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491099, -0.727747, 0.478754,
		0.650028, -0.672026, -0.354746,
		0.579900, 0.136988, 0.803088,
		31.937403, 29.230484, 24.718504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523695, 28.465992, 24.385933>,  <31.531473, 29.134592, 24.156342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523695, 28.465992, 24.385933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641222, 28.684158, 24.699924>,  <31.711739, 28.815058, 24.888319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641222, 28.684158, 24.699924>,  <31.523695, 28.465992, 24.385933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641222, 28.684158, 24.699924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428816, -0.658739, 0.618207,
		0.854277, -0.518251, 0.040335,
		0.293816, 0.545416, 0.784980,
		31.729366, 28.847784, 24.935419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878954, 27.962551, 24.923214>,  <31.523695, 28.465992, 24.385933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878954, 27.962551, 24.923214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789862, 28.299232, 25.119957>,  <31.736406, 28.501242, 25.238003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789862, 28.299232, 25.119957>,  <31.878954, 27.962551, 24.923214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789862, 28.299232, 25.119957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545569, -0.525745, 0.652645,
		0.807926, -0.122977, 0.576309,
		-0.222732, 0.841706, 0.491856,
		31.723042, 28.551744, 25.267513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041771, 27.801786, 25.567438>,  <31.878954, 27.962551, 24.923214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041771, 27.801786, 25.567438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770159, 28.092175, 25.611050>,  <31.607191, 28.266407, 25.637217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770159, 28.092175, 25.611050>,  <32.041771, 27.801786, 25.567438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770159, 28.092175, 25.611050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372709, -0.468877, 0.800776,
		0.632460, 0.503114, 0.588957,
		-0.679030, 0.725968, 0.109031,
		31.566450, 28.309965, 25.643759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078033, 28.025940, 26.236946>,  <32.041771, 27.801786, 25.567438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078033, 28.025940, 26.236946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705885, 28.139439, 26.144085>,  <31.482595, 28.207537, 26.088367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705885, 28.139439, 26.144085>,  <32.078033, 28.025940, 26.236946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705885, 28.139439, 26.144085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349032, -0.491779, 0.797703,
		0.112176, 0.823190, 0.556574,
		-0.930373, 0.283745, -0.232154,
		31.426773, 28.224562, 26.074438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787828, 28.255785, 26.940828>,  <32.078033, 28.025940, 26.236946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787828, 28.255785, 26.940828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490995, 28.194077, 26.679901>,  <31.312897, 28.157051, 26.523346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490995, 28.194077, 26.679901>,  <31.787828, 28.255785, 26.940828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490995, 28.194077, 26.679901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541531, -0.435547, 0.719057,
		-0.395045, 0.886848, 0.239668,
		-0.742081, -0.154272, -0.652316,
		31.268372, 28.147795, 26.484207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236172, 28.423145, 27.342789>,  <31.787828, 28.255785, 26.940828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236172, 28.423145, 27.342789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035717, 28.233559, 27.053177>,  <30.915443, 28.119806, 26.879410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035717, 28.233559, 27.053177>,  <31.236172, 28.423145, 27.342789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035717, 28.233559, 27.053177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488373, -0.535799, 0.688775,
		-0.714389, 0.698768, 0.037037,
		-0.501138, -0.473965, -0.724028,
		30.885376, 28.091370, 26.835968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560364, 28.452656, 27.473040>,  <31.236172, 28.423145, 27.342789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560364, 28.452656, 27.473040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608839, 28.119946, 27.256351>,  <30.637924, 27.920319, 27.126339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608839, 28.119946, 27.256351>,  <30.560364, 28.452656, 27.473040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608839, 28.119946, 27.256351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451575, -0.532197, 0.716133,
		-0.883965, 0.157840, -0.440105,
		0.121188, -0.831777, -0.541720,
		30.645195, 27.870413, 27.093836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936350, 28.110836, 27.635584>,  <30.560364, 28.452656, 27.473040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936350, 28.110836, 27.635584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201334, 27.853844, 27.481510>,  <30.360325, 27.699648, 27.389067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201334, 27.853844, 27.481510>,  <29.936350, 28.110836, 27.635584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201334, 27.853844, 27.481510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259178, -0.679019, 0.686848,
		-0.702835, -0.355176, -0.616339,
		0.662458, -0.642482, -0.385184,
		30.400072, 27.661098, 27.365955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522280, 27.576141, 27.486320>,  <29.936350, 28.110836, 27.635584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522280, 27.576141, 27.486320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905031, 27.472794, 27.539436>,  <30.134682, 27.410786, 27.571306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905031, 27.472794, 27.539436>,  <29.522280, 27.576141, 27.486320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905031, 27.472794, 27.539436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284415, -0.740211, 0.609259,
		-0.059121, -0.620753, -0.781774,
		0.956877, -0.258368, 0.132790,
		30.192095, 27.395283, 27.579273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506147, 26.782999, 27.656868>,  <29.522280, 27.576141, 27.486320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506147, 26.782999, 27.656868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867363, 26.916195, 27.765411>,  <30.084093, 26.996113, 27.830538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867363, 26.916195, 27.765411>,  <29.506147, 26.782999, 27.656868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867363, 26.916195, 27.765411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004258, -0.638631, 0.769502,
		0.429535, -0.693736, -0.578127,
		0.903040, 0.332989, 0.271360,
		30.138275, 27.016092, 27.846819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885706, 26.168688, 27.741341>,  <29.506147, 26.782999, 27.656868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885706, 26.168688, 27.741341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091242, 26.449707, 27.938274>,  <30.214563, 26.618319, 28.056435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091242, 26.449707, 27.938274>,  <29.885706, 26.168688, 27.741341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091242, 26.449707, 27.938274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304825, -0.685962, 0.660710,
		0.801906, -0.189422, -0.566628,
		0.513838, 0.702549, 0.492336,
		30.245394, 26.660471, 28.085976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489311, 25.887129, 27.958511>,  <29.885706, 26.168688, 27.741341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489311, 25.887129, 27.958511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439161, 26.197571, 28.205715>,  <30.409071, 26.383837, 28.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439161, 26.197571, 28.205715>,  <30.489311, 25.887129, 27.958511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439161, 26.197571, 28.205715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217513, -0.586268, 0.780370,
		0.967972, 0.232265, -0.095310,
		-0.125376, 0.776107, 0.618012,
		30.401548, 26.430403, 28.391119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113316, 25.845402, 28.278543>,  <30.489311, 25.887129, 27.958511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113316, 25.845402, 28.278543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857412, 26.057789, 28.500816>,  <30.703871, 26.185221, 28.634180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857412, 26.057789, 28.500816>,  <31.113316, 25.845402, 28.278543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857412, 26.057789, 28.500816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248686, -0.541101, 0.803346,
		0.727231, 0.652138, 0.214130,
		-0.639758, 0.530967, 0.555683,
		30.665485, 26.217079, 28.667521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537769, 26.133799, 28.825853>,  <31.113316, 25.845402, 28.278543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537769, 26.133799, 28.825853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157486, 26.127747, 28.949741>,  <30.929316, 26.124115, 29.024075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157486, 26.127747, 28.949741>,  <31.537769, 26.133799, 28.825853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157486, 26.127747, 28.949741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281780, -0.459100, 0.842513,
		0.129444, 0.888256, 0.440733,
		-0.950707, -0.015132, 0.309721,
		30.872274, 26.123207, 29.042658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661629, 26.257261, 29.519058>,  <31.537769, 26.133799, 28.825853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661629, 26.257261, 29.519058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294985, 26.097664, 29.509003>,  <31.074999, 26.001905, 29.502970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294985, 26.097664, 29.509003>,  <31.661629, 26.257261, 29.519058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294985, 26.097664, 29.509003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115699, -0.324942, 0.938630,
		-0.382676, 0.857448, 0.344008,
		-0.916609, -0.398993, -0.025141,
		31.020002, 25.977966, 29.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456675, 26.375776, 30.138292>,  <31.661629, 26.257261, 29.519058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456675, 26.375776, 30.138292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188622, 26.105484, 30.015453>,  <31.027790, 25.943308, 29.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188622, 26.105484, 30.015453>,  <31.456675, 26.375776, 30.138292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188622, 26.105484, 30.015453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028869, -0.389704, 0.920487,
		-0.741679, 0.625715, 0.241646,
		-0.670134, -0.675730, -0.307099,
		30.987581, 25.902765, 29.923325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914812, 26.262568, 30.691507>,  <31.456675, 26.375776, 30.138292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914812, 26.262568, 30.691507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908354, 25.938824, 30.456673>,  <30.904478, 25.744577, 30.315771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908354, 25.938824, 30.456673>,  <30.914812, 26.262568, 30.691507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908354, 25.938824, 30.456673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010729, -0.587271, 0.809319,
		-0.999812, 0.006769, 0.018166,
		-0.016147, -0.809362, -0.587089,
		30.903509, 25.696014, 30.280546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505508, 25.811707, 31.038105>,  <30.914812, 26.262568, 30.691507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505508, 25.811707, 31.038105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704969, 25.587425, 30.773693>,  <30.824646, 25.452856, 30.615046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704969, 25.587425, 30.773693>,  <30.505508, 25.811707, 31.038105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704969, 25.587425, 30.773693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052179, -0.741805, 0.668582,
		-0.865230, -0.367882, -0.340646,
		0.498652, -0.560704, -0.661028,
		30.854565, 25.419214, 30.575384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216898, 25.053747, 31.033184>,  <30.505508, 25.811707, 31.038105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216898, 25.053747, 31.033184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575514, 25.009346, 30.861652>,  <30.790684, 24.982706, 30.758734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575514, 25.009346, 30.861652>,  <30.216898, 25.053747, 31.033184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575514, 25.009346, 30.861652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187528, -0.781949, 0.594466,
		-0.401309, -0.613380, -0.680232,
		0.896540, -0.111002, -0.428829,
		30.844477, 24.976046, 30.733004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290609, 24.353151, 31.016970>,  <30.216898, 25.053747, 31.033184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290609, 24.353151, 31.016970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662060, 24.498077, 30.985008>,  <30.884930, 24.585033, 30.965832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662060, 24.498077, 30.985008>,  <30.290609, 24.353151, 31.016970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662060, 24.498077, 30.985008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364911, -0.852969, 0.373208,
		0.067066, -0.375727, -0.924301,
		0.928624, 0.362317, -0.079902,
		30.940647, 24.606771, 30.961039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612286, 23.779497, 30.703054>,  <30.290609, 24.353151, 31.016970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612286, 23.779497, 30.703054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893024, 23.998947, 30.884789>,  <31.061468, 24.130617, 30.993830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893024, 23.998947, 30.884789>,  <30.612286, 23.779497, 30.703054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893024, 23.998947, 30.884789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376628, -0.827181, 0.417040,
		0.604617, -0.121582, -0.787182,
		0.701847, 0.548625, 0.454336,
		31.103579, 24.163534, 31.021090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260744, 23.439610, 30.490482>,  <30.612286, 23.779497, 30.703054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260744, 23.439610, 30.490482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330339, 23.654778, 30.820419>,  <31.372097, 23.783878, 31.018383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330339, 23.654778, 30.820419>,  <31.260744, 23.439610, 30.490482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330339, 23.654778, 30.820419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234643, -0.836140, 0.495794,
		0.956384, 0.107282, -0.271697,
		0.173987, 0.537921, 0.824845,
		31.382536, 23.816154, 31.067873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900799, 23.294464, 30.574490>,  <31.260744, 23.439610, 30.490482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900799, 23.294464, 30.574490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783484, 23.453842, 30.922104>,  <31.713095, 23.549469, 31.130672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783484, 23.453842, 30.922104>,  <31.900799, 23.294464, 30.574490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783484, 23.453842, 30.922104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476093, -0.727405, 0.494183,
		0.829046, 0.558681, 0.023644,
		-0.293289, 0.398444, 0.869036,
		31.695498, 23.573376, 31.182816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512440, 23.192924, 31.068600>,  <31.900799, 23.294464, 30.574490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512440, 23.192924, 31.068600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182449, 23.258160, 31.285049>,  <31.984455, 23.297300, 31.414919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182449, 23.258160, 31.285049>,  <32.512440, 23.192924, 31.068600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182449, 23.258160, 31.285049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258346, -0.742751, 0.617720,
		0.502661, 0.649403, 0.570621,
		-0.824979, 0.163086, 0.541122,
		31.934956, 23.307085, 31.447386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740570, 23.412888, 31.774977>,  <32.512440, 23.192924, 31.068600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740570, 23.412888, 31.774977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379322, 23.241592, 31.787537>,  <32.162575, 23.138815, 31.795073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379322, 23.241592, 31.787537>,  <32.740570, 23.412888, 31.774977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379322, 23.241592, 31.787537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319990, -0.622468, 0.714241,
		-0.286318, 0.655094, 0.699195,
		-0.903122, -0.428236, 0.031400,
		32.108387, 23.113121, 31.796957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582676, 23.411163, 32.447681>,  <32.740570, 23.412888, 31.774977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582676, 23.411163, 32.447681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330757, 23.136387, 32.302650>,  <32.179604, 22.971521, 32.215630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330757, 23.136387, 32.302650>,  <32.582676, 23.411163, 32.447681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330757, 23.136387, 32.302650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345180, -0.665677, 0.661608,
		-0.695847, 0.291525, 0.656361,
		-0.629800, -0.686941, -0.362581,
		32.141819, 22.930305, 32.193874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136341, 23.208250, 32.930744>,  <32.582676, 23.411163, 32.447681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136341, 23.208250, 32.930744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084820, 22.894241, 32.688374>,  <32.053905, 22.705837, 32.542950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084820, 22.894241, 32.688374>,  <32.136341, 23.208250, 32.930744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084820, 22.894241, 32.688374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347275, -0.608037, 0.713926,
		-0.928875, -0.118466, 0.350937,
		-0.128807, -0.785020, -0.605931,
		32.046177, 22.658735, 32.506596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828098, 22.781456, 33.349018>,  <32.136341, 23.208250, 32.930744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828098, 22.781456, 33.349018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983755, 22.556339, 33.057312>,  <32.077148, 22.421268, 32.882286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983755, 22.556339, 33.057312>,  <31.828098, 22.781456, 33.349018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983755, 22.556339, 33.057312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296057, -0.673259, 0.677549,
		-0.872306, -0.479568, -0.095375,
		0.389143, -0.562794, -0.729267,
		32.100498, 22.387501, 32.838531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656784, 22.148361, 33.502964>,  <31.828098, 22.781456, 33.349018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656784, 22.148361, 33.502964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973951, 22.091152, 33.266041>,  <32.164253, 22.056828, 33.123886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973951, 22.091152, 33.266041>,  <31.656784, 22.148361, 33.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973951, 22.091152, 33.266041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339590, -0.703377, 0.624451,
		-0.505923, -0.696279, -0.509153,
		0.792919, -0.143021, -0.592305,
		32.211826, 22.048246, 33.088348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738113, 21.440996, 33.591167>,  <31.656784, 22.148361, 33.502964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738113, 21.440996, 33.591167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076115, 21.528088, 33.395794>,  <32.278915, 21.580343, 33.278572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076115, 21.528088, 33.395794>,  <31.738113, 21.440996, 33.591167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076115, 21.528088, 33.395794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493003, -0.671019, 0.553788,
		-0.207172, -0.708750, -0.674354,
		0.845002, 0.217729, -0.488432,
		32.329617, 21.593407, 33.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062267, 20.812307, 33.345379>,  <31.738113, 21.440996, 33.591167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062267, 20.812307, 33.345379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333397, 21.101475, 33.398964>,  <32.496075, 21.274975, 33.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333397, 21.101475, 33.398964>,  <32.062267, 20.812307, 33.345379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333397, 21.101475, 33.398964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558824, -0.624974, 0.545091,
		0.477777, -0.294615, -0.827605,
		0.677824, 0.722917, 0.133960,
		32.536743, 21.318350, 33.439152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720528, 20.487776, 33.263161>,  <32.062267, 20.812307, 33.345379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720528, 20.487776, 33.263161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802708, 20.810654, 33.484512>,  <32.852016, 21.004381, 33.617321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802708, 20.810654, 33.484512>,  <32.720528, 20.487776, 33.263161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802708, 20.810654, 33.484512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507019, -0.571428, 0.645293,
		0.837093, 0.147999, -0.526662,
		0.205447, 0.807197, 0.553376,
		32.864342, 21.052813, 33.650524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427235, 20.321215, 33.392120>,  <32.720528, 20.487776, 33.263161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427235, 20.321215, 33.392120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299103, 20.594608, 33.654491>,  <33.222225, 20.758644, 33.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299103, 20.594608, 33.654491>,  <33.427235, 20.321215, 33.392120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299103, 20.594608, 33.654491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443841, -0.503428, 0.741327,
		0.836897, 0.528594, -0.142097,
		-0.320326, 0.683483, 0.655929,
		33.203007, 20.799654, 33.851269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001194, 20.603699, 33.681644>,  <33.427235, 20.321215, 33.392120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001194, 20.603699, 33.681644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710793, 20.648071, 33.953117>,  <33.536552, 20.674694, 34.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710793, 20.648071, 33.953117>,  <34.001194, 20.603699, 33.681644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710793, 20.648071, 33.953117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460603, -0.654393, 0.599679,
		0.510647, 0.747974, 0.423999,
		-0.726006, 0.110929, 0.678682,
		33.492992, 20.681351, 34.156723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274364, 20.888058, 34.357014>,  <34.001194, 20.603699, 33.681644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274364, 20.888058, 34.357014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956985, 20.652386, 34.418083>,  <33.766560, 20.510983, 34.454727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956985, 20.652386, 34.418083>,  <34.274364, 20.888058, 34.357014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956985, 20.652386, 34.418083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508097, -0.503092, 0.699097,
		-0.335083, 0.632271, 0.698536,
		-0.793446, -0.589180, 0.152678,
		33.718952, 20.475632, 34.463886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895321, 20.547094, 34.559429>,  <34.274364, 20.888058, 34.357014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895321, 20.547094, 34.559429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059959, 20.701866, 34.889492>,  <35.158741, 20.794729, 35.087528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059959, 20.701866, 34.889492>,  <34.895321, 20.547094, 34.559429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059959, 20.701866, 34.889492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905226, 0.278504, 0.320938,
		-0.105628, -0.879046, 0.464888,
		0.411592, 0.386929, 0.825153,
		35.183437, 20.817945, 35.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606884, 20.236361, 35.164238>,  <34.895321, 20.547094, 34.559429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606884, 20.236361, 35.164238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727657, 20.605244, 35.260876>,  <34.800121, 20.826574, 35.318859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727657, 20.605244, 35.260876>,  <34.606884, 20.236361, 35.164238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727657, 20.605244, 35.260876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935470, 0.237782, 0.261450,
		0.183664, -0.304945, 0.934492,
		0.301933, 0.922208, 0.241595,
		34.818237, 20.881907, 35.333355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580894, 20.467985, 35.950325>,  <34.606884, 20.236361, 35.164238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580894, 20.467985, 35.950325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506210, 20.778080, 35.708946>,  <34.461399, 20.964138, 35.564121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506210, 20.778080, 35.708946>,  <34.580894, 20.467985, 35.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506210, 20.778080, 35.708946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910640, 0.093901, 0.402389,
		0.368612, 0.624651, 0.688431,
		-0.186708, 0.775238, -0.603445,
		34.450199, 21.010651, 35.527912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387959, 21.091402, 36.290913>,  <34.580894, 20.467985, 35.950325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387959, 21.091402, 36.290913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186398, 21.117649, 35.946407>,  <34.065460, 21.133398, 35.739704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186398, 21.117649, 35.946407>,  <34.387959, 21.091402, 36.290913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186398, 21.117649, 35.946407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845632, 0.165747, 0.507379,
		0.176045, 0.983983, -0.028032,
		-0.503899, 0.065617, -0.861267,
		34.035229, 21.137335, 35.688026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983997, 21.688444, 36.301407>,  <34.387959, 21.091402, 36.290913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983997, 21.688444, 36.301407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807034, 21.399776, 36.088440>,  <33.700855, 21.226576, 35.960659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807034, 21.399776, 36.088440>,  <33.983997, 21.688444, 36.301407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807034, 21.399776, 36.088440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815275, 0.076306, 0.574025,
		-0.373629, 0.688020, -0.622117,
		-0.442412, -0.721669, -0.532415,
		33.674309, 21.183275, 35.928715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418015, 22.211124, 36.430347>,  <33.983997, 21.688444, 36.301407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418015, 22.211124, 36.430347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411690, 22.490612, 36.716438>,  <33.407894, 22.658304, 36.888092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411690, 22.490612, 36.716438>,  <33.418015, 22.211124, 36.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411690, 22.490612, 36.716438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541163, 0.607468, -0.581485,
		-0.840769, 0.377859, -0.387724,
		-0.015810, 0.698717, 0.715223,
		33.406948, 22.700228, 36.931004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187389, 22.877548, 36.166145>,  <33.418015, 22.211124, 36.430347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187389, 22.877548, 36.166145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403374, 22.926346, 36.499264>,  <33.532967, 22.955624, 36.699135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403374, 22.926346, 36.499264>,  <33.187389, 22.877548, 36.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403374, 22.926346, 36.499264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496461, 0.752832, -0.432170,
		-0.679680, 0.646809, 0.345938,
		0.539965, 0.121993, 0.832800,
		33.565365, 22.962944, 36.749104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290768, 23.557777, 36.608280>,  <33.187389, 22.877548, 36.166145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290768, 23.557777, 36.608280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417717, 23.465637, 36.240322>,  <33.493889, 23.410353, 36.019547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417717, 23.465637, 36.240322>,  <33.290768, 23.557777, 36.608280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417717, 23.465637, 36.240322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778201, 0.491083, -0.391459,
		0.541918, 0.840105, -0.023400,
		0.317376, -0.230348, -0.919898,
		33.512928, 23.396532, 35.964352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286777, 24.198858, 36.125816>,  <33.290768, 23.557777, 36.608280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286777, 24.198858, 36.125816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261929, 23.842480, 35.945881>,  <33.247021, 23.628653, 35.837921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261929, 23.842480, 35.945881>,  <33.286777, 24.198858, 36.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261929, 23.842480, 35.945881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600202, 0.393454, -0.696384,
		0.797432, 0.226735, -0.559190,
		-0.062121, -0.890946, -0.449839,
		33.243294, 23.575195, 35.810928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498444, 24.298326, 35.446632>,  <33.286777, 24.198858, 36.125816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498444, 24.298326, 35.446632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280468, 23.962944, 35.448925>,  <33.149681, 23.761715, 35.450302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280468, 23.962944, 35.448925>,  <33.498444, 24.298326, 35.446632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280468, 23.962944, 35.448925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565561, 0.362511, -0.740761,
		0.619016, -0.406913, -0.671744,
		-0.544940, -0.838455, 0.005734,
		33.116985, 23.711407, 35.450645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287193, 24.101770, 34.678589>,  <33.498444, 24.298326, 35.446632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287193, 24.101770, 34.678589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003033, 23.916073, 34.890175>,  <32.832535, 23.804655, 35.017128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003033, 23.916073, 34.890175>,  <33.287193, 24.101770, 34.678589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003033, 23.916073, 34.890175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689925, 0.310904, -0.653714,
		0.139026, -0.829347, -0.541161,
		-0.710405, -0.464243, 0.528964,
		32.789909, 23.776800, 35.048862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959377, 23.703976, 34.179207>,  <33.287193, 24.101770, 34.678589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959377, 23.703976, 34.179207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732494, 23.773331, 34.501255>,  <32.596367, 23.814943, 34.694485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732494, 23.773331, 34.501255>,  <32.959377, 23.703976, 34.179207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732494, 23.773331, 34.501255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797298, 0.129376, -0.589557,
		-0.206385, -0.976319, 0.064860,
		-0.567204, 0.173388, 0.805119,
		32.562332, 23.825348, 34.742790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249229, 23.607996, 33.869045>,  <32.959377, 23.703976, 34.179207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249229, 23.607996, 33.869045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163979, 23.726051, 34.241596>,  <32.112827, 23.796885, 34.465126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163979, 23.726051, 34.241596>,  <32.249229, 23.607996, 33.869045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163979, 23.726051, 34.241596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872051, 0.372401, -0.317560,
		-0.440572, -0.879892, 0.178008,
		-0.213128, 0.295140, 0.931380,
		32.100040, 23.814592, 34.521011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573912, 23.333210, 34.035168>,  <32.249229, 23.607996, 33.869045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573912, 23.333210, 34.035168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653275, 23.648335, 34.268402>,  <31.700891, 23.837410, 34.408340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653275, 23.648335, 34.268402>,  <31.573912, 23.333210, 34.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653275, 23.648335, 34.268402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846408, 0.437686, -0.303354,
		-0.494194, -0.433340, 0.753651,
		0.198408, 0.787812, 0.583084,
		31.712797, 23.884678, 34.443329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944487, 23.538160, 34.308407>,  <31.573912, 23.333210, 34.035168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944487, 23.538160, 34.308407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165417, 23.871086, 34.327106>,  <31.297976, 24.070843, 34.338326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165417, 23.871086, 34.327106>,  <30.944487, 23.538160, 34.308407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165417, 23.871086, 34.327106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770751, 0.531229, -0.351764,
		-0.317614, 0.158256, 0.934921,
		0.552326, 0.832316, 0.046750,
		31.331114, 24.120781, 34.341133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412838, 24.077053, 34.437233>,  <30.944487, 23.538160, 34.308407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412838, 24.077053, 34.437233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741661, 24.252522, 34.292019>,  <30.938955, 24.357801, 34.204891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741661, 24.252522, 34.292019>,  <30.412838, 24.077053, 34.437233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741661, 24.252522, 34.292019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568962, 0.658033, -0.493230,
		0.022523, 0.612015, 0.790526,
		0.822055, 0.438670, -0.363034,
		30.988277, 24.384123, 34.183109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328249, 24.799162, 34.564629>,  <30.412838, 24.077053, 34.437233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328249, 24.799162, 34.564629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576651, 24.777683, 34.251842>,  <30.725691, 24.764795, 34.064171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576651, 24.777683, 34.251842>,  <30.328249, 24.799162, 34.564629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576651, 24.777683, 34.251842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524877, 0.712443, -0.465757,
		0.582116, 0.699672, 0.414246,
		0.621004, -0.053696, -0.781966,
		30.762951, 24.761574, 34.017254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507118, 25.495216, 34.483669>,  <30.328249, 24.799162, 34.564629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507118, 25.495216, 34.483669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627331, 25.338749, 34.135723>,  <30.699459, 25.244869, 33.926956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627331, 25.338749, 34.135723>,  <30.507118, 25.495216, 34.483669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627331, 25.338749, 34.135723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540115, 0.681899, -0.493244,
		0.786102, 0.618064, -0.006343,
		0.300532, -0.391166, -0.869868,
		30.717491, 25.221399, 33.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628401, 26.042274, 34.083401>,  <30.507118, 25.495216, 34.483669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628401, 26.042274, 34.083401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570091, 25.747482, 33.819397>,  <30.535105, 25.570606, 33.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570091, 25.747482, 33.819397>,  <30.628401, 26.042274, 34.083401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570091, 25.747482, 33.819397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518949, 0.624945, -0.583212,
		0.842284, 0.257493, -0.473556,
		-0.145774, -0.736981, -0.660007,
		30.526360, 25.526388, 33.621395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874079, 26.338093, 33.395641>,  <30.628401, 26.042274, 34.083401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874079, 26.338093, 33.395641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654665, 26.009911, 33.331184>,  <30.523016, 25.813002, 33.292511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654665, 26.009911, 33.331184>,  <30.874079, 26.338093, 33.395641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654665, 26.009911, 33.331184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638351, 0.535399, -0.553042,
		0.540030, -0.200482, -0.817419,
		-0.548520, -0.820460, -0.161153,
		30.490105, 25.763775, 33.282841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904858, 26.247759, 32.713120>,  <30.874079, 26.338093, 33.395641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904858, 26.247759, 32.713120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570452, 26.049576, 32.807438>,  <30.369808, 25.930666, 32.864029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570452, 26.049576, 32.807438>,  <30.904858, 26.247759, 32.713120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570452, 26.049576, 32.807438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521749, 0.584764, -0.621151,
		0.169872, -0.642317, -0.747377,
		-0.836015, -0.495459, 0.235794,
		30.319647, 25.900938, 32.878178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623962, 26.001553, 32.145382>,  <30.904858, 26.247759, 32.713120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623962, 26.001553, 32.145382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304092, 26.003609, 32.385548>,  <30.112171, 26.004843, 32.529648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304092, 26.003609, 32.385548>,  <30.623962, 26.001553, 32.145382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304092, 26.003609, 32.385548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510733, 0.519964, -0.684682,
		-0.315711, -0.854173, -0.413177,
		-0.799674, 0.005139, 0.600413,
		30.064190, 26.005150, 32.565670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046192, 25.823141, 31.668827>,  <30.623962, 26.001553, 32.145382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046192, 25.823141, 31.668827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881207, 25.983253, 31.996155>,  <29.782215, 26.079321, 32.192551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881207, 25.983253, 31.996155>,  <30.046192, 25.823141, 31.668827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881207, 25.983253, 31.996155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421627, 0.712406, -0.560988,
		-0.807530, -0.576413, -0.125072,
		-0.412463, 0.400281, 0.818321,
		29.757467, 26.103338, 32.241650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302170, 25.992098, 31.547405>,  <30.046192, 25.823141, 31.668827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302170, 25.992098, 31.547405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441174, 26.246086, 31.823391>,  <29.524576, 26.398479, 31.988983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441174, 26.246086, 31.823391>,  <29.302170, 25.992098, 31.547405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441174, 26.246086, 31.823391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362127, 0.769617, -0.525884,
		-0.864929, -0.067105, 0.497389,
		0.347509, 0.634970, 0.689964,
		29.545427, 26.436577, 32.030380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005789, 26.527554, 31.290289>,  <29.302170, 25.992098, 31.547405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005789, 26.527554, 31.290289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239790, 26.670395, 31.581562>,  <29.380192, 26.756100, 31.756325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239790, 26.670395, 31.581562>,  <29.005789, 26.527554, 31.290289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239790, 26.670395, 31.581562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049910, 0.880295, -0.471795,
		-0.809493, 0.312345, 0.497153,
		0.585004, 0.357102, 0.728182,
		29.415291, 26.777525, 31.800016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667255, 27.246189, 31.360088>,  <29.005789, 26.527554, 31.290289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667255, 27.246189, 31.360088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026489, 27.237183, 31.535786>,  <29.242029, 27.231779, 31.641205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026489, 27.237183, 31.535786>,  <28.667255, 27.246189, 31.360088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026489, 27.237183, 31.535786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215944, 0.892602, -0.395766,
		-0.383157, 0.450284, 0.806496,
		0.898086, -0.022518, 0.439243,
		29.295916, 27.230427, 31.667559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841667, 27.978117, 31.654737>,  <28.667255, 27.246189, 31.360088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841667, 27.978117, 31.654737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177172, 27.773880, 31.579086>,  <29.378475, 27.651337, 31.533695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177172, 27.773880, 31.579086>,  <28.841667, 27.978117, 31.654737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177172, 27.773880, 31.579086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393749, 0.808694, -0.437008,
		0.376082, 0.292076, 0.879349,
		0.838763, -0.510594, -0.189130,
		29.428801, 27.620703, 31.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401365, 28.434048, 31.814678>,  <28.841667, 27.978117, 31.654737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401365, 28.434048, 31.814678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560934, 28.165298, 31.565056>,  <29.656675, 28.004049, 31.415281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560934, 28.165298, 31.565056>,  <29.401365, 28.434048, 31.814678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560934, 28.165298, 31.565056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473008, 0.733795, -0.487656,
		0.785574, -0.100648, 0.610528,
		0.398920, -0.671874, -0.624058,
		29.680611, 27.963736, 31.377838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106804, 28.670603, 31.696764>,  <29.401365, 28.434048, 31.814678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106804, 28.670603, 31.696764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990789, 28.431816, 31.397564>,  <29.921181, 28.288544, 31.218044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990789, 28.431816, 31.397564>,  <30.106804, 28.670603, 31.696764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990789, 28.431816, 31.397564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427908, 0.618222, -0.659315,
		0.856021, -0.511302, 0.076140,
		-0.290038, -0.596969, -0.748001,
		29.903778, 28.252726, 31.173164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580536, 28.777704, 31.157497>,  <30.106804, 28.670603, 31.696764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580536, 28.777704, 31.157497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330425, 28.548084, 30.946030>,  <30.180359, 28.410313, 30.819149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330425, 28.548084, 30.946030>,  <30.580536, 28.777704, 31.157497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330425, 28.548084, 30.946030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461204, 0.274656, -0.843715,
		0.629538, -0.771382, 0.093018,
		-0.625278, -0.574050, -0.528671,
		30.142841, 28.375870, 30.787428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955727, 28.568335, 30.660202>,  <30.580536, 28.777704, 31.157497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955727, 28.568335, 30.660202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590973, 28.496895, 30.512383>,  <30.372120, 28.454031, 30.423691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590973, 28.496895, 30.512383>,  <30.955727, 28.568335, 30.660202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590973, 28.496895, 30.512383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327115, 0.227595, -0.917168,
		0.247919, -0.957236, -0.149115,
		-0.911884, -0.178606, -0.369552,
		30.317408, 28.443316, 30.401518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043280, 28.216848, 30.000591>,  <30.955727, 28.568335, 30.660202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043280, 28.216848, 30.000591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683096, 28.390095, 29.984665>,  <30.466986, 28.494043, 29.975109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683096, 28.390095, 29.984665>,  <31.043280, 28.216848, 30.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683096, 28.390095, 29.984665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269797, 0.484409, -0.832200,
		-0.341153, -0.760103, -0.553044,
		-0.900458, 0.433117, -0.039816,
		30.412958, 28.520029, 29.972721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849659, 28.212278, 29.315268>,  <31.043280, 28.216848, 30.000591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849659, 28.212278, 29.315268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603661, 28.484737, 29.474174>,  <30.456062, 28.648212, 29.569519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603661, 28.484737, 29.474174>,  <30.849659, 28.212278, 29.315268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603661, 28.484737, 29.474174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005813, 0.499875, -0.866078,
		-0.788509, -0.534944, -0.303462,
		-0.614996, 0.681146, 0.397266,
		30.419161, 28.689081, 29.593353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268894, 28.174675, 29.008854>,  <30.849659, 28.212278, 29.315268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268894, 28.174675, 29.008854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280504, 28.551987, 29.141144>,  <30.287470, 28.778374, 29.220518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280504, 28.551987, 29.141144>,  <30.268894, 28.174675, 29.008854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280504, 28.551987, 29.141144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064159, 0.328423, -0.942349,
		-0.997517, 0.048569, -0.050988,
		0.029024, 0.943281, 0.330724,
		30.289211, 28.834970, 29.240360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783113, 28.440123, 28.701637>,  <30.268894, 28.174675, 29.008854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783113, 28.440123, 28.701637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998413, 28.757607, 28.814995>,  <30.127592, 28.948097, 28.883009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998413, 28.757607, 28.814995>,  <29.783113, 28.440123, 28.701637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998413, 28.757607, 28.814995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001019, 0.335645, -0.941988,
		-0.842785, 0.507313, 0.179852,
		0.538249, 0.793710, 0.283393,
		30.159887, 28.995720, 28.900013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479298, 28.966490, 28.282928>,  <29.783113, 28.440123, 28.701637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479298, 28.966490, 28.282928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835579, 29.094364, 28.412201>,  <30.049349, 29.171089, 28.489763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835579, 29.094364, 28.412201>,  <29.479298, 28.966490, 28.282928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835579, 29.094364, 28.412201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065084, 0.613932, -0.786671,
		-0.449898, 0.721726, 0.526026,
		0.890705, 0.319686, 0.323180,
		30.102791, 29.190269, 28.509155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435986, 29.669281, 28.247463>,  <29.479298, 28.966490, 28.282928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435986, 29.669281, 28.247463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814047, 29.541981, 28.218052>,  <30.040884, 29.465601, 28.200405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814047, 29.541981, 28.218052>,  <29.435986, 29.669281, 28.247463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814047, 29.541981, 28.218052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185828, 0.709045, -0.680237,
		0.268620, 0.629264, 0.729294,
		0.945151, -0.318249, -0.073529,
		30.097591, 29.446507, 28.195993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783096, 30.266401, 28.303202>,  <29.435986, 29.669281, 28.247463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783096, 30.266401, 28.303202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033401, 30.014965, 28.118465>,  <30.183584, 29.864103, 28.007624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033401, 30.014965, 28.118465>,  <29.783096, 30.266401, 28.303202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033401, 30.014965, 28.118465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311167, 0.744110, -0.591164,
		0.715259, 0.226219, 0.661233,
		0.625763, -0.628590, -0.461840,
		30.221130, 29.826387, 27.979914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444553, 30.608120, 28.267067>,  <29.783096, 30.266401, 28.303202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444553, 30.608120, 28.267067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513544, 30.336502, 27.981647>,  <30.554937, 30.173532, 27.810396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513544, 30.336502, 27.981647>,  <30.444553, 30.608120, 28.267067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513544, 30.336502, 27.981647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493903, 0.686379, -0.533802,
		0.852240, -0.260356, 0.453764,
		0.172475, -0.679043, -0.713550,
		30.565287, 30.132790, 27.767582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210558, 30.691355, 28.014513>,  <30.444553, 30.608120, 28.267067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210558, 30.691355, 28.014513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977846, 30.519577, 27.738220>,  <30.838219, 30.416512, 27.572445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977846, 30.519577, 27.738220>,  <31.210558, 30.691355, 28.014513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977846, 30.519577, 27.738220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329215, 0.652233, -0.682795,
		0.743740, -0.624636, -0.238077,
		-0.581780, -0.429444, -0.690732,
		30.803312, 30.390743, 27.531000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614426, 30.821524, 27.466225>,  <31.210558, 30.691355, 28.014513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614426, 30.821524, 27.466225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252069, 30.709938, 27.338760>,  <31.034657, 30.642986, 27.262281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252069, 30.709938, 27.338760>,  <31.614426, 30.821524, 27.466225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252069, 30.709938, 27.338760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112977, 0.565975, -0.816644,
		0.408167, -0.775791, -0.481195,
		-0.905889, -0.278964, -0.318659,
		30.980303, 30.626249, 27.243162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754648, 30.741850, 26.786333>,  <31.614426, 30.821524, 27.466225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754648, 30.741850, 26.786333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358442, 30.778732, 26.827080>,  <31.120718, 30.800861, 26.851528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358442, 30.778732, 26.827080>,  <31.754648, 30.741850, 26.786333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358442, 30.778732, 26.827080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003257, 0.725414, -0.688306,
		-0.137361, -0.682109, -0.718233,
		-0.990516, 0.092207, 0.101865,
		31.061287, 30.806395, 26.857639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599651, 30.818399, 26.120922>,  <31.754648, 30.741850, 26.786333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599651, 30.818399, 26.120922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277277, 30.932217, 26.328575>,  <31.083853, 31.000507, 26.453167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277277, 30.932217, 26.328575>,  <31.599651, 30.818399, 26.120922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277277, 30.932217, 26.328575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211060, 0.681187, -0.701027,
		-0.553099, -0.674552, -0.488939,
		-0.805938, 0.284541, 0.519134,
		31.035496, 31.017578, 26.484316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127617, 30.867012, 25.638493>,  <31.599651, 30.818399, 26.120922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127617, 30.867012, 25.638493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995304, 31.100132, 25.935390>,  <30.915916, 31.240004, 26.113529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995304, 31.100132, 25.935390>,  <31.127617, 30.867012, 25.638493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995304, 31.100132, 25.935390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290453, 0.685468, -0.667660,
		-0.897899, -0.436436, -0.057462,
		-0.330779, 0.582801, 0.742245,
		30.896070, 31.274973, 26.158064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442089, 31.022142, 25.396486>,  <31.127617, 30.867012, 25.638493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442089, 31.022142, 25.396486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591600, 31.292011, 25.651077>,  <30.681307, 31.453934, 25.803833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591600, 31.292011, 25.651077>,  <30.442089, 31.022142, 25.396486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591600, 31.292011, 25.651077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211880, 0.730181, -0.649571,
		-0.902994, 0.107937, 0.415875,
		0.373776, 0.674674, 0.636479,
		30.703733, 31.494413, 25.842022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009674, 31.718454, 25.346867>,  <30.442089, 31.022142, 25.396486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009674, 31.718454, 25.346867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355726, 31.807762, 25.526512>,  <30.563356, 31.861347, 25.634298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355726, 31.807762, 25.526512>,  <30.009674, 31.718454, 25.346867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355726, 31.807762, 25.526512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021502, 0.878116, -0.477964,
		-0.501088, 0.423158, 0.754883,
		0.865129, 0.223270, 0.449112,
		30.615265, 31.874743, 25.661245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866764, 32.327923, 25.658504>,  <30.009674, 31.718454, 25.346867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866764, 32.327923, 25.658504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266054, 32.337147, 25.680477>,  <30.505629, 32.342682, 25.693661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266054, 32.337147, 25.680477>,  <29.866764, 32.327923, 25.658504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266054, 32.337147, 25.680477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002013, 0.908479, -0.417925,
		-0.059542, 0.417293, 0.906819,
		0.998224, 0.023059, 0.054933,
		30.565521, 32.344063, 25.696957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087873, 32.982349, 26.057547>,  <29.866764, 32.327923, 25.658504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087873, 32.982349, 26.057547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384523, 32.836880, 25.832077>,  <30.562513, 32.749596, 25.696795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384523, 32.836880, 25.832077>,  <30.087873, 32.982349, 26.057547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384523, 32.836880, 25.832077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056347, 0.871089, -0.487882,
		0.668442, 0.330065, 0.666515,
		0.741627, -0.363677, -0.563674,
		30.607012, 32.727776, 25.662975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835899, 32.622925, 26.719938>,  <30.087873, 32.982349, 26.057547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835899, 32.622925, 26.719938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467733, 32.740875, 26.617264>,  <29.246834, 32.811646, 26.555658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467733, 32.740875, 26.617264>,  <29.835899, 32.622925, 26.719938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467733, 32.740875, 26.617264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343190, -0.294963, 0.891750,
		0.187240, 0.908871, 0.372686,
		-0.920414, 0.294874, -0.256686,
		29.191608, 32.829338, 26.540258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560932, 33.044472, 27.193100>,  <29.835899, 32.622925, 26.719938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560932, 33.044472, 27.193100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237795, 32.907196, 27.001431>,  <29.043913, 32.824829, 26.886429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237795, 32.907196, 27.001431>,  <29.560932, 33.044472, 27.193100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237795, 32.907196, 27.001431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434524, -0.202500, 0.877601,
		-0.398214, 0.917178, 0.014465,
		-0.807845, -0.343188, -0.479174,
		28.995441, 32.804241, 26.857677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013168, 33.285595, 27.556629>,  <29.560932, 33.044472, 27.193100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013168, 33.285595, 27.556629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869062, 32.959480, 27.375290>,  <28.782598, 32.763813, 27.266487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869062, 32.959480, 27.375290>,  <29.013168, 33.285595, 27.556629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869062, 32.959480, 27.375290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442638, -0.278386, 0.852392,
		-0.821147, 0.507754, -0.260583,
		-0.360263, -0.815283, -0.453347,
		28.760983, 32.714897, 27.239286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337852, 33.214954, 27.935326>,  <29.013168, 33.285595, 27.556629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337852, 33.214954, 27.935326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407402, 32.879742, 27.728455>,  <28.449131, 32.678616, 27.604332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407402, 32.879742, 27.728455>,  <28.337852, 33.214954, 27.935326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407402, 32.879742, 27.728455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536596, -0.520990, 0.663803,
		-0.825732, 0.162099, -0.540269,
		0.173874, -0.838029, -0.517179,
		28.459564, 32.628334, 27.573301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738060, 32.986031, 27.763590>,  <28.337852, 33.214954, 27.935326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738060, 32.986031, 27.763590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980165, 32.668083, 27.780777>,  <28.125429, 32.477314, 27.791088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980165, 32.668083, 27.780777>,  <27.738060, 32.986031, 27.763590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980165, 32.668083, 27.780777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549975, -0.378544, 0.744468,
		-0.575488, -0.474227, -0.666274,
		0.605261, -0.794867, 0.042966,
		28.161743, 32.429623, 27.793667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238592, 32.393776, 27.980068>,  <27.738060, 32.986031, 27.763590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238592, 32.393776, 27.980068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584890, 32.200401, 28.031864>,  <27.792669, 32.084377, 28.062943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584890, 32.200401, 28.031864>,  <27.238592, 32.393776, 27.980068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584890, 32.200401, 28.031864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410482, -0.537859, 0.736350,
		-0.286333, -0.690647, -0.664094,
		0.865747, -0.483440, 0.129492,
		27.844614, 32.055370, 28.070711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112360, 31.654226, 27.968390>,  <27.238592, 32.393776, 27.980068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112360, 31.654226, 27.968390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454750, 31.707874, 28.168118>,  <27.660185, 31.740063, 28.287954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454750, 31.707874, 28.168118>,  <27.112360, 31.654226, 27.968390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454750, 31.707874, 28.168118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362781, -0.532293, 0.764888,
		0.368371, -0.835868, -0.406973,
		0.855975, 0.134121, 0.499318,
		27.711542, 31.748110, 28.317913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318069, 30.989468, 28.170382>,  <27.112360, 31.654226, 27.968390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318069, 30.989468, 28.170382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528931, 31.236534, 28.403824>,  <27.655447, 31.384775, 28.543888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528931, 31.236534, 28.403824>,  <27.318069, 30.989468, 28.170382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528931, 31.236534, 28.403824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103041, -0.635250, 0.765402,
		0.843499, -0.463620, -0.271229,
		0.527154, 0.617668, 0.583604,
		27.687077, 31.421835, 28.578905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805138, 30.617573, 28.537300>,  <27.318069, 30.989468, 28.170382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805138, 30.617573, 28.537300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788755, 30.952251, 28.755753>,  <27.778927, 31.153059, 28.886824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788755, 30.952251, 28.755753>,  <27.805138, 30.617573, 28.537300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788755, 30.952251, 28.755753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013421, -0.547001, 0.837024,
		0.999071, 0.026950, 0.033632,
		-0.040955, 0.836698, 0.546131,
		27.776468, 31.203260, 28.919592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295923, 30.557171, 29.127045>,  <27.805138, 30.617573, 28.537300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295923, 30.557171, 29.127045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058983, 30.849270, 29.263195>,  <27.916819, 31.024529, 29.344885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058983, 30.849270, 29.263195>,  <28.295923, 30.557171, 29.127045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058983, 30.849270, 29.263195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149985, -0.315139, 0.937119,
		0.791595, 0.606157, 0.077147,
		-0.592353, 0.730247, 0.340377,
		27.881277, 31.068344, 29.365309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618689, 30.800591, 29.731441>,  <28.295923, 30.557171, 29.127045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618689, 30.800591, 29.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229988, 30.881519, 29.780052>,  <27.996769, 30.930077, 29.809219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229988, 30.881519, 29.780052>,  <28.618689, 30.800591, 29.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229988, 30.881519, 29.780052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037355, -0.376579, 0.925631,
		0.233042, 0.904021, 0.358383,
		-0.971749, 0.202323, 0.121528,
		27.938463, 30.942217, 29.816511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574940, 31.100653, 30.275492>,  <28.618689, 30.800591, 29.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574940, 31.100653, 30.275492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194712, 30.986664, 30.226166>,  <27.966576, 30.918270, 30.196569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194712, 30.986664, 30.226166>,  <28.574940, 31.100653, 30.275492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194712, 30.986664, 30.226166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034300, -0.298337, 0.953844,
		-0.308611, 0.910925, 0.273816,
		-0.950570, -0.284974, -0.123315,
		27.909540, 30.901171, 30.189171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324623, 31.245567, 30.931763>,  <28.574940, 31.100653, 30.275492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324623, 31.245567, 30.931763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076065, 30.991726, 30.747959>,  <27.926929, 30.839420, 30.637678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076065, 30.991726, 30.747959>,  <28.324623, 31.245567, 30.931763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076065, 30.991726, 30.747959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017332, -0.575205, 0.817826,
		-0.783306, 0.516157, 0.346430,
		-0.621395, -0.634604, -0.459507,
		27.889647, 30.801344, 30.610107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823517, 31.119301, 31.436234>,  <28.324623, 31.245567, 30.931763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823517, 31.119301, 31.436234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776325, 30.808281, 31.189171>,  <27.748011, 30.621670, 31.040934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776325, 30.808281, 31.189171>,  <27.823517, 31.119301, 31.436234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776325, 30.808281, 31.189171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210674, -0.588244, 0.780760,
		-0.970411, 0.222237, -0.094409,
		-0.117978, -0.777547, -0.617658,
		27.740932, 30.575016, 31.003874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179966, 30.851635, 31.547878>,  <27.823517, 31.119301, 31.436234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179966, 30.851635, 31.547878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372736, 30.549076, 31.370968>,  <27.488398, 30.367540, 31.264822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372736, 30.549076, 31.370968>,  <27.179966, 30.851635, 31.547878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372736, 30.549076, 31.370968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310358, -0.619394, 0.721130,
		-0.819406, -0.210266, -0.533256,
		0.481924, -0.756399, -0.442278,
		27.517313, 30.322157, 31.238285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764477, 30.252069, 31.767447>,  <27.179966, 30.851635, 31.547878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764477, 30.252069, 31.767447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114660, 30.101654, 31.646011>,  <27.324770, 30.011406, 31.573151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114660, 30.101654, 31.646011>,  <26.764477, 30.252069, 31.767447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114660, 30.101654, 31.646011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035850, -0.676968, 0.735139,
		-0.481958, -0.632702, -0.606139,
		0.875460, -0.376036, -0.303588,
		27.377298, 29.988844, 31.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639170, 29.513144, 31.778929>,  <26.764477, 30.252069, 31.767447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639170, 29.513144, 31.778929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036556, 29.558659, 31.782505>,  <27.274988, 29.585968, 31.784651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036556, 29.558659, 31.782505>,  <26.639170, 29.513144, 31.778929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036556, 29.558659, 31.782505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073335, -0.696351, 0.713945,
		0.087465, -0.708624, -0.700145,
		0.993465, 0.113790, 0.008939,
		27.334595, 29.592796, 31.785187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852825, 28.827127, 31.916451>,  <26.639170, 29.513144, 31.778929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852825, 28.827127, 31.916451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177038, 29.049328, 31.990692>,  <27.371567, 29.182648, 32.035236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177038, 29.049328, 31.990692>,  <26.852825, 28.827127, 31.916451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177038, 29.049328, 31.990692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319434, -0.684898, 0.654887,
		0.490913, -0.471520, -0.732580,
		0.810535, 0.555503, 0.185605,
		27.420198, 29.215979, 32.046375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417713, 28.366301, 31.903542>,  <26.852825, 28.827127, 31.916451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417713, 28.366301, 31.903542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537766, 28.673271, 32.130161>,  <27.609797, 28.857452, 32.266132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537766, 28.673271, 32.130161>,  <27.417713, 28.366301, 31.903542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537766, 28.673271, 32.130161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368987, -0.641099, 0.672934,
		0.879642, 0.007083, -0.475583,
		0.300129, 0.767425, 0.566552,
		27.627804, 28.903500, 32.300125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033489, 28.189093, 32.077747>,  <27.417713, 28.366301, 31.903542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033489, 28.189093, 32.077747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945568, 28.461437, 32.357208>,  <27.892817, 28.624844, 32.524887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945568, 28.461437, 32.357208>,  <28.033489, 28.189093, 32.077747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945568, 28.461437, 32.357208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314115, -0.628633, 0.711444,
		0.923590, 0.375834, -0.075694,
		-0.219801, 0.680860, 0.698654,
		27.879627, 28.665695, 32.566803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627951, 28.234192, 32.514790>,  <28.033489, 28.189093, 32.077747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627951, 28.234192, 32.514790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307756, 28.354061, 32.722412>,  <28.115641, 28.425983, 32.846985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307756, 28.354061, 32.722412>,  <28.627951, 28.234192, 32.514790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307756, 28.354061, 32.722412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123623, -0.764852, 0.632233,
		0.586466, 0.570260, 0.575205,
		-0.800484, 0.299675, 0.519057,
		28.067612, 28.443964, 32.878128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767414, 28.236685, 33.256313>,  <28.627951, 28.234192, 32.514790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767414, 28.236685, 33.256313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368183, 28.213188, 33.248409>,  <28.128645, 28.199089, 33.243668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368183, 28.213188, 33.248409>,  <28.767414, 28.236685, 33.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368183, 28.213188, 33.248409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032119, -0.762929, 0.645684,
		-0.053005, 0.643808, 0.763349,
		-0.998078, -0.058743, -0.019760,
		28.068760, 28.195566, 33.242481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621738, 27.940428, 33.887470>,  <28.767414, 28.236685, 33.256313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621738, 27.940428, 33.887470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261007, 27.914574, 33.716576>,  <28.044569, 27.899061, 33.614040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261007, 27.914574, 33.716576>,  <28.621738, 27.940428, 33.887470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261007, 27.914574, 33.716576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166401, -0.860539, 0.481438,
		-0.398770, 0.505266, 0.765303,
		-0.901828, -0.064635, -0.427235,
		27.990459, 27.895184, 33.588406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175390, 27.590528, 34.444321>,  <28.621738, 27.940428, 33.887470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175390, 27.590528, 34.444321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002922, 27.554428, 34.085224>,  <27.899441, 27.532768, 33.869766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002922, 27.554428, 34.085224>,  <28.175390, 27.590528, 34.444321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002922, 27.554428, 34.085224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285676, -0.930140, 0.230713,
		-0.855851, 0.355941, 0.375267,
		-0.431171, -0.090251, -0.897745,
		27.873571, 27.527353, 33.815899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552731, 27.269302, 34.568016>,  <28.175390, 27.590528, 34.444321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552731, 27.269302, 34.568016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668482, 27.184181, 34.194714>,  <27.737932, 27.133108, 33.970730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668482, 27.184181, 34.194714>,  <27.552731, 27.269302, 34.568016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668482, 27.184181, 34.194714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206632, -0.965875, 0.156170,
		-0.934646, 0.147649, -0.323476,
		0.289379, -0.212804, -0.933260,
		27.755295, 27.120340, 33.914734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015156, 26.930998, 34.267094>,  <27.552731, 27.269302, 34.568016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015156, 26.930998, 34.267094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365427, 26.839748, 34.096848>,  <27.575590, 26.784998, 33.994701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365427, 26.839748, 34.096848>,  <27.015156, 26.930998, 34.267094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365427, 26.839748, 34.096848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181826, -0.972276, 0.147033,
		-0.447358, -0.051365, -0.892879,
		0.875677, -0.228125, -0.425616,
		27.628130, 26.771311, 33.969162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936964, 26.354788, 34.006340>,  <27.015156, 26.930998, 34.267094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936964, 26.354788, 34.006340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336451, 26.371338, 33.994682>,  <27.576143, 26.381268, 33.987686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336451, 26.371338, 33.994682>,  <26.936964, 26.354788, 34.006340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336451, 26.371338, 33.994682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046101, -0.981369, 0.186519,
		-0.020883, -0.187624, -0.982019,
		0.998718, 0.041377, -0.029144,
		27.636066, 26.383751, 33.985939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097212, 25.748987, 33.682453>,  <26.936964, 26.354788, 34.006340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097212, 25.748987, 33.682453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444733, 25.847713, 33.854156>,  <27.653246, 25.906950, 33.957180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444733, 25.847713, 33.854156>,  <27.097212, 25.748987, 33.682453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444733, 25.847713, 33.854156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218774, -0.969047, 0.114394,
		0.444208, -0.005474, -0.895907,
		0.868802, 0.246816, 0.429261,
		27.705374, 25.921759, 33.982933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597105, 25.358038, 33.330196>,  <27.097212, 25.748987, 33.682453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597105, 25.358038, 33.330196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737406, 25.455620, 33.691849>,  <27.821587, 25.514170, 33.908840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737406, 25.455620, 33.691849>,  <27.597105, 25.358038, 33.330196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737406, 25.455620, 33.691849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150066, -0.967638, 0.202874,
		0.924367, 0.064522, -0.376008,
		0.350750, 0.243956, 0.904135,
		27.842630, 25.528807, 33.963089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050720, 24.912228, 33.426262>,  <27.597105, 25.358038, 33.330196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050720, 24.912228, 33.426262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070885, 25.043098, 33.803711>,  <28.082983, 25.121620, 34.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070885, 25.043098, 33.803711>,  <28.050720, 24.912228, 33.426262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070885, 25.043098, 33.803711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280259, -0.911491, 0.301063,
		0.958600, 0.249281, -0.137642,
		0.050410, 0.327175, 0.943618,
		28.086008, 25.141251, 34.086796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674929, 24.645149, 33.632717>,  <28.050720, 24.912228, 33.426262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674929, 24.645149, 33.632717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455872, 24.710999, 33.960861>,  <28.324438, 24.750507, 34.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455872, 24.710999, 33.960861>,  <28.674929, 24.645149, 33.632717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455872, 24.710999, 33.960861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417234, -0.796127, 0.438289,
		0.725263, 0.582307, 0.367305,
		-0.547640, 0.164623, 0.820359,
		28.291580, 24.760386, 34.206970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122797, 24.525640, 34.125835>,  <28.674929, 24.645149, 33.632717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122797, 24.525640, 34.125835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770145, 24.475960, 34.307961>,  <28.558556, 24.446152, 34.417236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770145, 24.475960, 34.307961>,  <29.122797, 24.525640, 34.125835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770145, 24.475960, 34.307961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398608, -0.712480, 0.577480,
		0.252678, 0.690613, 0.677649,
		-0.881627, -0.124200, 0.455312,
		28.505657, 24.438700, 34.444553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283840, 24.402069, 34.807003>,  <29.122797, 24.525640, 34.125835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283840, 24.402069, 34.807003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915716, 24.249165, 34.773758>,  <28.694841, 24.157421, 34.753811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915716, 24.249165, 34.773758>,  <29.283840, 24.402069, 34.807003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915716, 24.249165, 34.773758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263057, -0.761976, 0.591772,
		-0.289540, 0.522750, 0.801810,
		-0.920308, -0.382263, -0.083109,
		28.639624, 24.134485, 34.748825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186886, 24.107805, 35.516483>,  <29.283840, 24.402069, 34.807003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186886, 24.107805, 35.516483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914843, 23.947479, 35.270947>,  <28.751617, 23.851284, 35.123623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914843, 23.947479, 35.270947>,  <29.186886, 24.107805, 35.516483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914843, 23.947479, 35.270947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112938, -0.884596, 0.452477,
		-0.724361, 0.238407, 0.646888,
		-0.680108, -0.400815, -0.613841,
		28.710810, 23.827234, 35.086796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784389, 23.661373, 35.940887>,  <29.186886, 24.107805, 35.516483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784389, 23.661373, 35.940887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719400, 23.550209, 35.562180>,  <28.680407, 23.483511, 35.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719400, 23.550209, 35.562180>,  <28.784389, 23.661373, 35.940887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719400, 23.550209, 35.562180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185646, -0.950990, 0.247290,
		-0.969091, -0.135586, 0.206104,
		-0.162474, -0.277909, -0.946768,
		28.670658, 23.466837, 35.278149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541492, 23.042479, 36.002098>,  <28.784389, 23.661373, 35.940887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541492, 23.042479, 36.002098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630278, 23.002762, 35.614105>,  <28.683548, 22.978931, 35.381310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630278, 23.002762, 35.614105>,  <28.541492, 23.042479, 36.002098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630278, 23.002762, 35.614105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174256, -0.974747, 0.139655,
		-0.959358, -0.200024, -0.199055,
		0.221963, -0.099293, -0.969986,
		28.696867, 22.972975, 35.323109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154705, 22.522799, 35.756390>,  <28.541492, 23.042479, 36.002098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154705, 22.522799, 35.756390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450895, 22.535202, 35.487843>,  <28.628609, 22.542645, 35.326714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450895, 22.535202, 35.487843>,  <28.154705, 22.522799, 35.756390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450895, 22.535202, 35.487843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096828, -0.993436, 0.060910,
		-0.665073, -0.110110, -0.738616,
		0.740474, 0.031010, -0.671369,
		28.673038, 22.544504, 35.286430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067598, 22.090845, 35.076172>,  <28.154705, 22.522799, 35.756390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067598, 22.090845, 35.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458748, 22.138218, 35.145153>,  <28.693438, 22.166641, 35.186543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458748, 22.138218, 35.145153>,  <28.067598, 22.090845, 35.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458748, 22.138218, 35.145153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122319, -0.992418, -0.012041,
		0.169717, 0.032869, -0.984944,
		0.977872, 0.118434, 0.172450,
		28.752110, 22.173748, 35.196888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269758, 21.462549, 34.668823>,  <28.067598, 22.090845, 35.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269758, 21.462549, 34.668823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039761, 21.202610, 34.469994>,  <27.901762, 21.046646, 34.350697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039761, 21.202610, 34.469994>,  <28.269758, 21.462549, 34.668823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039761, 21.202610, 34.469994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047791, 0.633192, -0.772518,
		0.816761, -0.420437, -0.395138,
		-0.574994, -0.649847, -0.497073,
		27.867262, 21.007656, 34.320873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604227, 21.290716, 34.076839>,  <28.269758, 21.462549, 34.668823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604227, 21.290716, 34.076839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217474, 21.219818, 34.003387>,  <27.985422, 21.177279, 33.959316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217474, 21.219818, 34.003387>,  <28.604227, 21.290716, 34.076839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217474, 21.219818, 34.003387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060353, 0.540308, -0.839300,
		0.247979, -0.822588, -0.511718,
		-0.966884, -0.177244, -0.183631,
		27.927408, 21.166645, 33.948299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474056, 21.450867, 33.363228>,  <28.604227, 21.290716, 34.076839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474056, 21.450867, 33.363228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089373, 21.473457, 33.470501>,  <27.858562, 21.487013, 33.534866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089373, 21.473457, 33.470501>,  <28.474056, 21.450867, 33.363228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089373, 21.473457, 33.470501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179340, 0.610265, -0.771630,
		-0.207244, -0.790181, -0.576770,
		-0.961711, 0.056477, 0.268185,
		27.800859, 21.490400, 33.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977364, 21.313351, 32.737286>,  <28.474056, 21.450867, 33.363228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977364, 21.313351, 32.737286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792418, 21.524830, 33.022018>,  <27.681450, 21.651718, 33.192856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792418, 21.524830, 33.022018>,  <27.977364, 21.313351, 32.737286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792418, 21.524830, 33.022018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295474, 0.665039, -0.685871,
		-0.836012, -0.527448, -0.151272,
		-0.462363, 0.528699, 0.711827,
		27.653709, 21.683439, 33.235565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341541, 21.501818, 32.426949>,  <27.977364, 21.313351, 32.737286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341541, 21.501818, 32.426949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373350, 21.751476, 32.737850>,  <27.392435, 21.901272, 32.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373350, 21.751476, 32.737850>,  <27.341541, 21.501818, 32.426949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373350, 21.751476, 32.737850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308570, 0.756835, -0.576182,
		-0.947872, -0.194018, 0.252777,
		0.079521, 0.624146, 0.777250,
		27.397207, 21.938721, 32.971024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691092, 21.838165, 32.482452>,  <27.341541, 21.501818, 32.426949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691092, 21.838165, 32.482452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939066, 22.093029, 32.665627>,  <27.087851, 22.245947, 32.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939066, 22.093029, 32.665627>,  <26.691092, 21.838165, 32.482452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939066, 22.093029, 32.665627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353236, 0.747756, -0.562214,
		-0.700643, 0.186780, 0.688631,
		0.619938, 0.637161, 0.457933,
		27.125048, 22.284178, 32.803005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270569, 22.548777, 32.552055>,  <26.691092, 21.838165, 32.482452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270569, 22.548777, 32.552055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658976, 22.638985, 32.583714>,  <26.892019, 22.693110, 32.602711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658976, 22.638985, 32.583714>,  <26.270569, 22.548777, 32.552055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658976, 22.638985, 32.583714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178657, 0.904852, -0.386425,
		-0.158765, 0.361085, 0.918919,
		0.971018, 0.225522, 0.079149,
		26.950281, 22.706642, 32.607460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216686, 23.309685, 32.787922>,  <26.270569, 22.548777, 32.552055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216686, 23.309685, 32.787922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580603, 23.240509, 32.636990>,  <26.798952, 23.199003, 32.546432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580603, 23.240509, 32.636990>,  <26.216686, 23.309685, 32.787922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580603, 23.240509, 32.636990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034463, 0.874454, -0.483882,
		0.413638, 0.453234, 0.789609,
		0.909789, -0.172940, -0.377327,
		26.853539, 23.188627, 32.523792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468569, 23.928850, 32.719311>,  <26.216686, 23.309685, 32.787922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468569, 23.928850, 32.719311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743948, 23.734039, 32.504333>,  <26.909176, 23.617153, 32.375347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743948, 23.734039, 32.504333>,  <26.468569, 23.928850, 32.719311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743948, 23.734039, 32.504333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269059, 0.859628, -0.434336,
		0.673535, 0.154413, 0.722847,
		0.688446, -0.487029, -0.537443,
		26.950481, 23.587931, 32.343102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116692, 24.296520, 32.710228>,  <26.468569, 23.928850, 32.719311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116692, 24.296520, 32.710228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133268, 24.063053, 32.385857>,  <27.143213, 23.922972, 32.191235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133268, 24.063053, 32.385857>,  <27.116692, 24.296520, 32.710228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133268, 24.063053, 32.385857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157252, 0.805325, -0.571598,
		0.986689, -0.103834, 0.125156,
		0.041440, -0.583670, -0.810933,
		27.145700, 23.887953, 32.142578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600195, 24.685207, 32.293823>,  <27.116692, 24.296520, 32.710228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600195, 24.685207, 32.293823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416842, 24.432968, 32.043308>,  <27.306829, 24.281626, 31.893000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416842, 24.432968, 32.043308>,  <27.600195, 24.685207, 32.293823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416842, 24.432968, 32.043308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100682, 0.663297, -0.741552,
		0.883034, -0.402971, -0.240554,
		-0.458383, -0.630596, -0.626286,
		27.279327, 24.243790, 31.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007166, 24.684954, 31.728693>,  <27.600195, 24.685207, 32.293823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007166, 24.684954, 31.728693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658798, 24.538742, 31.597309>,  <27.449778, 24.451015, 31.518478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658798, 24.538742, 31.597309>,  <28.007166, 24.684954, 31.728693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658798, 24.538742, 31.597309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060832, 0.743432, -0.666040,
		0.487646, -0.560086, -0.669705,
		-0.870920, -0.365531, -0.328460,
		27.397522, 24.429083, 31.498772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034191, 24.728773, 31.051661>,  <28.007166, 24.684954, 31.728693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034191, 24.728773, 31.051661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644007, 24.715740, 31.138760>,  <27.409897, 24.707920, 31.191019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644007, 24.715740, 31.138760>,  <28.034191, 24.728773, 31.051661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644007, 24.715740, 31.138760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171658, 0.731857, -0.659484,
		-0.137875, -0.680680, -0.719490,
		-0.975461, -0.032580, 0.217748,
		27.351368, 24.705967, 31.204084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624439, 24.698891, 30.424755>,  <28.034191, 24.728773, 31.051661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624439, 24.698891, 30.424755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367804, 24.855400, 30.688656>,  <27.213821, 24.949305, 30.846996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367804, 24.855400, 30.688656>,  <27.624439, 24.698891, 30.424755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367804, 24.855400, 30.688656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134301, 0.789526, -0.598841,
		-0.755200, -0.472815, -0.454003,
		-0.641589, 0.391272, 0.659750,
		27.175327, 24.972782, 30.886581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292200, 25.089939, 29.918047>,  <27.624439, 24.698891, 30.424755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292200, 25.089939, 29.918047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118723, 25.210522, 30.257702>,  <27.014637, 25.282871, 30.461494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118723, 25.210522, 30.257702>,  <27.292200, 25.089939, 29.918047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118723, 25.210522, 30.257702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335844, 0.820390, -0.462784,
		-0.836133, -0.485884, -0.254556,
		-0.433695, 0.301458, 0.849136,
		26.988615, 25.300959, 30.512444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550154, 25.265669, 29.750656>,  <27.292200, 25.089939, 29.918047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550154, 25.265669, 29.750656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658480, 25.444992, 30.091404>,  <26.723475, 25.552586, 30.295853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658480, 25.444992, 30.091404>,  <26.550154, 25.265669, 29.750656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658480, 25.444992, 30.091404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431922, 0.847448, -0.308668,
		-0.860292, -0.284350, 0.423135,
		0.270815, 0.448306, 0.851869,
		26.739725, 25.579483, 30.346964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960747, 25.684229, 29.907608>,  <26.550154, 25.265669, 29.750656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960747, 25.684229, 29.907608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283764, 25.828098, 30.094589>,  <26.477573, 25.914419, 30.206778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283764, 25.828098, 30.094589>,  <25.960747, 25.684229, 29.907608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283764, 25.828098, 30.094589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234154, 0.922916, -0.305611,
		-0.541340, 0.137338, 0.829512,
		0.807541, 0.359673, 0.467453,
		26.526026, 25.936001, 30.234825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778162, 26.263548, 30.383287>,  <25.960747, 25.684229, 29.907608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778162, 26.263548, 30.383287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165089, 26.326313, 30.303612>,  <26.397245, 26.363972, 30.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165089, 26.326313, 30.303612>,  <25.778162, 26.263548, 30.383287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165089, 26.326313, 30.303612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182378, 0.976291, -0.116591,
		0.176172, 0.149109, 0.973000,
		0.967317, 0.156914, -0.199189,
		26.455284, 26.373386, 30.243855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922264, 26.912580, 30.698595>,  <25.778162, 26.263548, 30.383287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922264, 26.912580, 30.698595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232796, 26.903343, 30.446632>,  <26.419115, 26.897800, 30.295456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232796, 26.903343, 30.446632>,  <25.922264, 26.912580, 30.698595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232796, 26.903343, 30.446632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095059, 0.983610, -0.153215,
		0.623119, 0.178823, 0.761410,
		0.776329, -0.023093, -0.629905,
		26.465694, 26.896416, 30.257662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368200, 27.455782, 30.923708>,  <25.922264, 26.912580, 30.698595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368200, 27.455782, 30.923708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458097, 27.382271, 30.540936>,  <26.512035, 27.338163, 30.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458097, 27.382271, 30.540936>,  <26.368200, 27.455782, 30.923708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458097, 27.382271, 30.540936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035197, 0.982944, -0.180508,
		0.973782, 0.006887, 0.227379,
		0.224743, -0.183778, -0.956931,
		26.525520, 27.327137, 30.253857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953751, 27.856335, 30.853336>,  <26.368200, 27.455782, 30.923708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953751, 27.856335, 30.853336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797520, 27.776863, 30.493786>,  <26.703781, 27.729181, 30.278055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797520, 27.776863, 30.493786>,  <26.953751, 27.856335, 30.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797520, 27.776863, 30.493786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200662, 0.934580, -0.293759,
		0.898435, -0.295106, -0.325158,
		-0.390576, -0.198677, -0.898876,
		26.680347, 27.717260, 30.224123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316925, 28.341270, 30.350889>,  <26.953751, 27.856335, 30.853336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316925, 28.341270, 30.350889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001991, 28.203026, 30.146671>,  <26.813032, 28.120079, 30.024139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001991, 28.203026, 30.146671>,  <27.316925, 28.341270, 30.350889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001991, 28.203026, 30.146671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010887, 0.835765, -0.548980,
		0.616432, -0.426672, -0.661788,
		-0.787333, -0.345613, -0.510547,
		26.765791, 28.099342, 29.993507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333862, 28.689301, 29.701565>,  <27.316925, 28.341270, 30.350889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333862, 28.689301, 29.701565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958277, 28.557949, 29.742588>,  <26.732925, 28.479137, 29.767202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958277, 28.557949, 29.742588>,  <27.333862, 28.689301, 29.701565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958277, 28.557949, 29.742588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335621, 0.808903, -0.482737,
		0.075560, -0.487692, -0.869740,
		-0.938961, -0.328379, 0.102559,
		26.676588, 28.459435, 29.773355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024813, 28.678789, 29.021877>,  <27.333862, 28.689301, 29.701565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024813, 28.678789, 29.021877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708767, 28.692493, 29.266678>,  <26.519140, 28.700716, 29.413559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708767, 28.692493, 29.266678>,  <27.024813, 28.678789, 29.021877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708767, 28.692493, 29.266678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348295, 0.796498, -0.494248,
		-0.504392, -0.603670, -0.617391,
		-0.790113, 0.034261, 0.612003,
		26.471733, 28.702772, 29.450279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524879, 28.734802, 28.529137>,  <27.024813, 28.678789, 29.021877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524879, 28.734802, 28.529137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386572, 28.870167, 28.879204>,  <26.303587, 28.951385, 29.089245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386572, 28.870167, 28.879204>,  <26.524879, 28.734802, 28.529137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386572, 28.870167, 28.879204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408594, 0.785323, -0.465101,
		-0.844687, -0.518405, -0.133265,
		-0.345767, 0.338414, 0.875169,
		26.282841, 28.971691, 29.141754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900206, 28.886862, 28.427027>,  <26.524879, 28.734802, 28.529137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900206, 28.886862, 28.427027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959799, 29.104137, 28.757542>,  <25.995554, 29.234503, 28.955851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959799, 29.104137, 28.757542>,  <25.900206, 28.886862, 28.427027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959799, 29.104137, 28.757542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626247, 0.698505, -0.346275,
		-0.765258, -0.465870, 0.444236,
		0.148982, 0.543191, 0.826286,
		26.004494, 29.267096, 29.005426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210125, 29.136110, 28.453510>,  <25.900206, 28.886862, 28.427027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210125, 29.136110, 28.453510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457960, 29.362724, 28.670822>,  <25.606661, 29.498692, 28.801208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457960, 29.362724, 28.670822>,  <25.210125, 29.136110, 28.453510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457960, 29.362724, 28.670822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438714, 0.823883, -0.358812,
		-0.650878, -0.016029, 0.759013,
		0.619586, 0.566533, 0.543280,
		25.643837, 29.532684, 28.833807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843763, 29.673388, 28.525982>,  <25.210125, 29.136110, 28.453510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843763, 29.673388, 28.525982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204733, 29.794331, 28.648754>,  <25.421314, 29.866896, 28.722418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204733, 29.794331, 28.648754>,  <24.843763, 29.673388, 28.525982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204733, 29.794331, 28.648754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131808, 0.871986, -0.471451,
		-0.410188, 0.384994, 0.826756,
		0.902426, 0.302356, 0.306933,
		25.475460, 29.885038, 28.740833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707056, 30.158186, 28.985476>,  <24.843763, 29.673388, 28.525982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707056, 30.158186, 28.985476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055458, 30.212795, 28.796707>,  <25.264500, 30.245562, 28.683447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055458, 30.212795, 28.796707>,  <24.707056, 30.158186, 28.985476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055458, 30.212795, 28.796707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385246, 0.785905, -0.483673,
		0.304852, 0.603088, 0.737123,
		0.871006, 0.136525, -0.471921,
		25.316759, 30.253754, 28.655130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935890, 30.895515, 29.038223>,  <24.707056, 30.158186, 28.985476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935890, 30.895515, 29.038223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147543, 30.734699, 28.739323>,  <25.274534, 30.638210, 28.559982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147543, 30.734699, 28.739323>,  <24.935890, 30.895515, 29.038223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147543, 30.734699, 28.739323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306755, 0.730442, -0.610210,
		0.791153, 0.552103, 0.263171,
		0.529130, -0.402040, -0.747252,
		25.306282, 30.614088, 28.515146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298252, 31.412300, 28.708710>,  <24.935890, 30.895515, 29.038223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298252, 31.412300, 28.708710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275618, 31.141762, 28.414948>,  <25.262037, 30.979439, 28.238689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275618, 31.141762, 28.414948>,  <25.298252, 31.412300, 28.708710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275618, 31.141762, 28.414948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343298, 0.703913, -0.621814,
		0.937520, 0.216933, -0.272021,
		-0.056588, -0.676348, -0.734405,
		25.258642, 30.938858, 28.194626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527983, 31.814581, 28.033678>,  <25.298252, 31.412300, 28.708710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527983, 31.814581, 28.033678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326714, 31.490986, 27.912117>,  <25.205952, 31.296829, 27.839180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326714, 31.490986, 27.912117>,  <25.527983, 31.814581, 28.033678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326714, 31.490986, 27.912117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465045, 0.549883, -0.693802,
		0.728388, -0.207774, -0.652902,
		-0.503174, -0.808986, -0.303904,
		25.175762, 31.248291, 27.820946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547163, 31.778103, 27.324223>,  <25.527983, 31.814581, 28.033678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547163, 31.778103, 27.324223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230726, 31.540668, 27.383327>,  <25.040865, 31.398209, 27.418791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230726, 31.540668, 27.383327>,  <25.547163, 31.778103, 27.324223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230726, 31.540668, 27.383327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517579, 0.520800, -0.678881,
		0.326016, -0.613536, -0.719226,
		-0.791091, -0.593583, 0.147764,
		24.993399, 31.362593, 27.427656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313120, 31.496511, 26.623220>,  <25.547163, 31.778103, 27.324223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313120, 31.496511, 26.623220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009899, 31.502625, 26.884026>,  <24.827967, 31.506292, 27.040508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009899, 31.502625, 26.884026>,  <25.313120, 31.496511, 26.623220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009899, 31.502625, 26.884026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589606, 0.411278, -0.695137,
		-0.278783, -0.911382, -0.302759,
		-0.758053, 0.015284, 0.652014,
		24.782484, 31.507210, 27.079630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807983, 31.265511, 26.200962>,  <25.313120, 31.496511, 26.623220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807983, 31.265511, 26.200962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583824, 31.400307, 26.503590>,  <24.449329, 31.481184, 26.685165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583824, 31.400307, 26.503590>,  <24.807983, 31.265511, 26.200962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583824, 31.400307, 26.503590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721625, 0.249640, -0.645707,
		-0.406466, -0.907810, 0.103282,
		-0.560396, 0.336989, 0.756568,
		24.415705, 31.501404, 26.730560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230919, 31.190674, 25.990601>,  <24.807983, 31.265511, 26.200962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230919, 31.190674, 25.990601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147188, 31.462189, 26.272148>,  <24.096951, 31.625097, 26.441076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147188, 31.462189, 26.272148>,  <24.230919, 31.190674, 25.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.147188, 31.462189, 26.272148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653546, 0.438317, -0.617054,
		-0.727365, -0.589177, 0.351867,
		-0.209324, 0.678785, 0.703871,
		24.084391, 31.665825, 26.483309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.534931, 31.213045, 25.993162>,  <24.230919, 31.190674, 25.990601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.534931, 31.213045, 25.993162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.647116, 31.555416, 26.166935>,  <23.714426, 31.760838, 26.271198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.647116, 31.555416, 26.166935>,  <23.534931, 31.213045, 25.993162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.647116, 31.555416, 26.166935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658808, 0.500810, -0.561392,
		-0.698079, -0.128761, 0.704348,
		0.280459, 0.855926, 0.434434,
		23.731253, 31.812195, 26.297264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.981512, 31.481403, 26.346317>,  <23.534931, 31.213045, 25.993162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.981512, 31.481403, 26.346317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227734, 31.782978, 26.254517>,  <23.375467, 31.963923, 26.199436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.227734, 31.782978, 26.254517>,  <22.981512, 31.481403, 26.346317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.227734, 31.782978, 26.254517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743560, 0.459095, -0.486159,
		-0.261171, 0.469905, 0.843196,
		0.615555, 0.753937, -0.229500,
		23.412399, 32.009159, 26.185667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537840, 32.081802, 26.300272>,  <22.981512, 31.481403, 26.346317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537840, 32.081802, 26.300272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.872656, 32.194401, 26.112602>,  <23.073545, 32.261959, 26.000000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.872656, 32.194401, 26.112602>,  <22.537840, 32.081802, 26.300272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.872656, 32.194401, 26.112602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545888, 0.487718, -0.681276,
		0.037048, 0.826372, 0.561905,
		0.837038, 0.281497, -0.469176,
		23.123768, 32.278851, 25.971849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.540958, 32.832390, 26.158297>,  <22.537840, 32.081802, 26.300272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.540958, 32.832390, 26.158297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765881, 32.655602, 25.878731>,  <22.900833, 32.549530, 25.710991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765881, 32.655602, 25.878731>,  <22.540958, 32.832390, 26.158297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.765881, 32.655602, 25.878731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506827, 0.483637, -0.713597,
		0.653407, 0.755486, 0.047951,
		0.562304, -0.441967, -0.698913,
		22.934572, 32.523010, 25.669056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.026962, 33.341988, 25.681503>,  <22.540958, 32.832390, 26.158297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.026962, 33.341988, 25.681503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.863365, 33.010319, 25.529083>,  <22.765207, 32.811317, 25.437632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.863365, 33.010319, 25.529083>,  <23.026962, 33.341988, 25.681503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.863365, 33.010319, 25.529083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597257, 0.558942, -0.575210,
		0.689933, -0.007672, -0.723832,
		-0.408994, -0.829171, -0.381051,
		22.740667, 32.761566, 25.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.041771, 34.088737, 25.892429>,  <23.026962, 33.341988, 25.681503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.041771, 34.088737, 25.892429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892366, 34.408855, 26.080051>,  <22.802723, 34.600925, 26.192625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892366, 34.408855, 26.080051>,  <23.041771, 34.088737, 25.892429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.892366, 34.408855, 26.080051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076669, 0.530554, -0.844177,
		-0.924451, -0.279348, -0.259526,
		-0.373512, 0.800298, 0.469054,
		22.780313, 34.648945, 26.220768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415548, 34.519470, 25.619459>,  <23.041771, 34.088737, 25.892429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415548, 34.519470, 25.619459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738779, 34.720798, 25.741890>,  <22.932718, 34.841595, 25.815348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738779, 34.720798, 25.741890>,  <22.415548, 34.519470, 25.619459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738779, 34.720798, 25.741890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104460, 0.388914, -0.915333,
		-0.579742, 0.771631, 0.261695,
		0.808076, 0.503320, 0.306075,
		22.981201, 34.871796, 25.833712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.535604, 35.177475, 25.438738>,  <22.415548, 34.519470, 25.619459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.535604, 35.177475, 25.438738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621927, 34.912949, 25.151382>,  <22.673721, 34.754230, 24.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621927, 34.912949, 25.151382>,  <22.535604, 35.177475, 25.438738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621927, 34.912949, 25.151382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272953, 0.665539, -0.694662,
		0.937509, 0.346001, -0.036880,
		0.215808, -0.661318, -0.718391,
		22.686670, 34.714554, 24.935865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.005777, 35.713604, 25.425549>,  <22.535604, 35.177475, 25.438738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.005777, 35.713604, 25.425549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844175, 35.941414, 25.711884>,  <21.747215, 36.078098, 25.883684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844175, 35.941414, 25.711884>,  <22.005777, 35.713604, 25.425549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844175, 35.941414, 25.711884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896238, -0.403104, -0.185106,
		0.183136, -0.716346, 0.673282,
		-0.404003, 0.569522, 0.715840,
		21.722975, 36.112270, 25.926636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253307, 35.847729, 25.337385>,  <22.005777, 35.713604, 25.425549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253307, 35.847729, 25.337385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.901493, 35.662151, 25.379662>,  <20.690405, 35.550804, 25.405027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.901493, 35.662151, 25.379662>,  <21.253307, 35.847729, 25.337385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.901493, 35.662151, 25.379662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292320, -0.702095, -0.649316,
		0.375451, -0.540202, 0.753139,
		-0.879537, -0.463944, 0.105690,
		20.637632, 35.522968, 25.411369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345625, 35.165894, 25.605770>,  <21.253307, 35.847729, 25.337385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345625, 35.165894, 25.605770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980810, 35.160049, 25.441830>,  <20.761921, 35.156544, 25.343466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980810, 35.160049, 25.441830>,  <21.345625, 35.165894, 25.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.980810, 35.160049, 25.441830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265141, -0.783423, -0.562093,
		-0.312873, -0.621317, 0.718384,
		-0.912036, -0.014609, -0.409849,
		20.707199, 35.155666, 25.318874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.148420, 34.437729, 25.613758>,  <21.345625, 35.165894, 25.605770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.148420, 34.437729, 25.613758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.953188, 34.638893, 25.328423>,  <20.836048, 34.759594, 25.157221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.953188, 34.638893, 25.328423>,  <21.148420, 34.437729, 25.613758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.953188, 34.638893, 25.328423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077643, -0.789044, -0.609411,
		-0.869339, -0.352827, 0.346069,
		-0.488080, 0.502915, -0.713340,
		20.806765, 34.789768, 25.114420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.874243, 33.898785, 25.251726>,  <21.148420, 34.437729, 25.613758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.874243, 33.898785, 25.251726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819128, 34.191486, 24.984726>,  <20.786058, 34.367107, 24.824526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.819128, 34.191486, 24.984726>,  <20.874243, 33.898785, 25.251726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819128, 34.191486, 24.984726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167549, -0.646994, -0.743859,
		-0.976188, -0.214333, -0.033457,
		-0.137788, 0.731752, -0.667499,
		20.777792, 34.411011, 24.784477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.467632, 33.633400, 24.709091>,  <20.874243, 33.898785, 25.251726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.467632, 33.633400, 24.709091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.644926, 33.949963, 24.540703>,  <20.751303, 34.139900, 24.439669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.644926, 33.949963, 24.540703>,  <20.467632, 33.633400, 24.709091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644926, 33.949963, 24.540703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267617, -0.565033, -0.780461,
		-0.855525, 0.233270, -0.462237,
		0.443237, 0.791406, -0.420973,
		20.777897, 34.187386, 24.414412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185970, 33.713398, 24.071791>,  <20.467632, 33.633400, 24.709091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185970, 33.713398, 24.071791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542664, 33.894333, 24.066044>,  <20.756680, 34.002892, 24.062595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542664, 33.894333, 24.066044>,  <20.185970, 33.713398, 24.071791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542664, 33.894333, 24.066044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209554, -0.440834, -0.872784,
		-0.401123, 0.775280, -0.487895,
		0.891733, 0.452335, -0.014365,
		20.810183, 34.030033, 24.061735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181290, 34.026199, 23.435516>,  <20.185970, 33.713398, 24.071791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181290, 34.026199, 23.435516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.558012, 34.017998, 23.569729>,  <20.784046, 34.013077, 23.650257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.558012, 34.017998, 23.569729>,  <20.181290, 34.026199, 23.435516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558012, 34.017998, 23.569729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268945, -0.552853, -0.788684,
		0.201668, 0.833027, -0.515167,
		0.941806, -0.020500, 0.335531,
		20.840553, 34.011848, 23.670387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616241, 34.347797, 22.922762>,  <20.181290, 34.026199, 23.435516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616241, 34.347797, 22.922762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861053, 34.106441, 23.127247>,  <21.007940, 33.961628, 23.249937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861053, 34.106441, 23.127247>,  <20.616241, 34.347797, 22.922762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861053, 34.106441, 23.127247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185002, -0.519243, -0.834362,
		0.768891, 0.605230, -0.206163,
		0.612030, -0.603393, 0.511210,
		21.044662, 33.925423, 23.280609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102789, 34.203968, 22.493607>,  <20.616241, 34.347797, 22.922762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102789, 34.203968, 22.493607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.178688, 33.905205, 22.748516>,  <21.224228, 33.725945, 22.901463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.178688, 33.905205, 22.748516>,  <21.102789, 34.203968, 22.493607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.178688, 33.905205, 22.748516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242145, -0.593416, -0.767609,
		0.951505, 0.299964, 0.068262,
		0.189748, -0.746913, 0.637273,
		21.235613, 33.681129, 22.939697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676947, 33.908829, 22.194252>,  <21.102789, 34.203968, 22.493607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676947, 33.908829, 22.194252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552488, 33.620434, 22.441917>,  <21.477814, 33.447395, 22.590517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552488, 33.620434, 22.441917>,  <21.676947, 33.908829, 22.194252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552488, 33.620434, 22.441917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216390, -0.688136, -0.692563,
		0.925400, -0.081506, 0.370125,
		-0.311144, -0.720989, 0.619164,
		21.459145, 33.404137, 22.627666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230967, 33.415222, 22.161676>,  <21.676947, 33.908829, 22.194252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230967, 33.415222, 22.161676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908449, 33.220997, 22.296803>,  <21.714939, 33.104462, 22.377878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908449, 33.220997, 22.296803>,  <22.230967, 33.415222, 22.161676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908449, 33.220997, 22.296803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300836, -0.828338, -0.472603,
		0.509305, -0.279429, 0.813958,
		-0.806292, -0.485567, 0.337814,
		21.666561, 33.075325, 22.398148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.548967, 32.813103, 22.445591>,  <22.230967, 33.415222, 22.161676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.548967, 32.813103, 22.445591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165112, 32.744919, 22.356113>,  <21.934797, 32.704010, 22.302427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165112, 32.744919, 22.356113>,  <22.548967, 32.813103, 22.445591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165112, 32.744919, 22.356113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260542, -0.838292, -0.478940,
		-0.105881, -0.517891, 0.848869,
		-0.959639, -0.170455, -0.223692,
		21.877220, 32.693783, 22.289005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.481026, 31.943687, 22.434097>,  <22.548967, 32.813103, 22.445591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.481026, 31.943687, 22.434097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.134741, 32.078369, 22.285950>,  <21.926970, 32.159180, 22.197062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.134741, 32.078369, 22.285950>,  <22.481026, 31.943687, 22.434097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.134741, 32.078369, 22.285950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075626, -0.819425, -0.568175,
		-0.494797, -0.463867, 0.734850,
		-0.865712, 0.336705, -0.370368,
		21.875027, 32.179382, 22.174839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.004324, 31.390858, 22.413387>,  <22.481026, 31.943687, 22.434097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.004324, 31.390858, 22.413387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867741, 31.651924, 22.142853>,  <21.785789, 31.808563, 21.980532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.867741, 31.651924, 22.142853>,  <22.004324, 31.390858, 22.413387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867741, 31.651924, 22.142853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127060, -0.745036, -0.654810,
		-0.931268, -0.137656, 0.337328,
		-0.341460, 0.652665, -0.676338,
		21.765303, 31.847723, 21.939951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395653, 31.048883, 22.025190>,  <22.004324, 31.390858, 22.413387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395653, 31.048883, 22.025190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.521870, 31.335888, 21.776798>,  <21.597599, 31.508091, 21.627764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.521870, 31.335888, 21.776798>,  <21.395653, 31.048883, 22.025190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.521870, 31.335888, 21.776798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158118, -0.605505, -0.779976,
		-0.935646, 0.344302, -0.077610,
		0.315540, 0.717509, -0.620979,
		21.616531, 31.551140, 21.590506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945061, 30.930880, 21.452484>,  <21.395653, 31.048883, 22.025190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945061, 30.930880, 21.452484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275223, 31.133373, 21.352539>,  <21.473320, 31.254869, 21.292572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275223, 31.133373, 21.352539>,  <20.945061, 30.930880, 21.452484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275223, 31.133373, 21.352539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054508, -0.511988, -0.857261,
		-0.561902, 0.693969, -0.450192,
		0.825406, 0.506236, -0.249860,
		21.522844, 31.285244, 21.277580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884581, 30.975418, 20.798506>,  <20.945061, 30.930880, 21.452484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884581, 30.975418, 20.798506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.273844, 31.058762, 20.837589>,  <21.507402, 31.108768, 20.861040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.273844, 31.058762, 20.837589>,  <20.884581, 30.975418, 20.798506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.273844, 31.058762, 20.837589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154014, -0.274175, -0.949267,
		-0.171000, 0.938837, -0.298906,
		0.973159, 0.208361, 0.097710,
		21.565792, 31.121269, 20.866901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026560, 31.428621, 20.324856>,  <20.884581, 30.975418, 20.798506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026560, 31.428621, 20.324856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.381172, 31.260941, 20.403175>,  <21.593939, 31.160332, 20.450167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.381172, 31.260941, 20.403175>,  <21.026560, 31.428621, 20.324856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.381172, 31.260941, 20.403175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157366, -0.124760, -0.979628,
		0.435089, 0.899280, -0.044635,
		0.886529, -0.419201, 0.195798,
		21.647131, 31.135180, 20.461914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.550095, 31.732471, 19.868055>,  <21.026560, 31.428621, 20.324856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.550095, 31.732471, 19.868055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.738871, 31.397007, 19.976807>,  <21.852137, 31.195728, 20.042057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.738871, 31.397007, 19.976807>,  <21.550095, 31.732471, 19.868055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.738871, 31.397007, 19.976807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273331, -0.154000, -0.949512,
		0.838190, 0.522425, 0.156554,
		0.471940, -0.838663, 0.271877,
		21.880453, 31.145409, 20.058371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.227381, 31.804031, 19.455196>,  <21.550095, 31.732471, 19.868055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.227381, 31.804031, 19.455196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147060, 31.427193, 19.562630>,  <22.098867, 31.201090, 19.627089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.147060, 31.427193, 19.562630>,  <22.227381, 31.804031, 19.455196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147060, 31.427193, 19.562630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326259, -0.322828, -0.888447,
		0.923707, -0.090774, 0.372191,
		-0.200802, -0.942095, 0.268582,
		22.086821, 31.144564, 19.643204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.822683, 31.358067, 19.228262>,  <22.227381, 31.804031, 19.455196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.822683, 31.358067, 19.228262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.492994, 31.135643, 19.271069>,  <22.295181, 31.002190, 19.296753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.492994, 31.135643, 19.271069>,  <22.822683, 31.358067, 19.228262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492994, 31.135643, 19.271069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252550, -0.530127, -0.809435,
		0.506827, -0.640128, 0.577376,
		-0.824224, -0.556059, 0.107019,
		22.245728, 30.968824, 19.303175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.000404, 30.665592, 19.218214>,  <22.822683, 31.358067, 19.228262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.000404, 30.665592, 19.218214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613697, 30.687069, 19.118237>,  <22.381672, 30.699955, 19.058250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613697, 30.687069, 19.118237>,  <23.000404, 30.665592, 19.218214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.613697, 30.687069, 19.118237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195593, -0.474218, -0.858406,
		-0.164615, -0.878769, 0.447959,
		-0.966770, 0.053689, -0.249944,
		22.323666, 30.703176, 19.043253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.989929, 30.137619, 18.669819>,  <23.000404, 30.665592, 19.218214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.989929, 30.137619, 18.669819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.610336, 30.259159, 18.636093>,  <22.382580, 30.332083, 18.615858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.610336, 30.259159, 18.636093>,  <22.989929, 30.137619, 18.669819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.610336, 30.259159, 18.636093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053785, -0.419437, -0.906190,
		-0.310707, -0.855423, 0.414381,
		-0.948983, 0.303847, -0.084313,
		22.325642, 30.350313, 18.610800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630777, 29.552647, 18.500277>,  <22.989929, 30.137619, 18.669819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630777, 29.552647, 18.500277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.447104, 29.875351, 18.351528>,  <22.336899, 30.068974, 18.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.447104, 29.875351, 18.351528>,  <22.630777, 29.552647, 18.500277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447104, 29.875351, 18.351528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090465, -0.373970, -0.923018,
		-0.883724, -0.457475, 0.098737,
		-0.459182, 0.806761, -0.371872,
		22.309349, 30.117378, 18.239967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.223469, 29.350046, 17.999325>,  <22.630777, 29.552647, 18.500277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.223469, 29.350046, 17.999325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221918, 29.740551, 17.912701>,  <22.220987, 29.974854, 17.860725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221918, 29.740551, 17.912701>,  <22.223469, 29.350046, 17.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221918, 29.740551, 17.912701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015701, -0.216597, -0.976135,
		-0.999869, -0.000383, 0.016168,
		-0.003876, 0.976261, -0.216563,
		22.220755, 30.033430, 17.847733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.700853, 29.483374, 17.355064>,  <22.223469, 29.350046, 17.999325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.700853, 29.483374, 17.355064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972996, 29.775616, 17.378155>,  <22.136280, 29.950962, 17.392008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972996, 29.775616, 17.378155>,  <21.700853, 29.483374, 17.355064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972996, 29.775616, 17.378155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011367, 0.089273, -0.995942,
		-0.732795, 0.676937, 0.069042,
		0.680354, 0.730607, 0.057724,
		22.177101, 29.994799, 17.395472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522873, 30.052708, 16.877838>,  <21.700853, 29.483374, 17.355064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522873, 30.052708, 16.877838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915100, 30.033951, 16.954037>,  <22.150436, 30.022697, 16.999756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915100, 30.033951, 16.954037>,  <21.522873, 30.052708, 16.877838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915100, 30.033951, 16.954037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193496, 0.071073, -0.978523,
		0.032345, 0.996368, 0.078765,
		0.980568, -0.046891, 0.190494,
		22.209270, 30.019884, 17.011185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959106, 30.626314, 16.564362>,  <21.522873, 30.052708, 16.877838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959106, 30.626314, 16.564362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.086866, 30.249043, 16.601009>,  <22.163523, 30.022678, 16.622999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.086866, 30.249043, 16.601009>,  <21.959106, 30.626314, 16.564362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.086866, 30.249043, 16.601009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269958, -0.002114, -0.962870,
		0.908354, 0.332275, 0.253943,
		0.319401, -0.943180, 0.091620,
		22.182686, 29.966089, 16.628496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205589, 31.414371, 16.540436>,  <21.959106, 30.626314, 16.564362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205589, 31.414371, 16.540436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.319427, 31.454948, 16.159130>,  <22.387732, 31.479294, 15.930346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.319427, 31.454948, 16.159130>,  <22.205589, 31.414371, 16.540436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.319427, 31.454948, 16.159130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006314, 0.994562, 0.103950,
		0.958626, -0.023565, 0.283690,
		0.284597, 0.101441, -0.953265,
		22.404806, 31.485380, 15.873151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.845991, 31.764662, 16.584129>,  <22.205589, 31.414371, 16.540436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.845991, 31.764662, 16.584129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633732, 31.831562, 16.251759>,  <22.506376, 31.871702, 16.052336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.633732, 31.831562, 16.251759>,  <22.845991, 31.764662, 16.584129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633732, 31.831562, 16.251759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060219, 0.970421, 0.233789,
		0.845449, 0.174098, -0.504882,
		-0.530650, 0.167253, -0.830925,
		22.474537, 31.881739, 16.002481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102133, 32.321266, 16.313238>,  <22.845991, 31.764662, 16.584129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102133, 32.321266, 16.313238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.747650, 32.303936, 16.128735>,  <22.534960, 32.293537, 16.018032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.747650, 32.303936, 16.128735>,  <23.102133, 32.321266, 16.313238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.747650, 32.303936, 16.128735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211071, 0.924045, 0.318733,
		0.412414, 0.379821, -0.828040,
		-0.886208, -0.043325, -0.461258,
		22.481789, 32.290939, 15.990357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.944876, 32.953682, 15.940701>,  <23.102133, 32.321266, 16.313238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.944876, 32.953682, 15.940701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.604040, 32.797489, 16.080112>,  <22.399540, 32.703773, 16.163759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.604040, 32.797489, 16.080112>,  <22.944876, 32.953682, 15.940701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.604040, 32.797489, 16.080112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228151, 0.876403, 0.424105,
		-0.471057, 0.281857, -0.835860,
		-0.852087, -0.390480, 0.348530,
		22.348413, 32.680344, 16.184671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.534618, 33.443504, 15.905092>,  <22.944876, 32.953682, 15.940701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.534618, 33.443504, 15.905092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348362, 33.212444, 16.173271>,  <22.236609, 33.073807, 16.334179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348362, 33.212444, 16.173271>,  <22.534618, 33.443504, 15.905092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348362, 33.212444, 16.173271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040185, 0.770610, 0.636039,
		-0.884060, 0.269225, -0.382041,
		-0.465643, -0.577649, 0.670446,
		22.208670, 33.039150, 16.374405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.085384, 33.882607, 16.259516>,  <22.534618, 33.443504, 15.905092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.085384, 33.882607, 16.259516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130157, 33.570080, 16.505123>,  <22.157021, 33.382565, 16.652489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130157, 33.570080, 16.505123>,  <22.085384, 33.882607, 16.259516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130157, 33.570080, 16.505123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227760, 0.581283, 0.781176,
		-0.967262, -0.227288, -0.112888,
		0.111932, -0.781313, 0.614020,
		22.163736, 33.335686, 16.689329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456497, 33.759346, 16.656960>,  <22.085384, 33.882607, 16.259516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456497, 33.759346, 16.656960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754200, 33.593620, 16.866501>,  <21.932821, 33.494183, 16.992226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754200, 33.593620, 16.866501>,  <21.456497, 33.759346, 16.656960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.754200, 33.593620, 16.866501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250991, 0.553348, 0.794235,
		-0.618940, -0.722597, 0.307843,
		0.744256, -0.414318, 0.523855,
		21.977476, 33.469326, 17.023657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.130394, 33.436474, 17.169050>,  <21.456497, 33.759346, 16.656960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.130394, 33.436474, 17.169050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.504576, 33.527359, 17.277344>,  <21.729086, 33.581890, 17.342319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.504576, 33.527359, 17.277344>,  <21.130394, 33.436474, 17.169050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504576, 33.527359, 17.277344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339652, 0.366023, 0.866408,
		0.097764, -0.902442, 0.419572,
		0.935456, 0.227212, 0.270732,
		21.785213, 33.595524, 17.358562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109097, 33.299072, 17.903782>,  <21.130394, 33.436474, 17.169050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109097, 33.299072, 17.903782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.433868, 33.518944, 17.825169>,  <21.628733, 33.650867, 17.778002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.433868, 33.518944, 17.825169>,  <21.109097, 33.299072, 17.903782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.433868, 33.518944, 17.825169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052967, 0.404652, 0.912936,
		0.581346, -0.730830, 0.357664,
		0.811930, 0.549676, -0.196533,
		21.677448, 33.683846, 17.766209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406649, 33.431484, 18.587276>,  <21.109097, 33.299072, 17.903782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406649, 33.431484, 18.587276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580442, 33.725990, 18.379765>,  <21.684719, 33.902695, 18.255259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580442, 33.725990, 18.379765>,  <21.406649, 33.431484, 18.587276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580442, 33.725990, 18.379765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009301, 0.579623, 0.814832,
		0.900632, -0.349206, 0.258684,
		0.434483, 0.736269, -0.518779,
		21.710787, 33.946873, 18.224131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.897938, 33.654491, 18.985004>,  <21.406649, 33.431484, 18.587276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.897938, 33.654491, 18.985004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878641, 33.958473, 18.725731>,  <21.867064, 34.140862, 18.570168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.878641, 33.958473, 18.725731>,  <21.897938, 33.654491, 18.985004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878641, 33.958473, 18.725731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017170, 0.648212, 0.761266,
		0.998688, 0.047855, -0.018223,
		-0.048242, 0.759955, -0.648183,
		21.864168, 34.186459, 18.531277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.326342, 34.159492, 19.271507>,  <21.897938, 33.654491, 18.985004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.326342, 34.159492, 19.271507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097651, 34.357159, 19.009537>,  <21.960436, 34.475758, 18.852354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097651, 34.357159, 19.009537>,  <22.326342, 34.159492, 19.271507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097651, 34.357159, 19.009537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127019, 0.735320, 0.665711,
		0.810552, 0.463793, -0.357633,
		-0.571727, 0.494167, -0.654926,
		21.926132, 34.505409, 18.813059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596783, 34.821270, 19.194141>,  <22.326342, 34.159492, 19.271507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596783, 34.821270, 19.194141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210909, 34.854073, 19.094017>,  <21.979383, 34.873753, 19.033943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210909, 34.854073, 19.094017>,  <22.596783, 34.821270, 19.194141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210909, 34.854073, 19.094017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097289, 0.772165, 0.627930,
		0.244774, 0.630108, -0.736919,
		-0.964687, 0.082007, -0.250309,
		21.921503, 34.878674, 19.018925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.475203, 35.533539, 19.172932>,  <22.596783, 34.821270, 19.194141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.475203, 35.533539, 19.172932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099236, 35.407742, 19.226070>,  <21.873655, 35.332264, 19.257954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099236, 35.407742, 19.226070>,  <22.475203, 35.533539, 19.172932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099236, 35.407742, 19.226070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154580, 0.738984, 0.655750,
		-0.304399, 0.595817, -0.743198,
		-0.939918, -0.314493, 0.132845,
		21.817261, 35.313393, 19.265924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.085815, 36.093079, 19.190079>,  <22.475203, 35.533539, 19.172932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.085815, 36.093079, 19.190079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822702, 35.833416, 19.342880>,  <21.664835, 35.677620, 19.434561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822702, 35.833416, 19.342880>,  <22.085815, 36.093079, 19.190079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822702, 35.833416, 19.342880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288872, 0.685806, 0.667999,
		-0.695614, 0.329046, -0.638632,
		-0.657780, -0.649152, 0.382004,
		21.625368, 35.638672, 19.457481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.518669, 36.427608, 19.319611>,  <22.085815, 36.093079, 19.190079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.518669, 36.427608, 19.319611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.437115, 36.108856, 19.547085>,  <21.388182, 35.917603, 19.683569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.437115, 36.108856, 19.547085>,  <21.518669, 36.427608, 19.319611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.437115, 36.108856, 19.547085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311063, 0.603518, 0.734170,
		-0.928262, -0.027210, -0.370931,
		-0.203887, -0.796885, 0.568687,
		21.375948, 35.869789, 19.717691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845646, 36.467976, 19.649706>,  <21.518669, 36.427608, 19.319611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845646, 36.467976, 19.649706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045231, 36.235260, 19.906628>,  <21.164982, 36.095631, 20.060781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045231, 36.235260, 19.906628>,  <20.845646, 36.467976, 19.649706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045231, 36.235260, 19.906628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354895, 0.538985, 0.763901,
		-0.790623, -0.609109, 0.062459,
		0.498964, -0.581791, 0.642304,
		21.194920, 36.060722, 20.099319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369846, 36.257412, 20.224531>,  <20.845646, 36.467976, 19.649706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369846, 36.257412, 20.224531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735676, 36.200882, 20.376099>,  <20.955173, 36.166965, 20.467039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735676, 36.200882, 20.376099>,  <20.369846, 36.257412, 20.224531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735676, 36.200882, 20.376099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288392, 0.428953, 0.856055,
		-0.283518, -0.892204, 0.351553,
		0.914575, -0.141322, 0.378921,
		21.010048, 36.158485, 20.489775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.354925, 35.837795, 20.887121>,  <20.369846, 36.257412, 20.224531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.354925, 35.837795, 20.887121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.706141, 36.029102, 20.880142>,  <20.916870, 36.143887, 20.875956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.706141, 36.029102, 20.880142>,  <20.354925, 35.837795, 20.887121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.706141, 36.029102, 20.880142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129150, 0.271886, 0.953624,
		0.460835, -0.835065, 0.300495,
		0.878039, 0.478272, -0.017446,
		20.969553, 36.172585, 20.874908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765091, 35.505077, 21.305643>,  <20.354925, 35.837795, 20.887121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765091, 35.505077, 21.305643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931017, 35.868931, 21.296787>,  <21.030573, 36.087242, 21.291473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.931017, 35.868931, 21.296787>,  <20.765091, 35.505077, 21.305643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931017, 35.868931, 21.296787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117738, 0.077789, 0.989993,
		0.902257, -0.408055, 0.139367,
		0.414813, 0.909637, -0.022142,
		21.055460, 36.141823, 21.290144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251549, 35.472664, 21.876308>,  <20.765091, 35.505077, 21.305643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251549, 35.472664, 21.876308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209354, 35.864410, 21.807365>,  <21.184038, 36.099461, 21.766001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209354, 35.864410, 21.807365>,  <21.251549, 35.472664, 21.876308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209354, 35.864410, 21.807365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261655, 0.139880, 0.954971,
		0.959380, 0.145833, 0.241502,
		-0.105485, 0.979371, -0.172356,
		21.177710, 36.158222, 21.755659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449125, 35.800064, 22.484026>,  <21.251549, 35.472664, 21.876308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449125, 35.800064, 22.484026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.238911, 36.084240, 22.296803>,  <21.112782, 36.254745, 22.184467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.238911, 36.084240, 22.296803>,  <21.449125, 35.800064, 22.484026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238911, 36.084240, 22.296803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305862, 0.355603, 0.883173,
		0.793888, 0.607303, 0.030415,
		-0.525538, 0.710443, -0.468060,
		21.081249, 36.297375, 22.156384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.421478, 36.346313, 23.021353>,  <21.449125, 35.800064, 22.484026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.421478, 36.346313, 23.021353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.141857, 36.471741, 22.764294>,  <20.974085, 36.546997, 22.610058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.141857, 36.471741, 22.764294>,  <21.421478, 36.346313, 23.021353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.141857, 36.471741, 22.764294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512530, 0.406984, 0.756093,
		0.498633, 0.857928, -0.123793,
		-0.699055, 0.313566, -0.642650,
		20.932140, 36.565811, 22.571499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250246, 37.043804, 23.131647>,  <21.421478, 36.346313, 23.021353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250246, 37.043804, 23.131647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926491, 36.893711, 22.950939>,  <20.732237, 36.803658, 22.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926491, 36.893711, 22.950939>,  <21.250246, 37.043804, 23.131647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.926491, 36.893711, 22.950939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579775, 0.387997, 0.716463,
		-0.093554, 0.841820, -0.531589,
		-0.809388, -0.375230, -0.451768,
		20.683674, 36.781143, 22.815409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808109, 37.609276, 23.058846>,  <21.250246, 37.043804, 23.131647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808109, 37.609276, 23.058846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.591282, 37.274780, 23.025703>,  <20.461185, 37.074081, 23.005817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.591282, 37.274780, 23.025703>,  <20.808109, 37.609276, 23.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.591282, 37.274780, 23.025703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651719, 0.356105, 0.669665,
		-0.530496, 0.417002, -0.738027,
		-0.542066, -0.836241, -0.082856,
		20.428661, 37.023907, 23.000847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092678, 37.770710, 22.782005>,  <20.808109, 37.609276, 23.058846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092678, 37.770710, 22.782005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055576, 37.418102, 22.967182>,  <20.033316, 37.206535, 23.078287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.055576, 37.418102, 22.967182>,  <20.092678, 37.770710, 22.782005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.055576, 37.418102, 22.967182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813485, 0.335193, 0.475276,
		-0.574141, -0.332510, -0.748197,
		-0.092757, -0.881523, 0.462940,
		20.027750, 37.153645, 23.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476782, 37.469070, 22.424126>,  <20.092678, 37.770710, 22.782005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476782, 37.469070, 22.424126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543945, 37.352772, 22.800907>,  <19.584244, 37.282993, 23.026976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543945, 37.352772, 22.800907>,  <19.476782, 37.469070, 22.424126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543945, 37.352772, 22.800907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856107, 0.430741, 0.285557,
		-0.488761, -0.854360, -0.176582,
		0.167908, -0.290742, 0.941953,
		19.594318, 37.265549, 23.083492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851480, 37.287220, 22.653969>,  <19.476782, 37.469070, 22.424126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851480, 37.287220, 22.653969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.065853, 37.323467, 22.989723>,  <19.194477, 37.345215, 23.191175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.065853, 37.323467, 22.989723>,  <18.851480, 37.287220, 22.653969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065853, 37.323467, 22.989723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802587, 0.363195, 0.473226,
		-0.261978, -0.927296, 0.267374,
		0.535930, 0.090616, 0.839385,
		19.226633, 37.350651, 23.241539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570238, 36.897896, 23.219566>,  <18.851480, 37.287220, 22.653969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570238, 36.897896, 23.219566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751299, 37.219040, 23.374752>,  <18.859936, 37.411728, 23.467863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751299, 37.219040, 23.374752>,  <18.570238, 36.897896, 23.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751299, 37.219040, 23.374752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849311, 0.255660, 0.461854,
		0.271617, -0.538566, 0.797603,
		0.452654, 0.802860, 0.387968,
		18.887094, 37.459900, 23.491142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066965, 37.103542, 23.736490>,  <18.570238, 36.897896, 23.219566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066965, 37.103542, 23.736490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315733, 37.411728, 23.680496>,  <18.464994, 37.596638, 23.646900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315733, 37.411728, 23.680496>,  <18.066965, 37.103542, 23.736490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315733, 37.411728, 23.680496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657990, 0.611082, 0.440031,
		0.424572, -0.181555, 0.887004,
		0.621922, 0.770465, -0.139987,
		18.502310, 37.642868, 23.638500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781473, 37.570103, 24.181904>,  <18.066965, 37.103542, 23.736490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781473, 37.570103, 24.181904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048868, 37.794651, 23.986767>,  <18.209305, 37.929379, 23.869684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048868, 37.794651, 23.986767>,  <17.781473, 37.570103, 24.181904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048868, 37.794651, 23.986767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319062, 0.808984, 0.493705,
		0.671807, -0.174384, 0.719907,
		0.668487, 0.561369, -0.487842,
		18.249414, 37.963062, 23.840414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.977905, 23.960690, 28.245268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.357418, 23.955456, 28.119003>,  <28.585125, 23.952314, 28.043245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.357418, 23.955456, 28.119003>,  <27.977905, 23.960690, 28.245268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357418, 23.955456, 28.119003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143686, 0.871956, -0.468025,
		0.281365, 0.489410, 0.825416,
		0.948782, -0.013085, -0.315660,
		28.642054, 23.951530, 28.024305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429092, 24.584627, 28.491642>,  <27.977905, 23.960690, 28.245268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429092, 24.584627, 28.491642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603365, 24.430645, 28.166191>,  <28.707930, 24.338255, 27.970921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603365, 24.430645, 28.166191>,  <28.429092, 24.584627, 28.491642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603365, 24.430645, 28.166191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161086, 0.855990, -0.491256,
		0.885569, 0.345095, 0.310929,
		0.435683, -0.384955, -0.813628,
		28.734070, 24.315159, 27.922102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802246, 25.202364, 28.271601>,  <28.429092, 24.584627, 28.491642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802246, 25.202364, 28.271601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.840593, 24.964638, 27.952202>,  <28.863602, 24.822002, 27.760563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.840593, 24.964638, 27.952202>,  <28.802246, 25.202364, 28.271601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840593, 24.964638, 27.952202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091663, 0.804054, -0.587448,
		0.991165, -0.016875, 0.131560,
		0.095868, -0.594316, -0.798497,
		28.869354, 24.786343, 27.712652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377169, 25.516232, 27.938494>,  <28.802246, 25.202364, 28.271601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377169, 25.516232, 27.938494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.195976, 25.302673, 27.652905>,  <29.087261, 25.174538, 27.481550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.195976, 25.302673, 27.652905>,  <29.377169, 25.516232, 27.938494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195976, 25.302673, 27.652905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015495, 0.796016, -0.605077,
		0.891385, -0.285152, -0.352309,
		-0.452982, -0.533897, -0.713975,
		29.060081, 25.142504, 27.438711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829090, 25.509573, 27.358175>,  <29.377169, 25.516232, 27.938494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829090, 25.509573, 27.358175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.459158, 25.435349, 27.225353>,  <29.237200, 25.390814, 27.145660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.459158, 25.435349, 27.225353>,  <29.829090, 25.509573, 27.358175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459158, 25.435349, 27.225353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032634, 0.831018, -0.555287,
		0.378983, -0.524381, -0.762493,
		-0.924828, -0.185562, -0.332054,
		29.181709, 25.379681, 27.125736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840319, 25.532984, 26.551670>,  <29.829090, 25.509573, 27.358175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840319, 25.532984, 26.551670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.456295, 25.574577, 26.655575>,  <29.225882, 25.599533, 26.717918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.456295, 25.574577, 26.655575>,  <29.840319, 25.532984, 26.551670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456295, 25.574577, 26.655575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096587, 0.748151, -0.656461,
		-0.262603, -0.655330, -0.708225,
		-0.960058, 0.103983, 0.259763,
		29.168278, 25.605772, 26.733503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554249, 25.610350, 25.931393>,  <29.840319, 25.532984, 26.551670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554249, 25.610350, 25.931393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.299751, 25.759853, 26.201355>,  <29.147053, 25.849556, 26.363333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.299751, 25.759853, 26.201355>,  <29.554249, 25.610350, 25.931393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299751, 25.759853, 26.201355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085617, 0.835199, -0.543243,
		-0.766721, -0.403420, -0.499391,
		-0.636246, 0.373759, 0.674904,
		29.108877, 25.871981, 26.403826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007006, 25.861179, 25.545202>,  <29.554249, 25.610350, 25.931393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007006, 25.861179, 25.545202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.983856, 26.049721, 25.897221>,  <28.969967, 26.162846, 26.108431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.983856, 26.049721, 25.897221>,  <29.007006, 25.861179, 25.545202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983856, 26.049721, 25.897221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370430, 0.808452, -0.457370,
		-0.927056, -0.352465, 0.127813,
		-0.057876, 0.471353, 0.880044,
		28.966494, 26.191126, 26.161234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306673, 26.152750, 25.573606>,  <29.007006, 25.861179, 25.545202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306673, 26.152750, 25.573606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536203, 26.364418, 25.823631>,  <28.673922, 26.491419, 25.973646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536203, 26.364418, 25.823631>,  <28.306673, 26.152750, 25.573606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536203, 26.364418, 25.823631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433438, 0.843800, -0.316438,
		-0.694876, -0.089344, 0.713558,
		0.573828, 0.529169, 0.625062,
		28.708351, 26.523169, 26.011150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887726, 26.654903, 25.760128>,  <28.306673, 26.152750, 25.573606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887726, 26.654903, 25.760128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.220230, 26.824425, 25.904015>,  <28.419733, 26.926138, 25.990347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.220230, 26.824425, 25.904015>,  <27.887726, 26.654903, 25.760128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220230, 26.824425, 25.904015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389748, 0.905752, -0.166461,
		-0.396361, -0.001826, 0.918093,
		0.831261, 0.423803, 0.359717,
		28.469608, 26.951565, 26.011930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776867, 27.112312, 26.375412>,  <27.887726, 26.654903, 25.760128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776867, 27.112312, 26.375412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.100464, 27.266838, 26.198193>,  <28.294622, 27.359552, 26.091862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.100464, 27.266838, 26.198193>,  <27.776867, 27.112312, 26.375412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100464, 27.266838, 26.198193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496643, 0.852393, -0.163621,
		0.314441, 0.352404, 0.881441,
		0.808995, 0.386313, -0.443046,
		28.343163, 27.382732, 26.065279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800270, 27.864378, 26.558256>,  <27.776867, 27.112312, 26.375412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800270, 27.864378, 26.558256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059715, 27.828651, 26.255913>,  <28.215384, 27.807215, 26.074507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059715, 27.828651, 26.255913>,  <27.800270, 27.864378, 26.558256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059715, 27.828651, 26.255913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136513, 0.963335, -0.230978,
		0.748775, 0.253000, 0.612640,
		0.648614, -0.089317, -0.755859,
		28.254299, 27.801857, 26.029156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369123, 28.436792, 26.660353>,  <27.800270, 27.864378, 26.558256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369123, 28.436792, 26.660353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.341433, 28.320156, 26.278740>,  <28.324818, 28.250174, 26.049772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.341433, 28.320156, 26.278740>,  <28.369123, 28.436792, 26.660353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341433, 28.320156, 26.278740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127928, 0.951028, -0.281391,
		0.989365, 0.102567, -0.103140,
		-0.069228, -0.291593, -0.954034,
		28.320663, 28.232677, 25.992529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542730, 29.023491, 26.373320>,  <28.369123, 28.436792, 26.660353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542730, 29.023491, 26.373320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.401932, 28.817963, 26.060375>,  <28.317453, 28.694647, 25.872608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.401932, 28.817963, 26.060375>,  <28.542730, 29.023491, 26.373320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401932, 28.817963, 26.060375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292684, 0.854361, -0.429422,
		0.889064, 0.077831, -0.451118,
		-0.351995, -0.513819, -0.782362,
		28.296333, 28.663816, 25.825666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809246, 29.417864, 25.893881>,  <28.542730, 29.023491, 26.373320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809246, 29.417864, 25.893881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.485567, 29.222248, 25.763626>,  <28.291359, 29.104877, 25.685474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.485567, 29.222248, 25.763626>,  <28.809246, 29.417864, 25.893881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485567, 29.222248, 25.763626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337371, 0.840514, -0.423930,
		0.481020, -0.233183, -0.845130,
		-0.809197, -0.489041, -0.325635,
		28.242807, 29.075535, 25.665936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746162, 29.640593, 25.289915>,  <28.809246, 29.417864, 25.893881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746162, 29.640593, 25.289915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.384132, 29.478188, 25.340500>,  <28.166914, 29.380745, 25.370852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.384132, 29.478188, 25.340500>,  <28.746162, 29.640593, 25.289915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384132, 29.478188, 25.340500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398245, 0.704967, -0.586875,
		0.149125, -0.581530, -0.799740,
		-0.905076, -0.406010, 0.126464,
		28.112610, 29.356384, 25.378439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504784, 29.752506, 24.654600>,  <28.746162, 29.640593, 25.289915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504784, 29.752506, 24.654600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.186686, 29.663723, 24.880280>,  <27.995827, 29.610453, 25.015686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.186686, 29.663723, 24.880280>,  <28.504784, 29.752506, 24.654600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186686, 29.663723, 24.880280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504731, 0.757941, -0.413246,
		-0.335904, -0.613399, -0.714780,
		-0.795246, -0.221960, 0.564197,
		27.948112, 29.597136, 25.049540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852648, 29.779448, 24.225723>,  <28.504784, 29.752506, 24.654600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852648, 29.779448, 24.225723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.700493, 29.789257, 24.595524>,  <27.609200, 29.795143, 24.817404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.700493, 29.789257, 24.595524>,  <27.852648, 29.779448, 24.225723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700493, 29.789257, 24.595524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550321, 0.797402, -0.247582,
		-0.743273, -0.602949, -0.289823,
		-0.380385, 0.024525, 0.924503,
		27.586378, 29.796614, 24.872875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129406, 29.654333, 24.137959>,  <27.852648, 29.779448, 24.225723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129406, 29.654333, 24.137959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.251808, 29.868198, 24.453045>,  <27.325251, 29.996517, 24.642097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.251808, 29.868198, 24.453045>,  <27.129406, 29.654333, 24.137959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251808, 29.868198, 24.453045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584843, 0.758449, -0.287600,
		-0.751211, -0.372682, 0.544784,
		0.306008, 0.534662, 0.787716,
		27.343611, 30.028597, 24.689360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520813, 29.972126, 24.465223>,  <27.129406, 29.654333, 24.137959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520813, 29.972126, 24.465223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.810328, 30.197968, 24.623898>,  <26.984035, 30.333471, 24.719103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.810328, 30.197968, 24.623898>,  <26.520813, 29.972126, 24.465223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810328, 30.197968, 24.623898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461410, 0.823466, -0.330159,
		-0.513067, 0.055928, 0.856525,
		0.723784, 0.564602, 0.396687,
		27.027462, 30.367348, 24.742903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110022, 30.469885, 24.838488>,  <26.520813, 29.972126, 24.465223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110022, 30.469885, 24.838488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.471014, 30.628574, 24.771389>,  <26.687609, 30.723789, 24.731129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.471014, 30.628574, 24.771389>,  <26.110022, 30.469885, 24.838488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471014, 30.628574, 24.771389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428320, 0.867738, -0.252137,
		0.045532, 0.299398, 0.953041,
		0.902479, 0.396726, -0.167748,
		26.741758, 30.747593, 24.721064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093658, 31.064112, 25.225937>,  <26.110022, 30.469885, 24.838488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093658, 31.064112, 25.225937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.391582, 31.121166, 24.965195>,  <26.570337, 31.155399, 24.808750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.391582, 31.121166, 24.965195>,  <26.093658, 31.064112, 25.225937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391582, 31.121166, 24.965195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395658, 0.881034, -0.259295,
		0.537322, 0.451037, 0.712637,
		0.744808, 0.142636, -0.651855,
		26.615025, 31.163958, 24.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584076, 31.142422, 24.624331>,  <26.093658, 31.064112, 25.225937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584076, 31.142422, 24.624331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.199039, 31.035057, 24.609520>,  <24.968018, 30.970638, 24.600634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.199039, 31.035057, 24.609520>,  <25.584076, 31.142422, 24.624331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199039, 31.035057, 24.609520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159904, -0.673070, 0.722085,
		-0.218739, 0.689153, 0.690812,
		-0.962592, -0.268412, -0.037029,
		24.910261, 30.954533, 24.598412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353220, 30.938951, 25.214010>,  <25.584076, 31.142422, 24.624331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353220, 30.938951, 25.214010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.052946, 30.777824, 25.004551>,  <24.872782, 30.681149, 24.878876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.052946, 30.777824, 25.004551>,  <25.353220, 30.938951, 25.214010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052946, 30.777824, 25.004551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038334, -0.764721, 0.643220,
		-0.659545, 0.502930, 0.558625,
		-0.750687, -0.402818, -0.523647,
		24.827740, 30.656979, 24.847456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792255, 30.765772, 25.701374>,  <25.353220, 30.938951, 25.214010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792255, 30.765772, 25.701374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.764050, 30.553169, 25.363728>,  <24.747126, 30.425608, 25.161140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.764050, 30.553169, 25.363728>,  <24.792255, 30.765772, 25.701374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764050, 30.553169, 25.363728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120390, -0.844570, 0.521735,
		-0.990219, -0.064834, 0.123541,
		-0.070513, -0.531505, -0.844115,
		24.742895, 30.393717, 25.110493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443226, 30.285854, 25.925428>,  <24.792255, 30.765772, 25.701374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443226, 30.285854, 25.925428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.600508, 30.152901, 25.582520>,  <24.694876, 30.073130, 25.376774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.600508, 30.152901, 25.582520>,  <24.443226, 30.285854, 25.925428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600508, 30.152901, 25.582520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244299, -0.861090, 0.445916,
		-0.886402, -0.384766, -0.257383,
		0.393204, -0.332383, -0.857271,
		24.718470, 30.053186, 25.325338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.170418, 29.630400, 25.849335>,  <24.443226, 30.285854, 25.925428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.170418, 29.630400, 25.849335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.501108, 29.629757, 25.624294>,  <24.699522, 29.629372, 25.489269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.501108, 29.629757, 25.624294>,  <24.170418, 29.630400, 25.849335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501108, 29.629757, 25.624294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300138, -0.844550, 0.443455,
		-0.475858, -0.535474, -0.697730,
		0.826726, -0.001607, -0.562602,
		24.749126, 29.629274, 25.455513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.264879, 28.919672, 25.902374>,  <24.170418, 29.630400, 25.849335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.264879, 28.919672, 25.902374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.610155, 29.057369, 25.754646>,  <24.817322, 29.139988, 25.666010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.610155, 29.057369, 25.754646>,  <24.264879, 28.919672, 25.902374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610155, 29.057369, 25.754646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451791, -0.853188, 0.260685,
		-0.225360, -0.391876, -0.891990,
		0.863191, 0.344245, -0.369320,
		24.869112, 29.160643, 25.643850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511621, 28.497833, 25.299049>,  <24.264879, 28.919672, 25.902374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511621, 28.497833, 25.299049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.823721, 28.687763, 25.461903>,  <25.010981, 28.801722, 25.559614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.823721, 28.687763, 25.461903>,  <24.511621, 28.497833, 25.299049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823721, 28.687763, 25.461903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466873, -0.875291, 0.126082,
		0.416226, 0.091704, -0.904625,
		0.780247, 0.474823, 0.407133,
		25.057795, 28.830210, 25.584042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204750, 28.197083, 25.072451>,  <24.511621, 28.497833, 25.299049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204750, 28.197083, 25.072451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.278166, 28.379120, 25.420979>,  <25.322216, 28.488342, 25.630096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.278166, 28.379120, 25.420979>,  <25.204750, 28.197083, 25.072451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278166, 28.379120, 25.420979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575699, -0.768232, 0.279983,
		0.796796, 0.450231, -0.402998,
		0.183539, 0.455095, 0.871322,
		25.333227, 28.515648, 25.682375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758974, 27.887074, 25.318842>,  <25.204750, 28.197083, 25.072451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758974, 27.887074, 25.318842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.668516, 28.083660, 25.655251>,  <25.614243, 28.201612, 25.857096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.668516, 28.083660, 25.655251>,  <25.758974, 27.887074, 25.318842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668516, 28.083660, 25.655251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466044, -0.703572, 0.536460,
		0.855373, 0.513270, -0.069938,
		-0.226143, 0.491468, 0.841023,
		25.600674, 28.231100, 25.907557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441534, 27.901051, 25.788048>,  <25.758974, 27.887074, 25.318842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441534, 27.901051, 25.788048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.128220, 27.951283, 26.031586>,  <25.940231, 27.981421, 26.177708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.128220, 27.951283, 26.031586>,  <26.441534, 27.901051, 25.788048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128220, 27.951283, 26.031586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345089, -0.726798, 0.593867,
		0.517085, 0.675274, 0.525955,
		-0.783286, 0.125579, 0.608846,
		25.893234, 27.988956, 26.214239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756151, 27.769070, 26.458097>,  <26.441534, 27.901051, 25.788048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756151, 27.769070, 26.458097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.358530, 27.737301, 26.487900>,  <26.119957, 27.718239, 26.505781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.358530, 27.737301, 26.487900>,  <26.756151, 27.769070, 26.458097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358530, 27.737301, 26.487900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107906, -0.810619, 0.575546,
		0.014684, 0.580163, 0.814368,
		-0.994053, -0.079424, 0.074507,
		26.060314, 27.713474, 26.510252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729023, 27.744099, 27.172386>,  <26.756151, 27.769070, 26.458097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729023, 27.744099, 27.172386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.381895, 27.601749, 27.033684>,  <26.173618, 27.516340, 26.950462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.381895, 27.601749, 27.033684>,  <26.729023, 27.744099, 27.172386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381895, 27.601749, 27.033684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106023, -0.814427, 0.570498,
		-0.485433, 0.458326, 0.744508,
		-0.867821, -0.355874, -0.346757,
		26.121550, 27.494987, 26.929657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322744, 27.632137, 27.732489>,  <26.729023, 27.744099, 27.172386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322744, 27.632137, 27.732489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.109915, 27.417564, 27.470455>,  <25.982218, 27.288820, 27.313234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.109915, 27.417564, 27.470455>,  <26.322744, 27.632137, 27.732489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109915, 27.417564, 27.470455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031575, -0.760585, 0.648470,
		-0.846109, 0.365717, 0.387749,
		-0.532073, -0.536433, -0.655086,
		25.950293, 27.256634, 27.273930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624344, 27.323261, 28.023302>,  <26.322744, 27.632137, 27.732489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624344, 27.323261, 28.023302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.742800, 27.087379, 27.722755>,  <25.813873, 26.945850, 27.542427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.742800, 27.087379, 27.722755>,  <25.624344, 27.323261, 28.023302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742800, 27.087379, 27.722755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226181, -0.807574, 0.544671,
		-0.927978, 0.008647, -0.372533,
		0.296138, -0.589703, -0.751367,
		25.831640, 26.910469, 27.497345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196283, 26.662218, 28.112085>,  <25.624344, 27.323261, 28.023302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196283, 26.662218, 28.112085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.513077, 26.563217, 27.888836>,  <25.703154, 26.503817, 27.754887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.513077, 26.563217, 27.888836>,  <25.196283, 26.662218, 28.112085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513077, 26.563217, 27.888836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152455, -0.805018, 0.573326,
		-0.591199, -0.539155, -0.599831,
		0.791986, -0.247503, -0.558122,
		25.750673, 26.488966, 27.721399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153023, 25.865747, 27.850044>,  <25.196283, 26.662218, 28.112085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153023, 25.865747, 27.850044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.531185, 25.988972, 27.807518>,  <25.758083, 26.062906, 27.782001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.531185, 25.988972, 27.807518>,  <25.153023, 25.865747, 27.850044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531185, 25.988972, 27.807518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323856, -0.851682, 0.412013,
		0.036377, -0.423951, -0.904954,
		0.945407, 0.308063, -0.106317,
		25.814808, 26.081390, 27.775623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421164, 25.349783, 27.424627>,  <25.153023, 25.865747, 27.850044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421164, 25.349783, 27.424627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.732391, 25.514507, 27.614372>,  <25.919128, 25.613342, 27.728218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.732391, 25.514507, 27.614372>,  <25.421164, 25.349783, 27.424627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732391, 25.514507, 27.614372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329746, -0.910486, 0.249565,
		0.534673, -0.037760, -0.844215,
		0.778070, 0.411812, 0.474361,
		25.965813, 25.638050, 27.756680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187819, 24.995672, 27.243696>,  <25.421164, 25.349783, 27.424627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187819, 24.995672, 27.243696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.239752, 25.185707, 27.591820>,  <26.270912, 25.299728, 27.800694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.239752, 25.185707, 27.591820>,  <26.187819, 24.995672, 27.243696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239752, 25.185707, 27.591820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555562, -0.761875, 0.333013,
		0.821276, 0.440273, -0.362858,
		0.129835, 0.475085, 0.870308,
		26.278702, 25.328232, 27.852913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.951733, 24.831251, 27.379221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.755814, 24.970177, 27.699089>,  <26.638262, 25.053532, 27.891010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.755814, 24.970177, 27.699089>,  <26.951733, 24.831251, 27.379221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755814, 24.970177, 27.699089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386218, -0.735877, 0.556167,
		0.781622, 0.581256, 0.226293,
		-0.489799, 0.347314, 0.799668,
		26.608873, 25.074371, 27.938990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521585, 24.861515, 27.909878>,  <26.951733, 24.831251, 27.379221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521585, 24.861515, 27.909878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.174393, 24.840221, 28.107372>,  <26.966078, 24.827446, 28.225868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.174393, 24.840221, 28.107372>,  <27.521585, 24.861515, 27.909878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174393, 24.840221, 28.107372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287071, -0.865066, 0.411401,
		0.405214, 0.498825, 0.766143,
		-0.867981, -0.053232, 0.493735,
		26.913998, 24.824251, 28.255493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605679, 24.813074, 28.621113>,  <27.521585, 24.861515, 27.909878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605679, 24.813074, 28.621113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.255672, 24.636162, 28.542389>,  <27.045670, 24.530014, 28.495155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.255672, 24.636162, 28.542389>,  <27.605679, 24.813074, 28.621113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255672, 24.636162, 28.542389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312004, -0.826094, 0.469279,
		-0.370136, 0.349221, 0.860839,
		-0.875016, -0.442282, -0.196808,
		26.993168, 24.503477, 28.483347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447395, 24.410769, 29.228514>,  <27.605679, 24.813074, 28.621113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447395, 24.410769, 29.228514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193771, 24.243706, 28.968197>,  <27.041597, 24.143469, 28.812008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193771, 24.243706, 28.968197>,  <27.447395, 24.410769, 29.228514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193771, 24.243706, 28.968197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000666, -0.841299, 0.540569,
		-0.773283, 0.343187, 0.533157,
		-0.634061, -0.417657, -0.650791,
		27.003553, 24.118408, 28.772959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124172, 24.053740, 29.659567>,  <27.447395, 24.410769, 29.228514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124172, 24.053740, 29.659567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.002460, 23.896168, 29.312641>,  <26.929434, 23.801624, 29.104485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.002460, 23.896168, 29.312641>,  <27.124172, 24.053740, 29.659567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002460, 23.896168, 29.312641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036464, -0.914637, 0.402629,
		-0.951885, 0.090885, 0.292667,
		-0.304277, -0.393928, -0.867315,
		26.911177, 23.777988, 29.052446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566011, 23.471628, 29.829964>,  <27.124172, 24.053740, 29.659567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566011, 23.471628, 29.829964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.732719, 23.409695, 29.471672>,  <26.832745, 23.372536, 29.256697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.732719, 23.409695, 29.471672>,  <26.566011, 23.471628, 29.829964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732719, 23.409695, 29.471672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229890, -0.935401, 0.268655,
		-0.879461, -0.317886, -0.354255,
		0.416772, -0.154832, -0.895728,
		26.857752, 23.363245, 29.202953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109051, 22.913929, 29.536972>,  <26.566011, 23.471628, 29.829964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109051, 22.913929, 29.536972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.453342, 22.899265, 29.333878>,  <26.659918, 22.890467, 29.212021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.453342, 22.899265, 29.333878>,  <26.109051, 22.913929, 29.536972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453342, 22.899265, 29.333878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151222, -0.933967, 0.323788,
		-0.486080, -0.355475, -0.798351,
		0.860732, -0.036659, -0.507738,
		26.711561, 22.888268, 29.181557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188766, 22.141052, 29.246992>,  <26.109051, 22.913929, 29.536972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188766, 22.141052, 29.246992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.565092, 22.272316, 29.213093>,  <26.790888, 22.351074, 29.192753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.565092, 22.272316, 29.213093>,  <26.188766, 22.141052, 29.246992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565092, 22.272316, 29.213093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336532, -0.874817, 0.348484,
		0.040221, -0.356378, -0.933476,
		0.940813, 0.328161, -0.084747,
		26.847336, 22.370764, 29.187668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595013, 21.584909, 28.947041>,  <26.188766, 22.141052, 29.246992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595013, 21.584909, 28.947041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842752, 21.812275, 29.163673>,  <26.991396, 21.948694, 29.293653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842752, 21.812275, 29.163673>,  <26.595013, 21.584909, 28.947041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842752, 21.812275, 29.163673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378324, -0.820515, 0.428517,
		0.687950, -0.060510, -0.723231,
		0.619351, 0.568414, 0.541580,
		27.028559, 21.982800, 29.326147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225727, 21.232449, 28.878668>,  <26.595013, 21.584909, 28.947041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225727, 21.232449, 28.878668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.301226, 21.468899, 29.192341>,  <27.346525, 21.610769, 29.380545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.301226, 21.468899, 29.192341>,  <27.225727, 21.232449, 28.878668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301226, 21.468899, 29.192341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387387, -0.778598, 0.493678,
		0.902390, 0.210603, -0.375951,
		0.188744, 0.591128, 0.784183,
		27.357849, 21.646236, 29.427595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778008, 20.947306, 29.095530>,  <27.225727, 21.232449, 28.878668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778008, 20.947306, 29.095530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.659538, 21.184162, 29.395302>,  <27.588457, 21.326277, 29.575165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.659538, 21.184162, 29.395302>,  <27.778008, 20.947306, 29.095530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659538, 21.184162, 29.395302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424662, -0.621181, 0.658632,
		0.855538, 0.513324, -0.067483,
		-0.296172, 0.592142, 0.749433,
		27.570686, 21.361805, 29.620132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321806, 20.873112, 29.592981>,  <27.778008, 20.947306, 29.095530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321806, 20.873112, 29.592981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.005085, 20.995945, 29.804169>,  <27.815052, 21.069645, 29.930882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.005085, 20.995945, 29.804169>,  <28.321806, 20.873112, 29.592981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005085, 20.995945, 29.804169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207935, -0.677252, 0.705756,
		0.574295, 0.668602, 0.472395,
		-0.791801, 0.307085, 0.527968,
		27.767544, 21.088070, 29.962559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538177, 20.903805, 30.231955>,  <28.321806, 20.873112, 29.592981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538177, 20.903805, 30.231955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.143126, 20.879955, 30.289963>,  <27.906094, 20.865646, 30.324768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.143126, 20.879955, 30.289963>,  <28.538177, 20.903805, 30.231955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143126, 20.879955, 30.289963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141670, -0.735684, 0.662344,
		0.067200, 0.674696, 0.735030,
		-0.987630, -0.059622, 0.145022,
		27.846836, 20.862068, 30.333469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434513, 20.848692, 30.906424>,  <28.538177, 20.903805, 30.231955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434513, 20.848692, 30.906424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081400, 20.705566, 30.784660>,  <27.869532, 20.619692, 30.711603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081400, 20.705566, 30.784660>,  <28.434513, 20.848692, 30.906424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081400, 20.705566, 30.784660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029984, -0.603739, 0.796618,
		-0.468823, 0.712368, 0.522242,
		-0.882783, -0.357814, -0.304407,
		27.816565, 20.598223, 30.693338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026836, 20.953804, 31.355953>,  <28.434513, 20.848692, 30.906424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026836, 20.953804, 31.355953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.876028, 20.636738, 31.164314>,  <27.785543, 20.446497, 31.049332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.876028, 20.636738, 31.164314>,  <28.026836, 20.953804, 31.355953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876028, 20.636738, 31.164314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025394, -0.525922, 0.850154,
		-0.925856, 0.308360, 0.218413,
		-0.377022, -0.792666, -0.479098,
		27.762922, 20.398937, 31.020584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377855, 20.685379, 31.678589>,  <28.026836, 20.953804, 31.355953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377855, 20.685379, 31.678589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514421, 20.371136, 31.472191>,  <27.596361, 20.182589, 31.348352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514421, 20.371136, 31.472191>,  <27.377855, 20.685379, 31.678589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514421, 20.371136, 31.472191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000433, -0.548852, 0.835920,
		-0.939913, -0.285618, -0.187045,
		0.341414, -0.785611, -0.515997,
		27.616846, 20.135452, 31.317392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214643, 20.094484, 32.126812>,  <27.377855, 20.685379, 31.678589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214643, 20.094484, 32.126812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.362627, 19.875576, 31.826511>,  <27.451416, 19.744232, 31.646332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.362627, 19.875576, 31.826511>,  <27.214643, 20.094484, 32.126812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362627, 19.875576, 31.826511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102941, -0.778963, 0.618563,
		-0.923328, -0.306125, -0.231847,
		0.369958, -0.547270, -0.750751,
		27.473614, 19.711395, 31.601286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935787, 19.437817, 32.177151>,  <27.214643, 20.094484, 32.126812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935787, 19.437817, 32.177151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259407, 19.350430, 31.958900>,  <27.453579, 19.297997, 31.827950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259407, 19.350430, 31.958900>,  <26.935787, 19.437817, 32.177151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259407, 19.350430, 31.958900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257790, -0.702379, 0.663482,
		-0.528184, -0.677448, -0.511943,
		0.809052, -0.218467, -0.545625,
		27.502123, 19.284889, 31.795214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070498, 18.682461, 32.143135>,  <26.935787, 19.437817, 32.177151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070498, 18.682461, 32.143135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.432446, 18.840328, 32.079323>,  <27.649614, 18.935049, 32.041035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.432446, 18.840328, 32.079323>,  <27.070498, 18.682461, 32.143135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432446, 18.840328, 32.079323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412212, -0.718808, 0.559818,
		0.106271, -0.572322, -0.813114,
		0.904869, 0.394668, -0.159529,
		27.703907, 18.958729, 32.031464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430573, 18.082811, 31.954382>,  <27.070498, 18.682461, 32.143135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430573, 18.082811, 31.954382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.708462, 18.352245, 32.055294>,  <27.875195, 18.513905, 32.115841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.708462, 18.352245, 32.055294>,  <27.430573, 18.082811, 31.954382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708462, 18.352245, 32.055294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432950, -0.671690, 0.601155,
		0.574381, -0.308412, -0.758267,
		0.694724, 0.673583, 0.252279,
		27.916880, 18.554319, 32.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055698, 17.591257, 32.047787>,  <27.430573, 18.082811, 31.954382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055698, 17.591257, 32.047787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.119902, 17.936852, 32.238686>,  <28.158424, 18.144209, 32.353226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.119902, 17.936852, 32.238686>,  <28.055698, 17.591257, 32.047787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119902, 17.936852, 32.238686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453272, -0.494035, 0.741939,
		0.876802, 0.097233, -0.470919,
		0.160509, 0.863988, 0.477244,
		28.168055, 18.196049, 32.381859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755129, 17.586832, 32.256439>,  <28.055698, 17.591257, 32.047787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755129, 17.586832, 32.256439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623112, 17.878757, 32.495918>,  <28.543901, 18.053913, 32.639606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623112, 17.878757, 32.495918>,  <28.755129, 17.586832, 32.256439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623112, 17.878757, 32.495918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534166, -0.378532, 0.755897,
		0.778292, 0.569285, -0.264909,
		-0.330044, 0.729813, 0.598701,
		28.524099, 18.097702, 32.675529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304316, 17.826086, 32.636341>,  <28.755129, 17.586832, 32.256439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304316, 17.826086, 32.636341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948921, 17.883698, 32.810627>,  <28.735685, 17.918264, 32.915199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948921, 17.883698, 32.810627>,  <29.304316, 17.826086, 32.636341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948921, 17.883698, 32.810627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370520, -0.335040, 0.866293,
		0.270755, 0.931130, 0.244312,
		-0.888486, 0.144031, 0.435716,
		28.682375, 17.926907, 32.941341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140699, 18.016205, 32.672497>,  <29.304316, 17.826086, 32.636341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140699, 18.016205, 32.672497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438553, 18.049442, 32.937408>,  <30.617266, 18.069384, 33.096355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438553, 18.049442, 32.937408>,  <30.140699, 18.016205, 32.672497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438553, 18.049442, 32.937408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277551, 0.863825, -0.420442,
		-0.607030, 0.496892, 0.620171,
		0.744634, 0.083092, 0.662281,
		30.661943, 18.074369, 33.136093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076252, 18.628429, 33.073776>,  <30.140699, 18.016205, 32.672497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076252, 18.628429, 33.073776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.452309, 18.518055, 32.993786>,  <30.677942, 18.451830, 32.945789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.452309, 18.518055, 32.993786>,  <30.076252, 18.628429, 33.073776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452309, 18.518055, 32.993786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151471, 0.864027, -0.480118,
		0.305270, 0.421088, 0.854105,
		0.940142, -0.275937, -0.199979,
		30.734352, 18.435274, 32.933792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327196, 19.182852, 33.092442>,  <30.076252, 18.628429, 33.073776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327196, 19.182852, 33.092442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.581528, 18.955070, 32.884037>,  <30.734127, 18.818401, 32.758995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.581528, 18.955070, 32.884037>,  <30.327196, 19.182852, 33.092442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581528, 18.955070, 32.884037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197194, 0.772477, -0.603651,
		0.746216, 0.281078, 0.603455,
		0.635828, -0.569451, -0.521008,
		30.772276, 18.784235, 32.727734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840271, 19.685570, 33.010494>,  <30.327196, 19.182852, 33.092442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840271, 19.685570, 33.010494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900938, 19.386494, 32.751896>,  <30.937338, 19.207048, 32.596737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900938, 19.386494, 32.751896>,  <30.840271, 19.685570, 33.010494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900938, 19.386494, 32.751896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265296, 0.660857, -0.702058,
		0.952163, -0.065032, 0.298590,
		0.151669, -0.747689, -0.646497,
		30.946438, 19.162188, 32.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479967, 19.808855, 32.719193>,  <30.840271, 19.685570, 33.010494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479967, 19.808855, 32.719193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265343, 19.569973, 32.480713>,  <31.136568, 19.426643, 32.337627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265343, 19.569973, 32.480713>,  <31.479967, 19.808855, 32.719193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265343, 19.569973, 32.480713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244696, 0.566045, -0.787221,
		0.807604, -0.568280, -0.157585,
		-0.536562, -0.597203, -0.596196,
		31.104374, 19.390812, 32.301853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883596, 19.697918, 32.109539>,  <31.479967, 19.808855, 32.719193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883596, 19.697918, 32.109539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.498762, 19.644360, 32.014492>,  <31.267860, 19.612225, 31.957464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.498762, 19.644360, 32.014492>,  <31.883596, 19.697918, 32.109539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498762, 19.644360, 32.014492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104155, 0.624812, -0.773797,
		0.252073, -0.769208, -0.587178,
		-0.962087, -0.133896, -0.237615,
		31.210136, 19.604191, 31.943207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831594, 19.821556, 31.319668>,  <31.883596, 19.697918, 32.109539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831594, 19.821556, 31.319668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446943, 19.828205, 31.429207>,  <31.216152, 19.832195, 31.494930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446943, 19.828205, 31.429207>,  <31.831594, 19.821556, 31.319668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446943, 19.828205, 31.429207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128695, 0.854200, -0.503766,
		-0.242296, -0.519679, -0.819284,
		-0.961629, 0.016623, 0.273849,
		31.158455, 19.833193, 31.511362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481457, 19.825422, 30.741146>,  <31.831594, 19.821556, 31.319668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481457, 19.825422, 30.741146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230036, 19.987949, 31.006424>,  <31.079184, 20.085464, 31.165590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230036, 19.987949, 31.006424>,  <31.481457, 19.825422, 30.741146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230036, 19.987949, 31.006424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268586, 0.686840, -0.675360,
		-0.729919, -0.602625, -0.322585,
		-0.628554, 0.406316, 0.663195,
		31.041470, 20.109844, 31.205381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873487, 20.016506, 30.288498>,  <31.481457, 19.825422, 30.741146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873487, 20.016506, 30.288498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.835880, 20.209881, 30.636623>,  <30.813316, 20.325907, 30.845499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.835880, 20.209881, 30.636623>,  <30.873487, 20.016506, 30.288498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835880, 20.209881, 30.636623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393782, 0.784841, -0.478498,
		-0.914383, -0.387701, 0.116582,
		-0.094017, 0.483438, 0.870315,
		30.807674, 20.354912, 30.897718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230803, 20.327871, 30.214888>,  <30.873487, 20.016506, 30.288498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230803, 20.327871, 30.214888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378880, 20.534672, 30.523605>,  <30.467726, 20.658752, 30.708836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378880, 20.534672, 30.523605>,  <30.230803, 20.327871, 30.214888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378880, 20.534672, 30.523605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293304, 0.853373, -0.430961,
		-0.881436, -0.066832, 0.467550,
		0.370193, 0.516999, 0.771796,
		30.489937, 20.689772, 30.755144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652939, 20.601105, 30.574610>,  <30.230803, 20.327871, 30.214888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652939, 20.601105, 30.574610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970230, 20.832253, 30.651405>,  <30.160604, 20.970942, 30.697483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970230, 20.832253, 30.651405>,  <29.652939, 20.601105, 30.574610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970230, 20.832253, 30.651405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567001, 0.815907, -0.113164,
		-0.222037, -0.019092, 0.974851,
		0.793227, 0.577868, 0.191987,
		30.208199, 21.005613, 30.709002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331612, 21.236492, 30.695744>,  <29.652939, 20.601105, 30.574610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331612, 21.236492, 30.695744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720297, 21.302406, 30.628078>,  <29.953508, 21.341955, 30.587481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.720297, 21.302406, 30.628078>,  <29.331612, 21.236492, 30.695744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720297, 21.302406, 30.628078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223213, 0.874766, -0.430070,
		0.077108, 0.455665, 0.886805,
		0.971715, 0.164785, -0.169162,
		30.011812, 21.351841, 30.577330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580698, 21.951660, 31.035084>,  <29.331612, 21.236492, 30.695744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580698, 21.951660, 31.035084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.824873, 21.853939, 30.733704>,  <29.971378, 21.795307, 30.552876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.824873, 21.853939, 30.733704>,  <29.580698, 21.951660, 31.035084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824873, 21.853939, 30.733704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294731, 0.812877, -0.502358,
		0.735188, 0.528722, 0.424206,
		0.610435, -0.244302, -0.753449,
		30.008003, 21.780649, 30.507669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725212, 22.615211, 30.621004>,  <29.580698, 21.951660, 31.035084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725212, 22.615211, 30.621004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851223, 22.328880, 30.371735>,  <29.926828, 22.157082, 30.222172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851223, 22.328880, 30.371735>,  <29.725212, 22.615211, 30.621004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851223, 22.328880, 30.371735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151372, 0.610307, -0.777568,
		0.936934, 0.339285, 0.083906,
		0.315026, -0.715829, -0.623175,
		29.945730, 22.114132, 30.184782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297085, 22.869986, 30.203905>,  <29.725212, 22.615211, 30.621004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297085, 22.869986, 30.203905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114323, 22.565109, 30.020470>,  <30.004665, 22.382183, 29.910408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114323, 22.565109, 30.020470>,  <30.297085, 22.869986, 30.203905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114323, 22.565109, 30.020470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151845, 0.574813, -0.804073,
		0.876458, -0.297752, -0.378371,
		-0.456906, -0.762190, -0.458587,
		29.977251, 22.336452, 29.882893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560463, 22.870621, 29.430733>,  <30.297085, 22.869986, 30.203905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560463, 22.870621, 29.430733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.215818, 22.667686, 29.436855>,  <30.009031, 22.545925, 29.440529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.215818, 22.667686, 29.436855>,  <30.560463, 22.870621, 29.430733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215818, 22.667686, 29.436855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353471, 0.578110, -0.735423,
		0.364257, -0.639061, -0.677435,
		-0.861612, -0.507337, 0.015309,
		29.957335, 22.515486, 29.441448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380306, 22.714252, 28.814837>,  <30.560463, 22.870621, 29.430733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380306, 22.714252, 28.814837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020514, 22.670280, 28.983997>,  <29.804638, 22.643898, 29.085495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020514, 22.670280, 28.983997>,  <30.380306, 22.714252, 28.814837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020514, 22.670280, 28.983997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420892, 0.478001, -0.770951,
		-0.117400, -0.871454, -0.476220,
		-0.899482, -0.109927, 0.422905,
		29.750669, 22.637302, 29.110868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981392, 22.411682, 28.287571>,  <30.380306, 22.714252, 28.814837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981392, 22.411682, 28.287571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734404, 22.594845, 28.543400>,  <29.586210, 22.704742, 28.696898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.734404, 22.594845, 28.543400>,  <29.981392, 22.411682, 28.287571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734404, 22.594845, 28.543400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448552, 0.462955, -0.764509,
		-0.646166, -0.758943, -0.080466,
		-0.617471, 0.457907, 0.639571,
		29.549162, 22.732216, 28.735271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347332, 22.482096, 27.910324>,  <29.981392, 22.411682, 28.287571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347332, 22.482096, 27.910324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313042, 22.744606, 28.210178>,  <29.292467, 22.902113, 28.390091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313042, 22.744606, 28.210178>,  <29.347332, 22.482096, 27.910324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313042, 22.744606, 28.210178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145100, 0.736159, -0.661072,
		-0.985696, -0.165443, 0.032118,
		-0.085726, 0.656276, 0.749635,
		29.287323, 22.941488, 28.435068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672350, 22.685263, 27.952431>,  <29.347332, 22.482096, 27.910324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672350, 22.685263, 27.952431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884480, 22.980404, 28.119442>,  <29.011757, 23.157490, 28.219648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884480, 22.980404, 28.119442>,  <28.672350, 22.685263, 27.952431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884480, 22.980404, 28.119442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382440, 0.647736, -0.658922,
		-0.756636, 0.189762, 0.625694,
		0.530323, 0.737854, 0.417527,
		29.043577, 23.201759, 28.244699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191828, 23.221325, 27.975363>,  <28.672350, 22.685263, 27.952431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191828, 23.221325, 27.975363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.539949, 23.403950, 28.049252>,  <28.748823, 23.513525, 28.093584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.539949, 23.403950, 28.049252>,  <28.191828, 23.221325, 27.975363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539949, 23.403950, 28.049252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291263, 0.779554, -0.554492,
		-0.397160, 0.428775, 0.811428,
		0.870304, 0.456561, 0.184722,
		28.801041, 23.540918, 28.104668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.056717, 30.709621, 18.350187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.432150, 30.607586, 18.443130>,  <21.657410, 30.546364, 18.498898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.432150, 30.607586, 18.443130>,  <21.056717, 30.709621, 18.350187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.432150, 30.607586, 18.443130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180123, 0.212157, 0.960492,
		-0.294309, -0.943355, 0.153180,
		0.938583, -0.255090, 0.232360,
		21.713724, 30.531059, 18.512838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034477, 30.476118, 18.981773>,  <21.056717, 30.709621, 18.350187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034477, 30.476118, 18.981773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.433632, 30.500740, 18.990135>,  <21.673124, 30.515512, 18.995153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.433632, 30.500740, 18.990135>,  <21.034477, 30.476118, 18.981773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.433632, 30.500740, 18.990135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031117, 0.169918, 0.984967,
		0.057075, -0.983534, 0.171474,
		0.997885, 0.061553, 0.020907,
		21.732998, 30.519205, 18.996407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259123, 30.185280, 19.583323>,  <21.034477, 30.476118, 18.981773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259123, 30.185280, 19.583323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.570356, 30.416557, 19.485119>,  <21.757097, 30.555325, 19.426197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.570356, 30.416557, 19.485119>,  <21.259123, 30.185280, 19.583323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570356, 30.416557, 19.485119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057458, 0.323690, 0.944417,
		0.625527, -0.748942, 0.218636,
		0.778084, 0.578196, -0.245509,
		21.803782, 30.590015, 19.411467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731646, 30.002687, 20.047094>,  <21.259123, 30.185280, 19.583323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731646, 30.002687, 20.047094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.834841, 30.364124, 19.910294>,  <21.896757, 30.580986, 19.828213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.834841, 30.364124, 19.910294>,  <21.731646, 30.002687, 20.047094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.834841, 30.364124, 19.910294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291900, 0.264543, 0.919136,
		0.920998, -0.336955, -0.195510,
		0.257987, 0.903592, -0.342000,
		21.912237, 30.635202, 19.807693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483412, 30.110098, 20.337805>,  <21.731646, 30.002687, 20.047094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483412, 30.110098, 20.337805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.262600, 30.436653, 20.269951>,  <22.130114, 30.632586, 20.229239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.262600, 30.436653, 20.269951>,  <22.483412, 30.110098, 20.337805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262600, 30.436653, 20.269951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079297, 0.253920, 0.963969,
		0.830046, 0.518688, -0.204908,
		-0.552029, 0.816387, -0.169635,
		22.096991, 30.681570, 20.219061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.688957, 30.533413, 20.883699>,  <22.483412, 30.110098, 20.337805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.688957, 30.533413, 20.883699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375557, 30.729218, 20.730595>,  <22.187517, 30.846701, 20.638733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375557, 30.729218, 20.730595>,  <22.688957, 30.533413, 20.883699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375557, 30.729218, 20.730595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144325, 0.455774, 0.878316,
		0.604397, 0.743404, -0.286451,
		-0.783501, 0.489510, -0.382760,
		22.140507, 30.876070, 20.615767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.775391, 31.286016, 21.071692>,  <22.688957, 30.533413, 20.883699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.775391, 31.286016, 21.071692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.388655, 31.246590, 20.977451>,  <22.156612, 31.222933, 20.920908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.388655, 31.246590, 20.977451>,  <22.775391, 31.286016, 21.071692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.388655, 31.246590, 20.977451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230133, 0.736239, 0.636389,
		0.110730, 0.669505, -0.734508,
		-0.966839, -0.098567, -0.235599,
		22.098602, 31.217020, 20.906771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609774, 31.955494, 20.913292>,  <22.775391, 31.286016, 21.071692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609774, 31.955494, 20.913292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282440, 31.753960, 21.023911>,  <22.086040, 31.633039, 21.090282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282440, 31.753960, 21.023911>,  <22.609774, 31.955494, 20.913292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282440, 31.753960, 21.023911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173263, 0.675044, 0.717144,
		-0.548004, 0.538948, -0.639708,
		-0.818335, -0.503836, 0.276547,
		22.036940, 31.602808, 21.106874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092310, 32.490208, 20.886560>,  <22.609774, 31.955494, 20.913292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092310, 32.490208, 20.886560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.931759, 32.192757, 21.100445>,  <21.835428, 32.014286, 21.228775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.931759, 32.192757, 21.100445>,  <22.092310, 32.490208, 20.886560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.931759, 32.192757, 21.100445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214764, 0.643939, 0.734315,
		-0.890377, 0.179901, -0.418167,
		-0.401378, -0.743625, 0.534712,
		21.811346, 31.969669, 21.260859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336264, 32.613071, 21.037285>,  <22.092310, 32.490208, 20.886560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336264, 32.613071, 21.037285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.511703, 32.393555, 21.321949>,  <21.616966, 32.261845, 21.492746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.511703, 32.393555, 21.321949>,  <21.336264, 32.613071, 21.037285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511703, 32.393555, 21.321949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199011, 0.712918, 0.672416,
		-0.876371, -0.436548, 0.203468,
		0.438598, -0.548794, 0.711659,
		21.643282, 32.228916, 21.535446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861746, 32.764904, 21.538918>,  <21.336264, 32.613071, 21.037285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861746, 32.764904, 21.538918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.169405, 32.592754, 21.727890>,  <21.354000, 32.489464, 21.841274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.169405, 32.592754, 21.727890>,  <20.861746, 32.764904, 21.538918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.169405, 32.592754, 21.727890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187299, 0.554979, 0.810504,
		-0.611010, -0.711882, 0.346251,
		0.769146, -0.430374, 0.472433,
		21.400148, 32.463642, 21.869619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576536, 32.414845, 22.159098>,  <20.861746, 32.764904, 21.538918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576536, 32.414845, 22.159098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.961487, 32.518341, 22.192299>,  <21.192457, 32.580437, 22.212219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.961487, 32.518341, 22.192299>,  <20.576536, 32.414845, 22.159098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961487, 32.518341, 22.192299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204337, 0.487750, 0.848732,
		0.179113, -0.833760, 0.522268,
		0.962375, 0.258738, 0.083006,
		21.250198, 32.595963, 22.217201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692358, 32.342934, 22.878891>,  <20.576536, 32.414845, 22.159098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692358, 32.342934, 22.878891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.979601, 32.574749, 22.724770>,  <21.151947, 32.713837, 22.632298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.979601, 32.574749, 22.724770>,  <20.692358, 32.342934, 22.878891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979601, 32.574749, 22.724770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088092, 0.624890, 0.775727,
		0.690338, -0.523111, 0.499789,
		0.718104, 0.579541, -0.385303,
		21.195032, 32.748611, 22.609179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829193, 32.626122, 23.455427>,  <20.692358, 32.342934, 22.878891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829193, 32.626122, 23.455427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034687, 32.858093, 23.202522>,  <21.157984, 32.997276, 23.050779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034687, 32.858093, 23.202522>,  <20.829193, 32.626122, 23.455427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034687, 32.858093, 23.202522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159546, 0.659517, 0.734563,
		0.842984, -0.478245, 0.246291,
		0.513734, 0.579930, -0.632264,
		21.188808, 33.032074, 23.012842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396339, 32.735142, 23.782038>,  <20.829193, 32.626122, 23.455427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396339, 32.735142, 23.782038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.353537, 33.023426, 23.508068>,  <21.327854, 33.196396, 23.343685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.353537, 33.023426, 23.508068>,  <21.396339, 32.735142, 23.782038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353537, 33.023426, 23.508068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071932, 0.692688, 0.717641,
		0.991653, 0.027525, -0.125966,
		-0.107008, 0.720712, -0.684926,
		21.321434, 33.239639, 23.302589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976210, 33.269768, 23.807981>,  <21.396339, 32.735142, 23.782038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976210, 33.269768, 23.807981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.642441, 33.440483, 23.668503>,  <21.442179, 33.542912, 23.584816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.642441, 33.440483, 23.668503>,  <21.976210, 33.269768, 23.807981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642441, 33.440483, 23.668503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120418, 0.758597, 0.640336,
		0.537810, 0.492321, -0.684384,
		-0.834422, 0.426791, -0.348697,
		21.392115, 33.568520, 23.563894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109852, 33.987179, 24.071070>,  <21.976210, 33.269768, 23.807981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109852, 33.987179, 24.071070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.728231, 33.997238, 23.951633>,  <21.499260, 34.003273, 23.879972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.728231, 33.997238, 23.951633>,  <22.109852, 33.987179, 24.071070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.728231, 33.997238, 23.951633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120135, 0.880775, 0.458043,
		0.274511, 0.472867, -0.837282,
		-0.954050, 0.025151, -0.298590,
		21.442017, 34.004784, 23.862057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.919619, 34.685600, 24.092365>,  <22.109852, 33.987179, 24.071070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.919619, 34.685600, 24.092365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.573679, 34.486862, 24.063576>,  <21.366116, 34.367619, 24.046303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.573679, 34.486862, 24.063576>,  <21.919619, 34.685600, 24.092365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.573679, 34.486862, 24.063576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420712, 0.639046, 0.643911,
		-0.273932, 0.587165, -0.761708,
		-0.864848, -0.496847, -0.071972,
		21.314224, 34.337807, 24.041985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465061, 35.202782, 23.923035>,  <21.919619, 34.685600, 24.092365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.465061, 35.202782, 23.923035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.267721, 34.891232, 24.077934>,  <21.149317, 34.704304, 24.170874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.267721, 34.891232, 24.077934>,  <21.465061, 35.202782, 23.923035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267721, 34.891232, 24.077934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491320, 0.616904, 0.614845,
		-0.717780, 0.113072, -0.687027,
		-0.493352, -0.778874, 0.387247,
		21.119715, 34.657570, 24.194109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.730946, 35.310078, 23.860100>,  <21.465061, 35.202782, 23.923035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.730946, 35.310078, 23.860100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.734941, 35.043060, 24.157902>,  <20.737339, 34.882851, 24.336582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.734941, 35.043060, 24.157902>,  <20.730946, 35.310078, 23.860100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.734941, 35.043060, 24.157902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453487, 0.660549, 0.598352,
		-0.891207, -0.343600, -0.296124,
		0.009990, -0.667544, 0.744503,
		20.737938, 34.842796, 24.381252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059958, 35.297062, 24.129339>,  <20.730946, 35.310078, 23.860100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059958, 35.297062, 24.129339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.311527, 35.183315, 24.418777>,  <20.462469, 35.115067, 24.592440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.311527, 35.183315, 24.418777>,  <20.059958, 35.297062, 24.129339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311527, 35.183315, 24.418777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456826, 0.617933, 0.639898,
		-0.629097, -0.733005, 0.258729,
		0.628926, -0.284363, 0.723595,
		20.500204, 35.098007, 24.635857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880213, 36.019775, 23.755184>,  <20.059958, 35.297062, 24.129339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.880213, 36.019775, 23.755184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.903631, 36.357105, 23.541504>,  <19.917683, 36.559505, 23.413296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.903631, 36.357105, 23.541504>,  <19.880213, 36.019775, 23.755184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903631, 36.357105, 23.541504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690852, -0.420508, -0.588129,
		-0.720622, -0.334622, -0.607234,
		0.058546, 0.843327, -0.534202,
		19.921194, 36.610104, 23.381243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840553, 35.847397, 23.058722>,  <19.880213, 36.019775, 23.755184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840553, 35.847397, 23.058722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.990719, 36.215820, 23.017300>,  <20.080818, 36.436874, 22.992447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.990719, 36.215820, 23.017300>,  <19.840553, 35.847397, 23.058722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990719, 36.215820, 23.017300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253261, -0.209413, -0.944460,
		-0.891584, 0.328338, -0.311884,
		0.375415, 0.921054, -0.103554,
		20.103344, 36.492138, 22.986233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655443, 36.266048, 22.293402>,  <19.840553, 35.847397, 23.058722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655443, 36.266048, 22.293402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.972689, 36.445480, 22.458202>,  <20.163036, 36.553139, 22.557083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.972689, 36.445480, 22.458202>,  <19.655443, 36.266048, 22.293402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972689, 36.445480, 22.458202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467658, -0.015124, -0.883780,
		-0.390218, 0.893613, -0.221779,
		0.793112, 0.448583, 0.412004,
		20.210623, 36.580055, 22.581804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902912, 36.741329, 21.819654>,  <19.655443, 36.266048, 22.293402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902912, 36.741329, 21.819654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.230518, 36.676983, 22.039959>,  <20.427082, 36.638374, 22.172142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.230518, 36.676983, 22.039959>,  <19.902912, 36.741329, 21.819654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.230518, 36.676983, 22.039959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569902, 0.116802, -0.813369,
		0.066510, 0.980041, 0.187338,
		0.819016, -0.160862, 0.550759,
		20.476223, 36.628723, 22.205187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422735, 37.167484, 21.484110>,  <19.902912, 36.741329, 21.819654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.422735, 37.167484, 21.484110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.619484, 36.892181, 21.697414>,  <20.737534, 36.727001, 21.825397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.619484, 36.892181, 21.697414>,  <20.422735, 37.167484, 21.484110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619484, 36.892181, 21.697414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561903, -0.216916, -0.798256,
		0.665076, 0.692282, 0.280036,
		0.491873, -0.688254, 0.533261,
		20.767046, 36.685703, 21.857393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038309, 37.429855, 21.464890>,  <20.422735, 37.167484, 21.484110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038309, 37.429855, 21.464890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056719, 37.039524, 21.550350>,  <21.067764, 36.805325, 21.601627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056719, 37.039524, 21.550350>,  <21.038309, 37.429855, 21.464890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056719, 37.039524, 21.550350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460990, -0.168994, -0.871166,
		0.886211, 0.138587, 0.442068,
		0.046025, -0.975825, 0.213652,
		21.070526, 36.746777, 21.614445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776699, 37.220665, 21.266596>,  <21.038309, 37.429855, 21.464890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776699, 37.220665, 21.266596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.512758, 36.920132, 21.270588>,  <21.354395, 36.739811, 21.272984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.512758, 36.920132, 21.270588>,  <21.776699, 37.220665, 21.266596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.512758, 36.920132, 21.270588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328082, -0.300034, -0.895735,
		0.675988, -0.587777, 0.444476,
		-0.659850, -0.751331, 0.009981,
		21.314802, 36.694733, 21.273582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165213, 36.643505, 20.920033>,  <21.776699, 37.220665, 21.266596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165213, 36.643505, 20.920033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.790154, 36.504501, 20.922951>,  <21.565119, 36.421097, 20.924702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.790154, 36.504501, 20.922951>,  <22.165213, 36.643505, 20.920033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.790154, 36.504501, 20.922951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162384, -0.456500, -0.874779,
		0.307327, -0.819050, 0.484467,
		-0.937647, -0.347513, 0.007294,
		21.508860, 36.400249, 20.925138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.194372, 35.941700, 20.906603>,  <22.165213, 36.643505, 20.920033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.194372, 35.941700, 20.906603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.819122, 35.996304, 20.779301>,  <21.593973, 36.029068, 20.702919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.819122, 35.996304, 20.779301>,  <22.194372, 35.941700, 20.906603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.819122, 35.996304, 20.779301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188821, -0.568749, -0.800544,
		-0.290291, -0.811104, 0.507781,
		-0.938124, 0.136511, -0.318257,
		21.537685, 36.037258, 20.683825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913038, 35.195282, 20.803648>,  <22.194372, 35.941700, 20.906603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913038, 35.195282, 20.803648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.704174, 35.462242, 20.591259>,  <21.578856, 35.622417, 20.463825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.704174, 35.462242, 20.591259>,  <21.913038, 35.195282, 20.803648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704174, 35.462242, 20.591259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052281, -0.596367, -0.801008,
		-0.851244, -0.446014, 0.276507,
		-0.522160, 0.667396, -0.530972,
		21.547525, 35.662460, 20.431967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161861, 34.946957, 20.601986>,  <21.913038, 35.195282, 20.803648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161861, 34.946957, 20.601986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.298624, 35.213268, 20.336704>,  <21.380682, 35.373055, 20.177536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.298624, 35.213268, 20.336704>,  <21.161861, 34.946957, 20.601986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298624, 35.213268, 20.336704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047360, -0.692629, -0.719738,
		-0.938540, 0.277492, -0.205282,
		0.341905, 0.665781, -0.663202,
		21.401196, 35.413002, 20.137743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.884306, 34.696243, 19.947641>,  <21.161861, 34.946957, 20.601986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.884306, 34.696243, 19.947641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.121141, 34.989429, 19.813663>,  <21.263243, 35.165340, 19.733276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.121141, 34.989429, 19.813663>,  <20.884306, 34.696243, 19.947641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.121141, 34.989429, 19.813663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030215, -0.435528, -0.899668,
		-0.805306, 0.522563, -0.280018,
		0.592089, 0.732968, -0.334944,
		21.298769, 35.209320, 19.713181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609596, 34.810123, 19.334604>,  <20.884306, 34.696243, 19.947641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609596, 34.810123, 19.334604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.976768, 34.967106, 19.311325>,  <21.197071, 35.061295, 19.297358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.976768, 34.967106, 19.311325>,  <20.609596, 34.810123, 19.334604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976768, 34.967106, 19.311325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175670, -0.533565, -0.827314,
		-0.355733, 0.749192, -0.558717,
		0.917929, 0.392453, -0.058197,
		21.252148, 35.084843, 19.293865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712828, 35.058990, 18.514179>,  <20.609596, 34.810123, 19.334604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712828, 35.058990, 18.514179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.077894, 35.002678, 18.667656>,  <21.296934, 34.968891, 18.759741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.077894, 35.002678, 18.667656>,  <20.712828, 35.058990, 18.514179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077894, 35.002678, 18.667656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280289, -0.467650, -0.838297,
		0.297447, 0.872631, -0.387350,
		0.912668, -0.140779, 0.383690,
		21.351694, 34.960445, 18.782763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.222019, 35.359360, 18.096910>,  <20.712828, 35.058990, 18.514179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.222019, 35.359360, 18.096910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.413084, 35.075302, 18.303806>,  <21.527723, 34.904869, 18.427944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.413084, 35.075302, 18.303806>,  <21.222019, 35.359360, 18.096910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.413084, 35.075302, 18.303806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220395, -0.473058, -0.853019,
		0.850451, 0.521450, -0.069449,
		0.477660, -0.710145, 0.517238,
		21.556381, 34.862259, 18.458977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663784, 35.045219, 17.587133>,  <21.222019, 35.359360, 18.096910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663784, 35.045219, 17.587133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.741610, 34.808582, 17.900097>,  <21.788305, 34.666599, 18.087875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.741610, 34.808582, 17.900097>,  <21.663784, 35.045219, 17.587133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.741610, 34.808582, 17.900097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279337, -0.731207, -0.622340,
		0.940274, 0.339640, 0.022988,
		0.194563, -0.591592, 0.782409,
		21.799978, 34.631104, 18.134819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.371986, 34.803299, 17.487259>,  <21.663784, 35.045219, 17.587133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.371986, 34.803299, 17.487259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.155457, 34.536652, 17.692234>,  <22.025539, 34.376663, 17.815218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.155457, 34.536652, 17.692234>,  <22.371986, 34.803299, 17.487259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.155457, 34.536652, 17.692234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354343, -0.733555, -0.579946,
		0.762503, -0.132359, 0.633301,
		-0.541323, -0.666617, 0.512437,
		21.993059, 34.336666, 17.845964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.841080, 34.350872, 17.791681>,  <22.371986, 34.803299, 17.487259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.841080, 34.350872, 17.791681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.489487, 34.162762, 17.760094>,  <22.278532, 34.049896, 17.741140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.489487, 34.162762, 17.760094>,  <22.841080, 34.350872, 17.791681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489487, 34.162762, 17.760094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421648, -0.689138, -0.589323,
		0.222722, -0.551301, 0.804029,
		-0.878981, -0.470273, -0.078969,
		22.225792, 34.021679, 17.736403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.087835, 33.662926, 17.708281>,  <22.841080, 34.350872, 17.791681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.087835, 33.662926, 17.708281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.692204, 33.631855, 17.658173>,  <22.454824, 33.613213, 17.628109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.692204, 33.631855, 17.658173>,  <23.087835, 33.662926, 17.708281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.692204, 33.631855, 17.658173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142403, -0.722949, -0.676066,
		-0.038047, -0.686521, 0.726114,
		-0.989077, -0.077679, -0.125269,
		22.395481, 33.608551, 17.620592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.924898, 32.871021, 17.734795>,  <23.087835, 33.662926, 17.708281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.924898, 32.871021, 17.734795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.634077, 33.055756, 17.531578>,  <22.459585, 33.166595, 17.409649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.634077, 33.055756, 17.531578>,  <22.924898, 32.871021, 17.734795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.634077, 33.055756, 17.531578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017705, -0.752321, -0.658558,
		-0.686351, -0.469813, 0.555156,
		-0.727055, 0.461832, -0.508039,
		22.415960, 33.194305, 17.379166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.358297, 32.373619, 17.558060>,  <22.924898, 32.871021, 17.734795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.358297, 32.373619, 17.558060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312489, 32.677540, 17.302063>,  <22.285004, 32.859890, 17.148464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312489, 32.677540, 17.302063>,  <22.358297, 32.373619, 17.558060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312489, 32.677540, 17.302063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068272, -0.648727, -0.757953,
		-0.991072, -0.043107, 0.126165,
		-0.114520, 0.759800, -0.639992,
		22.278133, 32.905479, 17.110065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<24.962854, 27.143497, 26.371288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305929, 27.224957, 26.560139>,  <25.511774, 27.273832, 26.673449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305929, 27.224957, 26.560139>,  <24.962854, 27.143497, 26.371288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305929, 27.224957, 26.560139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014077, 0.908579, -0.417477,
		-0.513981, 0.364710, 0.776409,
		0.857686, 0.203646, 0.472126,
		25.563234, 27.286051, 26.701777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804440, 27.671570, 26.861828>,  <24.962854, 27.143497, 26.371288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804440, 27.671570, 26.861828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190578, 27.684723, 26.758274>,  <25.422262, 27.692614, 26.696142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190578, 27.684723, 26.758274>,  <24.804440, 27.671570, 26.861828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190578, 27.684723, 26.758274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110115, 0.950715, -0.289855,
		0.236594, 0.308318, 0.921392,
		0.965349, 0.032881, -0.258884,
		25.480183, 27.694588, 26.680609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087257, 28.255005, 27.172865>,  <24.804440, 27.671570, 26.861828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087257, 28.255005, 27.172865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333195, 28.174702, 26.867798>,  <25.480757, 28.126520, 26.684757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333195, 28.174702, 26.867798>,  <25.087257, 28.255005, 27.172865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333195, 28.174702, 26.867798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122108, 0.931161, -0.343552,
		0.779140, 0.304358, 0.548002,
		0.614842, -0.200760, -0.762670,
		25.517647, 28.114473, 26.638996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189381, 28.864779, 26.979044>,  <25.087257, 28.255005, 27.172865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189381, 28.864779, 26.979044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334913, 28.674133, 26.658928>,  <25.422234, 28.559746, 26.466858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334913, 28.674133, 26.658928>,  <25.189381, 28.864779, 26.979044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334913, 28.674133, 26.658928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003813, 0.858406, -0.512957,
		0.931456, 0.189682, 0.310499,
		0.363833, -0.476613, -0.800291,
		25.444063, 28.531149, 26.418840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734432, 29.251076, 26.650715>,  <25.189381, 28.864779, 26.979044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734432, 29.251076, 26.650715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576750, 29.042549, 26.347973>,  <25.482140, 28.917433, 26.166328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576750, 29.042549, 26.347973>,  <25.734432, 29.251076, 26.650715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576750, 29.042549, 26.347973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183976, 0.851638, -0.490781,
		0.900419, -0.054225, -0.431630,
		-0.394205, -0.521319, -0.756855,
		25.458488, 28.886154, 26.120916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905233, 29.648108, 26.095434>,  <25.734432, 29.251076, 26.650715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905233, 29.648108, 26.095434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664953, 29.379620, 25.921711>,  <25.520784, 29.218527, 25.817476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664953, 29.379620, 25.921711>,  <25.905233, 29.648108, 26.095434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664953, 29.379620, 25.921711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304506, 0.694388, -0.651998,
		0.739213, -0.259406, -0.621509,
		-0.600700, -0.671218, -0.434310,
		25.484743, 29.178255, 25.791418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100159, 29.618992, 25.310486>,  <25.905233, 29.648108, 26.095434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100159, 29.618992, 25.310486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726452, 29.490891, 25.373199>,  <25.502228, 29.414030, 25.410828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726452, 29.490891, 25.373199>,  <26.100159, 29.618992, 25.310486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726452, 29.490891, 25.373199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334114, 0.632681, -0.698629,
		0.124543, -0.705091, -0.698094,
		-0.934268, -0.320252, 0.156785,
		25.446171, 29.394815, 25.420235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789555, 29.546852, 24.664452>,  <26.100159, 29.618992, 25.310486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789555, 29.546852, 24.664452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467501, 29.570572, 24.900501>,  <25.274269, 29.584803, 25.042131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467501, 29.570572, 24.900501>,  <25.789555, 29.546852, 24.664452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467501, 29.570572, 24.900501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434591, 0.618102, -0.655042,
		-0.403598, -0.783858, -0.471884,
		-0.805133, 0.059297, 0.590123,
		25.225962, 29.588362, 25.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189768, 29.496225, 24.247862>,  <25.789555, 29.546852, 24.664452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189768, 29.496225, 24.247862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044287, 29.658894, 24.583084>,  <24.956999, 29.756495, 24.784218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044287, 29.658894, 24.583084>,  <25.189768, 29.496225, 24.247862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044287, 29.658894, 24.583084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563086, 0.620713, -0.545573,
		-0.742061, -0.670324, 0.003235,
		-0.363702, 0.406670, 0.838057,
		24.935177, 29.780895, 24.834501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.458738, 29.597271, 24.139826>,  <25.189768, 29.496225, 24.247862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.458738, 29.597271, 24.139826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554300, 29.845581, 24.438507>,  <24.611637, 29.994566, 24.617716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554300, 29.845581, 24.438507>,  <24.458738, 29.597271, 24.139826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554300, 29.845581, 24.438507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372965, 0.768648, -0.519689,
		-0.896560, -0.154337, 0.415162,
		0.238906, 0.620774, 0.746702,
		24.625973, 30.031813, 24.662518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005333, 30.081884, 24.021564>,  <24.458738, 29.597271, 24.139826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005333, 30.081884, 24.021564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262148, 30.257412, 24.273033>,  <24.416237, 30.362728, 24.423914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262148, 30.257412, 24.273033>,  <24.005333, 30.081884, 24.021564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262148, 30.257412, 24.273033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257109, 0.895750, -0.362667,
		-0.722277, 0.071208, 0.687928,
		0.642036, 0.438819, 0.628671,
		24.454760, 30.389057, 24.461634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.675816, 30.711199, 24.234510>,  <24.005333, 30.081884, 24.021564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.675816, 30.711199, 24.234510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.074615, 30.687527, 24.254471>,  <24.313896, 30.673325, 24.266447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.074615, 30.687527, 24.254471>,  <23.675816, 30.711199, 24.234510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.074615, 30.687527, 24.254471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074065, 0.916731, -0.392580,
		-0.022515, 0.395098, 0.918363,
		0.996999, -0.059179, 0.049903,
		24.373714, 30.669773, 24.269442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827971, 31.341780, 24.481340>,  <23.675816, 30.711199, 24.234510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827971, 31.341780, 24.481340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133541, 31.177383, 24.282341>,  <24.316883, 31.078747, 24.162941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133541, 31.177383, 24.282341>,  <23.827971, 31.341780, 24.481340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133541, 31.177383, 24.282341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190458, 0.880208, -0.434695,
		0.616556, 0.237323, 0.750691,
		0.763927, -0.410989, -0.497498,
		24.362719, 31.054087, 24.133091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506153, 31.825653, 24.660032>,  <23.827971, 31.341780, 24.481340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506153, 31.825653, 24.660032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516293, 31.622219, 24.315777>,  <24.522377, 31.500158, 24.109224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516293, 31.622219, 24.315777>,  <24.506153, 31.825653, 24.660032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516293, 31.622219, 24.315777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328419, 0.817366, -0.473343,
		0.944192, -0.270651, 0.187748,
		0.025348, -0.508587, -0.860637,
		24.523897, 31.469643, 24.057585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873451, 32.067047, 24.946667>,  <24.506153, 31.825653, 24.660032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873451, 32.067047, 24.946667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.573429, 32.250618, 25.137161>,  <23.393415, 32.360760, 25.251459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.573429, 32.250618, 25.137161>,  <23.873451, 32.067047, 24.946667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573429, 32.250618, 25.137161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410507, -0.241535, 0.879286,
		0.518554, 0.855014, -0.007226,
		-0.750057, 0.458924, 0.476239,
		23.348412, 32.388294, 25.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238262, 32.519321, 25.377625>,  <23.873451, 32.067047, 24.946667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238262, 32.519321, 25.377625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.886683, 32.449955, 25.555332>,  <23.675735, 32.408333, 25.661957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.886683, 32.449955, 25.555332>,  <24.238262, 32.519321, 25.377625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.886683, 32.449955, 25.555332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463736, -0.093271, 0.881050,
		-0.111354, 0.980421, 0.162401,
		-0.878948, -0.173420, 0.444271,
		23.622997, 32.397930, 25.688614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296242, 32.937916, 26.031584>,  <24.238262, 32.519321, 25.377625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296242, 32.937916, 26.031584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.023962, 32.647449, 26.070206>,  <23.860594, 32.473167, 26.093378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.023962, 32.647449, 26.070206>,  <24.296242, 32.937916, 26.031584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.023962, 32.647449, 26.070206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328255, -0.184524, 0.926391,
		-0.654901, 0.662289, 0.363975,
		-0.680701, -0.726170, 0.096555,
		23.819752, 32.429600, 26.099173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.055618, 32.964664, 26.728008>,  <24.296242, 32.937916, 26.031584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.055618, 32.964664, 26.728008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975431, 32.597633, 26.590683>,  <23.927320, 32.377415, 26.508287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975431, 32.597633, 26.590683>,  <24.055618, 32.964664, 26.728008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.975431, 32.597633, 26.590683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288828, -0.390202, 0.874254,
		-0.936158, 0.076100, 0.343245,
		-0.200466, -0.917579, -0.343311,
		23.915291, 32.322361, 26.487690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.819859, 32.601948, 27.328928>,  <24.055618, 32.964664, 26.728008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.819859, 32.601948, 27.328928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.905270, 32.311939, 27.067013>,  <23.956516, 32.137932, 26.909864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.905270, 32.311939, 27.067013>,  <23.819859, 32.601948, 27.328928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.905270, 32.311939, 27.067013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356271, -0.566296, 0.743222,
		-0.909657, -0.391981, 0.137385,
		0.213528, -0.725024, -0.654787,
		23.969328, 32.094433, 26.870577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.566212, 31.942503, 27.573696>,  <23.819859, 32.601948, 27.328928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.566212, 31.942503, 27.573696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.845802, 31.817261, 27.316513>,  <24.013557, 31.742115, 27.162203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.845802, 31.817261, 27.316513>,  <23.566212, 31.942503, 27.573696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.845802, 31.817261, 27.316513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377022, -0.602635, 0.703339,
		-0.607723, -0.734012, -0.303149,
		0.698947, -0.313141, -0.642974,
		24.055494, 31.723330, 27.123625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868635, 31.415920, 27.976492>,  <23.566212, 31.942503, 27.573696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868635, 31.415920, 27.976492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131670, 31.419174, 27.675159>,  <24.289492, 31.421127, 27.494360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131670, 31.419174, 27.675159>,  <23.868635, 31.415920, 27.976492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.131670, 31.419174, 27.675159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543664, -0.697355, 0.467038,
		-0.521542, -0.716680, -0.462996,
		0.657589, 0.008134, -0.753333,
		24.328947, 31.421614, 27.449160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.957045, 30.697630, 27.768631>,  <23.868635, 31.415920, 27.976492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.957045, 30.697630, 27.768631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276503, 30.904182, 27.645008>,  <24.468178, 31.028114, 27.570835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276503, 30.904182, 27.645008>,  <23.957045, 30.697630, 27.768631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276503, 30.904182, 27.645008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601456, -0.702251, 0.380913,
		-0.020338, -0.490099, -0.871430,
		0.798647, 0.516379, -0.309055,
		24.516096, 31.059095, 27.552292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.479389, 30.189499, 27.393871>,  <23.957045, 30.697630, 27.768631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.479389, 30.189499, 27.393871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690212, 30.504940, 27.520561>,  <24.816706, 30.694204, 27.596575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690212, 30.504940, 27.520561>,  <24.479389, 30.189499, 27.393871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690212, 30.504940, 27.520561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529797, -0.596308, 0.603101,
		0.664474, -0.150069, -0.732089,
		0.527058, 0.788604, 0.316725,
		24.848330, 30.741522, 27.615578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290100, 30.152121, 27.212555>,  <24.479389, 30.189499, 27.393871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290100, 30.152121, 27.212555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255796, 30.396893, 27.527054>,  <25.235214, 30.543756, 27.715754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255796, 30.396893, 27.527054>,  <25.290100, 30.152121, 27.212555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255796, 30.396893, 27.527054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679109, -0.541527, 0.495539,
		0.729010, 0.576444, -0.369129,
		-0.085757, 0.611932, 0.786247,
		25.230070, 30.580473, 27.762928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048038, 30.264797, 27.503014>,  <25.290100, 30.152121, 27.212555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048038, 30.264797, 27.503014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811806, 30.352882, 27.813553>,  <25.670065, 30.405733, 27.999876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811806, 30.352882, 27.813553>,  <26.048038, 30.264797, 27.503014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811806, 30.352882, 27.813553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524497, -0.626383, 0.576669,
		0.613280, 0.747765, 0.254431,
		-0.590584, 0.220211, 0.776349,
		25.634630, 30.418945, 28.046457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542095, 30.293869, 28.032907>,  <26.048038, 30.264797, 27.503014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542095, 30.293869, 28.032907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187347, 30.262386, 28.215015>,  <25.974499, 30.243498, 28.324280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187347, 30.262386, 28.215015>,  <26.542095, 30.293869, 28.032907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187347, 30.262386, 28.215015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367501, -0.717373, 0.591877,
		0.280014, 0.692229, 0.665140,
		-0.886868, -0.078705, 0.455270,
		25.921288, 30.238775, 28.351597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677494, 30.271994, 28.784674>,  <26.542095, 30.293869, 28.032907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677494, 30.271994, 28.784674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294563, 30.157612, 28.767895>,  <26.064806, 30.088984, 28.757828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294563, 30.157612, 28.767895>,  <26.677494, 30.271994, 28.784674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294563, 30.157612, 28.767895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146636, -0.605636, 0.782114,
		-0.249054, 0.742586, 0.621722,
		-0.957325, -0.285955, -0.041946,
		26.007366, 30.071825, 28.755310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490345, 30.250546, 29.486975>,  <26.677494, 30.271994, 28.784674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490345, 30.250546, 29.486975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224012, 30.021412, 29.295753>,  <26.064213, 29.883932, 29.181021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224012, 30.021412, 29.295753>,  <26.490345, 30.250546, 29.486975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224012, 30.021412, 29.295753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154244, -0.732572, 0.662983,
		-0.729986, 0.367698, 0.576124,
		-0.665830, -0.572832, -0.478052,
		26.024263, 29.849562, 29.152338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674379, 30.631880, 30.024239>,  <26.490345, 30.250546, 29.486975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674379, 30.631880, 30.024239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062792, 30.718540, 30.064552>,  <27.295839, 30.770536, 30.088741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062792, 30.718540, 30.064552>,  <26.674379, 30.631880, 30.024239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062792, 30.718540, 30.064552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091038, 0.725414, -0.682266,
		-0.220927, 0.653327, 0.724124,
		0.971032, 0.216653, 0.100786,
		27.354101, 30.783537, 30.094788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692755, 31.372007, 30.025810>,  <26.674379, 30.631880, 30.024239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692755, 31.372007, 30.025810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057568, 31.237282, 29.932213>,  <27.276455, 31.156446, 29.876055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057568, 31.237282, 29.932213>,  <26.692755, 31.372007, 30.025810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057568, 31.237282, 29.932213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060131, 0.674208, -0.736089,
		0.405687, 0.657266, 0.635153,
		0.912032, -0.336815, -0.233995,
		27.331177, 31.136238, 29.862015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059484, 31.976141, 29.683004>,  <26.692755, 31.372007, 30.025810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059484, 31.976141, 29.683004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352699, 31.718437, 29.595745>,  <27.528627, 31.563816, 29.543388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352699, 31.718437, 29.595745>,  <27.059484, 31.976141, 29.683004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352699, 31.718437, 29.595745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294307, 0.589562, -0.752197,
		0.613222, 0.487185, 0.621780,
		0.733036, -0.644258, -0.218150,
		27.572611, 31.525160, 29.530300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739658, 32.317722, 29.576757>,  <27.059484, 31.976141, 29.683004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739658, 32.317722, 29.576757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753544, 31.965977, 29.386803>,  <27.761875, 31.754930, 29.272831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753544, 31.965977, 29.386803>,  <27.739658, 32.317722, 29.576757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753544, 31.965977, 29.386803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359109, 0.454411, -0.815200,
		0.932650, -0.142238, 0.331561,
		0.034713, -0.879363, -0.474885,
		27.763958, 31.702168, 29.244337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451134, 32.240746, 29.370302>,  <27.739658, 32.317722, 29.576757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451134, 32.240746, 29.370302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202816, 32.017056, 29.150528>,  <28.053825, 31.882841, 29.018663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202816, 32.017056, 29.150528>,  <28.451134, 32.240746, 29.370302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202816, 32.017056, 29.150528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390066, 0.387601, -0.835233,
		0.680045, -0.732825, -0.022486,
		-0.620795, -0.559225, -0.549436,
		28.016577, 31.849287, 28.985697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834896, 31.793226, 28.970381>,  <28.451134, 32.240746, 29.370302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834896, 31.793226, 28.970381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496084, 31.822891, 28.759842>,  <28.292797, 31.840691, 28.633518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496084, 31.822891, 28.759842>,  <28.834896, 31.793226, 28.970381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496084, 31.822891, 28.759842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526507, 0.253067, -0.811633,
		0.073009, -0.964602, -0.253401,
		-0.847030, 0.074161, -0.526346,
		28.241976, 31.845139, 28.601938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057129, 31.597218, 28.292795>,  <28.834896, 31.793226, 28.970381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057129, 31.597218, 28.292795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683516, 31.724319, 28.227547>,  <28.459347, 31.800581, 28.188398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683516, 31.724319, 28.227547>,  <29.057129, 31.597218, 28.292795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683516, 31.724319, 28.227547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221183, 0.155968, -0.962680,
		-0.280456, -0.935257, -0.215962,
		-0.934036, 0.317757, -0.163121,
		28.403305, 31.819647, 28.178610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916283, 31.370176, 27.603106>,  <29.057129, 31.597218, 28.292795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916283, 31.370176, 27.603106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678585, 31.685116, 27.668781>,  <28.535967, 31.874079, 27.708187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678585, 31.685116, 27.668781>,  <28.916283, 31.370176, 27.603106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678585, 31.685116, 27.668781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187955, 0.334437, -0.923485,
		-0.782015, -0.517916, -0.346723,
		-0.594244, 0.787347, 0.164190,
		28.500311, 31.921320, 27.718039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490400, 31.424965, 27.068846>,  <28.916283, 31.370176, 27.603106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490400, 31.424965, 27.068846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499180, 31.799446, 27.209156>,  <28.504448, 32.024136, 27.293343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499180, 31.799446, 27.209156>,  <28.490400, 31.424965, 27.068846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499180, 31.799446, 27.209156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095679, 0.347284, -0.932866,
		-0.995170, 0.054039, -0.081952,
		0.021951, 0.936202, 0.350777,
		28.505766, 32.080307, 27.314388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158646, 31.782509, 26.598276>,  <28.490400, 31.424965, 27.068846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158646, 31.782509, 26.598276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338120, 32.067204, 26.814465>,  <28.445805, 32.238022, 26.944178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338120, 32.067204, 26.814465>,  <28.158646, 31.782509, 26.598276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338120, 32.067204, 26.814465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224245, 0.495752, -0.839013,
		-0.865098, 0.497652, 0.062833,
		0.448686, 0.711739, 0.540471,
		28.472725, 32.280724, 26.976606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992731, 32.348621, 26.189850>,  <28.158646, 31.782509, 26.598276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992731, 32.348621, 26.189850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288765, 32.497849, 26.413670>,  <28.466385, 32.587383, 26.547960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288765, 32.497849, 26.413670>,  <27.992731, 32.348621, 26.189850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288765, 32.497849, 26.413670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199421, 0.672862, -0.712382,
		-0.642265, 0.638810, 0.423578,
		0.740086, 0.373068, 0.559547,
		28.510790, 32.609768, 26.581533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971600, 33.157448, 26.131144>,  <27.992731, 32.348621, 26.189850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971600, 33.157448, 26.131144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331923, 33.051941, 26.269112>,  <28.548117, 32.988636, 26.351892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331923, 33.051941, 26.269112>,  <27.971600, 33.157448, 26.131144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331923, 33.051941, 26.269112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422462, 0.715977, -0.555790,
		-0.100354, 0.646376, 0.756391,
		0.900808, -0.263771, 0.344921,
		28.602165, 32.972809, 26.372587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.027029, 28.940458, 33.507893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.357876, 28.807381, 33.326698>,  <27.556383, 28.727535, 33.217983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.357876, 28.807381, 33.326698>,  <27.027029, 28.940458, 33.507893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357876, 28.807381, 33.326698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070028, 0.860701, -0.504272,
		0.557653, 0.385369, 0.735197,
		0.827115, -0.332693, -0.452985,
		27.606010, 28.707573, 33.190804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486502, 29.533978, 33.474304>,  <27.027029, 28.940458, 33.507893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486502, 29.533978, 33.474304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.607943, 29.266357, 33.202953>,  <27.680807, 29.105785, 33.040142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.607943, 29.266357, 33.202953>,  <27.486502, 29.533978, 33.474304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607943, 29.266357, 33.202953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062009, 0.724348, -0.686640,
		0.950779, 0.166400, 0.261401,
		0.303602, -0.669052, -0.678377,
		27.699022, 29.065641, 32.999439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991045, 29.875608, 33.099014>,  <27.486502, 29.533978, 33.474304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991045, 29.875608, 33.099014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.871582, 29.580601, 32.856735>,  <27.799904, 29.403597, 32.711369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.871582, 29.580601, 32.856735>,  <27.991045, 29.875608, 33.099014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871582, 29.580601, 32.856735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002181, 0.634136, -0.773219,
		0.954358, -0.232248, -0.187780,
		-0.298656, -0.737518, -0.605700,
		27.781984, 29.359344, 32.675026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420519, 30.006012, 32.463867>,  <27.991045, 29.875608, 33.099014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420519, 30.006012, 32.463867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.127775, 29.758526, 32.349621>,  <27.952129, 29.610035, 32.281071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.127775, 29.758526, 32.349621>,  <28.420519, 30.006012, 32.463867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127775, 29.758526, 32.349621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034264, 0.452009, -0.891355,
		0.680596, -0.642558, -0.352005,
		-0.731857, -0.618714, -0.285619,
		27.908218, 29.572912, 32.263935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613674, 29.808796, 31.818727>,  <28.420519, 30.006012, 32.463867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613674, 29.808796, 31.818727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.223639, 29.720497, 31.810043>,  <27.989616, 29.667519, 31.804832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.223639, 29.720497, 31.810043>,  <28.613674, 29.808796, 31.818727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223639, 29.720497, 31.810043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041110, 0.276032, -0.960269,
		0.217963, -0.935457, -0.278231,
		-0.975091, -0.220741, -0.021708,
		27.931112, 29.654274, 31.803530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560453, 29.472647, 31.268702>,  <28.613674, 29.808796, 31.818727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560453, 29.472647, 31.268702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184725, 29.598209, 31.324039>,  <27.959288, 29.673548, 31.357243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184725, 29.598209, 31.324039>,  <28.560453, 29.472647, 31.268702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184725, 29.598209, 31.324039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000888, 0.401059, -0.916052,
		-0.343040, -0.860589, -0.376444,
		-0.939320, 0.313908, 0.138344,
		27.902929, 29.692381, 31.365543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179670, 29.389866, 30.644737>,  <28.560453, 29.472647, 31.268702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179670, 29.389866, 30.644737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.957750, 29.656509, 30.843868>,  <27.824598, 29.816496, 30.963346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.957750, 29.656509, 30.843868>,  <28.179670, 29.389866, 30.644737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957750, 29.656509, 30.843868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111925, 0.533123, -0.838601,
		-0.824421, -0.520975, -0.221166,
		-0.554799, 0.666607, 0.497829,
		27.791311, 29.856491, 30.993217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592928, 29.587616, 30.099827>,  <28.179670, 29.389866, 30.644737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592928, 29.587616, 30.099827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.620031, 29.881310, 30.370029>,  <27.636293, 30.057526, 30.532150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.620031, 29.881310, 30.370029>,  <27.592928, 29.587616, 30.099827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620031, 29.881310, 30.370029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102555, 0.678602, -0.727312,
		-0.992417, -0.019995, 0.121280,
		0.067759, 0.734234, 0.675506,
		27.640360, 30.101580, 30.572681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991447, 29.979048, 30.071224>,  <27.592928, 29.587616, 30.099827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991447, 29.979048, 30.071224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.274050, 30.221970, 30.216568>,  <27.443611, 30.367722, 30.303774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.274050, 30.221970, 30.216568>,  <26.991447, 29.979048, 30.071224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274050, 30.221970, 30.216568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142530, 0.625015, -0.767490,
		-0.693204, 0.490448, 0.528137,
		0.706508, 0.607303, 0.363360,
		27.486002, 30.404160, 30.325577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100191, 30.002439, 30.072783>,  <26.991447, 29.979048, 30.071224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100191, 30.002439, 30.072783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.074507, 29.770473, 29.747925>,  <26.059095, 29.631294, 29.553011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.074507, 29.770473, 29.747925>,  <26.100191, 30.002439, 30.072783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074507, 29.770473, 29.747925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063132, -0.814554, 0.576642,
		-0.995937, -0.014245, 0.088915,
		-0.064212, -0.579913, -0.812144,
		26.055243, 29.596500, 29.504282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870775, 29.437096, 30.378597>,  <26.100191, 30.002439, 30.072783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870775, 29.437096, 30.378597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.991064, 29.297287, 30.023655>,  <26.063236, 29.213402, 29.810690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.991064, 29.297287, 30.023655>,  <25.870775, 29.437096, 30.378597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991064, 29.297287, 30.023655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129003, -0.906966, 0.400962,
		-0.944948, -0.235048, -0.227652,
		0.300719, -0.349521, -0.887358,
		26.081280, 29.192430, 29.757448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475153, 28.784491, 30.244925>,  <25.870775, 29.437096, 30.378597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475153, 28.784491, 30.244925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.798780, 28.773853, 30.010078>,  <25.992956, 28.767471, 29.869171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.798780, 28.773853, 30.010078>,  <25.475153, 28.784491, 30.244925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798780, 28.773853, 30.010078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194546, -0.930538, 0.310242,
		-0.554583, -0.365228, -0.747694,
		0.809067, -0.026594, -0.587114,
		26.041500, 28.765875, 29.833944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447386, 28.038893, 30.026438>,  <25.475153, 28.784491, 30.244925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447386, 28.038893, 30.026438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.811197, 28.175343, 29.931454>,  <26.029484, 28.257214, 29.874462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.811197, 28.175343, 29.931454>,  <25.447386, 28.038893, 30.026438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811197, 28.175343, 29.931454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378276, -0.916113, 0.132834,
		-0.172229, -0.210642, -0.962272,
		0.909530, 0.341126, -0.237462,
		26.084057, 28.277681, 29.860216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625174, 27.733412, 29.387133>,  <25.447386, 28.038893, 30.026438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625174, 27.733412, 29.387133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.978321, 27.848537, 29.535568>,  <26.190210, 27.917612, 29.624630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.978321, 27.848537, 29.535568>,  <25.625174, 27.733412, 29.387133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978321, 27.848537, 29.535568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272816, -0.957505, 0.093570,
		0.382249, 0.018629, -0.923872,
		0.882869, 0.287814, 0.371088,
		26.243181, 27.934881, 29.646894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172276, 27.282925, 29.073992>,  <25.625174, 27.733412, 29.387133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172276, 27.282925, 29.073992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.346209, 27.428120, 29.403637>,  <26.450569, 27.515236, 29.601423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.346209, 27.428120, 29.403637>,  <26.172276, 27.282925, 29.073992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346209, 27.428120, 29.403637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319138, -0.917879, 0.235899,
		0.842063, 0.160429, -0.514968,
		0.434833, 0.362987, 0.824112,
		26.476658, 27.537016, 29.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924047, 27.147367, 29.032425>,  <26.172276, 27.282925, 29.073992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924047, 27.147367, 29.032425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.776360, 27.181030, 29.402634>,  <26.687746, 27.201227, 29.624760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.776360, 27.181030, 29.402634>,  <26.924047, 27.147367, 29.032425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776360, 27.181030, 29.402634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315728, -0.925299, 0.210090,
		0.874067, 0.369783, 0.315068,
		-0.369220, 0.084157, 0.925524,
		26.665594, 27.206278, 29.680290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368528, 26.724735, 29.401377>,  <26.924047, 27.147367, 29.032425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368528, 26.724735, 29.401377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.088614, 26.800907, 29.676777>,  <26.920664, 26.846609, 29.842018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.088614, 26.800907, 29.676777>,  <27.368528, 26.724735, 29.401377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088614, 26.800907, 29.676777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314671, -0.783094, 0.536420,
		0.641311, 0.592032, 0.488077,
		-0.699787, 0.190428, 0.688502,
		26.878677, 26.858036, 29.883327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700228, 26.535168, 30.082197>,  <27.368528, 26.724735, 29.401377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700228, 26.535168, 30.082197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.306936, 26.514420, 30.152138>,  <27.070961, 26.501970, 30.194101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.306936, 26.514420, 30.152138>,  <27.700228, 26.535168, 30.082197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306936, 26.514420, 30.152138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137840, -0.839135, 0.526167,
		0.119432, 0.541444, 0.832211,
		-0.983227, -0.051871, 0.174852,
		27.011969, 26.498857, 30.204594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699064, 26.320208, 30.743176>,  <27.700228, 26.535168, 30.082197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699064, 26.320208, 30.743176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.337311, 26.227764, 30.599689>,  <27.120258, 26.172298, 30.513597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.337311, 26.227764, 30.599689>,  <27.699064, 26.320208, 30.743176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337311, 26.227764, 30.599689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025502, -0.868410, 0.495191,
		-0.425956, 0.438695, 0.791270,
		-0.904384, -0.231109, -0.358717,
		27.065996, 26.158432, 30.492075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220896, 26.187628, 31.351471>,  <27.699064, 26.320208, 30.743176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220896, 26.187628, 31.351471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.054264, 26.009777, 31.034290>,  <26.954285, 25.903067, 30.843983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.054264, 26.009777, 31.034290>,  <27.220896, 26.187628, 31.351471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054264, 26.009777, 31.034290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016926, -0.868292, 0.495765,
		-0.908942, 0.219947, 0.354187,
		-0.416580, -0.444626, -0.792949,
		26.929291, 25.876389, 30.796406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662384, 25.822376, 31.587210>,  <27.220896, 26.187628, 31.351471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662384, 25.822376, 31.587210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.752583, 25.653042, 31.236225>,  <26.806702, 25.551441, 31.025635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.752583, 25.653042, 31.236225>,  <26.662384, 25.822376, 31.587210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752583, 25.653042, 31.236225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085489, -0.905782, 0.415031,
		-0.970486, -0.018574, -0.240441,
		0.225496, -0.423337, -0.877461,
		26.820230, 25.526041, 30.972986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152142, 25.215422, 31.598194>,  <26.662384, 25.822376, 31.587210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152142, 25.215422, 31.598194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.475075, 25.161060, 31.368500>,  <26.668835, 25.128445, 31.230682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.475075, 25.161060, 31.368500>,  <26.152142, 25.215422, 31.598194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475075, 25.161060, 31.368500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024696, -0.964485, 0.262981,
		-0.589582, -0.226494, -0.775302,
		0.807331, -0.135902, -0.574236,
		26.717274, 25.120289, 31.196228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003736, 24.568285, 31.287380>,  <26.152142, 25.215422, 31.598194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003736, 24.568285, 31.287380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.401117, 24.613811, 31.283394>,  <26.639545, 24.641127, 31.281002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.401117, 24.613811, 31.283394>,  <26.003736, 24.568285, 31.287380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401117, 24.613811, 31.283394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106091, -0.886609, 0.450188,
		0.042404, -0.448297, -0.892878,
		0.993452, 0.113817, -0.009965,
		26.699152, 24.647957, 31.280405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.994026, 24.849161, 30.256084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620949, 24.886528, 30.395428>,  <31.397102, 24.908947, 30.479034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620949, 24.886528, 30.395428>,  <31.994026, 24.849161, 30.256084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620949, 24.886528, 30.395428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233651, 0.579291, -0.780916,
		-0.274752, -0.809750, -0.518475,
		-0.932694, 0.093416, 0.348360,
		31.341141, 24.914553, 30.499935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452251, 24.576246, 29.761103>,  <31.994026, 24.849161, 30.256084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452251, 24.576246, 29.761103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.286896, 24.841167, 30.011051>,  <31.187683, 25.000120, 30.161020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.286896, 24.841167, 30.011051>,  <31.452251, 24.576246, 29.761103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286896, 24.841167, 30.011051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257430, 0.573250, -0.777891,
		-0.873407, -0.482432, -0.066479,
		-0.413389, 0.662302, 0.624873,
		31.162880, 25.039858, 30.198513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827789, 24.747026, 29.399261>,  <31.452251, 24.576246, 29.761103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827789, 24.747026, 29.399261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.863197, 25.021465, 29.688103>,  <30.884443, 25.186129, 29.861408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.863197, 25.021465, 29.688103>,  <30.827789, 24.747026, 29.399261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863197, 25.021465, 29.688103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266925, 0.714775, -0.646412,
		-0.959643, -0.135527, 0.246409,
		0.088521, 0.686098, 0.722104,
		30.889753, 25.227295, 29.904734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166838, 24.975063, 29.528435>,  <30.827789, 24.747026, 29.399261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166838, 24.975063, 29.528435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.433233, 25.255016, 29.631680>,  <30.593071, 25.422987, 29.693626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.433233, 25.255016, 29.631680>,  <30.166838, 24.975063, 29.528435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433233, 25.255016, 29.631680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362683, 0.606166, -0.707831,
		-0.651857, 0.377795, 0.657536,
		0.665991, 0.699881, 0.258113,
		30.633030, 25.464981, 29.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804733, 25.517965, 29.353714>,  <30.166838, 24.975063, 29.528435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804733, 25.517965, 29.353714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168602, 25.665436, 29.430214>,  <30.386923, 25.753918, 29.476114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168602, 25.665436, 29.430214>,  <29.804733, 25.517965, 29.353714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168602, 25.665436, 29.430214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153970, 0.727015, -0.669136,
		-0.385734, 0.579247, 0.718110,
		0.909671, 0.368676, 0.191248,
		30.441504, 25.776039, 29.487589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635227, 26.236414, 29.411789>,  <29.804733, 25.517965, 29.353714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635227, 26.236414, 29.411789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.024513, 26.202717, 29.326225>,  <30.258085, 26.182499, 29.274887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.024513, 26.202717, 29.326225>,  <29.635227, 26.236414, 29.411789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024513, 26.202717, 29.326225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101144, 0.678663, -0.727452,
		0.206454, 0.729602, 0.651964,
		0.973215, -0.084243, -0.213907,
		30.316477, 26.177444, 29.262053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831585, 26.883274, 29.461449>,  <29.635227, 26.236414, 29.411789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831585, 26.883274, 29.461449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081955, 26.680756, 29.224171>,  <30.232178, 26.559244, 29.081804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081955, 26.680756, 29.224171>,  <29.831585, 26.883274, 29.461449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081955, 26.680756, 29.224171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101131, 0.701507, -0.705451,
		0.773297, 0.501551, 0.387890,
		0.625927, -0.506295, -0.593195,
		30.269733, 26.528868, 29.046211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268967, 27.350180, 29.221720>,  <29.831585, 26.883274, 29.461449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268967, 27.350180, 29.221720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.296415, 27.056057, 28.952019>,  <30.312885, 26.879583, 28.790199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.296415, 27.056057, 28.952019>,  <30.268967, 27.350180, 29.221720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296415, 27.056057, 28.952019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124073, 0.676886, -0.725555,
		0.989897, -0.033868, 0.137681,
		0.068621, -0.735308, -0.674250,
		30.317001, 26.835464, 28.749744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846060, 27.622435, 28.801197>,  <30.268967, 27.350180, 29.221720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846060, 27.622435, 28.801197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656746, 27.337345, 28.594112>,  <30.543158, 27.166290, 28.469862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656746, 27.337345, 28.594112>,  <30.846060, 27.622435, 28.801197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656746, 27.337345, 28.594112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254031, 0.452309, -0.854918,
		0.843487, -0.536134, -0.033017,
		-0.473284, -0.712725, -0.517712,
		30.514761, 27.123528, 28.438799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329185, 27.306267, 28.290571>,  <30.846060, 27.622435, 28.801197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329185, 27.306267, 28.290571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955738, 27.236942, 28.165146>,  <30.731670, 27.195347, 28.089891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955738, 27.236942, 28.165146>,  <31.329185, 27.306267, 28.290571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955738, 27.236942, 28.165146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230616, 0.379077, -0.896168,
		0.274180, -0.908990, -0.313945,
		-0.933617, -0.173311, -0.313563,
		30.675653, 27.184948, 28.071077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449734, 27.025400, 27.637949>,  <31.329185, 27.306267, 28.290571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449734, 27.025400, 27.637949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063206, 27.127777, 27.627247>,  <30.831289, 27.189203, 27.620825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.063206, 27.127777, 27.627247>,  <31.449734, 27.025400, 27.637949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063206, 27.127777, 27.627247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094888, 0.257731, -0.961546,
		-0.239204, -0.931702, -0.273337,
		-0.966322, 0.255942, -0.026757,
		30.773310, 27.204559, 27.619219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232924, 26.749813, 26.949497>,  <31.449734, 27.025400, 27.637949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232924, 26.749813, 26.949497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.964474, 27.026062, 27.057301>,  <30.803404, 27.191811, 27.121983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.964474, 27.026062, 27.057301>,  <31.232924, 26.749813, 26.949497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964474, 27.026062, 27.057301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105963, 0.449172, -0.887139,
		-0.733733, -0.566823, -0.374630,
		-0.671125, 0.690620, 0.269510,
		30.763136, 27.233248, 27.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897680, 26.866261, 26.342535>,  <31.232924, 26.749813, 26.949497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897680, 26.866261, 26.342535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823757, 27.185429, 26.572029>,  <30.779404, 27.376928, 26.709726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823757, 27.185429, 26.572029>,  <30.897680, 26.866261, 26.342535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823757, 27.185429, 26.572029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002057, 0.583477, -0.812127,
		-0.982773, -0.151266, -0.106188,
		-0.184805, 0.797918, 0.573737,
		30.768316, 27.424805, 26.744150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309496, 27.241501, 26.051264>,  <30.897680, 26.866261, 26.342535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309496, 27.241501, 26.051264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524645, 27.501102, 26.266479>,  <30.653734, 27.656864, 26.395609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524645, 27.501102, 26.266479>,  <30.309496, 27.241501, 26.051264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524645, 27.501102, 26.266479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149276, 0.554817, -0.818471,
		-0.829704, 0.520550, 0.201541,
		0.537873, 0.649004, 0.538040,
		30.686007, 27.695803, 26.427891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601074, 27.534088, 26.296629>,  <30.309496, 27.241501, 26.051264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601074, 27.534088, 26.296629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.258410, 27.351212, 26.201042>,  <29.052811, 27.241486, 26.143690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.258410, 27.351212, 26.201042>,  <29.601074, 27.534088, 26.296629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258410, 27.351212, 26.201042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245306, -0.768516, 0.590938,
		-0.453822, 0.447615, 0.770511,
		-0.856662, -0.457192, -0.238967,
		29.001411, 27.214054, 26.129353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355551, 27.169514, 26.930151>,  <29.601074, 27.534088, 26.296629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355551, 27.169514, 26.930151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.150465, 26.980965, 26.643116>,  <29.027414, 26.867834, 26.470896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.150465, 26.980965, 26.643116>,  <29.355551, 27.169514, 26.930151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150465, 26.980965, 26.643116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037952, -0.847429, 0.529550,
		-0.857720, 0.244274, 0.452379,
		-0.512715, -0.471374, -0.717586,
		28.996651, 26.839552, 26.427839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734861, 26.812281, 27.276096>,  <29.355551, 27.169514, 26.930151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734861, 26.812281, 27.276096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.830833, 26.621311, 26.937984>,  <28.888416, 26.506729, 26.735117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.830833, 26.621311, 26.937984>,  <28.734861, 26.812281, 27.276096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830833, 26.621311, 26.937984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142816, -0.878598, 0.455707,
		-0.960227, 0.011382, -0.278987,
		0.239931, -0.477426, -0.845280,
		28.902813, 26.478083, 26.684401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214664, 26.326916, 27.210779>,  <28.734861, 26.812281, 27.276096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214664, 26.326916, 27.210779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.510468, 26.180721, 26.984665>,  <28.687950, 26.093004, 26.848997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.510468, 26.180721, 26.984665>,  <28.214664, 26.326916, 27.210779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510468, 26.180721, 26.984665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183895, -0.917508, 0.352649,
		-0.647541, -0.156835, -0.745717,
		0.739509, -0.365488, -0.565283,
		28.732321, 26.071075, 26.815081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904043, 25.786827, 26.957613>,  <28.214664, 26.326916, 27.210779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904043, 25.786827, 26.957613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.297955, 25.735531, 26.910686>,  <28.534302, 25.704754, 26.882530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.297955, 25.735531, 26.910686>,  <27.904043, 25.786827, 26.957613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297955, 25.735531, 26.910686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098358, -0.967693, 0.232155,
		-0.143297, -0.217083, -0.965578,
		0.984780, -0.128239, -0.117315,
		28.593390, 25.697060, 26.875492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978178, 25.215210, 26.556366>,  <27.904043, 25.786827, 26.957613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978178, 25.215210, 26.556366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325542, 25.246349, 26.752243>,  <28.533962, 25.265032, 26.869770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325542, 25.246349, 26.752243>,  <27.978178, 25.215210, 26.556366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325542, 25.246349, 26.752243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075666, -0.955226, 0.286038,
		0.490034, -0.285453, -0.823640,
		0.868413, 0.077847, 0.489692,
		28.586067, 25.269703, 26.899151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292957, 24.543573, 26.570818>,  <27.978178, 25.215210, 26.556366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292957, 24.543573, 26.570818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.552916, 24.709145, 26.825783>,  <28.708891, 24.808487, 26.978762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.552916, 24.709145, 26.825783>,  <28.292957, 24.543573, 26.570818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552916, 24.709145, 26.825783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025579, -0.850116, 0.525974,
		0.759591, -0.325525, -0.563076,
		0.649898, 0.413928, 0.637414,
		28.747885, 24.833323, 27.017006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886806, 24.097336, 26.625711>,  <28.292957, 24.543573, 26.570818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886806, 24.097336, 26.625711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.894630, 24.300278, 26.970318>,  <28.899324, 24.422043, 27.177082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.894630, 24.300278, 26.970318>,  <28.886806, 24.097336, 26.625711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894630, 24.300278, 26.970318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140651, -0.854507, 0.500034,
		0.989866, 0.111392, -0.088075,
		0.019561, 0.507355, 0.861515,
		28.900499, 24.452484, 27.228773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543234, 24.066589, 26.995401>,  <28.886806, 24.097336, 26.625711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543234, 24.066589, 26.995401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252716, 24.136806, 27.261238>,  <29.078405, 24.178936, 27.420740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.252716, 24.136806, 27.261238>,  <29.543234, 24.066589, 26.995401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252716, 24.136806, 27.261238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288893, -0.799354, 0.526853,
		0.623729, 0.574646, 0.529853,
		-0.726294, 0.175542, 0.664592,
		29.034828, 24.189468, 27.460615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958941, 24.127357, 27.700230>,  <29.543234, 24.066589, 26.995401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958941, 24.127357, 27.700230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.566975, 24.057701, 27.739094>,  <29.331795, 24.015907, 27.762413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.566975, 24.057701, 27.739094>,  <29.958941, 24.127357, 27.700230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566975, 24.057701, 27.739094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196937, -0.768583, 0.608684,
		-0.031320, 0.615594, 0.787441,
		-0.979916, -0.174140, 0.097161,
		29.273001, 24.005459, 27.768242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879377, 24.233431, 28.434839>,  <29.958941, 24.127357, 27.700230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879377, 24.233431, 28.434839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.573690, 24.002148, 28.320545>,  <29.390278, 23.863377, 28.251968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.573690, 24.002148, 28.320545>,  <29.879377, 24.233431, 28.434839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573690, 24.002148, 28.320545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208716, -0.640904, 0.738702,
		-0.610253, 0.504892, 0.610471,
		-0.764218, -0.578210, -0.285735,
		29.344425, 23.828684, 28.234825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542883, 24.130033, 28.976465>,  <29.879377, 24.233431, 28.434839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542883, 24.130033, 28.976465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.413712, 23.833797, 28.740757>,  <29.336208, 23.656055, 28.599333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.413712, 23.833797, 28.740757>,  <29.542883, 24.130033, 28.976465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413712, 23.833797, 28.740757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166138, -0.657320, 0.735070,
		-0.931727, 0.139476, 0.335309,
		-0.322930, -0.740592, -0.589271,
		29.316833, 23.611620, 28.563976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144321, 23.702665, 29.450924>,  <29.542883, 24.130033, 28.976465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144321, 23.702665, 29.450924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.188097, 23.481487, 29.120525>,  <29.214361, 23.348780, 28.922285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.188097, 23.481487, 29.120525>,  <29.144321, 23.702665, 29.450924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188097, 23.481487, 29.120525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031357, -0.832496, 0.553142,
		-0.993499, -0.034633, -0.108445,
		0.109437, -0.552947, -0.825998,
		29.220928, 23.315603, 28.872726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627785, 23.236845, 29.540806>,  <29.144321, 23.702665, 29.450924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627785, 23.236845, 29.540806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.913336, 23.085052, 29.305393>,  <29.084667, 22.993977, 29.164146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.913336, 23.085052, 29.305393>,  <28.627785, 23.236845, 29.540806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913336, 23.085052, 29.305393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044172, -0.814362, 0.578674,
		-0.698873, -0.439101, -0.564595,
		0.713881, -0.379480, -0.588531,
		29.127501, 22.971209, 29.128834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006371, 22.883282, 29.199154>,  <28.627785, 23.236845, 29.540806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006371, 22.883282, 29.199154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.635454, 22.733753, 29.191254>,  <27.412905, 22.644035, 29.186514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.635454, 22.733753, 29.191254>,  <28.006371, 22.883282, 29.199154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635454, 22.733753, 29.191254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265883, 0.694838, -0.668211,
		0.263514, -0.614374, -0.743710,
		-0.927289, -0.373823, -0.019748,
		27.357267, 22.621607, 29.185329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837669, 22.819672, 28.542225>,  <28.006371, 22.883282, 29.199154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837669, 22.819672, 28.542225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.491682, 22.840332, 28.741890>,  <27.284090, 22.852728, 28.861689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.491682, 22.840332, 28.741890>,  <27.837669, 22.819672, 28.542225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491682, 22.840332, 28.741890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303918, 0.737610, -0.602964,
		-0.399333, -0.673248, -0.622311,
		-0.864967, 0.051652, 0.499164,
		27.232191, 22.855827, 28.891640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399742, 23.074423, 28.072701>,  <27.837669, 22.819672, 28.542225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399742, 23.074423, 28.072701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.209658, 23.148743, 28.416714>,  <27.095608, 23.193335, 28.623121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.209658, 23.148743, 28.416714>,  <27.399742, 23.074423, 28.072701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209658, 23.148743, 28.416714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403365, 0.822683, -0.400611,
		-0.781967, -0.537281, -0.316001,
		-0.475209, 0.185801, 0.860032,
		27.067095, 23.204483, 28.674723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753113, 23.172754, 27.850246>,  <27.399742, 23.074423, 28.072701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753113, 23.172754, 27.850246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.795439, 23.362984, 28.199562>,  <26.820835, 23.477121, 28.409151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.795439, 23.362984, 28.199562>,  <26.753113, 23.172754, 27.850246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795439, 23.362984, 28.199562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589249, 0.737407, -0.330177,
		-0.800992, -0.479646, 0.358262,
		0.105816, 0.475575, 0.873287,
		26.827183, 23.505655, 28.461548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164236, 23.608786, 27.909128>,  <26.753113, 23.172754, 27.850246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164236, 23.608786, 27.909128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.422400, 23.772957, 28.166809>,  <26.577297, 23.871460, 28.321417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.422400, 23.772957, 28.166809>,  <26.164236, 23.608786, 27.909128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422400, 23.772957, 28.166809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312259, 0.911454, -0.267853,
		-0.697094, -0.028283, 0.716422,
		0.645410, 0.410428, 0.644201,
		26.616022, 23.896086, 28.360069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747149, 24.140354, 28.363449>,  <26.164236, 23.608786, 27.909128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747149, 24.140354, 28.363449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.133430, 24.241669, 28.386276>,  <26.365200, 24.302458, 28.399973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.133430, 24.241669, 28.386276>,  <25.747149, 24.140354, 28.363449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133430, 24.241669, 28.386276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235143, 0.946414, -0.221378,
		-0.110080, 0.200367, 0.973517,
		0.965707, 0.253285, 0.057066,
		26.423143, 24.317654, 28.403397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752531, 24.753275, 28.837873>,  <25.747149, 24.140354, 28.363449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752531, 24.753275, 28.837873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.102968, 24.779842, 28.646854>,  <26.313231, 24.795782, 28.532244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.102968, 24.779842, 28.646854>,  <25.752531, 24.753275, 28.837873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102968, 24.779842, 28.646854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233147, 0.925324, -0.299029,
		0.422023, 0.373315, 0.826155,
		0.876093, 0.066418, -0.477545,
		26.365797, 24.799768, 28.503592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012039, 25.387787, 29.084257>,  <25.752531, 24.753275, 28.837873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012039, 25.387787, 29.084257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.197958, 25.288132, 28.744400>,  <26.309509, 25.228338, 28.540485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.197958, 25.288132, 28.744400>,  <26.012039, 25.387787, 29.084257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197958, 25.288132, 28.744400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014184, 0.957379, -0.288486,
		0.885304, 0.146138, 0.441453,
		0.464796, -0.249136, -0.849644,
		26.337397, 25.213390, 28.489506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555643, 26.004833, 28.962702>,  <26.012039, 25.387787, 29.084257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555643, 26.004833, 28.962702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.461784, 25.798870, 28.632900>,  <26.405470, 25.675291, 28.435019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.461784, 25.798870, 28.632900>,  <26.555643, 26.004833, 28.962702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461784, 25.798870, 28.632900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189020, 0.856165, -0.480888,
		0.953526, 0.043009, -0.298224,
		-0.234647, -0.514910, -0.824505,
		26.391390, 25.644398, 28.385550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896870, 26.332031, 28.433544>,  <26.555643, 26.004833, 28.962702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896870, 26.332031, 28.433544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.641800, 26.119854, 28.210117>,  <26.488758, 25.992548, 28.076061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.641800, 26.119854, 28.210117>,  <26.896870, 26.332031, 28.433544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641800, 26.119854, 28.210117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195749, 0.812910, -0.548507,
		0.745016, -0.240432, -0.622208,
		-0.637678, -0.530444, -0.558567,
		26.450497, 25.960720, 28.042547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013523, 26.527500, 27.614712>,  <26.896870, 26.332031, 28.433544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013523, 26.527500, 27.614712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.653406, 26.366013, 27.679810>,  <26.437336, 26.269119, 27.718868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.653406, 26.366013, 27.679810>,  <27.013523, 26.527500, 27.614712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653406, 26.366013, 27.679810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403366, 0.633227, -0.660545,
		0.163619, -0.660330, -0.732935,
		-0.900292, -0.403719, 0.162746,
		26.383318, 26.244896, 27.728634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788342, 26.267750, 26.977488>,  <27.013523, 26.527500, 27.614712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788342, 26.267750, 26.977488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.465542, 26.336308, 27.203541>,  <26.271862, 26.377441, 27.339172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.465542, 26.336308, 27.203541>,  <26.788342, 26.267750, 26.977488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465542, 26.336308, 27.203541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391976, 0.560304, -0.729667,
		-0.441706, -0.810360, -0.384984,
		-0.807001, 0.171394, 0.565131,
		26.223442, 26.387726, 27.373079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230040, 26.287508, 26.465345>,  <26.788342, 26.267750, 26.977488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230040, 26.287508, 26.465345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.099878, 26.467644, 26.797924>,  <26.021782, 26.575726, 26.997471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.099878, 26.467644, 26.797924>,  <26.230040, 26.287508, 26.465345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099878, 26.467644, 26.797924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466853, 0.688143, -0.555435,
		-0.822289, -0.568905, -0.013682,
		-0.325405, 0.450341, 0.831448,
		26.002256, 26.602745, 27.047358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565311, 26.482803, 26.291647>,  <26.230040, 26.287508, 26.465345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565311, 26.482803, 26.291647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.668007, 26.703400, 26.609123>,  <25.729624, 26.835756, 26.799608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.668007, 26.703400, 26.609123>,  <25.565311, 26.482803, 26.291647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668007, 26.703400, 26.609123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494179, 0.780654, -0.382578,
		-0.830586, -0.294003, 0.472958,
		0.256738, 0.551490, 0.793690,
		25.745028, 26.868847, 26.847231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.623512, 33.654888, 32.140663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.988319, 33.807949, 32.081596>,  <39.207203, 33.899784, 32.046158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.988319, 33.807949, 32.081596>,  <38.623512, 33.654888, 32.140663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988319, 33.807949, 32.081596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264885, 0.274618, -0.924349,
		-0.313151, 0.882135, 0.351814,
		0.912015, 0.382651, -0.147668,
		39.261925, 33.922745, 32.037296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507790, 34.322765, 31.809219>,  <38.623512, 33.654888, 32.140663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507790, 34.322765, 31.809219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.876907, 34.198544, 31.718002>,  <39.098377, 34.124012, 31.663273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.876907, 34.198544, 31.718002>,  <38.507790, 34.322765, 31.809219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876907, 34.198544, 31.718002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173533, 0.193439, -0.965644,
		0.343997, 0.930665, 0.124613,
		0.922796, -0.310554, -0.228043,
		39.153748, 34.105377, 31.649590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773113, 34.821144, 31.353798>,  <38.507790, 34.322765, 31.809219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773113, 34.821144, 31.353798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996658, 34.500324, 31.269527>,  <39.130787, 34.307831, 31.218966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.996658, 34.500324, 31.269527>,  <38.773113, 34.821144, 31.353798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996658, 34.500324, 31.269527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036093, 0.230285, -0.972454,
		0.828475, 0.551071, 0.099749,
		0.558862, -0.802053, -0.210675,
		39.164318, 34.259708, 31.206326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009415, 34.981747, 30.681599>,  <38.773113, 34.821144, 31.353798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009415, 34.981747, 30.681599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117672, 34.597118, 30.700058>,  <39.182625, 34.366341, 30.711134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117672, 34.597118, 30.700058>,  <39.009415, 34.981747, 30.681599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117672, 34.597118, 30.700058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157263, -0.003131, -0.987552,
		0.949747, 0.274533, 0.150372,
		0.270645, -0.961573, 0.046147,
		39.198864, 34.308647, 30.713902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734035, 34.937344, 30.437948>,  <39.009415, 34.981747, 30.681599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734035, 34.937344, 30.437948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552155, 34.583649, 30.395287>,  <39.443027, 34.371433, 30.369690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552155, 34.583649, 30.395287>,  <39.734035, 34.937344, 30.437948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552155, 34.583649, 30.395287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273340, -0.024577, -0.961603,
		0.847661, -0.466397, 0.252872,
		-0.454703, -0.884234, -0.106652,
		39.415745, 34.318378, 30.363291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192245, 34.437561, 30.086416>,  <39.734035, 34.937344, 30.437948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192245, 34.437561, 30.086416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.828583, 34.282166, 30.026409>,  <39.610386, 34.188931, 29.990406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.828583, 34.282166, 30.026409>,  <40.192245, 34.437561, 30.086416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828583, 34.282166, 30.026409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227088, -0.160522, -0.960554,
		0.349080, -0.907366, 0.234161,
		-0.909162, -0.388485, -0.150017,
		39.555836, 34.165619, 29.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426407, 33.910690, 29.739538>,  <40.192245, 34.437561, 30.086416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426407, 33.910690, 29.739538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032501, 33.954659, 29.685638>,  <39.796158, 33.981037, 29.653299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032501, 33.954659, 29.685638>,  <40.426407, 33.910690, 29.739538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032501, 33.954659, 29.685638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114132, -0.176080, -0.977737,
		-0.131193, -0.978220, 0.160853,
		-0.984765, 0.109914, -0.134746,
		39.737072, 33.987633, 29.645214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356110, 33.578613, 29.168167>,  <40.426407, 33.910690, 29.739538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356110, 33.578613, 29.168167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006180, 33.772369, 29.165249>,  <39.796223, 33.888622, 29.163498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006180, 33.772369, 29.165249>,  <40.356110, 33.578613, 29.168167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006180, 33.772369, 29.165249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102687, -0.200132, -0.974373,
		-0.473438, -0.851653, 0.224821,
		-0.874821, 0.484391, -0.007296,
		39.743732, 33.917686, 29.163059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972477, 33.183331, 28.796291>,  <40.356110, 33.578613, 29.168167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972477, 33.183331, 28.796291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843834, 33.561562, 28.776520>,  <39.766647, 33.788502, 28.764656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843834, 33.561562, 28.776520>,  <39.972477, 33.183331, 28.796291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843834, 33.561562, 28.776520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183844, -0.113569, -0.976373,
		-0.928853, -0.304924, 0.210364,
		-0.321611, 0.945581, -0.049430,
		39.747353, 33.845238, 28.761690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314316, 32.996738, 28.460955>,  <39.972477, 33.183331, 28.796291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314316, 32.996738, 28.460955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401466, 33.385632, 28.426773>,  <39.453758, 33.618965, 28.406263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401466, 33.385632, 28.426773>,  <39.314316, 32.996738, 28.460955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401466, 33.385632, 28.426773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300068, -0.016587, -0.953773,
		-0.928703, 0.233446, 0.288121,
		0.217876, 0.972228, -0.085454,
		39.466827, 33.677299, 28.401136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743141, 33.295235, 28.090054>,  <39.314316, 32.996738, 28.460955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743141, 33.295235, 28.090054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060646, 33.528416, 28.020649>,  <39.251148, 33.668324, 27.979006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060646, 33.528416, 28.020649>,  <38.743141, 33.295235, 28.090054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060646, 33.528416, 28.020649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190846, -0.032153, -0.981093,
		-0.577511, 0.811869, 0.085733,
		0.793763, 0.582953, -0.173511,
		39.298775, 33.703300, 27.968596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557259, 33.635345, 27.521862>,  <38.743141, 33.295235, 28.090054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557259, 33.635345, 27.521862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.945198, 33.731964, 27.534786>,  <39.177963, 33.789936, 27.542542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.945198, 33.731964, 27.534786>,  <38.557259, 33.635345, 27.521862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945198, 33.731964, 27.534786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039250, -0.023963, -0.998942,
		-0.240521, 0.970092, -0.032722,
		0.969850, 0.241551, 0.032312,
		39.236153, 33.804428, 27.544479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718082, 34.250179, 27.017223>,  <38.557259, 33.635345, 27.521862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718082, 34.250179, 27.017223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.092258, 34.111351, 27.044037>,  <39.316765, 34.028053, 27.060125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.092258, 34.111351, 27.044037>,  <38.718082, 34.250179, 27.017223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092258, 34.111351, 27.044037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109615, 0.104518, -0.988464,
		0.336063, 0.931996, 0.135815,
		0.935439, -0.347074, 0.067036,
		39.372890, 34.007229, 27.064148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084667, 34.580807, 26.484840>,  <38.718082, 34.250179, 27.017223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084667, 34.580807, 26.484840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.284149, 34.242931, 26.562595>,  <39.403839, 34.040207, 26.609249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.284149, 34.242931, 26.562595>,  <39.084667, 34.580807, 26.484840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284149, 34.242931, 26.562595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090317, -0.172405, -0.980877,
		0.862053, 0.506725, -0.009689,
		0.498705, -0.844693, 0.194388,
		39.433762, 33.989525, 26.620913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641888, 34.611179, 26.023226>,  <39.084667, 34.580807, 26.484840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641888, 34.611179, 26.023226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.612988, 34.226173, 26.127796>,  <39.595646, 33.995171, 26.190538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.612988, 34.226173, 26.127796>,  <39.641888, 34.611179, 26.023226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612988, 34.226173, 26.127796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118385, -0.268534, -0.955968,
		0.990335, -0.038125, 0.133350,
		-0.072255, -0.962516, 0.261425,
		39.591312, 33.937420, 26.206224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119675, 34.345806, 25.552176>,  <39.641888, 34.611179, 26.023226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119675, 34.345806, 25.552176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920948, 34.017178, 25.664024>,  <39.801712, 33.820000, 25.731134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920948, 34.017178, 25.664024>,  <40.119675, 34.345806, 25.552176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920948, 34.017178, 25.664024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117579, -0.382951, -0.916255,
		0.859854, -0.422333, 0.286856,
		-0.496816, -0.821574, 0.279624,
		39.771904, 33.770706, 25.747911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431290, 33.885777, 25.236879>,  <40.119675, 34.345806, 25.552176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431290, 33.885777, 25.236879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087074, 33.704723, 25.330341>,  <39.880547, 33.596092, 25.386417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.087074, 33.704723, 25.330341>,  <40.431290, 33.885777, 25.236879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087074, 33.704723, 25.330341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029844, -0.413108, -0.910193,
		0.508511, -0.790228, 0.341987,
		-0.860538, -0.452637, 0.233654,
		39.828915, 33.568932, 25.400438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474686, 33.117657, 25.051109>,  <40.431290, 33.885777, 25.236879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474686, 33.117657, 25.051109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.082966, 33.198563, 25.053963>,  <39.847935, 33.247108, 25.055676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.082966, 33.198563, 25.053963>,  <40.474686, 33.117657, 25.051109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082966, 33.198563, 25.053963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107104, -0.487999, -0.866248,
		-0.171732, -0.849085, 0.499563,
		-0.979304, 0.202268, 0.007136,
		39.789173, 33.259243, 25.056103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160023, 32.545479, 24.770594>,  <40.474686, 33.117657, 25.051109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160023, 32.545479, 24.770594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.914223, 32.858150, 24.727936>,  <39.766743, 33.045753, 24.702341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.914223, 32.858150, 24.727936>,  <40.160023, 32.545479, 24.770594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914223, 32.858150, 24.727936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204787, -0.288592, -0.935295,
		-0.761875, -0.552899, 0.337416,
		-0.614499, 0.781676, -0.106644,
		39.729874, 33.092655, 24.695942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585098, 32.222118, 24.493969>,  <40.160023, 32.545479, 24.770594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585098, 32.222118, 24.493969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547909, 32.610390, 24.405300>,  <39.525597, 32.843353, 24.352098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547909, 32.610390, 24.405300>,  <39.585098, 32.222118, 24.493969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547909, 32.610390, 24.405300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265524, -0.238744, -0.934076,
		-0.959611, -0.027986, 0.279935,
		-0.092974, 0.970679, -0.221671,
		39.520016, 32.901592, 24.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996792, 32.354996, 24.038616>,  <39.585098, 32.222118, 24.493969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996792, 32.354996, 24.038616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228184, 32.672222, 23.962299>,  <39.367020, 32.862560, 23.916510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228184, 32.672222, 23.962299>,  <38.996792, 32.354996, 24.038616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228184, 32.672222, 23.962299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051122, -0.198195, -0.978829,
		-0.814092, 0.575987, -0.074109,
		0.578481, 0.793068, -0.190794,
		39.401730, 32.910141, 23.905062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180172, 32.223454, 24.011806>,  <38.996792, 32.354996, 24.038616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180172, 32.223454, 24.011806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.830547, 32.044842, 23.935246>,  <37.620773, 31.937675, 23.889309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.830547, 32.044842, 23.935246>,  <38.180172, 32.223454, 24.011806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830547, 32.044842, 23.935246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094209, -0.230714, 0.968450,
		-0.476600, 0.864513, 0.159591,
		-0.874058, -0.446528, -0.191404,
		37.568329, 31.910883, 23.877825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681316, 32.522774, 24.434704>,  <38.180172, 32.223454, 24.011806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681316, 32.522774, 24.434704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.542194, 32.156937, 24.352188>,  <37.458721, 31.937435, 24.302679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.542194, 32.156937, 24.352188>,  <37.681316, 32.522774, 24.434704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542194, 32.156937, 24.352188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189508, -0.146907, 0.970827,
		-0.918215, 0.376753, -0.122227,
		-0.347806, -0.914590, -0.206290,
		37.437851, 31.882559, 24.290300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093887, 32.496548, 24.809776>,  <37.681316, 32.522774, 24.434704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093887, 32.496548, 24.809776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188831, 32.111938, 24.754433>,  <37.245796, 31.881174, 24.721228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188831, 32.111938, 24.754433>,  <37.093887, 32.496548, 24.809776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188831, 32.111938, 24.754433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132868, -0.173223, 0.975879,
		-0.962293, -0.213249, -0.168871,
		0.237358, -0.961519, -0.138357,
		37.260040, 31.823483, 24.712925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603580, 32.042801, 25.129696>,  <37.093887, 32.496548, 24.809776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603580, 32.042801, 25.129696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919399, 31.799652, 25.095982>,  <37.108891, 31.653763, 25.075752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.919399, 31.799652, 25.095982>,  <36.603580, 32.042801, 25.129696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919399, 31.799652, 25.095982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168085, -0.346295, 0.922945,
		-0.590221, -0.714542, -0.375591,
		0.789548, -0.607873, -0.084287,
		37.156265, 31.617290, 25.070696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410133, 31.530495, 25.520704>,  <36.603580, 32.042801, 25.129696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410133, 31.530495, 25.520704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802921, 31.469288, 25.476288>,  <37.038593, 31.432564, 25.449638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802921, 31.469288, 25.476288>,  <36.410133, 31.530495, 25.520704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802921, 31.469288, 25.476288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036617, -0.422273, 0.905729,
		-0.185479, -0.893461, -0.409055,
		0.981965, -0.153016, -0.111039,
		37.097511, 31.423384, 25.442976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430641, 30.847153, 25.602674>,  <36.410133, 31.530495, 25.520704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430641, 30.847153, 25.602674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774105, 31.032597, 25.690105>,  <36.980183, 31.143864, 25.742565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774105, 31.032597, 25.690105>,  <36.430641, 30.847153, 25.602674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774105, 31.032597, 25.690105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034831, -0.372686, 0.927304,
		0.511369, -0.803847, -0.303861,
		0.858655, 0.463610, 0.218579,
		37.031700, 31.171680, 25.755678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838634, 30.322380, 25.991280>,  <36.430641, 30.847153, 25.602674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838634, 30.322380, 25.991280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003479, 30.676483, 26.077526>,  <37.102386, 30.888945, 26.129274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003479, 30.676483, 26.077526>,  <36.838634, 30.322380, 25.991280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003479, 30.676483, 26.077526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105952, -0.281600, 0.953664,
		0.904954, -0.370168, -0.209844,
		0.412108, 0.885255, 0.215615,
		37.127113, 30.942060, 26.142210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512604, 30.069662, 26.179022>,  <36.838634, 30.322380, 25.991280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512604, 30.069662, 26.179022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436348, 30.427006, 26.341782>,  <37.390594, 30.641413, 26.439438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.436348, 30.427006, 26.341782>,  <37.512604, 30.069662, 26.179022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436348, 30.427006, 26.341782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237986, -0.360076, 0.902058,
		0.952376, 0.268802, -0.143963,
		-0.190638, 0.893359, 0.406899,
		37.379158, 30.695013, 26.463852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091896, 30.206909, 26.560072>,  <37.512604, 30.069662, 26.179022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091896, 30.206909, 26.560072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.798084, 30.444683, 26.690979>,  <37.621796, 30.587347, 26.769524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.798084, 30.444683, 26.690979>,  <38.091896, 30.206909, 26.560072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798084, 30.444683, 26.690979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344646, -0.088641, 0.934538,
		0.584533, 0.799242, -0.139760,
		-0.734534, 0.594437, 0.327269,
		37.577724, 30.623014, 26.789160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395164, 30.488115, 27.073681>,  <38.091896, 30.206909, 26.560072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395164, 30.488115, 27.073681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027637, 30.603172, 27.181789>,  <37.807121, 30.672207, 27.246655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027637, 30.603172, 27.181789>,  <38.395164, 30.488115, 27.073681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027637, 30.603172, 27.181789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298265, 0.057540, 0.952747,
		0.258497, 0.956008, -0.138662,
		-0.918813, 0.287640, 0.270270,
		37.751995, 30.689465, 27.262871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431377, 31.097965, 27.594440>,  <38.395164, 30.488115, 27.073681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431377, 31.097965, 27.594440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.063702, 30.947571, 27.641315>,  <37.843098, 30.857334, 27.669441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.063702, 30.947571, 27.641315>,  <38.431377, 31.097965, 27.594440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063702, 30.947571, 27.641315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134039, -0.018874, 0.990796,
		-0.370313, 0.926434, 0.067745,
		-0.919186, -0.375985, 0.117189,
		37.787945, 30.834776, 27.676472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124836, 31.539148, 28.010023>,  <38.431377, 31.097965, 27.594440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124836, 31.539148, 28.010023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.955761, 31.179287, 28.053768>,  <37.854317, 30.963371, 28.080015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.955761, 31.179287, 28.053768>,  <38.124836, 31.539148, 28.010023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955761, 31.179287, 28.053768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096200, 0.075452, 0.992498,
		-0.901154, 0.430041, 0.054653,
		-0.422691, -0.899651, 0.109363,
		37.828953, 30.909391, 28.086576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525833, 31.603977, 28.519110>,  <38.124836, 31.539148, 28.010023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525833, 31.603977, 28.519110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.607304, 31.212391, 28.514439>,  <37.656185, 30.977438, 28.511637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.607304, 31.212391, 28.514439>,  <37.525833, 31.603977, 28.519110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607304, 31.212391, 28.514439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220294, 0.034207, 0.974833,
		-0.953931, -0.201126, 0.222628,
		0.203679, -0.978968, -0.011676,
		37.668407, 30.918701, 28.510937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216938, 31.399555, 29.119761>,  <37.525833, 31.603977, 28.519110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216938, 31.399555, 29.119761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447121, 31.094814, 29.000813>,  <37.585232, 30.911970, 28.929443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447121, 31.094814, 29.000813>,  <37.216938, 31.399555, 29.119761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447121, 31.094814, 29.000813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418282, -0.038279, 0.907510,
		-0.702771, -0.646620, 0.296641,
		0.575459, -0.761851, -0.297371,
		37.619759, 30.866259, 28.911602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070049, 30.834068, 29.586349>,  <37.216938, 31.399555, 29.119761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070049, 30.834068, 29.586349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426018, 30.775120, 29.413689>,  <37.639599, 30.739750, 29.310091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.426018, 30.775120, 29.413689>,  <37.070049, 30.834068, 29.586349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426018, 30.775120, 29.413689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421211, -0.097559, 0.901700,
		-0.174996, -0.984258, -0.024746,
		0.889920, -0.147371, -0.431653,
		37.692993, 30.730907, 29.284193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339500, 30.322504, 29.971321>,  <37.070049, 30.834068, 29.586349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339500, 30.322504, 29.971321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.646259, 30.517242, 29.804062>,  <37.830315, 30.634085, 29.703707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.646259, 30.517242, 29.804062>,  <37.339500, 30.322504, 29.971321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646259, 30.517242, 29.804062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490203, -0.023856, 0.871282,
		0.414204, -0.873163, -0.256948,
		0.766900, 0.486845, -0.418146,
		37.876331, 30.663296, 29.678617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948219, 30.134087, 30.277750>,  <37.339500, 30.322504, 29.971321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948219, 30.134087, 30.277750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.058762, 30.480030, 30.110111>,  <38.125088, 30.687597, 30.009527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.058762, 30.480030, 30.110111>,  <37.948219, 30.134087, 30.277750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058762, 30.480030, 30.110111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437577, 0.275025, 0.856089,
		0.855659, -0.419975, -0.302437,
		0.276358, 0.864860, -0.419099,
		38.141670, 30.739489, 29.984381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734241, 30.218130, 30.415363>,  <37.948219, 30.134087, 30.277750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734241, 30.218130, 30.415363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.585823, 30.583431, 30.348080>,  <38.496773, 30.802612, 30.307709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.585823, 30.583431, 30.348080>,  <38.734241, 30.218130, 30.415363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585823, 30.583431, 30.348080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553815, 0.363029, 0.749332,
		0.745394, 0.184882, -0.640474,
		-0.371049, 0.913252, -0.168209,
		38.474510, 30.857407, 30.297617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231056, 30.707750, 30.603733>,  <38.734241, 30.218130, 30.415363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231056, 30.707750, 30.603733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930637, 30.971779, 30.597584>,  <38.750385, 31.130196, 30.593893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930637, 30.971779, 30.597584>,  <39.231056, 30.707750, 30.603733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930637, 30.971779, 30.597584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493479, 0.576656, 0.651111,
		0.438647, 0.481426, -0.758826,
		-0.751044, 0.660073, -0.015375,
		38.705322, 31.169802, 30.592972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471382, 31.393442, 30.397406>,  <39.231056, 30.707750, 30.603733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471382, 31.393442, 30.397406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146408, 31.432774, 30.627289>,  <38.951424, 31.456371, 30.765219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.146408, 31.432774, 30.627289>,  <39.471382, 31.393442, 30.397406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146408, 31.432774, 30.627289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527865, 0.542645, 0.653372,
		-0.247618, 0.834187, -0.492765,
		-0.812431, 0.098327, 0.574707,
		38.902679, 31.462271, 30.799702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602413, 32.024025, 30.654797>,  <39.471382, 31.393442, 30.397406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602413, 32.024025, 30.654797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337246, 31.827496, 30.880768>,  <39.178146, 31.709579, 31.016350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337246, 31.827496, 30.880768>,  <39.602413, 32.024025, 30.654797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337246, 31.827496, 30.880768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554744, 0.184384, 0.811333,
		-0.502787, 0.851239, 0.150325,
		-0.662920, -0.491320, 0.564926,
		39.138371, 31.680099, 31.050245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.276484, 23.948824, 31.015108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.632065, 24.087067, 31.135319>,  <26.845413, 24.170013, 31.207445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.632065, 24.087067, 31.135319>,  <26.276484, 23.948824, 31.015108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632065, 24.087067, 31.135319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085358, -0.769700, 0.632673,
		0.449973, -0.536765, -0.713728,
		0.888953, 0.345608, 0.300527,
		26.898750, 24.190748, 31.225477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676289, 23.464931, 31.028748>,  <26.276484, 23.948824, 31.015108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676289, 23.464931, 31.028748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.865585, 23.697643, 31.293346>,  <26.979164, 23.837271, 31.452105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.865585, 23.697643, 31.293346>,  <26.676289, 23.464931, 31.028748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865585, 23.697643, 31.293346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225242, -0.805853, 0.547600,
		0.851650, -0.110151, -0.512405,
		0.473242, 0.581779, 0.661495,
		27.007557, 23.872177, 31.491795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460028, 23.233286, 31.079769>,  <26.676289, 23.464931, 31.028748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460028, 23.233286, 31.079769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.350859, 23.424458, 31.413738>,  <27.285357, 23.539160, 31.614120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.350859, 23.424458, 31.413738>,  <27.460028, 23.233286, 31.079769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350859, 23.424458, 31.413738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283280, -0.789469, 0.544510,
		0.919383, 0.385126, 0.080076,
		-0.272923, 0.477930, 0.834923,
		27.268982, 23.567837, 31.664215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724859, 22.916981, 31.555202>,  <27.460028, 23.233286, 31.079769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724859, 22.916981, 31.555202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493498, 23.125629, 31.806076>,  <27.354681, 23.250818, 31.956600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493498, 23.125629, 31.806076>,  <27.724859, 22.916981, 31.555202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493498, 23.125629, 31.806076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085616, -0.725779, 0.682579,
		0.811247, 0.448502, 0.375133,
		-0.578401, 0.521623, 0.627185,
		27.319977, 23.282116, 31.994232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061516, 22.964966, 32.225117>,  <27.724859, 22.916981, 31.555202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061516, 22.964966, 32.225117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.670780, 23.021118, 32.289707>,  <27.436338, 23.054810, 32.328461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.670780, 23.021118, 32.289707>,  <28.061516, 22.964966, 32.225117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670780, 23.021118, 32.289707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047559, -0.593362, 0.803529,
		0.208614, 0.792600, 0.572944,
		-0.976841, 0.140379, 0.161479,
		27.377728, 23.063232, 32.338150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148167, 23.066786, 32.864208>,  <28.061516, 22.964966, 32.225117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148167, 23.066786, 32.864208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.779207, 22.936356, 32.781399>,  <27.557833, 22.858097, 32.731712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.779207, 22.936356, 32.781399>,  <28.148167, 23.066786, 32.864208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779207, 22.936356, 32.781399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060967, -0.652185, 0.755604,
		-0.381402, 0.684345, 0.621453,
		-0.922396, -0.326077, -0.207023,
		27.502489, 22.838531, 32.719292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959314, 22.954178, 33.511906>,  <28.148167, 23.066786, 32.864208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959314, 22.954178, 33.511906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.714922, 22.755768, 33.265118>,  <27.568287, 22.636721, 33.117043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.714922, 22.755768, 33.265118>,  <27.959314, 22.954178, 33.511906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714922, 22.755768, 33.265118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033423, -0.762500, 0.646124,
		-0.790939, 0.415391, 0.449295,
		-0.610982, -0.496027, -0.616975,
		27.531628, 22.606960, 33.080025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337418, 22.789984, 33.898308>,  <27.959314, 22.954178, 33.511906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337418, 22.789984, 33.898308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.405802, 22.515060, 33.615925>,  <27.446833, 22.350107, 33.446495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.405802, 22.515060, 33.615925>,  <27.337418, 22.789984, 33.898308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405802, 22.515060, 33.615925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126824, -0.725900, 0.676006,
		-0.977081, -0.026039, -0.211269,
		0.170962, -0.687307, -0.705961,
		27.457090, 22.308868, 33.404137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999990, 22.304121, 34.117687>,  <27.337418, 22.789984, 33.898308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999990, 22.304121, 34.117687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.203749, 22.113541, 33.831047>,  <27.326004, 21.999193, 33.659065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.203749, 22.113541, 33.831047>,  <26.999990, 22.304121, 34.117687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203749, 22.113541, 33.831047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132078, -0.866158, 0.482003,
		-0.850332, -0.150888, -0.504152,
		0.509403, -0.476450, -0.716592,
		27.356567, 21.970606, 33.616066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612038, 21.648146, 33.977177>,  <26.999990, 22.304121, 34.117687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612038, 21.648146, 33.977177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.991632, 21.601837, 33.859859>,  <27.219389, 21.574053, 33.789471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.991632, 21.601837, 33.859859>,  <26.612038, 21.648146, 33.977177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991632, 21.601837, 33.859859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033954, -0.887227, 0.460082,
		-0.313478, -0.446571, -0.838037,
		0.948989, -0.115771, -0.293289,
		27.276329, 21.567106, 33.771873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632631, 20.992338, 33.724068>,  <26.612038, 21.648146, 33.977177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632631, 20.992338, 33.724068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.013979, 21.070805, 33.815811>,  <27.242788, 21.117886, 33.870857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.013979, 21.070805, 33.815811>,  <26.632631, 20.992338, 33.724068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013979, 21.070805, 33.815811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076612, -0.892362, 0.444770,
		0.291923, -0.406458, -0.865778,
		0.953368, 0.196168, 0.229362,
		27.299990, 21.129656, 33.884621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969540, 20.361620, 33.455349>,  <26.632631, 20.992338, 33.724068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969540, 20.361620, 33.455349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.198563, 20.523617, 33.740490>,  <27.335976, 20.620815, 33.911575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.198563, 20.523617, 33.740490>,  <26.969540, 20.361620, 33.455349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198563, 20.523617, 33.740490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046769, -0.884195, 0.464771,
		0.818530, -0.232768, -0.525193,
		0.572557, 0.404992, 0.712854,
		27.370329, 20.645115, 33.954346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485863, 19.881483, 33.473110>,  <26.969540, 20.361620, 33.455349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485863, 19.881483, 33.473110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.457563, 20.078701, 33.819958>,  <27.440584, 20.197033, 34.028069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.457563, 20.078701, 33.819958>,  <27.485863, 19.881483, 33.473110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457563, 20.078701, 33.819958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063898, -0.865274, 0.497209,
		0.995445, 0.090585, 0.029713,
		-0.070749, 0.493046, 0.867122,
		27.436338, 20.226614, 34.080093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705372, 19.384836, 33.897709>,  <27.485863, 19.881483, 33.473110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705372, 19.384836, 33.897709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.524792, 19.644966, 34.142090>,  <27.416443, 19.801044, 34.288719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.524792, 19.644966, 34.142090>,  <27.705372, 19.384836, 33.897709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524792, 19.644966, 34.142090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028116, -0.673995, 0.738201,
		0.891853, 0.350439, 0.285992,
		-0.451451, 0.650326, 0.610957,
		27.389357, 19.840063, 34.325378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090597, 19.017563, 33.445274>,  <27.705372, 19.384836, 33.897709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090597, 19.017563, 33.445274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.255692, 18.747593, 33.200611>,  <28.354748, 18.585611, 33.053814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.255692, 18.747593, 33.200611>,  <28.090597, 19.017563, 33.445274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255692, 18.747593, 33.200611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369978, 0.489403, -0.789684,
		0.832325, 0.552230, -0.047714,
		0.412736, -0.674927, -0.611656,
		28.379513, 18.545115, 33.017113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454697, 19.386269, 33.005287>,  <28.090597, 19.017563, 33.445274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454697, 19.386269, 33.005287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380257, 19.037750, 32.823647>,  <28.335592, 18.828640, 32.714661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380257, 19.037750, 32.823647>,  <28.454697, 19.386269, 33.005287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380257, 19.037750, 32.823647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099345, 0.476498, -0.873545,
		0.977495, -0.117455, -0.175235,
		-0.186101, -0.871295, -0.454106,
		28.324427, 18.776361, 32.687416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785786, 19.447708, 32.414726>,  <28.454697, 19.386269, 33.005287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785786, 19.447708, 32.414726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508942, 19.168056, 32.342945>,  <28.342836, 19.000265, 32.299877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508942, 19.168056, 32.342945>,  <28.785786, 19.447708, 32.414726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508942, 19.168056, 32.342945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255946, 0.470184, -0.844641,
		0.674892, -0.538651, -0.504357,
		-0.692108, -0.699130, -0.179457,
		28.301310, 18.958317, 32.289108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881628, 19.291077, 31.731377>,  <28.785786, 19.447708, 32.414726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881628, 19.291077, 31.731377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.503069, 19.194267, 31.816940>,  <28.275934, 19.136183, 31.868279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.503069, 19.194267, 31.816940>,  <28.881628, 19.291077, 31.731377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503069, 19.194267, 31.816940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311227, 0.506068, -0.804383,
		0.086424, -0.827841, -0.554265,
		-0.946398, -0.242021, 0.213910,
		28.219151, 19.121660, 31.881113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553799, 19.159452, 31.025089>,  <28.881628, 19.291077, 31.731377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553799, 19.159452, 31.025089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.249390, 19.198151, 31.281677>,  <28.066744, 19.221369, 31.435631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.249390, 19.198151, 31.281677>,  <28.553799, 19.159452, 31.025089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249390, 19.198151, 31.281677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512823, 0.515885, -0.686203,
		-0.397312, -0.851177, -0.342988,
		-0.761023, 0.096744, 0.641471,
		28.021082, 19.227173, 31.474119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960266, 18.861420, 30.762516>,  <28.553799, 19.159452, 31.025089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960266, 18.861420, 30.762516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859137, 19.156635, 31.012756>,  <27.798460, 19.333765, 31.162901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859137, 19.156635, 31.012756>,  <27.960266, 18.861420, 30.762516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859137, 19.156635, 31.012756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345134, 0.535271, -0.770952,
		-0.903860, -0.410830, 0.119394,
		-0.252823, 0.738040, 0.625602,
		27.783289, 19.378048, 31.200438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725113, 19.289742, 30.319391>,  <27.960266, 18.861420, 30.762516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725113, 19.289742, 30.319391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.699478, 19.524055, 30.642563>,  <27.684097, 19.664644, 30.836466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.699478, 19.524055, 30.642563>,  <27.725113, 19.289742, 30.319391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699478, 19.524055, 30.642563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432291, 0.713396, -0.551535,
		-0.899454, -0.384608, 0.207508,
		-0.064089, 0.585784, 0.807929,
		27.680252, 19.699791, 30.884941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173388, 19.657084, 30.150076>,  <27.725113, 19.289742, 30.319391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173388, 19.657084, 30.150076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.345037, 19.868397, 30.443134>,  <27.448027, 19.995184, 30.618969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.345037, 19.868397, 30.443134>,  <27.173388, 19.657084, 30.150076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345037, 19.868397, 30.443134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242362, 0.848725, -0.470027,
		-0.870123, 0.024134, 0.492243,
		0.429123, 0.528283, 0.732646,
		27.473774, 20.026882, 30.662928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626530, 20.135178, 30.286037>,  <27.173388, 19.657084, 30.150076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626530, 20.135178, 30.286037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.992414, 20.267200, 30.379299>,  <27.211946, 20.346415, 30.435257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.992414, 20.267200, 30.379299>,  <26.626530, 20.135178, 30.286037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992414, 20.267200, 30.379299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180290, 0.849687, -0.495507,
		-0.361655, 0.411211, 0.836727,
		0.914714, 0.330056, 0.233156,
		27.266829, 20.366217, 30.449245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552509, 20.798931, 30.322714>,  <26.626530, 20.135178, 30.286037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552509, 20.798931, 30.322714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.952450, 20.796753, 30.329231>,  <27.192415, 20.795446, 30.333141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.952450, 20.796753, 30.329231>,  <26.552509, 20.798931, 30.322714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952450, 20.796753, 30.329231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011943, 0.901979, -0.431615,
		-0.012346, 0.431746, 0.901911,
		0.999852, -0.005443, 0.016292,
		27.252405, 20.795120, 30.334120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684490, 21.344118, 30.591482>,  <26.552509, 20.798931, 30.322714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684490, 21.344118, 30.591482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.030121, 21.273598, 30.402889>,  <27.237499, 21.231285, 30.289734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.030121, 21.273598, 30.402889>,  <26.684490, 21.344118, 30.591482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030121, 21.273598, 30.402889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008915, 0.941871, -0.335857,
		0.503285, 0.286003, 0.815418,
		0.864074, -0.176301, -0.471480,
		27.289343, 21.220707, 30.261446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112387, 21.918438, 30.777737>,  <26.684490, 21.344118, 30.591482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112387, 21.918438, 30.777737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.236578, 21.755756, 30.434063>,  <27.311092, 21.658148, 30.227859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.236578, 21.755756, 30.434063>,  <27.112387, 21.918438, 30.777737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236578, 21.755756, 30.434063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071405, 0.891318, -0.447720,
		0.947895, 0.200357, 0.247694,
		0.310478, -0.406705, -0.859182,
		27.329721, 21.633745, 30.176308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609587, 22.393927, 30.446186>,  <27.112387, 21.918438, 30.777737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609587, 22.393927, 30.446186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.482279, 22.166553, 30.142715>,  <27.405893, 22.030130, 29.960634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.482279, 22.166553, 30.142715>,  <27.609587, 22.393927, 30.446186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482279, 22.166553, 30.142715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159806, 0.821007, -0.548096,
		0.934433, -0.053202, -0.352142,
		-0.318271, -0.568433, -0.758674,
		27.386797, 21.996023, 29.915113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937042, 22.684273, 29.930824>,  <27.609587, 22.393927, 30.446186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937042, 22.684273, 29.930824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630287, 22.488281, 29.765026>,  <27.446234, 22.370686, 29.665546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630287, 22.488281, 29.765026>,  <27.937042, 22.684273, 29.930824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630287, 22.488281, 29.765026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241596, 0.818745, -0.520853,
		0.594573, -0.299294, -0.746261,
		-0.766886, -0.489979, -0.414495,
		27.400221, 22.341288, 29.640676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560184, 22.459263, 29.609308>,  <27.937042, 22.684273, 29.930824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560184, 22.459263, 29.609308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.928617, 22.529259, 29.470173>,  <29.149677, 22.571257, 29.386692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.928617, 22.529259, 29.470173>,  <28.560184, 22.459263, 29.609308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928617, 22.529259, 29.470173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339871, -0.797221, 0.498925,
		-0.189997, -0.577769, -0.793778,
		0.921080, 0.174988, -0.347837,
		29.204941, 22.581755, 29.365822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835571, 21.838942, 29.565186>,  <28.560184, 22.459263, 29.609308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835571, 21.838942, 29.565186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.175970, 22.042805, 29.514511>,  <29.380209, 22.165123, 29.484106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.175970, 22.042805, 29.514511>,  <28.835571, 21.838942, 29.565186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175970, 22.042805, 29.514511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488021, -0.678335, 0.549269,
		0.194004, -0.529253, -0.825987,
		0.850998, 0.509659, -0.126687,
		29.431269, 22.195702, 29.476505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407751, 21.315702, 29.268160>,  <28.835571, 21.838942, 29.565186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407751, 21.315702, 29.268160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.589159, 21.626163, 29.443390>,  <29.698004, 21.812441, 29.548527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.589159, 21.626163, 29.443390>,  <29.407751, 21.315702, 29.268160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589159, 21.626163, 29.443390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511291, -0.629178, 0.585420,
		0.730002, -0.041515, -0.682183,
		0.453518, 0.776152, 0.438074,
		29.725214, 21.859009, 29.574812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137199, 21.134340, 29.380264>,  <29.407751, 21.315702, 29.268160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137199, 21.134340, 29.380264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096693, 21.448620, 29.624371>,  <30.072390, 21.637188, 29.770834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096693, 21.448620, 29.624371>,  <30.137199, 21.134340, 29.380264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096693, 21.448620, 29.624371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504789, -0.488011, 0.712063,
		0.857283, 0.380160, -0.347194,
		-0.101264, 0.785699, 0.610264,
		30.066315, 21.684330, 29.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814034, 21.258877, 29.630650>,  <30.137199, 21.134340, 29.380264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814034, 21.258877, 29.630650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582239, 21.458889, 29.888073>,  <30.443163, 21.578896, 30.042526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582239, 21.458889, 29.888073>,  <30.814034, 21.258877, 29.630650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582239, 21.458889, 29.888073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381337, -0.531523, 0.756350,
		0.720263, 0.683707, 0.117330,
		-0.579485, 0.500029, 0.643559,
		30.408394, 21.608898, 30.081141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247040, 21.541935, 30.240705>,  <30.814034, 21.258877, 29.630650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247040, 21.541935, 30.240705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.870550, 21.515343, 30.373177>,  <30.644657, 21.499388, 30.452660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.870550, 21.515343, 30.373177>,  <31.247040, 21.541935, 30.240705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870550, 21.515343, 30.373177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314041, -0.533322, 0.785459,
		0.124405, 0.843296, 0.522853,
		-0.941223, -0.066483, 0.331177,
		30.588182, 21.495398, 30.472530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185432, 21.837152, 30.970356>,  <31.247040, 21.541935, 30.240705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185432, 21.837152, 30.970356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905212, 21.565968, 30.881275>,  <30.737082, 21.403255, 30.827826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905212, 21.565968, 30.881275>,  <31.185432, 21.837152, 30.970356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905212, 21.565968, 30.881275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368621, -0.611024, 0.700549,
		-0.611024, 0.408676, 0.677963,
		-0.700549, -0.677963, -0.222704,
		30.695047, 21.362579, 30.814465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308294, 22.155380, 31.566103>,  <31.185432, 21.837152, 30.970356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308294, 22.155380, 31.566103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577137, 22.376896, 31.762711>,  <31.738441, 22.509806, 31.880674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577137, 22.376896, 31.762711>,  <31.308294, 22.155380, 31.566103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577137, 22.376896, 31.762711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435470, 0.832499, -0.342508,
		-0.598865, 0.016160, 0.800687,
		0.672106, 0.553791, 0.491517,
		31.778769, 22.543034, 31.910166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904791, 22.691051, 32.061966>,  <31.308294, 22.155380, 31.566103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904791, 22.691051, 32.061966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.273272, 22.819557, 31.974167>,  <31.494360, 22.896660, 31.921488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.273272, 22.819557, 31.974167>,  <30.904791, 22.691051, 32.061966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273272, 22.819557, 31.974167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383388, 0.845688, -0.371249,
		0.066359, 0.426149, 0.902216,
		0.921200, 0.321263, -0.219499,
		31.549631, 22.915936, 31.908318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881931, 23.390640, 32.204861>,  <30.904791, 22.691051, 32.061966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881931, 23.390640, 32.204861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193373, 23.358112, 31.955971>,  <31.380238, 23.338596, 31.806637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193373, 23.358112, 31.955971>,  <30.881931, 23.390640, 32.204861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193373, 23.358112, 31.955971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194002, 0.911799, -0.361920,
		0.596775, 0.402505, 0.694154,
		0.778603, -0.081318, -0.622225,
		31.426954, 23.333717, 31.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275806, 23.915222, 32.364967>,  <30.881931, 23.390640, 32.204861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275806, 23.915222, 32.364967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383984, 23.814274, 31.993340>,  <31.448891, 23.753706, 31.770363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383984, 23.814274, 31.993340>,  <31.275806, 23.915222, 32.364967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383984, 23.814274, 31.993340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054363, 0.959488, -0.276456,
		0.961200, 0.125274, 0.245769,
		0.270445, -0.252368, -0.929069,
		31.465117, 23.738564, 31.714619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648474, 24.546162, 32.100903>,  <31.275806, 23.915222, 32.364967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648474, 24.546162, 32.100903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573380, 24.301468, 31.793518>,  <31.528322, 24.154652, 31.609087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.573380, 24.301468, 31.793518>,  <31.648474, 24.546162, 32.100903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573380, 24.301468, 31.793518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066128, 0.788470, -0.611508,
		0.979991, -0.063985, -0.188477,
		-0.187736, -0.611736, -0.768462,
		31.517059, 24.117947, 31.562979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080303, 24.838612, 31.521376>,  <31.648474, 24.546162, 32.100903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080303, 24.838612, 31.521376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779879, 24.627338, 31.362915>,  <31.599625, 24.500574, 31.267839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779879, 24.627338, 31.362915>,  <32.080303, 24.838612, 31.521376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779879, 24.627338, 31.362915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088554, 0.675178, -0.732320,
		0.654266, -0.514937, -0.553873,
		-0.751061, -0.528180, -0.396146,
		31.554562, 24.468884, 31.244070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059372, 25.209257, 30.984985>,  <32.080303, 24.838612, 31.521376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059372, 25.209257, 30.984985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721579, 24.996754, 30.957813>,  <31.518902, 24.869251, 30.941509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721579, 24.996754, 30.957813>,  <32.059372, 25.209257, 30.984985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721579, 24.996754, 30.957813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260975, 0.518932, -0.814004,
		0.467693, -0.669686, -0.576874,
		-0.844485, -0.531253, -0.067930,
		31.468233, 24.837378, 30.937433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.974937, 22.411406, 34.897755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.603151, 22.326210, 35.018242>,  <29.380079, 22.275093, 35.090534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.603151, 22.326210, 35.018242>,  <29.974937, 22.411406, 34.897755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603151, 22.326210, 35.018242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305346, 0.902362, -0.304148,
		-0.207026, -0.374670, -0.903749,
		-0.929465, -0.212989, 0.301216,
		29.324312, 22.262314, 35.108608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576694, 22.476284, 34.375797>,  <29.974937, 22.411406, 34.897755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576694, 22.476284, 34.375797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.334795, 22.521626, 34.691120>,  <29.189655, 22.548830, 34.880314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.334795, 22.521626, 34.691120>,  <29.576694, 22.476284, 34.375797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334795, 22.521626, 34.691120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380399, 0.828499, -0.410956,
		-0.699696, -0.548397, -0.457914,
		-0.604749, 0.113354, 0.788308,
		29.153370, 22.555632, 34.927612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149649, 22.985149, 34.159119>,  <29.576694, 22.476284, 34.375797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149649, 22.985149, 34.159119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.939829, 22.968361, 34.499256>,  <28.813938, 22.958288, 34.703339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.939829, 22.968361, 34.499256>,  <29.149649, 22.985149, 34.159119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939829, 22.968361, 34.499256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364621, 0.913627, -0.179827,
		-0.769351, -0.404382, -0.494544,
		-0.524548, -0.041971, 0.850346,
		28.782465, 22.955770, 34.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406380, 23.106106, 34.053242>,  <29.149649, 22.985149, 34.159119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406380, 23.106106, 34.053242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.482304, 23.210854, 34.431744>,  <28.527859, 23.273703, 34.658844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.482304, 23.210854, 34.431744>,  <28.406380, 23.106106, 34.053242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482304, 23.210854, 34.431744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569165, 0.814658, -0.111280,
		-0.800014, -0.517452, 0.303678,
		0.189812, 0.261869, 0.946254,
		28.539248, 23.289413, 34.715618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815477, 23.225336, 34.303509>,  <28.406380, 23.106106, 34.053242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815477, 23.225336, 34.303509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.064709, 23.424263, 34.544987>,  <28.214247, 23.543619, 34.689873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.064709, 23.424263, 34.544987>,  <27.815477, 23.225336, 34.303509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064709, 23.424263, 34.544987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464615, 0.856235, -0.225821,
		-0.629213, -0.139784, 0.764560,
		0.623077, 0.497315, 0.603699,
		28.251633, 23.573458, 34.726097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444448, 23.758224, 34.542461>,  <27.815477, 23.225336, 34.303509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444448, 23.758224, 34.542461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.817617, 23.878235, 34.622097>,  <28.041519, 23.950241, 34.669880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.817617, 23.878235, 34.622097>,  <27.444448, 23.758224, 34.542461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817617, 23.878235, 34.622097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278021, 0.951571, -0.131210,
		-0.228816, 0.067057, 0.971157,
		0.932924, 0.300025, 0.199092,
		28.097494, 23.968243, 34.681824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370428, 24.338959, 35.064606>,  <27.444448, 23.758224, 34.542461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370428, 24.338959, 35.064606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.725430, 24.378120, 34.884495>,  <27.938431, 24.401617, 34.776428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.725430, 24.378120, 34.884495>,  <27.370428, 24.338959, 35.064606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725430, 24.378120, 34.884495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229539, 0.941235, -0.247767,
		0.399561, 0.323251, 0.857823,
		0.887503, 0.097906, -0.450280,
		27.991680, 24.407492, 34.749413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482841, 25.024315, 35.212761>,  <27.370428, 24.338959, 35.064606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482841, 25.024315, 35.212761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.745626, 24.943455, 34.922234>,  <27.903297, 24.894939, 34.747917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.745626, 24.943455, 34.922234>,  <27.482841, 25.024315, 35.212761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745626, 24.943455, 34.922234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114411, 0.925493, -0.361071,
		0.745192, 0.320309, 0.584886,
		0.656962, -0.202150, -0.726317,
		27.942715, 24.882811, 34.704338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097424, 25.479931, 35.309795>,  <27.482841, 25.024315, 35.212761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097424, 25.479931, 35.309795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071598, 25.365189, 34.927479>,  <28.056103, 25.296343, 34.698090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.071598, 25.365189, 34.927479>,  <28.097424, 25.479931, 35.309795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071598, 25.365189, 34.927479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007756, 0.957621, -0.287928,
		0.997883, -0.026003, -0.059604,
		-0.064565, -0.286856, -0.955796,
		28.052229, 25.279131, 34.640739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546392, 25.829742, 35.039345>,  <28.097424, 25.479931, 35.309795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546392, 25.829742, 35.039345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.300369, 25.740482, 34.736847>,  <28.152756, 25.686926, 34.555347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.300369, 25.740482, 34.736847>,  <28.546392, 25.829742, 35.039345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300369, 25.740482, 34.736847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092295, 0.932147, -0.350119,
		0.783060, -0.285142, -0.552730,
		-0.615059, -0.223150, -0.756244,
		28.115852, 25.673536, 34.509972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794664, 26.287586, 34.572411>,  <28.546392, 25.829742, 35.039345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794664, 26.287586, 34.572411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.452532, 26.181690, 34.394276>,  <28.247253, 26.118153, 34.287395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.452532, 26.181690, 34.394276>,  <28.794664, 26.287586, 34.572411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452532, 26.181690, 34.394276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029891, 0.832934, -0.552564,
		0.517220, -0.485937, -0.704521,
		-0.855330, -0.264739, -0.445335,
		28.195932, 26.102268, 34.260674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903500, 26.454416, 33.800407>,  <28.794664, 26.287586, 34.572411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903500, 26.454416, 33.800407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.508247, 26.417503, 33.849537>,  <28.271097, 26.395355, 33.879017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.508247, 26.417503, 33.849537>,  <28.903500, 26.454416, 33.800407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508247, 26.417503, 33.849537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138121, 0.883688, -0.447234,
		-0.067268, -0.458890, -0.885943,
		-0.988128, -0.092283, 0.122827,
		28.211809, 26.389818, 33.886383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148985, 25.848330, 33.445820>,  <28.903500, 26.454416, 33.800407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148985, 25.848330, 33.445820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.433975, 25.915203, 33.173225>,  <29.604969, 25.955328, 33.009666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.433975, 25.915203, 33.173225>,  <29.148985, 25.848330, 33.445820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433975, 25.915203, 33.173225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528788, -0.766342, 0.364832,
		-0.461259, -0.620298, -0.634406,
		0.712477, 0.167184, -0.681488,
		29.647718, 25.965359, 32.968781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341745, 25.216476, 33.314423>,  <29.148985, 25.848330, 33.445820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341745, 25.216476, 33.314423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.657005, 25.404381, 33.155354>,  <29.846161, 25.517124, 33.059914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.657005, 25.404381, 33.155354>,  <29.341745, 25.216476, 33.314423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657005, 25.404381, 33.155354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614354, -0.561313, 0.554525,
		0.037277, -0.681359, -0.731000,
		0.788150, 0.469763, -0.397671,
		29.893450, 25.545309, 33.036053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804644, 24.729313, 32.952953>,  <29.341745, 25.216476, 33.314423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804644, 24.729313, 32.952953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.011705, 25.051495, 33.068382>,  <30.135942, 25.244804, 33.137638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.011705, 25.051495, 33.068382>,  <29.804644, 24.729313, 32.952953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011705, 25.051495, 33.068382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685344, -0.592263, 0.423707,
		0.512187, -0.021564, -0.858603,
		0.517656, 0.805456, 0.288571,
		30.167002, 25.293131, 33.154953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349550, 24.552113, 32.747475>,  <29.804644, 24.729313, 32.952953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349550, 24.552113, 32.747475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451353, 24.842106, 33.003483>,  <30.512434, 25.016102, 33.157085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.451353, 24.842106, 33.003483>,  <30.349550, 24.552113, 32.747475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451353, 24.842106, 33.003483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750969, -0.565146, 0.341548,
		0.609321, 0.393708, -0.688275,
		0.254506, 0.724985, 0.640018,
		30.527704, 25.059601, 33.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104994, 24.644094, 32.801765>,  <30.349550, 24.552113, 32.747475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104994, 24.644094, 32.801765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970682, 24.821022, 33.134418>,  <30.890095, 24.927179, 33.334011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970682, 24.821022, 33.134418>,  <31.104994, 24.644094, 32.801765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970682, 24.821022, 33.134418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613138, -0.567597, 0.549450,
		0.715063, 0.694396, -0.080617,
		-0.335778, 0.442321, 0.831628,
		30.869949, 24.953718, 33.383907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691597, 24.722158, 33.093575>,  <31.104994, 24.644094, 32.801765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691597, 24.722158, 33.093575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.409433, 24.737755, 33.376667>,  <31.240135, 24.747112, 33.546520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.409433, 24.737755, 33.376667>,  <31.691597, 24.722158, 33.093575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409433, 24.737755, 33.376667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642742, -0.385733, 0.661886,
		0.298803, 0.921786, 0.247037,
		-0.705407, 0.038993, 0.707729,
		31.197811, 24.749453, 33.588985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990814, 25.036867, 33.674854>,  <31.691597, 24.722158, 33.093575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990814, 25.036867, 33.674854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686640, 24.862938, 33.867798>,  <31.504135, 24.758581, 33.983562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.686640, 24.862938, 33.867798>,  <31.990814, 25.036867, 33.674854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686640, 24.862938, 33.867798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648242, -0.463627, 0.604013,
		-0.039006, 0.771996, 0.634429,
		-0.760435, -0.434823, 0.482356,
		31.458509, 24.732491, 34.012505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082878, 25.151041, 34.432419>,  <31.990814, 25.036867, 33.674854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082878, 25.151041, 34.432419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.849253, 24.826683, 34.417889>,  <31.709078, 24.632069, 34.409168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.849253, 24.826683, 34.417889>,  <32.082878, 25.151041, 34.432419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849253, 24.826683, 34.417889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494268, -0.390792, 0.776518,
		-0.643873, 0.435578, 0.629047,
		-0.584060, -0.810897, -0.036328,
		31.674034, 24.583414, 34.406990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787357, 24.993746, 35.124352>,  <32.082878, 25.151041, 34.432419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787357, 24.993746, 35.124352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810904, 24.654926, 34.913055>,  <31.825031, 24.451633, 34.786278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810904, 24.654926, 34.913055>,  <31.787357, 24.993746, 35.124352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810904, 24.654926, 34.913055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524447, -0.424013, 0.738355,
		-0.849406, -0.320498, 0.419274,
		0.058864, -0.847050, -0.528243,
		31.828564, 24.400812, 34.754581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824436, 24.488787, 35.637329>,  <31.787357, 24.993746, 35.124352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824436, 24.488787, 35.637329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926027, 24.293507, 35.303345>,  <31.986982, 24.176338, 35.102955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926027, 24.293507, 35.303345>,  <31.824436, 24.488787, 35.637329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926027, 24.293507, 35.303345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648084, -0.554914, 0.521592,
		-0.717972, -0.673595, 0.175462,
		0.253976, -0.488202, -0.834958,
		32.002220, 24.147045, 35.052856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819670, 23.819223, 35.794502>,  <31.824436, 24.488787, 35.637329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819670, 23.819223, 35.794502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042427, 23.840572, 35.462955>,  <32.176083, 23.853382, 35.264027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.042427, 23.840572, 35.462955>,  <31.819670, 23.819223, 35.794502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042427, 23.840572, 35.462955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686230, -0.591775, 0.422955,
		-0.467927, -0.804334, -0.366184,
		0.556896, 0.053374, -0.828865,
		32.209496, 23.856585, 35.214294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908871, 23.110256, 35.749676>,  <31.819670, 23.819223, 35.794502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908871, 23.110256, 35.749676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.187851, 23.323631, 35.558258>,  <32.355240, 23.451656, 35.443409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.187851, 23.323631, 35.558258>,  <31.908871, 23.110256, 35.749676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187851, 23.323631, 35.558258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694681, -0.667267, 0.268651,
		-0.176005, -0.519805, -0.835958,
		0.697453, 0.533440, -0.478541,
		32.397087, 23.483664, 35.414696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370842, 22.697615, 35.336292>,  <31.908871, 23.110256, 35.749676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370842, 22.697615, 35.336292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585575, 23.024319, 35.420876>,  <32.714417, 23.220341, 35.471626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585575, 23.024319, 35.420876>,  <32.370842, 22.697615, 35.336292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585575, 23.024319, 35.420876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728715, -0.575188, 0.371664,
		0.425188, -0.045429, -0.903964,
		0.536833, 0.816759, 0.211459,
		32.746624, 23.269346, 35.484314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989418, 22.428438, 35.131054>,  <32.370842, 22.697615, 35.336292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989418, 22.428438, 35.131054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.039257, 22.748123, 35.366249>,  <33.069160, 22.939934, 35.507366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.039257, 22.748123, 35.366249>,  <32.989418, 22.428438, 35.131054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039257, 22.748123, 35.366249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844838, -0.396221, 0.359525,
		0.520311, 0.451958, -0.724576,
		0.124602, 0.799214, 0.587989,
		33.076637, 22.987886, 35.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789574, 21.796844, 34.708340>,  <32.989418, 22.428438, 35.131054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789574, 21.796844, 34.708340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.930733, 21.503174, 34.476322>,  <33.015427, 21.326971, 34.337112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.930733, 21.503174, 34.476322>,  <32.789574, 21.796844, 34.708340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930733, 21.503174, 34.476322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121737, 0.578629, -0.806454,
		0.927709, 0.355207, 0.114819,
		0.352896, -0.734178, -0.580041,
		33.036602, 21.282921, 34.302311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296867, 22.127022, 34.262508>,  <32.789574, 21.796844, 34.708340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296867, 22.127022, 34.262508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175297, 21.791733, 34.081394>,  <33.102356, 21.590559, 33.972725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175297, 21.791733, 34.081394>,  <33.296867, 22.127022, 34.262508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175297, 21.791733, 34.081394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146601, 0.510753, -0.847136,
		0.941350, -0.191086, -0.278114,
		-0.303923, -0.838223, -0.452784,
		33.084118, 21.540266, 33.945560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414860, 22.247135, 33.551216>,  <33.296867, 22.127022, 34.262508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414860, 22.247135, 33.551216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156078, 21.943859, 33.518734>,  <33.000809, 21.761892, 33.499245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156078, 21.943859, 33.518734>,  <33.414860, 22.247135, 33.551216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156078, 21.943859, 33.518734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364871, 0.401317, -0.840127,
		0.669565, -0.513897, -0.536277,
		-0.646955, -0.758192, -0.081202,
		32.961990, 21.716402, 33.494373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479172, 22.042988, 32.805466>,  <33.414860, 22.247135, 33.551216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479172, 22.042988, 32.805466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.127407, 21.913364, 32.944962>,  <32.916348, 21.835590, 33.028660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.127407, 21.913364, 32.944962>,  <33.479172, 22.042988, 32.805466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127407, 21.913364, 32.944962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447367, 0.312061, -0.838141,
		0.162777, -0.893087, -0.419403,
		-0.879412, -0.324057, 0.348742,
		32.863583, 21.816147, 33.049583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062634, 21.904335, 32.195354>,  <33.479172, 22.042988, 32.805466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062634, 21.904335, 32.195354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776157, 21.891201, 32.474209>,  <32.604271, 21.883320, 32.641521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776157, 21.891201, 32.474209>,  <33.062634, 21.904335, 32.195354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776157, 21.891201, 32.474209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660303, 0.355348, -0.661610,
		-0.226003, -0.934157, -0.276175,
		-0.716186, -0.032834, 0.697136,
		32.561302, 21.881351, 32.683350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523705, 21.614269, 31.874464>,  <33.062634, 21.904335, 32.195354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523705, 21.614269, 31.874464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.391258, 21.852463, 32.167248>,  <32.311790, 21.995378, 32.342918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.391258, 21.852463, 32.167248>,  <32.523705, 21.614269, 31.874464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391258, 21.852463, 32.167248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630966, 0.437052, -0.640990,
		-0.701604, -0.674079, 0.231018,
		-0.331111, 0.595485, 0.731958,
		32.291924, 22.031109, 32.386837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825594, 21.644518, 31.724176>,  <32.523705, 21.614269, 31.874464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825594, 21.644518, 31.724176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913343, 21.962147, 31.950920>,  <31.965992, 22.152723, 32.086967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913343, 21.962147, 31.950920>,  <31.825594, 21.644518, 31.724176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913343, 21.962147, 31.950920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595484, 0.569211, -0.566919,
		-0.772836, -0.213188, 0.597725,
		0.219371, 0.794071, 0.566857,
		31.979155, 22.200369, 32.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045706, 21.432543, 31.621632>,  <31.825594, 21.644518, 31.724176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045706, 21.432543, 31.621632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.893253, 21.189880, 31.342575>,  <30.801783, 21.044283, 31.175140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.893253, 21.189880, 31.342575>,  <31.045706, 21.432543, 31.621632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893253, 21.189880, 31.342575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039693, -0.764641, 0.643233,
		-0.923669, 0.217464, 0.315508,
		-0.381130, -0.606658, -0.697643,
		30.778913, 21.007883, 31.133282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548962, 21.073063, 31.939766>,  <31.045706, 21.432543, 31.621632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548962, 21.073063, 31.939766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.669065, 20.860229, 31.623100>,  <30.741129, 20.732529, 31.433102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.669065, 20.860229, 31.623100>,  <30.548962, 21.073063, 31.939766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669065, 20.860229, 31.623100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228288, -0.765754, 0.601254,
		-0.926136, -0.361260, -0.108458,
		0.300261, -0.532084, -0.791663,
		30.759144, 20.700605, 31.385601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176220, 20.506153, 31.999342>,  <30.548962, 21.073063, 31.939766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176220, 20.506153, 31.999342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448519, 20.382183, 31.733852>,  <30.611898, 20.307802, 31.574558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448519, 20.382183, 31.733852>,  <30.176220, 20.506153, 31.999342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448519, 20.382183, 31.733852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020985, -0.897463, 0.440590,
		-0.732217, -0.313859, -0.604442,
		0.680747, -0.309923, -0.663724,
		30.652742, 20.289206, 31.534735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885904, 19.890806, 31.807171>,  <30.176220, 20.506153, 31.999342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885904, 19.890806, 31.807171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.270460, 19.838371, 31.710384>,  <30.501194, 19.806910, 31.652311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.270460, 19.838371, 31.710384>,  <29.885904, 19.890806, 31.807171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270460, 19.838371, 31.710384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002340, -0.883121, 0.469140,
		-0.275185, -0.450459, -0.849329,
		0.961388, -0.131088, -0.241968,
		30.558876, 19.799046, 31.637794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043554, 19.168100, 31.490122>,  <29.885904, 19.890806, 31.807171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043554, 19.168100, 31.490122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.397818, 19.305092, 31.615543>,  <30.610376, 19.387287, 31.690796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.397818, 19.305092, 31.615543>,  <30.043554, 19.168100, 31.490122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397818, 19.305092, 31.615543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177176, -0.873437, 0.453559,
		0.429202, -0.346145, -0.834247,
		0.885660, 0.342477, 0.313553,
		30.663515, 19.407835, 31.709610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612720, 18.643732, 31.339544>,  <30.043554, 19.168100, 31.490122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612720, 18.643732, 31.339544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.752747, 18.857613, 31.647194>,  <30.836763, 18.985941, 31.831783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.752747, 18.857613, 31.647194>,  <30.612720, 18.643732, 31.339544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752747, 18.857613, 31.647194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085403, -0.835875, 0.542235,
		0.932824, -0.124133, -0.338276,
		0.350066, 0.534700, 0.769123,
		30.857767, 19.018023, 31.877932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013681, 18.195553, 31.650194>,  <30.612720, 18.643732, 31.339544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013681, 18.195553, 31.650194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.994198, 18.486385, 31.924122>,  <30.982508, 18.660885, 32.088478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.994198, 18.486385, 31.924122>,  <31.013681, 18.195553, 31.650194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994198, 18.486385, 31.924122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018676, -0.686176, 0.727195,
		0.998638, 0.022631, 0.047002,
		-0.048709, 0.727083, 0.684820,
		30.979586, 18.704510, 32.129566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613598, 18.070358, 32.117451>,  <31.013681, 18.195553, 31.650194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613598, 18.070358, 32.117451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.349798, 18.299446, 32.312202>,  <31.191519, 18.436899, 32.429054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.349798, 18.299446, 32.312202>,  <31.613598, 18.070358, 32.117451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349798, 18.299446, 32.312202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027567, -0.628835, 0.777050,
		0.751198, 0.525887, 0.398929,
		-0.659500, 0.572722, 0.486877,
		31.151949, 18.471262, 32.458267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938763, 18.162399, 32.735214>,  <31.613598, 18.070358, 32.117451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938763, 18.162399, 32.735214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542406, 18.209648, 32.761078>,  <31.304592, 18.237997, 32.776596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542406, 18.209648, 32.761078>,  <31.938763, 18.162399, 32.735214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542406, 18.209648, 32.761078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016799, -0.584831, 0.810981,
		0.133606, 0.802509, 0.581488,
		-0.990892, 0.118120, 0.064655,
		31.245138, 18.245085, 32.780476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.629505, 31.257223, 23.971483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326420, 31.254196, 24.232502>,  <27.144569, 31.252380, 24.389112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326420, 31.254196, 24.232502>,  <27.629505, 31.257223, 23.971483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326420, 31.254196, 24.232502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416254, -0.775714, 0.474342,
		0.502597, 0.631039, 0.590919,
		-0.757713, -0.007570, 0.652545,
		27.099106, 31.251925, 24.428265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881954, 31.391399, 24.636532>,  <27.629505, 31.257223, 23.971483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881954, 31.391399, 24.636532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547667, 31.171738, 24.637547>,  <27.347094, 31.039940, 24.638155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547667, 31.171738, 24.637547>,  <27.881954, 31.391399, 24.636532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547667, 31.171738, 24.637547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503926, -0.765036, 0.400972,
		-0.218256, 0.336377, 0.916087,
		-0.835717, -0.549154, 0.002535,
		27.296951, 31.006992, 24.638308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030933, 31.010237, 25.263735>,  <27.881954, 31.391399, 24.636532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030933, 31.010237, 25.263735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708555, 30.828335, 25.112129>,  <27.515129, 30.719194, 25.021166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708555, 30.828335, 25.112129>,  <28.030933, 31.010237, 25.263735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708555, 30.828335, 25.112129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290826, -0.861799, 0.415600,
		-0.515631, 0.224722, 0.826816,
		-0.805943, -0.454755, -0.379015,
		27.466772, 30.691908, 24.998425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753691, 30.613379, 25.804432>,  <28.030933, 31.010237, 25.263735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753691, 30.613379, 25.804432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635309, 30.451324, 25.458420>,  <27.564281, 30.354092, 25.250813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635309, 30.451324, 25.458420>,  <27.753691, 30.613379, 25.804432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635309, 30.451324, 25.458420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272206, -0.903820, 0.330172,
		-0.915596, -0.137751, 0.377768,
		-0.295953, -0.405134, -0.865031,
		27.546524, 30.329784, 25.198910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196043, 30.086744, 26.022072>,  <27.753691, 30.613379, 25.804432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196043, 30.086744, 26.022072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348475, 30.003922, 25.661648>,  <27.439934, 29.954227, 25.445395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348475, 30.003922, 25.661648>,  <27.196043, 30.086744, 26.022072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348475, 30.003922, 25.661648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275197, -0.905020, 0.324354,
		-0.882634, -0.371574, -0.287906,
		0.381082, -0.207055, -0.901058,
		27.462799, 29.941805, 25.391331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997572, 29.378979, 25.875769>,  <27.196043, 30.086744, 26.022072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997572, 29.378979, 25.875769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315655, 29.465031, 25.649014>,  <27.506504, 29.516663, 25.512960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315655, 29.465031, 25.649014>,  <26.997572, 29.378979, 25.875769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315655, 29.465031, 25.649014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327398, -0.939277, 0.102810,
		-0.510348, -0.267353, -0.817353,
		0.795208, 0.215131, -0.566889,
		27.554216, 29.529570, 25.478947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964577, 28.844086, 25.474993>,  <26.997572, 29.378979, 25.875769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964577, 28.844086, 25.474993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327377, 29.007381, 25.433636>,  <27.545057, 29.105358, 25.408821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327377, 29.007381, 25.433636>,  <26.964577, 28.844086, 25.474993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327377, 29.007381, 25.433636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419784, -0.896039, 0.144550,
		-0.033633, -0.174510, -0.984081,
		0.907001, 0.408240, -0.103393,
		27.599478, 29.129854, 25.402618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261248, 28.394173, 25.107935>,  <26.964577, 28.844086, 25.474993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261248, 28.394173, 25.107935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569302, 28.604942, 25.251736>,  <27.754135, 28.731403, 25.338017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569302, 28.604942, 25.251736>,  <27.261248, 28.394173, 25.107935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569302, 28.604942, 25.251736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548373, -0.834806, 0.048834,
		0.325847, 0.159533, -0.931865,
		0.770136, 0.526923, 0.359503,
		27.800343, 28.763020, 25.359587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832279, 28.109158, 24.770130>,  <27.261248, 28.394173, 25.107935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832279, 28.109158, 24.770130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972672, 28.285877, 25.100372>,  <28.056908, 28.391909, 25.298517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972672, 28.285877, 25.100372>,  <27.832279, 28.109158, 24.770130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972672, 28.285877, 25.100372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520777, -0.824857, 0.220007,
		0.778205, 0.352738, -0.519589,
		0.350982, 0.441800, 0.825605,
		28.077967, 28.418417, 25.348053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589581, 28.022371, 24.725395>,  <27.832279, 28.109158, 24.770130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589581, 28.022371, 24.725395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476240, 28.076504, 25.105164>,  <28.408236, 28.108984, 25.333025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476240, 28.076504, 25.105164>,  <28.589581, 28.022371, 24.725395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476240, 28.076504, 25.105164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607445, -0.740751, 0.286877,
		0.742107, 0.658007, 0.127687,
		-0.283352, 0.135330, 0.949420,
		28.391235, 28.117104, 25.389990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018099, 27.616812, 25.001537>,  <28.589581, 28.022371, 24.725395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018099, 27.616812, 25.001537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816139, 27.700546, 25.336502>,  <28.694963, 27.750788, 25.537481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816139, 27.700546, 25.336502>,  <29.018099, 27.616812, 25.001537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816139, 27.700546, 25.336502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444635, -0.768460, 0.460184,
		0.739849, 0.604688, 0.294916,
		-0.504899, 0.209336, 0.837410,
		28.664669, 27.763348, 25.587725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465197, 27.802330, 25.564377>,  <29.018099, 27.616812, 25.001537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465197, 27.802330, 25.564377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122601, 27.669121, 25.722122>,  <28.917044, 27.589195, 25.816769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122601, 27.669121, 25.722122>,  <29.465197, 27.802330, 25.564377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122601, 27.669121, 25.722122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511826, -0.646791, 0.565416,
		0.066773, 0.686118, 0.724420,
		-0.856490, -0.333023, 0.394361,
		28.865654, 27.569214, 25.840431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337690, 27.864567, 25.622938>,  <29.465197, 27.802330, 25.564377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337690, 27.864567, 25.622938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598166, 27.961803, 25.910511>,  <30.754452, 28.020145, 26.083054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598166, 27.961803, 25.910511>,  <30.337690, 27.864567, 25.622938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598166, 27.961803, 25.910511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438687, 0.652441, -0.617960,
		-0.619279, 0.717794, 0.318221,
		0.651189, 0.243091, 0.718930,
		30.793522, 28.034731, 26.126190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331417, 28.660400, 25.462400>,  <30.337690, 27.864567, 25.622938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331417, 28.660400, 25.462400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651619, 28.549641, 25.675011>,  <30.843740, 28.483185, 25.802578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651619, 28.549641, 25.675011>,  <30.331417, 28.660400, 25.462400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651619, 28.549641, 25.675011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567246, 0.636327, -0.522800,
		-0.193461, 0.720009, 0.666453,
		0.800503, -0.276901, 0.531527,
		30.891769, 28.466570, 25.834469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725574, 29.284859, 25.659315>,  <30.331417, 28.660400, 25.462400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725574, 29.284859, 25.659315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998476, 28.994301, 25.692493>,  <31.162216, 28.819965, 25.712400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998476, 28.994301, 25.692493>,  <30.725574, 29.284859, 25.659315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998476, 28.994301, 25.692493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645909, 0.545698, -0.533868,
		0.342535, 0.417810, 0.841489,
		0.682254, -0.726394, 0.082947,
		31.203152, 28.776382, 25.717377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335892, 29.591158, 25.874140>,  <30.725574, 29.284859, 25.659315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335892, 29.591158, 25.874140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444595, 29.256111, 25.684597>,  <31.509817, 29.055082, 25.570871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444595, 29.256111, 25.684597>,  <31.335892, 29.591158, 25.874140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444595, 29.256111, 25.684597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744518, 0.494984, -0.447978,
		0.609787, -0.231055, 0.758138,
		0.271759, -0.837618, -0.473859,
		31.526123, 29.004826, 25.542439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039474, 29.493023, 26.031195>,  <31.335892, 29.591158, 25.874140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039474, 29.493023, 26.031195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960974, 29.317593, 25.680393>,  <31.913874, 29.212334, 25.469912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960974, 29.317593, 25.680393>,  <32.039474, 29.493023, 26.031195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960974, 29.317593, 25.680393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800208, 0.445275, -0.401742,
		0.566703, -0.780627, 0.263568,
		-0.196251, -0.438578, -0.877003,
		31.902098, 29.186020, 25.417292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664513, 29.199934, 25.812513>,  <32.039474, 29.493023, 26.031195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664513, 29.199934, 25.812513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451126, 29.218063, 25.474670>,  <32.323093, 29.228941, 25.271965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451126, 29.218063, 25.474670>,  <32.664513, 29.199934, 25.812513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451126, 29.218063, 25.474670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746918, 0.493811, -0.445268,
		0.396894, -0.868387, -0.297286,
		-0.533468, 0.045324, -0.844605,
		32.291084, 29.231661, 25.221289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101051, 29.178335, 25.272448>,  <32.664513, 29.199934, 25.812513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101051, 29.178335, 25.272448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792774, 29.317554, 25.058945>,  <32.607807, 29.401087, 24.930843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792774, 29.317554, 25.058945>,  <33.101051, 29.178335, 25.272448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792774, 29.317554, 25.058945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630878, 0.534571, -0.562341,
		0.089610, -0.770127, -0.631565,
		-0.770690, 0.348049, -0.533759,
		32.561565, 29.421968, 24.898817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213837, 28.963926, 24.516455>,  <33.101051, 29.178335, 25.272448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213837, 28.963926, 24.516455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970741, 29.279228, 24.555038>,  <32.824883, 29.468409, 24.578190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970741, 29.279228, 24.555038>,  <33.213837, 28.963926, 24.516455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970741, 29.279228, 24.555038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628522, 0.551682, -0.548277,
		-0.485398, -0.272582, -0.830715,
		-0.607741, 0.788255, 0.096461,
		32.788418, 29.515705, 24.583977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297508, 29.257607, 23.825912>,  <33.213837, 28.963926, 24.516455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297508, 29.257607, 23.825912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102352, 29.544357, 24.025131>,  <32.985256, 29.716408, 24.144663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102352, 29.544357, 24.025131>,  <33.297508, 29.257607, 23.825912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102352, 29.544357, 24.025131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581926, 0.692397, -0.426555,
		-0.650632, 0.081711, -0.754985,
		-0.487894, 0.716875, 0.498045,
		32.955982, 29.759420, 24.174545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202179, 29.723829, 23.319723>,  <33.297508, 29.257607, 23.825912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202179, 29.723829, 23.319723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168282, 29.912243, 23.670937>,  <33.147942, 30.025291, 23.881664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168282, 29.912243, 23.670937>,  <33.202179, 29.723829, 23.319723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168282, 29.912243, 23.670937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397767, 0.823936, -0.403621,
		-0.913564, 0.315047, -0.257189,
		-0.084747, 0.471035, 0.878034,
		33.142857, 30.053553, 23.934347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103355, 30.372366, 23.153313>,  <33.202179, 29.723829, 23.319723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103355, 30.372366, 23.153313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200611, 30.430771, 23.536888>,  <33.258965, 30.465815, 23.767033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200611, 30.430771, 23.536888>,  <33.103355, 30.372366, 23.153313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200611, 30.430771, 23.536888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490797, 0.834197, -0.251463,
		-0.836661, 0.531785, 0.131165,
		0.243141, 0.146014, 0.958938,
		33.273552, 30.474575, 23.824570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857609, 31.125673, 23.433420>,  <33.103355, 30.372366, 23.153313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857609, 31.125673, 23.433420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171211, 30.988605, 23.640461>,  <33.359371, 30.906364, 23.764687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171211, 30.988605, 23.640461>,  <32.857609, 31.125673, 23.433420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171211, 30.988605, 23.640461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511179, 0.829461, -0.225144,
		-0.352182, 0.441102, 0.825468,
		0.784005, -0.342670, 0.517604,
		33.406414, 30.885805, 23.795742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013775, 31.662666, 23.764500>,  <32.857609, 31.125673, 23.433420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013775, 31.662666, 23.764500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350235, 31.455166, 23.825634>,  <33.552113, 31.330666, 23.862314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350235, 31.455166, 23.825634>,  <33.013775, 31.662666, 23.764500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350235, 31.455166, 23.825634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537408, 0.833398, -0.128998,
		-0.060454, 0.190641, 0.979797,
		0.841153, -0.518752, 0.152834,
		33.602581, 31.299540, 23.871485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353401, 32.052811, 24.219217>,  <33.013775, 31.662666, 23.764500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353401, 32.052811, 24.219217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616203, 31.820911, 24.026455>,  <33.773884, 31.681772, 23.910797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616203, 31.820911, 24.026455>,  <33.353401, 32.052811, 24.219217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616203, 31.820911, 24.026455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539504, 0.808061, -0.236585,
		0.526571, -0.104553, 0.843678,
		0.657007, -0.579746, -0.481908,
		33.813305, 31.646988, 23.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561447, 32.214558, 24.308699>,  <33.353401, 32.052811, 24.219217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561447, 32.214558, 24.308699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549839, 31.863174, 24.117924>,  <32.542873, 31.652344, 24.003458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549839, 31.863174, 24.117924>,  <32.561447, 32.214558, 24.308699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549839, 31.863174, 24.117924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420401, -0.422159, 0.803146,
		-0.906874, 0.223813, -0.357053,
		-0.029022, -0.878458, -0.476937,
		32.541134, 31.599636, 23.974842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891834, 31.867411, 24.501080>,  <32.561447, 32.214558, 24.308699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891834, 31.867411, 24.501080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143829, 31.582767, 24.376671>,  <32.295025, 31.411982, 24.302025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143829, 31.582767, 24.376671>,  <31.891834, 31.867411, 24.501080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143829, 31.582767, 24.376671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184234, -0.525998, 0.830291,
		-0.754437, -0.465771, -0.462473,
		0.629986, -0.711606, -0.311022,
		32.332825, 31.369286, 24.283363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702581, 32.307529, 25.073790>,  <31.891834, 31.867411, 24.501080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702581, 32.307529, 25.073790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360338, 32.448997, 25.224976>,  <31.154993, 32.533878, 25.315687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360338, 32.448997, 25.224976>,  <31.702581, 32.307529, 25.073790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360338, 32.448997, 25.224976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053023, -0.666464, 0.743650,
		0.514902, 0.656313, 0.551479,
		-0.855607, 0.353666, 0.377964,
		31.103657, 32.555096, 25.338366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858891, 32.307297, 25.717451>,  <31.702581, 32.307529, 25.073790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858891, 32.307297, 25.717451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459099, 32.310398, 25.704906>,  <31.219225, 32.312260, 25.697380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459099, 32.310398, 25.704906>,  <31.858891, 32.307297, 25.717451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459099, 32.310398, 25.704906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027102, -0.729682, 0.683249,
		-0.017585, 0.683743, 0.729511,
		-0.999478, 0.007757, -0.031362,
		31.159256, 32.312725, 25.695498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697927, 32.148907, 26.373453>,  <31.858891, 32.307297, 25.717451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697927, 32.148907, 26.373453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368086, 32.078091, 26.158535>,  <31.170181, 32.035603, 26.029583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368086, 32.078091, 26.158535>,  <31.697927, 32.148907, 26.373453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368086, 32.078091, 26.158535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291555, -0.680920, 0.671821,
		-0.484796, 0.710637, 0.509870,
		-0.824602, -0.177041, -0.537297,
		31.120705, 32.024979, 25.997345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064018, 32.344261, 26.753904>,  <31.697927, 32.148907, 26.373453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064018, 32.344261, 26.753904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937004, 32.087605, 26.474628>,  <30.860796, 31.933611, 26.307062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937004, 32.087605, 26.474628>,  <31.064018, 32.344261, 26.753904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937004, 32.087605, 26.474628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257415, -0.650319, 0.714719,
		-0.912638, 0.406674, 0.041332,
		-0.317537, -0.641640, -0.698189,
		30.841743, 31.895113, 26.265171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427731, 32.086189, 26.991917>,  <31.064018, 32.344261, 26.753904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427731, 32.086189, 26.991917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571573, 31.820656, 26.729618>,  <30.657879, 31.661335, 26.572239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571573, 31.820656, 26.729618>,  <30.427731, 32.086189, 26.991917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571573, 31.820656, 26.729618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121835, -0.730148, 0.672340,
		-0.925116, -0.161885, -0.343444,
		0.359607, -0.663836, -0.655748,
		30.679455, 31.621506, 26.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039774, 31.509779, 27.233845>,  <30.427731, 32.086189, 26.991917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039774, 31.509779, 27.233845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309990, 31.358833, 26.980469>,  <30.472120, 31.268267, 26.828444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309990, 31.358833, 26.980469>,  <30.039774, 31.509779, 27.233845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309990, 31.358833, 26.980469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149679, -0.911403, 0.383328,
		-0.721970, -0.164142, -0.672173,
		0.675541, -0.377362, -0.633437,
		30.512651, 31.245625, 26.790438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784615, 30.867483, 26.956575>,  <30.039774, 31.509779, 27.233845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784615, 30.867483, 26.956575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184425, 30.861706, 26.945698>,  <30.424311, 30.858238, 26.939171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184425, 30.861706, 26.945698>,  <29.784615, 30.867483, 26.956575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184425, 30.861706, 26.945698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004667, -0.801891, 0.597452,
		-0.030438, -0.597296, -0.801444,
		0.999526, -0.014445, -0.027196,
		30.484283, 30.857372, 26.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777836, 30.257475, 26.757284>,  <29.784615, 30.867483, 26.956575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777836, 30.257475, 26.757284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145100, 30.341339, 26.891762>,  <30.365458, 30.391659, 26.972448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145100, 30.341339, 26.891762>,  <29.777836, 30.257475, 26.757284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145100, 30.341339, 26.891762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027754, -0.880467, 0.473294,
		0.395240, -0.425228, -0.814228,
		0.918159, 0.209663, 0.336194,
		30.420547, 30.404238, 26.992620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131323, 29.670076, 26.642429>,  <29.777836, 30.257475, 26.757284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131323, 29.670076, 26.642429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347437, 29.880943, 26.904785>,  <30.477104, 30.007463, 27.062199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347437, 29.880943, 26.904785>,  <30.131323, 29.670076, 26.642429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347437, 29.880943, 26.904785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070512, -0.805065, 0.588980,
		0.838524, -0.271968, -0.472135,
		0.540283, 0.527165, 0.655889,
		30.509521, 30.039093, 27.101551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606890, 29.155554, 26.951405>,  <30.131323, 29.670076, 26.642429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606890, 29.155554, 26.951405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578430, 29.473911, 27.191902>,  <30.561354, 29.664925, 27.336201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578430, 29.473911, 27.191902>,  <30.606890, 29.155554, 26.951405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578430, 29.473911, 27.191902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037565, -0.604481, 0.795733,
		0.996758, 0.034029, 0.072906,
		-0.071148, 0.795892, 0.601243,
		30.557085, 29.712679, 27.372274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138653, 29.128834, 27.447807>,  <30.606890, 29.155554, 26.951405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138653, 29.128834, 27.447807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839760, 29.326118, 27.625969>,  <30.660423, 29.444490, 27.732866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839760, 29.326118, 27.625969>,  <31.138653, 29.128834, 27.447807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839760, 29.326118, 27.625969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151982, -0.525633, 0.837025,
		0.646951, 0.693146, 0.317811,
		-0.747232, 0.493213, 0.445405,
		30.615591, 29.474083, 27.759590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376642, 29.190203, 28.110933>,  <31.138653, 29.128834, 27.447807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376642, 29.190203, 28.110933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986902, 29.270565, 28.151493>,  <30.753059, 29.318783, 28.175829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986902, 29.270565, 28.151493>,  <31.376642, 29.190203, 28.110933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986902, 29.270565, 28.151493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003443, -0.437221, 0.899348,
		0.225017, 0.876627, 0.425314,
		-0.974349, 0.200904, 0.101400,
		30.694597, 29.330835, 28.181913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305941, 29.621216, 28.797321>,  <31.376642, 29.190203, 28.110933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305941, 29.621216, 28.797321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956045, 29.463444, 28.684711>,  <30.746107, 29.368780, 28.617146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956045, 29.463444, 28.684711>,  <31.305941, 29.621216, 28.797321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956045, 29.463444, 28.684711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145884, -0.339663, 0.929165,
		-0.462113, 0.853847, 0.239575,
		-0.874740, -0.394429, -0.281525,
		30.693623, 29.345116, 28.600254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813196, 30.018208, 29.264591>,  <31.305941, 29.621216, 28.797321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813196, 30.018208, 29.264591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648905, 29.675625, 29.139507>,  <30.550329, 29.470076, 29.064457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648905, 29.675625, 29.139507>,  <30.813196, 30.018208, 29.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648905, 29.675625, 29.139507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197175, -0.251421, 0.947581,
		-0.890181, 0.450859, -0.065606,
		-0.410730, -0.856455, -0.312708,
		30.525686, 29.418688, 29.045694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267862, 30.002443, 29.815428>,  <30.813196, 30.018208, 29.264591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267862, 30.002443, 29.815428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247070, 29.653507, 29.620975>,  <30.234594, 29.444145, 29.504305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247070, 29.653507, 29.620975>,  <30.267862, 30.002443, 29.815428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247070, 29.653507, 29.620975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169713, -0.471990, 0.865114,
		-0.984121, 0.127473, -0.123513,
		-0.051982, -0.872339, -0.486129,
		30.231476, 29.391806, 29.475136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713520, 29.613829, 30.162224>,  <30.267862, 30.002443, 29.815428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713520, 29.613829, 30.162224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915140, 29.338352, 29.953747>,  <30.036112, 29.173067, 29.828661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915140, 29.338352, 29.953747>,  <29.713520, 29.613829, 30.162224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915140, 29.338352, 29.953747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288284, -0.703007, 0.650133,
		-0.814141, -0.177448, -0.552889,
		0.504049, -0.688689, -0.521192,
		30.066355, 29.131746, 29.797390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231247, 29.133511, 29.857691>,  <29.713520, 29.613829, 30.162224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231247, 29.133511, 29.857691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582018, 28.949780, 29.914284>,  <29.792480, 28.839540, 29.948240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582018, 28.949780, 29.914284>,  <29.231247, 29.133511, 29.857691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582018, 28.949780, 29.914284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427676, -0.611428, 0.665769,
		-0.219299, -0.644340, -0.732621,
		0.876927, -0.459327, 0.141483,
		29.845097, 28.811981, 29.956728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072039, 28.520023, 30.092367>,  <29.231247, 29.133511, 29.857691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072039, 28.520023, 30.092367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461882, 28.484123, 30.174431>,  <29.695787, 28.462584, 30.223669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461882, 28.484123, 30.174431>,  <29.072039, 28.520023, 30.092367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461882, 28.484123, 30.174431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206884, -0.711490, 0.671552,
		0.085696, -0.696941, -0.711989,
		0.974605, -0.089750, 0.205158,
		29.754263, 28.457199, 30.235977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180429, 27.857740, 30.186861>,  <29.072039, 28.520023, 30.092367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180429, 27.857740, 30.186861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521860, 27.989124, 30.348614>,  <29.726719, 28.067955, 30.445665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521860, 27.989124, 30.348614>,  <29.180429, 27.857740, 30.186861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521860, 27.989124, 30.348614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030439, -0.806325, 0.590688,
		0.520079, -0.491888, -0.698258,
		0.853575, 0.328459, 0.404380,
		29.777933, 28.087662, 30.469929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651798, 27.310902, 30.269913>,  <29.180429, 27.857740, 30.186861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651798, 27.310902, 30.269913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735050, 27.598400, 30.535267>,  <29.785002, 27.770899, 30.694479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735050, 27.598400, 30.535267>,  <29.651798, 27.310902, 30.269913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735050, 27.598400, 30.535267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010878, -0.679899, 0.733225,
		0.978040, -0.145391, -0.149327,
		0.208131, 0.718748, 0.663388,
		29.797489, 27.814024, 30.734283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274342, 27.114820, 30.602489>,  <29.651798, 27.310902, 30.269913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274342, 27.114820, 30.602489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064631, 27.370991, 30.826984>,  <29.938805, 27.524693, 30.961681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064631, 27.370991, 30.826984>,  <30.274342, 27.114820, 30.602489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064631, 27.370991, 30.826984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040153, -0.676939, 0.734943,
		0.850600, 0.362779, 0.380619,
		-0.524277, 0.640426, 0.561238,
		29.907347, 27.563118, 30.995356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418203, 26.795984, 31.194374>,  <30.274342, 27.114820, 30.602489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418203, 26.795984, 31.194374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132158, 27.052052, 31.306660>,  <29.960531, 27.205692, 31.374031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132158, 27.052052, 31.306660>,  <30.418203, 26.795984, 31.194374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132158, 27.052052, 31.306660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122118, -0.509829, 0.851564,
		0.688260, 0.574683, 0.442761,
		-0.715112, 0.640167, 0.280716,
		29.917625, 27.244102, 31.390875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578520, 27.075392, 31.874720>,  <30.418203, 26.795984, 31.194374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578520, 27.075392, 31.874720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183504, 27.110241, 31.822300>,  <29.946495, 27.131149, 31.790848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183504, 27.110241, 31.822300>,  <30.578520, 27.075392, 31.874720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183504, 27.110241, 31.822300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157362, -0.552773, 0.818339,
		-0.001145, 0.828765, 0.559596,
		-0.987540, 0.087122, -0.131049,
		29.887241, 27.136377, 31.782986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331463, 27.314035, 32.527576>,  <30.578520, 27.075392, 31.874720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331463, 27.314035, 32.527576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047127, 27.128517, 32.316067>,  <29.876526, 27.017206, 32.189163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047127, 27.128517, 32.316067>,  <30.331463, 27.314035, 32.527576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047127, 27.128517, 32.316067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237280, -0.549584, 0.801034,
		-0.662121, 0.694874, 0.280617,
		-0.710840, -0.463797, -0.528771,
		29.833876, 26.989378, 32.157436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828897, 27.179474, 33.016941>,  <30.331463, 27.314035, 32.527576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828897, 27.179474, 33.016941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757994, 26.939369, 32.704975>,  <29.715450, 26.795307, 32.517796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757994, 26.939369, 32.704975>,  <29.828897, 27.179474, 33.016941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757994, 26.939369, 32.704975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296495, -0.723074, 0.623903,
		-0.938440, 0.341834, -0.049802,
		-0.177261, -0.600261, -0.779913,
		29.704815, 26.759291, 32.471001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340504, 26.795475, 33.264687>,  <29.828897, 27.179474, 33.016941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340504, 26.795475, 33.264687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463560, 26.578880, 32.951725>,  <29.537394, 26.448923, 32.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463560, 26.578880, 32.951725>,  <29.340504, 26.795475, 33.264687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463560, 26.578880, 32.951725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062876, -0.832049, 0.551126,
		-0.949423, -0.120354, -0.290017,
		0.307639, -0.541488, -0.782400,
		29.555851, 26.416433, 32.717007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638666, 26.612144, 33.155830>,  <29.340504, 26.795475, 33.264687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638666, 26.612144, 33.155830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316671, 26.646053, 33.390713>,  <28.123474, 26.666399, 33.531643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316671, 26.646053, 33.390713>,  <28.638666, 26.612144, 33.155830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316671, 26.646053, 33.390713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187420, 0.902722, -0.387256,
		-0.562911, -0.421790, -0.710792,
		-0.804988, 0.084774, 0.587203,
		28.075174, 26.671486, 33.566875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108107, 26.849997, 32.706676>,  <28.638666, 26.612144, 33.155830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108107, 26.849997, 32.706676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989910, 26.926773, 33.081024>,  <27.918993, 26.972839, 33.305634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989910, 26.926773, 33.081024>,  <28.108107, 26.849997, 32.706676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989910, 26.926773, 33.081024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339497, 0.894571, -0.290663,
		-0.892988, -0.403612, -0.199174,
		-0.295490, 0.191940, 0.935866,
		27.901262, 26.984354, 33.361782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456039, 27.196877, 32.595009>,  <28.108107, 26.849997, 32.706676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456039, 27.196877, 32.595009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568523, 27.306919, 32.962757>,  <27.636015, 27.372944, 33.183407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568523, 27.306919, 32.962757>,  <27.456039, 27.196877, 32.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568523, 27.306919, 32.962757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280600, 0.939731, -0.195370,
		-0.917706, -0.203034, 0.341457,
		0.281211, 0.275105, 0.919368,
		27.652887, 27.389450, 33.238567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960390, 27.662041, 32.823841>,  <27.456039, 27.196877, 32.595009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960390, 27.662041, 32.823841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271082, 27.736057, 33.064655>,  <27.457497, 27.780466, 33.209145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271082, 27.736057, 33.064655>,  <26.960390, 27.662041, 32.823841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271082, 27.736057, 33.064655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030554, 0.965814, -0.257427,
		-0.629092, 0.181557, 0.755831,
		0.776731, 0.185039, 0.602038,
		27.504101, 27.791569, 33.245266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785072, 28.348757, 33.200493>,  <26.960390, 27.662041, 32.823841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785072, 28.348757, 33.200493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180632, 28.290047, 33.209782>,  <27.417967, 28.254820, 33.215355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180632, 28.290047, 33.209782>,  <26.785072, 28.348757, 33.200493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180632, 28.290047, 33.209782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147345, 0.948199, -0.281439,
		0.019285, 0.281737, 0.959298,
		0.988897, -0.146775, 0.023227,
		27.477301, 28.246014, 33.216751>
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
