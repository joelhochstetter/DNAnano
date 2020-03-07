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
	<36.736988, 53.010571, 50.187897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694309, 53.405323, 50.236351>,  <36.668701, 53.642174, 50.265423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694309, 53.405323, 50.236351>,  <36.736988, 53.010571, 50.187897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694309, 53.405323, 50.236351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928440, 0.142492, -0.343068,
		-0.355829, 0.075866, -0.931466,
		-0.106699, 0.986884, 0.121140,
		36.662300, 53.701389, 50.272694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893326, 53.431770, 49.540157>,  <36.736988, 53.010571, 50.187897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893326, 53.431770, 49.540157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989586, 53.640411, 49.867577>,  <37.047344, 53.765594, 50.064030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989586, 53.640411, 49.867577>,  <36.893326, 53.431770, 49.540157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989586, 53.640411, 49.867577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970610, -0.127921, -0.203846,
		-0.001616, 0.843546, -0.537054,
		0.240654, 0.521600, 0.818547,
		37.061783, 53.796890, 50.113140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484142, 53.833675, 49.321571>,  <36.893326, 53.431770, 49.540157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484142, 53.833675, 49.321571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469524, 53.793697, 49.719299>,  <37.460754, 53.769711, 49.957935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469524, 53.793697, 49.719299>,  <37.484142, 53.833675, 49.321571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469524, 53.793697, 49.719299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998878, 0.026345, 0.039362,
		-0.030129, 0.994644, 0.098873,
		-0.036546, -0.099948, 0.994321,
		37.458561, 53.763714, 50.017597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775860, 54.395283, 49.765572>,  <37.484142, 53.833675, 49.321571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775860, 54.395283, 49.765572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812904, 54.006573, 49.852356>,  <37.835133, 53.773346, 49.904427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812904, 54.006573, 49.852356>,  <37.775860, 54.395283, 49.765572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812904, 54.006573, 49.852356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994607, 0.080071, -0.065923,
		0.046689, 0.221901, 0.973951,
		0.092614, -0.971776, 0.216965,
		37.840687, 53.715038, 49.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209026, 54.239231, 50.358181>,  <37.775860, 54.395283, 49.765572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209026, 54.239231, 50.358181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201691, 53.930428, 50.104042>,  <38.197289, 53.745144, 49.951557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201691, 53.930428, 50.104042>,  <38.209026, 54.239231, 50.358181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201691, 53.930428, 50.104042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917391, 0.239686, -0.317719,
		0.397566, -0.588690, 0.703837,
		-0.018338, -0.772007, -0.635349,
		38.196190, 53.698826, 49.913437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512577, 54.648548, 50.847923>,  <38.209026, 54.239231, 50.358181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512577, 54.648548, 50.847923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609428, 54.876957, 51.161690>,  <38.667538, 55.014004, 51.349949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609428, 54.876957, 51.161690>,  <38.512577, 54.648548, 50.847923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609428, 54.876957, 51.161690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947756, -0.312252, -0.065241,
		0.207680, 0.759229, -0.616798,
		0.242129, 0.571025, 0.784413,
		38.682068, 55.048264, 51.397015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056587, 55.238407, 50.675354>,  <38.512577, 54.648548, 50.847923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056587, 55.238407, 50.675354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046738, 55.122658, 51.058113>,  <39.040829, 55.053207, 51.287769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046738, 55.122658, 51.058113>,  <39.056587, 55.238407, 50.675354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046738, 55.122658, 51.058113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942462, -0.325950, -0.074313,
		0.333406, 0.900012, 0.280746,
		-0.024627, -0.289369, 0.956901,
		39.039349, 55.035847, 51.345184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715935, 55.500813, 50.969719>,  <39.056587, 55.238407, 50.675354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715935, 55.500813, 50.969719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565323, 55.208721, 51.197750>,  <39.474957, 55.033466, 51.334568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565323, 55.208721, 51.197750>,  <39.715935, 55.500813, 50.969719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565323, 55.208721, 51.197750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926107, -0.312289, 0.211662,
		0.023466, 0.607649, 0.793859,
		-0.376530, -0.730232, 0.570077,
		39.452366, 54.989651, 51.368774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973713, 55.603275, 51.655838>,  <39.715935, 55.500813, 50.969719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973713, 55.603275, 51.655838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906597, 55.227089, 51.537605>,  <39.866329, 55.001377, 51.466667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906597, 55.227089, 51.537605>,  <39.973713, 55.603275, 51.655838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906597, 55.227089, 51.537605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963238, -0.220213, 0.153882,
		-0.209812, -0.258894, 0.942843,
		-0.167787, -0.940468, -0.295579,
		39.856262, 54.944950, 51.448933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236507, 55.138004, 52.161171>,  <39.973713, 55.603275, 51.655838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236507, 55.138004, 52.161171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239819, 54.965454, 51.800316>,  <40.241806, 54.861923, 51.583805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239819, 54.965454, 51.800316>,  <40.236507, 55.138004, 52.161171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239819, 54.965454, 51.800316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974165, -0.200135, 0.104640,
		-0.225688, -0.879693, 0.418575,
		0.008279, -0.431377, -0.902134,
		40.242302, 54.836040, 51.529675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415295, 54.396015, 52.232334>,  <40.236507, 55.138004, 52.161171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415295, 54.396015, 52.232334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548512, 54.563248, 51.894272>,  <40.628441, 54.663589, 51.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548512, 54.563248, 51.894272>,  <40.415295, 54.396015, 52.232334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548512, 54.563248, 51.894272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907573, -0.385224, 0.167075,
		-0.255722, -0.822683, -0.507738,
		0.333042, 0.418085, -0.845156,
		40.648426, 54.688671, 51.640724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606293, 53.849136, 51.784222>,  <40.415295, 54.396015, 52.232334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606293, 53.849136, 51.784222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825905, 54.170761, 51.692970>,  <40.957672, 54.363735, 51.638218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825905, 54.170761, 51.692970>,  <40.606293, 53.849136, 51.784222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825905, 54.170761, 51.692970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832397, -0.550644, 0.062498,
		-0.075367, -0.224210, -0.971622,
		0.549031, 0.804065, -0.228132,
		40.990616, 54.411980, 51.624531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075134, 53.629230, 51.255062>,  <40.606293, 53.849136, 51.784222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075134, 53.629230, 51.255062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226299, 53.943760, 51.450562>,  <41.316998, 54.132477, 51.567860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226299, 53.943760, 51.450562>,  <41.075134, 53.629230, 51.255062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226299, 53.943760, 51.450562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822023, -0.527860, 0.213640,
		0.425981, 0.321025, -0.845863,
		0.377913, 0.786325, 0.488748,
		41.339672, 54.179657, 51.597187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830902, 53.626953, 50.967907>,  <41.075134, 53.629230, 51.255062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830902, 53.626953, 50.967907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826862, 53.825188, 51.315308>,  <41.824440, 53.944126, 51.523746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826862, 53.825188, 51.315308>,  <41.830902, 53.626953, 50.967907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826862, 53.825188, 51.315308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791391, -0.526945, 0.309886,
		0.611227, 0.690453, -0.386880,
		-0.010098, 0.495584, 0.868501,
		41.823833, 53.973862, 51.575859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449192, 53.984386, 51.068256>,  <41.830902, 53.626953, 50.967907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449192, 53.984386, 51.068256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304150, 53.837032, 51.410675>,  <42.217125, 53.748619, 51.616127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304150, 53.837032, 51.410675>,  <42.449192, 53.984386, 51.068256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304150, 53.837032, 51.410675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829706, -0.545902, 0.116530,
		0.424387, 0.752518, 0.503600,
		-0.362606, -0.368386, 0.856042,
		42.195366, 53.726517, 51.667488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971455, 53.988068, 51.557549>,  <42.449192, 53.984386, 51.068256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971455, 53.988068, 51.557549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705040, 53.696888, 51.622650>,  <42.545193, 53.522182, 51.661713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705040, 53.696888, 51.622650>,  <42.971455, 53.988068, 51.557549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705040, 53.696888, 51.622650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727450, -0.682149, -0.074096,
		0.164959, 0.069044, 0.983881,
		-0.666037, -0.727947, 0.162753,
		42.505230, 53.478504, 51.671474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348957, 53.325630, 51.712341>,  <42.971455, 53.988068, 51.557549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348957, 53.325630, 51.712341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976658, 53.199825, 51.637733>,  <42.753277, 53.124340, 51.592968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976658, 53.199825, 51.637733>,  <43.348957, 53.325630, 51.712341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976658, 53.199825, 51.637733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337528, -0.935171, -0.107382,
		-0.140650, -0.162900, 0.976566,
		-0.930748, -0.314515, -0.186515,
		42.697433, 53.105473, 51.581779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111687, 52.763924, 52.198883>,  <43.348957, 53.325630, 51.712341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111687, 52.763924, 52.198883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917343, 52.732727, 51.850662>,  <42.800735, 52.714008, 51.641731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917343, 52.732727, 51.850662>,  <43.111687, 52.763924, 52.198883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917343, 52.732727, 51.850662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240116, -0.969599, -0.047147,
		-0.840406, -0.231940, 0.489818,
		-0.485862, -0.077990, -0.870549,
		42.771584, 52.709332, 51.589497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829636, 52.810516, 52.180729>,  <43.111687, 52.763924, 52.198883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829636, 52.810516, 52.180729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131973, 52.688190, 52.412308>,  <44.313377, 52.614796, 52.551254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131973, 52.688190, 52.412308>,  <43.829636, 52.810516, 52.180729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131973, 52.688190, 52.412308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503723, -0.293283, -0.812557,
		0.418287, 0.905793, -0.067629,
		0.755843, -0.305816, 0.578946,
		44.358727, 52.596447, 52.585991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358360, 53.191673, 51.934444>,  <43.829636, 52.810516, 52.180729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358360, 53.191673, 51.934444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426674, 52.834415, 52.100876>,  <44.467663, 52.620060, 52.200737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426674, 52.834415, 52.100876>,  <44.358360, 53.191673, 51.934444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426674, 52.834415, 52.100876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398588, -0.323565, -0.858157,
		0.901088, 0.312406, 0.300737,
		0.170785, -0.893145, 0.416082,
		44.477909, 52.566471, 52.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063705, 53.028454, 52.049786>,  <44.358360, 53.191673, 51.934444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063705, 53.028454, 52.049786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859489, 52.696327, 51.960407>,  <44.736961, 52.497051, 51.906780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859489, 52.696327, 51.960407>,  <45.063705, 53.028454, 52.049786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859489, 52.696327, 51.960407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496195, -0.072267, -0.865198,
		0.702240, -0.552588, 0.448893,
		-0.510538, -0.830316, -0.223442,
		44.706329, 52.447231, 51.893375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548710, 52.621754, 51.733814>,  <45.063705, 53.028454, 52.049786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548710, 52.621754, 51.733814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180767, 52.499546, 51.635406>,  <44.960003, 52.426220, 51.576363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180767, 52.499546, 51.635406>,  <45.548710, 52.621754, 51.733814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180767, 52.499546, 51.635406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309443, -0.179762, -0.933772,
		0.241062, -0.935063, 0.259896,
		-0.919856, -0.305520, -0.246015,
		44.904812, 52.407890, 51.561604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474365, 53.014332, 51.166298>,  <45.548710, 52.621754, 51.733814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474365, 53.014332, 51.166298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134941, 53.163464, 51.016125>,  <44.931286, 53.252945, 50.926022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134941, 53.163464, 51.016125>,  <45.474365, 53.014332, 51.166298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134941, 53.163464, 51.016125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319263, 0.926622, 0.198603,
		0.421926, 0.048665, -0.905323,
		-0.848557, 0.372832, -0.375429,
		44.880375, 53.275314, 50.903496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719524, 53.585506, 50.693325>,  <45.474365, 53.014332, 51.166298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719524, 53.585506, 50.693325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341187, 53.609268, 50.820984>,  <45.114185, 53.623528, 50.897579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341187, 53.609268, 50.820984>,  <45.719524, 53.585506, 50.693325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341187, 53.609268, 50.820984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193267, 0.892948, 0.406561,
		-0.260827, 0.446223, -0.856069,
		-0.945842, 0.059408, 0.319146,
		45.057434, 53.627090, 50.916729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371483, 54.322048, 50.470379>,  <45.719524, 53.585506, 50.693325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371483, 54.322048, 50.470379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252312, 54.140011, 50.806030>,  <45.180809, 54.030788, 51.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252312, 54.140011, 50.806030>,  <45.371483, 54.322048, 50.470379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252312, 54.140011, 50.806030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007782, 0.877858, 0.478857,
		-0.954556, 0.149196, -0.257998,
		-0.297929, -0.455089, 0.839126,
		45.162933, 54.003483, 51.057770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969425, 54.789593, 50.825317>,  <45.371483, 54.322048, 50.470379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969425, 54.789593, 50.825317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062176, 54.508072, 51.093910>,  <45.117825, 54.339157, 51.255066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062176, 54.508072, 51.093910>,  <44.969425, 54.789593, 50.825317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062176, 54.508072, 51.093910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182286, 0.709507, 0.680714,
		-0.955514, -0.035438, 0.292810,
		0.231874, -0.703806, 0.671484,
		45.131737, 54.296928, 51.295357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774822, 54.987190, 51.483753>,  <44.969425, 54.789593, 50.825317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774822, 54.987190, 51.483753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031376, 54.697014, 51.583649>,  <45.185307, 54.522907, 51.643585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031376, 54.697014, 51.583649>,  <44.774822, 54.987190, 51.483753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031376, 54.697014, 51.583649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288790, 0.529846, 0.797411,
		-0.710796, -0.439322, 0.549332,
		0.641381, -0.725438, 0.249740,
		45.223789, 54.479382, 51.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730709, 54.627998, 52.184502>,  <44.774822, 54.987190, 51.483753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730709, 54.627998, 52.184502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115719, 54.610619, 52.077419>,  <45.346725, 54.600189, 52.013168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115719, 54.610619, 52.077419>,  <44.730709, 54.627998, 52.184502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115719, 54.610619, 52.077419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238546, 0.605271, 0.759436,
		0.129035, -0.794833, 0.592952,
		0.962521, -0.043453, -0.267706,
		45.404476, 54.597584, 51.997108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124863, 54.905300, 52.768120>,  <44.730709, 54.627998, 52.184502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124863, 54.905300, 52.768120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459602, 54.873451, 52.551476>,  <45.660446, 54.854343, 52.421490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.459602, 54.873451, 52.551476>,  <45.124863, 54.905300, 52.768120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459602, 54.873451, 52.551476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449070, 0.665668, 0.596006,
		0.313078, -0.741989, 0.592820,
		0.836850, -0.079621, -0.541610,
		45.710659, 54.849564, 52.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723660, 54.494057, 53.165855>,  <45.124863, 54.905300, 52.768120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723660, 54.494057, 53.165855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881638, 54.758690, 52.910881>,  <45.976425, 54.917469, 52.757896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881638, 54.758690, 52.910881>,  <45.723660, 54.494057, 53.165855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881638, 54.758690, 52.910881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290596, 0.568255, 0.769831,
		0.871535, -0.489276, 0.032174,
		0.394943, 0.661586, -0.637436,
		46.000122, 54.957165, 52.719650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434700, 54.618809, 53.400593>,  <45.723660, 54.494057, 53.165855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434700, 54.618809, 53.400593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254841, 54.941792, 53.247841>,  <46.146923, 55.135582, 53.156189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254841, 54.941792, 53.247841>,  <46.434700, 54.618809, 53.400593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254841, 54.941792, 53.247841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405025, 0.565380, 0.718541,
		0.796096, 0.168421, -0.581262,
		-0.449651, 0.807453, -0.381882,
		46.119946, 55.184029, 53.133278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977089, 54.349556, 53.830006>,  <46.434700, 54.618809, 53.400593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977089, 54.349556, 53.830006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664803, 54.137207, 53.698154>,  <46.477432, 54.009796, 53.619045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664803, 54.137207, 53.698154>,  <46.977089, 54.349556, 53.830006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664803, 54.137207, 53.698154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158269, 0.342313, -0.926160,
		0.604512, -0.775238, -0.183228,
		-0.780716, -0.530875, -0.329628,
		46.430588, 53.977943, 53.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781403, 54.550522, 53.956715>,  <46.977089, 54.349556, 53.830006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781403, 54.550522, 53.956715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897408, 54.910107, 54.088020>,  <47.967010, 55.125858, 54.166805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897408, 54.910107, 54.088020>,  <47.781403, 54.550522, 53.956715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.897408, 54.910107, 54.088020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956988, -0.269429, -0.107620,
		-0.008303, 0.345355, -0.938436,
		0.290009, 0.898965, 0.328263,
		47.984409, 55.179794, 54.186501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.350281, 54.665783, 53.593372>,  <47.781403, 54.550522, 53.956715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.350281, 54.665783, 53.593372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.375111, 54.941738, 53.881874>,  <48.390007, 55.107311, 54.054974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.375111, 54.941738, 53.881874>,  <48.350281, 54.665783, 53.593372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.375111, 54.941738, 53.881874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989105, -0.139170, 0.047995,
		0.133488, 0.710416, -0.691006,
		0.062071, 0.689884, 0.721254,
		48.393730, 55.148705, 54.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.901432, 55.042709, 53.491100>,  <48.350281, 54.665783, 53.593372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.901432, 55.042709, 53.491100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856937, 55.035763, 53.888557>,  <48.830242, 55.031593, 54.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.856937, 55.035763, 53.888557>,  <48.901432, 55.042709, 53.491100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.856937, 55.035763, 53.888557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979073, -0.173371, 0.106576,
		0.170417, 0.984703, 0.036290,
		-0.111237, -0.017369, 0.993642,
		48.823566, 55.030552, 54.186649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.331486, 55.581154, 53.756493>,  <48.901432, 55.042709, 53.491100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.331486, 55.581154, 53.756493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.327522, 55.279938, 54.019653>,  <49.325146, 55.099209, 54.177551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.327522, 55.279938, 54.019653>,  <49.331486, 55.581154, 53.756493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.327522, 55.279938, 54.019653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996804, -0.059593, -0.053203,
		0.079270, 0.655274, 0.751221,
		-0.009905, -0.753037, 0.657903,
		49.324551, 55.054028, 54.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.802937, 55.803471, 54.394089>,  <49.331486, 55.581154, 53.756493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.802937, 55.803471, 54.394089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.759483, 55.414169, 54.313126>,  <49.733410, 55.180588, 54.264549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.759483, 55.414169, 54.313126>,  <49.802937, 55.803471, 54.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.759483, 55.414169, 54.313126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994069, -0.107375, -0.017232,
		-0.004962, -0.203079, 0.979150,
		-0.108636, -0.973257, -0.202408,
		49.726894, 55.122192, 54.252403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.205845, 55.408634, 54.909554>,  <49.802937, 55.803471, 54.394089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.205845, 55.408634, 54.909554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.189869, 55.233692, 54.550194>,  <50.180283, 55.128727, 54.334576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.189869, 55.233692, 54.550194>,  <50.205845, 55.408634, 54.909554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.189869, 55.233692, 54.550194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996451, 0.049240, -0.068265,
		0.074093, -0.897940, 0.433836,
		-0.039936, -0.437354, -0.898402,
		50.177887, 55.102486, 54.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.700848, 54.798187, 54.901829>,  <50.205845, 55.408634, 54.909554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.700848, 54.798187, 54.901829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.618652, 54.987106, 54.558968>,  <50.569336, 55.100460, 54.353252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.618652, 54.987106, 54.558968>,  <50.700848, 54.798187, 54.901829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.618652, 54.987106, 54.558968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960814, 0.263857, -0.084946,
		0.186045, -0.841018, -0.508012,
		-0.205484, 0.472302, -0.857151,
		50.557007, 55.128796, 54.301823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.939819, 54.499546, 54.215714>,  <50.700848, 54.798187, 54.901829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.939819, 54.499546, 54.215714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.916370, 54.896149, 54.262161>,  <50.902302, 55.134109, 54.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.916370, 54.896149, 54.262161>,  <50.939819, 54.499546, 54.215714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.916370, 54.896149, 54.262161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987325, 0.074771, -0.139994,
		-0.147487, 0.106446, -0.983319,
		-0.058622, 0.991503, 0.116124,
		50.898785, 55.193600, 54.296997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.122623, 54.976875, 53.666309>,  <50.939819, 54.499546, 54.215714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.122623, 54.976875, 53.666309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.197720, 55.137466, 54.024876>,  <51.242779, 55.233822, 54.240017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.197720, 55.137466, 54.024876>,  <51.122623, 54.976875, 53.666309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.197720, 55.137466, 54.024876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943027, 0.181555, -0.278816,
		-0.274688, 0.897692, -0.344522,
		0.187741, 0.401481, 0.896419,
		51.254044, 55.257912, 54.293800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.401730, 55.640930, 53.637711>,  <51.122623, 54.976875, 53.666309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.401730, 55.640930, 53.637711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.532444, 55.487759, 53.983330>,  <51.610870, 55.395855, 54.190701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.532444, 55.487759, 53.983330>,  <51.401730, 55.640930, 53.637711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.532444, 55.487759, 53.983330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945079, 0.126406, -0.301408,
		0.006197, 0.915089, 0.403203,
		0.326783, -0.382927, 0.864049,
		51.630478, 55.372879, 54.242546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.991562, 56.097294, 53.743492>,  <51.401730, 55.640930, 53.637711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.991562, 56.097294, 53.743492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.016117, 55.762421, 53.960876>,  <52.030849, 55.561497, 54.091309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.016117, 55.762421, 53.960876>,  <51.991562, 56.097294, 53.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.016117, 55.762421, 53.960876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998104, 0.053983, -0.029579,
		-0.004575, 0.544248, 0.838912,
		0.061385, -0.837186, 0.543463,
		52.034534, 55.511265, 54.123917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.575733, 56.147621, 53.978821>,  <51.991562, 56.097294, 53.743492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.575733, 56.147621, 53.978821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.500404, 55.765831, 54.071346>,  <52.455208, 55.536758, 54.126862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.500404, 55.765831, 54.071346>,  <52.575733, 56.147621, 53.978821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.500404, 55.765831, 54.071346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976655, -0.157229, 0.146373,
		-0.103340, 0.253482, 0.961804,
		-0.188326, -0.954477, 0.231316,
		52.443905, 55.479488, 54.140739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.059109, 55.917591, 54.442211>,  <52.575733, 56.147621, 53.978821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.059109, 55.917591, 54.442211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.932369, 55.563118, 54.306984>,  <52.856323, 55.350433, 54.225849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.932369, 55.563118, 54.306984>,  <53.059109, 55.917591, 54.442211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.932369, 55.563118, 54.306984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914570, -0.379906, 0.138683,
		-0.251331, -0.265241, 0.930849,
		-0.316851, -0.886182, -0.338064,
		52.837315, 55.297264, 54.205566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.722511, 55.751324, 54.724663>,  <53.059109, 55.917591, 54.442211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.722511, 55.751324, 54.724663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.790661, 55.780609, 54.331600>,  <53.831551, 55.798180, 54.095764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.790661, 55.780609, 54.331600>,  <53.722511, 55.751324, 54.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.790661, 55.780609, 54.331600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886387, 0.424249, 0.185289,
		0.430455, -0.902582, 0.007389,
		0.170373, 0.073209, -0.982656,
		53.841774, 55.802570, 54.036804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.403263, 55.449493, 54.395493>,  <53.722511, 55.751324, 54.724663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.403263, 55.449493, 54.395493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.280640, 55.781906, 54.209846>,  <54.207066, 55.981354, 54.098457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.280640, 55.781906, 54.209846>,  <54.403263, 55.449493, 54.395493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.280640, 55.781906, 54.209846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918724, 0.385850, 0.084057,
		0.248934, -0.400627, -0.881776,
		-0.306558, 0.831034, -0.464117,
		54.188671, 56.031216, 54.070610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.916920, 55.807724, 53.888039>,  <54.403263, 55.449493, 54.395493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.916920, 55.807724, 53.888039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.684944, 56.081837, 54.064251>,  <54.545761, 56.246304, 54.169979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.684944, 56.081837, 54.064251>,  <54.916920, 55.807724, 53.888039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.684944, 56.081837, 54.064251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803442, 0.570552, 0.170154,
		-0.134742, 0.452619, -0.881465,
		-0.579936, 0.685279, 0.440530,
		54.510963, 56.287422, 54.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.013424, 56.443974, 53.670345>,  <54.916920, 55.807724, 53.888039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.013424, 56.443974, 53.670345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.915916, 56.532349, 54.048080>,  <54.857410, 56.585373, 54.274719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.915916, 56.532349, 54.048080>,  <55.013424, 56.443974, 53.670345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.915916, 56.532349, 54.048080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867821, 0.484390, 0.110690,
		-0.432971, 0.846495, -0.309809,
		-0.243767, 0.220933, 0.944334,
		54.842785, 56.598629, 54.331379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.215961, 57.109962, 53.789215>,  <55.013424, 56.443974, 53.670345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.215961, 57.109962, 53.789215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.184517, 56.999840, 54.172470>,  <55.165649, 56.933765, 54.402424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.184517, 56.999840, 54.172470>,  <55.215961, 57.109962, 53.789215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.184517, 56.999840, 54.172470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765787, 0.598678, 0.234850,
		-0.638271, 0.752190, 0.163766,
		-0.078609, -0.275308, 0.958137,
		55.160934, 56.917248, 54.459911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.712936, 57.510090, 53.913960>,  <55.215961, 57.109962, 53.789215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.712936, 57.510090, 53.913960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.633095, 57.283585, 54.233837>,  <55.585190, 57.147682, 54.425762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.633095, 57.283585, 54.233837>,  <55.712936, 57.510090, 53.913960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.633095, 57.283585, 54.233837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766633, 0.418034, 0.487362,
		-0.610273, 0.710348, 0.350676,
		-0.199602, -0.566263, 0.799691,
		55.573215, 57.113705, 54.473743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.489601, 57.832561, 54.549728>,  <55.712936, 57.510090, 53.913960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.489601, 57.832561, 54.549728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.698578, 57.515167, 54.674591>,  <55.823963, 57.324730, 54.749508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.698578, 57.515167, 54.674591>,  <55.489601, 57.832561, 54.549728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.698578, 57.515167, 54.674591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610067, 0.603610, 0.513297,
		-0.595712, -0.077732, 0.799428,
		0.522442, -0.793482, 0.312156,
		55.855312, 57.277122, 54.768238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.656494, 57.934029, 55.197411>,  <55.489601, 57.832561, 54.549728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.656494, 57.934029, 55.197411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.931419, 57.691349, 55.037651>,  <56.096375, 57.545742, 54.941795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.931419, 57.691349, 55.037651>,  <55.656494, 57.934029, 55.197411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.931419, 57.691349, 55.037651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716408, 0.656941, 0.234923,
		0.119854, -0.447597, 0.886167,
		0.687310, -0.606700, -0.399399,
		56.137611, 57.509338, 54.917831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.519459, 57.600582, 55.861881>,  <55.656494, 57.934029, 55.197411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.519459, 57.600582, 55.861881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.475327, 57.205856, 55.814514>,  <55.448849, 56.969021, 55.786095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.475327, 57.205856, 55.814514>,  <55.519459, 57.600582, 55.861881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.475327, 57.205856, 55.814514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450129, -0.155837, 0.879260,
		-0.886122, 0.043702, 0.461387,
		-0.110327, -0.986816, -0.118419,
		55.442230, 56.909813, 55.778988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.326721, 57.286278, 56.566505>,  <55.519459, 57.600582, 55.861881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.326721, 57.286278, 56.566505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.465721, 56.964516, 56.373764>,  <55.549122, 56.771458, 56.258121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.465721, 56.964516, 56.373764>,  <55.326721, 57.286278, 56.566505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.465721, 56.964516, 56.373764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597354, -0.206195, 0.775017,
		-0.722782, -0.557153, 0.408861,
		0.347498, -0.804403, -0.481852,
		55.569969, 56.723194, 56.229210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.248402, 56.682903, 57.007416>,  <55.326721, 57.286278, 56.566505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.248402, 56.682903, 57.007416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.539391, 56.609016, 56.743095>,  <55.713985, 56.564686, 56.584503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.539391, 56.609016, 56.743095>,  <55.248402, 56.682903, 57.007416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.539391, 56.609016, 56.743095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609832, -0.267317, 0.746087,
		-0.314458, -0.945739, -0.081821,
		0.727476, -0.184716, -0.660802,
		55.757633, 56.553600, 56.544853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.573483, 56.087326, 57.218765>,  <55.248402, 56.682903, 57.007416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.573483, 56.087326, 57.218765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.824478, 56.318237, 57.009766>,  <55.975075, 56.456783, 56.884365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.824478, 56.318237, 57.009766>,  <55.573483, 56.087326, 57.218765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.824478, 56.318237, 57.009766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677168, -0.073379, 0.732160,
		0.384318, -0.813245, -0.436958,
		0.627489, 0.577277, -0.522503,
		56.012726, 56.491421, 56.853016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.083942, 55.954590, 57.675354>,  <55.573483, 56.087326, 57.218765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.083942, 55.954590, 57.675354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.218765, 56.256252, 57.449913>,  <56.299660, 56.437248, 57.314648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.218765, 56.256252, 57.449913>,  <56.083942, 55.954590, 57.675354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.218765, 56.256252, 57.449913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674829, 0.223908, 0.703185,
		0.656505, -0.617348, -0.433455,
		0.337056, 0.754153, -0.563601,
		56.319881, 56.482498, 57.280834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.866970, 56.023712, 57.745377>,  <56.083942, 55.954590, 57.675354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.866970, 56.023712, 57.745377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.673004, 56.367474, 57.680519>,  <56.556625, 56.573730, 57.641605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.673004, 56.367474, 57.680519>,  <56.866970, 56.023712, 57.745377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.673004, 56.367474, 57.680519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496837, 0.423277, 0.757621,
		0.719730, 0.286823, -0.632235,
		-0.484914, 0.859400, -0.162141,
		56.527531, 56.625294, 57.631878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.323360, 56.509136, 57.517448>,  <56.866970, 56.023712, 57.745377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.323360, 56.509136, 57.517448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.019608, 56.695374, 57.699242>,  <56.837357, 56.807117, 57.808319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.019608, 56.695374, 57.699242>,  <57.323360, 56.509136, 57.517448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.019608, 56.695374, 57.699242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649234, 0.496316, 0.576338,
		0.042774, 0.732727, -0.679177,
		-0.759385, 0.465597, 0.454482,
		56.791794, 56.835052, 57.835587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.347309, 57.225376, 57.516533>,  <57.323360, 56.509136, 57.517448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.347309, 57.225376, 57.516533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.166809, 57.092445, 57.847816>,  <57.058510, 57.012688, 58.046585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.166809, 57.092445, 57.847816>,  <57.347309, 57.225376, 57.516533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.166809, 57.092445, 57.847816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710350, 0.427990, 0.558772,
		-0.540163, 0.840464, 0.042941,
		-0.451250, -0.332331, 0.828209,
		57.031433, 56.992744, 58.096279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.190636, 57.718197, 58.063946>,  <57.347309, 57.225376, 57.516533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.190636, 57.718197, 58.063946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.236046, 57.380184, 58.272957>,  <57.263290, 57.177376, 58.398361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.236046, 57.380184, 58.272957>,  <57.190636, 57.718197, 58.063946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.236046, 57.380184, 58.272957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729566, 0.427905, 0.533509,
		-0.674423, 0.320653, 0.665083,
		0.113521, -0.845032, 0.522526,
		57.270103, 57.126675, 58.429714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.021118, 57.713238, 58.846661>,  <57.190636, 57.718197, 58.063946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.021118, 57.713238, 58.846661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.349556, 57.546150, 58.691063>,  <57.546619, 57.445896, 58.597706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.349556, 57.546150, 58.691063>,  <57.021118, 57.713238, 58.846661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.349556, 57.546150, 58.691063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566032, 0.683709, 0.460598,
		0.073556, -0.598377, 0.797831,
		0.821096, -0.417718, -0.388991,
		57.595886, 57.420834, 58.574364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.542233, 57.851662, 59.453133>,  <57.021118, 57.713238, 58.846661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.542233, 57.851662, 59.453133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.681168, 57.789570, 59.083214>,  <57.764530, 57.752316, 58.861263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.681168, 57.789570, 59.083214>,  <57.542233, 57.851662, 59.453133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.681168, 57.789570, 59.083214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640275, 0.759798, 0.112940,
		0.685130, -0.631355, 0.363300,
		0.347339, -0.155233, -0.924801,
		57.785370, 57.743000, 58.805775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.301327, 57.934746, 59.410820>,  <57.542233, 57.851662, 59.453133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.301327, 57.934746, 59.410820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.127853, 58.011185, 59.058594>,  <58.023769, 58.057049, 58.847256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.127853, 58.011185, 59.058594>,  <58.301327, 57.934746, 59.410820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.127853, 58.011185, 59.058594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513678, 0.855335, -0.067362,
		0.740309, -0.481543, -0.469104,
		-0.433679, 0.191100, -0.880570,
		57.997749, 58.068516, 58.794422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.801910, 58.277275, 59.108871>,  <58.301327, 57.934746, 59.410820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.801910, 58.277275, 59.108871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.454811, 58.364479, 58.930214>,  <58.246552, 58.416801, 58.823017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.454811, 58.364479, 58.930214>,  <58.801910, 58.277275, 59.108871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.454811, 58.364479, 58.930214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385461, 0.862501, -0.327891,
		0.313750, -0.456690, -0.832464,
		-0.867745, 0.218006, -0.446646,
		58.194489, 58.429882, 58.796219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.059822, 58.027672, 58.350933>,  <58.801910, 58.277275, 59.108871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.059822, 58.027672, 58.350933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.294754, 58.345909, 58.410370>,  <59.435715, 58.536850, 58.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.294754, 58.345909, 58.410370>,  <59.059822, 58.027672, 58.350933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.294754, 58.345909, 58.410370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147134, 0.285490, -0.947020,
		-0.795860, 0.534352, 0.284735,
		0.587332, 0.795590, 0.148589,
		59.470955, 58.584587, 58.454945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.561626, 57.926624, 59.046383>,  <59.059822, 58.027672, 58.350933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.561626, 57.926624, 59.046383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.862823, 57.702904, 59.185051>,  <60.043541, 57.568672, 59.268250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.862823, 57.702904, 59.185051>,  <59.561626, 57.926624, 59.046383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.862823, 57.702904, 59.185051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385967, 0.051279, 0.921086,
		-0.532945, -0.827374, -0.177261,
		0.752993, -0.559305, 0.346668,
		60.088722, 57.535110, 59.289051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.823841, 58.388615, 59.656406>,  <59.561626, 57.926624, 59.046383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.823841, 58.388615, 59.656406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.656418, 58.444157, 59.297401>,  <59.555965, 58.477482, 59.081997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.656418, 58.444157, 59.297401>,  <59.823841, 58.388615, 59.656406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.656418, 58.444157, 59.297401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147419, 0.964750, 0.218003,
		0.896146, 0.223557, -0.383334,
		-0.418558, 0.138852, -0.897513,
		59.530849, 58.485813, 59.028149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.030186, 59.040703, 59.535828>,  <59.823841, 58.388615, 59.656406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.030186, 59.040703, 59.535828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.759010, 58.985695, 59.246971>,  <59.596306, 58.952690, 59.073658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.759010, 58.985695, 59.246971>,  <60.030186, 59.040703, 59.535828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.759010, 58.985695, 59.246971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232269, 0.972094, 0.032925,
		0.697464, 0.190053, -0.690958,
		-0.677934, -0.137524, -0.722145,
		59.555630, 58.944439, 59.030327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.854908, 59.732166, 59.469151>,  <60.030186, 59.040703, 59.535828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.854908, 59.732166, 59.469151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.645081, 59.535110, 59.191406>,  <59.519184, 59.416878, 59.024761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.645081, 59.535110, 59.191406>,  <59.854908, 59.732166, 59.469151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.645081, 59.535110, 59.191406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427181, 0.857787, -0.285863,
		0.736438, 0.146661, -0.660416,
		-0.524571, -0.492638, -0.694358,
		59.487709, 59.387318, 58.983097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.012184, 60.051914, 58.838657>,  <59.854908, 59.732166, 59.469151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.012184, 60.051914, 58.838657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.653496, 59.874992, 58.832230>,  <59.438282, 59.768841, 58.828373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.653496, 59.874992, 58.832230>,  <60.012184, 60.051914, 58.838657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.653496, 59.874992, 58.832230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403112, 0.831172, -0.382953,
		0.182737, -0.336926, -0.923628,
		-0.896721, -0.442305, -0.016067,
		59.384480, 59.742302, 58.827408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.642582, 60.466404, 58.850670>,  <60.012184, 60.051914, 58.838657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.642582, 60.466404, 58.850670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.584579, 60.209702, 59.151901>,  <60.549778, 60.055679, 59.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.584579, 60.209702, 59.151901>,  <60.642582, 60.466404, 58.850670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.584579, 60.209702, 59.151901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547927, -0.685843, -0.478952,
		0.823862, 0.343182, 0.451084,
		-0.145004, -0.641752, 0.753079,
		60.541077, 60.017178, 59.377827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.084229, 60.032253, 58.629990>,  <60.642582, 60.466404, 58.850670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.084229, 60.032253, 58.629990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.961044, 59.841156, 58.959091>,  <60.887135, 59.726498, 59.156551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.961044, 59.841156, 58.959091>,  <61.084229, 60.032253, 58.629990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.961044, 59.841156, 58.959091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556712, -0.791761, -0.251368,
		0.771513, 0.380625, 0.509796,
		-0.307960, -0.477744, 0.822752,
		60.868656, 59.697834, 59.205917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.674637, 59.807747, 59.030293>,  <61.084229, 60.032253, 58.629990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.674637, 59.807747, 59.030293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.363190, 59.563026, 59.086082>,  <61.176323, 59.416195, 59.119556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.363190, 59.563026, 59.086082>,  <61.674637, 59.807747, 59.030293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.363190, 59.563026, 59.086082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547835, -0.771152, -0.324346,
		0.305994, -0.176131, 0.935599,
		-0.778617, -0.611802, 0.139478,
		61.129604, 59.379486, 59.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.808495, 59.159939, 59.432064>,  <61.674637, 59.807747, 59.030293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.808495, 59.159939, 59.432064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.514740, 59.152092, 59.160683>,  <61.338490, 59.147385, 58.997856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.514740, 59.152092, 59.160683>,  <61.808495, 59.159939, 59.432064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.514740, 59.152092, 59.160683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487222, -0.711158, -0.506823,
		-0.472540, -0.702759, 0.531823,
		-0.734384, -0.019622, -0.678450,
		61.294426, 59.146206, 58.957146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.580509, 59.136024, 59.513206>,  <61.808495, 59.159939, 59.432064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.580509, 59.136024, 59.513206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.596581, 58.782700, 59.326385>,  <62.606224, 58.570705, 59.214291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.596581, 58.782700, 59.326385>,  <62.580509, 59.136024, 59.513206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.596581, 58.782700, 59.326385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994701, 0.079631, -0.065028,
		0.094632, -0.461969, 0.881833,
		0.040180, -0.883314, -0.467056,
		62.608635, 58.517704, 59.186268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.102886, 58.675991, 59.792435>,  <62.580509, 59.136024, 59.513206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.102886, 58.675991, 59.792435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.076370, 58.584068, 59.404045>,  <63.060459, 58.528915, 59.171009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.076370, 58.584068, 59.404045>,  <63.102886, 58.675991, 59.792435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.076370, 58.584068, 59.404045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997800, -0.016252, -0.064278,
		-0.001009, -0.973102, 0.230374,
		-0.066293, -0.229802, -0.970977,
		63.056484, 58.515129, 59.112751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.480091, 58.036964, 59.614609>,  <63.102886, 58.675991, 59.792435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.480091, 58.036964, 59.614609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.482903, 58.276489, 59.294266>,  <63.484589, 58.420204, 59.102058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.482903, 58.276489, 59.294266>,  <63.480091, 58.036964, 59.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.482903, 58.276489, 59.294266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983313, -0.149729, -0.103328,
		-0.181785, -0.786769, -0.589872,
		0.007026, 0.598812, -0.800858,
		63.485012, 58.456135, 59.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.753418, 57.583939, 59.008327>,  <63.480091, 58.036964, 59.614609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.753418, 57.583939, 59.008327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.808388, 57.980133, 59.005608>,  <63.841370, 58.217850, 59.003975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.808388, 57.980133, 59.005608>,  <63.753418, 57.583939, 59.008327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.808388, 57.980133, 59.005608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990017, -0.137574, -0.030668,
		-0.031312, -0.002516, -0.999506,
		0.137429, 0.990488, -0.006799,
		63.849617, 58.277279, 59.003567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.431511, 57.792675, 58.817593>,  <63.753418, 57.583939, 59.008327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.431511, 57.792675, 58.817593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.345390, 58.157158, 58.958076>,  <64.293716, 58.375847, 59.042366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.345390, 58.157158, 58.958076>,  <64.431511, 57.792675, 58.817593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.345390, 58.157158, 58.958076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976539, 0.199415, 0.081272,
		0.004020, 0.360465, -0.932764,
		-0.215303, 0.911207, 0.351207,
		64.280800, 58.430519, 59.063438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.875206, 58.291187, 58.461922>,  <64.431511, 57.792675, 58.817593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.875206, 58.291187, 58.461922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.776062, 58.471523, 58.804924>,  <64.716576, 58.579723, 59.010723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.776062, 58.471523, 58.804924>,  <64.875206, 58.291187, 58.461922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.776062, 58.471523, 58.804924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941896, 0.319274, 0.104385,
		-0.226717, 0.833551, -0.503777,
		-0.247853, 0.450839, 0.857504,
		64.701706, 58.606773, 59.062176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.961494, 59.149185, 58.497349>,  <64.875206, 58.291187, 58.461922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.961494, 59.149185, 58.497349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981850, 58.962944, 58.850761>,  <64.994064, 58.851200, 59.062809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.981850, 58.962944, 58.850761>,  <64.961494, 59.149185, 58.497349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.981850, 58.962944, 58.850761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928058, 0.348865, 0.130392,
		-0.368944, 0.813333, 0.449855,
		0.050886, -0.465599, 0.883532,
		64.997116, 58.823265, 59.115822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.963173, 59.665096, 59.100060>,  <64.961494, 59.149185, 58.497349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.963173, 59.665096, 59.100060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.143211, 59.313705, 59.164162>,  <65.251236, 59.102871, 59.202625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.143211, 59.313705, 59.164162>,  <64.963173, 59.665096, 59.100060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.143211, 59.313705, 59.164162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867943, 0.472574, 0.152805,
		-0.209970, 0.070318, 0.975176,
		0.450098, -0.878481, 0.160258,
		65.278244, 59.050159, 59.212238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.188148, 59.542728, 59.893356>,  <64.963173, 59.665096, 59.100060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.188148, 59.542728, 59.893356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.415474, 59.340179, 59.633942>,  <65.551872, 59.218651, 59.478291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.415474, 59.340179, 59.633942>,  <65.188148, 59.542728, 59.893356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.415474, 59.340179, 59.633942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821020, 0.400968, 0.406388,
		0.054259, -0.763420, 0.643620,
		0.568315, -0.506374, -0.648539,
		65.585968, 59.188267, 59.439381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.763680, 59.037773, 60.106392>,  <65.188148, 59.542728, 59.893356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.763680, 59.037773, 60.106392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.880058, 59.213112, 59.766228>,  <65.949890, 59.318317, 59.562130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.880058, 59.213112, 59.766228>,  <65.763680, 59.037773, 60.106392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.880058, 59.213112, 59.766228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853250, 0.283206, 0.437903,
		0.432795, -0.853021, -0.291622,
		0.290951, 0.438349, -0.850410,
		65.967346, 59.344616, 59.511105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.268562, 58.657650, 59.598373>,  <65.763680, 59.037773, 60.106392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.268562, 58.657650, 59.598373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.261475, 59.056076, 59.633110>,  <66.257217, 59.295132, 59.653954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.261475, 59.056076, 59.633110>,  <66.268562, 58.657650, 59.598373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.261475, 59.056076, 59.633110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957829, -0.007999, 0.287226,
		0.286790, 0.088270, -0.953918,
		-0.017723, 0.996064, 0.086841,
		66.256157, 59.354897, 59.659161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.779869, 58.887325, 59.249336>,  <66.268562, 58.657650, 59.598373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.779869, 58.887325, 59.249336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.710251, 59.119579, 59.567474>,  <66.668480, 59.258930, 59.758358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.710251, 59.119579, 59.567474>,  <66.779869, 58.887325, 59.249336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.710251, 59.119579, 59.567474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963425, -0.066727, 0.259537,
		0.203767, 0.811426, -0.547784,
		-0.174043, 0.580634, 0.795345,
		66.658035, 59.293770, 59.806076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.109695, 59.437706, 59.202869>,  <66.779869, 58.887325, 59.249336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.109695, 59.437706, 59.202869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077843, 59.331505, 59.587196>,  <67.058731, 59.267784, 59.817791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077843, 59.331505, 59.587196>,  <67.109695, 59.437706, 59.202869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.077843, 59.331505, 59.587196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991777, -0.117972, 0.049601,
		0.100180, 0.956864, 0.272718,
		-0.079634, -0.265506, 0.960815,
		67.053955, 59.251854, 59.875443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.497536, 59.849155, 59.636009>,  <67.109695, 59.437706, 59.202869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.497536, 59.849155, 59.636009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.469902, 59.494480, 59.818878>,  <67.453323, 59.281673, 59.928600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.469902, 59.494480, 59.818878>,  <67.497536, 59.849155, 59.636009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.469902, 59.494480, 59.818878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996202, -0.085662, -0.015619,
		0.053012, 0.454354, 0.889243,
		-0.069078, -0.886693, 0.457169,
		67.449181, 59.228474, 59.956028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.774094, 59.819805, 60.366680>,  <67.497536, 59.849155, 59.636009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.774094, 59.819805, 60.366680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.819435, 59.479317, 60.161713>,  <67.846642, 59.275024, 60.038734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.819435, 59.479317, 60.161713>,  <67.774094, 59.819805, 60.366680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.819435, 59.479317, 60.161713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978593, 0.006496, 0.205700,
		-0.171768, -0.524765, 0.833737,
		0.113360, -0.851222, -0.512416,
		67.853447, 59.223949, 60.007988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.162743, 59.461323, 60.868893>,  <67.774094, 59.819805, 60.366680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.162743, 59.461323, 60.868893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.231407, 59.348000, 60.491478>,  <68.272606, 59.280006, 60.265030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.231407, 59.348000, 60.491478>,  <68.162743, 59.461323, 60.868893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.231407, 59.348000, 60.491478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951221, -0.201547, 0.233576,
		-0.256342, -0.937611, 0.234892,
		0.171662, -0.283310, -0.943540,
		68.282906, 59.263008, 60.208416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.471230, 58.793633, 60.813999>,  <68.162743, 59.461323, 60.868893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.471230, 58.793633, 60.813999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.600510, 58.970951, 60.479568>,  <68.678078, 59.077343, 60.278912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.600510, 58.970951, 60.479568>,  <68.471230, 58.793633, 60.813999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.600510, 58.970951, 60.479568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929432, -0.314907, 0.192328,
		-0.178028, -0.839238, -0.513795,
		0.323207, 0.443298, -0.836077,
		68.697472, 59.103939, 60.228745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.917358, 58.354725, 60.555298>,  <68.471230, 58.793633, 60.813999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.917358, 58.354725, 60.555298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.049599, 58.689575, 60.380974>,  <69.128944, 58.890484, 60.276379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.049599, 58.689575, 60.380974>,  <68.917358, 58.354725, 60.555298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.049599, 58.689575, 60.380974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916558, -0.174686, 0.359731,
		0.225009, -0.518372, -0.825022,
		0.330594, 0.837123, -0.435812,
		69.148781, 58.940712, 60.250229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.474411, 58.231384, 60.060772>,  <68.917358, 58.354725, 60.555298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.474411, 58.231384, 60.060772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.486176, 58.598392, 60.219406>,  <69.493233, 58.818600, 60.314587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.486176, 58.598392, 60.219406>,  <69.474411, 58.231384, 60.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.486176, 58.598392, 60.219406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799766, -0.259596, 0.541280,
		0.599590, 0.301260, -0.741440,
		0.029409, 0.917525, 0.396589,
		69.494995, 58.873650, 60.338383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.927574, 57.882545, 60.511906>,  <69.474411, 58.231384, 60.060772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.927574, 57.882545, 60.511906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.278496, 57.912766, 60.701485>,  <70.489052, 57.930897, 60.815231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.278496, 57.912766, 60.701485>,  <69.927574, 57.882545, 60.511906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.278496, 57.912766, 60.701485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317765, -0.831512, -0.455646,
		0.359668, 0.550345, -0.753498,
		0.877305, 0.075554, 0.473949,
		70.541687, 57.935432, 60.843670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.353981, 57.922638, 60.002674>,  <69.927574, 57.882545, 60.511906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.353981, 57.922638, 60.002674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.485748, 57.770000, 60.348129>,  <70.564804, 57.678417, 60.555405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.485748, 57.770000, 60.348129>,  <70.353981, 57.922638, 60.002674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.485748, 57.770000, 60.348129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241637, -0.850162, -0.467799,
		0.912743, 0.362786, -0.187846,
		0.329411, -0.381590, 0.863642,
		70.584572, 57.655525, 60.607224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.068504, 57.701767, 59.783680>,  <70.353981, 57.922638, 60.002674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.068504, 57.701767, 59.783680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.862411, 57.461323, 60.028038>,  <70.738754, 57.317055, 60.174652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.862411, 57.461323, 60.028038>,  <71.068504, 57.701767, 59.783680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.862411, 57.461323, 60.028038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279542, -0.791677, -0.543235,
		0.810175, -0.109127, 0.575941,
		-0.515241, -0.601115, 0.610891,
		70.707840, 57.280987, 60.211304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.773956, 58.035927, 59.807961>,  <71.068504, 57.701767, 59.783680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.773956, 58.035927, 59.807961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.040428, 57.974945, 60.099976>,  <72.200310, 57.938358, 60.275185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.040428, 57.974945, 60.099976>,  <71.773956, 58.035927, 59.807961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.040428, 57.974945, 60.099976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015324, -0.975880, -0.217772,
		0.745631, 0.156263, -0.647779,
		0.666183, -0.152451, 0.730040,
		72.240280, 57.929211, 60.318989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.391273, 57.772926, 59.632710>,  <71.773956, 58.035927, 59.807961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.391273, 57.772926, 59.632710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.360481, 57.643642, 60.009987>,  <72.342010, 57.566071, 60.236351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.360481, 57.643642, 60.009987>,  <72.391273, 57.772926, 59.632710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.360481, 57.643642, 60.009987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096568, -0.943967, -0.315595,
		0.992346, 0.066790, 0.103871,
		-0.076972, -0.323210, 0.943192,
		72.337387, 57.546680, 60.292946>
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
