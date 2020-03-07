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
	<36.300133, 52.304501, 49.449333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413128, 52.649982, 49.616287>,  <36.480927, 52.857273, 49.716461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413128, 52.649982, 49.616287>,  <36.300133, 52.304501, 49.449333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413128, 52.649982, 49.616287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713293, -0.480062, 0.510641,
		0.641415, 0.153469, -0.751687,
		0.282489, 0.863706, 0.417387,
		36.497875, 52.909096, 49.741505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923927, 52.463764, 49.843765>,  <36.300133, 52.304501, 49.449333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923927, 52.463764, 49.843765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110470, 52.497360, 50.196007>,  <37.222393, 52.517517, 50.407352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110470, 52.497360, 50.196007>,  <36.923927, 52.463764, 49.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110470, 52.497360, 50.196007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829655, -0.386897, -0.402471,
		0.306896, 0.918290, -0.250117,
		0.466354, 0.083994, 0.880601,
		37.250378, 52.522560, 50.460186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558014, 52.720047, 49.730618>,  <36.923927, 52.463764, 49.843765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558014, 52.720047, 49.730618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569836, 52.483429, 50.052910>,  <37.576927, 52.341457, 50.246284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569836, 52.483429, 50.052910>,  <37.558014, 52.720047, 49.730618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569836, 52.483429, 50.052910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851260, -0.407608, -0.330472,
		0.523911, 0.695655, 0.491510,
		0.029551, -0.591541, 0.805733,
		37.578701, 52.305965, 50.294628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100502, 52.952881, 50.212986>,  <37.558014, 52.720047, 49.730618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100502, 52.952881, 50.212986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058575, 52.555260, 50.224781>,  <38.033421, 52.316685, 50.231857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058575, 52.555260, 50.224781>,  <38.100502, 52.952881, 50.212986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058575, 52.555260, 50.224781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941344, -0.108732, -0.319452,
		0.320758, -0.005729, 0.947144,
		-0.104815, -0.994055, 0.029483,
		38.027130, 52.257042, 50.233627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765778, 53.232738, 49.957733>,  <38.100502, 52.952881, 50.212986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765778, 53.232738, 49.957733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790581, 53.529648, 50.224625>,  <38.805462, 53.707794, 50.384758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790581, 53.529648, 50.224625>,  <38.765778, 53.232738, 49.957733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790581, 53.529648, 50.224625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965889, 0.123778, -0.227461,
		-0.251425, 0.658569, -0.709276,
		0.062006, 0.742271, 0.667225,
		38.809181, 53.752331, 50.424793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962540, 53.851006, 49.700108>,  <38.765778, 53.232738, 49.957733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962540, 53.851006, 49.700108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135403, 53.870041, 50.060326>,  <39.239120, 53.881462, 50.276455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135403, 53.870041, 50.060326>,  <38.962540, 53.851006, 49.700108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135403, 53.870041, 50.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888156, 0.150583, -0.434170,
		-0.156266, 0.987451, 0.022813,
		0.432157, 0.047584, 0.900542,
		39.265049, 53.884315, 50.330490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579983, 54.329155, 49.574581>,  <38.962540, 53.851006, 49.700108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579983, 54.329155, 49.574581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600735, 54.052979, 49.863190>,  <39.613186, 53.887272, 50.036354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600735, 54.052979, 49.863190>,  <39.579983, 54.329155, 49.574581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600735, 54.052979, 49.863190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972464, -0.129447, -0.193797,
		0.227205, 0.711708, 0.664717,
		0.051882, -0.690445, 0.721522,
		39.616299, 53.845844, 50.079647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129196, 54.534283, 50.211819>,  <39.579983, 54.329155, 49.574581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129196, 54.534283, 50.211819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073036, 54.149567, 50.117798>,  <40.039341, 53.918736, 50.061386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073036, 54.149567, 50.117798>,  <40.129196, 54.534283, 50.211819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073036, 54.149567, 50.117798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985639, -0.113269, -0.125241,
		0.093832, -0.249258, 0.963881,
		-0.140396, -0.961790, -0.235050,
		40.030918, 53.861031, 50.047283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539852, 53.947437, 50.562840>,  <40.129196, 54.534283, 50.211819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539852, 53.947437, 50.562840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483906, 53.788784, 50.199936>,  <40.450336, 53.693592, 49.982193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483906, 53.788784, 50.199936>,  <40.539852, 53.947437, 50.562840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483906, 53.788784, 50.199936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950934, -0.309183, -0.011434,
		-0.275974, -0.864343, 0.420416,
		-0.139868, -0.396633, -0.907259,
		40.441944, 53.669796, 49.927757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784462, 53.227345, 50.497478>,  <40.539852, 53.947437, 50.562840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784462, 53.227345, 50.497478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829617, 53.451408, 50.169216>,  <40.856709, 53.585846, 49.972260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829617, 53.451408, 50.169216>,  <40.784462, 53.227345, 50.497478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829617, 53.451408, 50.169216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979503, -0.201408, -0.002739,
		-0.166822, -0.803527, -0.571414,
		0.112887, 0.560159, -0.820657,
		40.863483, 53.619457, 49.923019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150604, 52.935070, 49.902252>,  <40.784462, 53.227345, 50.497478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150604, 52.935070, 49.902252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254002, 53.320522, 49.875122>,  <41.316040, 53.551792, 49.858845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254002, 53.320522, 49.875122>,  <41.150604, 52.935070, 49.902252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254002, 53.320522, 49.875122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963468, -0.262268, -0.054263,
		-0.070077, -0.051317, -0.996221,
		0.258492, 0.963630, -0.067821,
		41.331551, 53.609612, 49.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504559, 53.141140, 49.285553>,  <41.150604, 52.935070, 49.902252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504559, 53.141140, 49.285553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630665, 53.392166, 49.570305>,  <41.706329, 53.542782, 49.741158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630665, 53.392166, 49.570305>,  <41.504559, 53.141140, 49.285553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630665, 53.392166, 49.570305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926770, -0.365017, -0.088655,
		0.204212, 0.687699, -0.696683,
		0.315269, 0.627561, 0.711880,
		41.725246, 53.580433, 49.783871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290405, 53.171551, 49.233540>,  <41.504559, 53.141140, 49.285553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290405, 53.171551, 49.233540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192024, 53.306656, 49.596951>,  <42.132996, 53.387718, 49.814999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192024, 53.306656, 49.596951>,  <42.290405, 53.171551, 49.233540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192024, 53.306656, 49.596951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916243, -0.224798, 0.331609,
		0.316241, 0.913992, -0.254185,
		-0.245948, 0.337764, 0.908529,
		42.118240, 53.407986, 49.869511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525806, 53.973148, 49.485840>,  <42.290405, 53.171551, 49.233540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525806, 53.973148, 49.485840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486088, 53.695152, 49.770691>,  <42.462257, 53.528355, 49.941601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486088, 53.695152, 49.770691>,  <42.525806, 53.973148, 49.485840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486088, 53.695152, 49.770691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957077, 0.129134, 0.259475,
		-0.272293, 0.707326, 0.652339,
		-0.099295, -0.694992, 0.712128,
		42.456299, 53.486656, 49.984329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682461, 54.238636, 50.163780>,  <42.525806, 53.973148, 49.485840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682461, 54.238636, 50.163780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761898, 53.846741, 50.174103>,  <42.809559, 53.611603, 50.180298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761898, 53.846741, 50.174103>,  <42.682461, 54.238636, 50.163780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761898, 53.846741, 50.174103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941399, 0.198011, 0.273055,
		-0.272633, -0.029932, 0.961652,
		0.198591, -0.979743, 0.025806,
		42.821476, 53.552818, 50.181843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923439, 53.893173, 50.837456>,  <42.682461, 54.238636, 50.163780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923439, 53.893173, 50.837456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101078, 53.688873, 50.542999>,  <43.207661, 53.566292, 50.366325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101078, 53.688873, 50.542999>,  <42.923439, 53.893173, 50.837456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101078, 53.688873, 50.542999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894101, 0.199494, 0.400981,
		-0.057946, -0.836261, 0.545261,
		0.444101, -0.510753, -0.736142,
		43.234310, 53.535648, 50.322155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357960, 53.224655, 51.000488>,  <42.923439, 53.893173, 50.837456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357960, 53.224655, 51.000488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462799, 53.427143, 50.671844>,  <43.525703, 53.548637, 50.474659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462799, 53.427143, 50.671844>,  <43.357960, 53.224655, 51.000488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462799, 53.427143, 50.671844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915109, 0.139941, 0.378142,
		0.306401, -0.850975, -0.426569,
		0.262095, 0.506220, -0.821613,
		43.541428, 53.579010, 50.425362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981907, 52.870594, 50.928093>,  <43.357960, 53.224655, 51.000488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981907, 52.870594, 50.928093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954395, 53.244968, 50.789940>,  <43.937889, 53.469593, 50.707047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954395, 53.244968, 50.789940>,  <43.981907, 52.870594, 50.928093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954395, 53.244968, 50.789940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856164, 0.233091, 0.461142,
		0.512106, -0.263985, -0.817349,
		-0.068782, 0.935938, -0.345382,
		43.933762, 53.525749, 50.686325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549187, 53.088947, 50.526623>,  <43.981907, 52.870594, 50.928093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549187, 53.088947, 50.526623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416962, 53.442196, 50.659782>,  <44.337627, 53.654144, 50.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416962, 53.442196, 50.659782>,  <44.549187, 53.088947, 50.526623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416962, 53.442196, 50.659782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943614, 0.302543, 0.134391,
		0.017969, 0.358549, -0.933338,
		-0.330560, 0.883125, 0.332895,
		44.317795, 53.707134, 50.759651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811291, 53.694084, 50.154064>,  <44.549187, 53.088947, 50.526623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811291, 53.694084, 50.154064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741814, 53.813473, 50.529457>,  <44.700127, 53.885105, 50.754692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741814, 53.813473, 50.529457>,  <44.811291, 53.694084, 50.154064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741814, 53.813473, 50.529457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925261, 0.375785, 0.051737,
		-0.337226, 0.877327, -0.341432,
		-0.173696, 0.298467, 0.938481,
		44.689705, 53.903011, 50.811001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688732, 54.460648, 50.137165>,  <44.811291, 53.694084, 50.154064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688732, 54.460648, 50.137165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771019, 54.451118, 50.528492>,  <44.820393, 54.445400, 50.763290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771019, 54.451118, 50.528492>,  <44.688732, 54.460648, 50.137165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771019, 54.451118, 50.528492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969053, -0.134425, -0.207043,
		0.136444, 0.990637, -0.004565,
		0.205718, -0.023826, 0.978321,
		44.832733, 54.443970, 50.821987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324772, 54.916813, 50.264122>,  <44.688732, 54.460648, 50.137165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324772, 54.916813, 50.264122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254887, 54.589535, 50.483223>,  <45.212955, 54.393169, 50.614685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254887, 54.589535, 50.483223>,  <45.324772, 54.916813, 50.264122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254887, 54.589535, 50.483223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969231, -0.240883, -0.050662,
		0.173396, 0.522052, 0.835102,
		-0.174714, -0.818192, 0.547757,
		45.202473, 54.344078, 50.647549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750961, 54.866440, 50.867702>,  <45.324772, 54.916813, 50.264122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750961, 54.866440, 50.867702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654018, 54.512070, 50.709511>,  <45.595852, 54.299446, 50.614597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654018, 54.512070, 50.709511>,  <45.750961, 54.866440, 50.867702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654018, 54.512070, 50.709511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970070, -0.214930, -0.113003,
		0.015112, -0.411028, 0.911497,
		-0.242356, -0.885924, -0.395478,
		45.581310, 54.246292, 50.590866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074383, 54.403835, 51.116970>,  <45.750961, 54.866440, 50.867702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074383, 54.403835, 51.116970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995621, 54.280441, 50.744720>,  <45.948364, 54.206406, 50.521370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995621, 54.280441, 50.744720>,  <46.074383, 54.403835, 51.116970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995621, 54.280441, 50.744720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964685, -0.230346, -0.127761,
		-0.174954, -0.922918, 0.342947,
		-0.196910, -0.308484, -0.930626,
		45.936546, 54.187897, 50.465534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772655, 54.074780, 51.207687>,  <46.074383, 54.403835, 51.116970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772655, 54.074780, 51.207687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602741, 54.024521, 50.849075>,  <46.500793, 53.994366, 50.633907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602741, 54.024521, 50.849075>,  <46.772655, 54.074780, 51.207687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602741, 54.024521, 50.849075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807913, -0.499433, -0.312799,
		-0.408455, -0.857193, 0.313663,
		-0.424783, -0.125649, -0.896533,
		46.475307, 53.986828, 50.580116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420689, 54.000221, 51.482246>,  <46.772655, 54.074780, 51.207687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420689, 54.000221, 51.482246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.328178, 53.774406, 51.799183>,  <47.272671, 53.638920, 51.989346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.328178, 53.774406, 51.799183>,  <47.420689, 54.000221, 51.482246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.328178, 53.774406, 51.799183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847316, 0.283333, 0.449196,
		-0.478085, 0.775256, 0.412811,
		-0.231279, -0.564535, 0.792345,
		47.258793, 53.605045, 52.036888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.055382, 54.156807, 51.916256>,  <47.420689, 54.000221, 51.482246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.055382, 54.156807, 51.916256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870613, 53.880806, 52.139153>,  <47.759754, 53.715206, 52.272892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870613, 53.880806, 52.139153>,  <48.055382, 54.156807, 51.916256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870613, 53.880806, 52.139153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736054, 0.052298, 0.674899,
		-0.494828, 0.721912, 0.483724,
		-0.461920, -0.690006, 0.557245,
		47.732037, 53.673805, 52.306328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.618637, 53.891003, 52.419853>,  <48.055382, 54.156807, 51.916256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.618637, 53.891003, 52.419853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.309494, 53.692230, 52.577713>,  <48.124008, 53.572968, 52.672428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.309494, 53.692230, 52.577713>,  <48.618637, 53.891003, 52.419853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.309494, 53.692230, 52.577713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606645, -0.396076, 0.689279,
		-0.186215, 0.772127, 0.607572,
		-0.772856, -0.496935, 0.394652,
		48.077637, 53.543148, 52.696110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.706764, 53.982166, 53.099014>,  <48.618637, 53.891003, 52.419853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.706764, 53.982166, 53.099014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.481544, 53.657482, 53.036911>,  <48.346413, 53.462673, 52.999649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.481544, 53.657482, 53.036911>,  <48.706764, 53.982166, 53.099014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.481544, 53.657482, 53.036911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515368, -0.491729, 0.701853,
		-0.646047, 0.315161, 0.695196,
		-0.563045, -0.811712, -0.155256,
		48.312630, 53.413967, 52.990334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.377914, 53.686844, 53.806522>,  <48.706764, 53.982166, 53.099014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.377914, 53.686844, 53.806522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.468937, 53.435345, 53.509094>,  <48.523552, 53.284447, 53.330639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.468937, 53.435345, 53.509094>,  <48.377914, 53.686844, 53.806522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.468937, 53.435345, 53.509094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618230, -0.496678, 0.609182,
		-0.752336, -0.598321, 0.275686,
		0.227559, -0.628747, -0.743569,
		48.537205, 53.246719, 53.286022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.410954, 52.969341, 54.104252>,  <48.377914, 53.686844, 53.806522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.410954, 52.969341, 54.104252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.632435, 52.983215, 53.771454>,  <48.765324, 52.991539, 53.571777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.632435, 52.983215, 53.771454>,  <48.410954, 52.969341, 54.104252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.632435, 52.983215, 53.771454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776730, -0.381683, 0.501008,
		-0.300178, -0.923642, -0.238281,
		0.553700, 0.034689, -0.831993,
		48.798546, 52.993622, 53.521854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.650993, 52.240696, 53.928749>,  <48.410954, 52.969341, 54.104252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.650993, 52.240696, 53.928749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.877724, 52.555782, 53.832245>,  <49.013763, 52.744835, 53.774342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.877724, 52.555782, 53.832245>,  <48.650993, 52.240696, 53.928749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.877724, 52.555782, 53.832245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669624, -0.269935, 0.691910,
		0.479908, -0.553744, -0.680483,
		0.566827, 0.787720, -0.241257,
		49.047771, 52.792099, 53.759869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.268074, 52.094559, 53.576855>,  <48.650993, 52.240696, 53.928749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.268074, 52.094559, 53.576855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.338650, 52.435284, 53.774147>,  <49.380997, 52.639721, 53.892521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.338650, 52.435284, 53.774147>,  <49.268074, 52.094559, 53.576855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.338650, 52.435284, 53.774147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801773, -0.415055, 0.429988,
		0.570989, 0.319591, -0.756197,
		0.176443, 0.851816, 0.493231,
		49.391582, 52.690830, 53.922115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.902779, 52.228504, 53.384129>,  <49.268074, 52.094559, 53.576855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.902779, 52.228504, 53.384129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.823322, 52.367855, 53.750553>,  <49.775646, 52.451466, 53.970409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.823322, 52.367855, 53.750553>,  <49.902779, 52.228504, 53.384129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.823322, 52.367855, 53.750553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862153, -0.382388, 0.332373,
		0.466082, 0.855813, -0.224392,
		-0.198644, 0.348374, 0.916066,
		49.763729, 52.472366, 54.025372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.486797, 52.402386, 53.826614>,  <49.902779, 52.228504, 53.384129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.486797, 52.402386, 53.826614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271069, 52.329483, 54.155472>,  <50.141632, 52.285740, 54.352787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271069, 52.329483, 54.155472>,  <50.486797, 52.402386, 53.826614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.271069, 52.329483, 54.155472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818674, -0.342158, 0.461195,
		0.197245, 0.921797, 0.333743,
		-0.539321, -0.182259, 0.822140,
		50.109272, 52.274807, 54.402115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.756165, 52.832306, 54.416142>,  <50.486797, 52.402386, 53.826614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.756165, 52.832306, 54.416142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.609333, 52.468613, 54.494671>,  <50.521233, 52.250397, 54.541790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.609333, 52.468613, 54.494671>,  <50.756165, 52.832306, 54.416142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.609333, 52.468613, 54.494671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874111, -0.265006, 0.407066,
		-0.318092, 0.321033, 0.892051,
		-0.367080, -0.909236, 0.196323,
		50.499210, 52.195843, 54.553566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.671928, 52.679089, 55.115265>,  <50.756165, 52.832306, 54.416142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.671928, 52.679089, 55.115265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.733334, 52.332863, 54.924591>,  <50.770176, 52.125126, 54.810184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.733334, 52.332863, 54.924591>,  <50.671928, 52.679089, 55.115265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.733334, 52.332863, 54.924591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659082, -0.269739, 0.702034,
		-0.736238, -0.421944, 0.529071,
		0.153508, -0.865566, -0.476688,
		50.779385, 52.073193, 54.781586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.740303, 51.921265, 55.514645>,  <50.671928, 52.679089, 55.115265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.740303, 51.921265, 55.514645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.975220, 52.010033, 55.203300>,  <51.116169, 52.063293, 55.016495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.975220, 52.010033, 55.203300>,  <50.740303, 51.921265, 55.514645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.975220, 52.010033, 55.203300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796979, -0.326230, 0.508329,
		-0.141115, -0.918872, -0.368458,
		0.587291, 0.221920, -0.778357,
		51.151405, 52.076607, 54.969791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.344856, 51.449711, 55.784698>,  <50.740303, 51.921265, 55.514645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.344856, 51.449711, 55.784698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.551636, 51.711891, 55.564461>,  <51.675701, 51.869198, 55.432320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.551636, 51.711891, 55.564461>,  <51.344856, 51.449711, 55.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.551636, 51.711891, 55.564461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842568, -0.276029, 0.462478,
		0.151150, -0.702990, -0.694952,
		0.516945, 0.655449, -0.550595,
		51.706718, 51.908527, 55.399281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.966385, 51.049412, 55.508709>,  <51.344856, 51.449711, 55.784698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.966385, 51.049412, 55.508709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.031071, 51.443943, 55.495987>,  <52.069881, 51.680660, 55.488354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.031071, 51.443943, 55.495987>,  <51.966385, 51.049412, 55.508709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.031071, 51.443943, 55.495987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892378, -0.132395, 0.431431,
		0.421320, -0.098151, -0.901585,
		0.161711, 0.986326, -0.031807,
		52.079582, 51.739841, 55.486446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.732174, 51.217911, 55.261379>,  <51.966385, 51.049412, 55.508709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.732174, 51.217911, 55.261379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.581276, 51.503304, 55.497559>,  <52.490738, 51.674538, 55.639267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.581276, 51.503304, 55.497559>,  <52.732174, 51.217911, 55.261379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.581276, 51.503304, 55.497559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787782, -0.087989, 0.609638,
		0.486918, 0.695128, -0.528874,
		-0.377241, 0.713481, 0.590452,
		52.468105, 51.717346, 55.674694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.203125, 51.680443, 55.480419>,  <52.732174, 51.217911, 55.261379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.203125, 51.680443, 55.480419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.946400, 51.618320, 55.780807>,  <52.792362, 51.581047, 55.961040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.946400, 51.618320, 55.780807>,  <53.203125, 51.680443, 55.480419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.946400, 51.618320, 55.780807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766828, -0.121102, 0.630325,
		-0.006952, 0.980415, 0.196821,
		-0.641815, -0.155310, 0.750968,
		52.753857, 51.571728, 56.006096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.469604, 52.072533, 56.138462>,  <53.203125, 51.680443, 55.480419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.469604, 52.072533, 56.138462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.250706, 51.747665, 56.219368>,  <53.119366, 51.552746, 56.267914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.250706, 51.747665, 56.219368>,  <53.469604, 52.072533, 56.138462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.250706, 51.747665, 56.219368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606913, -0.218646, 0.764101,
		-0.576350, 0.540910, 0.612566,
		-0.547245, -0.812164, 0.202269,
		53.086533, 51.504017, 56.280048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.378712, 52.134106, 56.855225>,  <53.469604, 52.072533, 56.138462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.378712, 52.134106, 56.855225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.355728, 51.761356, 56.711945>,  <53.341938, 51.537708, 56.625977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.355728, 51.761356, 56.711945>,  <53.378712, 52.134106, 56.855225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.355728, 51.761356, 56.711945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591600, -0.320797, 0.739662,
		-0.804182, -0.169412, 0.569729,
		-0.057460, -0.931874, -0.358203,
		53.338490, 51.481792, 56.604485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.471874, 51.619144, 57.465496>,  <53.378712, 52.134106, 56.855225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.471874, 51.619144, 57.465496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.630535, 51.431736, 57.149734>,  <53.725731, 51.319290, 56.960278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.630535, 51.431736, 57.149734>,  <53.471874, 51.619144, 57.465496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.630535, 51.431736, 57.149734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717117, -0.378693, 0.585094,
		-0.573068, -0.798173, 0.185773,
		0.396655, -0.468520, -0.789401,
		53.749531, 51.291180, 56.912914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.691521, 51.017372, 57.768127>,  <53.471874, 51.619144, 57.465496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.691521, 51.017372, 57.768127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.891788, 51.072182, 57.426239>,  <54.011951, 51.105068, 57.221107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.891788, 51.072182, 57.426239>,  <53.691521, 51.017372, 57.768127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.891788, 51.072182, 57.426239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841230, -0.309830, 0.443099,
		-0.204102, -0.940866, -0.270394,
		0.500673, 0.137026, -0.854722,
		54.041992, 51.113289, 57.169823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.226250, 50.567787, 57.866909>,  <53.691521, 51.017372, 57.768127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.226250, 50.567787, 57.866909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.380501, 50.822525, 57.599861>,  <54.473053, 50.975368, 57.439632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.380501, 50.822525, 57.599861>,  <54.226250, 50.567787, 57.866909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.380501, 50.822525, 57.599861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902373, -0.109451, 0.416825,
		0.192381, -0.763185, -0.616878,
		0.385632, 0.636844, -0.667621,
		54.496189, 51.013577, 57.399574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.810040, 50.206654, 57.543793>,  <54.226250, 50.567787, 57.866909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.810040, 50.206654, 57.543793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.832870, 50.606003, 57.543907>,  <54.846569, 50.845612, 57.543976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.832870, 50.606003, 57.543907>,  <54.810040, 50.206654, 57.543793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.832870, 50.606003, 57.543907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963896, -0.055182, 0.260497,
		0.260088, -0.014595, -0.965475,
		0.057078, 0.998370, 0.000284,
		54.849995, 50.905514, 57.543991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.300194, 50.572388, 57.073833>,  <54.810040, 50.206654, 57.543793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.300194, 50.572388, 57.073833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.291649, 50.792236, 57.407890>,  <55.286522, 50.924145, 57.608322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.291649, 50.792236, 57.407890>,  <55.300194, 50.572388, 57.073833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.291649, 50.792236, 57.407890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976734, -0.166817, 0.134769,
		0.213388, 0.818586, -0.533275,
		-0.021361, 0.549626, 0.835138,
		55.285240, 50.957123, 57.658432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.605679, 51.305828, 56.991802>,  <55.300194, 50.572388, 57.073833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.605679, 51.305828, 56.991802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.632690, 51.126194, 57.348175>,  <55.648899, 51.018414, 57.562000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.632690, 51.126194, 57.348175>,  <55.605679, 51.305828, 56.991802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.632690, 51.126194, 57.348175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972095, -0.171458, -0.160106,
		0.224659, 0.876884, 0.424973,
		0.067529, -0.449084, 0.890934,
		55.652950, 50.991470, 57.615456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.296089, 51.357430, 57.003132>,  <55.605679, 51.305828, 56.991802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.296089, 51.357430, 57.003132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.202385, 51.147556, 57.330505>,  <56.146164, 51.021633, 57.526928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.202385, 51.147556, 57.330505>,  <56.296089, 51.357430, 57.003132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.202385, 51.147556, 57.330505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969012, -0.193862, 0.153078,
		0.078345, 0.828928, 0.553842,
		-0.234260, -0.524687, 0.818429,
		56.132107, 50.990150, 57.576035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.822021, 51.545353, 57.572151>,  <56.296089, 51.357430, 57.003132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.822021, 51.545353, 57.572151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.706932, 51.162399, 57.582161>,  <56.637878, 50.932625, 57.588169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.706932, 51.162399, 57.582161>,  <56.822021, 51.545353, 57.572151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.706932, 51.162399, 57.582161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953671, -0.284015, 0.099233,
		-0.087896, 0.052421, 0.994749,
		-0.287725, -0.957386, 0.025029,
		56.620613, 50.875183, 57.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.298618, 51.170517, 58.023617>,  <56.822021, 51.545353, 57.572151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.298618, 51.170517, 58.023617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.599968, 51.009628, 58.231712>,  <57.780777, 50.913097, 58.356571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.599968, 51.009628, 58.231712>,  <57.298618, 51.170517, 58.023617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.599968, 51.009628, 58.231712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571766, -0.791447, 0.216090,
		0.324828, -0.460252, -0.826230,
		0.753373, -0.402218, 0.520241,
		57.825981, 50.888962, 58.387783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.431137, 50.422184, 57.765038>,  <57.298618, 51.170517, 58.023617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.431137, 50.422184, 57.765038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.561882, 50.482315, 58.138252>,  <57.640331, 50.518394, 58.362183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.561882, 50.482315, 58.138252>,  <57.431137, 50.422184, 57.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.561882, 50.482315, 58.138252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379026, -0.883538, 0.275135,
		0.865736, -0.443578, -0.231819,
		0.326865, 0.150328, 0.933039,
		57.659943, 50.527412, 58.418163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.070145, 50.459755, 57.382481>,  <57.431137, 50.422184, 57.765038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.070145, 50.459755, 57.382481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.398407, 50.247650, 57.297302>,  <58.595364, 50.120388, 57.246193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.398407, 50.247650, 57.297302>,  <58.070145, 50.459755, 57.382481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.398407, 50.247650, 57.297302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259960, 0.014582, 0.965509,
		-0.508871, -0.847706, 0.149815,
		0.820653, -0.530266, -0.212949,
		58.644604, 50.088570, 57.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.157513, 50.003460, 57.844704>,  <58.070145, 50.459755, 57.382481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.157513, 50.003460, 57.844704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.519402, 50.089378, 57.697548>,  <58.736534, 50.140930, 57.609253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.519402, 50.089378, 57.697548>,  <58.157513, 50.003460, 57.844704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.519402, 50.089378, 57.697548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348241, 0.124519, 0.929098,
		0.245381, -0.968688, 0.037852,
		0.904719, 0.214801, -0.367891,
		58.790817, 50.153820, 57.587181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.733471, 49.623856, 58.173519>,  <58.157513, 50.003460, 57.844704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.733471, 49.623856, 58.173519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.853622, 49.989182, 58.063515>,  <58.925713, 50.208378, 57.997513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.853622, 49.989182, 58.063515>,  <58.733471, 49.623856, 58.173519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.853622, 49.989182, 58.063515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411800, 0.135894, 0.901085,
		0.860344, -0.383918, -0.335283,
		0.300380, 0.913312, -0.275014,
		58.943737, 50.263176, 57.981010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.392704, 49.668640, 58.384632>,  <58.733471, 49.623856, 58.173519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.392704, 49.668640, 58.384632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.246376, 50.038937, 58.422951>,  <59.158581, 50.261116, 58.445942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.246376, 50.038937, 58.422951>,  <59.392704, 49.668640, 58.384632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.246376, 50.038937, 58.422951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539976, 0.127287, 0.832000,
		0.758024, 0.356088, -0.546443,
		-0.365820, 0.925742, 0.095793,
		59.136631, 50.316658, 58.451687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.627731, 50.401722, 58.457329>,  <59.392704, 49.668640, 58.384632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.627731, 50.401722, 58.457329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.961632, 50.261162, 58.287758>,  <60.161972, 50.176826, 58.186016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.961632, 50.261162, 58.287758>,  <59.627731, 50.401722, 58.457329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.961632, 50.261162, 58.287758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550285, 0.504947, 0.664993,
		-0.019617, -0.788382, 0.614873,
		0.834746, -0.351400, -0.423929,
		60.212055, 50.155743, 58.160580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.058014, 50.030621, 58.941605>,  <59.627731, 50.401722, 58.457329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.058014, 50.030621, 58.941605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.303581, 50.166569, 58.656624>,  <60.450920, 50.248138, 58.485634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.303581, 50.166569, 58.656624>,  <60.058014, 50.030621, 58.941605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.303581, 50.166569, 58.656624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631267, 0.330502, 0.701620,
		0.473928, -0.880487, -0.011648,
		0.613917, 0.339870, -0.712456,
		60.487755, 50.268528, 58.442886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.757481, 49.794075, 58.973919>,  <60.058014, 50.030621, 58.941605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.757481, 49.794075, 58.973919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.711792, 50.156883, 58.811798>,  <60.684380, 50.374569, 58.714527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.711792, 50.156883, 58.811798>,  <60.757481, 49.794075, 58.973919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.711792, 50.156883, 58.811798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544736, 0.398351, 0.737956,
		0.830793, -0.136494, -0.539585,
		-0.114218, 0.907020, -0.405301,
		60.677528, 50.428989, 58.690208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.291027, 50.256058, 58.626995>,  <60.757481, 49.794075, 58.973919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.291027, 50.256058, 58.626995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.023155, 50.494503, 58.804161>,  <60.862431, 50.637569, 58.910461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.023155, 50.494503, 58.804161>,  <61.291027, 50.256058, 58.626995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.023155, 50.494503, 58.804161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705256, 0.323617, 0.630782,
		0.232683, 0.734792, -0.637133,
		-0.669681, 0.596114, 0.442917,
		60.822250, 50.673336, 58.937035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.605648, 50.921371, 58.515095>,  <61.291027, 50.256058, 58.626995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.605648, 50.921371, 58.515095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.385170, 50.887939, 58.847168>,  <61.252884, 50.867878, 59.046410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.385170, 50.887939, 58.847168>,  <61.605648, 50.921371, 58.515095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.385170, 50.887939, 58.847168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828583, 0.062232, 0.556396,
		-0.098170, 0.994556, 0.034955,
		-0.551192, -0.083584, 0.830181,
		61.219814, 50.862865, 59.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.697701, 51.463425, 59.043266>,  <61.605648, 50.921371, 58.515095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.697701, 51.463425, 59.043266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.641861, 51.085823, 59.162849>,  <61.608356, 50.859264, 59.234600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.641861, 51.085823, 59.162849>,  <61.697701, 51.463425, 59.043266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.641861, 51.085823, 59.162849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880874, 0.019512, 0.472948,
		-0.452296, 0.329368, 0.828822,
		-0.139602, -0.944000, 0.298956,
		61.599979, 50.802624, 59.252537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.656425, 51.462410, 59.829830>,  <61.697701, 51.463425, 59.043266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.656425, 51.462410, 59.829830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.812996, 51.151501, 59.632797>,  <61.906937, 50.964954, 59.514580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.812996, 51.151501, 59.632797>,  <61.656425, 51.462410, 59.829830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.812996, 51.151501, 59.632797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848391, 0.097498, 0.520314,
		-0.356400, -0.621562, 0.697595,
		0.391422, -0.777274, -0.492580,
		61.930424, 50.918320, 59.485023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.068298, 50.962051, 60.281460>,  <61.656425, 51.462410, 59.829830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.068298, 50.962051, 60.281460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.218773, 50.921516, 59.913063>,  <62.309055, 50.897198, 59.692024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.218773, 50.921516, 59.913063>,  <62.068298, 50.962051, 60.281460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.218773, 50.921516, 59.913063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925701, 0.083534, 0.368917,
		0.039549, -0.991339, 0.125230,
		0.376183, -0.101335, -0.920988,
		62.331627, 50.891117, 59.636768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.409641, 51.471996, 60.805504>,  <62.068298, 50.962051, 60.281460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.409641, 51.471996, 60.805504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.409874, 51.651093, 61.163170>,  <62.410015, 51.758553, 61.377769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.409874, 51.651093, 61.163170>,  <62.409641, 51.471996, 60.805504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.409874, 51.651093, 61.163170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302520, 0.852343, -0.426606,
		-0.953143, -0.270254, 0.135946,
		0.000581, 0.447742, 0.894162,
		62.410049, 51.785416, 61.431419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.677048, 51.602295, 61.056595>,  <62.409641, 51.471996, 60.805504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.677048, 51.602295, 61.056595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.978218, 51.844143, 61.160545>,  <62.158920, 51.989250, 61.222916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.978218, 51.844143, 61.160545>,  <61.677048, 51.602295, 61.056595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.978218, 51.844143, 61.160545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528291, 0.790768, -0.309183,
		-0.392440, 0.095502, 0.914806,
		0.752927, 0.604620, 0.259876,
		62.204098, 52.025528, 61.238506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.316204, 52.159843, 61.462349>,  <61.677048, 51.602295, 61.056595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.316204, 52.159843, 61.462349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.657188, 52.253960, 61.275612>,  <61.861778, 52.310429, 61.163570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.657188, 52.253960, 61.275612>,  <61.316204, 52.159843, 61.462349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.657188, 52.253960, 61.275612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496738, 0.642906, -0.583029,
		0.162957, 0.728911, 0.664931,
		0.852465, 0.235288, -0.466844,
		61.912930, 52.324547, 61.135559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.206562, 52.830215, 61.383156>,  <61.316204, 52.159843, 61.462349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.206562, 52.830215, 61.383156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.491707, 52.760136, 61.111526>,  <61.662792, 52.718086, 60.948551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.491707, 52.760136, 61.111526>,  <61.206562, 52.830215, 61.383156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.491707, 52.760136, 61.111526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403835, 0.689097, -0.601716,
		0.573365, 0.703172, 0.420478,
		0.712860, -0.175199, -0.679070,
		61.705566, 52.707577, 60.907806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.668602, 53.254032, 60.902985>,  <61.206562, 52.830215, 61.383156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.668602, 53.254032, 60.902985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.300354, 53.112892, 60.836113>,  <61.079403, 53.028206, 60.795990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.300354, 53.112892, 60.836113>,  <61.668602, 53.254032, 60.902985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.300354, 53.112892, 60.836113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386778, 0.765538, 0.514154,
		-0.053441, 0.538002, -0.841248,
		-0.920623, -0.352853, -0.167176,
		61.024166, 53.007034, 60.785961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.252163, 53.658283, 60.459648>,  <61.668602, 53.254032, 60.902985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.252163, 53.658283, 60.459648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.070984, 53.462944, 60.758003>,  <60.962276, 53.345741, 60.937016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.070984, 53.462944, 60.758003>,  <61.252163, 53.658283, 60.459648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.070984, 53.462944, 60.758003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331910, 0.868863, 0.367305,
		-0.827449, -0.081197, -0.555640,
		-0.452951, -0.488349, 0.745889,
		60.935097, 53.316441, 60.981770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.926167, 53.291702, 60.220798>,  <61.252163, 53.658283, 60.459648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.926167, 53.291702, 60.220798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.987503, 53.497162, 59.883125>,  <62.024303, 53.620438, 59.680519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.987503, 53.497162, 59.883125>,  <61.926167, 53.291702, 60.220798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.987503, 53.497162, 59.883125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882687, -0.455251, -0.116666,
		-0.444242, -0.727263, -0.523200,
		0.153341, 0.513649, -0.844187,
		62.033504, 53.651257, 59.629868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.014439, 52.809349, 59.661472>,  <61.926167, 53.291702, 60.220798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.014439, 52.809349, 59.661472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.200310, 53.161045, 59.619507>,  <62.311832, 53.372063, 59.594326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.200310, 53.161045, 59.619507>,  <62.014439, 52.809349, 59.661472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.200310, 53.161045, 59.619507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881627, -0.470439, -0.037706,
		-0.082510, -0.074977, -0.993766,
		0.464679, 0.879242, -0.104918,
		62.339714, 53.424816, 59.588032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.572121, 52.818027, 59.057957>,  <62.014439, 52.809349, 59.661472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.572121, 52.818027, 59.057957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.685974, 53.041306, 59.369698>,  <62.754288, 53.175274, 59.556744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.685974, 53.041306, 59.369698>,  <62.572121, 52.818027, 59.057957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.685974, 53.041306, 59.369698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802005, -0.584010, 0.125379,
		0.525138, 0.589361, -0.613909,
		0.284636, 0.558199, 0.779356,
		62.771366, 53.208767, 59.603504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.277000, 52.946808, 58.944286>,  <62.572121, 52.818027, 59.057957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.277000, 52.946808, 58.944286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.221375, 53.029282, 59.331718>,  <63.188000, 53.078766, 59.564178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.221375, 53.029282, 59.331718>,  <63.277000, 52.946808, 58.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.221375, 53.029282, 59.331718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837836, -0.496913, 0.226072,
		0.527913, 0.842951, -0.103646,
		-0.139065, 0.206185, 0.968581,
		63.179657, 53.091137, 59.622292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.885784, 53.201584, 59.206047>,  <63.277000, 52.946808, 58.944286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.885784, 53.201584, 59.206047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.718224, 53.023376, 59.522537>,  <63.617687, 52.916454, 59.712429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.718224, 53.023376, 59.522537>,  <63.885784, 53.201584, 59.206047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.718224, 53.023376, 59.522537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870584, -0.444707, 0.210520,
		0.258073, 0.777015, 0.574149,
		-0.418905, -0.445515, 0.791224,
		63.592552, 52.889721, 59.759903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.315292, 53.240807, 59.789032>,  <63.885784, 53.201584, 59.206047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.315292, 53.240807, 59.789032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.092796, 52.911942, 59.837433>,  <63.959297, 52.714622, 59.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.092796, 52.911942, 59.837433>,  <64.315292, 53.240807, 59.789032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.092796, 52.911942, 59.837433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829682, -0.541178, 0.136944,
		-0.047105, 0.176569, 0.983160,
		-0.556245, -0.822162, 0.121004,
		63.925922, 52.665295, 59.873734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.030251, 53.387562, 59.507832>,  <64.315292, 53.240807, 59.789032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.030251, 53.387562, 59.507832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.054192, 53.764446, 59.639687>,  <65.068558, 53.990578, 59.718800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.054192, 53.764446, 59.639687>,  <65.030251, 53.387562, 59.507832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.054192, 53.764446, 59.639687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867174, 0.114480, -0.484669,
		-0.494396, 0.314864, -0.810205,
		0.059852, 0.942207, 0.329641,
		65.072144, 54.047108, 59.738579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.292130, 53.835953, 58.966206>,  <65.030251, 53.387562, 59.507832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.292130, 53.835953, 58.966206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.396324, 53.992413, 59.319283>,  <65.458839, 54.086288, 59.531128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.396324, 53.992413, 59.319283>,  <65.292130, 53.835953, 58.966206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.396324, 53.992413, 59.319283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938712, 0.111188, -0.326278,
		-0.225769, 0.913585, -0.338217,
		0.260477, 0.391152, 0.882696,
		65.474464, 54.109756, 59.584091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.778145, 54.430904, 58.795811>,  <65.292130, 53.835953, 58.966206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.778145, 54.430904, 58.795811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.831230, 54.241264, 59.143974>,  <65.863083, 54.127480, 59.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.831230, 54.241264, 59.143974>,  <65.778145, 54.430904, 58.795811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.831230, 54.241264, 59.143974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955835, -0.171131, -0.238942,
		0.262237, 0.863678, 0.430455,
		0.132705, -0.474103, 0.870411,
		65.871040, 54.099033, 59.405098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.171455, 54.813713, 59.366924>,  <65.778145, 54.430904, 58.795811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.171455, 54.813713, 59.366924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.213593, 54.417240, 59.334763>,  <66.238876, 54.179356, 59.315464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.213593, 54.417240, 59.334763>,  <66.171455, 54.813713, 59.366924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.213593, 54.417240, 59.334763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869737, 0.131032, -0.475804,
		0.482142, -0.019807, 0.875869,
		0.105342, -0.991180, -0.080403,
		66.245193, 54.119884, 59.310642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.866722, 54.488186, 59.742981>,  <66.171455, 54.813713, 59.366924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.866722, 54.488186, 59.742981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.709740, 54.328575, 59.411499>,  <66.615547, 54.232807, 59.212608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.709740, 54.328575, 59.411499>,  <66.866722, 54.488186, 59.742981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.709740, 54.328575, 59.411499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883777, 0.085981, -0.459941,
		0.254782, -0.912899, 0.318906,
		-0.392460, -0.399027, -0.828706,
		66.592003, 54.208866, 59.162888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.250847, 54.045265, 59.420135>,  <66.866722, 54.488186, 59.742981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.250847, 54.045265, 59.420135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.042099, 54.167713, 59.101654>,  <66.916847, 54.241180, 58.910564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.042099, 54.167713, 59.101654>,  <67.250847, 54.045265, 59.420135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.042099, 54.167713, 59.101654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847818, 0.083161, -0.523726,
		-0.094109, -0.948354, -0.302931,
		-0.521870, 0.306118, -0.796206,
		66.885536, 54.259548, 58.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.894638, 54.311470, 59.711548>,  <67.250847, 54.045265, 59.420135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.894638, 54.311470, 59.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.885658, 54.238384, 60.104713>,  <67.880272, 54.194534, 60.340611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.885658, 54.238384, 60.104713>,  <67.894638, 54.311470, 59.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.885658, 54.238384, 60.104713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971348, -0.236659, -0.021808,
		0.236599, 0.954258, 0.182792,
		-0.022449, -0.182715, 0.982910,
		67.878922, 54.183571, 60.399586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.383652, 54.781864, 60.134243>,  <67.894638, 54.311470, 59.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.383652, 54.781864, 60.134243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.328384, 54.435986, 60.327408>,  <68.295227, 54.228458, 60.443306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.328384, 54.435986, 60.327408>,  <68.383652, 54.781864, 60.134243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.328384, 54.435986, 60.327408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987126, -0.080569, 0.138171,
		-0.080569, 0.495787, 0.864699,
		-0.138171, -0.864699, 0.482913,
		68.286934, 54.176575, 60.472282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.477631, 54.757313, 60.925583>,  <68.383652, 54.781864, 60.134243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.477631, 54.757313, 60.925583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.613342, 54.424255, 60.750496>,  <68.694771, 54.224422, 60.645443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.613342, 54.424255, 60.750496>,  <68.477631, 54.757313, 60.925583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.613342, 54.424255, 60.750496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939374, 0.324462, 0.110906,
		0.049678, -0.448809, 0.892246,
		0.339275, -0.832643, -0.437718,
		68.715126, 54.174461, 60.619179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.958931, 54.489414, 61.379189>,  <68.477631, 54.757313, 60.925583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.958931, 54.489414, 61.379189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.049477, 54.358421, 61.012253>,  <69.103806, 54.279823, 60.792091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.049477, 54.358421, 61.012253>,  <68.958931, 54.489414, 61.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.049477, 54.358421, 61.012253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913980, 0.397009, 0.083812,
		0.336745, -0.857402, 0.389185,
		0.226370, -0.327484, -0.917339,
		69.117386, 54.260178, 60.737053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.640549, 54.279839, 61.553963>,  <68.958931, 54.489414, 61.379189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.640549, 54.279839, 61.553963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.546082, 54.397728, 61.183586>,  <69.489403, 54.468460, 60.961361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.546082, 54.397728, 61.183586>,  <69.640549, 54.279839, 61.553963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.546082, 54.397728, 61.183586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740355, 0.671752, 0.024989,
		0.629367, -0.679623, -0.376840,
		-0.236160, 0.294723, -0.925941,
		69.475235, 54.486145, 60.905804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.231689, 54.295288, 61.041740>,  <69.640549, 54.279839, 61.553963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.231689, 54.295288, 61.041740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.948021, 54.563923, 60.955910>,  <69.777817, 54.725105, 60.904411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.948021, 54.563923, 60.955910>,  <70.231689, 54.295288, 61.041740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.948021, 54.563923, 60.955910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693908, 0.718725, -0.043872,
		0.124757, -0.180009, -0.975722,
		-0.709173, 0.671588, -0.214576,
		69.735268, 54.765400, 60.891537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.455826, 54.690994, 60.528477>,  <70.231689, 54.295288, 61.041740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.455826, 54.690994, 60.528477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.196190, 54.920685, 60.728050>,  <70.040405, 55.058498, 60.847794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.196190, 54.920685, 60.728050>,  <70.455826, 54.690994, 60.528477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.196190, 54.920685, 60.728050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640419, 0.766463, -0.048971,
		-0.410537, 0.287741, -0.865254,
		-0.649094, 0.574230, 0.498936,
		70.001465, 55.092953, 60.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.338409, 55.305481, 60.109623>,  <70.455826, 54.690994, 60.528477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.338409, 55.305481, 60.109623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.325447, 55.370281, 60.504128>,  <70.317673, 55.409161, 60.740829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.325447, 55.370281, 60.504128>,  <70.338409, 55.305481, 60.109623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.325447, 55.370281, 60.504128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664377, 0.740700, -0.099838,
		-0.746695, 0.652012, -0.131629,
		-0.032402, 0.162000, 0.986259,
		70.315727, 55.418880, 60.800007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.267845, 55.998852, 60.092705>,  <70.338409, 55.305481, 60.109623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.267845, 55.998852, 60.092705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.421913, 55.873909, 60.440056>,  <70.514351, 55.798943, 60.648464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.421913, 55.873909, 60.440056>,  <70.267845, 55.998852, 60.092705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.421913, 55.873909, 60.440056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613715, 0.789440, 0.011753,
		-0.689202, 0.528409, 0.495767,
		0.385168, -0.312360, 0.868376,
		70.537460, 55.780201, 60.700569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.283897, 56.550400, 60.548634>,  <70.267845, 55.998852, 60.092705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.283897, 56.550400, 60.548634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.562462, 56.300003, 60.689003>,  <70.729599, 56.149765, 60.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.562462, 56.300003, 60.689003>,  <70.283897, 56.550400, 60.548634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.562462, 56.300003, 60.689003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575544, 0.779277, 0.247943,
		-0.428676, 0.029300, 0.902983,
		0.696410, -0.625994, 0.350921,
		70.771385, 56.112206, 60.794281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.442284, 56.708157, 61.323910>,  <70.283897, 56.550400, 60.548634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.442284, 56.708157, 61.323910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.747818, 56.526123, 61.140839>,  <70.931137, 56.416904, 61.030998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.747818, 56.526123, 61.140839>,  <70.442284, 56.708157, 61.323910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.747818, 56.526123, 61.140839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602347, 0.757337, 0.252227,
		0.231829, -0.468336, 0.852594,
		0.763829, -0.455084, -0.457673,
		70.976967, 56.389599, 61.003536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.112007, 56.735355, 61.677212>,  <70.442284, 56.708157, 61.323910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.112007, 56.735355, 61.677212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.175911, 56.716553, 61.282799>,  <71.214256, 56.705269, 61.046150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.175911, 56.716553, 61.282799>,  <71.112007, 56.735355, 61.677212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.175911, 56.716553, 61.282799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556488, 0.829312, 0.050626,
		0.815352, -0.556805, 0.158649,
		0.159758, -0.047009, -0.986036,
		71.223839, 56.702450, 60.986988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.844498, 56.783665, 61.638149>,  <71.112007, 56.735355, 61.677212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.844498, 56.783665, 61.638149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.646881, 56.885803, 61.305710>,  <71.528313, 56.947086, 61.106247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.646881, 56.885803, 61.305710>,  <71.844498, 56.783665, 61.638149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.646881, 56.885803, 61.305710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729155, 0.642337, -0.236085,
		0.473560, -0.722634, -0.503529,
		-0.494038, 0.255350, -0.831097,
		71.498672, 56.962410, 61.056381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.178772, 56.667061, 61.029869>,  <71.844498, 56.783665, 61.638149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.178772, 56.667061, 61.029869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.936882, 56.978844, 60.964432>,  <71.791748, 57.165913, 60.925167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.936882, 56.978844, 60.964432>,  <72.178772, 56.667061, 61.029869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.936882, 56.978844, 60.964432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771783, 0.522780, -0.362012,
		-0.196648, -0.345175, -0.917706,
		-0.604716, 0.779458, -0.163597,
		71.755470, 57.212681, 60.915352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.393204, 56.850063, 60.389153>,  <72.178772, 56.667061, 61.029869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.393204, 56.850063, 60.389153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.232681, 57.179630, 60.549217>,  <72.136368, 57.377369, 60.645256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.232681, 57.179630, 60.549217>,  <72.393204, 56.850063, 60.389153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.232681, 57.179630, 60.549217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666366, 0.562354, -0.489607,
		-0.628424, 0.070174, -0.774699,
		-0.401297, 0.823914, 0.400158,
		72.112289, 57.426804, 60.669266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.528526, 57.356331, 59.922932>,  <72.393204, 56.850063, 60.389153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.528526, 57.356331, 59.922932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.434959, 57.583195, 60.238808>,  <72.378822, 57.719315, 60.428333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.434959, 57.583195, 60.238808>,  <72.528526, 57.356331, 59.922932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.434959, 57.583195, 60.238808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571106, 0.737483, -0.360496,
		-0.786843, 0.366671, -0.496418,
		-0.233917, 0.567161, 0.789691,
		72.364784, 57.753342, 60.475716>
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
