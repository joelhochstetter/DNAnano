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
	<35.967999, 53.165039, 49.739399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285362, 52.999550, 49.917988>,  <36.475780, 52.900257, 50.025143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285362, 52.999550, 49.917988>,  <35.967999, 53.165039, 49.739399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285362, 52.999550, 49.917988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532234, 0.827441, -0.179073,
		-0.295344, 0.379706, 0.876696,
		0.793409, -0.413720, 0.446473,
		36.523384, 52.875435, 50.051929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203163, 53.631413, 50.310917>,  <35.967999, 53.165039, 49.739399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203163, 53.631413, 50.310917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498272, 53.414021, 50.150753>,  <36.675335, 53.283585, 50.054657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498272, 53.414021, 50.150753>,  <36.203163, 53.631413, 50.310917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498272, 53.414021, 50.150753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602483, 0.797661, 0.027422,
		0.304485, -0.261469, 0.915927,
		0.737769, -0.543481, -0.400406,
		36.719604, 53.250977, 50.030632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695549, 53.822933, 50.739071>,  <36.203163, 53.631413, 50.310917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695549, 53.822933, 50.739071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837528, 53.716747, 50.380508>,  <36.922714, 53.653034, 50.165371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837528, 53.716747, 50.380508>,  <36.695549, 53.822933, 50.739071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837528, 53.716747, 50.380508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611407, 0.791278, 0.007764,
		0.707244, -0.550824, 0.443170,
		0.354947, -0.265466, -0.896404,
		36.944012, 53.637108, 50.111588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431396, 53.532532, 50.736740>,  <36.695549, 53.822933, 50.739071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431396, 53.532532, 50.736740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338764, 53.712357, 50.391655>,  <37.283184, 53.820251, 50.184605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338764, 53.712357, 50.391655>,  <37.431396, 53.532532, 50.736740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338764, 53.712357, 50.391655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700983, 0.692015, 0.172449,
		0.674533, -0.564809, -0.475390,
		-0.231577, 0.449563, -0.862708,
		37.269291, 53.847225, 50.132843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021366, 53.682606, 50.525997>,  <37.431396, 53.532532, 50.736740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021366, 53.682606, 50.525997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775322, 53.926704, 50.326302>,  <37.627697, 54.073162, 50.206482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775322, 53.926704, 50.326302>,  <38.021366, 53.682606, 50.525997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775322, 53.926704, 50.326302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642319, 0.755064, 0.131552,
		0.457239, -0.239754, -0.856417,
		-0.615109, 0.610243, -0.499243,
		37.590790, 54.109779, 50.176529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312225, 53.864029, 49.894135>,  <38.021366, 53.682606, 50.525997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312225, 53.864029, 49.894135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074337, 54.147293, 50.046349>,  <37.931602, 54.317253, 50.137676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074337, 54.147293, 50.046349>,  <38.312225, 53.864029, 49.894135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074337, 54.147293, 50.046349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797106, 0.580978, 0.164577,
		-0.104536, 0.401206, -0.910003,
		-0.594721, 0.708165, 0.380537,
		37.895920, 54.359741, 50.160511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544285, 54.592995, 49.677925>,  <38.312225, 53.864029, 49.894135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544285, 54.592995, 49.677925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337002, 54.617279, 50.019165>,  <38.212631, 54.631851, 50.223907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337002, 54.617279, 50.019165>,  <38.544285, 54.592995, 49.677925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337002, 54.617279, 50.019165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741633, 0.528690, 0.412877,
		-0.425958, 0.846641, -0.318996,
		-0.518209, 0.060710, 0.853097,
		38.181538, 54.635490, 50.275093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410305, 55.297646, 49.836491>,  <38.544285, 54.592995, 49.677925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410305, 55.297646, 49.836491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427032, 55.075897, 50.168976>,  <38.437069, 54.942848, 50.368469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427032, 55.075897, 50.168976>,  <38.410305, 55.297646, 49.836491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427032, 55.075897, 50.168976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756503, 0.561015, 0.336103,
		-0.652651, 0.614762, 0.442848,
		0.041821, -0.554374, 0.831216,
		38.439579, 54.909584, 50.418343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782738, 55.733723, 50.267620>,  <38.410305, 55.297646, 49.836491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782738, 55.733723, 50.267620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800594, 55.400208, 50.487728>,  <38.811310, 55.200096, 50.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800594, 55.400208, 50.487728>,  <38.782738, 55.733723, 50.267620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800594, 55.400208, 50.487728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815286, 0.348734, 0.462270,
		-0.577335, 0.427994, 0.695346,
		0.044642, -0.833790, 0.550274,
		38.813988, 55.150070, 50.652809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738922, 55.838657, 51.012856>,  <38.782738, 55.733723, 50.267620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738922, 55.838657, 51.012856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939243, 55.498997, 50.945759>,  <39.059437, 55.295200, 50.905502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939243, 55.498997, 50.945759>,  <38.738922, 55.838657, 51.012856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939243, 55.498997, 50.945759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793523, 0.373019, 0.480809,
		-0.345710, -0.373897, 0.860631,
		0.500805, -0.849151, -0.167740,
		39.089485, 55.244251, 50.895435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065617, 55.934925, 51.607609>,  <38.738922, 55.838657, 51.012856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065617, 55.934925, 51.607609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231220, 55.644119, 51.388504>,  <39.330582, 55.469635, 51.257042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231220, 55.644119, 51.388504>,  <39.065617, 55.934925, 51.607609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231220, 55.644119, 51.388504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896983, 0.223393, 0.381468,
		-0.154967, -0.649264, 0.744608,
		0.414014, -0.727016, -0.547760,
		39.355423, 55.426014, 51.224174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382797, 55.364002, 52.041218>,  <39.065617, 55.934925, 51.607609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382797, 55.364002, 52.041218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593956, 55.390656, 51.702541>,  <39.720654, 55.406647, 51.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593956, 55.390656, 51.702541>,  <39.382797, 55.364002, 52.041218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593956, 55.390656, 51.702541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766345, 0.392368, 0.508688,
		0.366110, -0.917391, 0.156065,
		0.527901, 0.066637, -0.846688,
		39.752327, 55.410645, 51.448536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023987, 55.064835, 52.179962>,  <39.382797, 55.364002, 52.041218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023987, 55.064835, 52.179962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049007, 55.331409, 51.882790>,  <40.064018, 55.491352, 51.704487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049007, 55.331409, 51.882790>,  <40.023987, 55.064835, 52.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049007, 55.331409, 51.882790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694236, 0.505740, 0.512116,
		0.717024, -0.547806, -0.431028,
		0.062552, 0.666435, -0.742935,
		40.067772, 55.531342, 51.659908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738895, 55.130054, 51.877907>,  <40.023987, 55.064835, 52.179962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738895, 55.130054, 51.877907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522835, 55.465202, 51.846397>,  <40.393196, 55.666290, 51.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522835, 55.465202, 51.846397>,  <40.738895, 55.130054, 51.877907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522835, 55.465202, 51.846397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676445, 0.487950, 0.551659,
		0.500657, 0.244695, -0.830342,
		-0.540153, 0.837872, -0.078773,
		40.360790, 55.716564, 51.822765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157673, 55.523899, 51.485462>,  <40.738895, 55.130054, 51.877907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157673, 55.523899, 51.485462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927971, 55.694038, 51.765266>,  <40.790150, 55.796124, 51.933147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927971, 55.694038, 51.765266>,  <41.157673, 55.523899, 51.485462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927971, 55.694038, 51.765266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816782, 0.355785, 0.454185,
		-0.055688, 0.832163, -0.551727,
		-0.574253, 0.425348, 0.699509,
		40.755695, 55.821644, 51.975121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904957, 55.869259, 51.606281>,  <41.157673, 55.523899, 51.485462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904957, 55.869259, 51.606281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258480, 55.711231, 51.506039>,  <42.470592, 55.616413, 51.445892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258480, 55.711231, 51.506039>,  <41.904957, 55.869259, 51.606281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258480, 55.711231, 51.506039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374660, 0.276831, 0.884870,
		-0.280211, -0.875946, 0.392683,
		0.883805, -0.395073, -0.250611,
		42.523621, 55.592709, 51.430855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114952, 55.358505, 52.185806>,  <41.904957, 55.869259, 51.606281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114952, 55.358505, 52.185806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411591, 55.528618, 51.978279>,  <42.589573, 55.630684, 51.853764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411591, 55.528618, 51.978279>,  <42.114952, 55.358505, 52.185806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411591, 55.528618, 51.978279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447369, 0.262784, 0.854872,
		0.499899, -0.866072, 0.004621,
		0.741594, 0.425282, -0.518819,
		42.634068, 55.656200, 51.822632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664223, 55.346767, 52.546894>,  <42.114952, 55.358505, 52.185806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664223, 55.346767, 52.546894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802731, 55.608810, 52.278290>,  <42.885838, 55.766037, 52.117126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802731, 55.608810, 52.278290>,  <42.664223, 55.346767, 52.546894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802731, 55.608810, 52.278290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589894, 0.404533, 0.698841,
		0.729466, -0.638109, -0.246367,
		0.346274, 0.655111, -0.671509,
		42.906612, 55.805344, 52.076836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503342, 55.292614, 52.507259>,  <42.664223, 55.346767, 52.546894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503342, 55.292614, 52.507259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308811, 55.636787, 52.446419>,  <43.192093, 55.843292, 52.409916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308811, 55.636787, 52.446419>,  <43.503342, 55.292614, 52.507259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308811, 55.636787, 52.446419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504700, 0.418716, 0.754954,
		0.713279, 0.290386, -0.637895,
		-0.486324, 0.860438, -0.152103,
		43.162914, 55.894920, 52.400787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998676, 55.586353, 51.960239>,  <43.503342, 55.292614, 52.507259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998676, 55.586353, 51.960239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220905, 55.275520, 51.841927>,  <44.354244, 55.089020, 51.770939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220905, 55.275520, 51.841927>,  <43.998676, 55.586353, 51.960239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220905, 55.275520, 51.841927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481564, 0.010726, 0.876345,
		-0.677816, -0.629312, 0.380173,
		0.555573, -0.777078, -0.295784,
		44.387577, 55.042397, 51.753193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377872, 55.453915, 52.574230>,  <43.998676, 55.586353, 51.960239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377872, 55.453915, 52.574230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525948, 55.171425, 52.332829>,  <44.614792, 55.001930, 52.187988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525948, 55.171425, 52.332829>,  <44.377872, 55.453915, 52.574230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525948, 55.171425, 52.332829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612222, -0.303137, 0.730268,
		-0.698674, -0.639814, 0.320146,
		0.370187, -0.706220, -0.603502,
		44.637005, 54.959560, 52.151779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613369, 54.878342, 53.013744>,  <44.377872, 55.453915, 52.574230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613369, 54.878342, 53.013744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855675, 54.908997, 52.696968>,  <45.001057, 54.927391, 52.506901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855675, 54.908997, 52.696968>,  <44.613369, 54.878342, 53.013744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855675, 54.908997, 52.696968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765795, 0.213917, 0.606463,
		0.215932, -0.973835, 0.070838,
		0.605749, 0.076707, -0.791950,
		45.037403, 54.931988, 52.459385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235531, 54.461769, 52.989361>,  <44.613369, 54.878342, 53.013744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235531, 54.461769, 52.989361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332150, 54.794685, 52.789780>,  <45.390121, 54.994434, 52.670029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332150, 54.794685, 52.789780>,  <45.235531, 54.461769, 52.989361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332150, 54.794685, 52.789780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847364, 0.069671, 0.526421,
		0.472896, -0.549950, -0.688422,
		0.241542, 0.832287, -0.498955,
		45.404613, 55.044373, 52.640095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967213, 54.389988, 52.756489>,  <45.235531, 54.461769, 52.989361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967213, 54.389988, 52.756489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865204, 54.772743, 52.812115>,  <45.804001, 55.002396, 52.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865204, 54.772743, 52.812115>,  <45.967213, 54.389988, 52.756489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865204, 54.772743, 52.812115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770674, 0.114288, 0.626897,
		0.583975, 0.267041, -0.766592,
		-0.255019, 0.956884, 0.139060,
		45.788700, 55.059807, 52.853832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484997, 54.964935, 52.460026>,  <45.967213, 54.389988, 52.756489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484997, 54.964935, 52.460026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277504, 55.107433, 52.770897>,  <46.153008, 55.192932, 52.957420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277504, 55.107433, 52.770897>,  <46.484997, 54.964935, 52.460026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277504, 55.107433, 52.770897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852416, 0.145718, 0.502149,
		0.065641, 0.922959, -0.379260,
		-0.518728, 0.356249, 0.777180,
		46.121887, 55.214310, 53.004051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770485, 55.533829, 52.815571>,  <46.484997, 54.964935, 52.460026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770485, 55.533829, 52.815571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565208, 55.342415, 53.100563>,  <46.442043, 55.227566, 53.271561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565208, 55.342415, 53.100563>,  <46.770485, 55.533829, 52.815571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565208, 55.342415, 53.100563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779200, 0.088259, 0.620530,
		-0.359829, 0.873621, 0.327581,
		-0.513196, -0.478535, 0.712484,
		46.411251, 55.198853, 53.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770653, 55.960922, 53.492504>,  <46.770485, 55.533829, 52.815571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770653, 55.960922, 53.492504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739803, 55.569118, 53.566933>,  <46.721294, 55.334038, 53.611588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739803, 55.569118, 53.566933>,  <46.770653, 55.960922, 53.492504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739803, 55.569118, 53.566933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740193, 0.068776, 0.668869,
		-0.667957, 0.189314, 0.719718,
		-0.077127, -0.979505, 0.186068,
		46.716667, 55.275269, 53.622753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566784, 55.764935, 54.234669>,  <46.770653, 55.960922, 53.492504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566784, 55.764935, 54.234669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792889, 55.490654, 54.051239>,  <46.928551, 55.326084, 53.941181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792889, 55.490654, 54.051239>,  <46.566784, 55.764935, 54.234669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792889, 55.490654, 54.051239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633379, 0.004626, 0.773828,
		-0.528496, -0.727866, 0.436926,
		0.565264, -0.685704, -0.458570,
		46.962467, 55.284943, 53.913670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700798, 55.210754, 54.639553>,  <46.566784, 55.764935, 54.234669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700798, 55.210754, 54.639553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017853, 55.226574, 54.396187>,  <47.208084, 55.236065, 54.250168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.017853, 55.226574, 54.396187>,  <46.700798, 55.210754, 54.639553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017853, 55.226574, 54.396187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592168, 0.187649, 0.783661,
		0.145155, -0.981440, 0.125322,
		0.792633, 0.039540, -0.608415,
		47.255642, 55.238438, 54.213661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179790, 54.663860, 54.713833>,  <46.700798, 55.210754, 54.639553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179790, 54.663860, 54.713833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395092, 54.972458, 54.578144>,  <47.524273, 55.157616, 54.496731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395092, 54.972458, 54.578144>,  <47.179790, 54.663860, 54.713833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395092, 54.972458, 54.578144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665799, -0.142482, 0.732401,
		0.516712, -0.620074, -0.590354,
		0.538257, 0.771497, -0.339222,
		47.556568, 55.203907, 54.476376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.919228, 54.517990, 54.382000>,  <47.179790, 54.663860, 54.713833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.919228, 54.517990, 54.382000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869316, 54.860050, 54.583260>,  <47.839367, 55.065285, 54.704014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869316, 54.860050, 54.583260>,  <47.919228, 54.517990, 54.382000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869316, 54.860050, 54.583260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590837, -0.343348, 0.730085,
		0.797083, 0.388378, -0.462408,
		-0.124782, 0.855146, 0.503145,
		47.831882, 55.116592, 54.734203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.186970, 54.445110, 55.079842>,  <47.919228, 54.517990, 54.382000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.186970, 54.445110, 55.079842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.388050, 54.180954, 54.856712>,  <48.508698, 54.022461, 54.722836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.388050, 54.180954, 54.856712>,  <48.186970, 54.445110, 55.079842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.388050, 54.180954, 54.856712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863306, 0.416832, 0.284523,
		0.044621, -0.624604, 0.779666,
		0.502704, -0.660395, -0.557824,
		48.538860, 53.982834, 54.689365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.583069, 53.971561, 55.402821>,  <48.186970, 54.445110, 55.079842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.583069, 53.971561, 55.402821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.777851, 53.996971, 55.054375>,  <48.894722, 54.012215, 54.845306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.777851, 53.996971, 55.054375>,  <48.583069, 53.971561, 55.402821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.777851, 53.996971, 55.054375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854551, 0.171572, 0.490210,
		0.180597, -0.983121, 0.029266,
		0.486957, 0.063521, -0.871113,
		48.923939, 54.016029, 54.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.211452, 53.418114, 55.241543>,  <48.583069, 53.971561, 55.402821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.211452, 53.418114, 55.241543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.286575, 53.762749, 55.052910>,  <49.331650, 53.969532, 54.939732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.286575, 53.762749, 55.052910>,  <49.211452, 53.418114, 55.241543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.286575, 53.762749, 55.052910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818954, 0.127708, 0.559468,
		0.542258, -0.491275, -0.681619,
		0.187804, 0.861591, -0.471582,
		49.342918, 54.021225, 54.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.909874, 53.408039, 54.928825>,  <49.211452, 53.418114, 55.241543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.909874, 53.408039, 54.928825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.755306, 53.751667, 55.063095>,  <49.662563, 53.957844, 55.143658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.755306, 53.751667, 55.063095>,  <49.909874, 53.408039, 54.928825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.755306, 53.751667, 55.063095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843239, 0.181611, 0.505930,
		0.373666, 0.478559, -0.794579,
		-0.386421, 0.859069, 0.335678,
		49.639381, 54.009388, 55.163799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.323334, 53.906857, 54.672501>,  <49.909874, 53.408039, 54.928825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.323334, 53.906857, 54.672501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.167946, 53.976967, 55.034355>,  <50.074715, 54.019032, 55.251469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.167946, 53.976967, 55.034355>,  <50.323334, 53.906857, 54.672501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.167946, 53.976967, 55.034355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902045, 0.272811, 0.334500,
		-0.188166, 0.945967, -0.264083,
		-0.388470, 0.175273, 0.904638,
		50.051403, 54.029549, 55.305748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.520782, 54.600296, 54.930599>,  <50.323334, 53.906857, 54.672501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.520782, 54.600296, 54.930599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.429134, 54.367683, 55.242836>,  <50.374146, 54.228115, 55.430180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.429134, 54.367683, 55.242836>,  <50.520782, 54.600296, 54.930599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.429134, 54.367683, 55.242836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844194, 0.280528, 0.456772,
		-0.484605, 0.763629, 0.426648,
		-0.229118, -0.581528, 0.780596,
		50.360397, 54.193226, 55.477016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.381207, 54.908867, 55.672497>,  <50.520782, 54.600296, 54.930599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.381207, 54.908867, 55.672497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.565205, 54.553726, 55.667847>,  <50.675602, 54.340641, 55.665058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.565205, 54.553726, 55.667847>,  <50.381207, 54.908867, 55.672497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.565205, 54.553726, 55.667847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835348, 0.428281, 0.344631,
		-0.301003, -0.168235, 0.938666,
		0.459992, -0.887847, -0.011621,
		50.703201, 54.287373, 55.664360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.818001, 54.899117, 56.267899>,  <50.381207, 54.908867, 55.672497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.818001, 54.899117, 56.267899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.993896, 54.658478, 56.001152>,  <51.099434, 54.514095, 55.841106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.993896, 54.658478, 56.001152>,  <50.818001, 54.899117, 56.267899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.993896, 54.658478, 56.001152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897231, 0.327371, 0.296319,
		0.040046, -0.728633, 0.683732,
		0.439742, -0.601599, -0.666862,
		51.125820, 54.477997, 55.801094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.389862, 54.495781, 56.528309>,  <50.818001, 54.899117, 56.267899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.389862, 54.495781, 56.528309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.403332, 54.620834, 56.148598>,  <51.411415, 54.695866, 55.920773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.403332, 54.620834, 56.148598>,  <51.389862, 54.495781, 56.528309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.403332, 54.620834, 56.148598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731616, 0.639370, 0.236525,
		0.680885, -0.702471, -0.207196,
		0.033677, 0.312634, -0.949276,
		51.413433, 54.714626, 55.863815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.061481, 54.587635, 56.244144>,  <51.389862, 54.495781, 56.528309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.061481, 54.587635, 56.244144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.844006, 54.847107, 56.031120>,  <51.713520, 55.002789, 55.903305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.844006, 54.847107, 56.031120>,  <52.061481, 54.587635, 56.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.844006, 54.847107, 56.031120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657369, 0.723631, 0.210296,
		0.521789, -0.235750, -0.819852,
		-0.543693, 0.648676, -0.532558,
		51.680897, 55.041710, 55.871353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.521370, 55.122330, 56.110725>,  <52.061481, 54.587635, 56.244144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.521370, 55.122330, 56.110725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.170422, 55.277916, 55.998352>,  <51.959850, 55.371269, 55.930927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.170422, 55.277916, 55.998352>,  <52.521370, 55.122330, 56.110725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.170422, 55.277916, 55.998352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410733, 0.911521, -0.020699,
		0.248021, -0.133548, -0.959505,
		-0.877373, 0.388967, -0.280929,
		51.907211, 55.394608, 55.914074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.157360, 55.075134, 56.222954>,  <52.521370, 55.122330, 56.110725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.157360, 55.075134, 56.222954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.122822, 55.462769, 56.315407>,  <53.102097, 55.695347, 56.370880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.122822, 55.462769, 56.315407>,  <53.157360, 55.075134, 56.222954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.122822, 55.462769, 56.315407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893350, 0.178011, -0.412599,
		-0.440987, 0.170856, -0.881101,
		-0.086350, 0.969082, 0.231135,
		53.096916, 55.753494, 56.384747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.952629, 55.547890, 55.711750>,  <53.157360, 55.075134, 56.222954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.952629, 55.547890, 55.711750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.174675, 55.751328, 55.975014>,  <53.307903, 55.873390, 56.132973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.174675, 55.751328, 55.975014>,  <52.952629, 55.547890, 55.711750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.174675, 55.751328, 55.975014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780443, -0.044822, -0.623618,
		-0.287669, 0.859839, -0.421811,
		0.555117, 0.508595, 0.658161,
		53.341209, 55.903908, 56.172462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.196026, 56.180851, 55.459549>,  <52.952629, 55.547890, 55.711750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.196026, 56.180851, 55.459549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.461308, 56.018524, 55.711098>,  <53.620476, 55.921127, 55.862026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.461308, 56.018524, 55.711098>,  <53.196026, 56.180851, 55.459549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.461308, 56.018524, 55.711098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708044, 0.067879, -0.702899,
		0.242562, 0.911430, 0.332354,
		0.663203, -0.405817, 0.628868,
		53.660267, 55.896778, 55.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.841343, 56.623013, 55.443707>,  <53.196026, 56.180851, 55.459549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.841343, 56.623013, 55.443707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.930511, 56.240429, 55.519066>,  <53.984013, 56.010880, 55.564281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.930511, 56.240429, 55.519066>,  <53.841343, 56.623013, 55.443707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.930511, 56.240429, 55.519066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751827, 0.045660, -0.657777,
		0.620534, 0.288275, 0.729270,
		0.222919, -0.956458, 0.188399,
		53.997387, 55.953491, 55.575584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.534592, 56.565514, 55.783051>,  <53.841343, 56.623013, 55.443707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.534592, 56.565514, 55.783051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.399254, 56.282127, 55.535309>,  <54.318050, 56.112095, 55.386665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.399254, 56.282127, 55.535309>,  <54.534592, 56.565514, 55.783051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.399254, 56.282127, 55.535309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823434, 0.095693, -0.559285,
		0.455503, -0.699226, 0.550999,
		-0.338340, -0.708467, -0.619355,
		54.297752, 56.069588, 55.349503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.082378, 56.123047, 55.759312>,  <54.534592, 56.565514, 55.783051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.082378, 56.123047, 55.759312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.883499, 56.092728, 55.413582>,  <54.764172, 56.074535, 55.206146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.883499, 56.092728, 55.413582>,  <55.082378, 56.123047, 55.759312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.883499, 56.092728, 55.413582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826449, 0.261919, -0.498378,
		0.264161, -0.962108, -0.067577,
		-0.497194, -0.075803, -0.864322,
		54.734341, 56.069988, 55.154285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.365456, 55.688030, 55.368202>,  <55.082378, 56.123047, 55.759312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.365456, 55.688030, 55.368202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.194931, 55.957840, 55.127113>,  <55.092617, 56.119728, 54.982460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.194931, 55.957840, 55.127113>,  <55.365456, 55.688030, 55.368202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.194931, 55.957840, 55.127113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886356, 0.178431, -0.427242,
		-0.180643, -0.716361, -0.673940,
		-0.426311, 0.674529, -0.602719,
		55.067039, 56.160198, 54.946297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.446957, 55.520977, 54.539169>,  <55.365456, 55.688030, 55.368202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.446957, 55.520977, 54.539169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.425049, 55.895313, 54.678429>,  <55.411903, 56.119915, 54.761982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.425049, 55.895313, 54.678429>,  <55.446957, 55.520977, 54.539169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.425049, 55.895313, 54.678429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886692, 0.205902, -0.413983,
		-0.459105, 0.286023, -0.841078,
		-0.054771, 0.935839, 0.348146,
		55.408619, 56.176064, 54.782871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.602558, 56.021988, 53.994350>,  <55.446957, 55.520977, 54.539169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.602558, 56.021988, 53.994350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.677963, 56.193012, 54.347996>,  <55.723206, 56.295628, 54.560181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.677963, 56.193012, 54.347996>,  <55.602558, 56.021988, 53.994350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.677963, 56.193012, 54.347996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885913, 0.314469, -0.340980,
		-0.423816, 0.847526, -0.319500,
		0.188516, 0.427562, 0.884111,
		55.734516, 56.321281, 54.613228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.967621, 56.689278, 53.866875>,  <55.602558, 56.021988, 53.994350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.967621, 56.689278, 53.866875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.113068, 56.686481, 54.239483>,  <56.200336, 56.684803, 54.463047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.113068, 56.686481, 54.239483>,  <55.967621, 56.689278, 53.866875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.113068, 56.686481, 54.239483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918848, 0.167264, -0.357409,
		-0.153310, 0.985887, 0.067246,
		0.363613, -0.006994, 0.931524,
		56.222153, 56.684383, 54.518940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.325550, 57.374016, 53.853527>,  <55.967621, 56.689278, 53.866875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.325550, 57.374016, 53.853527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.457573, 57.109753, 54.123222>,  <56.536785, 56.951195, 54.285038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.457573, 57.109753, 54.123222>,  <56.325550, 57.374016, 53.853527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.457573, 57.109753, 54.123222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919711, 0.064198, -0.387312,
		0.212595, 0.747939, 0.628801,
		0.330054, -0.660656, 0.674239,
		56.556591, 56.911556, 54.325493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.893425, 57.602707, 54.060204>,  <56.325550, 57.374016, 53.853527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.893425, 57.602707, 54.060204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.928360, 57.206902, 54.106232>,  <56.949322, 56.969418, 54.133850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.928360, 57.206902, 54.106232>,  <56.893425, 57.602707, 54.060204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.928360, 57.206902, 54.106232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973974, 0.060564, -0.218419,
		0.209159, 0.131154, 0.969047,
		0.087336, -0.989510, 0.115073,
		56.954559, 56.910049, 54.140755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.460899, 57.400631, 54.444035>,  <56.893425, 57.602707, 54.060204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.460899, 57.400631, 54.444035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.397987, 57.059212, 54.245350>,  <57.360241, 56.854359, 54.126141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.397987, 57.059212, 54.245350>,  <57.460899, 57.400631, 54.444035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.397987, 57.059212, 54.245350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968459, -0.034874, -0.246719,
		0.193264, -0.519848, 0.832110,
		-0.157275, -0.853547, -0.496712,
		57.350803, 56.803146, 54.096336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.980133, 56.991463, 54.623718>,  <57.460899, 57.400631, 54.444035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.980133, 56.991463, 54.623718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.839455, 56.854530, 54.275208>,  <57.755047, 56.772369, 54.066101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.839455, 56.854530, 54.275208>,  <57.980133, 56.991463, 54.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.839455, 56.854530, 54.275208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907292, 0.104525, -0.407303,
		0.230503, -0.933747, 0.273835,
		-0.351696, -0.342332, -0.871274,
		57.733948, 56.751831, 54.013824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.484112, 56.993038, 55.172009>,  <57.980133, 56.991463, 54.623718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.484112, 56.993038, 55.172009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.684433, 56.680351, 55.320663>,  <57.804626, 56.492741, 55.409855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.684433, 56.680351, 55.320663>,  <57.484112, 56.993038, 55.172009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.684433, 56.680351, 55.320663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713596, 0.615886, 0.333862,
		-0.489873, 0.098001, 0.866268,
		0.500804, -0.781716, 0.371639,
		57.834675, 56.445835, 55.432156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.053696, 57.262329, 55.551186>,  <57.484112, 56.993038, 55.172009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.053696, 57.262329, 55.551186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.133034, 56.874287, 55.607117>,  <58.180637, 56.641460, 55.640675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.133034, 56.874287, 55.607117>,  <58.053696, 57.262329, 55.551186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.133034, 56.874287, 55.607117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903592, 0.236257, 0.357358,
		-0.379710, 0.055462, 0.923442,
		0.198350, -0.970106, 0.139825,
		58.192539, 56.583256, 55.649063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.314278, 57.065483, 56.251282>,  <58.053696, 57.262329, 55.551186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.314278, 57.065483, 56.251282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.472443, 56.788273, 56.010162>,  <58.567341, 56.621944, 55.865490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.472443, 56.788273, 56.010162>,  <58.314278, 57.065483, 56.251282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.472443, 56.788273, 56.010162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915280, 0.242347, 0.321763,
		-0.076905, -0.678954, 0.730142,
		0.395410, -0.693029, -0.602795,
		58.591064, 56.580364, 55.829323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.777699, 56.533527, 56.652233>,  <58.314278, 57.065483, 56.251282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.777699, 56.533527, 56.652233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.916870, 56.592072, 56.281822>,  <59.000374, 56.627197, 56.059574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.916870, 56.592072, 56.281822>,  <58.777699, 56.533527, 56.652233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.916870, 56.592072, 56.281822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937210, -0.079791, 0.339516,
		-0.024199, -0.986009, -0.164927,
		0.347926, 0.146356, -0.926028,
		59.021248, 56.635979, 56.004013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.215481, 56.017975, 56.311588>,  <58.777699, 56.533527, 56.652233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.215481, 56.017975, 56.311588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.309143, 56.386208, 56.186562>,  <59.365341, 56.607147, 56.111546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.309143, 56.386208, 56.186562>,  <59.215481, 56.017975, 56.311588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.309143, 56.386208, 56.186562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895283, -0.078849, 0.438466,
		0.378999, -0.382505, -0.842645,
		0.234157, 0.920583, -0.312566,
		59.379391, 56.662384, 56.092793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.979763, 56.055820, 55.949371>,  <59.215481, 56.017975, 56.311588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.979763, 56.055820, 55.949371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.829597, 56.375542, 56.137062>,  <59.739498, 56.567375, 56.249676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.829597, 56.375542, 56.137062>,  <59.979763, 56.055820, 55.949371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.829597, 56.375542, 56.137062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844982, 0.087118, 0.527651,
		0.380878, 0.594574, -0.708106,
		-0.375416, 0.799307, 0.469223,
		59.716972, 56.615334, 56.277828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.419636, 56.705490, 55.898438>,  <59.979763, 56.055820, 55.949371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.419636, 56.705490, 55.898438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.197769, 56.729424, 56.230408>,  <60.064651, 56.743782, 56.429588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.197769, 56.729424, 56.230408>,  <60.419636, 56.705490, 55.898438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.197769, 56.729424, 56.230408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794480, 0.334506, 0.506860,
		-0.247288, 0.940492, -0.233073,
		-0.554662, 0.059832, 0.829922,
		60.031372, 56.747372, 56.479385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.253159, 57.466404, 56.277870>,  <60.419636, 56.705490, 55.898438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.253159, 57.466404, 56.277870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.304253, 57.168579, 56.539955>,  <60.334911, 56.989883, 56.697208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.304253, 57.168579, 56.539955>,  <60.253159, 57.466404, 56.277870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.304253, 57.168579, 56.539955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583810, 0.590501, 0.557203,
		-0.801778, 0.311345, 0.510113,
		0.127740, -0.744563, 0.655217,
		60.342575, 56.945210, 56.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.014706, 57.619610, 57.080189>,  <60.253159, 57.466404, 56.277870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.014706, 57.619610, 57.080189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.315132, 57.366375, 57.005249>,  <60.495388, 57.214436, 56.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.315132, 57.366375, 57.005249>,  <60.014706, 57.619610, 57.080189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.315132, 57.366375, 57.005249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583717, 0.504135, 0.636492,
		-0.308506, -0.587407, 0.748183,
		0.751065, -0.633089, -0.187350,
		60.540451, 57.176449, 56.949043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.100967, 57.421009, 57.748444>,  <60.014706, 57.619610, 57.080189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.100967, 57.421009, 57.748444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.416344, 57.383121, 57.505333>,  <60.605568, 57.360390, 57.359467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.416344, 57.383121, 57.505333>,  <60.100967, 57.421009, 57.748444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.416344, 57.383121, 57.505333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596975, 0.355996, 0.718950,
		0.148267, -0.929675, 0.337226,
		0.788440, -0.094719, -0.607775,
		60.652874, 57.354706, 57.323002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.633751, 56.815121, 57.821987>,  <60.100967, 57.421009, 57.748444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.633751, 56.815121, 57.821987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.805359, 57.146286, 57.677490>,  <60.908325, 57.344986, 57.590790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.805359, 57.146286, 57.677490>,  <60.633751, 56.815121, 57.821987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.805359, 57.146286, 57.677490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596403, 0.040730, 0.801651,
		0.678411, -0.559375, -0.476296,
		0.429024, 0.827913, -0.361245,
		60.934067, 57.394661, 57.569118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.311958, 56.785873, 57.700207>,  <60.633751, 56.815121, 57.821987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.311958, 56.785873, 57.700207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.273132, 57.163120, 57.827393>,  <61.249836, 57.389469, 57.903706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.273132, 57.163120, 57.827393>,  <61.311958, 56.785873, 57.700207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.273132, 57.163120, 57.827393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763225, -0.134515, 0.631975,
		0.638800, 0.304021, -0.706757,
		-0.097064, 0.943121, 0.317964,
		61.244015, 57.446056, 57.922783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.811481, 56.977020, 58.090275>,  <61.311958, 56.785873, 57.700207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.811481, 56.977020, 58.090275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.615608, 57.288437, 58.247284>,  <61.498085, 57.475288, 58.341492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.615608, 57.288437, 58.247284>,  <61.811481, 56.977020, 58.090275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.615608, 57.288437, 58.247284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771359, 0.176957, 0.611304,
		0.406466, 0.602125, -0.687190,
		-0.489685, 0.778544, 0.392527,
		61.468704, 57.521999, 58.365044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.311588, 57.400700, 58.214695>,  <61.811481, 56.977020, 58.090275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.311588, 57.400700, 58.214695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.013161, 57.543663, 58.439423>,  <61.834103, 57.629440, 58.574257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.013161, 57.543663, 58.439423>,  <62.311588, 57.400700, 58.214695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.013161, 57.543663, 58.439423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633014, 0.118945, 0.764948,
		0.206574, 0.926342, -0.314987,
		-0.746070, 0.357410, 0.561817,
		61.789341, 57.650887, 58.607967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.535240, 57.926338, 58.630318>,  <62.311588, 57.400700, 58.214695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.535240, 57.926338, 58.630318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.208069, 57.806114, 58.826546>,  <62.011765, 57.733978, 58.944283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.208069, 57.806114, 58.826546>,  <62.535240, 57.926338, 58.630318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.208069, 57.806114, 58.826546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511436, 0.010660, 0.859255,
		-0.263487, 0.953703, 0.144998,
		-0.817929, -0.300560, 0.490567,
		61.962688, 57.715946, 58.973717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.355331, 58.161789, 59.405090>,  <62.535240, 57.926338, 58.630318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.355331, 58.161789, 59.405090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.219460, 57.785595, 59.401016>,  <62.137936, 57.559879, 59.398571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.219460, 57.785595, 59.401016>,  <62.355331, 58.161789, 59.405090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.219460, 57.785595, 59.401016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610138, -0.228580, 0.758606,
		-0.715787, 0.251469, 0.651470,
		-0.339679, -0.940486, -0.010184,
		62.117558, 57.503448, 59.397961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.026634, 57.884632, 60.031425>,  <62.355331, 58.161789, 59.405090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.026634, 57.884632, 60.031425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.234367, 57.613831, 59.822823>,  <62.359005, 57.451351, 59.697662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.234367, 57.613831, 59.822823>,  <62.026634, 57.884632, 60.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.234367, 57.613831, 59.822823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434435, -0.316362, 0.843315,
		-0.735909, -0.664519, 0.129816,
		0.519331, -0.677000, -0.521504,
		62.390167, 57.410732, 59.666370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.310619, 57.428116, 60.477268>,  <62.026634, 57.884632, 60.031425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.310619, 57.428116, 60.477268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.572380, 57.342159, 60.187279>,  <62.729435, 57.290585, 60.013287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.572380, 57.342159, 60.187279>,  <62.310619, 57.428116, 60.477268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.572380, 57.342159, 60.187279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643972, -0.344117, 0.683289,
		-0.396307, -0.914005, -0.086805,
		0.654401, -0.214892, -0.724970,
		62.768700, 57.277691, 59.969788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.698559, 56.983475, 60.798786>,  <62.310619, 57.428116, 60.477268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.698559, 56.983475, 60.798786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.922791, 57.128101, 60.500786>,  <63.057327, 57.214878, 60.321987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.922791, 57.128101, 60.500786>,  <62.698559, 56.983475, 60.798786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.922791, 57.128101, 60.500786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827985, -0.259987, 0.496838,
		-0.014050, -0.895364, -0.445114,
		0.560575, 0.361567, -0.745000,
		63.090961, 57.236572, 60.277287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.332901, 56.584118, 60.812321>,  <62.698559, 56.983475, 60.798786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.332901, 56.584118, 60.812321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.468727, 56.916740, 60.636497>,  <63.550224, 57.116314, 60.531006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.468727, 56.916740, 60.636497>,  <63.332901, 56.584118, 60.812321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.468727, 56.916740, 60.636497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936040, -0.252885, 0.244700,
		0.092326, -0.494531, -0.864242,
		0.339566, 0.831558, -0.439553,
		63.570599, 57.166206, 60.504631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.846069, 56.368473, 60.373009>,  <63.332901, 56.584118, 60.812321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.846069, 56.368473, 60.373009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.914894, 56.754448, 60.452301>,  <63.956188, 56.986031, 60.499878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.914894, 56.754448, 60.452301>,  <63.846069, 56.368473, 60.373009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.914894, 56.754448, 60.452301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984947, -0.171893, -0.018216,
		0.016497, 0.198383, -0.979986,
		0.172066, 0.964934, 0.198233,
		63.966515, 57.043926, 60.511772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.269447, 56.604080, 59.832794>,  <63.846069, 56.368473, 60.373009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.269447, 56.604080, 59.832794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.313667, 56.798103, 60.179779>,  <64.340202, 56.914516, 60.387970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.313667, 56.798103, 60.179779>,  <64.269447, 56.604080, 59.832794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.313667, 56.798103, 60.179779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991148, -0.118371, -0.060120,
		0.073521, 0.866432, -0.493853,
		0.110548, 0.485061, 0.867465,
		64.346832, 56.943623, 60.440018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.702934, 57.295719, 59.918125>,  <64.269447, 56.604080, 59.832794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.702934, 57.295719, 59.918125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.722282, 57.018631, 60.205956>,  <64.733894, 56.852379, 60.378654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.722282, 57.018631, 60.205956>,  <64.702934, 57.295719, 59.918125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.722282, 57.018631, 60.205956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940575, -0.210845, -0.266201,
		0.336124, 0.689694, 0.641361,
		0.048370, -0.692724, 0.719579,
		64.736794, 56.810814, 60.421829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.222641, 57.429626, 60.374741>,  <64.702934, 57.295719, 59.918125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.222641, 57.429626, 60.374741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.177711, 57.032204, 60.380692>,  <65.150749, 56.793751, 60.384262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.177711, 57.032204, 60.380692>,  <65.222641, 57.429626, 60.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.177711, 57.032204, 60.380692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979407, -0.113232, -0.167155,
		0.167762, -0.004208, 0.985818,
		-0.112330, -0.993560, 0.014875,
		65.144012, 56.734135, 60.385155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.757355, 57.024643, 60.681408>,  <65.222641, 57.429626, 60.374741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.757355, 57.024643, 60.681408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.626335, 56.756031, 60.415550>,  <65.547722, 56.594864, 60.256035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.626335, 56.756031, 60.415550>,  <65.757355, 57.024643, 60.681408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.626335, 56.756031, 60.415550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938273, -0.148421, -0.312434,
		0.111162, -0.725959, 0.678695,
		-0.327547, -0.671532, -0.664648,
		65.528069, 56.554573, 60.216156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.096497, 56.337444, 60.788254>,  <65.757355, 57.024643, 60.681408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.096497, 56.337444, 60.788254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.007904, 56.358822, 60.398773>,  <65.954750, 56.371647, 60.165085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.007904, 56.358822, 60.398773>,  <66.096497, 56.337444, 60.788254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.007904, 56.358822, 60.398773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958436, -0.172232, -0.227455,
		-0.179858, -0.983606, -0.013075,
		-0.221474, 0.053441, -0.973701,
		65.941460, 56.374855, 60.106663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.447121, 55.760998, 60.387325>,  <66.096497, 56.337444, 60.788254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.447121, 55.760998, 60.387325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.371193, 56.081905, 60.160934>,  <66.325638, 56.274448, 60.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.371193, 56.081905, 60.160934>,  <66.447121, 55.760998, 60.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.371193, 56.081905, 60.160934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911219, -0.070690, -0.405811,
		-0.365579, -0.592762, -0.717625,
		-0.189820, 0.802270, -0.565979,
		66.314247, 56.322586, 59.991142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.749878, 55.592766, 59.758385>,  <66.447121, 55.760998, 60.387325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.749878, 55.592766, 59.758385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.735374, 55.986393, 59.828003>,  <66.726677, 56.222569, 59.869774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.735374, 55.986393, 59.828003>,  <66.749878, 55.592766, 59.758385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.735374, 55.986393, 59.828003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967477, 0.078190, -0.240571,
		-0.250348, 0.159668, -0.954899,
		-0.036252, 0.984069, 0.174050,
		66.724503, 56.281612, 59.880219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.180321, 55.966759, 59.303375>,  <66.749878, 55.592766, 59.758385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.180321, 55.966759, 59.303375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.126816, 56.274284, 59.553505>,  <67.094711, 56.458801, 59.703583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.126816, 56.274284, 59.553505>,  <67.180321, 55.966759, 59.303375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.126816, 56.274284, 59.553505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970023, 0.230758, -0.076200,
		-0.202882, 0.596385, -0.776636,
		-0.133770, 0.768814, 0.625324,
		67.086685, 56.504929, 59.741100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.405159, 56.706657, 59.119331>,  <67.180321, 55.966759, 59.303375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.405159, 56.706657, 59.119331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.422852, 56.664131, 59.516670>,  <67.433464, 56.638615, 59.755074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.422852, 56.664131, 59.516670>,  <67.405159, 56.706657, 59.119331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.422852, 56.664131, 59.516670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899762, 0.436331, 0.006640,
		-0.434135, 0.893483, 0.114960,
		0.044228, -0.106319, 0.993348,
		67.436119, 56.632236, 59.814674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.770737, 57.294533, 59.369640>,  <67.405159, 56.706657, 59.119331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.770737, 57.294533, 59.369640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.804855, 57.047318, 59.682243>,  <67.825325, 56.898987, 59.869804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.804855, 57.047318, 59.682243>,  <67.770737, 57.294533, 59.369640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.804855, 57.047318, 59.682243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843152, 0.462688, 0.273886,
		-0.530867, 0.635570, 0.560564,
		0.085292, -0.618038, 0.781508,
		67.830444, 56.861908, 59.916695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.836418, 57.555862, 60.066956>,  <67.770737, 57.294533, 59.369640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.836418, 57.555862, 60.066956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.062439, 57.226700, 60.043129>,  <68.198051, 57.029202, 60.028835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.062439, 57.226700, 60.043129>,  <67.836418, 57.555862, 60.066956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.062439, 57.226700, 60.043129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781555, 0.510719, 0.358244,
		-0.264382, -0.248975, 0.931726,
		0.565044, -0.822908, -0.059563,
		68.231949, 56.979828, 60.025261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.353394, 57.723476, 60.488453>,  <67.836418, 57.555862, 60.066956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.353394, 57.723476, 60.488453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.502655, 57.385681, 60.334785>,  <68.592209, 57.183002, 60.242584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.502655, 57.385681, 60.334785>,  <68.353394, 57.723476, 60.488453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.502655, 57.385681, 60.334785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819821, 0.106287, 0.562670,
		-0.434338, -0.524915, 0.731994,
		0.373155, -0.844492, -0.384172,
		68.614601, 57.132332, 60.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.610809, 57.320080, 61.055954>,  <68.353394, 57.723476, 60.488453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.610809, 57.320080, 61.055954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.788353, 57.263485, 60.702011>,  <68.894875, 57.229530, 60.489643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.788353, 57.263485, 60.702011>,  <68.610809, 57.320080, 61.055954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.788353, 57.263485, 60.702011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880915, 0.249904, 0.401916,
		0.164266, -0.957878, 0.235556,
		0.443853, -0.141484, -0.884860,
		68.921509, 57.221039, 60.436554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.137665, 56.835808, 61.180977>,  <68.610809, 57.320080, 61.055954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.137665, 56.835808, 61.180977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.220154, 57.090656, 60.883911>,  <69.269646, 57.243565, 60.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.220154, 57.090656, 60.883911>,  <69.137665, 56.835808, 61.180977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.220154, 57.090656, 60.883911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933578, 0.099238, 0.344359,
		0.293099, -0.764351, -0.574335,
		0.206216, 0.637117, -0.742668,
		69.282021, 57.281792, 60.661110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.767868, 56.615379, 60.952538>,  <69.137665, 56.835808, 61.180977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.767868, 56.615379, 60.952538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.738106, 57.004181, 60.863388>,  <69.720245, 57.237461, 60.809898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.738106, 57.004181, 60.863388>,  <69.767868, 56.615379, 60.952538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.738106, 57.004181, 60.863388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996016, 0.083449, 0.031438,
		0.049156, -0.219647, -0.974340,
		-0.074403, 0.972004, -0.222874,
		69.715782, 57.295784, 60.796528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.155655, 56.744934, 60.320061>,  <69.767868, 56.615379, 60.952538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.155655, 56.744934, 60.320061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124435, 57.070187, 60.550789>,  <70.105705, 57.265339, 60.689228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124435, 57.070187, 60.550789>,  <70.155655, 56.744934, 60.320061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.124435, 57.070187, 60.550789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996945, 0.065569, 0.042449,
		-0.003305, 0.578375, -0.815764,
		-0.078041, 0.813132, 0.576824,
		70.101021, 57.314125, 60.723835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.589165, 57.196198, 60.069939>,  <70.155655, 56.744934, 60.320061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.589165, 57.196198, 60.069939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545326, 57.288704, 60.456619>,  <70.519028, 57.344208, 60.688625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545326, 57.288704, 60.456619>,  <70.589165, 57.196198, 60.069939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.545326, 57.288704, 60.456619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988564, -0.076002, 0.130248,
		0.103593, 0.969917, -0.220294,
		-0.109587, 0.231267, 0.966699,
		70.512451, 57.358086, 60.746628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.107887, 57.804771, 60.277271>,  <70.589165, 57.196198, 60.069939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.107887, 57.804771, 60.277271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.988022, 57.567070, 60.575821>,  <70.916100, 57.424450, 60.754951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.988022, 57.567070, 60.575821>,  <71.107887, 57.804771, 60.277271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.988022, 57.567070, 60.575821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948580, -0.101968, 0.299663,
		-0.101968, 0.797790, 0.594250,
		-0.299663, -0.594250, 0.746371,
		70.898125, 57.388794, 60.799732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.092194, 58.137184, 60.851547>,  <71.107887, 57.804771, 60.277271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.092194, 58.137184, 60.851547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.160255, 57.745857, 60.804329>,  <71.201096, 57.511059, 60.775997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.160255, 57.745857, 60.804329>,  <71.092194, 58.137184, 60.851547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.160255, 57.745857, 60.804329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984981, 0.165307, 0.049849,
		-0.029255, -0.124752, 0.991757,
		0.170163, -0.978320, -0.118042,
		71.211304, 57.452362, 60.768917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.541031, 57.835796, 61.343510>,  <71.092194, 58.137184, 60.851547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.541031, 57.835796, 61.343510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.575409, 57.651115, 60.990364>,  <71.596039, 57.540306, 60.778477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.575409, 57.651115, 60.990364>,  <71.541031, 57.835796, 61.343510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.575409, 57.651115, 60.990364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987902, 0.154308, 0.015483,
		0.129084, -0.873509, 0.469382,
		0.085954, -0.461704, -0.882860,
		71.601196, 57.512604, 60.725506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.134911, 57.309937, 61.356651>,  <71.541031, 57.835796, 61.343510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.134911, 57.309937, 61.356651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.088173, 57.514473, 61.016090>,  <72.060127, 57.637196, 60.811756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.088173, 57.514473, 61.016090>,  <72.134911, 57.309937, 61.356651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.088173, 57.514473, 61.016090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929383, 0.358528, 0.087783,
		0.350137, -0.781018, -0.517122,
		-0.116842, 0.511340, -0.851398,
		72.053123, 57.667873, 60.760670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.671082, 57.191303, 60.961716>,  <72.134911, 57.309937, 61.356651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.671082, 57.191303, 60.961716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.540833, 57.539482, 60.814049>,  <72.462685, 57.748390, 60.725449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.540833, 57.539482, 60.814049>,  <72.671082, 57.191303, 60.961716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.540833, 57.539482, 60.814049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875429, 0.425072, 0.230084,
		0.357200, -0.248262, -0.900430,
		-0.325626, 0.870448, -0.369171,
		72.443146, 57.800617, 60.703297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.165016, 57.505234, 60.479904>,  <72.671082, 57.191303, 60.961716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.165016, 57.505234, 60.479904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.955246, 57.827732, 60.589409>,  <72.829384, 58.021233, 60.655109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.955246, 57.827732, 60.589409>,  <73.165016, 57.505234, 60.479904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.955246, 57.827732, 60.589409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850630, 0.510260, 0.126742,
		-0.037503, 0.299334, -0.953411,
		-0.524426, 0.806247, 0.273759,
		72.797920, 58.069607, 60.671535>
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
