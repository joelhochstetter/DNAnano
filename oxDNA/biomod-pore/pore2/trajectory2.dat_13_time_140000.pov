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
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<22.346064, 16.534796, -1.779008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534416, 16.843361, -1.607805>,  <22.647427, 17.028500, -1.505083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534416, 16.843361, -1.607805>,  <22.346064, 16.534796, -1.779008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534416, 16.843361, -1.607805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709234, 0.619552, -0.336366,
		-0.524651, -0.145170, 0.838849,
		0.470880, 0.771415, 0.428008,
		22.675680, 17.074785, -1.479403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968212, 16.810888, -1.255671>,  <22.346064, 16.534796, -1.779008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968212, 16.810888, -1.255671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194500, 17.121689, -1.366111>,  <22.330273, 17.308168, -1.432375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194500, 17.121689, -1.366111>,  <21.968212, 16.810888, -1.255671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194500, 17.121689, -1.366111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823202, 0.512688, -0.243906,
		-0.047962, 0.365268, 0.929666,
		0.565719, 0.777001, -0.276100,
		22.364216, 17.354790, -1.448941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676437, 17.385077, -0.904413>,  <21.968212, 16.810888, -1.255671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676437, 17.385077, -0.904413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842323, 17.486469, -1.253987>,  <21.941854, 17.547304, -1.463731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842323, 17.486469, -1.253987>,  <21.676437, 17.385077, -0.904413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.842323, 17.486469, -1.253987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810452, 0.539578, -0.228086,
		0.413741, 0.802872, 0.429203,
		0.414713, 0.253480, -0.873935,
		21.966738, 17.562513, -1.516167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.764870, 18.081873, -0.929179>,  <21.676437, 17.385077, -0.904413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.764870, 18.081873, -0.929179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764118, 17.975311, -1.314723>,  <21.763666, 17.911375, -1.546050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764118, 17.975311, -1.314723>,  <21.764870, 18.081873, -0.929179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764118, 17.975311, -1.314723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641179, 0.739979, -0.203274,
		0.767389, 0.617624, -0.172204,
		-0.001881, -0.266404, -0.963860,
		21.763554, 17.895390, -1.603881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.912001, 18.701572, -1.455854>,  <21.764870, 18.081873, -0.929179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.912001, 18.701572, -1.455854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695541, 18.394493, -1.593143>,  <21.565666, 18.210245, -1.675517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695541, 18.394493, -1.593143>,  <21.912001, 18.701572, -1.455854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.695541, 18.394493, -1.593143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732032, 0.630923, -0.257032,
		0.413869, 0.112157, -0.903401,
		-0.541148, -0.767696, -0.343222,
		21.533197, 18.164185, -1.696110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720690, 18.794834, -2.214683>,  <21.912001, 18.701572, -1.455854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720690, 18.794834, -2.214683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.454842, 18.577553, -2.009468>,  <21.295332, 18.447184, -1.886339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.454842, 18.577553, -2.009468>,  <21.720690, 18.794834, -2.214683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.454842, 18.577553, -2.009468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746647, 0.508767, -0.428572,
		-0.028213, -0.667896, -0.743720,
		-0.664622, -0.543205, 0.513037,
		21.255455, 18.414591, -1.855557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.179195, 18.727730, -2.602480>,  <21.720690, 18.794834, -2.214683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.179195, 18.727730, -2.602480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042740, 18.684582, -2.228958>,  <20.960867, 18.658693, -2.004845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042740, 18.684582, -2.228958>,  <21.179195, 18.727730, -2.602480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042740, 18.684582, -2.228958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922212, 0.230819, -0.310239,
		-0.182074, -0.966999, -0.178219,
		-0.341137, -0.107869, 0.933804,
		20.940399, 18.652220, -1.948817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398983, 18.481115, -2.644623>,  <21.179195, 18.727730, -2.602480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398983, 18.481115, -2.644623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.424595, 18.613468, -2.268024>,  <20.439962, 18.692879, -2.042064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.424595, 18.613468, -2.268024>,  <20.398983, 18.481115, -2.644623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.424595, 18.613468, -2.268024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989197, 0.145713, 0.016062,
		-0.131874, -0.932355, 0.336636,
		0.064028, 0.330881, 0.941498,
		20.443804, 18.712732, -1.985574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989254, 18.145430, -2.072153>,  <20.398983, 18.481115, -2.644623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989254, 18.145430, -2.072153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043175, 18.533543, -1.991771>,  <20.075527, 18.766411, -1.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043175, 18.533543, -1.991771>,  <19.989254, 18.145430, -2.072153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043175, 18.533543, -1.991771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984869, 0.108909, 0.134800,
		0.108909, -0.216086, 0.970281,
		-0.134800, -0.970281, -0.200956,
		20.083614, 18.824627, -1.931485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.651897, 18.414322, -1.384646>,  <19.989254, 18.145430, -2.072153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.651897, 18.414322, -1.384646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.659813, 18.702976, -1.661442>,  <19.664562, 18.876169, -1.827519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.659813, 18.702976, -1.661442>,  <19.651897, 18.414322, -1.384646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659813, 18.702976, -1.661442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982531, 0.142137, 0.120127,
		0.185045, 0.677524, 0.711842,
		0.019791, 0.721636, -0.691990,
		19.665751, 18.919466, -1.869039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.629614, 19.105305, -1.041836>,  <19.651897, 18.414322, -1.384646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.629614, 19.105305, -1.041836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458565, 19.065151, -1.401183>,  <19.355936, 19.041059, -1.616791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458565, 19.065151, -1.401183>,  <19.629614, 19.105305, -1.041836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.458565, 19.065151, -1.401183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887541, 0.235167, 0.396190,
		0.171495, 0.966757, -0.189657,
		-0.427621, -0.100383, -0.898367,
		19.330278, 19.035036, -1.670693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198832, 19.608067, -1.156415>,  <19.629614, 19.105305, -1.041836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198832, 19.608067, -1.156415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021240, 19.322212, -1.372630>,  <18.914686, 19.150700, -1.502359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021240, 19.322212, -1.372630>,  <19.198832, 19.608067, -1.156415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021240, 19.322212, -1.372630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848237, 0.140804, 0.510556,
		-0.288751, 0.685180, -0.668694,
		-0.443978, -0.714634, -0.540538,
		18.888046, 19.107822, -1.534791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442339, 19.710924, -1.470806>,  <19.198832, 19.608067, -1.156415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442339, 19.710924, -1.470806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.419300, 19.315342, -1.416179>,  <18.405478, 19.077993, -1.383403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.419300, 19.315342, -1.416179>,  <18.442339, 19.710924, -1.470806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419300, 19.315342, -1.416179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897157, 0.111278, 0.427465,
		-0.437941, -0.097902, -0.893657,
		-0.057595, -0.988955, 0.136567,
		18.402021, 19.018656, -1.375209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840582, 19.366249, -1.794455>,  <18.442339, 19.710924, -1.470806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840582, 19.366249, -1.794455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973454, 19.174442, -1.469562>,  <18.053177, 19.059359, -1.274626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973454, 19.174442, -1.469562>,  <17.840582, 19.366249, -1.794455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973454, 19.174442, -1.469562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816241, 0.285386, 0.502300,
		-0.472661, -0.829831, -0.296602,
		0.332177, -0.479516, 0.812233,
		18.073107, 19.030588, -1.225892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244947, 18.938547, -1.564688>,  <17.840582, 19.366249, -1.794455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244947, 18.938547, -1.564688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496105, 18.977264, -1.255786>,  <17.646801, 19.000494, -1.070444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496105, 18.977264, -1.255786>,  <17.244947, 18.938547, -1.564688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496105, 18.977264, -1.255786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749468, 0.342751, 0.566409,
		-0.209868, -0.934427, 0.287754,
		0.627895, 0.096791, 0.772256,
		17.684473, 19.006302, -1.024109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889229, 18.912271, -0.849859>,  <17.244947, 18.938547, -1.564688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889229, 18.912271, -0.849859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241337, 19.076237, -0.754278>,  <17.452600, 19.174616, -0.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241337, 19.076237, -0.754278>,  <16.889229, 18.912271, -0.849859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241337, 19.076237, -0.754278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448673, 0.555321, 0.700222,
		0.154336, -0.723595, 0.672749,
		0.880269, 0.409914, 0.238951,
		17.505417, 19.199211, -0.682593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767750, 19.117090, -0.181154>,  <16.889229, 18.912271, -0.849859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.767750, 19.117090, -0.181154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.100662, 19.319374, -0.271991>,  <17.300409, 19.440744, -0.326493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.100662, 19.319374, -0.271991>,  <16.767750, 19.117090, -0.181154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100662, 19.319374, -0.271991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201759, 0.657882, 0.725592,
		0.516336, -0.558079, 0.649573,
		0.832280, 0.505707, -0.227091,
		17.350346, 19.471087, -0.340119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301971, 19.187183, 0.364331>,  <16.767750, 19.117090, -0.181154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301971, 19.187183, 0.364331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.318584, 19.510750, 0.129748>,  <17.328552, 19.704889, -0.011002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.318584, 19.510750, 0.129748>,  <17.301971, 19.187183, 0.364331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318584, 19.510750, 0.129748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376460, 0.556374, 0.740760,
		0.925502, 0.190011, 0.327632,
		0.041533, 0.808915, -0.586457,
		17.331045, 19.753424, -0.046189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.505758, 19.685555, 0.864561>,  <17.301971, 19.187183, 0.364331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.505758, 19.685555, 0.864561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.280182, 19.871338, 0.591431>,  <17.144836, 19.982807, 0.427553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.280182, 19.871338, 0.591431>,  <17.505758, 19.685555, 0.864561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.280182, 19.871338, 0.591431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539008, 0.419417, 0.730452,
		0.625653, 0.779979, 0.013820,
		-0.563941, 0.464458, -0.682825,
		17.111000, 20.010675, 0.386584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526527, 20.437277, 0.902413>,  <17.505758, 19.685555, 0.864561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.526527, 20.437277, 0.902413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162189, 20.332535, 0.774793>,  <16.943586, 20.269690, 0.698221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.162189, 20.332535, 0.774793>,  <17.526527, 20.437277, 0.902413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162189, 20.332535, 0.774793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407107, 0.442580, 0.798991,
		-0.068015, 0.857645, -0.509725,
		-0.910845, -0.261856, -0.319051,
		16.888937, 20.253979, 0.679078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116993, 21.061985, 0.854970>,  <17.526527, 20.437277, 0.902413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116993, 21.061985, 0.854970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.899445, 20.744015, 0.962522>,  <16.768915, 20.553232, 1.027054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.899445, 20.744015, 0.962522>,  <17.116993, 21.061985, 0.854970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899445, 20.744015, 0.962522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282445, 0.475123, 0.833357,
		-0.790208, 0.377296, -0.482929,
		-0.543873, -0.794925, 0.268881,
		16.736282, 20.505537, 1.043186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278008, 21.245653, 0.921966>,  <17.116993, 21.061985, 0.854970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278008, 21.245653, 0.921966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419693, 20.980381, 1.185701>,  <16.504704, 20.821218, 1.343942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419693, 20.980381, 1.185701>,  <16.278008, 21.245653, 0.921966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.419693, 20.980381, 1.185701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479632, 0.476421, 0.736869,
		-0.802799, -0.577247, -0.149329,
		0.354212, -0.663181, 0.659337,
		16.525957, 20.781427, 1.383502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654099, 20.857920, 1.235310>,  <16.278008, 21.245653, 0.921966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654099, 20.857920, 1.235310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975066, 20.868515, 1.473779>,  <16.167646, 20.874872, 1.616860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975066, 20.868515, 1.473779>,  <15.654099, 20.857920, 1.235310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975066, 20.868515, 1.473779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585205, 0.230560, 0.777417,
		-0.116859, -0.972697, 0.200508,
		0.802420, 0.026490, 0.596171,
		16.215792, 20.876463, 1.652630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498324, 20.531546, 1.919188>,  <15.654099, 20.857920, 1.235310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.498324, 20.531546, 1.919188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796487, 20.788250, 1.991314>,  <15.975385, 20.942272, 2.034590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796487, 20.788250, 1.991314>,  <15.498324, 20.531546, 1.919188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796487, 20.788250, 1.991314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452024, 0.287805, 0.844300,
		0.489942, -0.710854, 0.504622,
		0.745407, 0.641760, 0.180315,
		16.020109, 20.980778, 2.045409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686092, 20.469326, 2.554016>,  <15.498324, 20.531546, 1.919188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686092, 20.469326, 2.554016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.795575, 20.851131, 2.506707>,  <15.861265, 21.080215, 2.478322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.795575, 20.851131, 2.506707>,  <15.686092, 20.469326, 2.554016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.795575, 20.851131, 2.506707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195139, 0.175521, 0.964942,
		0.941809, -0.241033, 0.234304,
		0.273708, 0.954513, -0.118272,
		15.877687, 21.137486, 2.471226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661117, 19.716434, 2.397799>,  <15.686092, 20.469326, 2.554016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661117, 19.716434, 2.397799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721202, 19.321121, 2.387004>,  <15.757253, 19.083933, 2.380527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721202, 19.321121, 2.387004>,  <15.661117, 19.716434, 2.397799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721202, 19.321121, 2.387004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458930, 0.045524, 0.887305,
		-0.875682, -0.145670, 0.460392,
		0.150212, -0.988285, -0.026988,
		15.766266, 19.024635, 2.378907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341908, 19.292274, 2.982013>,  <15.661117, 19.716434, 2.397799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341908, 19.292274, 2.982013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686231, 19.154419, 2.832220>,  <15.892824, 19.071705, 2.742344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686231, 19.154419, 2.832220>,  <15.341908, 19.292274, 2.982013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686231, 19.154419, 2.832220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398533, -0.001155, 0.917153,
		-0.316521, -0.938734, 0.136356,
		0.860806, -0.344640, -0.374482,
		15.944472, 19.051027, 2.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634880, 18.626667, 3.227650>,  <15.341908, 19.292274, 2.982013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634880, 18.626667, 3.227650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925361, 18.886280, 3.136975>,  <16.099649, 19.042048, 3.082569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925361, 18.886280, 3.136975>,  <15.634880, 18.626667, 3.227650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925361, 18.886280, 3.136975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238861, 0.070993, 0.968455,
		0.644652, -0.757441, -0.103473,
		0.726202, 0.649032, -0.226689,
		16.143221, 19.080990, 3.068968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368467, 18.502743, 3.546447>,  <15.634880, 18.626667, 3.227650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368467, 18.502743, 3.546447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309101, 18.897984, 3.530328>,  <16.273481, 19.135128, 3.520657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309101, 18.897984, 3.530328>,  <16.368467, 18.502743, 3.546447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309101, 18.897984, 3.530328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244157, 0.076100, 0.966745,
		0.958311, 0.133641, -0.252547,
		-0.148416, 0.988104, -0.040298,
		16.264576, 19.194414, 3.518239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071283, 18.956568, 3.647035>,  <16.368467, 18.502743, 3.546447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071283, 18.956568, 3.647035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705593, 19.049393, 3.779906>,  <16.486179, 19.105087, 3.859628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705593, 19.049393, 3.779906>,  <17.071283, 18.956568, 3.647035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705593, 19.049393, 3.779906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346500, 0.022715, 0.937775,
		0.210078, 0.972435, -0.101177,
		-0.914224, 0.232064, 0.332177,
		16.431326, 19.119013, 3.879559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082251, 19.673994, 3.939206>,  <17.071283, 18.956568, 3.647035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082251, 19.673994, 3.939206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.863903, 19.368736, 4.077562>,  <16.732895, 19.185581, 4.160576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.863903, 19.368736, 4.077562>,  <17.082251, 19.673994, 3.939206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863903, 19.368736, 4.077562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566088, -0.031561, 0.823740,
		-0.617716, 0.645457, 0.449235,
		-0.545867, -0.763144, 0.345890,
		16.700144, 19.139793, 4.181329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861263, 19.866262, 4.535862>,  <17.082251, 19.673994, 3.939206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.861263, 19.866262, 4.535862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903584, 19.468830, 4.519820>,  <16.928976, 19.230371, 4.510195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903584, 19.468830, 4.519820>,  <16.861263, 19.866262, 4.535862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903584, 19.468830, 4.519820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713571, 0.047771, 0.698953,
		-0.692549, -0.102565, 0.714043,
		0.105799, -0.993579, -0.040104,
		16.935324, 19.170757, 4.507789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563272, 19.585644, 5.081657>,  <16.861263, 19.866262, 4.535862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563272, 19.585644, 5.081657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.855564, 19.340260, 4.961854>,  <17.030939, 19.193029, 4.889972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.855564, 19.340260, 4.961854>,  <16.563272, 19.585644, 5.081657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855564, 19.340260, 4.961854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528521, 0.230682, 0.816977,
		-0.432092, -0.755283, 0.492792,
		0.730727, -0.613460, -0.299507,
		17.074781, 19.156221, 4.872002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716532, 19.046240, 5.575770>,  <16.563272, 19.585644, 5.081657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716532, 19.046240, 5.575770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051174, 19.127262, 5.372177>,  <17.251959, 19.175877, 5.250021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051174, 19.127262, 5.372177>,  <16.716532, 19.046240, 5.575770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.051174, 19.127262, 5.372177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425421, 0.345122, 0.836605,
		0.345122, -0.916439, 0.202558,
		-0.836605, -0.202558, 0.508982,
		17.302156, 19.188030, 5.219482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.398378, 18.625725, 5.890180>,  <16.716532, 19.046240, 5.575770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.398378, 18.625725, 5.890180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.432480, 18.986111, 5.720008>,  <17.452940, 19.202343, 5.617905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.432480, 18.986111, 5.720008>,  <17.398378, 18.625725, 5.890180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432480, 18.986111, 5.720008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523573, 0.322770, 0.788473,
		0.847705, -0.289964, -0.444205,
		0.085253, 0.900966, -0.425431,
		17.458055, 19.256401, 5.592379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081970, 18.927912, 5.799807>,  <17.398378, 18.625725, 5.890180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081970, 18.927912, 5.799807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843014, 19.247185, 5.830859>,  <17.699640, 19.438749, 5.849491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.843014, 19.247185, 5.830859>,  <18.081970, 18.927912, 5.799807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843014, 19.247185, 5.830859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454981, 0.257620, 0.852423,
		0.660390, 0.544551, -0.517058,
		-0.597392, 0.798183, 0.077631,
		17.663795, 19.486639, 5.854148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550589, 19.439915, 5.796332>,  <18.081970, 18.927912, 5.799807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550589, 19.439915, 5.796332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.219212, 19.607777, 5.944694>,  <18.020386, 19.708494, 6.033710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.219212, 19.607777, 5.944694>,  <18.550589, 19.439915, 5.796332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.219212, 19.607777, 5.944694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540423, 0.425095, 0.726111,
		0.147046, 0.801988, -0.578959,
		-0.828444, 0.419654, 0.370904,
		17.970678, 19.733673, 6.055965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763269, 20.041531, 6.176327>,  <18.550589, 19.439915, 5.796332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763269, 20.041531, 6.176327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406998, 19.953186, 6.335279>,  <18.193235, 19.900179, 6.430651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406998, 19.953186, 6.335279>,  <18.763269, 20.041531, 6.176327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406998, 19.953186, 6.335279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302557, 0.364447, 0.880703,
		-0.339338, 0.904654, -0.257781,
		-0.890679, -0.220862, 0.397380,
		18.139793, 19.886927, 6.454494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732922, 20.624054, 6.769874>,  <18.763269, 20.041531, 6.176327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732922, 20.624054, 6.769874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.418827, 20.386738, 6.840767>,  <18.230371, 20.244349, 6.883303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.418827, 20.386738, 6.840767>,  <18.732922, 20.624054, 6.769874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418827, 20.386738, 6.840767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165655, 0.074511, 0.983365,
		-0.596628, 0.801531, 0.039773,
		-0.785234, -0.593292, 0.177233,
		18.183256, 20.208750, 6.893937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.353075, 20.912983, 7.243517>,  <18.732922, 20.624054, 6.769874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.353075, 20.912983, 7.243517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258835, 20.530445, 7.312682>,  <18.202291, 20.300922, 7.354181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258835, 20.530445, 7.312682>,  <18.353075, 20.912983, 7.243517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258835, 20.530445, 7.312682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191012, 0.128883, 0.973090,
		-0.952894, 0.262289, 0.152309,
		-0.235601, -0.956344, 0.172913,
		18.188154, 20.243542, 7.364556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878109, 20.846643, 7.822847>,  <18.353075, 20.912983, 7.243517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878109, 20.846643, 7.822847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026489, 20.476704, 7.789268>,  <18.115517, 20.254740, 7.769120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026489, 20.476704, 7.789268>,  <17.878109, 20.846643, 7.822847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026489, 20.476704, 7.789268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270537, 0.021145, 0.962477,
		-0.888372, -0.379743, 0.258049,
		0.370951, -0.924850, -0.083950,
		18.137775, 20.199249, 7.764082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553270, 20.432674, 8.274334>,  <17.878109, 20.846643, 7.822847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553270, 20.432674, 8.274334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904724, 20.256126, 8.201459>,  <18.115597, 20.150198, 8.157734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904724, 20.256126, 8.201459>,  <17.553270, 20.432674, 8.274334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904724, 20.256126, 8.201459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214229, 0.023389, 0.976503,
		-0.426741, -0.897019, 0.115105,
		0.878635, -0.441373, -0.182186,
		18.168314, 20.123714, 8.146803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696911, 20.146603, 8.910845>,  <17.553270, 20.432674, 8.274334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696911, 20.146603, 8.910845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042915, 20.129375, 8.710886>,  <18.250519, 20.119040, 8.590911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.042915, 20.129375, 8.710886>,  <17.696911, 20.146603, 8.910845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042915, 20.129375, 8.710886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498311, 0.190179, 0.845883,
		0.058640, -0.980804, 0.185969,
		0.865013, -0.043068, -0.499897,
		18.302420, 20.116455, 8.560917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206142, 19.727959, 9.327329>,  <17.696911, 20.146603, 8.910845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206142, 19.727959, 9.327329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.444511, 19.938705, 9.084910>,  <18.587532, 20.065153, 8.939460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.444511, 19.938705, 9.084910>,  <18.206142, 19.727959, 9.327329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.444511, 19.938705, 9.084910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598773, 0.211369, 0.772525,
		0.535115, -0.823248, -0.189513,
		0.595922, 0.526865, -0.606045,
		18.623289, 20.096766, 8.903097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776842, 19.519819, 9.525726>,  <18.206142, 19.727959, 9.327329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776842, 19.519819, 9.525726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840530, 19.871563, 9.346226>,  <18.878742, 20.082609, 9.238525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840530, 19.871563, 9.346226>,  <18.776842, 19.519819, 9.525726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840530, 19.871563, 9.346226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676686, 0.233767, 0.698175,
		0.718850, -0.414827, -0.557829,
		0.159220, 0.879358, -0.448751,
		18.888296, 20.135370, 9.211600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.463144, 19.596458, 9.534658>,  <18.776842, 19.519819, 9.525726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.463144, 19.596458, 9.534658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316395, 19.967789, 9.510617>,  <19.228346, 20.190588, 9.496193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316395, 19.967789, 9.510617>,  <19.463144, 19.596458, 9.534658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316395, 19.967789, 9.510617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519204, 0.257941, 0.814797,
		0.771901, 0.267722, -0.576622,
		-0.366874, 0.928327, -0.060102,
		19.206333, 20.246286, 9.492587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988836, 20.059362, 9.719726>,  <19.463144, 19.596458, 9.534658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988836, 20.059362, 9.719726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660419, 20.286495, 9.743252>,  <19.463369, 20.422775, 9.757368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660419, 20.286495, 9.743252>,  <19.988836, 20.059362, 9.719726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660419, 20.286495, 9.743252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372074, 0.454141, 0.809516,
		0.432958, 0.686530, -0.584144,
		-0.821041, 0.567831, 0.058816,
		19.414106, 20.456844, 9.760897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188450, 20.744802, 9.822913>,  <19.988836, 20.059362, 9.719726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188450, 20.744802, 9.822913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812180, 20.771393, 9.956007>,  <19.586418, 20.787346, 10.035864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812180, 20.771393, 9.956007>,  <20.188450, 20.744802, 9.822913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.812180, 20.771393, 9.956007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317319, 0.519637, 0.793275,
		-0.120169, 0.851797, -0.509903,
		-0.940674, 0.066475, 0.332735,
		19.529978, 20.791336, 10.055827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013578, 21.422884, 10.017445>,  <20.188450, 20.744802, 9.822913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013578, 21.422884, 10.017445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744888, 21.217659, 10.231193>,  <19.583675, 21.094524, 10.359442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744888, 21.217659, 10.231193>,  <20.013578, 21.422884, 10.017445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744888, 21.217659, 10.231193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191610, 0.576464, 0.794339,
		-0.715592, 0.635968, -0.288917,
		-0.671724, -0.513063, 0.534371,
		19.543371, 21.063740, 10.391504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607960, 21.927118, 10.444348>,  <20.013578, 21.422884, 10.017445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607960, 21.927118, 10.444348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557365, 21.566086, 10.608957>,  <19.527010, 21.349466, 10.707723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557365, 21.566086, 10.608957>,  <19.607960, 21.927118, 10.444348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557365, 21.566086, 10.608957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302059, 0.360109, 0.882656,
		-0.944861, 0.235946, 0.227084,
		-0.126485, -0.902580, 0.411522,
		19.519421, 21.295311, 10.732414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.187342, 22.024944, 11.039816>,  <19.607960, 21.927118, 10.444348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.187342, 22.024944, 11.039816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406544, 21.695919, 11.100590>,  <19.538065, 21.498505, 11.137054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406544, 21.695919, 11.100590>,  <19.187342, 22.024944, 11.039816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406544, 21.695919, 11.100590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296894, 0.361081, 0.884011,
		-0.782014, -0.439333, 0.442087,
		0.548004, -0.822562, 0.151935,
		19.570946, 21.449150, 11.146171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019659, 21.869061, 11.774761>,  <19.187342, 22.024944, 11.039816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019659, 21.869061, 11.774761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375248, 21.700607, 11.702788>,  <19.588602, 21.599535, 11.659604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.375248, 21.700607, 11.702788>,  <19.019659, 21.869061, 11.774761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375248, 21.700607, 11.702788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333970, 0.327314, 0.883928,
		-0.313356, -0.845880, 0.431619,
		0.888972, -0.421132, -0.179933,
		19.641939, 21.574268, 11.648808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245667, 21.672312, 12.467607>,  <19.019659, 21.869061, 11.774761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245667, 21.672312, 12.467607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566605, 21.626980, 12.233208>,  <19.759169, 21.599781, 12.092567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566605, 21.626980, 12.233208>,  <19.245667, 21.672312, 12.467607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566605, 21.626980, 12.233208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590518, 0.293456, 0.751779,
		0.086766, -0.949231, 0.302377,
		0.802346, -0.113330, -0.586001,
		19.807308, 21.592981, 12.057407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622400, 21.163351, 12.817038>,  <19.245667, 21.672312, 12.467607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622400, 21.163351, 12.817038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.858807, 21.396992, 12.594498>,  <20.000650, 21.537176, 12.460974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.858807, 21.396992, 12.594498>,  <19.622400, 21.163351, 12.817038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858807, 21.396992, 12.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499500, 0.276562, 0.820983,
		0.633402, -0.763112, -0.128305,
		0.591017, 0.584101, -0.556349,
		20.036112, 21.572222, 12.427593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167686, 21.153008, 13.181075>,  <19.622400, 21.163351, 12.817038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167686, 21.153008, 13.181075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243900, 21.455402, 12.930578>,  <20.289629, 21.636839, 12.780280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243900, 21.455402, 12.930578>,  <20.167686, 21.153008, 13.181075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243900, 21.455402, 12.930578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583662, 0.425691, 0.691466,
		0.789326, -0.497262, -0.360133,
		0.190534, 0.755988, -0.626242,
		20.301060, 21.682199, 12.742705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975573, 21.241047, 13.145492>,  <20.167686, 21.153008, 13.181075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975573, 21.241047, 13.145492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801544, 21.588696, 13.051396>,  <20.697126, 21.797285, 12.994939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801544, 21.588696, 13.051396>,  <20.975573, 21.241047, 13.145492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801544, 21.588696, 13.051396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329359, 0.396773, 0.856793,
		0.837995, 0.295289, -0.458878,
		-0.435072, 0.869123, -0.235238,
		20.671022, 21.849432, 12.980825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464344, 21.694111, 13.172092>,  <20.975573, 21.241047, 13.145492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464344, 21.694111, 13.172092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131832, 21.916069, 13.185168>,  <20.932325, 22.049244, 13.193014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131832, 21.916069, 13.185168>,  <21.464344, 21.694111, 13.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131832, 21.916069, 13.185168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379995, 0.524375, 0.761994,
		0.405684, 0.645852, -0.646759,
		-0.831279, 0.554894, 0.032690,
		20.882448, 22.082537, 13.194976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709070, 22.394569, 13.186079>,  <21.464344, 21.694111, 13.172092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709070, 22.394569, 13.186079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328545, 22.412777, 13.308019>,  <21.100229, 22.423702, 13.381183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328545, 22.412777, 13.308019>,  <21.709070, 22.394569, 13.186079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328545, 22.412777, 13.308019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277520, 0.556852, 0.782879,
		-0.134120, 0.829364, -0.542372,
		-0.951312, 0.045519, 0.304850,
		21.043152, 22.426434, 13.399474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.549776, 23.097006, 13.258622>,  <21.709070, 22.394569, 13.186079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.549776, 23.097006, 13.258622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279343, 22.916710, 13.491772>,  <21.117083, 22.808533, 13.631661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279343, 22.916710, 13.491772>,  <21.549776, 23.097006, 13.258622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.279343, 22.916710, 13.491772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191340, 0.656522, 0.729635,
		-0.711546, 0.604822, -0.357620,
		-0.676085, -0.450742, 0.582873,
		21.076517, 22.781487, 13.666634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341156, 23.638878, 13.773323>,  <21.549776, 23.097006, 13.258622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341156, 23.638878, 13.773323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.191296, 23.312134, 13.948766>,  <21.101379, 23.116087, 14.054031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.191296, 23.312134, 13.948766>,  <21.341156, 23.638878, 13.773323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.191296, 23.312134, 13.948766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132835, 0.420891, 0.897333,
		-0.917600, 0.394450, -0.049180,
		-0.374653, -0.816860, 0.438606,
		21.078899, 23.067076, 14.080348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807432, 23.824949, 14.155555>,  <21.341156, 23.638878, 13.773323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807432, 23.824949, 14.155555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.936310, 23.488930, 14.330144>,  <21.013638, 23.287317, 14.434897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.936310, 23.488930, 14.330144>,  <20.807432, 23.824949, 14.155555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.936310, 23.488930, 14.330144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133747, 0.496828, 0.857481,
		-0.937178, -0.217900, 0.272430,
		0.322196, -0.840049, 0.436472,
		21.032969, 23.236916, 14.461085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451334, 23.726749, 14.850115>,  <20.807432, 23.824949, 14.155555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451334, 23.726749, 14.850115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.773422, 23.493725, 14.894374>,  <20.966675, 23.353910, 14.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.773422, 23.493725, 14.894374>,  <20.451334, 23.726749, 14.850115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.773422, 23.493725, 14.894374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094664, 0.310494, 0.945850,
		-0.585371, -0.751143, 0.305164,
		0.805220, -0.582561, 0.110648,
		21.014988, 23.318956, 14.927568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.326197, 23.458920, 15.481979>,  <20.451334, 23.726749, 14.850115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.326197, 23.458920, 15.481979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.714394, 23.383568, 15.421773>,  <20.947311, 23.338356, 15.385649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.714394, 23.383568, 15.421773>,  <20.326197, 23.458920, 15.481979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714394, 23.383568, 15.421773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198568, 0.270241, 0.942094,
		-0.136798, -0.944183, 0.299674,
		0.970493, -0.188382, -0.150516,
		21.005541, 23.327053, 15.376618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641939, 23.120419, 16.037718>,  <20.326197, 23.458920, 15.481979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641939, 23.120419, 16.037718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.943203, 23.315533, 15.861167>,  <21.123962, 23.432602, 15.755237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.943203, 23.315533, 15.861167>,  <20.641939, 23.120419, 16.037718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.943203, 23.315533, 15.861167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314612, 0.322158, 0.892879,
		0.577728, -0.811344, 0.089173,
		0.753160, 0.487786, -0.441378,
		21.169151, 23.461868, 15.728754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266291, 22.984863, 16.418177>,  <20.641939, 23.120419, 16.037718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.266291, 22.984863, 16.418177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335617, 23.319939, 16.211010>,  <21.377213, 23.520985, 16.086710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335617, 23.319939, 16.211010>,  <21.266291, 22.984863, 16.418177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335617, 23.319939, 16.211010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334290, 0.444616, 0.831003,
		0.926397, -0.317162, -0.202972,
		0.173318, 0.837690, -0.517915,
		21.387613, 23.571245, 16.055635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924212, 23.078987, 16.603184>,  <21.266291, 22.984863, 16.418177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924212, 23.078987, 16.603184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.787384, 23.429955, 16.468647>,  <21.705288, 23.640535, 16.387926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.787384, 23.429955, 16.468647>,  <21.924212, 23.078987, 16.603184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787384, 23.429955, 16.468647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298600, 0.440877, 0.846443,
		0.890970, 0.189109, -0.412807,
		-0.342067, 0.877420, -0.336340,
		21.684765, 23.693180, 16.367744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.513323, 23.525890, 16.675421>,  <21.924212, 23.078987, 16.603184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.513323, 23.525890, 16.675421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.167057, 23.726128, 16.677740>,  <21.959297, 23.846270, 16.679131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.167057, 23.726128, 16.677740>,  <22.513323, 23.525890, 16.675421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.167057, 23.726128, 16.677740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323336, 0.550224, 0.769875,
		0.382205, 0.668327, -0.638168,
		-0.865664, 0.500592, 0.005796,
		21.907358, 23.876305, 16.679480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.792917, 24.084080, 16.646975>,  <22.513323, 23.525890, 16.675421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.792917, 24.084080, 16.646975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419220, 24.119659, 16.785122>,  <22.195002, 24.141006, 16.868010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419220, 24.119659, 16.785122>,  <22.792917, 24.084080, 16.646975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419220, 24.119659, 16.785122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356445, 0.264569, 0.896075,
		-0.011670, 0.960256, -0.278877,
		-0.934243, 0.088947, 0.345366,
		22.138947, 24.146343, 16.888731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852762, 24.712917, 16.926025>,  <22.792917, 24.084080, 16.646975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852762, 24.712917, 16.926025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.517151, 24.567837, 17.088247>,  <22.315784, 24.480787, 17.185581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.517151, 24.567837, 17.088247>,  <22.852762, 24.712917, 16.926025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.517151, 24.567837, 17.088247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227643, 0.442993, 0.867143,
		-0.494174, 0.819880, -0.289117,
		-0.839030, -0.362704, 0.405555,
		22.265442, 24.459026, 17.209913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503906, 25.266733, 17.274632>,  <22.852762, 24.712917, 16.926025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503906, 25.266733, 17.274632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363575, 24.925156, 17.428360>,  <22.279375, 24.720209, 17.520597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363575, 24.925156, 17.428360>,  <22.503906, 25.266733, 17.274632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.363575, 24.925156, 17.428360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128383, 0.362669, 0.923033,
		-0.927597, 0.373168, -0.017603,
		-0.350830, -0.853942, 0.384319,
		22.258326, 24.668974, 17.543655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.986788, 25.378683, 17.702923>,  <22.503906, 25.266733, 17.274632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.986788, 25.378683, 17.702923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099476, 25.009544, 17.807985>,  <22.167088, 24.788061, 17.871023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099476, 25.009544, 17.807985>,  <21.986788, 25.378683, 17.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099476, 25.009544, 17.807985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026168, 0.266251, 0.963548,
		-0.959140, -0.278323, 0.050858,
		0.281719, -0.922847, 0.262655,
		22.183992, 24.732691, 17.886782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457140, 25.113665, 18.131605>,  <21.986788, 25.378683, 17.702923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457140, 25.113665, 18.131605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788746, 24.906944, 18.217068>,  <21.987709, 24.782911, 18.268345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788746, 24.906944, 18.217068>,  <21.457140, 25.113665, 18.131605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788746, 24.906944, 18.217068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040469, 0.325614, 0.944636,
		-0.557760, -0.791764, 0.249024,
		0.829015, -0.516803, 0.213657,
		22.037451, 24.751904, 18.281164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.380775, 24.743166, 18.784851>,  <21.457140, 25.113665, 18.131605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.380775, 24.743166, 18.784851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.778030, 24.782768, 18.759943>,  <22.016382, 24.806530, 18.744999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.778030, 24.782768, 18.759943>,  <21.380775, 24.743166, 18.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.778030, 24.782768, 18.759943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026769, 0.325853, 0.945042,
		0.113856, -0.940222, 0.320966,
		0.993137, 0.099007, -0.062269,
		22.075972, 24.812471, 18.741262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.643080, 24.528301, 19.383150>,  <21.380775, 24.743166, 18.784851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.643080, 24.528301, 19.383150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.950390, 24.749012, 19.253355>,  <22.134777, 24.881439, 19.175478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.950390, 24.749012, 19.253355>,  <21.643080, 24.528301, 19.383150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.950390, 24.749012, 19.253355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185043, 0.293832, 0.937775,
		0.612788, -0.780515, 0.123642,
		0.768277, 0.551778, -0.324486,
		22.180874, 24.914545, 19.156010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199459, 24.402100, 19.910515>,  <21.643080, 24.528301, 19.383150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199459, 24.402100, 19.910515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327568, 24.729023, 19.718920>,  <22.404432, 24.925177, 19.603962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327568, 24.729023, 19.718920>,  <22.199459, 24.402100, 19.910515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.327568, 24.729023, 19.718920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258906, 0.410854, 0.874166,
		0.911260, -0.403983, -0.080022,
		0.320271, 0.817310, -0.478989,
		22.423649, 24.974216, 19.575224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.702515, 24.498535, 20.266558>,  <22.199459, 24.402100, 19.910515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.702515, 24.498535, 20.266558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.632458, 24.839848, 20.070095>,  <22.590424, 25.044636, 19.952217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.632458, 24.839848, 20.070095>,  <22.702515, 24.498535, 20.266558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.632458, 24.839848, 20.070095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191257, 0.518850, 0.833196,
		0.965788, 0.051990, -0.254068,
		-0.175141, 0.853283, -0.491156,
		22.579916, 25.095833, 19.922749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.222063, 24.830488, 20.218193>,  <22.702515, 24.498535, 20.266558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.222063, 24.830488, 20.218193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967468, 25.138950, 20.223915>,  <22.814713, 25.324028, 20.227348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.967468, 25.138950, 20.223915>,  <23.222063, 24.830488, 20.218193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.967468, 25.138950, 20.223915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398234, 0.312693, 0.862342,
		0.660527, 0.554564, -0.506125,
		-0.636486, 0.771156, 0.014304,
		22.776522, 25.370296, 20.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.414087, 25.520624, 20.340405>,  <23.222063, 24.830488, 20.218193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.414087, 25.520624, 20.340405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442783, 25.859528, 20.129879>,  <23.460001, 26.062870, 20.003563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442783, 25.859528, 20.129879>,  <23.414087, 25.520624, 20.340405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442783, 25.859528, 20.129879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476388, 0.492703, 0.728216,
		0.876304, 0.198488, 0.438970,
		0.071739, 0.847258, -0.526314,
		23.464306, 26.113705, 19.971985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728018, 26.129093, 20.778708>,  <23.414087, 25.520624, 20.340405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728018, 26.129093, 20.778708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.489414, 26.244099, 20.478971>,  <23.346252, 26.313101, 20.299129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.489414, 26.244099, 20.478971>,  <23.728018, 26.129093, 20.778708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.489414, 26.244099, 20.478971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385360, 0.716382, 0.581631,
		0.704040, 0.635715, -0.316534,
		-0.596511, 0.287512, -0.749341,
		23.310461, 26.330353, 20.254169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.650021, 26.816195, 20.715065>,  <23.728018, 26.129093, 20.778708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.650021, 26.816195, 20.715065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.294506, 26.676132, 20.596779>,  <23.081198, 26.592094, 20.525806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.294506, 26.676132, 20.596779>,  <23.650021, 26.816195, 20.715065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.294506, 26.676132, 20.596779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451690, 0.559875, 0.694634,
		-0.077665, 0.750954, -0.655771,
		-0.888788, -0.350154, -0.295716,
		23.027870, 26.571085, 20.508064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347750, 27.365269, 20.406612>,  <23.650021, 26.816195, 20.715065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347750, 27.365269, 20.406612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104500, 27.093758, 20.571268>,  <22.958549, 26.930851, 20.670061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104500, 27.093758, 20.571268>,  <23.347750, 27.365269, 20.406612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104500, 27.093758, 20.571268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385678, 0.705856, 0.594155,
		-0.693856, 0.202560, -0.691037,
		-0.608125, -0.678776, 0.411640,
		22.922062, 26.890125, 20.694759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.487877, 27.362089, 20.353571>,  <23.347750, 27.365269, 20.406612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.487877, 27.362089, 20.353571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607281, 27.209656, 20.703581>,  <22.678923, 27.118196, 20.913588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607281, 27.209656, 20.703581>,  <22.487877, 27.362089, 20.353571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.607281, 27.209656, 20.703581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592438, 0.644821, 0.482933,
		-0.748271, -0.662557, -0.033283,
		0.298509, -0.381083, 0.875025,
		22.696833, 27.095331, 20.966087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.972630, 27.465336, 20.918480>,  <22.487877, 27.362089, 20.353571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.972630, 27.465336, 20.918480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.745262, 27.425156, 21.245113>,  <21.608841, 27.401049, 21.441093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.745262, 27.425156, 21.245113>,  <21.972630, 27.465336, 20.918480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.745262, 27.425156, 21.245113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816868, -0.049466, -0.574700,
		0.098123, -0.993711, -0.053939,
		-0.568418, -0.100452, 0.816584,
		21.574738, 27.395021, 21.490089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676655, 26.820393, 20.965914>,  <21.972630, 27.465336, 20.918480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676655, 26.820393, 20.965914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453983, 27.102760, 21.141087>,  <21.320381, 27.272181, 21.246191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.453983, 27.102760, 21.141087>,  <21.676655, 26.820393, 20.965914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.453983, 27.102760, 21.141087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731009, -0.165832, -0.661911,
		-0.394634, -0.688604, 0.608350,
		-0.556678, 0.705922, 0.437933,
		21.286980, 27.314537, 21.272467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984007, 26.573351, 21.243938>,  <21.676655, 26.820393, 20.965914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984007, 26.573351, 21.243938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.967274, 26.953575, 21.120853>,  <20.957233, 27.181709, 21.047003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.967274, 26.953575, 21.120853>,  <20.984007, 26.573351, 21.243938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.967274, 26.953575, 21.120853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684464, -0.251627, -0.684246,
		-0.727845, 0.181994, 0.661150,
		-0.041834, 0.950559, -0.307714,
		20.954723, 27.238743, 21.028540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270063, 26.740051, 21.141100>,  <20.984007, 26.573351, 21.243938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270063, 26.740051, 21.141100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478012, 27.004868, 20.925161>,  <20.602781, 27.163757, 20.795597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478012, 27.004868, 20.925161>,  <20.270063, 26.740051, 21.141100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478012, 27.004868, 20.925161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565570, -0.206868, -0.798333,
		-0.640205, 0.720354, 0.266885,
		0.519873, 0.662039, -0.539849,
		20.633974, 27.203480, 20.763206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763868, 27.121433, 20.884109>,  <20.270063, 26.740051, 21.141100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763868, 27.121433, 20.884109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097137, 27.176056, 20.669754>,  <20.297098, 27.208830, 20.541140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.097137, 27.176056, 20.669754>,  <19.763868, 27.121433, 20.884109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097137, 27.176056, 20.669754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543087, 0.019247, -0.839456,
		-0.104319, 0.990445, 0.090198,
		0.833171, 0.136556, -0.535890,
		20.347088, 27.217022, 20.508987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556597, 27.472755, 20.298147>,  <19.763868, 27.121433, 20.884109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556597, 27.472755, 20.298147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.921059, 27.331100, 20.213877>,  <20.139736, 27.246107, 20.163315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.921059, 27.331100, 20.213877>,  <19.556597, 27.472755, 20.298147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.921059, 27.331100, 20.213877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254912, -0.082724, -0.963419,
		0.323753, 0.931528, -0.165648,
		0.911155, -0.354135, -0.210675,
		20.194405, 27.224859, 20.150675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787773, 27.851912, 19.695934>,  <19.556597, 27.472755, 20.298147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787773, 27.851912, 19.695934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002258, 27.514511, 19.708462>,  <20.130949, 27.312071, 19.715979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002258, 27.514511, 19.708462>,  <19.787773, 27.851912, 19.695934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002258, 27.514511, 19.708462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230148, -0.181801, -0.956023,
		0.812101, 0.505424, -0.291614,
		0.536213, -0.843502, 0.031319,
		20.163122, 27.261461, 19.717857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062361, 27.825172, 19.067135>,  <19.787773, 27.851912, 19.695934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062361, 27.825172, 19.067135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102585, 27.454788, 19.212730>,  <20.126720, 27.232557, 19.300087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102585, 27.454788, 19.212730>,  <20.062361, 27.825172, 19.067135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102585, 27.454788, 19.212730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187172, -0.376917, -0.907138,
		0.977166, 0.023096, -0.211218,
		0.100562, -0.925959, 0.363988,
		20.132753, 27.177000, 19.321926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597666, 27.443901, 18.587183>,  <20.062361, 27.825172, 19.067135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597666, 27.443901, 18.587183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.348263, 27.200951, 18.784090>,  <20.198620, 27.055180, 18.902235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.348263, 27.200951, 18.784090>,  <20.597666, 27.443901, 18.587183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.348263, 27.200951, 18.784090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260403, -0.432357, -0.863283,
		0.737175, -0.666453, 0.111416,
		-0.623509, -0.607378, 0.492269,
		20.161211, 27.018738, 18.931770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750198, 26.846827, 18.250135>,  <20.597666, 27.443901, 18.587183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750198, 26.846827, 18.250135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.413532, 26.773582, 18.453339>,  <20.211533, 26.729635, 18.575260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.413532, 26.773582, 18.453339>,  <20.750198, 26.846827, 18.250135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413532, 26.773582, 18.453339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402111, -0.415391, -0.815939,
		0.360429, -0.891023, 0.275989,
		-0.841664, -0.183109, 0.508009,
		20.161034, 26.718649, 18.605742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510567, 26.148169, 18.095287>,  <20.750198, 26.846827, 18.250135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510567, 26.148169, 18.095287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.183292, 26.323906, 18.243637>,  <19.986927, 26.429348, 18.332647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.183292, 26.323906, 18.243637>,  <20.510567, 26.148169, 18.095287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183292, 26.323906, 18.243637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499497, -0.223703, -0.836935,
		-0.284737, -0.870019, 0.402482,
		-0.818186, 0.439345, 0.370875,
		19.937836, 26.455709, 18.354900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973328, 25.691729, 17.905891>,  <20.510567, 26.148169, 18.095287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973328, 25.691729, 17.905891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807186, 26.051144, 17.962612>,  <19.707500, 26.266792, 17.996645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807186, 26.051144, 17.962612>,  <19.973328, 25.691729, 17.905891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.807186, 26.051144, 17.962612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694328, -0.212447, -0.687586,
		-0.587698, -0.384050, 0.712121,
		-0.415356, 0.898539, 0.141803,
		19.682579, 26.320705, 18.005154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391117, 25.539566, 18.180870>,  <19.973328, 25.691729, 17.905891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391117, 25.539566, 18.180870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.322800, 25.899006, 18.019207>,  <19.281809, 26.114670, 17.922209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.322800, 25.899006, 18.019207>,  <19.391117, 25.539566, 18.180870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322800, 25.899006, 18.019207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706134, -0.397703, -0.585840,
		-0.687172, 0.185332, 0.702458,
		-0.170794, 0.898602, -0.404159,
		19.271561, 26.168587, 17.897959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641748, 25.595537, 17.970755>,  <19.391117, 25.539566, 18.180870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.641748, 25.595537, 17.970755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828423, 25.884941, 17.767290>,  <18.940428, 26.058584, 17.645212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828423, 25.884941, 17.767290>,  <18.641748, 25.595537, 17.970755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828423, 25.884941, 17.767290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621936, -0.140440, -0.770372,
		-0.628808, 0.675877, 0.384435,
		0.466687, 0.723510, -0.508662,
		18.968428, 26.101994, 17.614691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128418, 25.981686, 17.750896>,  <18.641748, 25.595537, 17.970755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128418, 25.981686, 17.750896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437939, 26.060310, 17.510035>,  <18.623652, 26.107485, 17.365517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437939, 26.060310, 17.510035>,  <18.128418, 25.981686, 17.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437939, 26.060310, 17.510035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571256, -0.194165, -0.797475,
		-0.273671, 0.961074, -0.037958,
		0.773803, 0.196562, -0.602157,
		18.670080, 26.119278, 17.329388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855183, 26.460148, 17.286524>,  <18.128418, 25.981686, 17.750896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855183, 26.460148, 17.286524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175301, 26.273060, 17.136450>,  <18.367373, 26.160807, 17.046406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.175301, 26.273060, 17.136450>,  <17.855183, 26.460148, 17.286524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175301, 26.273060, 17.136450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505107, -0.188715, -0.842172,
		0.323097, 0.863496, -0.387276,
		0.800297, -0.467719, -0.375185,
		18.415390, 26.132744, 17.023895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945704, 26.752909, 16.598108>,  <17.855183, 26.460148, 17.286524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945704, 26.752909, 16.598108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172466, 26.423431, 16.602999>,  <18.308523, 26.225746, 16.605932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172466, 26.423431, 16.602999>,  <17.945704, 26.752909, 16.598108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172466, 26.423431, 16.602999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474808, -0.338841, -0.812246,
		0.673183, 0.454662, -0.583187,
		0.566905, -0.823692, 0.012224,
		18.342537, 26.176323, 16.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003399, 26.684816, 15.900013>,  <17.945704, 26.752909, 16.598108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003399, 26.684816, 15.900013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.123966, 26.340786, 16.064653>,  <18.196306, 26.134367, 16.163437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.123966, 26.340786, 16.064653>,  <18.003399, 26.684816, 15.900013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123966, 26.340786, 16.064653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199166, -0.478946, -0.854952,
		0.932459, 0.175721, -0.315662,
		0.301418, -0.860077, 0.411600,
		18.214392, 26.082764, 16.188133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600924, 26.430298, 15.506192>,  <18.003399, 26.684816, 15.900013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600924, 26.430298, 15.506192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.414238, 26.125881, 15.686410>,  <18.302227, 25.943230, 15.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.414238, 26.125881, 15.686410>,  <18.600924, 26.430298, 15.506192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.414238, 26.125881, 15.686410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156304, -0.572389, -0.804947,
		0.870487, -0.305258, 0.386096,
		-0.466714, -0.761044, 0.450545,
		18.274223, 25.897568, 15.821573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975151, 25.788763, 15.448491>,  <18.600924, 26.430298, 15.506192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975151, 25.788763, 15.448491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583527, 25.711937, 15.475469>,  <18.348551, 25.665842, 15.491655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583527, 25.711937, 15.475469>,  <18.975151, 25.788763, 15.448491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583527, 25.711937, 15.475469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075471, -0.650191, -0.756013,
		0.189055, -0.735094, 0.651073,
		-0.979062, -0.192065, 0.067443,
		18.289808, 25.654318, 15.495702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.023750, 25.113901, 15.312865>,  <18.975151, 25.788763, 15.448491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.023750, 25.113901, 15.312865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.632954, 25.193996, 15.283486>,  <18.398476, 25.242054, 15.265860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.632954, 25.193996, 15.283486>,  <19.023750, 25.113901, 15.312865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632954, 25.193996, 15.283486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067769, -0.617961, -0.783282,
		-0.202229, -0.760282, 0.617312,
		-0.976991, 0.200237, -0.073446,
		18.339857, 25.254068, 15.261453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760790, 24.542620, 15.038379>,  <19.023750, 25.113901, 15.312865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760790, 24.542620, 15.038379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.438591, 24.768574, 14.966739>,  <18.245272, 24.904146, 14.923755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.438591, 24.768574, 14.966739>,  <18.760790, 24.542620, 15.038379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.438591, 24.768574, 14.966739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107937, -0.437028, -0.892948,
		-0.582685, -0.699936, 0.412998,
		-0.805498, 0.564885, -0.179101,
		18.196941, 24.938040, 14.913009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234320, 24.053934, 14.674867>,  <18.760790, 24.542620, 15.038379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234320, 24.053934, 14.674867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.108418, 24.423363, 14.587285>,  <18.032875, 24.645020, 14.534736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.108418, 24.423363, 14.587285>,  <18.234320, 24.053934, 14.674867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108418, 24.423363, 14.587285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364156, -0.330529, -0.870713,
		-0.876538, -0.194329, 0.440360,
		-0.314756, 0.923573, -0.218955,
		18.013990, 24.700434, 14.521599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547468, 23.997759, 14.396604>,  <18.234320, 24.053934, 14.674867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.547468, 23.997759, 14.396604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673073, 24.357319, 14.274373>,  <17.748436, 24.573055, 14.201035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673073, 24.357319, 14.274373>,  <17.547468, 23.997759, 14.396604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673073, 24.357319, 14.274373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353493, -0.188022, -0.916346,
		-0.881158, 0.395763, 0.258713,
		0.314012, 0.898899, -0.305576,
		17.767277, 24.626989, 14.182700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025656, 24.427546, 14.070086>,  <17.547468, 23.997759, 14.396604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025656, 24.427546, 14.070086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.371323, 24.547882, 13.908738>,  <17.578724, 24.620085, 13.811930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.371323, 24.547882, 13.908738>,  <17.025656, 24.427546, 14.070086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371323, 24.547882, 13.908738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445799, 0.085906, -0.891001,
		-0.233398, 0.949797, 0.208352,
		0.864169, 0.300841, -0.403369,
		17.630573, 24.638134, 13.787727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894714, 24.938711, 13.540860>,  <17.025656, 24.427546, 14.070086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894714, 24.938711, 13.540860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275478, 24.835281, 13.475126>,  <17.503937, 24.773224, 13.435686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275478, 24.835281, 13.475126>,  <16.894714, 24.938711, 13.540860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275478, 24.835281, 13.475126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210189, -0.160915, -0.964327,
		0.222907, 0.952494, -0.207526,
		0.951910, -0.258575, -0.164335,
		17.561052, 24.757710, 13.425826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076799, 25.300337, 12.887649>,  <16.894714, 24.938711, 13.540860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076799, 25.300337, 12.887649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333153, 24.995026, 12.920331>,  <17.486965, 24.811838, 12.939940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333153, 24.995026, 12.920331>,  <17.076799, 25.300337, 12.887649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333153, 24.995026, 12.920331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044823, -0.143467, -0.988639,
		0.766329, 0.629940, -0.126158,
		0.640882, -0.763278, 0.081707,
		17.525417, 24.766043, 12.944843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.510324, 25.397673, 12.278993>,  <17.076799, 25.300337, 12.887649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.510324, 25.397673, 12.278993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.620605, 25.030434, 12.392896>,  <17.686775, 24.810091, 12.461237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.620605, 25.030434, 12.392896>,  <17.510324, 25.397673, 12.278993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620605, 25.030434, 12.392896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096632, -0.268266, -0.958486,
		0.956373, 0.291775, 0.014756,
		0.275704, -0.918096, 0.284757,
		17.703316, 24.755005, 12.478323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107784, 25.221170, 11.910775>,  <17.510324, 25.397673, 12.278993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107784, 25.221170, 11.910775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.939404, 24.879913, 12.034027>,  <17.838375, 24.675159, 12.107978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.939404, 24.879913, 12.034027>,  <18.107784, 25.221170, 11.910775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.939404, 24.879913, 12.034027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004293, -0.341563, -0.939849,
		0.907072, -0.394311, 0.147445,
		-0.420954, -0.853144, 0.308129,
		17.813118, 24.623970, 12.126466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530645, 24.575590, 11.658523>,  <18.107784, 25.221170, 11.910775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530645, 24.575590, 11.658523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.169243, 24.431110, 11.750790>,  <17.952400, 24.344423, 11.806150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.169243, 24.431110, 11.750790>,  <18.530645, 24.575590, 11.658523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169243, 24.431110, 11.750790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065621, -0.415287, -0.907321,
		0.423518, -0.834908, 0.351512,
		-0.903508, -0.361200, 0.230669,
		17.898190, 24.322750, 11.819990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508148, 24.010672, 11.275821>,  <18.530645, 24.575590, 11.658523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508148, 24.010672, 11.275821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126053, 24.094143, 11.359704>,  <17.896795, 24.144226, 11.410034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126053, 24.094143, 11.359704>,  <18.508148, 24.010672, 11.275821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126053, 24.094143, 11.359704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250870, -0.195652, -0.948042,
		-0.156805, -0.958214, 0.239245,
		-0.955236, 0.208677, 0.209708,
		17.839481, 24.156746, 11.422616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170265, 23.445953, 11.142530>,  <18.508148, 24.010672, 11.275821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170265, 23.445953, 11.142530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913719, 23.751663, 11.115602>,  <17.759792, 23.935089, 11.099445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913719, 23.751663, 11.115602>,  <18.170265, 23.445953, 11.142530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913719, 23.751663, 11.115602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303944, -0.333666, -0.892348,
		-0.704463, -0.551859, 0.446299,
		-0.641365, 0.764276, -0.067321,
		17.721310, 23.980946, 11.095407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597908, 23.083717, 11.019297>,  <18.170265, 23.445953, 11.142530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597908, 23.083717, 11.019297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.533894, 23.456043, 10.887858>,  <17.495485, 23.679440, 10.808995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.533894, 23.456043, 10.887858>,  <17.597908, 23.083717, 11.019297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533894, 23.456043, 10.887858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377983, -0.365298, -0.850697,
		-0.911876, -0.011937, 0.410292,
		-0.160034, 0.930814, -0.328595,
		17.485884, 23.735287, 10.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121586, 22.976839, 10.542888>,  <17.597908, 23.083717, 11.019297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121586, 22.976839, 10.542888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233559, 23.350468, 10.454208>,  <17.300743, 23.574644, 10.401001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233559, 23.350468, 10.454208>,  <17.121586, 22.976839, 10.542888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233559, 23.350468, 10.454208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376231, -0.105718, -0.920475,
		-0.883226, 0.341080, 0.321832,
		0.279932, 0.934071, -0.221698,
		17.317537, 23.630690, 10.387699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520346, 23.415224, 10.331325>,  <17.121586, 22.976839, 10.542888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.520346, 23.415224, 10.331325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.848328, 23.585564, 10.178313>,  <17.045116, 23.687767, 10.086507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.848328, 23.585564, 10.178313>,  <16.520346, 23.415224, 10.331325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848328, 23.585564, 10.178313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375583, -0.104074, -0.920927,
		-0.431987, 0.898789, 0.074606,
		0.819954, 0.425849, -0.382528,
		17.094315, 23.713318, 10.063555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200991, 23.918652, 9.868465>,  <16.520346, 23.415224, 10.331325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200991, 23.918652, 9.868465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570602, 23.819180, 9.752311>,  <16.792370, 23.759497, 9.682618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570602, 23.819180, 9.752311>,  <16.200991, 23.918652, 9.868465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570602, 23.819180, 9.752311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339387, -0.183855, -0.922504,
		0.176018, 0.950976, -0.254286,
		0.924032, -0.248678, -0.290387,
		16.847813, 23.744576, 9.665195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258114, 24.348413, 9.321733>,  <16.200991, 23.918652, 9.868465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258114, 24.348413, 9.321733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562706, 24.094009, 9.271711>,  <16.745462, 23.941368, 9.241699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562706, 24.094009, 9.271711>,  <16.258114, 24.348413, 9.321733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562706, 24.094009, 9.271711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302822, -0.178491, -0.936184,
		0.573100, 0.750756, -0.328515,
		0.761482, -0.636008, -0.125052,
		16.791151, 23.903208, 9.234196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417294, 24.458254, 8.668736>,  <16.258114, 24.348413, 9.321733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417294, 24.458254, 8.668736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589962, 24.105434, 8.744259>,  <16.693563, 23.893744, 8.789573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589962, 24.105434, 8.744259>,  <16.417294, 24.458254, 8.668736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589962, 24.105434, 8.744259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241682, -0.314759, -0.917887,
		0.869051, 0.350595, -0.349048,
		0.431672, -0.882049, 0.188809,
		16.719463, 23.840820, 8.800901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838772, 24.346498, 8.115864>,  <16.417294, 24.458254, 8.668736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838772, 24.346498, 8.115864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764671, 23.984756, 8.269653>,  <16.720211, 23.767712, 8.361927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764671, 23.984756, 8.269653>,  <16.838772, 24.346498, 8.115864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764671, 23.984756, 8.269653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116922, -0.368183, -0.922372,
		0.975710, -0.215825, -0.037533,
		-0.185253, -0.904357, 0.384474,
		16.709095, 23.713449, 8.384995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141222, 23.805424, 7.636202>,  <16.838772, 24.346498, 8.115864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141222, 23.805424, 7.636202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884338, 23.585415, 7.849759>,  <16.730209, 23.453409, 7.977893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884338, 23.585415, 7.849759>,  <17.141222, 23.805424, 7.636202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884338, 23.585415, 7.849759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022505, -0.709736, -0.704109,
		0.766200, -0.440169, 0.468177,
		-0.642208, -0.550025, 0.533893,
		16.691675, 23.420408, 8.009927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348440, 23.075327, 7.600673>,  <17.141222, 23.805424, 7.636202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348440, 23.075327, 7.600673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.964031, 23.061848, 7.710439>,  <16.733387, 23.053761, 7.776298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.964031, 23.061848, 7.710439>,  <17.348440, 23.075327, 7.600673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964031, 23.061848, 7.710439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158622, -0.745733, -0.647087,
		0.226445, -0.665392, 0.711320,
		-0.961021, -0.033698, 0.274413,
		16.675724, 23.051739, 7.792763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224739, 22.308155, 7.849646>,  <17.348440, 23.075327, 7.600673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224739, 22.308155, 7.849646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.871681, 22.471142, 7.755911>,  <16.659847, 22.568933, 7.699670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.871681, 22.471142, 7.755911>,  <17.224739, 22.308155, 7.849646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.871681, 22.471142, 7.755911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241483, -0.820804, -0.517655,
		-0.403271, -0.400317, 0.822873,
		-0.882643, 0.407465, -0.234337,
		16.606888, 22.593382, 7.685610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620159, 21.790876, 7.979743>,  <17.224739, 22.308155, 7.849646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620159, 21.790876, 7.979743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462906, 22.061363, 7.730527>,  <16.368555, 22.223656, 7.580997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462906, 22.061363, 7.730527>,  <16.620159, 21.790876, 7.979743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462906, 22.061363, 7.730527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326053, -0.736090, -0.593179,
		-0.859731, -0.030054, 0.509863,
		-0.393132, 0.676216, -0.623040,
		16.344967, 22.264229, 7.543615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910857, 21.547535, 7.765439>,  <16.620159, 21.790876, 7.979743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910857, 21.547535, 7.765439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034283, 21.814114, 7.493958>,  <16.108337, 21.974060, 7.331070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034283, 21.814114, 7.493958>,  <15.910857, 21.547535, 7.765439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034283, 21.814114, 7.493958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467779, -0.514959, -0.718332,
		-0.828234, 0.539134, 0.152852,
		0.308564, 0.666447, -0.678702,
		16.126852, 22.014048, 7.290348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299307, 21.755737, 7.527154>,  <15.910857, 21.547535, 7.765439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.299307, 21.755737, 7.527154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578338, 21.835327, 7.251823>,  <15.745756, 21.883081, 7.086625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578338, 21.835327, 7.251823>,  <15.299307, 21.755737, 7.527154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578338, 21.835327, 7.251823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642245, -0.252263, -0.723799,
		-0.317657, 0.946981, -0.048183,
		0.697578, 0.198974, -0.688327,
		15.787611, 21.895020, 7.045325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.812189, 21.071714, 7.686700>,  <15.299307, 21.755737, 7.527154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.812189, 21.071714, 7.686700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854505, 20.728424, 7.887602>,  <14.879894, 20.522449, 8.008142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.854505, 20.728424, 7.887602>,  <14.812189, 21.071714, 7.686700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854505, 20.728424, 7.887602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802281, 0.224749, 0.553022,
		-0.587498, -0.461452, -0.664761,
		0.105789, -0.858225, 0.502254,
		14.886241, 20.470957, 8.038278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215399, 21.016251, 7.919529>,  <14.812189, 21.071714, 7.686700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215399, 21.016251, 7.919529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.401889, 20.763191, 8.166881>,  <14.513783, 20.611357, 8.315291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.401889, 20.763191, 8.166881>,  <14.215399, 21.016251, 7.919529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401889, 20.763191, 8.166881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430700, 0.448243, 0.783311,
		-0.772743, -0.631535, -0.063498,
		0.466225, -0.632647, 0.618379,
		14.541757, 20.573397, 8.352394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692282, 20.829632, 8.491453>,  <14.215399, 21.016251, 7.919529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692282, 20.829632, 8.491453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046708, 20.737797, 8.652537>,  <14.259364, 20.682695, 8.749188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046708, 20.737797, 8.652537>,  <13.692282, 20.829632, 8.491453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046708, 20.737797, 8.652537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268012, 0.455100, 0.849149,
		-0.378229, -0.860333, 0.341716,
		0.886066, -0.229588, 0.402712,
		14.312528, 20.668921, 8.773351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585979, 20.509331, 9.117605>,  <13.692282, 20.829632, 8.491453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585979, 20.509331, 9.117605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958753, 20.647751, 9.160960>,  <14.182417, 20.730803, 9.186973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958753, 20.647751, 9.160960>,  <13.585979, 20.509331, 9.117605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958753, 20.647751, 9.160960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270552, 0.464501, 0.843232,
		0.241454, -0.815161, 0.526509,
		0.931934, 0.346050, 0.108387,
		14.238333, 20.751566, 9.193476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645144, 20.514730, 9.806822>,  <13.585979, 20.509331, 9.117605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645144, 20.514730, 9.806822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.936160, 20.757030, 9.677982>,  <14.110770, 20.902411, 9.600678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.936160, 20.757030, 9.677982>,  <13.645144, 20.514730, 9.806822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.936160, 20.757030, 9.677982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212313, 0.645235, 0.733890,
		0.652399, -0.465538, 0.598038,
		0.727529, 0.605761, -0.322111,
		14.154423, 20.938755, 9.581352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042838, 20.578272, 10.469087>,  <13.645144, 20.514730, 9.806822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042838, 20.578272, 10.469087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151439, 20.882816, 10.233591>,  <14.216599, 21.065544, 10.092294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151439, 20.882816, 10.233591>,  <14.042838, 20.578272, 10.469087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151439, 20.882816, 10.233591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130665, 0.576893, 0.806300,
		0.953527, -0.295840, 0.057144,
		0.271502, 0.761362, -0.588739,
		14.232889, 21.111225, 10.056970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.681149, 20.810789, 10.799109>,  <14.042838, 20.578272, 10.469087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.681149, 20.810789, 10.799109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542878, 21.100594, 10.560584>,  <14.459916, 21.274477, 10.417469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542878, 21.100594, 10.560584>,  <14.681149, 20.810789, 10.799109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542878, 21.100594, 10.560584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144244, 0.668964, 0.729164,
		0.927201, 0.166040, -0.335752,
		-0.345676, 0.724512, -0.596314,
		14.439176, 21.317947, 10.381690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197914, 21.327875, 10.831983>,  <14.681149, 20.810789, 10.799109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197914, 21.327875, 10.831983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875552, 21.515472, 10.687449>,  <14.682136, 21.628031, 10.600728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875552, 21.515472, 10.687449>,  <15.197914, 21.327875, 10.831983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875552, 21.515472, 10.687449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075152, 0.686415, 0.723316,
		0.587257, 0.555769, -0.588431,
		-0.805904, 0.468994, -0.361335,
		14.633781, 21.656170, 10.579048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263295, 22.065800, 10.898118>,  <15.197914, 21.327875, 10.831983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.263295, 22.065800, 10.898118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864070, 22.060242, 10.873865>,  <14.624535, 22.056908, 10.859313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864070, 22.060242, 10.873865>,  <15.263295, 22.065800, 10.898118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864070, 22.060242, 10.873865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061464, 0.370188, 0.926921,
		0.009567, 0.928853, -0.370325,
		-0.998063, -0.013894, -0.060633,
		14.564651, 22.056074, 10.855676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039388, 22.676796, 11.204326>,  <15.263295, 22.065800, 10.898118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039388, 22.676796, 11.204326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697898, 22.475784, 11.258905>,  <14.493004, 22.355177, 11.291654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.697898, 22.475784, 11.258905>,  <15.039388, 22.676796, 11.204326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697898, 22.475784, 11.258905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076748, 0.380609, 0.921546,
		-0.515038, 0.776274, -0.363503,
		-0.853725, -0.502529, 0.136450,
		14.441780, 22.325026, 11.299841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626636, 23.157394, 11.585771>,  <15.039388, 22.676796, 11.204326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626636, 23.157394, 11.585771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448380, 22.801655, 11.626682>,  <14.341428, 22.588211, 11.651230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448380, 22.801655, 11.626682>,  <14.626636, 23.157394, 11.585771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448380, 22.801655, 11.626682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226691, 0.222636, 0.948180,
		-0.866036, 0.399359, -0.300823,
		-0.445638, -0.889351, 0.102280,
		14.314689, 22.534849, 11.657366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939415, 23.246365, 11.826442>,  <14.626636, 23.157394, 11.585771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939415, 23.246365, 11.826442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996182, 22.870033, 11.949538>,  <14.030243, 22.644236, 12.023396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996182, 22.870033, 11.949538>,  <13.939415, 23.246365, 11.826442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996182, 22.870033, 11.949538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298682, 0.255698, 0.919461,
		-0.943742, -0.222405, -0.244719,
		0.141918, -0.940827, 0.307741,
		14.038758, 22.587786, 12.041861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301967, 23.105755, 12.151956>,  <13.939415, 23.246365, 11.826442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301967, 23.105755, 12.151956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549394, 22.825409, 12.294035>,  <13.697850, 22.657202, 12.379282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.549394, 22.825409, 12.294035>,  <13.301967, 23.105755, 12.151956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549394, 22.825409, 12.294035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280657, 0.225156, 0.933025,
		-0.733898, -0.676828, -0.057427,
		0.618568, -0.700863, 0.355198,
		13.734964, 22.615150, 12.400595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.933517, 22.859783, 12.756857>,  <13.301967, 23.105755, 12.151956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.933517, 22.859783, 12.756857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318603, 22.760109, 12.798977>,  <13.549654, 22.700304, 12.824248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318603, 22.760109, 12.798977>,  <12.933517, 22.859783, 12.756857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318603, 22.760109, 12.798977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005899, 0.369816, 0.929086,
		-0.270456, -0.895066, 0.354557,
		0.962714, -0.249186, 0.105299,
		13.607417, 22.685354, 12.830566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018619, 22.642334, 13.452502>,  <12.933517, 22.859783, 12.756857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018619, 22.642334, 13.452502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.384650, 22.740490, 13.324493>,  <13.604269, 22.799383, 13.247688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.384650, 22.740490, 13.324493>,  <13.018619, 22.642334, 13.452502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.384650, 22.740490, 13.324493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179038, 0.463861, 0.867628,
		0.361352, -0.851245, 0.380535,
		0.915079, 0.245389, -0.320022,
		13.659174, 22.814108, 13.228486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.488697, 22.510868, 14.039522>,  <13.018619, 22.642334, 13.452502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.488697, 22.510868, 14.039522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692121, 22.776707, 13.820552>,  <13.814175, 22.936211, 13.689170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692121, 22.776707, 13.820552>,  <13.488697, 22.510868, 14.039522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692121, 22.776707, 13.820552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288614, 0.467424, 0.835594,
		0.811215, -0.582944, 0.045900,
		0.508559, 0.664599, -0.547427,
		13.844688, 22.976086, 13.656323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192513, 22.362581, 14.210851>,  <13.488697, 22.510868, 14.039522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192513, 22.362581, 14.210851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189240, 22.739109, 14.075883>,  <14.187278, 22.965025, 13.994902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189240, 22.739109, 14.075883>,  <14.192513, 22.362581, 14.210851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189240, 22.739109, 14.075883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458621, 0.303381, 0.835240,
		0.888594, -0.147917, -0.434190,
		-0.008179, 0.941318, -0.337420,
		14.186787, 23.021505, 13.974657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853502, 22.645994, 14.433813>,  <14.192513, 22.362581, 14.210851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853502, 22.645994, 14.433813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630530, 22.967827, 14.351918>,  <14.496747, 23.160927, 14.302781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630530, 22.967827, 14.351918>,  <14.853502, 22.645994, 14.433813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630530, 22.967827, 14.351918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375887, 0.464467, 0.801860,
		0.740257, 0.370023, -0.561340,
		-0.557431, 0.804583, -0.204738,
		14.463301, 23.209202, 14.290497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.336060, 23.271599, 14.319789>,  <14.853502, 22.645994, 14.433813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.336060, 23.271599, 14.319789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974900, 23.419514, 14.407454>,  <14.758204, 23.508263, 14.460054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974900, 23.419514, 14.407454>,  <15.336060, 23.271599, 14.319789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974900, 23.419514, 14.407454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392518, 0.501422, 0.771042,
		0.175226, 0.782198, -0.597881,
		-0.902898, 0.369786, 0.219165,
		14.704031, 23.530449, 14.473204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.475316, 23.947027, 14.300048>,  <15.336060, 23.271599, 14.319789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.475316, 23.947027, 14.300048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161819, 23.873749, 14.537429>,  <14.973721, 23.829781, 14.679857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161819, 23.873749, 14.537429>,  <15.475316, 23.947027, 14.300048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161819, 23.873749, 14.537429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378526, 0.616652, 0.690260,
		-0.492407, 0.765623, -0.413952,
		-0.783743, -0.183198, 0.593452,
		14.926696, 23.818790, 14.715465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352364, 24.590199, 14.516647>,  <15.475316, 23.947027, 14.300048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352364, 24.590199, 14.516647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189149, 24.340431, 14.783063>,  <15.091220, 24.190571, 14.942912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189149, 24.340431, 14.783063>,  <15.352364, 24.590199, 14.516647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189149, 24.340431, 14.783063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436527, 0.507301, 0.743028,
		-0.801842, 0.593926, 0.065578,
		-0.408036, -0.624418, 0.666040,
		15.066738, 24.153107, 14.982875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658398, 24.946796, 15.076612>,  <15.352364, 24.590199, 14.516647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658398, 24.946796, 15.076612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.493812, 24.610634, 15.217698>,  <15.395060, 24.408936, 15.302350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.493812, 24.610634, 15.217698>,  <15.658398, 24.946796, 15.076612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493812, 24.610634, 15.217698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427821, 0.163618, 0.888931,
		-0.804776, 0.516665, 0.292221,
		-0.411466, -0.840409, 0.352716,
		15.370372, 24.358511, 15.323513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368623, 25.133261, 15.728864>,  <15.658398, 24.946796, 15.076612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368623, 25.133261, 15.728864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.394784, 24.734299, 15.740903>,  <15.410480, 24.494921, 15.748126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.394784, 24.734299, 15.740903>,  <15.368623, 25.133261, 15.728864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394784, 24.734299, 15.740903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314305, 0.049219, 0.948045,
		-0.947066, -0.052544, 0.316708,
		0.065402, -0.997405, 0.030098,
		15.414405, 24.435078, 15.749932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210968, 24.983994, 16.443148>,  <15.368623, 25.133261, 15.728864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210968, 24.983994, 16.443148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.395661, 24.658031, 16.303015>,  <15.506477, 24.462454, 16.218935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.395661, 24.658031, 16.303015>,  <15.210968, 24.983994, 16.443148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395661, 24.658031, 16.303015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521617, -0.069996, 0.850303,
		-0.717439, -0.575351, 0.392749,
		0.461732, -0.814906, -0.350331,
		15.534182, 24.413559, 16.197916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200912, 24.566538, 16.996893>,  <15.210968, 24.983994, 16.443148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200912, 24.566538, 16.996893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478827, 24.406101, 16.758099>,  <15.645576, 24.309839, 16.614822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478827, 24.406101, 16.758099>,  <15.200912, 24.566538, 16.996893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478827, 24.406101, 16.758099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586654, -0.164126, 0.793032,
		-0.416059, -0.901215, 0.121269,
		0.694789, -0.401092, -0.596988,
		15.687264, 24.285774, 16.579002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440865, 24.067797, 17.269180>,  <15.200912, 24.566538, 16.996893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440865, 24.067797, 17.269180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759767, 24.136017, 17.037561>,  <15.951108, 24.176949, 16.898590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.759767, 24.136017, 17.037561>,  <15.440865, 24.067797, 17.269180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759767, 24.136017, 17.037561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603205, -0.261633, 0.753453,
		-0.022996, -0.949979, -0.311465,
		0.797254, 0.170551, -0.579049,
		15.998943, 24.187181, 16.863846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835163, 23.501965, 17.450836>,  <15.440865, 24.067797, 17.269180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835163, 23.501965, 17.450836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061417, 23.790321, 17.290648>,  <16.197168, 23.963335, 17.194534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061417, 23.790321, 17.290648>,  <15.835163, 23.501965, 17.450836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061417, 23.790321, 17.290648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699076, -0.161566, 0.696555,
		0.437438, -0.673953, -0.595345,
		0.565633, 0.720891, -0.400469,
		16.231106, 24.006588, 17.170507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564398, 23.235939, 17.477337>,  <15.835163, 23.501965, 17.450836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564398, 23.235939, 17.477337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621483, 23.624290, 17.400372>,  <16.655735, 23.857302, 17.354193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621483, 23.624290, 17.400372>,  <16.564398, 23.235939, 17.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621483, 23.624290, 17.400372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801017, 0.000896, 0.598641,
		0.581381, -0.239561, -0.777564,
		0.142714, 0.970881, -0.192413,
		16.664297, 23.915554, 17.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259434, 23.317516, 17.328327>,  <16.564398, 23.235939, 17.477337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259434, 23.317516, 17.328327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164371, 23.694012, 17.424322>,  <17.107334, 23.919909, 17.481920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164371, 23.694012, 17.424322>,  <17.259434, 23.317516, 17.328327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164371, 23.694012, 17.424322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775208, 0.034913, 0.630740,
		0.585297, 0.335940, -0.737951,
		-0.237655, 0.941236, 0.239989,
		17.093075, 23.976383, 17.496319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864256, 23.763269, 17.249908>,  <17.259434, 23.317516, 17.328327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864256, 23.763269, 17.249908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619987, 23.930767, 17.518753>,  <17.473427, 24.031265, 17.680059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619987, 23.930767, 17.518753>,  <17.864256, 23.763269, 17.249908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619987, 23.930767, 17.518753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736638, -0.011066, 0.676197,
		0.290591, 0.908036, -0.301706,
		-0.610673, 0.418745, 0.672109,
		17.436785, 24.056391, 17.720387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261793, 24.294611, 17.584856>,  <17.864256, 23.763269, 17.249908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261793, 24.294611, 17.584856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.957050, 24.252121, 17.840446>,  <17.774204, 24.226627, 17.993801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.957050, 24.252121, 17.840446>,  <18.261793, 24.294611, 17.584856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.957050, 24.252121, 17.840446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620260, 0.164662, 0.766918,
		-0.186679, 0.980614, -0.059564,
		-0.761858, -0.106223, 0.638975,
		17.728493, 24.220255, 18.032139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292219, 24.852428, 18.078817>,  <18.261793, 24.294611, 17.584856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292219, 24.852428, 18.078817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079288, 24.564293, 18.256689>,  <17.951530, 24.391411, 18.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079288, 24.564293, 18.256689>,  <18.292219, 24.852428, 18.078817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079288, 24.564293, 18.256689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530471, 0.125518, 0.838359,
		-0.659719, 0.682170, 0.315303,
		-0.532327, -0.720340, 0.444678,
		17.919590, 24.348190, 18.390093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003481, 25.146914, 18.669130>,  <18.292219, 24.852428, 18.078817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003481, 25.146914, 18.669130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.987469, 24.752861, 18.735956>,  <17.977861, 24.516430, 18.776051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.987469, 24.752861, 18.735956>,  <18.003481, 25.146914, 18.669130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.987469, 24.752861, 18.735956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543472, 0.118837, 0.830973,
		-0.838473, 0.124057, 0.530635,
		-0.040029, -0.985133, 0.167064,
		17.975460, 24.457321, 18.786076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.962610, 25.103731, 19.331415>,  <18.003481, 25.146914, 18.669130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.962610, 25.103731, 19.331415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097942, 24.742245, 19.226469>,  <18.179142, 24.525352, 19.163502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097942, 24.742245, 19.226469>,  <17.962610, 25.103731, 19.331415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097942, 24.742245, 19.226469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690714, 0.049136, 0.721457,
		-0.639099, -0.425308, 0.640831,
		0.338329, -0.903714, -0.262363,
		18.199442, 24.471130, 19.147760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.794859, 24.578068, 19.881144>,  <17.962610, 25.103731, 19.331415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.794859, 24.578068, 19.881144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117733, 24.454151, 19.680155>,  <18.311459, 24.379801, 19.559561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.117733, 24.454151, 19.680155>,  <17.794859, 24.578068, 19.881144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117733, 24.454151, 19.680155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488302, -0.127865, 0.863256,
		-0.331679, -0.942167, 0.048061,
		0.807187, -0.309792, -0.502473,
		18.359888, 24.361214, 19.529413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019148, 24.081673, 20.351362>,  <17.794859, 24.578068, 19.881144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019148, 24.081673, 20.351362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331532, 24.148651, 20.110676>,  <18.518961, 24.188837, 19.966263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331532, 24.148651, 20.110676>,  <18.019148, 24.081673, 20.351362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331532, 24.148651, 20.110676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620911, -0.103837, 0.776973,
		0.067621, -0.980398, -0.185062,
		0.780959, 0.167446, -0.601718,
		18.565819, 24.198885, 19.930161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484194, 23.535566, 20.498041>,  <18.019148, 24.081673, 20.351362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484194, 23.535566, 20.498041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717876, 23.805271, 20.317343>,  <18.858086, 23.967094, 20.208923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717876, 23.805271, 20.317343>,  <18.484194, 23.535566, 20.498041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717876, 23.805271, 20.317343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684074, -0.109554, 0.721139,
		0.436747, -0.730319, -0.525248,
		0.584205, 0.674264, -0.451745,
		18.893137, 24.007549, 20.181820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062386, 23.196970, 20.418259>,  <18.484194, 23.535566, 20.498041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062386, 23.196970, 20.418259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136955, 23.589878, 20.410374>,  <19.181698, 23.825623, 20.405642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136955, 23.589878, 20.410374>,  <19.062386, 23.196970, 20.418259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136955, 23.589878, 20.410374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651770, -0.108634, 0.750596,
		0.735148, -0.152778, -0.660467,
		0.186424, 0.982271, -0.019713,
		19.192883, 23.884560, 20.404459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774502, 22.936941, 20.757832>,  <19.062386, 23.196970, 20.418259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774502, 22.936941, 20.757832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.692879, 22.745476, 21.099415>,  <19.643906, 22.630596, 21.304365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.692879, 22.745476, 21.099415>,  <19.774502, 22.936941, 20.757832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.692879, 22.745476, 21.099415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630734, -0.602845, -0.488623,
		0.748690, -0.638327, -0.178895,
		-0.204056, -0.478662, 0.853958,
		19.631662, 22.601877, 21.355602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.749487, 22.232721, 20.629951>,  <19.774502, 22.936941, 20.757832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.749487, 22.232721, 20.629951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518204, 22.289265, 20.951372>,  <19.379435, 22.323191, 21.144224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518204, 22.289265, 20.951372>,  <19.749487, 22.232721, 20.629951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518204, 22.289265, 20.951372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719530, -0.552663, -0.420525,
		0.384647, -0.821329, 0.421266,
		-0.578207, 0.141360, 0.803551,
		19.344742, 22.331673, 21.192438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482571, 21.636364, 20.763981>,  <19.749487, 22.232721, 20.629951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.482571, 21.636364, 20.763981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242264, 21.891132, 20.957232>,  <19.098080, 22.043993, 21.073181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242264, 21.891132, 20.957232>,  <19.482571, 21.636364, 20.763981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242264, 21.891132, 20.957232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793332, -0.400522, -0.458482,
		-0.098514, -0.658720, 0.745911,
		-0.600765, 0.636922, 0.483127,
		19.062035, 22.082209, 21.102169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967690, 21.195335, 20.913212>,  <19.482571, 21.636364, 20.763981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967690, 21.195335, 20.913212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.818672, 21.561234, 20.975763>,  <18.729261, 21.780771, 21.013294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.818672, 21.561234, 20.975763>,  <18.967690, 21.195335, 20.913212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.818672, 21.561234, 20.975763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906698, -0.322871, -0.271392,
		-0.197764, -0.242893, 0.949680,
		-0.372544, 0.914744, 0.156378,
		18.706909, 21.835657, 21.022676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.439211, 21.133627, 21.382812>,  <18.967690, 21.195335, 20.913212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.439211, 21.133627, 21.382812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362347, 21.461189, 21.166492>,  <18.316227, 21.657726, 21.036701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362347, 21.461189, 21.166492>,  <18.439211, 21.133627, 21.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362347, 21.461189, 21.166492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856793, -0.408702, -0.314433,
		-0.478518, 0.402932, 0.780171,
		-0.192162, 0.818907, -0.540800,
		18.304697, 21.706861, 21.004253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684511, 21.227545, 21.436129>,  <18.439211, 21.133627, 21.382812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684511, 21.227545, 21.436129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.811943, 21.437519, 21.120420>,  <17.888403, 21.563503, 20.930996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.811943, 21.437519, 21.120420>,  <17.684511, 21.227545, 21.436129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811943, 21.437519, 21.120420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859467, -0.191206, -0.474086,
		-0.399779, 0.829386, 0.390252,
		0.318582, 0.524938, -0.789269,
		17.907518, 21.595001, 20.883640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121798, 21.186760, 21.094881>,  <17.684511, 21.227545, 21.436129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121798, 21.186760, 21.094881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379822, 21.332981, 20.826471>,  <17.534636, 21.420713, 20.665426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379822, 21.332981, 20.826471>,  <17.121798, 21.186760, 21.094881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379822, 21.332981, 20.826471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671491, -0.147932, -0.726096,
		-0.364691, 0.918961, 0.150039,
		0.645058, 0.365551, -0.671023,
		17.573339, 21.442646, 20.625164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672989, 21.503839, 20.684767>,  <17.121798, 21.186760, 21.094881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672989, 21.503839, 20.684767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.004841, 21.472809, 20.463608>,  <17.203953, 21.454191, 20.330914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.004841, 21.472809, 20.463608>,  <16.672989, 21.503839, 20.684767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004841, 21.472809, 20.463608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550410, -0.279662, -0.786662,
		-0.093597, 0.956959, -0.274715,
		0.829631, -0.077577, -0.552896,
		17.253731, 21.449535, 20.297739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579744, 21.977316, 20.156540>,  <16.672989, 21.503839, 20.684767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579744, 21.977316, 20.156540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850525, 21.719482, 20.014414>,  <17.012993, 21.564781, 19.929138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850525, 21.719482, 20.014414>,  <16.579744, 21.977316, 20.156540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850525, 21.719482, 20.014414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504831, -0.055327, -0.861443,
		0.535616, 0.762527, -0.362860,
		0.676950, -0.644586, -0.355313,
		17.053610, 21.526106, 19.907820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906916, 22.203909, 19.472008>,  <16.579744, 21.977316, 20.156540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906916, 22.203909, 19.472008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930168, 21.804760, 19.483797>,  <16.944120, 21.565269, 19.490870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930168, 21.804760, 19.483797>,  <16.906916, 22.203909, 19.472008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930168, 21.804760, 19.483797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545446, -0.056474, -0.836241,
		0.836128, 0.032537, -0.547569,
		0.058132, -0.997874, 0.029472,
		16.947607, 21.505398, 19.492640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095963, 22.054064, 18.854010>,  <16.906916, 22.203909, 19.472008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095963, 22.054064, 18.854010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.938850, 21.713108, 18.992086>,  <16.844584, 21.508535, 19.074932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.938850, 21.713108, 18.992086>,  <17.095963, 22.054064, 18.854010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938850, 21.713108, 18.992086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436178, -0.157779, -0.885920,
		0.809613, -0.498536, -0.309821,
		-0.392780, -0.852389, 0.345190,
		16.821016, 21.457392, 19.095644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207306, 21.570154, 18.351627>,  <17.095963, 22.054064, 18.854010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207306, 21.570154, 18.351627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914616, 21.400429, 18.564995>,  <16.739002, 21.298594, 18.693016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.914616, 21.400429, 18.564995>,  <17.207306, 21.570154, 18.351627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914616, 21.400429, 18.564995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437020, -0.308504, -0.844890,
		0.523061, -0.851342, 0.040306,
		-0.731725, -0.424314, 0.533419,
		16.695099, 21.273134, 18.725021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212286, 20.959736, 18.003374>,  <17.207306, 21.570154, 18.351627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212286, 20.959736, 18.003374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.864555, 21.001648, 18.196577>,  <16.655918, 21.026794, 18.312498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.864555, 21.001648, 18.196577>,  <17.212286, 20.959736, 18.003374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864555, 21.001648, 18.196577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491978, -0.090064, -0.865937,
		-0.047226, -0.990409, 0.129841,
		-0.869326, 0.104773, 0.483006,
		16.603758, 21.033083, 18.341478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784077, 20.416786, 17.854759>,  <17.212286, 20.959736, 18.003374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784077, 20.416786, 17.854759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525917, 20.702110, 17.964046>,  <16.371021, 20.873304, 18.029619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525917, 20.702110, 17.964046>,  <16.784077, 20.416786, 17.854759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525917, 20.702110, 17.964046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522634, -0.151521, -0.838984,
		-0.557061, -0.684270, 0.470593,
		-0.645397, 0.713313, 0.273217,
		16.332298, 20.916103, 18.046011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137482, 20.223562, 17.634298>,  <16.784077, 20.416786, 17.854759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137482, 20.223562, 17.634298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.059650, 20.609768, 17.703495>,  <16.012951, 20.841492, 17.745012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.059650, 20.609768, 17.703495>,  <16.137482, 20.223562, 17.634298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059650, 20.609768, 17.703495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619743, 0.015688, -0.784648,
		-0.760301, -0.259885, 0.595317,
		-0.194579, 0.965512, 0.172990,
		16.001276, 20.899422, 17.755392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497724, 20.306448, 17.601824>,  <16.137482, 20.223562, 17.634298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497724, 20.306448, 17.601824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604819, 20.682041, 17.515451>,  <15.669077, 20.907396, 17.463627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604819, 20.682041, 17.515451>,  <15.497724, 20.306448, 17.601824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604819, 20.682041, 17.515451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657944, 0.014458, -0.752928,
		-0.703865, 0.343659, 0.621670,
		0.267739, 0.938983, -0.215932,
		15.685141, 20.963736, 17.450672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823163, 20.690918, 17.488098>,  <15.497724, 20.306448, 17.601824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823163, 20.690918, 17.488098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122746, 20.878178, 17.300526>,  <15.302496, 20.990534, 17.187983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.122746, 20.878178, 17.300526>,  <14.823163, 20.690918, 17.488098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.122746, 20.878178, 17.300526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494623, -0.075923, -0.865785,
		-0.440919, 0.880382, 0.174695,
		0.748958, 0.468149, -0.468933,
		15.347434, 21.018621, 17.159845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539855, 21.230474, 17.090540>,  <14.823163, 20.690918, 17.488098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.539855, 21.230474, 17.090540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.903571, 21.188202, 16.929531>,  <15.121800, 21.162838, 16.832926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.903571, 21.188202, 16.929531>,  <14.539855, 21.230474, 17.090540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903571, 21.188202, 16.929531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405064, -0.002856, -0.914284,
		0.095472, 0.994396, -0.045404,
		0.909290, -0.105680, -0.402522,
		15.176358, 21.156498, 16.808775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600299, 21.676741, 16.524572>,  <14.539855, 21.230474, 17.090540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600299, 21.676741, 16.524572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906404, 21.427193, 16.461119>,  <15.090066, 21.277464, 16.423046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906404, 21.427193, 16.461119>,  <14.600299, 21.676741, 16.524572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906404, 21.427193, 16.461119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343537, -0.187399, -0.920252,
		0.544388, 0.758730, -0.357731,
		0.765261, -0.623868, -0.158634,
		15.135982, 21.240032, 16.413528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003779, 21.966749, 15.895200>,  <14.600299, 21.676741, 16.524572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.003779, 21.966749, 15.895200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092214, 21.576744, 15.903918>,  <15.145274, 21.342741, 15.909149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092214, 21.576744, 15.903918>,  <15.003779, 21.966749, 15.895200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092214, 21.576744, 15.903918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229398, -0.073714, -0.970537,
		0.947891, 0.209572, -0.239963,
		0.221086, -0.975011, 0.021797,
		15.158540, 21.284241, 15.910458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334788, 21.830868, 15.322393>,  <15.003779, 21.966749, 15.895200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334788, 21.830868, 15.322393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201821, 21.470016, 15.432420>,  <15.122041, 21.253506, 15.498436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201821, 21.470016, 15.432420>,  <15.334788, 21.830868, 15.322393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201821, 21.470016, 15.432420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333406, -0.160416, -0.929036,
		0.882235, -0.400537, -0.247450,
		-0.332418, -0.902129, 0.275066,
		15.102096, 21.199377, 15.514939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664461, 21.351662, 14.881277>,  <15.334788, 21.830868, 15.322393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664461, 21.351662, 14.881277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327945, 21.195580, 15.030927>,  <15.126035, 21.101931, 15.120717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327945, 21.195580, 15.030927>,  <15.664461, 21.351662, 14.881277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327945, 21.195580, 15.030927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340711, -0.154577, -0.927374,
		0.419697, -0.907660, -0.002903,
		-0.841291, -0.390205, 0.374125,
		15.075558, 21.078518, 15.143165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611207, 20.729530, 14.467633>,  <15.664461, 21.351662, 14.881277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611207, 20.729530, 14.467633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.252688, 20.792484, 14.633468>,  <15.037577, 20.830257, 14.732968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.252688, 20.792484, 14.633468>,  <15.611207, 20.729530, 14.467633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252688, 20.792484, 14.633468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443347, -0.297440, -0.845561,
		-0.009765, -0.941679, 0.336370,
		-0.896297, 0.157385, 0.414586,
		14.983799, 20.839701, 14.757843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173761, 20.066936, 14.447599>,  <15.611207, 20.729530, 14.467633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173761, 20.066936, 14.447599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933198, 20.386044, 14.464934>,  <14.788860, 20.577507, 14.475335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933198, 20.386044, 14.464934>,  <15.173761, 20.066936, 14.447599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933198, 20.386044, 14.464934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494436, -0.329033, -0.804531,
		-0.627568, -0.505279, 0.592327,
		-0.601408, 0.797766, 0.043337,
		14.752775, 20.625374, 14.477936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656097, 19.776499, 14.260928>,  <15.173761, 20.066936, 14.447599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656097, 19.776499, 14.260928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.516587, 20.151154, 14.247870>,  <14.432881, 20.375946, 14.240036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.516587, 20.151154, 14.247870>,  <14.656097, 19.776499, 14.260928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.516587, 20.151154, 14.247870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548272, -0.232162, -0.803429,
		-0.760101, -0.262318, 0.594505,
		-0.348775, 0.936638, -0.032645,
		14.411955, 20.432144, 14.238077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959261, 19.652502, 14.121482>,  <14.656097, 19.776499, 14.260928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959261, 19.652502, 14.121482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059968, 20.027607, 14.025804>,  <14.120392, 20.252670, 13.968396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059968, 20.027607, 14.025804>,  <13.959261, 19.652502, 14.121482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059968, 20.027607, 14.025804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628562, -0.029487, -0.777200,
		-0.735882, 0.346023, 0.582018,
		0.251767, 0.937762, -0.239196,
		14.135498, 20.308935, 13.954044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.325438, 19.902109, 13.991624>,  <13.959261, 19.652502, 14.121482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.325438, 19.902109, 13.991624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614392, 20.102165, 13.800620>,  <13.787766, 20.222198, 13.686018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614392, 20.102165, 13.800620>,  <13.325438, 19.902109, 13.991624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614392, 20.102165, 13.800620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438508, -0.202606, -0.875592,
		-0.534665, 0.841909, 0.072955,
		0.722388, 0.500140, -0.477510,
		13.831108, 20.252207, 13.657367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993052, 20.232498, 13.479480>,  <13.325438, 19.902109, 13.991624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993052, 20.232498, 13.479480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377955, 20.237122, 13.370721>,  <13.608897, 20.239895, 13.305466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377955, 20.237122, 13.370721>,  <12.993052, 20.232498, 13.479480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377955, 20.237122, 13.370721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267222, -0.148998, -0.952046,
		-0.051517, 0.988770, -0.140286,
		0.962257, 0.011559, -0.271897,
		13.666633, 20.240589, 13.289152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069445, 20.683172, 12.816622>,  <12.993052, 20.232498, 13.479480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069445, 20.683172, 12.816622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402364, 20.462379, 12.836996>,  <13.602116, 20.329903, 12.849220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402364, 20.462379, 12.836996>,  <13.069445, 20.683172, 12.816622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402364, 20.462379, 12.836996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141533, -0.300446, -0.943240,
		0.535956, 0.777848, -0.328184,
		0.832298, -0.551983, 0.050935,
		13.652053, 20.296785, 12.852277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213604, 20.726669, 12.104209>,  <13.069445, 20.683172, 12.816622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213604, 20.726669, 12.104209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423814, 20.422771, 12.257368>,  <13.549939, 20.240433, 12.349264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423814, 20.422771, 12.257368>,  <13.213604, 20.726669, 12.104209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423814, 20.422771, 12.257368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110327, -0.507113, -0.854789,
		0.843595, 0.406968, -0.350320,
		0.525524, -0.759746, 0.382898,
		13.581470, 20.194847, 12.372237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836214, 20.542721, 11.633091>,  <13.213604, 20.726669, 12.104209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836214, 20.542721, 11.633091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.723256, 20.220184, 11.840963>,  <13.655481, 20.026663, 11.965687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.723256, 20.220184, 11.840963>,  <13.836214, 20.542721, 11.633091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723256, 20.220184, 11.840963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161632, -0.493990, -0.854312,
		0.945584, -0.325249, 0.009169,
		-0.282394, -0.806341, 0.519680,
		13.638537, 19.978281, 11.996867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230355, 20.009930, 11.305450>,  <13.836214, 20.542721, 11.633091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230355, 20.009930, 11.305450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921863, 19.851608, 11.504867>,  <13.736767, 19.756617, 11.624516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.921863, 19.851608, 11.504867>,  <14.230355, 20.009930, 11.305450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.921863, 19.851608, 11.504867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084362, -0.712725, -0.696352,
		0.630941, -0.579106, 0.516285,
		-0.771231, -0.395802, 0.498542,
		13.690494, 19.732868, 11.654429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441651, 19.348431, 11.279296>,  <14.230355, 20.009930, 11.305450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441651, 19.348431, 11.279296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050063, 19.361301, 11.359875>,  <13.815110, 19.369024, 11.408222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050063, 19.361301, 11.359875>,  <14.441651, 19.348431, 11.279296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050063, 19.361301, 11.359875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153868, -0.764834, -0.625582,
		0.133945, -0.643423, 0.753701,
		-0.978971, 0.032177, 0.201448,
		13.756372, 19.370955, 11.420309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.302778, 18.713177, 11.301949>,  <14.441651, 19.348431, 11.279296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.302778, 18.713177, 11.301949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950274, 18.885159, 11.223441>,  <13.738772, 18.988348, 11.176336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950274, 18.885159, 11.223441>,  <14.302778, 18.713177, 11.301949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950274, 18.885159, 11.223441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273859, -0.802971, -0.529376,
		-0.385205, -0.412768, 0.825373,
		-0.881260, 0.429953, -0.196268,
		13.685897, 19.014145, 11.164560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771562, 18.127897, 11.248195>,  <14.302778, 18.713177, 11.301949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771562, 18.127897, 11.248195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.578202, 18.431107, 11.073048>,  <13.462187, 18.613031, 10.967959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.578202, 18.431107, 11.073048>,  <13.771562, 18.127897, 11.248195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.578202, 18.431107, 11.073048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366265, -0.629440, -0.685314,
		-0.795095, -0.170903, 0.581907,
		-0.483398, 0.758022, -0.437869,
		13.433183, 18.658514, 10.941688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.096660, 17.892645, 11.217186>,  <13.771562, 18.127897, 11.248195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.096660, 17.892645, 11.217186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.118773, 18.172768, 10.932508>,  <13.132042, 18.340841, 10.761701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.118773, 18.172768, 10.932508>,  <13.096660, 17.892645, 11.217186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.118773, 18.172768, 10.932508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296046, -0.669238, -0.681526,
		-0.953573, 0.248373, 0.170324,
		0.055286, 0.700308, -0.711697,
		13.135359, 18.382860, 10.718999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.543376, 17.759928, 10.791019>,  <13.096660, 17.892645, 11.217186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.543376, 17.759928, 10.791019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785995, 17.993156, 10.574824>,  <12.931565, 18.133093, 10.445107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785995, 17.993156, 10.574824>,  <12.543376, 17.759928, 10.791019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.785995, 17.993156, 10.574824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010530, -0.685650, -0.727854,
		-0.794978, 0.435786, -0.422019,
		0.606547, 0.583072, -0.540489,
		12.967958, 18.168077, 10.412678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.250878, 17.596432, 10.122806>,  <12.543376, 17.759928, 10.791019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.250878, 17.596432, 10.122806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601607, 17.782917, 10.075768>,  <12.812045, 17.894808, 10.047544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601607, 17.782917, 10.075768>,  <12.250878, 17.596432, 10.122806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.601607, 17.782917, 10.075768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194325, -0.567324, -0.800238,
		-0.439796, 0.678814, -0.588039,
		0.876822, 0.466212, -0.117596,
		12.864654, 17.922781, 10.040488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.243163, 17.746925, 9.544687>,  <12.250878, 17.596432, 10.122806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.243163, 17.746925, 9.544687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619899, 17.679924, 9.661225>,  <12.845941, 17.639723, 9.731148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619899, 17.679924, 9.661225>,  <12.243163, 17.746925, 9.544687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619899, 17.679924, 9.661225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157579, -0.545606, -0.823094,
		0.296829, 0.821132, -0.487478,
		0.941839, -0.167502, 0.291345,
		12.902451, 17.629673, 9.748629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.665169, 17.810923, 8.905553>,  <12.243163, 17.746925, 9.544687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.665169, 17.810923, 8.905553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.886523, 17.578487, 9.144250>,  <13.019336, 17.439026, 9.287468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.886523, 17.578487, 9.144250>,  <12.665169, 17.810923, 8.905553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.886523, 17.578487, 9.144250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322135, -0.511379, -0.796694,
		0.768110, 0.633111, -0.095801,
		0.553386, -0.581087, 0.596742,
		13.052539, 17.404161, 9.323273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.393199, 17.857914, 8.771501>,  <12.665169, 17.810923, 8.905553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.393199, 17.857914, 8.771501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296130, 17.497223, 8.914607>,  <13.237888, 17.280807, 9.000471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296130, 17.497223, 8.914607>,  <13.393199, 17.857914, 8.771501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296130, 17.497223, 8.914607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413686, -0.429767, -0.802598,
		0.877482, -0.046766, 0.477325,
		-0.242673, -0.901728, 0.357766,
		13.223329, 17.226704, 9.021937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.982933, 17.539160, 8.719531>,  <13.393199, 17.857914, 8.771501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.982933, 17.539160, 8.719531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680694, 17.277424, 8.731592>,  <13.499350, 17.120382, 8.738829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680694, 17.277424, 8.731592>,  <13.982933, 17.539160, 8.719531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.680694, 17.277424, 8.731592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397141, -0.494233, -0.773313,
		0.520912, -0.572340, 0.633307,
		-0.755599, -0.654340, 0.030153,
		13.454014, 17.081121, 8.740638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216483, 16.777069, 8.781532>,  <13.982933, 17.539160, 8.719531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216483, 16.777069, 8.781532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873813, 16.805191, 8.577116>,  <13.668210, 16.822063, 8.454467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873813, 16.805191, 8.577116>,  <14.216483, 16.777069, 8.781532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873813, 16.805191, 8.577116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348550, -0.651429, -0.673908,
		-0.380285, -0.755445, 0.533560,
		-0.856677, 0.070304, -0.511039,
		13.616810, 16.826283, 8.423804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938736, 16.114313, 8.751540>,  <14.216483, 16.777069, 8.781532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.938736, 16.114313, 8.751540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821353, 16.276840, 8.405410>,  <13.750923, 16.374357, 8.197732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821353, 16.276840, 8.405410>,  <13.938736, 16.114313, 8.751540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821353, 16.276840, 8.405410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374897, -0.783756, -0.495156,
		-0.879395, -0.469715, 0.077671,
		-0.293458, 0.406319, -0.865325,
		13.733315, 16.398735, 8.145812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.542289, 15.678533, 8.216236>,  <13.938736, 16.114313, 8.751540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.542289, 15.678533, 8.216236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.722056, 15.968723, 8.007733>,  <13.829917, 16.142838, 7.882632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.722056, 15.968723, 8.007733>,  <13.542289, 15.678533, 8.216236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.722056, 15.968723, 8.007733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354736, -0.680458, -0.641202,
		-0.819869, 0.103259, -0.563163,
		0.449419, 0.725476, -0.521256,
		13.856882, 16.186365, 7.851357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646019, 15.515570, 7.493686>,  <13.542289, 15.678533, 8.216236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646019, 15.515570, 7.493686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271558, 15.619827, 7.588076>,  <13.046882, 15.682382, 7.644709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271558, 15.619827, 7.588076>,  <13.646019, 15.515570, 7.493686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271558, 15.619827, 7.588076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248899, -0.017251, -0.968376,
		-0.248331, -0.965281, 0.081024,
		-0.936152, 0.260645, 0.235974,
		12.990712, 15.698021, 7.658868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999121, 15.104462, 7.147875>,  <13.646019, 15.515570, 7.493686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999121, 15.104462, 7.147875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948983, 15.500126, 7.178468>,  <12.918900, 15.737525, 7.196824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948983, 15.500126, 7.178468>,  <12.999121, 15.104462, 7.147875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948983, 15.500126, 7.178468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140823, 0.058571, -0.988301,
		-0.982068, -0.134647, 0.131956,
		-0.125343, 0.989161, 0.076482,
		12.911380, 15.796874, 7.201412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359258, 15.316767, 6.970455>,  <12.999121, 15.104462, 7.147875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.359258, 15.316767, 6.970455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609963, 15.617008, 6.886780>,  <12.760387, 15.797153, 6.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609963, 15.617008, 6.886780>,  <12.359258, 15.316767, 6.970455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.609963, 15.617008, 6.886780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183508, -0.118722, -0.975823,
		-0.757291, 0.649999, 0.063331,
		0.626765, 0.750604, -0.209188,
		12.797993, 15.842190, 6.824023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066173, 16.025745, 6.746845>,  <12.359258, 15.316767, 6.970455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066173, 16.025745, 6.746845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.399051, 15.862061, 6.597181>,  <12.598778, 15.763849, 6.507383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.399051, 15.862061, 6.597181>,  <12.066173, 16.025745, 6.746845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.399051, 15.862061, 6.597181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480063, -0.194063, -0.855499,
		0.277471, 0.891563, -0.357946,
		0.832195, -0.409214, -0.374159,
		12.648709, 15.739297, 6.484933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417036, 16.415964, 6.154456>,  <12.066173, 16.025745, 6.746845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417036, 16.415964, 6.154456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.420577, 16.016010, 6.149442>,  <12.422702, 15.776038, 6.146433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.420577, 16.016010, 6.149442>,  <12.417036, 16.415964, 6.154456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.420577, 16.016010, 6.149442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623219, 0.004286, -0.782035,
		0.781997, 0.014734, -0.623108,
		0.008852, -0.999882, -0.012534,
		12.423233, 15.716045, 6.145681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.143734, 16.603178, 6.211820>,  <12.417036, 16.415964, 6.154456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.143734, 16.603178, 6.211820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404544, 16.732533, 5.937510>,  <13.561029, 16.810146, 5.772925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404544, 16.732533, 5.937510>,  <13.143734, 16.603178, 6.211820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404544, 16.732533, 5.937510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012054, -0.899942, -0.435844,
		-0.758102, 0.292447, -0.582886,
		0.652025, 0.323388, -0.685772,
		13.600151, 16.829550, 5.731779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.044669, 16.443043, 5.448240>,  <13.143734, 16.603178, 6.211820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.044669, 16.443043, 5.448240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648004, 16.454052, 5.498594>,  <12.410005, 16.460657, 5.528807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648004, 16.454052, 5.498594>,  <13.044669, 16.443043, 5.448240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.648004, 16.454052, 5.498594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125769, 0.005903, -0.992042,
		-0.028045, -0.999604, -0.002392,
		-0.991663, 0.027521, 0.125885,
		12.350505, 16.462309, 5.536360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763382, 15.859639, 5.151899>,  <13.044669, 16.443043, 5.448240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763382, 15.859639, 5.151899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499852, 16.160042, 5.169524>,  <12.341735, 16.340282, 5.180099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499852, 16.160042, 5.169524>,  <12.763382, 15.859639, 5.151899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.499852, 16.160042, 5.169524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154191, -0.077474, -0.984999,
		-0.736326, -0.655735, 0.166840,
		-0.658824, 0.751006, 0.044062,
		12.302205, 16.385344, 5.182743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.620491, 15.839844, 4.466784>,  <12.763382, 15.859639, 5.151899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.620491, 15.839844, 4.466784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.311015, 16.068501, 4.576057>,  <12.125329, 16.205694, 4.641621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.311015, 16.068501, 4.576057>,  <12.620491, 15.839844, 4.466784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311015, 16.068501, 4.576057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370613, -0.058634, -0.926935,
		-0.513858, -0.818405, 0.257223,
		-0.773690, 0.571643, 0.273182,
		12.078908, 16.239994, 4.658012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927934, 15.554657, 4.411052>,  <12.620491, 15.839844, 4.466784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927934, 15.554657, 4.411052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873958, 15.948517, 4.366771>,  <11.841572, 16.184834, 4.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873958, 15.948517, 4.366771>,  <11.927934, 15.554657, 4.411052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873958, 15.948517, 4.366771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239051, -0.140776, -0.960748,
		-0.961585, -0.103180, 0.254378,
		-0.134940, 0.984650, -0.110703,
		11.833475, 16.243912, 4.333560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431673, 15.627176, 3.900072>,  <11.927934, 15.554657, 4.411052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431673, 15.627176, 3.900072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.662908, 15.952068, 3.868834>,  <11.801648, 16.147003, 3.850091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.662908, 15.952068, 3.868834>,  <11.431673, 15.627176, 3.900072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.662908, 15.952068, 3.868834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053129, -0.132972, -0.989695,
		-0.814243, 0.567981, -0.120022,
		0.578087, 0.812229, -0.078095,
		11.836334, 16.195738, 3.845406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.116213, 16.209612, 3.450310>,  <11.431673, 15.627176, 3.900072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.116213, 16.209612, 3.450310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.513921, 16.250130, 3.463965>,  <11.752545, 16.274441, 3.472158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.513921, 16.250130, 3.463965>,  <11.116213, 16.209612, 3.450310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.513921, 16.250130, 3.463965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029402, 0.047873, -0.998421,
		-0.102769, 0.993704, 0.044620,
		0.994271, 0.101294, 0.034137,
		11.812202, 16.280518, 3.474206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.535175, 16.713263, 3.014450>,  <11.116213, 16.209612, 3.450310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.535175, 16.713263, 3.014450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795615, 16.410198, 3.032429>,  <11.951879, 16.228359, 3.043216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795615, 16.410198, 3.032429>,  <11.535175, 16.713263, 3.014450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795615, 16.410198, 3.032429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222929, 0.134296, -0.965540,
		0.725516, 0.638682, 0.256345,
		0.651099, -0.757661, 0.044947,
		11.990945, 16.182899, 3.045913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.247256, 16.898306, 2.857854>,  <11.535175, 16.713263, 3.014450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.247256, 16.898306, 2.857854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.201156, 16.509754, 2.774774>,  <12.173495, 16.276623, 2.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.201156, 16.509754, 2.774774>,  <12.247256, 16.898306, 2.857854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.201156, 16.509754, 2.774774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217485, 0.179344, -0.959446,
		0.969235, -0.155749, 0.190591,
		-0.115251, -0.971379, -0.207700,
		12.166580, 16.218340, 2.712464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828970, 16.566149, 2.457599>,  <12.247256, 16.898306, 2.857854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828970, 16.566149, 2.457599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502456, 16.375999, 2.326330>,  <12.306547, 16.261909, 2.247569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502456, 16.375999, 2.326330>,  <12.828970, 16.566149, 2.457599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502456, 16.375999, 2.326330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242213, 0.234086, -0.941561,
		0.524416, -0.848070, -0.075939,
		-0.816285, -0.475376, -0.328172,
		12.257570, 16.233387, 2.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859426, 16.815861, 1.860931>,  <12.828970, 16.566149, 2.457599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859426, 16.815861, 1.860931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561778, 16.548813, 1.851371>,  <12.383189, 16.388584, 1.845635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561778, 16.548813, 1.851371>,  <12.859426, 16.815861, 1.860931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561778, 16.548813, 1.851371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199373, 0.256079, -0.945872,
		0.637604, -0.699076, -0.323658,
		-0.744118, -0.667620, -0.023900,
		12.338542, 16.348526, 1.844201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019276, 16.380756, 1.249847>,  <12.859426, 16.815861, 1.860931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.019276, 16.380756, 1.249847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628528, 16.395359, 1.334127>,  <12.394079, 16.404121, 1.384695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628528, 16.395359, 1.334127>,  <13.019276, 16.380756, 1.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.628528, 16.395359, 1.334127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209407, 0.036255, -0.977156,
		-0.043314, -0.998675, -0.027771,
		-0.976869, 0.036509, 0.210700,
		12.335467, 16.406311, 1.397337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.596227, 15.766045, 0.815253>,  <13.019276, 16.380756, 1.249847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.596227, 15.766045, 0.815253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.403043, 16.100975, 0.917730>,  <12.287132, 16.301933, 0.979215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.403043, 16.100975, 0.917730>,  <12.596227, 15.766045, 0.815253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.403043, 16.100975, 0.917730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041755, 0.270220, -0.961893,
		-0.874647, -0.475252, -0.095543,
		-0.482959, 0.837327, 0.256191,
		12.258155, 16.352173, 0.994587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.929888, 15.871582, 0.495134>,  <12.596227, 15.766045, 0.815253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.929888, 15.871582, 0.495134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096351, 16.229267, 0.561102>,  <12.196228, 16.443878, 0.600682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096351, 16.229267, 0.561102>,  <11.929888, 15.871582, 0.495134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096351, 16.229267, 0.561102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068169, 0.211541, -0.974989,
		-0.906734, 0.394506, 0.148992,
		0.416157, 0.894212, 0.164919,
		12.221198, 16.497530, 0.610577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.667257, 16.345245, 0.019518>,  <11.929888, 15.871582, 0.495134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.667257, 16.345245, 0.019518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.025821, 16.462082, 0.152864>,  <12.240959, 16.532185, 0.232872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.025821, 16.462082, 0.152864>,  <11.667257, 16.345245, 0.019518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025821, 16.462082, 0.152864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331084, 0.058771, -0.941769,
		-0.294676, 0.954582, -0.044024,
		0.896409, 0.292093, 0.333365,
		12.294744, 16.549709, 0.252874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.677292, 16.997595, -0.304821>,  <11.667257, 16.345245, 0.019518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.677292, 16.997595, -0.304821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.000150, 16.778099, -0.217733>,  <12.193865, 16.646402, -0.165480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.000150, 16.778099, -0.217733>,  <11.677292, 16.997595, -0.304821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.000150, 16.778099, -0.217733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212193, -0.074485, -0.974385,
		0.550900, 0.832669, 0.056318,
		0.807145, -0.548739, 0.217720,
		12.242293, 16.613478, -0.152417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.200568, 17.345200, -0.794785>,  <11.677292, 16.997595, -0.304821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.200568, 17.345200, -0.794785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149417, 17.531059, -0.444300>,  <12.118726, 17.642574, -0.234009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149417, 17.531059, -0.444300>,  <12.200568, 17.345200, -0.794785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149417, 17.531059, -0.444300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510939, 0.788072, -0.343341,
		-0.850052, 0.403786, -0.338185,
		-0.127878, 0.464650, 0.876212,
		12.111053, 17.670454, -0.181436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.098977, 17.979071, -0.913111>,  <12.200568, 17.345200, -0.794785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.098977, 17.979071, -0.913111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.237868, 18.021633, -0.540421>,  <12.321203, 18.047171, -0.316807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.237868, 18.021633, -0.540421>,  <12.098977, 17.979071, -0.913111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.237868, 18.021633, -0.540421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426561, 0.866890, -0.257968,
		-0.835152, 0.487011, 0.255621,
		0.347229, 0.106405, 0.931724,
		12.342037, 18.053555, -0.260904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.760066, 18.618361, -0.547968>,  <12.098977, 17.979071, -0.913111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.760066, 18.618361, -0.547968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136012, 18.494045, -0.491306>,  <12.361580, 18.419456, -0.457309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136012, 18.494045, -0.491306>,  <11.760066, 18.618361, -0.547968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.136012, 18.494045, -0.491306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341544, 0.853141, -0.394332,
		0.001702, 0.419000, 0.907985,
		0.939864, -0.310788, 0.141655,
		12.417972, 18.400808, -0.448809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220576, 19.089193, -0.091529>,  <11.760066, 18.618361, -0.547968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220576, 19.089193, -0.091529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.322194, 18.899895, -0.428931>,  <12.383165, 18.786316, -0.631371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.322194, 18.899895, -0.428931>,  <12.220576, 19.089193, -0.091529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.322194, 18.899895, -0.428931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390321, 0.848109, -0.358274,
		0.884935, -0.238220, 0.400176,
		0.254045, -0.473247, -0.843504,
		12.398408, 18.757921, -0.681982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.011006, 19.118267, -0.229816>,  <12.220576, 19.089193, -0.091529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.011006, 19.118267, -0.229816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746614, 19.096581, -0.529192>,  <12.587977, 19.083569, -0.708818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.746614, 19.096581, -0.529192>,  <13.011006, 19.118267, -0.229816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.746614, 19.096581, -0.529192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288361, 0.902455, -0.320036,
		0.692784, -0.427359, -0.580874,
		-0.660983, -0.054214, -0.748440,
		12.548319, 19.080317, -0.753724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321141, 19.304136, -0.825501>,  <13.011006, 19.118267, -0.229816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321141, 19.304136, -0.825501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930732, 19.388584, -0.846687>,  <12.696486, 19.439253, -0.859399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930732, 19.388584, -0.846687>,  <13.321141, 19.304136, -0.825501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930732, 19.388584, -0.846687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217660, 0.946013, -0.240173,
		-0.000600, -0.245943, -0.969284,
		-0.976025, 0.211119, -0.052964,
		12.637924, 19.451920, -0.862577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828195, 18.822193, -0.763534>,  <13.321141, 19.304136, -0.825501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828195, 18.822193, -0.763534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971417, 19.158264, -0.926455>,  <14.057351, 19.359907, -1.024208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971417, 19.158264, -0.926455>,  <13.828195, 18.822193, -0.763534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971417, 19.158264, -0.926455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600423, -0.541257, -0.588670,
		-0.715044, -0.033777, -0.698263,
		0.358056, 0.840178, -0.407304,
		14.078835, 19.410318, -1.048647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719869, 18.903383, -1.509010>,  <13.828195, 18.822193, -0.763534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719869, 18.903383, -1.509010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056287, 19.082535, -1.387651>,  <14.258138, 19.190025, -1.314836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056287, 19.082535, -1.387651>,  <13.719869, 18.903383, -1.509010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056287, 19.082535, -1.387651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540917, -0.688788, -0.482680,
		-0.007206, 0.570067, -0.821566,
		0.841045, 0.447877, 0.303396,
		14.308600, 19.216898, -1.296633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.174013, 19.207394, -2.124617>,  <13.719869, 18.903383, -1.509010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.174013, 19.207394, -2.124617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400718, 19.091267, -1.816202>,  <14.536740, 19.021591, -1.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400718, 19.091267, -1.816202>,  <14.174013, 19.207394, -2.124617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400718, 19.091267, -1.816202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443224, -0.681455, -0.582384,
		0.694503, 0.671815, -0.257547,
		0.566761, -0.290317, 0.771037,
		14.570746, 19.004171, -1.584891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.820126, 18.856121, 15.465654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.958130, 19.199917, 15.314794>,  <20.040932, 19.406195, 15.224277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.958130, 19.199917, 15.314794>,  <19.820126, 18.856121, 15.465654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.958130, 19.199917, 15.314794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506235, -0.167971, -0.845879,
		-0.790376, 0.482764, 0.377152,
		0.345010, 0.859491, -0.377152,
		20.061632, 19.457764, 15.201648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161896, 19.261784, 15.175669>,  <19.820126, 18.856121, 15.465654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161896, 19.261784, 15.175669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.483040, 19.412388, 14.990777>,  <19.675726, 19.502750, 14.879842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.483040, 19.412388, 14.990777>,  <19.161896, 19.261784, 15.175669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483040, 19.412388, 14.990777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432459, -0.165871, -0.886265,
		-0.410358, 0.911442, 0.029655,
		0.802860, 0.376511, -0.462228,
		19.723898, 19.525341, 14.852109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903540, 19.697510, 14.705046>,  <19.161896, 19.261784, 15.175669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903540, 19.697510, 14.705046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.275803, 19.639565, 14.570649>,  <19.499161, 19.604797, 14.490011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.275803, 19.639565, 14.570649>,  <18.903540, 19.697510, 14.705046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275803, 19.639565, 14.570649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355950, -0.145872, -0.923050,
		0.084705, 0.978640, -0.187321,
		0.930658, -0.144864, -0.335991,
		19.555000, 19.596106, 14.469851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.928513, 20.130955, 14.166064>,  <18.903540, 19.697510, 14.705046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.928513, 20.130955, 14.166064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.209366, 19.854336, 14.098212>,  <19.377878, 19.688364, 14.057501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.209366, 19.854336, 14.098212>,  <18.928513, 20.130955, 14.166064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.209366, 19.854336, 14.098212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165844, 0.072852, -0.983457,
		0.692463, 0.718650, -0.063537,
		0.702133, -0.691545, -0.169631,
		19.420006, 19.646872, 14.047323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.287315, 20.465458, 13.598007>,  <18.928513, 20.130955, 14.166064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.287315, 20.465458, 13.598007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.355621, 20.071857, 13.577682>,  <19.396605, 19.835697, 13.565486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.355621, 20.071857, 13.577682>,  <19.287315, 20.465458, 13.598007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355621, 20.071857, 13.577682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296581, -0.002152, -0.955006,
		0.939617, 0.178150, -0.292203,
		0.170763, -0.984001, -0.050814,
		19.406851, 19.776657, 13.562437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.693937, 20.349222, 13.046024>,  <19.287315, 20.465458, 13.598007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.693937, 20.349222, 13.046024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.529724, 19.989155, 13.104208>,  <19.431196, 19.773115, 13.139118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.529724, 19.989155, 13.104208>,  <19.693937, 20.349222, 13.046024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529724, 19.989155, 13.104208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294066, -0.020299, -0.955570,
		0.863126, -0.435070, -0.256375,
		-0.410535, -0.900168, 0.145460,
		19.406563, 19.719105, 13.147846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004044, 19.867096, 12.513943>,  <19.693937, 20.349222, 13.046024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004044, 19.867096, 12.513943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.666656, 19.690636, 12.636545>,  <19.464224, 19.584759, 12.710107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.666656, 19.690636, 12.636545>,  <20.004044, 19.867096, 12.513943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.666656, 19.690636, 12.636545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187838, -0.292348, -0.937683,
		0.503266, -0.848480, 0.163721,
		-0.843469, -0.441151, 0.306506,
		19.413616, 19.558290, 12.728497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015404, 19.204163, 12.316840>,  <20.004044, 19.867096, 12.513943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015404, 19.204163, 12.316840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.624809, 19.246063, 12.392202>,  <19.390451, 19.271204, 12.437420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.624809, 19.246063, 12.392202>,  <20.015404, 19.204163, 12.316840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624809, 19.246063, 12.392202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214888, -0.542427, -0.812155,
		0.017121, -0.833546, 0.552184,
		-0.976489, 0.104753, 0.188406,
		19.331863, 19.277489, 12.448725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785654, 18.617302, 12.067462>,  <20.015404, 19.204163, 12.316840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.785654, 18.617302, 12.067462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.454670, 18.841557, 12.080094>,  <19.256081, 18.976109, 12.087674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.454670, 18.841557, 12.080094>,  <19.785654, 18.617302, 12.067462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454670, 18.841557, 12.080094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277218, -0.358951, -0.891237,
		-0.488326, -0.746216, 0.452437,
		-0.827459, 0.560638, 0.031580,
		19.206432, 19.009748, 12.089568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241869, 18.161100, 11.948602>,  <19.785654, 18.617302, 12.067462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241869, 18.161100, 11.948602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.095272, 18.523701, 11.864755>,  <19.007315, 18.741261, 11.814446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.095272, 18.523701, 11.864755>,  <19.241869, 18.161100, 11.948602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095272, 18.523701, 11.864755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402399, -0.357564, -0.842748,
		-0.838903, -0.224510, 0.495819,
		-0.366492, 0.906501, -0.209619,
		18.985325, 18.795650, 11.801869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710779, 18.008924, 11.632875>,  <19.241869, 18.161100, 11.948602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710779, 18.008924, 11.632875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.738899, 18.391594, 11.519854>,  <18.755772, 18.621195, 11.452041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.738899, 18.391594, 11.519854>,  <18.710779, 18.008924, 11.632875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738899, 18.391594, 11.519854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460850, -0.220068, -0.859760,
		-0.884689, 0.190657, 0.425411,
		0.070300, 0.956671, -0.282556,
		18.759989, 18.678595, 11.435087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002239, 18.289093, 11.512396>,  <18.710779, 18.008924, 11.632875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002239, 18.289093, 11.512396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.273777, 18.477989, 11.287484>,  <18.436699, 18.591328, 11.152537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.273777, 18.477989, 11.287484>,  <18.002239, 18.289093, 11.512396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273777, 18.477989, 11.287484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469337, -0.309853, -0.826870,
		-0.564707, 0.825214, 0.011299,
		0.678844, 0.472243, -0.562279,
		18.477430, 18.619661, 11.118800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.724031, 18.918291, 11.080459>,  <18.002239, 18.289093, 11.512396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.724031, 18.918291, 11.080459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.045712, 18.765270, 10.898505>,  <18.238720, 18.673458, 10.789333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.045712, 18.765270, 10.898505>,  <17.724031, 18.918291, 11.080459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045712, 18.765270, 10.898505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524821, -0.097825, -0.845573,
		0.278977, 0.918740, -0.279442,
		0.804198, -0.382553, -0.454884,
		18.286970, 18.650505, 10.762040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552877, 18.881035, 10.371442>,  <17.724031, 18.918291, 11.080459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552877, 18.881035, 10.371442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902721, 18.689648, 10.340130>,  <18.112627, 18.574816, 10.321342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902721, 18.689648, 10.340130>,  <17.552877, 18.881035, 10.371442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902721, 18.689648, 10.340130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329645, -0.468464, -0.819680,
		0.355521, 0.742703, -0.567447,
		0.874608, -0.478470, -0.078279,
		18.165104, 18.546106, 10.316646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825687, 18.937614, 9.703185>,  <17.552877, 18.881035, 10.371442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825687, 18.937614, 9.703185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.011703, 18.612030, 9.842442>,  <18.123314, 18.416679, 9.925996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.011703, 18.612030, 9.842442>,  <17.825687, 18.937614, 9.703185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.011703, 18.612030, 9.842442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323190, -0.522203, -0.789210,
		0.824188, 0.254498, -0.505910,
		0.465040, -0.813963, 0.348142,
		18.151215, 18.367842, 9.946884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347834, 18.723684, 9.212075>,  <17.825687, 18.937614, 9.703185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347834, 18.723684, 9.212075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.273895, 18.398228, 9.432553>,  <18.229532, 18.202953, 9.564840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.273895, 18.398228, 9.432553>,  <18.347834, 18.723684, 9.212075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273895, 18.398228, 9.432553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254988, -0.501946, -0.826457,
		0.949112, -0.293316, -0.114687,
		-0.184847, -0.813644, 0.551195,
		18.218441, 18.154135, 9.597912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506472, 18.119493, 8.815295>,  <18.347834, 18.723684, 9.212075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506472, 18.119493, 8.815295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.296150, 17.945560, 9.107720>,  <18.169958, 17.841200, 9.283175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.296150, 17.945560, 9.107720>,  <18.506472, 18.119493, 8.815295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296150, 17.945560, 9.107720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310641, -0.701934, -0.640929,
		0.791855, -0.564100, 0.234001,
		-0.525802, -0.434832, 0.731063,
		18.138409, 17.815111, 9.327039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773695, 17.401114, 8.778674>,  <18.506472, 18.119493, 8.815295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773695, 17.401114, 8.778674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.419544, 17.397785, 8.964595>,  <18.207054, 17.395788, 9.076147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.419544, 17.397785, 8.964595>,  <18.773695, 17.401114, 8.778674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419544, 17.397785, 8.964595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312866, -0.728851, -0.609008,
		0.343839, -0.684621, 0.642704,
		-0.885375, -0.008320, 0.464802,
		18.153931, 17.395288, 9.104035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626844, 16.695499, 8.853692>,  <18.773695, 17.401114, 8.778674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626844, 16.695499, 8.853692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.275120, 16.878807, 8.905534>,  <18.064085, 16.988792, 8.936639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.275120, 16.878807, 8.905534>,  <18.626844, 16.695499, 8.853692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275120, 16.878807, 8.905534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438169, -0.671854, -0.597177,
		-0.186593, -0.581894, 0.791570,
		-0.879313, 0.458270, 0.129604,
		18.011326, 17.016289, 8.944415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148964, 16.163540, 9.096620>,  <18.626844, 16.695499, 8.853692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148964, 16.163540, 9.096620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.950146, 16.466660, 8.927535>,  <17.830854, 16.648531, 8.826084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.950146, 16.466660, 8.927535>,  <18.148964, 16.163540, 9.096620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950146, 16.466660, 8.927535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377139, -0.627395, -0.681279,
		-0.781480, -0.179206, 0.597640,
		-0.497046, 0.757800, -0.422711,
		17.801031, 16.694000, 8.800722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.459455, 15.926485, 9.088563>,  <18.148964, 16.163540, 9.096620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.459455, 15.926485, 9.088563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.480679, 16.211967, 8.809190>,  <17.493412, 16.383257, 8.641566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.480679, 16.211967, 8.809190>,  <17.459455, 15.926485, 9.088563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480679, 16.211967, 8.809190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575969, -0.549481, -0.605251,
		-0.815747, 0.434388, 0.381919,
		0.053056, 0.713706, -0.698433,
		17.496595, 16.426079, 8.599660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774652, 16.133270, 8.904267>,  <17.459455, 15.926485, 9.088563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774652, 16.133270, 8.904267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.029346, 16.212227, 8.606112>,  <17.182163, 16.259602, 8.427218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.029346, 16.212227, 8.606112>,  <16.774652, 16.133270, 8.904267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029346, 16.212227, 8.606112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599966, -0.480403, -0.639730,
		-0.484366, 0.854546, -0.187460,
		0.636735, 0.197394, -0.745389,
		17.220367, 16.271444, 8.382495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256077, 16.356730, 9.415668>,  <16.774652, 16.133270, 8.904267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256077, 16.356730, 9.415668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.906259, 16.311520, 9.604301>,  <15.696367, 16.284393, 9.717482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.906259, 16.311520, 9.604301>,  <16.256077, 16.356730, 9.415668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906259, 16.311520, 9.604301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402415, 0.373519, 0.835791,
		-0.270610, 0.920711, -0.281178,
		-0.874547, -0.113023, 0.471586,
		15.643894, 16.277613, 9.745777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279867, 16.935266, 9.720255>,  <16.256077, 16.356730, 9.415668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279867, 16.935266, 9.720255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994912, 16.723934, 9.905023>,  <15.823939, 16.597134, 10.015883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994912, 16.723934, 9.905023>,  <16.279867, 16.935266, 9.720255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994912, 16.723934, 9.905023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257324, 0.415712, 0.872335,
		-0.652909, 0.740303, -0.160195,
		-0.712387, -0.528333, 0.461920,
		15.781197, 16.565434, 10.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043303, 17.364227, 10.258575>,  <16.279867, 16.935266, 9.720255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043303, 17.364227, 10.258575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.910405, 17.001602, 10.362695>,  <15.830667, 16.784027, 10.425166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.910405, 17.001602, 10.362695>,  <16.043303, 17.364227, 10.258575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910405, 17.001602, 10.362695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138458, 0.226107, 0.964212,
		-0.932975, 0.356395, 0.050398,
		-0.332245, -0.906564, 0.260298,
		15.810732, 16.729633, 10.440784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582212, 17.442547, 10.806320>,  <16.043303, 17.364227, 10.258575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582212, 17.442547, 10.806320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.658950, 17.051334, 10.838936>,  <15.704992, 16.816607, 10.858505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.658950, 17.051334, 10.838936>,  <15.582212, 17.442547, 10.806320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658950, 17.051334, 10.838936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005964, 0.084244, 0.996427,
		-0.981407, -0.190671, 0.021995,
		0.191843, -0.978032, 0.081540,
		15.716503, 16.757925, 10.863398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150834, 17.190451, 11.278072>,  <15.582212, 17.442547, 10.806320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.150834, 17.190451, 11.278072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.442048, 16.917465, 11.304025>,  <15.616776, 16.753674, 11.319596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.442048, 16.917465, 11.304025>,  <15.150834, 17.190451, 11.278072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442048, 16.917465, 11.304025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127063, -0.041331, 0.991033,
		-0.673662, -0.729750, -0.116806,
		0.728034, -0.682464, 0.064881,
		15.660459, 16.712727, 11.323489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924170, 16.586639, 11.724978>,  <15.150834, 17.190451, 11.278072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924170, 16.586639, 11.724978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.323731, 16.600468, 11.712371>,  <15.563469, 16.608765, 11.704806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.323731, 16.600468, 11.712371>,  <14.924170, 16.586639, 11.724978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323731, 16.600468, 11.712371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031070, 0.013486, 0.999426,
		0.034983, -0.999311, 0.012397,
		0.998904, 0.034578, -0.031520,
		15.623403, 16.610838, 11.702915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142015, 16.209402, 12.283148>,  <14.924170, 16.586639, 11.724978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.142015, 16.209402, 12.283148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.455611, 16.437622, 12.185303>,  <15.643768, 16.574554, 12.126595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.455611, 16.437622, 12.185303>,  <15.142015, 16.209402, 12.283148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455611, 16.437622, 12.185303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190390, 0.154061, 0.969545,
		0.590857, -0.806685, 0.012155,
		0.783989, 0.570548, -0.244613,
		15.690808, 16.608786, 12.111918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677829, 15.974051, 12.676687>,  <15.142015, 16.209402, 12.283148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677829, 15.974051, 12.676687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.785974, 16.346325, 12.578111>,  <15.850861, 16.569689, 12.518965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.785974, 16.346325, 12.578111>,  <15.677829, 15.974051, 12.676687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.785974, 16.346325, 12.578111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244988, 0.181042, 0.952473,
		0.931067, -0.317889, -0.179059,
		0.270363, 0.930683, -0.246441,
		15.867083, 16.625530, 12.504178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290836, 16.092318, 13.061201>,  <15.677829, 15.974051, 12.676687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290836, 16.092318, 13.061201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131828, 16.445980, 12.963025>,  <16.036423, 16.658178, 12.904119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131828, 16.445980, 12.963025>,  <16.290836, 16.092318, 13.061201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131828, 16.445980, 12.963025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416269, 0.412141, 0.810469,
		0.817739, 0.220010, -0.531882,
		-0.397521, 0.884158, -0.245441,
		16.012571, 16.711227, 12.889393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910154, 16.469099, 13.277597>,  <16.290836, 16.092318, 13.061201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910154, 16.469099, 13.277597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.584309, 16.700821, 13.266199>,  <16.388802, 16.839853, 13.259360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.584309, 16.700821, 13.266199>,  <16.910154, 16.469099, 13.277597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584309, 16.700821, 13.266199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252626, 0.398607, 0.881642,
		0.522097, 0.710999, -0.471058,
		-0.814613, 0.579304, -0.028495,
		16.339924, 16.874613, 13.257650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162666, 17.079258, 13.607642>,  <16.910154, 16.469099, 13.277597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162666, 17.079258, 13.607642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.765152, 17.108845, 13.640904>,  <16.526644, 17.126596, 13.660862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.765152, 17.108845, 13.640904>,  <17.162666, 17.079258, 13.607642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765152, 17.108845, 13.640904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104917, 0.373411, 0.921714,
		0.037124, 0.924713, -0.378852,
		-0.993788, 0.073966, 0.083156,
		16.467016, 17.131035, 13.665852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019243, 17.838881, 13.881407>,  <17.162666, 17.079258, 13.607642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019243, 17.838881, 13.881407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.688538, 17.625317, 13.952289>,  <16.490114, 17.497177, 13.994818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.688538, 17.625317, 13.952289>,  <17.019243, 17.838881, 13.881407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688538, 17.625317, 13.952289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030486, 0.357063, 0.933583,
		-0.561724, 0.766449, -0.311483,
		-0.826763, -0.533911, 0.177205,
		16.440508, 17.465143, 14.005450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673653, 18.138624, 14.354836>,  <17.019243, 17.838881, 13.881407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673653, 18.138624, 14.354836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.501991, 17.783096, 14.419122>,  <16.398994, 17.569780, 14.457693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.501991, 17.783096, 14.419122>,  <16.673653, 18.138624, 14.354836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501991, 17.783096, 14.419122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139413, 0.240981, 0.960465,
		-0.892408, 0.389780, -0.227330,
		-0.429152, -0.888819, 0.160713,
		16.373245, 17.516451, 14.467336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975806, 18.290321, 14.681360>,  <16.673653, 18.138624, 14.354836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.975806, 18.290321, 14.681360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.105774, 17.921394, 14.765031>,  <16.183754, 17.700037, 14.815233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.105774, 17.921394, 14.765031>,  <15.975806, 18.290321, 14.681360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105774, 17.921394, 14.765031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021672, 0.228381, 0.973331,
		-0.945494, -0.311720, 0.094193,
		0.324919, -0.922319, 0.209177,
		16.203249, 17.644699, 14.827784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579425, 18.041233, 15.240046>,  <15.975806, 18.290321, 14.681360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579425, 18.041233, 15.240046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.919801, 17.831127, 15.240182>,  <16.124027, 17.705065, 15.240264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.919801, 17.831127, 15.240182>,  <15.579425, 18.041233, 15.240046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919801, 17.831127, 15.240182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214266, 0.347708, 0.912792,
		-0.479574, -0.776658, 0.408424,
		0.850940, -0.525263, 0.000340,
		16.175083, 17.673548, 15.240284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547656, 17.805889, 15.962831>,  <15.579425, 18.041233, 15.240046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547656, 17.805889, 15.962831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.920772, 17.736065, 15.836699>,  <16.144642, 17.694170, 15.761021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.920772, 17.736065, 15.836699>,  <15.547656, 17.805889, 15.962831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920772, 17.736065, 15.836699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351211, 0.243714, 0.904021,
		-0.080957, -0.954008, 0.288642,
		0.932790, -0.174561, -0.315328,
		16.200609, 17.683697, 15.742101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831451, 17.315090, 16.385544>,  <15.547656, 17.805889, 15.962831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831451, 17.315090, 16.385544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.124832, 17.548996, 16.246922>,  <16.300859, 17.689339, 16.163748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.124832, 17.548996, 16.246922>,  <15.831451, 17.315090, 16.385544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124832, 17.548996, 16.246922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310066, 0.165883, 0.936131,
		0.604905, -0.794061, -0.059649,
		0.733451, 0.584766, -0.346554,
		16.344868, 17.724426, 16.142956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322029, 17.074955, 16.773323>,  <15.831451, 17.315090, 16.385544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322029, 17.074955, 16.773323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.415928, 17.444054, 16.651058>,  <16.472267, 17.665514, 16.577700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.415928, 17.444054, 16.651058>,  <16.322029, 17.074955, 16.773323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415928, 17.444054, 16.651058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290015, 0.233644, 0.928063,
		0.927785, -0.306506, -0.212764,
		0.234745, 0.922748, -0.305663,
		16.486351, 17.720879, 16.559359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.004110, 17.387049, 16.425119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.819107, 17.735321, 16.358187>,  <17.708105, 17.944284, 16.318027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.819107, 17.735321, 16.358187>,  <18.004110, 17.387049, 16.425119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819107, 17.735321, 16.358187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527483, 0.421916, 0.737393,
		0.712636, 0.252783, -0.654409,
		-0.462506, 0.870682, -0.167333,
		17.680355, 17.996525, 16.307987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476370, 17.992147, 16.174070>,  <18.004110, 17.387049, 16.425119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476370, 17.992147, 16.174070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.170433, 18.144772, 16.381697>,  <17.986872, 18.236347, 16.506273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.170433, 18.144772, 16.381697>,  <18.476370, 17.992147, 16.174070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170433, 18.144772, 16.381697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641935, 0.383610, 0.663900,
		0.054200, 0.840984, -0.538338,
		-0.764841, 0.381561, 0.519065,
		17.940981, 18.259239, 16.537416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.601542, 18.766085, 16.174305>,  <18.476370, 17.992147, 16.174070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.601542, 18.766085, 16.174305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.369003, 18.640495, 16.474560>,  <18.229481, 18.565142, 16.654713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.369003, 18.640495, 16.474560>,  <18.601542, 18.766085, 16.174305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369003, 18.640495, 16.474560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607981, 0.445481, 0.657195,
		-0.540736, 0.838432, -0.068090,
		-0.581346, -0.313971, 0.750639,
		18.194599, 18.546305, 16.699751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595303, 19.300724, 16.553892>,  <18.601542, 18.766085, 16.174305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.595303, 19.300724, 16.553892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.498791, 19.003578, 16.803673>,  <18.440884, 18.825291, 16.953541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.498791, 19.003578, 16.803673>,  <18.595303, 19.300724, 16.553892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498791, 19.003578, 16.803673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549916, 0.425523, 0.718695,
		-0.799610, 0.516802, 0.305843,
		-0.241279, -0.742863, 0.624450,
		18.426407, 18.780720, 16.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581718, 19.669733, 17.114088>,  <18.595303, 19.300724, 16.553892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581718, 19.669733, 17.114088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.622524, 19.285229, 17.216516>,  <18.647009, 19.054527, 17.277973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.622524, 19.285229, 17.216516>,  <18.581718, 19.669733, 17.114088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622524, 19.285229, 17.216516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565651, 0.267802, 0.779949,
		-0.818310, 0.065280, 0.571058,
		0.102015, -0.961260, 0.256070,
		18.653130, 18.996851, 17.293337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538271, 19.699680, 17.875362>,  <18.581718, 19.669733, 17.114088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538271, 19.699680, 17.875362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.702248, 19.350266, 17.770384>,  <18.800634, 19.140615, 17.707397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.702248, 19.350266, 17.770384>,  <18.538271, 19.699680, 17.875362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702248, 19.350266, 17.770384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674795, 0.096865, 0.731621,
		-0.613677, -0.477019, 0.629168,
		0.409942, -0.873539, -0.262446,
		18.825230, 19.088203, 17.691650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456942, 19.197748, 18.472233>,  <18.538271, 19.699680, 17.875362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456942, 19.197748, 18.472233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.766102, 19.097347, 18.239124>,  <18.951597, 19.037107, 18.099258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.766102, 19.097347, 18.239124>,  <18.456942, 19.197748, 18.472233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766102, 19.097347, 18.239124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604121, 0.010185, 0.796827,
		-0.194071, -0.967933, 0.159508,
		0.772900, -0.251003, -0.582772,
		18.997972, 19.022047, 18.064293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878195, 18.819702, 18.909138>,  <18.456942, 19.197748, 18.472233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878195, 18.819702, 18.909138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.151749, 18.897758, 18.627935>,  <19.315882, 18.944592, 18.459213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.151749, 18.897758, 18.627935>,  <18.878195, 18.819702, 18.909138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151749, 18.897758, 18.627935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694799, 0.119803, 0.709156,
		0.222609, -0.973430, -0.053653,
		0.683886, 0.195143, -0.703007,
		19.356915, 18.956301, 18.417032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469711, 18.282801, 19.107264>,  <18.878195, 18.819702, 18.909138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469711, 18.282801, 19.107264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.576641, 18.575703, 18.856714>,  <19.640799, 18.751444, 18.706385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.576641, 18.575703, 18.856714>,  <19.469711, 18.282801, 19.107264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.576641, 18.575703, 18.856714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638200, 0.352484, 0.684439,
		0.721969, -0.582716, -0.373098,
		0.267323, 0.732255, -0.626372,
		19.656837, 18.795380, 18.668802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220076, 18.340672, 19.213095>,  <19.469711, 18.282801, 19.107264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220076, 18.340672, 19.213095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.138737, 18.694366, 19.044914>,  <20.089933, 18.906584, 18.944006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.138737, 18.694366, 19.044914>,  <20.220076, 18.340672, 19.213095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138737, 18.694366, 19.044914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750774, 0.416458, 0.512738,
		0.628481, -0.211399, -0.748546,
		-0.203346, 0.884236, -0.420449,
		20.077732, 18.959637, 18.918779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878206, 18.663727, 18.970795>,  <20.220076, 18.340672, 19.213095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878206, 18.663727, 18.970795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.627850, 18.972332, 19.016445>,  <20.477636, 19.157495, 19.043835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.627850, 18.972332, 19.016445>,  <20.878206, 18.663727, 18.970795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627850, 18.972332, 19.016445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689000, 0.478419, 0.544421,
		0.365430, 0.419381, -0.831012,
		-0.625892, 0.771515, 0.114125,
		20.440083, 19.203787, 19.050682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351612, 19.159172, 18.918270>,  <20.878206, 18.663727, 18.970795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351612, 19.159172, 18.918270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.026352, 19.324993, 19.081699>,  <20.831196, 19.424486, 19.179758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.026352, 19.324993, 19.081699>,  <21.351612, 19.159172, 18.918270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026352, 19.324993, 19.081699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581486, 0.547559, 0.601709,
		0.025720, 0.726860, -0.686304,
		-0.813150, 0.414552, 0.408575,
		20.782408, 19.449358, 19.204271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435827, 19.928202, 18.926811>,  <21.351612, 19.159172, 18.918270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435827, 19.928202, 18.926811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.170406, 19.866032, 19.219534>,  <21.011154, 19.828730, 19.395168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.170406, 19.866032, 19.219534>,  <21.435827, 19.928202, 18.926811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170406, 19.866032, 19.219534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409367, 0.743317, 0.529054,
		-0.626193, 0.650633, -0.429603,
		-0.663552, -0.155425, 0.731808,
		20.971340, 19.819405, 19.439075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137217, 20.671484, 19.172626>,  <21.435827, 19.928202, 18.926811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137217, 20.671484, 19.172626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.065350, 20.424175, 19.478687>,  <21.022228, 20.275789, 19.662323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.065350, 20.424175, 19.478687>,  <21.137217, 20.671484, 19.172626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065350, 20.424175, 19.478687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351437, 0.686140, 0.636949,
		-0.918810, 0.383343, 0.094005,
		-0.179670, -0.618272, 0.765153,
		21.011448, 20.238693, 19.708233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.860115, 21.150564, 19.624996>,  <21.137217, 20.671484, 19.172626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.860115, 21.150564, 19.624996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.932251, 20.833271, 19.857635>,  <20.975533, 20.642895, 19.997219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.932251, 20.833271, 19.857635>,  <20.860115, 21.150564, 19.624996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.932251, 20.833271, 19.857635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301777, 0.607397, 0.734846,
		-0.936167, 0.042993, 0.348917,
		0.180338, -0.793234, 0.581599,
		20.986353, 20.595301, 20.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.511845, 21.273333, 20.318874>,  <20.860115, 21.150564, 19.624996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.511845, 21.273333, 20.318874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.799648, 21.007153, 20.398359>,  <20.972330, 20.847445, 20.446051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.799648, 21.007153, 20.398359>,  <20.511845, 21.273333, 20.318874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.799648, 21.007153, 20.398359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359164, 0.601440, 0.713632,
		-0.594398, -0.442094, 0.671746,
		0.719508, -0.665449, 0.198711,
		21.015501, 20.807518, 20.457972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483604, 21.133913, 21.128273>,  <20.511845, 21.273333, 20.318874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483604, 21.133913, 21.128273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.845875, 20.986397, 21.044613>,  <21.063236, 20.897888, 20.994417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.845875, 20.986397, 21.044613>,  <20.483604, 21.133913, 21.128273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.845875, 20.986397, 21.044613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366596, 0.433383, 0.823278,
		-0.212974, -0.822297, 0.527702,
		0.905676, -0.368790, -0.209152,
		21.117579, 20.875759, 20.981867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703100, 20.829098, 21.686867>,  <20.483604, 21.133913, 21.128273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.703100, 20.829098, 21.686867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.049492, 20.890720, 21.496563>,  <21.257326, 20.927694, 21.382380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.049492, 20.890720, 21.496563>,  <20.703100, 20.829098, 21.686867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049492, 20.890720, 21.496563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366815, 0.450939, 0.813696,
		0.339895, -0.879159, 0.333993,
		0.865978, 0.154058, -0.475760,
		21.309286, 20.936937, 21.353834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230238, 20.845654, 22.194313>,  <20.703100, 20.829098, 21.686867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230238, 20.845654, 22.194313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.430607, 21.026657, 21.899202>,  <21.550829, 21.135260, 21.722137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.430607, 21.026657, 21.899202>,  <21.230238, 20.845654, 22.194313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430607, 21.026657, 21.899202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478914, 0.565117, 0.671777,
		0.720914, -0.689839, 0.066368,
		0.500924, 0.452509, -0.737774,
		21.580885, 21.162409, 21.677870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.040117, 20.757412, 22.285524>,  <21.230238, 20.845654, 22.194313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.040117, 20.757412, 22.285524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.967281, 21.087887, 22.072262>,  <21.923580, 21.286173, 21.944305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.967281, 21.087887, 22.072262>,  <22.040117, 20.757412, 22.285524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967281, 21.087887, 22.072262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447076, 0.552497, 0.703470,
		0.875766, -0.110265, -0.469974,
		-0.182091, 0.826189, -0.533155,
		21.912655, 21.335743, 21.912315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.672287, 21.150274, 22.389740>,  <22.040117, 20.757412, 22.285524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.672287, 21.150274, 22.389740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.419361, 21.418938, 22.235308>,  <22.267607, 21.580135, 22.142649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.419361, 21.418938, 22.235308>,  <22.672287, 21.150274, 22.389740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419361, 21.418938, 22.235308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425797, 0.717632, 0.551091,
		0.647207, 0.184071, -0.739758,
		-0.632313, 0.671657, -0.386079,
		22.229668, 21.620434, 22.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.070831, 21.652309, 22.072321>,  <22.672287, 21.150274, 22.389740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.070831, 21.652309, 22.072321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.715683, 21.810452, 22.166451>,  <22.502594, 21.905336, 22.222927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.715683, 21.810452, 22.166451>,  <23.070831, 21.652309, 22.072321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.715683, 21.810452, 22.166451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459834, 0.779546, 0.425278,
		-0.015310, 0.485802, -0.873935,
		-0.887873, 0.395354, 0.235323,
		22.449322, 21.929058, 22.237047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.032124, 22.352194, 21.847654>,  <23.070831, 21.652309, 22.072321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.032124, 22.352194, 21.847654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.749508, 22.336353, 22.130280>,  <22.579939, 22.326849, 22.299854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.749508, 22.336353, 22.130280>,  <23.032124, 22.352194, 21.847654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749508, 22.336353, 22.130280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378070, 0.822882, 0.424179,
		-0.598218, 0.566831, -0.566426,
		-0.706540, -0.039603, 0.706564,
		22.537546, 22.324472, 22.342249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.780275, 23.113556, 22.006735>,  <23.032124, 22.352194, 21.847654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.780275, 23.113556, 22.006735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.734608, 22.864815, 22.316643>,  <22.707207, 22.715570, 22.502586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.734608, 22.864815, 22.316643>,  <22.780275, 23.113556, 22.006735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734608, 22.864815, 22.316643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480184, 0.648178, 0.591007,
		-0.869706, 0.439507, 0.224601,
		-0.114170, -0.621852, 0.774768,
		22.700357, 22.678259, 22.549072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.567667, 23.294353, 21.708124>,  <22.780275, 23.113556, 22.006735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.567667, 23.294353, 21.708124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.776134, 23.457211, 21.408092>,  <23.901215, 23.554926, 21.228073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.776134, 23.457211, 21.408092>,  <23.567667, 23.294353, 21.708124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.776134, 23.457211, 21.408092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607385, -0.440470, -0.661113,
		-0.599555, 0.800137, 0.017734,
		0.521170, 0.407145, -0.750077,
		23.932486, 23.579353, 21.183069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.080580, 23.719870, 21.303989>,  <23.567667, 23.294353, 21.708124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.080580, 23.719870, 21.303989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.396145, 23.621582, 21.078693>,  <23.585484, 23.562611, 20.943516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.396145, 23.621582, 21.078693>,  <23.080580, 23.719870, 21.303989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.396145, 23.621582, 21.078693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608894, -0.436163, -0.662578,
		-0.082858, 0.865670, -0.493711,
		0.788912, -0.245718, -0.563241,
		23.632818, 23.547867, 20.909721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.856918, 23.786779, 20.598671>,  <23.080580, 23.719870, 21.303989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.856918, 23.786779, 20.598671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.210209, 23.617329, 20.518223>,  <23.422184, 23.515657, 20.469954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.210209, 23.617329, 20.518223>,  <22.856918, 23.786779, 20.598671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.210209, 23.617329, 20.518223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392225, -0.432266, -0.811976,
		0.257040, 0.796043, -0.547947,
		0.883227, -0.423629, -0.201119,
		23.475178, 23.490240, 20.457888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.067417, 24.003021, 19.877998>,  <22.856918, 23.786779, 20.598671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.067417, 24.003021, 19.877998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.269867, 23.671017, 19.971735>,  <23.391336, 23.471813, 20.027977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.269867, 23.671017, 19.971735>,  <23.067417, 24.003021, 19.877998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.269867, 23.671017, 19.971735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288712, -0.419089, -0.860819,
		0.812701, 0.368026, -0.451746,
		0.506125, -0.830013, 0.234341,
		23.421705, 23.422012, 20.042038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.439365, 23.742096, 19.246830>,  <23.067417, 24.003021, 19.877998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.439365, 23.742096, 19.246830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.383137, 23.432632, 19.493956>,  <23.349400, 23.246954, 19.642231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.383137, 23.432632, 19.493956>,  <23.439365, 23.742096, 19.246830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.383137, 23.432632, 19.493956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375948, -0.535562, -0.756199,
		0.915916, -0.338566, -0.215571,
		-0.140572, -0.773658, 0.617813,
		23.340965, 23.200535, 19.679300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.579157, 23.088095, 18.840635>,  <23.439365, 23.742096, 19.246830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.579157, 23.088095, 18.840635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.404137, 22.921394, 19.159349>,  <23.299124, 22.821375, 19.350578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.404137, 22.921394, 19.159349>,  <23.579157, 23.088095, 18.840635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.404137, 22.921394, 19.159349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449478, -0.666094, -0.595221,
		0.778793, -0.618578, 0.104131,
		-0.437552, -0.416749, 0.796786,
		23.272871, 22.796370, 19.398386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.715708, 22.345272, 18.806480>,  <23.579157, 23.088095, 18.840635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.715708, 22.345272, 18.806480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.385815, 22.398815, 19.026262>,  <23.187880, 22.430941, 19.158131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.385815, 22.398815, 19.026262>,  <23.715708, 22.345272, 18.806480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.385815, 22.398815, 19.026262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476696, -0.687286, -0.548086,
		0.304267, -0.713947, 0.630636,
		-0.824732, 0.133857, 0.549454,
		23.138395, 22.438972, 19.191099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.440434, 21.675438, 18.926888>,  <23.715708, 22.345272, 18.806480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.440434, 21.675438, 18.926888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.144470, 21.930328, 19.013123>,  <22.966892, 22.083263, 19.064863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.144470, 21.930328, 19.013123>,  <23.440434, 21.675438, 18.926888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.144470, 21.930328, 19.013123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635779, -0.557682, -0.533644,
		-0.219822, -0.531915, 0.817768,
		-0.739908, 0.637226, 0.215590,
		22.922499, 22.121496, 19.077799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.845947, 21.323488, 19.073021>,  <23.440434, 21.675438, 18.926888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.845947, 21.323488, 19.073021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.721188, 21.688446, 18.966999>,  <22.646332, 21.907421, 18.903387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.721188, 21.688446, 18.966999>,  <22.845947, 21.323488, 19.073021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721188, 21.688446, 18.966999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643803, -0.408114, -0.647271,
		-0.698740, -0.031240, 0.714693,
		-0.311897, 0.912396, -0.265053,
		22.627619, 21.962166, 18.887484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.177347, 21.247501, 19.193945>,  <22.845947, 21.323488, 19.073021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.177347, 21.247501, 19.193945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.206619, 21.548782, 18.932463>,  <22.224182, 21.729551, 18.775574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.206619, 21.548782, 18.932463>,  <22.177347, 21.247501, 19.193945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206619, 21.548782, 18.932463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780508, -0.364784, -0.507681,
		-0.620848, 0.547374, 0.561186,
		0.073180, 0.753202, -0.653705,
		22.228573, 21.774744, 18.736351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502792, 21.443403, 19.133139>,  <22.177347, 21.247501, 19.193945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502792, 21.443403, 19.133139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.692593, 21.594318, 18.815020>,  <21.806473, 21.684868, 18.624147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.692593, 21.594318, 18.815020>,  <21.502792, 21.443403, 19.133139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.692593, 21.594318, 18.815020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604415, -0.517190, -0.605968,
		-0.639946, 0.768224, -0.017367,
		0.474501, 0.377290, -0.795299,
		21.834944, 21.707506, 18.576429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979353, 21.441727, 18.599709>,  <21.502792, 21.443403, 19.133139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.979353, 21.441727, 18.599709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.302330, 21.482594, 18.367294>,  <21.496117, 21.507114, 18.227846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.302330, 21.482594, 18.367294>,  <20.979353, 21.441727, 18.599709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302330, 21.482594, 18.367294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486058, -0.442962, -0.753347,
		-0.334344, 0.890700, -0.308006,
		0.807442, 0.102169, -0.581033,
		21.544563, 21.513245, 18.192984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701183, 21.679636, 17.864426>,  <20.979353, 21.441727, 18.599709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701183, 21.679636, 17.864426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.065636, 21.520462, 17.821545>,  <21.284307, 21.424957, 17.795816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.065636, 21.520462, 17.821545>,  <20.701183, 21.679636, 17.864426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065636, 21.520462, 17.821545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290299, -0.435073, -0.852314,
		0.292524, 0.807688, -0.511927,
		0.911129, -0.397934, -0.107202,
		21.338974, 21.401081, 17.789385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813948, 21.680166, 17.176086>,  <20.701183, 21.679636, 17.864426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813948, 21.680166, 17.176086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.094402, 21.417500, 17.287220>,  <21.262674, 21.259899, 17.353901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.094402, 21.417500, 17.287220>,  <20.813948, 21.680166, 17.176086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094402, 21.417500, 17.287220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239955, -0.584233, -0.775302,
		0.671438, 0.476925, -0.567198,
		0.701137, -0.656669, 0.277835,
		21.304743, 21.220499, 17.370571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171509, 21.529009, 16.598904>,  <20.813948, 21.680166, 17.176086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171509, 21.529009, 16.598904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.227139, 21.202671, 16.823423>,  <21.260517, 21.006868, 16.958136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.227139, 21.202671, 16.823423>,  <21.171509, 21.529009, 16.598904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227139, 21.202671, 16.823423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259974, -0.577005, -0.774260,
		0.955548, -0.038243, -0.292345,
		0.139074, -0.815844, 0.561299,
		21.268860, 20.957918, 16.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337648, 21.075365, 16.144823>,  <21.171509, 21.529009, 16.598904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337648, 21.075365, 16.144823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.240860, 20.809010, 16.427113>,  <21.182787, 20.649197, 16.596485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.240860, 20.809010, 16.427113>,  <21.337648, 21.075365, 16.144823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240860, 20.809010, 16.427113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425154, -0.581032, -0.694007,
		0.872178, -0.467970, -0.142511,
		-0.241971, -0.665887, 0.705723,
		21.168268, 20.609243, 16.638830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612421, 20.542988, 15.949545>,  <21.337648, 21.075365, 16.144823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612421, 20.542988, 15.949545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.322861, 20.396187, 16.183220>,  <21.149124, 20.308105, 16.323425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.322861, 20.396187, 16.183220>,  <21.612421, 20.542988, 15.949545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322861, 20.396187, 16.183220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385405, -0.487195, -0.783648,
		0.572214, -0.792433, 0.211237,
		-0.723902, -0.367002, 0.584187,
		21.105690, 20.286087, 16.358477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621805, 19.829426, 15.895711>,  <21.612421, 20.542988, 15.949545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621805, 19.829426, 15.895711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.245144, 19.889446, 16.016226>,  <21.019148, 19.925459, 16.088535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.245144, 19.889446, 16.016226>,  <21.621805, 19.829426, 15.895711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245144, 19.889446, 16.016226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327390, -0.616118, -0.716390,
		0.078133, -0.773229, 0.629295,
		-0.941654, 0.150051, 0.301287,
		20.962648, 19.934462, 16.106611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294086, 19.181507, 15.820481>,  <21.621805, 19.829426, 15.895711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294086, 19.181507, 15.820481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.998547, 19.450310, 15.840535>,  <20.821222, 19.611591, 15.852568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.998547, 19.450310, 15.840535>,  <21.294086, 19.181507, 15.820481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998547, 19.450310, 15.840535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458227, -0.446467, -0.768567,
		-0.494097, -0.590828, 0.637802,
		-0.738848, 0.672005, 0.050135,
		20.776892, 19.651911, 15.855576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675083, 18.774315, 15.690194>,  <21.294086, 19.181507, 15.820481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675083, 18.774315, 15.690194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.628571, 19.153675, 15.572202>,  <20.600662, 19.381292, 15.501407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.628571, 19.153675, 15.572202>,  <20.675083, 18.774315, 15.690194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628571, 19.153675, 15.572202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330844, -0.317020, -0.888842,
		-0.936494, -0.005764, 0.350637,
		-0.116282, 0.948401, -0.294980,
		20.593685, 19.438196, 15.483707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.447195, 16.701443, 14.406684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.744470, 16.932362, 14.271390>,  <15.922834, 17.070913, 14.190213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.744470, 16.932362, 14.271390>,  <15.447195, 16.701443, 14.406684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744470, 16.932362, 14.271390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215450, -0.272113, -0.937836,
		-0.633448, 0.769859, -0.077851,
		0.743186, 0.577297, -0.338236,
		15.967425, 17.105551, 14.169919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178334, 17.204769, 13.865934>,  <15.447195, 16.701443, 14.406684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178334, 17.204769, 13.865934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.572124, 17.171314, 13.804202>,  <15.808397, 17.151241, 13.767162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.572124, 17.171314, 13.804202>,  <15.178334, 17.204769, 13.865934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572124, 17.171314, 13.804202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166690, -0.169832, -0.971273,
		0.055025, 0.981918, -0.181137,
		0.984473, -0.083638, -0.154331,
		15.867465, 17.146223, 13.757903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.251047, 17.564541, 13.226140>,  <15.178334, 17.204769, 13.865934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.251047, 17.564541, 13.226140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.607078, 17.382225, 13.228029>,  <15.820696, 17.272837, 13.229163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.607078, 17.382225, 13.228029>,  <15.251047, 17.564541, 13.226140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607078, 17.382225, 13.228029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092544, -0.190853, -0.977247,
		0.446318, 0.869387, -0.212054,
		0.890076, -0.455787, 0.004724,
		15.874101, 17.245489, 13.229446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468884, 17.868378, 12.578237>,  <15.251047, 17.564541, 13.226140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468884, 17.868378, 12.578237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.657077, 17.524609, 12.658279>,  <15.769993, 17.318348, 12.706306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.657077, 17.524609, 12.658279>,  <15.468884, 17.868378, 12.578237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657077, 17.524609, 12.658279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083066, -0.182632, -0.979666,
		0.878491, 0.477538, -0.014536,
		0.470482, -0.859420, 0.200108,
		15.798222, 17.266783, 12.718312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241650, 17.864134, 12.269666>,  <15.468884, 17.868378, 12.578237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.241650, 17.864134, 12.269666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.133652, 17.484322, 12.333528>,  <16.068853, 17.256433, 12.371845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.133652, 17.484322, 12.333528>,  <16.241650, 17.864134, 12.269666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133652, 17.484322, 12.333528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234512, -0.225670, -0.945557,
		0.933866, -0.217856, 0.283607,
		-0.269997, -0.949533, 0.159656,
		16.052652, 17.199461, 12.381424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723955, 17.362501, 11.709707>,  <16.241650, 17.864134, 12.269666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723955, 17.362501, 11.709707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.421936, 17.134346, 11.839047>,  <16.240725, 16.997452, 11.916652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.421936, 17.134346, 11.839047>,  <16.723955, 17.362501, 11.709707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421936, 17.134346, 11.839047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058713, -0.432363, -0.899786,
		0.653034, -0.698368, 0.292966,
		-0.755050, -0.570390, 0.323350,
		16.195421, 16.963228, 11.936052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878380, 16.722733, 11.551098>,  <16.723955, 17.362501, 11.709707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878380, 16.722733, 11.551098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.482597, 16.692612, 11.600587>,  <16.245129, 16.674540, 11.630280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.482597, 16.692612, 11.600587>,  <16.878380, 16.722733, 11.551098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.482597, 16.692612, 11.600587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084125, -0.396558, -0.914147,
		0.117899, -0.914916, 0.386042,
		-0.989456, -0.075301, 0.123722,
		16.185760, 16.670021, 11.637703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742811, 16.029932, 11.270785>,  <16.878380, 16.722733, 11.551098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742811, 16.029932, 11.270785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.391804, 16.217590, 11.310507>,  <16.181200, 16.330185, 11.334340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.391804, 16.217590, 11.310507>,  <16.742811, 16.029932, 11.270785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.391804, 16.217590, 11.310507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341087, -0.465069, -0.816928,
		-0.337075, -0.750741, 0.568127,
		-0.877519, 0.469146, 0.099305,
		16.128548, 16.358335, 11.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054697, 15.541991, 11.192956>,  <16.742811, 16.029932, 11.270785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054697, 15.541991, 11.192956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.946204, 15.913204, 11.090828>,  <15.881109, 16.135933, 11.029551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.946204, 15.913204, 11.090828>,  <16.054697, 15.541991, 11.192956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.946204, 15.913204, 11.090828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264017, -0.326823, -0.907459,
		-0.925597, -0.178721, 0.333661,
		-0.271230, 0.928033, -0.255321,
		15.864835, 16.191614, 11.014232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696461, 15.419331, 10.589065>,  <16.054697, 15.541991, 11.192956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696461, 15.419331, 10.589065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.720845, 15.818214, 10.571836>,  <15.735476, 16.057545, 10.561500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.720845, 15.818214, 10.571836>,  <15.696461, 15.419331, 10.589065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720845, 15.818214, 10.571836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297396, -0.023045, -0.954476,
		-0.952806, 0.070996, 0.295161,
		0.060962, 0.997211, -0.043071,
		15.739134, 16.117378, 10.558915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.999373, 15.714476, 10.722551>,  <15.696461, 15.419331, 10.589065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.999373, 15.714476, 10.722551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.233531, 15.957150, 10.507424>,  <15.374025, 16.102755, 10.378348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.233531, 15.957150, 10.507424>,  <14.999373, 15.714476, 10.722551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233531, 15.957150, 10.507424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667100, -0.016553, -0.744785,
		-0.460752, 0.794770, 0.395030,
		0.585394, 0.606685, -0.537817,
		15.409149, 16.139154, 10.346079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563404, 16.183504, 10.403361>,  <14.999373, 15.714476, 10.722551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563404, 16.183504, 10.403361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.896026, 16.208363, 10.182578>,  <15.095598, 16.223278, 10.050108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.896026, 16.208363, 10.182578>,  <14.563404, 16.183504, 10.403361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896026, 16.208363, 10.182578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548932, -0.059788, -0.833726,
		-0.084813, 0.996275, -0.015603,
		0.831553, 0.062146, -0.551958,
		15.145492, 16.227007, 10.016991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638449, 16.864246, 10.102951>,  <14.563404, 16.183504, 10.403361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638449, 16.864246, 10.102951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.805137, 16.576405, 9.880775>,  <14.905149, 16.403700, 9.747470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.805137, 16.576405, 9.880775>,  <14.638449, 16.864246, 10.102951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805137, 16.576405, 9.880775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638006, 0.203719, -0.742595,
		0.647528, 0.663829, -0.374219,
		0.416720, -0.719605, -0.555440,
		14.930153, 16.360523, 9.714144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128114, 16.525600, 9.772177>,  <14.638449, 16.864246, 10.102951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128114, 16.525600, 9.772177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.428597, 16.731831, 9.607317>,  <14.608888, 16.855568, 9.508401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.428597, 16.731831, 9.607317>,  <14.128114, 16.525600, 9.772177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428597, 16.731831, 9.607317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295308, 0.820946, 0.488713,
		0.590320, -0.245414, 0.768956,
		0.751209, 0.515576, -0.412149,
		14.653960, 16.886503, 9.483672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757173, 16.879545, 10.224767>,  <14.128114, 16.525600, 9.772177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757173, 16.879545, 10.224767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.581887, 17.075794, 9.923501>,  <13.476716, 17.193544, 9.742742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.581887, 17.075794, 9.923501>,  <13.757173, 16.879545, 10.224767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.581887, 17.075794, 9.923501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061712, 0.819502, 0.569744,
		0.896750, 0.296149, -0.328840,
		-0.438214, 0.490625, -0.753164,
		13.450423, 17.222982, 9.697552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105763, 17.537130, 10.138195>,  <13.757173, 16.879545, 10.224767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105763, 17.537130, 10.138195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.732348, 17.573910, 9.999600>,  <13.508300, 17.595978, 9.916444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.732348, 17.573910, 9.999600>,  <14.105763, 17.537130, 10.138195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.732348, 17.573910, 9.999600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092520, 0.871998, 0.480686,
		0.346336, 0.480795, -0.805535,
		-0.933537, 0.091950, -0.346488,
		13.452288, 17.601496, 9.895654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.146623, 18.263704, 9.921788>,  <14.105763, 17.537130, 10.138195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.146623, 18.263704, 9.921788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.762332, 18.161266, 9.964531>,  <13.531757, 18.099804, 9.990176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.762332, 18.161266, 9.964531>,  <14.146623, 18.263704, 9.921788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762332, 18.161266, 9.964531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166898, 0.840913, 0.514792,
		-0.221692, 0.476741, -0.850630,
		-0.960728, -0.256093, 0.106857,
		13.474113, 18.084438, 9.996588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907087, 18.873722, 9.846353>,  <14.146623, 18.263704, 9.921788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907087, 18.873722, 9.846353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.624450, 18.641682, 10.008444>,  <13.454867, 18.502459, 10.105699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.624450, 18.641682, 10.008444>,  <13.907087, 18.873722, 9.846353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624450, 18.641682, 10.008444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341476, 0.781105, 0.522752,
		-0.619775, 0.230997, -0.750013,
		-0.706593, -0.580100, 0.405229,
		13.412472, 18.467651, 10.130013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326423, 19.246244, 9.746627>,  <13.907087, 18.873722, 9.846353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326423, 19.246244, 9.746627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.288291, 18.995087, 10.055602>,  <13.265411, 18.844393, 10.240987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.288291, 18.995087, 10.055602>,  <13.326423, 19.246244, 9.746627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288291, 18.995087, 10.055602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093191, 0.778194, 0.621072,
		-0.991074, -0.012777, -0.132699,
		-0.095330, -0.627895, 0.772438,
		13.259692, 18.806719, 10.287333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.882136, 19.634672, 10.299720>,  <13.326423, 19.246244, 9.746627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.882136, 19.634672, 10.299720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.059199, 19.330345, 10.489545>,  <13.165438, 19.147749, 10.603440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.059199, 19.330345, 10.489545>,  <12.882136, 19.634672, 10.299720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.059199, 19.330345, 10.489545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139893, 0.581353, 0.801535,
		-0.885711, -0.288418, 0.363773,
		0.442658, -0.760818, 0.474563,
		13.191997, 19.102100, 10.631914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467772, 19.476847, 10.925200>,  <12.882136, 19.634672, 10.299720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467772, 19.476847, 10.925200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.847461, 19.368965, 10.989988>,  <13.075274, 19.304235, 11.028862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.847461, 19.368965, 10.989988>,  <12.467772, 19.476847, 10.925200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847461, 19.368965, 10.989988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073142, 0.311547, 0.947412,
		-0.305985, -0.911151, 0.276001,
		0.949223, -0.269707, 0.161972,
		13.132228, 19.288054, 11.038580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444824, 19.346952, 11.654667>,  <12.467772, 19.476847, 10.925200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.444824, 19.346952, 11.654667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.836989, 19.352821, 11.576106>,  <13.072289, 19.356342, 11.528970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.836989, 19.352821, 11.576106>,  <12.444824, 19.346952, 11.654667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836989, 19.352821, 11.576106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171227, 0.429238, 0.886812,
		0.097316, -0.903072, 0.418319,
		0.980414, 0.014674, -0.196402,
		13.131113, 19.357224, 11.517185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.767066, 19.111830, 12.253208>,  <12.444824, 19.346952, 11.654667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.767066, 19.111830, 12.253208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.062520, 19.306408, 12.066536>,  <13.239793, 19.423155, 11.954533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.062520, 19.306408, 12.066536>,  <12.767066, 19.111830, 12.253208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.062520, 19.306408, 12.066536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215804, 0.485227, 0.847339,
		0.638629, -0.726586, 0.253428,
		0.738634, 0.486445, -0.466680,
		13.284110, 19.452341, 11.926532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358172, 18.885460, 12.547140>,  <12.767066, 19.111830, 12.253208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358172, 18.885460, 12.547140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.424775, 19.245068, 12.385134>,  <13.464737, 19.460833, 12.287930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.424775, 19.245068, 12.385134>,  <13.358172, 18.885460, 12.547140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.424775, 19.245068, 12.385134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412878, 0.309440, 0.856609,
		0.895437, -0.309853, -0.319662,
		0.166506, 0.899020, -0.405016,
		13.474727, 19.514774, 12.263629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026708, 19.066736, 12.773469>,  <13.358172, 18.885460, 12.547140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026708, 19.066736, 12.773469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.884097, 19.428486, 12.679664>,  <13.798531, 19.645536, 12.623381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.884097, 19.428486, 12.679664>,  <14.026708, 19.066736, 12.773469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884097, 19.428486, 12.679664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509684, 0.398639, 0.762436,
		0.783014, 0.152301, -0.603070,
		-0.356527, 0.904374, -0.234514,
		13.777139, 19.699799, 12.609309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622860, 19.482468, 12.843470>,  <14.026708, 19.066736, 12.773469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.622860, 19.482468, 12.843470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.307055, 19.727776, 12.853043>,  <14.117573, 19.874960, 12.858787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.307055, 19.727776, 12.853043>,  <14.622860, 19.482468, 12.843470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307055, 19.727776, 12.853043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429078, 0.523662, 0.735983,
		0.438823, 0.591336, -0.676577,
		-0.789510, 0.613271, 0.023934,
		14.070203, 19.911757, 12.860223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885393, 20.226830, 12.792240>,  <14.622860, 19.482468, 12.843470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885393, 20.226830, 12.792240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.518813, 20.237892, 12.951917>,  <14.298865, 20.244530, 13.047723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.518813, 20.237892, 12.951917>,  <14.885393, 20.226830, 12.792240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518813, 20.237892, 12.951917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343867, 0.564596, 0.750325,
		-0.204632, 0.824904, -0.526933,
		-0.916450, 0.027655, 0.399192,
		14.243878, 20.246189, 13.071674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723684, 20.889771, 12.873360>,  <14.885393, 20.226830, 12.792240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723684, 20.889771, 12.873360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.485362, 20.677628, 13.114603>,  <14.342369, 20.550343, 13.259349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.485362, 20.677628, 13.114603>,  <14.723684, 20.889771, 12.873360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485362, 20.677628, 13.114603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513699, 0.325588, 0.793792,
		-0.617357, 0.782761, 0.078457,
		-0.595805, -0.530356, 0.603108,
		14.306621, 20.518520, 13.295535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506045, 21.444973, 12.339349>,  <14.723684, 20.889771, 12.873360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506045, 21.444973, 12.339349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.344085, 21.801907, 12.259552>,  <14.246908, 22.016066, 12.211674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.344085, 21.801907, 12.259552>,  <14.506045, 21.444973, 12.339349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344085, 21.801907, 12.259552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065544, -0.245941, -0.967066,
		-0.912008, -0.378490, 0.158069,
		-0.404901, 0.892333, -0.199493,
		14.222614, 22.069607, 12.199704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794060, 21.386919, 12.051384>,  <14.506045, 21.444973, 12.339349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794060, 21.386919, 12.051384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.964664, 21.724243, 11.920589>,  <14.067025, 21.926638, 11.842113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.964664, 21.724243, 11.920589>,  <13.794060, 21.386919, 12.051384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.964664, 21.724243, 11.920589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208309, -0.260213, -0.942813,
		-0.880169, 0.470232, 0.064686,
		0.426509, 0.843309, -0.326985,
		14.092616, 21.977236, 11.822494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.315866, 21.800882, 11.512088>,  <13.794060, 21.386919, 12.051384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.315866, 21.800882, 11.512088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.689773, 21.921509, 11.436971>,  <13.914117, 21.993885, 11.391901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.689773, 21.921509, 11.436971>,  <13.315866, 21.800882, 11.512088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689773, 21.921509, 11.436971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197441, 0.001547, -0.980314,
		-0.295339, 0.953444, 0.060988,
		0.934768, 0.301567, -0.187792,
		13.970203, 22.011978, 11.380633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293391, 21.906702, 10.854608>,  <13.315866, 21.800882, 11.512088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293391, 21.906702, 10.854608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.691499, 21.945095, 10.848562>,  <13.930363, 21.968130, 10.844935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.691499, 21.945095, 10.848562>,  <13.293391, 21.906702, 10.854608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691499, 21.945095, 10.848562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001689, -0.138430, -0.990371,
		-0.097150, 0.985710, -0.137613,
		0.995268, 0.095982, -0.015113,
		13.990079, 21.973890, 10.844028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500566, 22.205383, 10.191975>,  <13.293391, 21.906702, 10.854608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500566, 22.205383, 10.191975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.829762, 22.014217, 10.314797>,  <14.027280, 21.899517, 10.388492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.829762, 22.014217, 10.314797>,  <13.500566, 22.205383, 10.191975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.829762, 22.014217, 10.314797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155604, -0.330202, -0.930996,
		0.546330, 0.813979, -0.197387,
		0.822989, -0.477917, 0.307058,
		14.076659, 21.870842, 10.406915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974770, 22.240000, 9.622767>,  <13.500566, 22.205383, 10.191975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974770, 22.240000, 9.622767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.118867, 21.947948, 9.855021>,  <14.205325, 21.772717, 9.994372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.118867, 21.947948, 9.855021>,  <13.974770, 22.240000, 9.622767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118867, 21.947948, 9.855021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195913, -0.549328, -0.812316,
		0.912054, 0.406385, -0.054849,
		0.360243, -0.730130, 0.580633,
		14.226940, 21.728909, 10.029210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513136, 22.068501, 9.241827>,  <13.974770, 22.240000, 9.622767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513136, 22.068501, 9.241827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.437974, 21.769051, 9.496150>,  <14.392877, 21.589380, 9.648744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.437974, 21.769051, 9.496150>,  <14.513136, 22.068501, 9.241827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.437974, 21.769051, 9.496150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236701, -0.662774, -0.710425,
		0.953239, 0.017004, 0.301738,
		-0.187904, -0.748627, 0.635807,
		14.381602, 21.544462, 9.686893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122688, 21.732981, 9.267984>,  <14.513136, 22.068501, 9.241827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122688, 21.732981, 9.267984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.833642, 21.478230, 9.375473>,  <14.660214, 21.325378, 9.439966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.833642, 21.478230, 9.375473>,  <15.122688, 21.732981, 9.267984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.833642, 21.478230, 9.375473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372825, -0.686445, -0.624335,
		0.582089, -0.350968, 0.733481,
		-0.722616, -0.636878, 0.268723,
		14.616858, 21.287167, 9.456090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454869, 21.164387, 9.349257>,  <15.122688, 21.732981, 9.267984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454869, 21.164387, 9.349257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.072167, 21.066086, 9.286997>,  <14.842546, 21.007105, 9.249640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.072167, 21.066086, 9.286997>,  <15.454869, 21.164387, 9.349257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072167, 21.066086, 9.286997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276315, -0.600466, -0.750393,
		0.090947, -0.760950, 0.642404,
		-0.956754, -0.245752, -0.155652,
		14.785141, 20.992359, 9.240301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517807, 20.447277, 9.280064>,  <15.454869, 21.164387, 9.349257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517807, 20.447277, 9.280064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.161265, 20.526875, 9.117146>,  <14.947340, 20.574633, 9.019395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.161265, 20.526875, 9.117146>,  <15.517807, 20.447277, 9.280064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161265, 20.526875, 9.117146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159974, -0.702599, -0.693370,
		-0.424140, -0.683196, 0.594432,
		-0.891355, 0.198992, -0.407294,
		14.893859, 20.586573, 8.994957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245232, 19.836374, 9.158422>,  <15.517807, 20.447277, 9.280064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245232, 19.836374, 9.158422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.045491, 20.075016, 8.907118>,  <14.925647, 20.218201, 8.756335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.045491, 20.075016, 8.907118>,  <15.245232, 19.836374, 9.158422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045491, 20.075016, 8.907118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073694, -0.693266, -0.716904,
		-0.863260, -0.404286, 0.302217,
		-0.499351, 0.596603, -0.628262,
		14.895685, 20.253996, 8.718639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711773, 19.396513, 8.804363>,  <15.245232, 19.836374, 9.158422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711773, 19.396513, 8.804363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.813828, 19.707615, 8.574579>,  <14.875062, 19.894276, 8.436708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.813828, 19.707615, 8.574579>,  <14.711773, 19.396513, 8.804363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813828, 19.707615, 8.574579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279491, -0.628084, -0.726220,
		-0.925629, 0.024730, -0.377623,
		0.255139, 0.777753, -0.574461,
		14.890370, 19.940941, 8.402241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.195129, 23.943621, 15.845226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504813, 23.908104, 15.594558>,  <14.690623, 23.886795, 15.444157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504813, 23.908104, 15.594558>,  <14.195129, 23.943621, 15.845226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504813, 23.908104, 15.594558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631119, -0.183136, -0.753758,
		-0.047839, 0.979070, -0.197823,
		0.774210, -0.088791, -0.626670,
		14.737076, 23.881466, 15.406557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788894, 23.755367, 15.381595>,  <14.195129, 23.943621, 15.845226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788894, 23.755367, 15.381595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138188, 23.775276, 15.187696>,  <14.347765, 23.787222, 15.071356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138188, 23.775276, 15.187696>,  <13.788894, 23.755367, 15.381595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.138188, 23.775276, 15.187696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463612, -0.221498, -0.857906,
		-0.150072, 0.973890, -0.170344,
		0.873237, 0.049774, -0.484748,
		14.400160, 23.790209, 15.042272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547418, 24.057383, 14.769936>,  <13.788894, 23.755367, 15.381595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547418, 24.057383, 14.769936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910987, 23.917152, 14.679641>,  <14.129128, 23.833014, 14.625463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910987, 23.917152, 14.679641>,  <13.547418, 24.057383, 14.769936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910987, 23.917152, 14.679641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344226, -0.325368, -0.880706,
		0.235306, 0.878199, -0.416411,
		0.908922, -0.350575, -0.225738,
		14.183663, 23.811979, 14.611919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.722649, 24.299065, 14.140162>,  <13.547418, 24.057383, 14.769936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.722649, 24.299065, 14.140162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955285, 23.975491, 14.174523>,  <14.094867, 23.781347, 14.195140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955285, 23.975491, 14.174523>,  <13.722649, 24.299065, 14.140162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955285, 23.975491, 14.174523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255177, -0.281684, -0.924953,
		0.772422, 0.516025, -0.370246,
		0.581591, -0.808933, 0.085902,
		14.129763, 23.732811, 14.200294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993926, 24.207197, 13.485467>,  <13.722649, 24.299065, 14.140162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993926, 24.207197, 13.485467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062093, 23.846184, 13.643651>,  <14.102993, 23.629576, 13.738562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062093, 23.846184, 13.643651>,  <13.993926, 24.207197, 13.485467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062093, 23.846184, 13.643651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197111, -0.424444, -0.883739,
		0.965456, 0.072655, -0.250232,
		0.170417, -0.902534, 0.395461,
		14.113218, 23.575424, 13.762289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425463, 23.884388, 13.004186>,  <13.993926, 24.207197, 13.485467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425463, 23.884388, 13.004186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263173, 23.587090, 13.216967>,  <14.165799, 23.408710, 13.344635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263173, 23.587090, 13.216967>,  <14.425463, 23.884388, 13.004186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263173, 23.587090, 13.216967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074235, -0.553287, -0.829676,
		0.910976, -0.376109, 0.169307,
		-0.405724, -0.743247, 0.531952,
		14.141456, 23.364115, 13.376553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808535, 23.232170, 12.898802>,  <14.425463, 23.884388, 13.004186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808535, 23.232170, 12.898802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445846, 23.096699, 12.999321>,  <14.228232, 23.015415, 13.059632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445846, 23.096699, 12.999321>,  <14.808535, 23.232170, 12.898802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.445846, 23.096699, 12.999321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074855, -0.715661, -0.694425,
		0.415031, -0.610840, 0.674258,
		-0.906723, -0.338679, 0.251297,
		14.173829, 22.995094, 13.074710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900746, 22.520765, 12.982092>,  <14.808535, 23.232170, 12.898802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900746, 22.520765, 12.982092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513778, 22.594234, 12.912398>,  <14.281596, 22.638317, 12.870583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513778, 22.594234, 12.912398>,  <14.900746, 22.520765, 12.982092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.513778, 22.594234, 12.912398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006722, -0.669339, -0.742927,
		-0.253078, -0.719895, 0.646299,
		-0.967423, 0.183674, -0.174234,
		14.223551, 22.649336, 12.860128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682392, 21.849306, 12.931908>,  <14.900746, 22.520765, 12.982092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682392, 21.849306, 12.931908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380906, 22.053223, 12.766006>,  <14.200014, 22.175573, 12.666464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.380906, 22.053223, 12.766006>,  <14.682392, 21.849306, 12.931908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380906, 22.053223, 12.766006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106604, -0.527899, -0.842590,
		-0.648497, -0.679288, 0.343540,
		-0.753716, 0.509794, -0.414756,
		14.154791, 22.206161, 12.641579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388165, 21.516489, 13.497147>,  <14.682392, 21.849306, 12.931908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388165, 21.516489, 13.497147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.302817, 21.153713, 13.642436>,  <14.251609, 20.936047, 13.729609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.302817, 21.153713, 13.642436>,  <14.388165, 21.516489, 13.497147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.302817, 21.153713, 13.642436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307866, 0.290425, 0.906020,
		-0.927196, 0.305142, 0.217248,
		-0.213370, -0.906941, 0.363224,
		14.238806, 20.881632, 13.751403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.032702, 21.630043, 14.073256>,  <14.388165, 21.516489, 13.497147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.032702, 21.630043, 14.073256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175172, 21.259296, 14.120685>,  <14.260653, 21.036848, 14.149141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175172, 21.259296, 14.120685>,  <14.032702, 21.630043, 14.073256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.175172, 21.259296, 14.120685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194867, 0.197779, 0.960682,
		-0.913875, -0.319064, 0.251059,
		0.356174, -0.926866, 0.118570,
		14.282024, 20.981237, 14.156256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850736, 21.510067, 14.755932>,  <14.032702, 21.630043, 14.073256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850736, 21.510067, 14.755932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120198, 21.223763, 14.682315>,  <14.281876, 21.051979, 14.638144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120198, 21.223763, 14.682315>,  <13.850736, 21.510067, 14.755932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120198, 21.223763, 14.682315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288060, 0.024969, 0.957287,
		-0.680594, -0.697897, 0.223003,
		0.673656, -0.715762, -0.184042,
		14.322295, 21.009033, 14.627102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849792, 21.019602, 15.323805>,  <13.850736, 21.510067, 14.755932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849792, 21.019602, 15.323805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198800, 20.937965, 15.146241>,  <14.408205, 20.888983, 15.039703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198800, 20.937965, 15.146241>,  <13.849792, 21.019602, 15.323805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198800, 20.937965, 15.146241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423949, -0.135349, 0.895516,
		-0.242850, -0.969550, -0.031570,
		0.872520, -0.204092, -0.443909,
		14.460556, 20.876738, 15.013068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073079, 20.462965, 15.710570>,  <13.849792, 21.019602, 15.323805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073079, 20.462965, 15.710570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376418, 20.645153, 15.524041>,  <14.558421, 20.754467, 15.412124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376418, 20.645153, 15.524041>,  <14.073079, 20.462965, 15.710570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.376418, 20.645153, 15.524041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536448, -0.029668, 0.843412,
		0.370315, -0.889756, -0.266835,
		0.758347, 0.455471, -0.466322,
		14.603922, 20.781794, 15.384145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.639979, 20.087702, 15.942967>,  <14.073079, 20.462965, 15.710570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.639979, 20.087702, 15.942967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800586, 20.424877, 15.799726>,  <14.896950, 20.627182, 15.713780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800586, 20.424877, 15.799726>,  <14.639979, 20.087702, 15.942967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800586, 20.424877, 15.799726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655013, 0.008982, 0.755564,
		0.640111, -0.537934, -0.548530,
		0.401517, 0.842939, -0.358104,
		14.921041, 20.677759, 15.692294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463401, 20.050842, 16.124714>,  <14.639979, 20.087702, 15.942967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463401, 20.050842, 16.124714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350291, 20.425838, 16.043575>,  <15.282425, 20.650837, 15.994892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350291, 20.425838, 16.043575>,  <15.463401, 20.050842, 16.124714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350291, 20.425838, 16.043575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460814, 0.318253, 0.828472,
		0.841243, 0.140797, -0.522003,
		-0.282775, 0.937492, -0.202847,
		15.265459, 20.707087, 15.982721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117851, 20.446077, 16.184505>,  <15.463401, 20.050842, 16.124714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.117851, 20.446077, 16.184505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794974, 20.671619, 16.254364>,  <15.601248, 20.806946, 16.296280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794974, 20.671619, 16.254364>,  <16.117851, 20.446077, 16.184505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794974, 20.671619, 16.254364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417401, 0.336017, 0.844316,
		0.417388, 0.754425, -0.506586,
		-0.807195, 0.563857, 0.174648,
		15.552816, 20.840776, 16.306759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402672, 21.075212, 16.329226>,  <16.117851, 20.446077, 16.184505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402672, 21.075212, 16.329226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029125, 21.117107, 16.466000>,  <15.804996, 21.142244, 16.548063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029125, 21.117107, 16.466000>,  <16.402672, 21.075212, 16.329226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029125, 21.117107, 16.466000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352916, 0.424430, 0.833852,
		-0.057791, 0.899382, -0.433326,
		-0.933869, 0.104738, 0.341935,
		15.748964, 21.148529, 16.568581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378641, 21.682331, 16.641191>,  <16.402672, 21.075212, 16.329226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378641, 21.682331, 16.641191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075977, 21.472961, 16.797905>,  <15.894379, 21.347340, 16.891933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075977, 21.472961, 16.797905>,  <16.378641, 21.682331, 16.641191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.075977, 21.472961, 16.797905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306601, 0.245185, 0.919717,
		-0.577461, 0.816034, -0.025039,
		-0.756660, -0.523424, 0.391782,
		15.848979, 21.315935, 16.915440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097803, 22.141771, 17.206221>,  <16.378641, 21.682331, 16.641191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097803, 22.141771, 17.206221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970038, 21.770241, 17.281330>,  <15.893380, 21.547323, 17.326397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970038, 21.770241, 17.281330>,  <16.097803, 22.141771, 17.206221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970038, 21.770241, 17.281330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258383, 0.105280, 0.960289,
		-0.911710, 0.355245, 0.206365,
		-0.319411, -0.928826, 0.187774,
		15.874215, 21.491592, 17.337662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892787, 22.188635, 17.871529>,  <16.097803, 22.141771, 17.206221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892787, 22.188635, 17.871529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916522, 21.791626, 17.828852>,  <15.930763, 21.553421, 17.803246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916522, 21.791626, 17.828852>,  <15.892787, 22.188635, 17.871529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.916522, 21.791626, 17.828852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289385, -0.085187, 0.953414,
		-0.955372, -0.087448, 0.282166,
		0.059337, -0.992520, -0.106691,
		15.934323, 21.493870, 17.796844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625528, 21.855288, 18.499697>,  <15.892787, 22.188635, 17.871529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625528, 21.855288, 18.499697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822520, 21.539192, 18.353827>,  <15.940716, 21.349535, 18.266304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822520, 21.539192, 18.353827>,  <15.625528, 21.855288, 18.499697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822520, 21.539192, 18.353827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421930, -0.149696, 0.894185,
		-0.761208, -0.594236, 0.259702,
		0.492481, -0.790237, -0.364676,
		15.970264, 21.302120, 18.244423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.528294, 21.324106, 18.996784>,  <15.625528, 21.855288, 18.499697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.528294, 21.324106, 18.996784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848680, 21.205891, 18.788511>,  <16.040911, 21.134962, 18.663548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848680, 21.205891, 18.788511>,  <15.528294, 21.324106, 18.996784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848680, 21.205891, 18.788511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436185, -0.307682, 0.845621,
		-0.410117, -0.904428, -0.117534,
		0.800966, -0.295537, -0.520684,
		16.088970, 21.117229, 18.632307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.287228, 23.218668, 15.163738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.892822, 23.267353, 15.209273>,  <21.656179, 23.296564, 15.236594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.892822, 23.267353, 15.209273>,  <22.287228, 23.218668, 15.163738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892822, 23.267353, 15.209273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160122, -0.502540, -0.849597,
		-0.046200, -0.855943, 0.515002,
		-0.986016, 0.121715, 0.113838,
		21.597017, 23.303867, 15.243424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997496, 22.543213, 14.992193>,  <22.287228, 23.218668, 15.163738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997496, 22.543213, 14.992193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.698719, 22.807873, 14.965961>,  <21.519453, 22.966667, 14.950221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.698719, 22.807873, 14.965961>,  <21.997496, 22.543213, 14.992193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698719, 22.807873, 14.965961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467842, -0.593101, -0.655252,
		-0.472442, -0.458753, 0.752559,
		-0.746942, 0.661647, -0.065582,
		21.474636, 23.006367, 14.946286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384066, 22.139688, 15.206573>,  <21.997496, 22.543213, 14.992193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384066, 22.139688, 15.206573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.292625, 22.449116, 14.970157>,  <21.237761, 22.634773, 14.828306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.292625, 22.449116, 14.970157>,  <21.384066, 22.139688, 15.206573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292625, 22.449116, 14.970157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546548, -0.604393, -0.579651,
		-0.805622, 0.190525, 0.560957,
		-0.228600, 0.773570, -0.591043,
		21.224045, 22.681187, 14.792844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.859692, 21.899382, 14.686584>,  <21.384066, 22.139688, 15.206573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.859692, 21.899382, 14.686584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.913609, 22.255741, 14.513087>,  <20.945959, 22.469557, 14.408989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.913609, 22.255741, 14.513087>,  <20.859692, 21.899382, 14.686584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913609, 22.255741, 14.513087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384939, -0.356274, -0.851405,
		-0.913046, 0.281729, 0.294917,
		0.134795, 0.890897, -0.433743,
		20.954046, 22.523010, 14.382964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172991, 22.170918, 14.368414>,  <20.859692, 21.899382, 14.686584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172991, 22.170918, 14.368414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.447811, 22.357986, 14.145974>,  <20.612703, 22.470228, 14.012510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.447811, 22.357986, 14.145974>,  <20.172991, 22.170918, 14.368414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447811, 22.357986, 14.145974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435998, -0.346896, -0.830403,
		-0.581263, 0.812987, -0.034431,
		0.687051, 0.467671, -0.556099,
		20.653927, 22.498287, 13.979145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.790821, 22.579784, 13.851618>,  <20.172991, 22.170918, 14.368414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.790821, 22.579784, 13.851618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.166134, 22.515598, 13.729060>,  <20.391321, 22.477087, 13.655526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.166134, 22.515598, 13.729060>,  <19.790821, 22.579784, 13.851618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166134, 22.515598, 13.729060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344486, -0.354400, -0.869327,
		0.030912, 0.921223, -0.387806,
		0.938282, -0.160466, -0.306393,
		20.447618, 22.467459, 13.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828060, 22.906229, 13.221507>,  <19.790821, 22.579784, 13.851618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828060, 22.906229, 13.221507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.121628, 22.634583, 13.226652>,  <20.297768, 22.471596, 13.229739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.121628, 22.634583, 13.226652>,  <19.828060, 22.906229, 13.221507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121628, 22.634583, 13.226652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245999, -0.283408, -0.926911,
		0.633124, 0.677114, -0.375061,
		0.733920, -0.679115, 0.012863,
		20.341805, 22.430849, 13.230511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.097794, 22.915197, 12.550838>,  <19.828060, 22.906229, 13.221507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.097794, 22.915197, 12.550838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.266121, 22.584015, 12.699109>,  <20.367117, 22.385305, 12.788073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.266121, 22.584015, 12.699109>,  <20.097794, 22.915197, 12.550838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266121, 22.584015, 12.699109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015595, -0.401959, -0.915525,
		0.907011, 0.391051, -0.156240,
		0.420818, -0.827954, 0.370680,
		20.392366, 22.335629, 12.810313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415924, 22.676338, 11.964016>,  <20.097794, 22.915197, 12.550838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415924, 22.676338, 11.964016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.446457, 22.357388, 12.203470>,  <20.464777, 22.166018, 12.347142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.446457, 22.357388, 12.203470>,  <20.415924, 22.676338, 11.964016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446457, 22.357388, 12.203470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064987, -0.603089, -0.795023,
		0.994962, 0.021782, -0.097855,
		0.076332, -0.797377, 0.598635,
		20.469357, 22.118174, 12.383060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803823, 22.321938, 11.618471>,  <20.415924, 22.676338, 11.964016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803823, 22.321938, 11.618471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.591427, 22.088917, 11.864619>,  <20.463989, 21.949104, 12.012308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.591427, 22.088917, 11.864619>,  <20.803823, 22.321938, 11.618471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.591427, 22.088917, 11.864619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161810, -0.643137, -0.748460,
		0.831784, -0.497000, 0.247239,
		-0.530993, -0.582552, 0.615370,
		20.432129, 21.914152, 12.049231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879925, 21.686602, 11.353353>,  <20.803823, 22.321938, 11.618471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879925, 21.686602, 11.353353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.555119, 21.629536, 11.579724>,  <20.360235, 21.595295, 11.715548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.555119, 21.629536, 11.579724>,  <20.879925, 21.686602, 11.353353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.555119, 21.629536, 11.579724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378444, -0.609477, -0.696647,
		0.444310, -0.779861, 0.440914,
		-0.812015, -0.142666, 0.565931,
		20.311514, 21.586737, 11.749503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787670, 20.957115, 11.380302>,  <20.879925, 21.686602, 11.353353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787670, 20.957115, 11.380302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.431454, 21.125374, 11.449577>,  <20.217724, 21.226330, 11.491142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.431454, 21.125374, 11.449577>,  <20.787670, 20.957115, 11.380302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431454, 21.125374, 11.449577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435153, -0.676760, -0.593833,
		-0.132588, -0.604195, 0.785728,
		-0.890541, 0.420647, 0.173187,
		20.164291, 21.251568, 11.501534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319124, 20.414217, 11.349149>,  <20.787670, 20.957115, 11.380302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319124, 20.414217, 11.349149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.092224, 20.736401, 11.280485>,  <19.956083, 20.929710, 11.239286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.092224, 20.736401, 11.280485>,  <20.319124, 20.414217, 11.349149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092224, 20.736401, 11.280485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507699, -0.506136, -0.697186,
		-0.648437, -0.308326, 0.696035,
		-0.567249, 0.805457, -0.171660,
		19.922049, 20.978037, 11.228988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554157, 20.180820, 11.351528>,  <20.319124, 20.414217, 11.349149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554157, 20.180820, 11.351528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.561760, 20.527184, 11.151590>,  <19.566320, 20.735001, 11.031628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.561760, 20.527184, 11.151590>,  <19.554157, 20.180820, 11.351528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561760, 20.527184, 11.151590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479608, -0.430766, -0.764471,
		-0.877277, 0.254259, 0.407109,
		0.019005, 0.865906, -0.499846,
		19.567461, 20.786955, 11.001637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846695, 20.040707, 11.554404>,  <19.554157, 20.180820, 11.351528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846695, 20.040707, 11.554404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823151, 19.644604, 11.604884>,  <18.809023, 19.406942, 11.635172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.823151, 19.644604, 11.604884>,  <18.846695, 20.040707, 11.554404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823151, 19.644604, 11.604884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178955, 0.134838, 0.974574,
		-0.982095, 0.034782, -0.185148,
		-0.058862, -0.990257, 0.126199,
		18.805492, 19.347527, 11.642744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223034, 19.864479, 12.021538>,  <18.846695, 20.040707, 11.554404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223034, 19.864479, 12.021538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.525097, 19.603210, 12.043818>,  <18.706335, 19.446449, 12.057185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.525097, 19.603210, 12.043818>,  <18.223034, 19.864479, 12.021538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.525097, 19.603210, 12.043818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010871, 0.072476, 0.997311,
		-0.655452, -0.753734, 0.047630,
		0.755159, -0.653171, 0.055699,
		18.751644, 19.407259, 12.060527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059164, 19.404968, 12.531818>,  <18.223034, 19.864479, 12.021538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059164, 19.404968, 12.531818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.455605, 19.357574, 12.507557>,  <18.693468, 19.329138, 12.493000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.455605, 19.357574, 12.507557>,  <18.059164, 19.404968, 12.531818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455605, 19.357574, 12.507557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070315, 0.079132, 0.994381,
		-0.113021, -0.989797, 0.086760,
		0.991101, -0.118486, -0.060654,
		18.752935, 19.322029, 12.489361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283123, 18.994602, 13.174959>,  <18.059164, 19.404968, 12.531818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283123, 18.994602, 13.174959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.624031, 19.141850, 13.026300>,  <18.828577, 19.230198, 12.937105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.624031, 19.141850, 13.026300>,  <18.283123, 18.994602, 13.174959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624031, 19.141850, 13.026300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384676, 0.040403, 0.922167,
		0.354483, -0.928901, -0.107172,
		0.852271, 0.368119, -0.371647,
		18.879713, 19.252285, 12.914806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815664, 18.572138, 13.414999>,  <18.283123, 18.994602, 13.174959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815664, 18.572138, 13.414999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.006771, 18.908913, 13.314698>,  <19.121435, 19.110977, 13.254518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.006771, 18.908913, 13.314698>,  <18.815664, 18.572138, 13.414999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006771, 18.908913, 13.314698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595887, -0.100861, 0.796710,
		0.645489, -0.530063, -0.549888,
		0.477768, 0.841938, -0.250753,
		19.150101, 19.161493, 13.239472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603607, 18.507448, 13.456675>,  <18.815664, 18.572138, 13.414999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603607, 18.507448, 13.456675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.517410, 18.895935, 13.497264>,  <19.465693, 19.129028, 13.521618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.517410, 18.895935, 13.497264>,  <19.603607, 18.507448, 13.456675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517410, 18.895935, 13.497264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567487, 0.039985, 0.822411,
		0.794684, 0.234807, -0.559771,
		-0.215491, 0.971219, 0.101474,
		19.452763, 19.187302, 13.527706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263044, 18.726288, 13.811610>,  <19.603607, 18.507448, 13.456675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263044, 18.726288, 13.811610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.011703, 19.033115, 13.863423>,  <19.860899, 19.217213, 13.894511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.011703, 19.033115, 13.863423>,  <20.263044, 18.726288, 13.811610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011703, 19.033115, 13.863423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410592, 0.185589, 0.892732,
		0.660747, 0.614136, -0.431568,
		-0.628353, 0.767068, 0.129532,
		19.823198, 19.263235, 13.902283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.722322, 19.283541, 14.021062>,  <20.263044, 18.726288, 13.811610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.722322, 19.283541, 14.021062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.359074, 19.388687, 14.151423>,  <20.141125, 19.451775, 14.229640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.359074, 19.388687, 14.151423>,  <20.722322, 19.283541, 14.021062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359074, 19.388687, 14.151423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403563, 0.342098, 0.848590,
		0.111574, 0.902147, -0.416751,
		-0.908123, 0.262866, 0.325904,
		20.086637, 19.467546, 14.249195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810516, 19.970865, 14.287671>,  <20.722322, 19.283541, 14.021062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810516, 19.970865, 14.287671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.482067, 19.834911, 14.471078>,  <20.284998, 19.753338, 14.581122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.482067, 19.834911, 14.471078>,  <20.810516, 19.970865, 14.287671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482067, 19.834911, 14.471078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357478, 0.320003, 0.877387,
		-0.444938, 0.884351, -0.141259,
		-0.821121, -0.339886, 0.458517,
		20.235731, 19.732946, 14.608633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662954, 20.467239, 14.759997>,  <20.810516, 19.970865, 14.287671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662954, 20.467239, 14.759997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.472729, 20.140999, 14.891837>,  <20.358593, 19.945255, 14.970941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.472729, 20.140999, 14.891837>,  <20.662954, 20.467239, 14.759997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.472729, 20.140999, 14.891837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173713, 0.280232, 0.944084,
		-0.862358, 0.506230, 0.008411,
		-0.475566, -0.815599, 0.329599,
		20.330059, 19.896318, 14.990717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193340, 20.708382, 15.360697>,  <20.662954, 20.467239, 14.759997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193340, 20.708382, 15.360697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.288300, 20.321461, 15.396394>,  <20.345276, 20.089308, 15.417812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.288300, 20.321461, 15.396394>,  <20.193340, 20.708382, 15.360697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288300, 20.321461, 15.396394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257342, 0.151211, 0.954416,
		-0.936705, -0.203612, 0.284826,
		0.237400, -0.967304, 0.089242,
		20.359520, 20.031269, 15.423166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797100, 20.519695, 15.844905>,  <20.193340, 20.708382, 15.360697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797100, 20.519695, 15.844905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.112991, 20.274323, 15.846999>,  <20.302526, 20.127098, 15.848255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.112991, 20.274323, 15.846999>,  <19.797100, 20.519695, 15.844905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.112991, 20.274323, 15.846999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106229, 0.145153, 0.983690,
		-0.604187, -0.776293, 0.179796,
		0.789730, -0.613432, 0.005235,
		20.349911, 20.090292, 15.848570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845016, 20.305777, 16.559223>,  <19.797100, 20.519695, 15.844905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845016, 20.305777, 16.559223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.190472, 20.175426, 16.405373>,  <20.397745, 20.097216, 16.313063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.190472, 20.175426, 16.405373>,  <19.845016, 20.305777, 16.559223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190472, 20.175426, 16.405373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461840, 0.205614, 0.862802,
		-0.202082, -0.922783, 0.328078,
		0.863636, -0.325876, -0.384627,
		20.449562, 20.077663, 16.289984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148449, 19.829199, 17.111414>,  <19.845016, 20.305777, 16.559223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148449, 19.829199, 17.111414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.429554, 19.988636, 16.875704>,  <20.598217, 20.084299, 16.734278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.429554, 19.988636, 16.875704>,  <20.148449, 19.829199, 17.111414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429554, 19.988636, 16.875704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524995, 0.268428, 0.807667,
		0.480112, -0.876965, -0.020620,
		0.702761, 0.398596, -0.589278,
		20.640383, 20.108215, 16.698921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220921, 19.137064, 17.428093>,  <20.148449, 19.829199, 17.111414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220921, 19.137064, 17.428093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.960854, 19.074909, 17.725586>,  <19.804813, 19.037617, 17.904081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.960854, 19.074909, 17.725586>,  <20.220921, 19.137064, 17.428093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960854, 19.074909, 17.725586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677813, -0.323656, -0.660164,
		0.343293, -0.933329, 0.105109,
		-0.650170, -0.155385, 0.743731,
		19.765802, 19.028294, 17.948706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874727, 18.402090, 17.383749>,  <20.220921, 19.137064, 17.428093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874727, 18.402090, 17.383749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.608673, 18.597958, 17.609251>,  <19.449041, 18.715479, 17.744553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.608673, 18.597958, 17.609251>,  <19.874727, 18.402090, 17.383749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608673, 18.597958, 17.609251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742880, -0.357429, -0.566016,
		-0.075659, -0.795279, 0.601504,
		-0.665135, 0.489669, 0.563754,
		19.409132, 18.744858, 17.778378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352633, 17.946161, 17.494740>,  <19.874727, 18.402090, 17.383749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352633, 17.946161, 17.494740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.180984, 18.302326, 17.555431>,  <19.077995, 18.516026, 17.591846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.180984, 18.302326, 17.555431>,  <19.352633, 17.946161, 17.494740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180984, 18.302326, 17.555431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818699, -0.312464, -0.481765,
		-0.381562, -0.330952, 0.863065,
		-0.429118, 0.890414, 0.151726,
		19.052248, 18.569450, 17.600950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641792, 17.757668, 17.674423>,  <19.352633, 17.946161, 17.494740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.641792, 17.757668, 17.674423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.647831, 18.148674, 17.590298>,  <18.651455, 18.383278, 17.539822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.647831, 18.148674, 17.590298>,  <18.641792, 17.757668, 17.674423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647831, 18.148674, 17.590298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886531, -0.084192, -0.454945,
		-0.462424, 0.193319, 0.865328,
		0.015096, 0.977517, -0.210316,
		18.652359, 18.441929, 17.527203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016233, 17.995314, 17.918417>,  <18.641792, 17.757668, 17.674423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016233, 17.995314, 17.918417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.153946, 18.227665, 17.623377>,  <18.236572, 18.367075, 17.446352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.153946, 18.227665, 17.623377>,  <18.016233, 17.995314, 17.918417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153946, 18.227665, 17.623377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840610, -0.159185, -0.517721,
		-0.418147, 0.798274, 0.433487,
		0.344279, 0.580878, -0.737599,
		18.257229, 18.401928, 17.402098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338551, 18.233572, 17.628073>,  <18.016233, 17.995314, 17.918417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338551, 18.233572, 17.628073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.601040, 18.321838, 17.339441>,  <17.758533, 18.374798, 17.166262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.601040, 18.321838, 17.339441>,  <17.338551, 18.233572, 17.628073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601040, 18.321838, 17.339441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738517, -0.008365, -0.674183,
		-0.154806, 0.975313, 0.157477,
		0.656222, 0.220667, -0.721581,
		17.797907, 18.388039, 17.122967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987947, 18.763355, 17.226419>,  <17.338551, 18.233572, 17.628073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987947, 18.763355, 17.226419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.273773, 18.569519, 17.024599>,  <17.445269, 18.453218, 16.903507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.273773, 18.569519, 17.024599>,  <16.987947, 18.763355, 17.226419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273773, 18.569519, 17.024599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695211, -0.411515, -0.589353,
		0.077965, 0.771900, -0.630946,
		0.714565, -0.484589, -0.504549,
		17.488142, 18.424143, 16.873234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888988, 18.860394, 16.512016>,  <16.987947, 18.763355, 17.226419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888988, 18.860394, 16.512016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.073891, 18.506008, 16.526928>,  <17.184832, 18.293377, 16.535875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.073891, 18.506008, 16.526928>,  <16.888988, 18.860394, 16.512016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073891, 18.506008, 16.526928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688075, -0.384891, -0.615152,
		0.559351, 0.258706, -0.787526,
		0.462255, -0.885963, 0.037280,
		17.212566, 18.240219, 16.538113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941746, 18.749569, 15.814530>,  <16.888988, 18.860394, 16.512016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941746, 18.749569, 15.814530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.977264, 18.395515, 15.997247>,  <16.998575, 18.183084, 16.106876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.977264, 18.395515, 15.997247>,  <16.941746, 18.749569, 15.814530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.977264, 18.395515, 15.997247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289122, -0.461761, -0.838561,
		0.953165, -0.057607, -0.296914,
		0.088796, -0.885132, 0.456790,
		17.003902, 18.129976, 16.134283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364498, 18.221020, 15.585668>,  <16.941746, 18.749569, 15.814530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364498, 18.221020, 15.585668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059368, 18.029644, 15.759652>,  <16.876289, 17.914818, 15.864043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059368, 18.029644, 15.759652>,  <17.364498, 18.221020, 15.585668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059368, 18.029644, 15.759652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220499, -0.439884, -0.870564,
		0.607846, -0.759997, 0.230059,
		-0.762826, -0.478441, 0.434961,
		16.830521, 17.886112, 15.890141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479740, 17.537493, 15.384878>,  <17.364498, 18.221020, 15.585668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479740, 17.537493, 15.384878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.096138, 17.575825, 15.491559>,  <16.865976, 17.598824, 15.555568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.096138, 17.575825, 15.491559>,  <17.479740, 17.537493, 15.384878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096138, 17.575825, 15.491559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270950, -0.585877, -0.763763,
		0.083061, -0.804714, 0.587824,
		-0.959003, 0.095832, 0.266701,
		16.808437, 17.604574, 15.571569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176449, 16.880358, 15.271264>,  <17.479740, 17.537493, 15.384878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176449, 16.880358, 15.271264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.877235, 17.145737, 15.264514>,  <16.697708, 17.304964, 15.260464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.877235, 17.145737, 15.264514>,  <17.176449, 16.880358, 15.271264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877235, 17.145737, 15.264514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360536, -0.427587, -0.828965,
		-0.557190, -0.614009, 0.559046,
		-0.748033, 0.663447, -0.016875,
		16.652826, 17.344770, 15.259452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656404, 16.516207, 15.156162>,  <17.176449, 16.880358, 15.271264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656404, 16.516207, 15.156162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.538498, 16.883427, 15.050109>,  <16.467754, 17.103760, 14.986477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.538498, 16.883427, 15.050109>,  <16.656404, 16.516207, 15.156162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538498, 16.883427, 15.050109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403429, -0.371081, -0.836388,
		-0.866233, -0.139575, 0.479750,
		-0.294765, 0.918051, -0.265134,
		16.450068, 17.158842, 14.970569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008072, 16.353708, 14.873856>,  <16.656404, 16.516207, 15.156162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008072, 16.353708, 14.873856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.105946, 16.707340, 14.714593>,  <16.164671, 16.919519, 14.619036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.105946, 16.707340, 14.714593>,  <16.008072, 16.353708, 14.873856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105946, 16.707340, 14.714593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467515, -0.252177, -0.847252,
		-0.849446, 0.393456, 0.351617,
		0.244687, 0.884081, -0.398157,
		16.179352, 16.972565, 14.595146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.757945, 20.746325, 19.387659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.042198, 20.929996, 19.174435>,  <16.212749, 21.040199, 19.046499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.042198, 20.929996, 19.174435>,  <15.757945, 20.746325, 19.387659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042198, 20.929996, 19.174435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654497, -0.153465, 0.740326,
		0.258138, -0.874986, -0.409591,
		0.710632, 0.459183, -0.533060,
		16.255388, 21.067751, 19.014517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426310, 20.274920, 19.471189>,  <15.757945, 20.746325, 19.387659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426310, 20.274920, 19.471189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547844, 20.638172, 19.355963>,  <16.620764, 20.856123, 19.286827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547844, 20.638172, 19.355963>,  <16.426310, 20.274920, 19.471189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547844, 20.638172, 19.355963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712713, -0.016003, 0.701273,
		0.632238, -0.418379, -0.652099,
		0.303834, 0.908131, -0.288066,
		16.638994, 20.910612, 19.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204224, 20.242737, 19.359013>,  <16.426310, 20.274920, 19.471189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204224, 20.242737, 19.359013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.146687, 20.635937, 19.404657>,  <17.112164, 20.871857, 19.432045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.146687, 20.635937, 19.404657>,  <17.204224, 20.242737, 19.359013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146687, 20.635937, 19.404657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816659, 0.052789, 0.574702,
		0.558907, 0.175859, -0.810368,
		-0.143845, 0.982999, 0.114112,
		17.103533, 20.930836, 19.438890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835548, 20.498821, 19.613144>,  <17.204224, 20.242737, 19.359013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835548, 20.498821, 19.613144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.616570, 20.825977, 19.683975>,  <17.485182, 21.022270, 19.726475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.616570, 20.825977, 19.683975>,  <17.835548, 20.498821, 19.613144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616570, 20.825977, 19.683975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713418, 0.345531, 0.609625,
		0.437420, 0.460069, -0.772658,
		-0.547447, 0.817890, 0.177079,
		17.452335, 21.071344, 19.737099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283026, 21.167400, 19.566149>,  <17.835548, 20.498821, 19.613144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283026, 21.167400, 19.566149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.983891, 21.281521, 19.805927>,  <17.804409, 21.349993, 19.949795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.983891, 21.281521, 19.805927>,  <18.283026, 21.167400, 19.566149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983891, 21.281521, 19.805927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658088, 0.437588, 0.612729,
		-0.087497, 0.852713, -0.515001,
		-0.747840, 0.285303, 0.599447,
		17.759539, 21.367111, 19.985762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449131, 21.812513, 19.766466>,  <18.283026, 21.167400, 19.566149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449131, 21.812513, 19.766466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.172150, 21.690865, 20.028160>,  <18.005960, 21.617876, 20.185177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.172150, 21.690865, 20.028160>,  <18.449131, 21.812513, 19.766466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172150, 21.690865, 20.028160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482891, 0.478369, 0.733471,
		-0.536028, 0.823817, -0.184391,
		-0.692452, -0.304120, 0.654233,
		17.964415, 21.599628, 20.224430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229767, 22.482521, 19.939659>,  <18.449131, 21.812513, 19.766466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229767, 22.482521, 19.939659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.110889, 22.221729, 20.218685>,  <18.039564, 22.065254, 20.386101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.110889, 22.221729, 20.218685>,  <18.229767, 22.482521, 19.939659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.110889, 22.221729, 20.218685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514006, 0.506438, 0.692328,
		-0.804658, 0.564309, 0.184611,
		-0.297193, -0.651979, 0.697567,
		18.021732, 22.026136, 20.427956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067371, 22.826159, 20.428673>,  <18.229767, 22.482521, 19.939659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067371, 22.826159, 20.428673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.134926, 22.485363, 20.626902>,  <18.175459, 22.280886, 20.745838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.134926, 22.485363, 20.626902>,  <18.067371, 22.826159, 20.428673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134926, 22.485363, 20.626902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527960, 0.502775, 0.684453,
		-0.832308, 0.146048, 0.534727,
		0.168884, -0.851990, 0.495571,
		18.185591, 22.229767, 20.775574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076563, 22.985659, 21.185207>,  <18.067371, 22.826159, 20.428673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076563, 22.985659, 21.185207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.261353, 22.632263, 21.154137>,  <18.372227, 22.420227, 21.135494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.261353, 22.632263, 21.154137>,  <18.076563, 22.985659, 21.185207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261353, 22.632263, 21.154137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725474, 0.326059, 0.606113,
		-0.510166, -0.336358, 0.791577,
		0.461972, -0.883487, -0.077675,
		18.399944, 22.367218, 21.130835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219858, 22.723299, 21.892824>,  <18.076563, 22.985659, 21.185207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219858, 22.723299, 21.892824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.473801, 22.534702, 21.647989>,  <18.626167, 22.421545, 21.501087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.473801, 22.534702, 21.647989>,  <18.219858, 22.723299, 21.892824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473801, 22.534702, 21.647989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759516, 0.235503, 0.606362,
		-0.141745, -0.849845, 0.507614,
		0.634858, -0.471489, -0.612089,
		18.664259, 22.393255, 21.464363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688049, 22.378082, 22.350649>,  <18.219858, 22.723299, 21.892824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688049, 22.378082, 22.350649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.885490, 22.360725, 22.003208>,  <19.003956, 22.350311, 21.794743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.885490, 22.360725, 22.003208>,  <18.688049, 22.378082, 22.350649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.885490, 22.360725, 22.003208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806086, 0.397741, 0.438209,
		0.326464, -0.916471, 0.231305,
		0.493605, -0.043392, -0.868603,
		19.033571, 22.347708, 21.742628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.383604, 22.157314, 22.568018>,  <18.688049, 22.378082, 22.350649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.383604, 22.157314, 22.568018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.479622, 22.289352, 22.202852>,  <19.537231, 22.368576, 21.983753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.479622, 22.289352, 22.202852>,  <19.383604, 22.157314, 22.568018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.479622, 22.289352, 22.202852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909366, 0.252671, 0.330472,
		0.339755, -0.909502, -0.239527,
		0.240044, 0.330097, -0.912916,
		19.551636, 22.388382, 21.928978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022259, 21.859880, 22.458553>,  <19.383604, 22.157314, 22.568018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022259, 21.859880, 22.458553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.999416, 22.193787, 22.239498>,  <19.985712, 22.394131, 22.108065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.999416, 22.193787, 22.239498>,  <20.022259, 21.859880, 22.458553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.999416, 22.193787, 22.239498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809076, 0.360069, 0.464485,
		0.584923, -0.416558, -0.695949,
		-0.057104, 0.834763, -0.547640,
		19.982285, 22.444216, 22.075207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634495, 22.032663, 22.164778>,  <20.022259, 21.859880, 22.458553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634495, 22.032663, 22.164778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.479645, 22.401443, 22.169485>,  <20.386734, 22.622711, 22.172310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.479645, 22.401443, 22.169485>,  <20.634495, 22.032663, 22.164778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479645, 22.401443, 22.169485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830579, 0.343159, 0.438612,
		0.400341, 0.179571, -0.898600,
		-0.387125, 0.921952, 0.011768,
		20.363508, 22.678030, 22.173016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.220421, 22.366713, 22.399008>,  <20.634495, 22.032663, 22.164778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.220421, 22.366713, 22.399008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.606812, 22.288013, 22.331860>,  <21.838646, 22.240795, 22.291571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.606812, 22.288013, 22.331860>,  <21.220421, 22.366713, 22.399008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606812, 22.288013, 22.331860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248103, -0.521611, -0.816313,
		0.073043, 0.830188, -0.552678,
		0.965976, -0.196747, -0.167872,
		21.896605, 22.228989, 22.281498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477030, 22.588366, 21.662035>,  <21.220421, 22.366713, 22.399008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477030, 22.588366, 21.662035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.680462, 22.275444, 21.805897>,  <21.802521, 22.087692, 21.892214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.680462, 22.275444, 21.805897>,  <21.477030, 22.588366, 21.662035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680462, 22.275444, 21.805897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140200, -0.487377, -0.861863,
		0.849524, 0.387902, -0.357548,
		0.508579, -0.782302, 0.359655,
		21.833036, 22.040754, 21.913794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851809, 22.358471, 21.085604>,  <21.477030, 22.588366, 21.662035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851809, 22.358471, 21.085604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.864613, 22.046425, 21.335531>,  <21.872295, 21.859198, 21.485487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.864613, 22.046425, 21.335531>,  <21.851809, 22.358471, 21.085604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864613, 22.046425, 21.335531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178451, -0.619555, -0.764400,
		0.983428, -0.087032, -0.159043,
		0.032009, -0.780114, 0.624818,
		21.874216, 21.812391, 21.522976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.137186, 21.822735, 20.748100>,  <21.851809, 22.358471, 21.085604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.137186, 21.822735, 20.748100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.972828, 21.595646, 21.033436>,  <21.874212, 21.459393, 21.204638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.972828, 21.595646, 21.033436>,  <22.137186, 21.822735, 20.748100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972828, 21.595646, 21.033436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195923, -0.709176, -0.677262,
		0.890381, -0.418045, 0.180168,
		-0.410897, -0.567722, 0.713341,
		21.849560, 21.425329, 21.247438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390127, 21.103271, 20.675900>,  <22.137186, 21.822735, 20.748100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390127, 21.103271, 20.675900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.052090, 21.058365, 20.884979>,  <21.849268, 21.031422, 21.010427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.052090, 21.058365, 20.884979>,  <22.390127, 21.103271, 20.675900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052090, 21.058365, 20.884979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308527, -0.696058, -0.648317,
		0.436614, -0.709154, 0.553596,
		-0.845091, -0.112265, 0.522702,
		21.798563, 21.024685, 21.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303604, 20.357981, 20.762560>,  <22.390127, 21.103271, 20.675900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303604, 20.357981, 20.762560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.936047, 20.511124, 20.800627>,  <21.715513, 20.603010, 20.823467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.936047, 20.511124, 20.800627>,  <22.303604, 20.357981, 20.762560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.936047, 20.511124, 20.800627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337598, -0.638303, -0.691807,
		-0.204120, -0.667824, 0.715784,
		-0.918892, 0.382859, 0.095166,
		21.660379, 20.625980, 20.829176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.860973, 19.877127, 20.701740>,  <22.303604, 20.357981, 20.762560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.860973, 19.877127, 20.701740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.607437, 20.175415, 20.619619>,  <21.455317, 20.354387, 20.570347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.607437, 20.175415, 20.619619>,  <21.860973, 19.877127, 20.701740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607437, 20.175415, 20.619619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453699, -0.573434, -0.682152,
		-0.626424, -0.339227, 0.701797,
		-0.633838, 0.745721, -0.205305,
		21.417286, 20.399132, 20.558027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259426, 19.556074, 20.760880>,  <21.860973, 19.877127, 20.701740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259426, 19.556074, 20.760880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.168129, 19.880779, 20.545864>,  <21.113350, 20.075602, 20.416855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.168129, 19.880779, 20.545864>,  <21.259426, 19.556074, 20.760880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168129, 19.880779, 20.545864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510284, -0.569946, -0.644028,
		-0.829165, 0.127302, 0.544316,
		-0.228245, 0.811761, -0.537540,
		21.099655, 20.124308, 20.384602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603712, 19.479227, 20.643454>,  <21.259426, 19.556074, 20.760880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603712, 19.479227, 20.643454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.732685, 19.715794, 20.347815>,  <20.810068, 19.857733, 20.170431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.732685, 19.715794, 20.347815>,  <20.603712, 19.479227, 20.643454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732685, 19.715794, 20.347815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520691, -0.541248, -0.660251,
		-0.790518, 0.597727, 0.133429,
		0.322432, 0.591416, -0.739097,
		20.829414, 19.893219, 20.126085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031136, 19.774082, 20.316824>,  <20.603712, 19.479227, 20.643454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031136, 19.774082, 20.316824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.315796, 19.807823, 20.037844>,  <20.486593, 19.828068, 19.870457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.315796, 19.807823, 20.037844>,  <20.031136, 19.774082, 20.316824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.315796, 19.807823, 20.037844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626584, -0.372762, -0.684428,
		-0.317715, 0.924085, -0.212424,
		0.711653, 0.084352, -0.697449,
		20.529291, 19.833128, 19.828609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735277, 19.980675, 19.745949>,  <20.031136, 19.774082, 20.316824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735277, 19.980675, 19.745949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.057896, 19.807949, 19.584446>,  <20.251467, 19.704313, 19.487545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.057896, 19.807949, 19.584446>,  <19.735277, 19.980675, 19.745949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.057896, 19.807949, 19.584446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529487, -0.223914, -0.818234,
		0.262919, 0.873727, -0.409237,
		0.806547, -0.431814, -0.403756,
		20.299860, 19.678406, 19.463320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646919, 20.186522, 19.149057>,  <19.735277, 19.980675, 19.745949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646919, 20.186522, 19.149057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.907639, 19.889408, 19.087822>,  <20.064070, 19.711140, 19.051081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.907639, 19.889408, 19.087822>,  <19.646919, 20.186522, 19.149057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.907639, 19.889408, 19.087822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502149, -0.271411, -0.821086,
		0.568337, 0.612055, -0.549892,
		0.651797, -0.742781, -0.153090,
		20.103178, 19.666574, 19.041895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647530, 20.033852, 18.435194>,  <19.646919, 20.186522, 19.149057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647530, 20.033852, 18.435194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.825695, 19.696243, 18.554682>,  <19.932594, 19.493679, 18.626373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.825695, 19.696243, 18.554682>,  <19.647530, 20.033852, 18.435194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825695, 19.696243, 18.554682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498549, -0.510942, -0.700277,
		0.743676, 0.162989, -0.648368,
		0.445416, -0.844022, 0.298718,
		19.959320, 19.443037, 18.644297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.064098, 19.746847, 17.870893>,  <19.647530, 20.033852, 18.435194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.064098, 19.746847, 17.870893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.948177, 19.446274, 18.107996>,  <19.878626, 19.265930, 18.250257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.948177, 19.446274, 18.107996>,  <20.064098, 19.746847, 17.870893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948177, 19.446274, 18.107996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469634, -0.427999, -0.772179,
		0.833942, -0.502157, -0.228865,
		-0.289801, -0.751435, 0.592756,
		19.861237, 19.220842, 18.285824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753740, 19.803385, 17.570135>,  <20.064098, 19.746847, 17.870893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753740, 19.803385, 17.570135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.888306, 20.048897, 17.284449>,  <20.969046, 20.196203, 17.113037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.888306, 20.048897, 17.284449>,  <20.753740, 19.803385, 17.570135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.888306, 20.048897, 17.284449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654745, 0.392667, 0.645849,
		0.676857, -0.684901, -0.269771,
		0.336413, 0.613779, -0.714214,
		20.989229, 20.233030, 17.070185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434950, 19.960285, 17.789038>,  <20.753740, 19.803385, 17.570135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434950, 19.960285, 17.789038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.385181, 20.260872, 17.529863>,  <21.355320, 20.441223, 17.374359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.385181, 20.260872, 17.529863>,  <21.434950, 19.960285, 17.789038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385181, 20.260872, 17.529863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669338, 0.545619, 0.504268,
		0.732466, -0.370946, -0.570871,
		-0.124422, 0.751464, -0.647936,
		21.347855, 20.486311, 17.335484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.043982, 20.236769, 17.653561>,  <21.434950, 19.960285, 17.789038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.043982, 20.236769, 17.653561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.802555, 20.550415, 17.595778>,  <21.657700, 20.738604, 17.561108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.802555, 20.550415, 17.595778>,  <22.043982, 20.236769, 17.653561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802555, 20.550415, 17.595778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590983, 0.561594, 0.579095,
		0.535205, 0.264150, -0.802359,
		-0.603568, 0.784115, -0.144459,
		21.621485, 20.785650, 17.552439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510454, 20.856239, 17.598856>,  <22.043982, 20.236769, 17.653561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510454, 20.856239, 17.598856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.150890, 21.006451, 17.689137>,  <21.935152, 21.096577, 17.743305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.150890, 21.006451, 17.689137>,  <22.510454, 20.856239, 17.598856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.150890, 21.006451, 17.689137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428952, 0.649403, 0.627914,
		0.089227, 0.661253, -0.744837,
		-0.898910, 0.375526, 0.225701,
		21.881218, 21.119108, 17.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673615, 21.558546, 17.617786>,  <22.510454, 20.856239, 17.598856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673615, 21.558546, 17.617786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.311089, 21.555210, 17.786793>,  <22.093573, 21.553209, 17.888197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.311089, 21.555210, 17.786793>,  <22.673615, 21.558546, 17.617786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.311089, 21.555210, 17.786793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324763, 0.625990, 0.708989,
		-0.270404, 0.779786, -0.564637,
		-0.906317, -0.008340, 0.422516,
		22.039194, 21.552708, 17.913548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.490822, 22.176735, 17.517996>,  <22.673615, 21.558546, 17.617786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.490822, 22.176735, 17.517996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.301361, 22.016014, 17.831482>,  <22.187685, 21.919582, 18.019573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.301361, 22.016014, 17.831482>,  <22.490822, 22.176735, 17.517996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301361, 22.016014, 17.831482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521416, 0.589217, 0.617211,
		-0.709775, 0.700984, -0.069576,
		-0.473650, -0.401803, 0.783716,
		22.159266, 21.895473, 18.066597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.195772, 22.769686, 17.982546>,  <22.490822, 22.176735, 17.517996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.195772, 22.769686, 17.982546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.220215, 22.431885, 18.195366>,  <22.234880, 22.229204, 18.323059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.220215, 22.431885, 18.195366>,  <22.195772, 22.769686, 17.982546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220215, 22.431885, 18.195366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509812, 0.484679, 0.710758,
		-0.858112, 0.227813, 0.460157,
		0.061108, -0.844504, 0.532051,
		22.238548, 22.178534, 18.354980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939529, 23.433578, 17.979080>,  <22.195772, 22.769686, 17.982546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939529, 23.433578, 17.979080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.033611, 23.802006, 17.854940>,  <22.090061, 24.023062, 17.780457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.033611, 23.802006, 17.854940>,  <21.939529, 23.433578, 17.979080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033611, 23.802006, 17.854940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500501, -0.158939, -0.851021,
		-0.833173, 0.355493, 0.423611,
		0.235204, 0.921066, -0.310348,
		22.104172, 24.078325, 17.761835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293118, 23.737844, 17.703115>,  <21.939529, 23.433578, 17.979080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293118, 23.737844, 17.703115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.564686, 23.983620, 17.542353>,  <21.727627, 24.131084, 17.445894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.564686, 23.983620, 17.542353>,  <21.293118, 23.737844, 17.703115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.564686, 23.983620, 17.542353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427175, -0.114644, -0.896871,
		-0.597150, 0.780590, 0.184640,
		0.678921, 0.614440, -0.401908,
		21.768362, 24.167952, 17.421780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933556, 24.307989, 17.332552>,  <21.293118, 23.737844, 17.703115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933556, 24.307989, 17.332552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.306255, 24.258049, 17.196165>,  <21.529875, 24.228085, 17.114332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.306255, 24.258049, 17.196165>,  <20.933556, 24.307989, 17.332552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306255, 24.258049, 17.196165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335543, 0.062829, -0.939927,
		0.138772, 0.990184, 0.016648,
		0.931747, -0.124850, -0.340969,
		21.585779, 24.220594, 17.093874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.934881, 24.733711, 16.783823>,  <20.933556, 24.307989, 17.332552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.934881, 24.733711, 16.783823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.226685, 24.464958, 16.732613>,  <21.401766, 24.303705, 16.701885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.226685, 24.464958, 16.732613>,  <20.934881, 24.733711, 16.783823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.226685, 24.464958, 16.732613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275144, -0.116905, -0.954269,
		0.626191, 0.731372, -0.270148,
		0.729507, -0.671884, -0.128028,
		21.445538, 24.263393, 16.694204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202175, 24.858858, 16.038155>,  <20.934881, 24.733711, 16.783823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202175, 24.858858, 16.038155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.342144, 24.500057, 16.146183>,  <21.426125, 24.284777, 16.211000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.342144, 24.500057, 16.146183>,  <21.202175, 24.858858, 16.038155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342144, 24.500057, 16.146183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000491, -0.288122, -0.957594,
		0.936778, 0.335216, -0.100380,
		0.349923, -0.897004, 0.270071,
		21.447121, 24.230957, 16.227203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663054, 24.727175, 15.487107>,  <21.202175, 24.858858, 16.038155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663054, 24.727175, 15.487107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.580769, 24.368923, 15.644856>,  <21.531397, 24.153973, 15.739506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.580769, 24.368923, 15.644856>,  <21.663054, 24.727175, 15.487107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580769, 24.368923, 15.644856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034063, -0.396195, -0.917534,
		0.978019, -0.202182, 0.050994,
		-0.205713, -0.895630, 0.394373,
		21.519054, 24.100235, 15.763168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020340, 24.168190, 15.038295>,  <21.663054, 24.727175, 15.487107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020340, 24.168190, 15.038295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.763062, 23.949146, 15.252370>,  <21.608694, 23.817720, 15.380815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.763062, 23.949146, 15.252370>,  <22.020340, 24.168190, 15.038295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763062, 23.949146, 15.252370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173340, -0.576671, -0.798376,
		0.745824, -0.606281, 0.275990,
		-0.643196, -0.547607, 0.535188,
		21.570103, 23.784864, 15.412926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<19.673317, 25.093782, 20.376913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.516994, 24.725636, 20.371397>,  <19.423201, 24.504747, 20.368088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.516994, 24.725636, 20.371397>,  <19.673317, 25.093782, 20.376913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516994, 24.725636, 20.371397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594603, 0.263859, -0.759491,
		0.702650, -0.288616, -0.650372,
		-0.390808, -0.920369, -0.013788,
		19.399752, 24.449524, 20.367260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770758, 24.795891, 19.640482>,  <19.673317, 25.093782, 20.376913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770758, 24.795891, 19.640482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.494759, 24.562832, 19.812262>,  <19.329159, 24.422997, 19.915329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.494759, 24.562832, 19.812262>,  <19.770758, 24.795891, 19.640482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.494759, 24.562832, 19.812262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494389, -0.053968, -0.867563,
		0.528658, -0.810932, -0.250816,
		-0.689999, -0.582646, 0.429447,
		19.287758, 24.388039, 19.941095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.560524, 24.319933, 19.105953>,  <19.770758, 24.795891, 19.640482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.560524, 24.319933, 19.105953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.258308, 24.263229, 19.361786>,  <19.076979, 24.229208, 19.515285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.258308, 24.263229, 19.361786>,  <19.560524, 24.319933, 19.105953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258308, 24.263229, 19.361786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635605, -0.077801, -0.768084,
		0.158643, -0.986839, -0.031320,
		-0.755538, -0.141758, 0.639583,
		19.031647, 24.220703, 19.553661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.222559, 23.677750, 18.823776>,  <19.560524, 24.319933, 19.105953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.222559, 23.677750, 18.823776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.956558, 23.865448, 19.056183>,  <18.796957, 23.978067, 19.195627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.956558, 23.865448, 19.056183>,  <19.222559, 23.677750, 18.823776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956558, 23.865448, 19.056183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685412, -0.074480, -0.724336,
		-0.296620, -0.879919, 0.371158,
		-0.665001, 0.469249, 0.581015,
		18.757057, 24.006222, 19.230488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605989, 23.301237, 18.864029>,  <19.222559, 23.677750, 18.823776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605989, 23.301237, 18.864029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.473366, 23.663788, 18.968758>,  <18.393791, 23.881317, 19.031595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.473366, 23.663788, 18.968758>,  <18.605989, 23.301237, 18.864029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473366, 23.663788, 18.968758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700706, -0.050754, -0.711643,
		-0.631727, -0.419413, 0.651931,
		-0.331560, 0.906376, 0.261823,
		18.373898, 23.935701, 19.047304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.911428, 23.164309, 18.787188>,  <18.605989, 23.301237, 18.864029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.911428, 23.164309, 18.787188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.945061, 23.562840, 18.793642>,  <17.965240, 23.801958, 18.797514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.945061, 23.562840, 18.793642>,  <17.911428, 23.164309, 18.787188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945061, 23.562840, 18.793642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673339, 0.068746, -0.736131,
		-0.734538, 0.051030, 0.676646,
		0.084081, 0.996328, 0.016136,
		17.970285, 23.861738, 18.798483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155460, 23.417040, 18.917795>,  <17.911428, 23.164309, 18.787188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155460, 23.417040, 18.917795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.373550, 23.720451, 18.775043>,  <17.504404, 23.902498, 18.689392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.373550, 23.720451, 18.775043>,  <17.155460, 23.417040, 18.917795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373550, 23.720451, 18.775043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689264, 0.163337, -0.705858,
		-0.477123, 0.630835, 0.611883,
		0.545224, 0.758530, -0.356880,
		17.537117, 23.948009, 18.667980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749390, 24.083595, 18.875978>,  <17.155460, 23.417040, 18.917795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749390, 24.083595, 18.875978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.045464, 24.103115, 18.607727>,  <17.223108, 24.114826, 18.446775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.045464, 24.103115, 18.607727>,  <16.749390, 24.083595, 18.875978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045464, 24.103115, 18.607727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647421, 0.321064, -0.691205,
		0.181586, 0.945800, 0.269240,
		0.740185, 0.048798, -0.670631,
		17.267519, 24.117754, 18.406538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509117, 24.591738, 18.497194>,  <16.749390, 24.083595, 18.875978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509117, 24.591738, 18.497194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.803635, 24.460545, 18.260450>,  <16.980345, 24.381828, 18.118404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.803635, 24.460545, 18.260450>,  <16.509117, 24.591738, 18.497194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.803635, 24.460545, 18.260450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567755, 0.176423, -0.804071,
		0.368141, 0.928063, -0.056316,
		0.736293, -0.327985, -0.591861,
		17.024523, 24.362148, 18.082891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481102, 25.015343, 17.863085>,  <16.509117, 24.591738, 18.497194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481102, 25.015343, 17.863085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.698822, 24.694458, 17.764944>,  <16.829454, 24.501928, 17.706060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.698822, 24.694458, 17.764944>,  <16.481102, 25.015343, 17.863085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698822, 24.694458, 17.764944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481681, -0.059412, -0.874330,
		0.686819, 0.594079, -0.418748,
		0.544300, -0.802210, -0.245351,
		16.862112, 24.453794, 17.691339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921175, 25.189787, 17.226427>,  <16.481102, 25.015343, 17.863085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921175, 25.189787, 17.226427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.836895, 24.800953, 17.267714>,  <16.786327, 24.567652, 17.292486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.836895, 24.800953, 17.267714>,  <16.921175, 25.189787, 17.226427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836895, 24.800953, 17.267714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549732, 0.030515, -0.834784,
		0.808332, -0.232629, -0.540817,
		-0.210698, -0.972087, 0.103217,
		16.773685, 24.509327, 17.298679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985044, 24.878267, 16.597700>,  <16.921175, 25.189787, 17.226427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.985044, 24.878267, 16.597700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.746693, 24.612549, 16.778206>,  <16.603682, 24.453117, 16.886509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.746693, 24.612549, 16.778206>,  <16.985044, 24.878267, 16.597700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746693, 24.612549, 16.778206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550983, -0.070627, -0.831522,
		0.584248, -0.744125, -0.323931,
		-0.595879, -0.664296, 0.451264,
		16.567928, 24.413260, 16.913586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765200, 24.851498, 16.397961>,  <16.985044, 24.878267, 16.597700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765200, 24.851498, 16.397961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.927719, 25.166927, 16.213320>,  <18.025230, 25.356186, 16.102535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.927719, 25.166927, 16.213320>,  <17.765200, 24.851498, 16.397961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927719, 25.166927, 16.213320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407248, 0.295948, 0.864039,
		0.817968, -0.539042, -0.200902,
		0.406297, 0.788573, -0.461600,
		18.049608, 25.403500, 16.074841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449869, 24.913542, 16.632633>,  <17.765200, 24.851498, 16.397961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449869, 24.913542, 16.632633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.370056, 25.287395, 16.514891>,  <18.322168, 25.511707, 16.444244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.370056, 25.287395, 16.514891>,  <18.449869, 24.913542, 16.632633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370056, 25.287395, 16.514891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536642, 0.355571, 0.765235,
		0.819880, -0.005275, -0.572512,
		-0.199532, 0.934634, -0.294357,
		18.310196, 25.567785, 16.426584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052853, 25.095587, 16.703239>,  <18.449869, 24.913542, 16.632633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052853, 25.095587, 16.703239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.835762, 25.428185, 16.655802>,  <18.705507, 25.627743, 16.627338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.835762, 25.428185, 16.655802>,  <19.052853, 25.095587, 16.703239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835762, 25.428185, 16.655802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639489, 0.500618, 0.583468,
		0.544522, 0.240823, -0.803430,
		-0.542725, 0.831496, -0.118594,
		18.672945, 25.677633, 16.620224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610804, 25.661966, 16.578432>,  <19.052853, 25.095587, 16.703239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610804, 25.661966, 16.578432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.263634, 25.780708, 16.737722>,  <19.055332, 25.851954, 16.833296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.263634, 25.780708, 16.737722>,  <19.610804, 25.661966, 16.578432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.263634, 25.780708, 16.737722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493491, 0.424470, 0.759139,
		0.056319, 0.855397, -0.514903,
		-0.867925, 0.296854, 0.398225,
		19.003256, 25.869764, 16.857189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746466, 26.340717, 16.626154>,  <19.610804, 25.661966, 16.578432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746466, 26.340717, 16.626154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.405521, 26.264950, 16.821131>,  <19.200954, 26.219488, 16.938116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.405521, 26.264950, 16.821131>,  <19.746466, 26.340717, 16.626154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405521, 26.264950, 16.821131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337411, 0.512930, 0.789339,
		-0.399539, 0.837271, -0.373290,
		-0.852363, -0.189420, 0.487440,
		19.149813, 26.208124, 16.967363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561083, 26.988012, 16.928637>,  <19.746466, 26.340717, 16.626154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561083, 26.988012, 16.928637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.365524, 26.717308, 17.148809>,  <19.248190, 26.554886, 17.280912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.365524, 26.717308, 17.148809>,  <19.561083, 26.988012, 16.928637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365524, 26.717308, 17.148809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371472, 0.409400, 0.833307,
		-0.789297, 0.611870, 0.051244,
		-0.488896, -0.676762, 0.550430,
		19.218855, 26.514280, 17.313938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214466, 27.364702, 17.410259>,  <19.561083, 26.988012, 16.928637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214466, 27.364702, 17.410259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.228077, 26.994217, 17.560444>,  <19.236244, 26.771925, 17.650555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.228077, 26.994217, 17.560444>,  <19.214466, 27.364702, 17.410259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.228077, 26.994217, 17.560444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423726, 0.353613, 0.833915,
		-0.905151, 0.130717, 0.404493,
		0.034027, -0.926213, 0.375462,
		19.238285, 26.716352, 17.673082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977396, 27.359131, 18.093479>,  <19.214466, 27.364702, 17.410259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977396, 27.359131, 18.093479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.219784, 27.041832, 18.069622>,  <19.365217, 26.851452, 18.055307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.219784, 27.041832, 18.069622>,  <18.977396, 27.359131, 18.093479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219784, 27.041832, 18.069622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369338, 0.214152, 0.904283,
		-0.704549, -0.569996, 0.422747,
		0.605970, -0.793249, -0.059641,
		19.401575, 26.803858, 18.051729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875793, 27.061699, 18.820646>,  <18.977396, 27.359131, 18.093479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875793, 27.061699, 18.820646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.194622, 26.863022, 18.683258>,  <19.385920, 26.743814, 18.600824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.194622, 26.863022, 18.683258>,  <18.875793, 27.061699, 18.820646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194622, 26.863022, 18.683258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414013, 0.035398, 0.909583,
		-0.439626, -0.867204, 0.233852,
		0.797071, -0.496694, -0.343471,
		19.433743, 26.714014, 18.580217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.018589, 26.560778, 19.296629>,  <18.875793, 27.061699, 18.820646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.018589, 26.560778, 19.296629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.351730, 26.592247, 19.077478>,  <19.551615, 26.611130, 18.945988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.351730, 26.592247, 19.077478>,  <19.018589, 26.560778, 19.296629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351730, 26.592247, 19.077478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550220, -0.010144, 0.834958,
		0.060135, -0.996848, -0.051739,
		0.832852, 0.078678, -0.547876,
		19.601585, 26.615849, 18.913116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544746, 26.045519, 19.570265>,  <19.018589, 26.560778, 19.296629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544746, 26.045519, 19.570265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.731236, 26.346050, 19.383444>,  <19.843128, 26.526369, 19.271351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.731236, 26.346050, 19.383444>,  <19.544746, 26.045519, 19.570265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731236, 26.346050, 19.383444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464622, 0.241318, 0.851993,
		0.752836, -0.614223, -0.236576,
		0.466223, 0.751330, -0.467054,
		19.871103, 26.571449, 19.243328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237286, 25.960711, 19.782120>,  <19.544746, 26.045519, 19.570265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237286, 25.960711, 19.782120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.223473, 26.329723, 19.628372>,  <20.215185, 26.551132, 19.536123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.223473, 26.329723, 19.628372>,  <20.237286, 25.960711, 19.782120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223473, 26.329723, 19.628372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540223, 0.340799, 0.769425,
		0.840813, -0.181074, -0.510143,
		-0.034533, 0.922534, -0.384368,
		20.213112, 26.606483, 19.513062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927662, 26.174290, 19.691507>,  <20.237286, 25.960711, 19.782120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927662, 26.174290, 19.691507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.710373, 26.509659, 19.709196>,  <20.580000, 26.710880, 19.719809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.710373, 26.509659, 19.709196>,  <20.927662, 26.174290, 19.691507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710373, 26.509659, 19.709196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576591, 0.334257, 0.745530,
		0.610288, 0.430488, -0.665003,
		-0.543223, 0.838423, 0.044222,
		20.547405, 26.761187, 19.722464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389252, 26.858311, 19.720861>,  <20.927662, 26.174290, 19.691507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389252, 26.858311, 19.720861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.030876, 26.972595, 19.856897>,  <20.815851, 27.041166, 19.938519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.030876, 26.972595, 19.856897>,  <21.389252, 26.858311, 19.720861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.030876, 26.972595, 19.856897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440184, 0.468715, 0.765861,
		0.059412, 0.835867, -0.545707,
		-0.895940, 0.285713, 0.340088,
		20.762094, 27.058310, 19.958923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777048, 26.180605, 19.784863>,  <21.389252, 26.858311, 19.720861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777048, 26.180605, 19.784863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.102669, 25.979053, 19.900400>,  <22.298040, 25.858124, 19.969723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.102669, 25.979053, 19.900400>,  <21.777048, 26.180605, 19.784863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102669, 25.979053, 19.900400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000449, -0.496779, -0.867877,
		0.580794, 0.706625, -0.404177,
		0.814050, -0.503876, 0.288844,
		22.346884, 25.827890, 19.987053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294464, 26.151131, 19.207138>,  <21.777048, 26.180605, 19.784863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294464, 26.151131, 19.207138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.438030, 25.862309, 19.443718>,  <22.524170, 25.689014, 19.585667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.438030, 25.862309, 19.443718>,  <22.294464, 26.151131, 19.207138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.438030, 25.862309, 19.443718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124844, -0.590839, -0.797072,
		0.924984, 0.359919, -0.121916,
		0.358914, -0.722058, 0.591450,
		22.545704, 25.645691, 19.621153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.974178, 25.966785, 18.970179>,  <22.294464, 26.151131, 19.207138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.974178, 25.966785, 18.970179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.810577, 25.650421, 19.152245>,  <22.712418, 25.460602, 19.261484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.810577, 25.650421, 19.152245>,  <22.974178, 25.966785, 18.970179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.810577, 25.650421, 19.152245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021317, -0.506939, -0.861718,
		0.912284, -0.342743, 0.224199,
		-0.409003, -0.790911, 0.455166,
		22.687876, 25.413147, 19.288794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.306826, 25.444893, 18.695396>,  <22.974178, 25.966785, 18.970179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.306826, 25.444893, 18.695396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.969761, 25.283722, 18.838263>,  <22.767521, 25.187019, 18.923983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.969761, 25.283722, 18.838263>,  <23.306826, 25.444893, 18.695396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.969761, 25.283722, 18.838263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119918, -0.506236, -0.854017,
		0.524917, -0.762479, 0.378268,
		-0.842663, -0.402928, 0.357167,
		22.716963, 25.162844, 18.945412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.360374, 24.727188, 18.555868>,  <23.306826, 25.444893, 18.695396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.360374, 24.727188, 18.555868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.969975, 24.772358, 18.630354>,  <22.735735, 24.799459, 18.675045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.969975, 24.772358, 18.630354>,  <23.360374, 24.727188, 18.555868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.969975, 24.772358, 18.630354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214054, -0.654915, -0.724753,
		0.040111, -0.747217, 0.663368,
		-0.975998, 0.112926, 0.186214,
		22.677176, 24.806236, 18.686218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.125427, 24.050528, 18.476782>,  <23.360374, 24.727188, 18.555868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.125427, 24.050528, 18.476782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.793781, 24.267712, 18.423473>,  <22.594793, 24.398022, 18.391487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.793781, 24.267712, 18.423473>,  <23.125427, 24.050528, 18.476782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.793781, 24.267712, 18.423473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185220, -0.491684, -0.850847,
		-0.527506, -0.680765, 0.508230,
		-0.829115, 0.542961, -0.133275,
		22.545046, 24.430599, 18.383492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585579, 23.544024, 18.250166>,  <23.125427, 24.050528, 18.476782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585579, 23.544024, 18.250166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.434402, 23.905376, 18.169109>,  <22.343697, 24.122189, 18.120476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.434402, 23.905376, 18.169109>,  <22.585579, 23.544024, 18.250166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434402, 23.905376, 18.169109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343073, -0.339946, -0.875636,
		-0.859920, -0.261416, 0.438405,
		-0.377939, 0.903382, -0.202642,
		22.321020, 24.176392, 18.108316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.067066, 23.066551, 18.708134>,  <22.585579, 23.544024, 18.250166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.067066, 23.066551, 18.708134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.245785, 22.710384, 18.742847>,  <22.353016, 22.496685, 18.763676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.245785, 22.710384, 18.742847>,  <22.067066, 23.066551, 18.708134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.245785, 22.710384, 18.742847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516701, 0.336022, 0.787470,
		-0.730337, -0.306999, 0.610213,
		0.446798, -0.890416, 0.086783,
		22.379824, 22.443260, 18.768883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165173, 23.071808, 19.419256>,  <22.067066, 23.066551, 18.708134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165173, 23.071808, 19.419256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.395309, 22.765594, 19.304058>,  <22.533392, 22.581867, 19.234940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.395309, 22.765594, 19.304058>,  <22.165173, 23.071808, 19.419256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395309, 22.765594, 19.304058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609768, 0.166785, 0.774833,
		-0.545126, -0.621404, 0.562756,
		0.575343, -0.765532, -0.287994,
		22.567913, 22.535934, 19.217659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131474, 22.601967, 19.993284>,  <22.165173, 23.071808, 19.419256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131474, 22.601967, 19.993284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.449627, 22.571041, 19.752823>,  <22.640520, 22.552486, 19.608547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.449627, 22.571041, 19.752823>,  <22.131474, 22.601967, 19.993284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.449627, 22.571041, 19.752823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597182, 0.269518, 0.755469,
		0.103612, -0.959887, 0.260542,
		0.795386, -0.077315, -0.601153,
		22.688242, 22.547846, 19.572477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.720409, 22.377762, 20.479460>,  <22.131474, 22.601967, 19.993284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.720409, 22.377762, 20.479460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.900848, 22.503147, 20.145214>,  <23.009111, 22.578379, 19.944668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.900848, 22.503147, 20.145214>,  <22.720409, 22.377762, 20.479460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.900848, 22.503147, 20.145214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726218, 0.415307, 0.547838,
		0.518764, -0.853967, -0.040300,
		0.451099, 0.313465, -0.835613,
		23.036179, 22.597187, 19.894529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.357288, 22.303505, 20.586563>,  <22.720409, 22.377762, 20.479460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.357288, 22.303505, 20.586563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.367470, 22.552567, 20.273729>,  <23.373579, 22.702003, 20.086029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.367470, 22.552567, 20.273729>,  <23.357288, 22.303505, 20.586563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.367470, 22.552567, 20.273729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711692, 0.538116, 0.451581,
		0.702031, -0.568095, -0.429443,
		0.025451, 0.622655, -0.782083,
		23.375105, 22.739363, 20.039104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068819, 22.339169, 20.324633>,  <23.357288, 22.303505, 20.586563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068819, 22.339169, 20.324633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.866207, 22.671738, 20.233273>,  <23.744640, 22.871279, 20.178457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.866207, 22.671738, 20.233273>,  <24.068819, 22.339169, 20.324633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.866207, 22.671738, 20.233273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672801, 0.546793, 0.498354,
		0.539230, 0.098762, -0.836347,
		-0.506528, 0.831422, -0.228400,
		23.714249, 22.921164, 20.164753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572474, 22.847578, 20.258427>,  <24.068819, 22.339169, 20.324633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572474, 22.847578, 20.258427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.233532, 23.049545, 20.324209>,  <24.030167, 23.170727, 20.363678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.233532, 23.049545, 20.324209>,  <24.572474, 22.847578, 20.258427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233532, 23.049545, 20.324209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489365, 0.622240, 0.611016,
		0.206183, 0.598226, -0.774348,
		-0.847355, 0.504920, 0.164456,
		23.979326, 23.201021, 20.373547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808130, 23.589666, 20.200048>,  <24.572474, 22.847578, 20.258427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808130, 23.589666, 20.200048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.454819, 23.548473, 20.383009>,  <24.242832, 23.523758, 20.492785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.454819, 23.548473, 20.383009>,  <24.808130, 23.589666, 20.200048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.454819, 23.548473, 20.383009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270139, 0.685583, 0.676018,
		-0.383203, 0.720674, -0.577742,
		-0.883278, -0.102981, 0.457400,
		24.189835, 23.517578, 20.520229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649054, 24.241434, 20.252314>,  <24.808130, 23.589666, 20.200048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649054, 24.241434, 20.252314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.426212, 24.045422, 20.520494>,  <24.292507, 23.927814, 20.681404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.426212, 24.045422, 20.520494>,  <24.649054, 24.241434, 20.252314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426212, 24.045422, 20.520494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337610, 0.603970, 0.721969,
		-0.758721, 0.628562, -0.171033,
		-0.557102, -0.490030, 0.670453,
		24.259081, 23.898413, 20.721630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.881029, 16.804472, 7.353711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.671688, 16.625332, 7.643685>,  <17.546083, 16.517847, 7.817670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.671688, 16.625332, 7.643685>,  <17.881029, 16.804472, 7.353711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671688, 16.625332, 7.643685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354969, 0.658833, 0.663277,
		-0.774661, 0.604457, -0.185828,
		-0.523352, -0.447852, 0.724935,
		17.514683, 16.490976, 7.861166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558052, 17.415581, 7.740390>,  <17.881029, 16.804472, 7.353711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558052, 17.415581, 7.740390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.551098, 17.109638, 7.997976>,  <17.546925, 16.926073, 8.152528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.551098, 17.109638, 7.997976>,  <17.558052, 17.415581, 7.740390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551098, 17.109638, 7.997976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231633, 0.623460, 0.746756,
		-0.972648, 0.162148, 0.166326,
		-0.017387, -0.764857, 0.643965,
		17.545881, 16.880180, 8.191166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.117168, 17.610363, 8.258441>,  <17.558052, 17.415581, 7.740390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.117168, 17.610363, 8.258441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.337238, 17.326862, 8.435066>,  <17.469280, 17.156761, 8.541041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.337238, 17.326862, 8.435066>,  <17.117168, 17.610363, 8.258441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337238, 17.326862, 8.435066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119507, 0.590172, 0.798382,
		-0.826455, -0.386479, 0.409398,
		0.550173, -0.708753, 0.441564,
		17.502291, 17.114237, 8.567535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925968, 17.652117, 8.998655>,  <17.117168, 17.610363, 8.258441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925968, 17.652117, 8.998655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.268894, 17.446522, 8.987150>,  <17.474649, 17.323164, 8.980247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.268894, 17.446522, 8.987150>,  <16.925968, 17.652117, 8.998655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268894, 17.446522, 8.987150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328498, 0.503193, 0.799303,
		-0.396359, -0.694703, 0.600239,
		0.857314, -0.513989, -0.028763,
		17.526089, 17.292326, 8.978521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015684, 17.461515, 9.681651>,  <16.925968, 17.652117, 8.998655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015684, 17.461515, 9.681651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.375004, 17.433441, 9.508156>,  <17.590595, 17.416597, 9.404058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.375004, 17.433441, 9.508156>,  <17.015684, 17.461515, 9.681651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.375004, 17.433441, 9.508156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422569, 0.408456, 0.809073,
		0.120379, -0.910076, 0.396575,
		0.898301, -0.070185, -0.433739,
		17.644495, 17.412386, 9.378035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470970, 17.329151, 10.224800>,  <17.015684, 17.461515, 9.681651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470970, 17.329151, 10.224800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.714279, 17.427391, 9.922891>,  <17.860266, 17.486336, 9.741745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.714279, 17.427391, 9.922891>,  <17.470970, 17.329151, 10.224800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714279, 17.427391, 9.922891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629204, 0.430468, 0.647147,
		0.483846, -0.868549, 0.107309,
		0.608272, 0.245601, -0.754775,
		17.896761, 17.501070, 9.696458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148941, 17.086376, 10.363346>,  <17.470970, 17.329151, 10.224800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148941, 17.086376, 10.363346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.174061, 17.405815, 10.123915>,  <18.189133, 17.597479, 9.980256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.174061, 17.405815, 10.123915>,  <18.148941, 17.086376, 10.363346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174061, 17.405815, 10.123915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470687, 0.505174, 0.723363,
		0.880062, -0.327171, -0.344165,
		0.062800, 0.798598, -0.598579,
		18.192902, 17.645395, 9.944341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756371, 17.348135, 10.451823>,  <18.148941, 17.086376, 10.363346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756371, 17.348135, 10.451823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.565605, 17.651424, 10.273993>,  <18.451145, 17.833399, 10.167295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.565605, 17.651424, 10.273993>,  <18.756371, 17.348135, 10.451823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565605, 17.651424, 10.273993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522924, 0.651314, 0.549855,
		0.706472, 0.029755, -0.707115,
		-0.476915, 0.758224, -0.444576,
		18.422531, 17.878891, 10.140620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361380, 17.891020, 10.326579>,  <18.756371, 17.348135, 10.451823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361380, 17.891020, 10.326579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.014027, 18.089325, 10.321936>,  <18.805614, 18.208307, 10.319150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.014027, 18.089325, 10.321936>,  <19.361380, 17.891020, 10.326579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014027, 18.089325, 10.321936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389790, 0.696858, 0.602040,
		0.306557, 0.518275, -0.798382,
		-0.868382, 0.495761, -0.011608,
		18.753511, 18.238052, 10.318453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489880, 18.624983, 10.253506>,  <19.361380, 17.891020, 10.326579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489880, 18.624983, 10.253506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.115196, 18.599571, 10.391227>,  <18.890387, 18.584324, 10.473859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.115196, 18.599571, 10.391227>,  <19.489880, 18.624983, 10.253506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115196, 18.599571, 10.391227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248544, 0.571953, 0.781726,
		-0.246587, 0.817823, -0.519962,
		-0.936707, -0.063530, 0.344301,
		18.834185, 18.580513, 10.494517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444118, 19.329704, 10.470323>,  <19.489880, 18.624983, 10.253506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444118, 19.329704, 10.470323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.165226, 19.087288, 10.623466>,  <18.997890, 18.941837, 10.715353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.165226, 19.087288, 10.623466>,  <19.444118, 19.329704, 10.470323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.165226, 19.087288, 10.623466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067194, 0.476485, 0.876611,
		-0.713688, 0.636928, -0.291499,
		-0.697233, -0.606040, 0.382859,
		18.956057, 18.905476, 10.738324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048441, 19.816437, 10.894572>,  <19.444118, 19.329704, 10.470323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.048441, 19.816437, 10.894572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.962471, 19.472092, 11.079060>,  <18.910889, 19.265484, 11.189752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.962471, 19.472092, 11.079060>,  <19.048441, 19.816437, 10.894572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.962471, 19.472092, 11.079060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066841, 0.458180, 0.886343,
		-0.974341, 0.221325, -0.040933,
		-0.214924, -0.860864, 0.461217,
		18.897993, 19.213833, 11.217424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.664869, 20.370661, 10.941362>,  <19.048441, 19.816437, 10.894572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.664869, 20.370661, 10.941362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.950653, 20.594025, 10.772731>,  <19.122124, 20.728043, 10.671552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.950653, 20.594025, 10.772731>,  <18.664869, 20.370661, 10.941362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950653, 20.594025, 10.772731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360391, -0.222753, -0.905814,
		-0.599723, 0.799099, 0.042098,
		0.714458, 0.558410, -0.421578,
		19.164991, 20.761547, 10.646257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319933, 20.797028, 10.478746>,  <18.664869, 20.370661, 10.941362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319933, 20.797028, 10.478746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.695251, 20.771278, 10.342831>,  <18.920443, 20.755829, 10.261281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.695251, 20.771278, 10.342831>,  <18.319933, 20.797028, 10.478746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695251, 20.771278, 10.342831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345516, -0.132325, -0.929036,
		0.014844, 0.989114, -0.146402,
		0.938295, -0.064375, -0.339790,
		18.976740, 20.751966, 10.240893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.336174, 21.163372, 9.842391>,  <18.319933, 20.797028, 10.478746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.336174, 21.163372, 9.842391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.668053, 20.940464, 9.829396>,  <18.867180, 20.806719, 9.821600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.668053, 20.940464, 9.829396>,  <18.336174, 21.163372, 9.842391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668053, 20.940464, 9.829396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134969, -0.143798, -0.980360,
		0.541655, 0.817784, -0.194523,
		0.829694, -0.557272, -0.032486,
		18.916962, 20.773283, 9.819651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753365, 21.430386, 9.247121>,  <18.336174, 21.163372, 9.842391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753365, 21.430386, 9.247121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.916412, 21.071350, 9.314271>,  <19.014240, 20.855928, 9.354561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.916412, 21.071350, 9.314271>,  <18.753365, 21.430386, 9.247121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916412, 21.071350, 9.314271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218696, -0.274450, -0.936402,
		0.886576, 0.344983, -0.308170,
		0.407620, -0.897588, 0.167875,
		19.038698, 20.802074, 9.364634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209637, 21.209246, 8.586812>,  <18.753365, 21.430386, 9.247121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209637, 21.209246, 8.586812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.108475, 20.881908, 8.793249>,  <19.047777, 20.685507, 8.917111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.108475, 20.881908, 8.793249>,  <19.209637, 21.209246, 8.586812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108475, 20.881908, 8.793249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247839, -0.460836, -0.852177,
		0.935208, -0.343430, -0.086269,
		-0.252907, -0.818343, 0.516093,
		19.032602, 20.636406, 8.948077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.420549, 20.719093, 8.110965>,  <19.209637, 21.209246, 8.586812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.420549, 20.719093, 8.110965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.171906, 20.527340, 8.358768>,  <19.022718, 20.412287, 8.507449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.171906, 20.527340, 8.358768>,  <19.420549, 20.719093, 8.110965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171906, 20.527340, 8.358768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396912, -0.489067, -0.776707,
		0.675323, -0.728699, 0.113735,
		-0.621610, -0.479385, 0.619508,
		18.985422, 20.383524, 8.544620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499609, 20.075117, 8.009440>,  <19.420549, 20.719093, 8.110965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499609, 20.075117, 8.009440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.133396, 20.094009, 8.169226>,  <18.913668, 20.105345, 8.265097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.133396, 20.094009, 8.169226>,  <19.499609, 20.075117, 8.009440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133396, 20.094009, 8.169226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361238, -0.533382, -0.764860,
		0.176942, -0.844555, 0.505390,
		-0.915532, 0.047231, 0.399463,
		18.858736, 20.108179, 8.289064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261284, 19.524942, 7.795631>,  <19.499609, 20.075117, 8.009440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.261284, 19.524942, 7.795631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.927235, 19.713066, 7.909738>,  <18.726805, 19.825941, 7.978201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.927235, 19.713066, 7.909738>,  <19.261284, 19.524942, 7.795631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927235, 19.713066, 7.909738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454705, -0.298429, -0.839156,
		-0.309541, -0.830507, 0.463081,
		-0.835121, 0.470318, 0.285260,
		18.676697, 19.854158, 7.995317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.723392, 19.035454, 7.568885>,  <19.261284, 19.524942, 7.795631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.723392, 19.035454, 7.568885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.542786, 19.386944, 7.630821>,  <18.434422, 19.597837, 7.667983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.542786, 19.386944, 7.630821>,  <18.723392, 19.035454, 7.568885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542786, 19.386944, 7.630821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517071, -0.116261, -0.848010,
		-0.727165, -0.462956, 0.506857,
		-0.451519, 0.878724, 0.154840,
		18.407330, 19.650560, 7.677273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894093, 19.047831, 7.552385>,  <18.723392, 19.035454, 7.568885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894093, 19.047831, 7.552385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.001945, 19.416039, 7.439286>,  <18.066656, 19.636963, 7.371427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.001945, 19.416039, 7.439286>,  <17.894093, 19.047831, 7.552385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001945, 19.416039, 7.439286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516309, -0.109654, -0.849353,
		-0.812849, 0.374997, 0.445706,
		0.269631, 0.920518, -0.282747,
		18.082834, 19.692194, 7.354462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339102, 19.334898, 7.236275>,  <17.894093, 19.047831, 7.552385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339102, 19.334898, 7.236275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.596981, 19.619915, 7.125536>,  <17.751709, 19.790926, 7.059093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.596981, 19.619915, 7.125536>,  <17.339102, 19.334898, 7.236275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.596981, 19.619915, 7.125536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387032, -0.008059, -0.922031,
		-0.659220, 0.701580, 0.270582,
		0.644698, 0.712545, -0.276847,
		17.790390, 19.833679, 7.042482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956018, 19.789173, 6.926520>,  <17.339102, 19.334898, 7.236275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956018, 19.789173, 6.926520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.315556, 19.853264, 6.763346>,  <17.531277, 19.891718, 6.665441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.315556, 19.853264, 6.763346>,  <16.956018, 19.789173, 6.926520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315556, 19.853264, 6.763346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379347, -0.181742, -0.907230,
		-0.219500, 0.970205, -0.102576,
		0.898841, 0.160225, -0.407937,
		17.585209, 19.901331, 6.640965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821775, 20.154274, 6.432747>,  <16.956018, 19.789173, 6.926520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821775, 20.154274, 6.432747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.186050, 20.033733, 6.319729>,  <17.404615, 19.961409, 6.251918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.186050, 20.033733, 6.319729>,  <16.821775, 20.154274, 6.432747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186050, 20.033733, 6.319729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338625, -0.152843, -0.928425,
		0.236597, 0.941184, -0.241238,
		0.910689, -0.301351, -0.282546,
		17.459257, 19.943329, 6.234965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032261, 20.560301, 5.836159>,  <16.821775, 20.154274, 6.432747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032261, 20.560301, 5.836159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.248421, 20.223763, 5.832065>,  <17.378117, 20.021839, 5.829608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.248421, 20.223763, 5.832065>,  <17.032261, 20.560301, 5.836159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248421, 20.223763, 5.832065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229470, -0.135662, -0.963815,
		0.809513, 0.523194, -0.266376,
		0.540400, -0.841346, -0.010237,
		17.410542, 19.971359, 5.828994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496403, 20.871428, 6.261837>,  <17.032261, 20.560301, 5.836159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496403, 20.871428, 6.261837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.181206, 21.097054, 6.163126>,  <15.992088, 21.232430, 6.103899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.181206, 21.097054, 6.163126>,  <16.496403, 20.871428, 6.261837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181206, 21.097054, 6.163126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359124, 0.746661, 0.559935,
		0.500100, 0.352599, -0.790932,
		-0.787991, 0.564066, -0.246779,
		15.944809, 21.266273, 6.089092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725557, 21.555738, 6.329261>,  <16.496403, 20.871428, 6.261837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725557, 21.555738, 6.329261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.335167, 21.642799, 6.325357>,  <16.100933, 21.695036, 6.323015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.335167, 21.642799, 6.325357>,  <16.725557, 21.555738, 6.329261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335167, 21.642799, 6.325357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152271, 0.713475, 0.683935,
		0.155822, 0.666019, -0.729478,
		-0.975978, 0.217650, -0.009759,
		16.042374, 21.708094, 6.322430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577339, 22.235798, 6.089152>,  <16.725557, 21.555738, 6.329261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577339, 22.235798, 6.089152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.309399, 22.120338, 6.362789>,  <16.148634, 22.051064, 6.526971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.309399, 22.120338, 6.362789>,  <16.577339, 22.235798, 6.089152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309399, 22.120338, 6.362789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436442, 0.592301, 0.677273,
		-0.600683, 0.752238, -0.270774,
		-0.669850, -0.288649, 0.684093,
		16.108444, 22.033743, 6.568017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156181, 22.896017, 6.356858>,  <16.577339, 22.235798, 6.089152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156181, 22.896017, 6.356858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.157619, 22.620865, 6.647184>,  <16.158482, 22.455774, 6.821380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.157619, 22.620865, 6.647184>,  <16.156181, 22.896017, 6.356858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157619, 22.620865, 6.647184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308702, 0.691133, 0.653481,
		-0.951152, 0.221712, 0.214835,
		0.003595, -0.687880, 0.725815,
		16.158699, 22.414501, 6.864929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802381, 23.195068, 6.847688>,  <16.156181, 22.896017, 6.356858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802381, 23.195068, 6.847688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.999187, 22.903805, 7.038561>,  <16.117270, 22.729046, 7.153085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.999187, 22.903805, 7.038561>,  <15.802381, 23.195068, 6.847688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999187, 22.903805, 7.038561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253267, 0.644127, 0.721773,
		-0.832933, -0.234268, 0.501339,
		0.492015, -0.728161, 0.477182,
		16.146791, 22.685356, 7.181715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558576, 23.355232, 7.469512>,  <15.802381, 23.195068, 6.847688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558576, 23.355232, 7.469512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.880847, 23.120693, 7.503166>,  <16.074209, 22.979969, 7.523359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.880847, 23.120693, 7.503166>,  <15.558576, 23.355232, 7.469512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.880847, 23.120693, 7.503166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221184, 0.429551, 0.875536,
		-0.549511, -0.686790, 0.475770,
		0.805677, -0.586349, 0.084136,
		16.122551, 22.944788, 7.528407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431338, 22.993895, 8.103127>,  <15.558576, 23.355232, 7.469512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431338, 22.993895, 8.103127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.820121, 22.990440, 8.009124>,  <16.053391, 22.988369, 7.952722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.820121, 22.990440, 8.009124>,  <15.431338, 22.993895, 8.103127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820121, 22.990440, 8.009124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225487, 0.317956, 0.920901,
		0.066770, -0.948066, 0.310986,
		0.971955, -0.008635, -0.235007,
		16.111708, 22.987850, 7.938622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884054, 22.592293, 8.668470>,  <15.431338, 22.993895, 8.103127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884054, 22.592293, 8.668470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.122284, 22.848324, 8.474319>,  <16.265221, 23.001942, 8.357827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.122284, 22.848324, 8.474319>,  <15.884054, 22.592293, 8.668470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122284, 22.848324, 8.474319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385693, 0.302176, 0.871740,
		0.704651, -0.706393, -0.066906,
		0.595573, 0.640077, -0.485379,
		16.300957, 23.040346, 8.328705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563786, 22.526381, 8.957687>,  <15.884054, 22.592293, 8.668470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563786, 22.526381, 8.957687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.588875, 22.881416, 8.775148>,  <16.603928, 23.094437, 8.665626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.588875, 22.881416, 8.775148>,  <16.563786, 22.526381, 8.957687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588875, 22.881416, 8.775148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584025, 0.338143, 0.737953,
		0.809309, -0.312803, -0.497165,
		0.062721, 0.887589, -0.456347,
		16.607691, 23.147694, 8.638245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294241, 22.680788, 9.084865>,  <16.563786, 22.526381, 8.957687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294241, 22.680788, 9.084865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.107666, 23.025757, 9.006210>,  <16.995722, 23.232738, 8.959018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.107666, 23.025757, 9.006210>,  <17.294241, 22.680788, 9.084865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.107666, 23.025757, 9.006210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617030, 0.476511, 0.626268,
		0.633806, 0.170785, -0.754402,
		-0.466438, 0.862421, -0.196636,
		16.967735, 23.284483, 8.947220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827454, 23.154381, 9.078375>,  <17.294241, 22.680788, 9.084865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827454, 23.154381, 9.078375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.510101, 23.392540, 9.129055>,  <17.319691, 23.535435, 9.159463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.510101, 23.392540, 9.129055>,  <17.827454, 23.154381, 9.078375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510101, 23.392540, 9.129055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432352, 0.404640, 0.805816,
		0.428511, 0.694097, -0.578453,
		-0.793379, 0.595396, 0.126702,
		17.272087, 23.571159, 9.167066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057871, 23.821026, 9.294035>,  <17.827454, 23.154381, 9.078375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057871, 23.821026, 9.294035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.674892, 23.808990, 9.408850>,  <17.445105, 23.801769, 9.477738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.674892, 23.808990, 9.408850>,  <18.057871, 23.821026, 9.294035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674892, 23.808990, 9.408850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263640, 0.313473, 0.912265,
		-0.117428, 0.949120, -0.292201,
		-0.957447, -0.030090, 0.287036,
		17.387659, 23.799963, 9.494961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.948235, 24.529604, 9.481825>,  <18.057871, 23.821026, 9.294035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.948235, 24.529604, 9.481825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.701691, 24.268806, 9.658461>,  <17.553764, 24.112328, 9.764441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.701691, 24.268806, 9.658461>,  <17.948235, 24.529604, 9.481825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.701691, 24.268806, 9.658461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241145, 0.377555, 0.894037,
		-0.749632, 0.657537, -0.075485,
		-0.616362, -0.651995, 0.441588,
		17.516783, 24.073208, 9.790937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521656, 24.918081, 9.948005>,  <17.948235, 24.529604, 9.481825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521656, 24.918081, 9.948005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.454479, 24.549316, 10.087646>,  <17.414173, 24.328058, 10.171430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.454479, 24.549316, 10.087646>,  <17.521656, 24.918081, 9.948005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454479, 24.549316, 10.087646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028786, 0.349394, 0.936533,
		-0.985376, 0.167333, -0.032140,
		-0.167943, -0.921913, 0.349102,
		17.404097, 24.272743, 10.192376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166319, 24.943762, 10.559381>,  <17.521656, 24.918081, 9.948005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.166319, 24.943762, 10.559381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.263802, 24.559513, 10.612761>,  <17.322292, 24.328964, 10.644790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.263802, 24.559513, 10.612761>,  <17.166319, 24.943762, 10.559381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.263802, 24.559513, 10.612761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115760, 0.107805, 0.987409,
		-0.962915, -0.256088, -0.084929,
		0.243708, -0.960623, 0.133452,
		17.336914, 24.271326, 10.652797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792931, 24.839308, 11.142257>,  <17.166319, 24.943762, 10.559381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792931, 24.839308, 11.142257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.080387, 24.563107, 11.109361>,  <17.252861, 24.397387, 11.089622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.080387, 24.563107, 11.109361>,  <16.792931, 24.839308, 11.142257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080387, 24.563107, 11.109361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012144, -0.105787, 0.994315,
		-0.695276, -0.715553, -0.067637,
		0.718640, -0.690502, -0.082241,
		17.295979, 24.355955, 11.084688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589802, 24.399815, 11.718435>,  <16.792931, 24.839308, 11.142257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589802, 24.399815, 11.718435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.973076, 24.324921, 11.631876>,  <17.203039, 24.279984, 11.579941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.973076, 24.324921, 11.631876>,  <16.589802, 24.399815, 11.718435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.973076, 24.324921, 11.631876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198605, -0.109292, 0.973967,
		-0.206015, -0.976216, -0.067535,
		0.958182, -0.187239, -0.216397,
		17.260530, 24.268749, 11.566957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723097, 23.967873, 12.197163>,  <16.589802, 24.399815, 11.718435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723097, 23.967873, 12.197163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.079121, 24.092079, 12.063671>,  <17.292734, 24.166603, 11.983576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.079121, 24.092079, 12.063671>,  <16.723097, 23.967873, 12.197163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079121, 24.092079, 12.063671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353187, -0.006903, 0.935527,
		0.288193, -0.950543, -0.115815,
		0.890058, 0.310517, -0.333730,
		17.346138, 24.185234, 11.963552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284590, 23.490841, 12.472932>,  <16.723097, 23.967873, 12.197163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284590, 23.490841, 12.472932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.445980, 23.847023, 12.388741>,  <17.542814, 24.060732, 12.338227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.445980, 23.847023, 12.388741>,  <17.284590, 23.490841, 12.472932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445980, 23.847023, 12.388741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320378, 0.077985, 0.944074,
		0.857069, -0.448341, -0.253817,
		0.403474, 0.890454, -0.210477,
		17.567022, 24.114159, 12.325599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930006, 23.472248, 12.859150>,  <17.284590, 23.490841, 12.472932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930006, 23.472248, 12.859150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.847149, 23.852787, 12.767906>,  <17.797436, 24.081110, 12.713160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.847149, 23.852787, 12.767906>,  <17.930006, 23.472248, 12.859150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847149, 23.852787, 12.767906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192902, 0.268307, 0.943822,
		0.959104, 0.151502, -0.239094,
		-0.207142, 0.951346, -0.228109,
		17.785006, 24.138191, 12.699473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423227, 23.805906, 13.150642>,  <17.930006, 23.472248, 12.859150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423227, 23.805906, 13.150642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.161663, 24.103363, 13.094934>,  <18.004725, 24.281837, 13.061510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.161663, 24.103363, 13.094934>,  <18.423227, 23.805906, 13.150642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161663, 24.103363, 13.094934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229373, 0.370276, 0.900158,
		0.720964, 0.556678, -0.412699,
		-0.653911, 0.743643, -0.139269,
		17.965490, 24.326456, 13.053154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816992, 24.534519, 13.284425>,  <18.423227, 23.805906, 13.150642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816992, 24.534519, 13.284425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.423531, 24.600262, 13.313858>,  <18.187454, 24.639708, 13.331518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.423531, 24.600262, 13.313858>,  <18.816992, 24.534519, 13.284425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423531, 24.600262, 13.313858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147712, 0.502704, 0.851745,
		0.102999, 0.848691, -0.518763,
		-0.983653, 0.164356, 0.073584,
		18.128435, 24.649569, 13.335933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694443, 25.255489, 13.441614>,  <18.816992, 24.534519, 13.284425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694443, 25.255489, 13.441614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.354237, 25.075649, 13.550778>,  <18.150112, 24.967745, 13.616277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.354237, 25.075649, 13.550778>,  <18.694443, 25.255489, 13.441614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.354237, 25.075649, 13.550778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054675, 0.440501, 0.896086,
		-0.523097, 0.777058, -0.350072,
		-0.850518, -0.449599, 0.272910,
		18.099081, 24.940769, 13.632651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204693, 25.774323, 13.771278>,  <18.694443, 25.255489, 13.441614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204693, 25.774323, 13.771278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.065983, 25.416828, 13.885108>,  <17.982756, 25.202332, 13.953406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.065983, 25.416828, 13.885108>,  <18.204693, 25.774323, 13.771278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065983, 25.416828, 13.885108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127097, 0.345379, 0.929817,
		-0.929297, 0.286270, -0.233360,
		-0.346777, -0.893735, 0.284575,
		17.961950, 25.148708, 13.970481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574947, 25.829237, 14.175914>,  <18.204693, 25.774323, 13.771278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574947, 25.829237, 14.175914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.705280, 25.468868, 14.290574>,  <17.783480, 25.252647, 14.359370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.705280, 25.468868, 14.290574>,  <17.574947, 25.829237, 14.175914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705280, 25.468868, 14.290574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280925, 0.197243, 0.939243,
		-0.902726, -0.386564, -0.188823,
		0.325834, -0.900923, 0.286651,
		17.803030, 25.198591, 14.376570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221067, 25.741537, 14.723008>,  <17.574947, 25.829237, 14.175914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221067, 25.741537, 14.723008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.521324, 25.484486, 14.784406>,  <17.701479, 25.330254, 14.821244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.521324, 25.484486, 14.784406>,  <17.221067, 25.741537, 14.723008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521324, 25.484486, 14.784406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057861, 0.167488, 0.984175,
		-0.658170, -0.747645, 0.088540,
		0.750643, -0.642631, 0.153495,
		17.746517, 25.291697, 14.830454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998592, 25.416557, 15.272288>,  <17.221067, 25.741537, 14.723008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998592, 25.416557, 15.272288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.394863, 25.362255, 15.267783>,  <17.632626, 25.329674, 15.265080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.394863, 25.362255, 15.267783>,  <16.998592, 25.416557, 15.272288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394863, 25.362255, 15.267783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069644, 0.433703, 0.898360,
		-0.117073, -0.890770, 0.439114,
		0.990678, -0.135756, -0.011262,
		17.692066, 25.321527, 15.264404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243820, 25.066456, 15.876910>,  <16.998592, 25.416557, 15.272288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243820, 25.066456, 15.876910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.560020, 25.265739, 15.734422>,  <17.749741, 25.385309, 15.648929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.560020, 25.265739, 15.734422>,  <17.243820, 25.066456, 15.876910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560020, 25.265739, 15.734422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172171, 0.377403, 0.909904,
		0.587761, -0.780612, 0.212561,
		0.790502, 0.498209, -0.356221,
		17.797171, 25.415201, 15.627556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921885, 24.434027, 15.986970>,  <17.243820, 25.066456, 15.876910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921885, 24.434027, 15.986970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.648418, 24.346245, 16.265377>,  <16.484339, 24.293575, 16.432421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.648418, 24.346245, 16.265377>,  <16.921885, 24.434027, 15.986970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648418, 24.346245, 16.265377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678073, -0.161632, -0.717002,
		0.269847, -0.962141, -0.038303,
		-0.683666, -0.219453, 0.696018,
		16.443319, 24.280409, 16.474182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709776, 23.861029, 15.870872>,  <16.921885, 24.434027, 15.986970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709776, 23.861029, 15.870872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.391445, 23.999599, 16.069527>,  <16.200447, 24.082743, 16.188719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.391445, 23.999599, 16.069527>,  <16.709776, 23.861029, 15.870872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.391445, 23.999599, 16.069527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592467, -0.276073, -0.756814,
		-0.125071, -0.896534, 0.424951,
		-0.795827, 0.346425, 0.496638,
		16.152697, 24.103527, 16.218517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073778, 23.305489, 15.776572>,  <16.709776, 23.861029, 15.870872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.073778, 23.305489, 15.776572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.911586, 23.652100, 15.892999>,  <15.814271, 23.860065, 15.962854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.911586, 23.652100, 15.892999>,  <16.073778, 23.305489, 15.776572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911586, 23.652100, 15.892999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741055, -0.125184, -0.659671,
		-0.535186, -0.483179, 0.692903,
		-0.405479, 0.866526, 0.291065,
		15.789942, 23.912058, 15.980318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357000, 23.157261, 15.910479>,  <16.073778, 23.305489, 15.776572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357000, 23.157261, 15.910479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.389346, 23.549969, 15.841674>,  <15.408753, 23.785593, 15.800391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.389346, 23.549969, 15.841674>,  <15.357000, 23.157261, 15.910479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.389346, 23.549969, 15.841674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715735, -0.062910, -0.695533,
		-0.693675, 0.179358, 0.697600,
		0.080863, 0.981771, -0.172012,
		15.413605, 23.844500, 15.790071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727778, 23.421286, 15.967987>,  <15.357000, 23.157261, 15.910479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727778, 23.421286, 15.967987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.928525, 23.684250, 15.743152>,  <15.048973, 23.842028, 15.608251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.928525, 23.684250, 15.743152>,  <14.727778, 23.421286, 15.967987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.928525, 23.684250, 15.743152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752430, 0.011319, -0.658575,
		-0.426592, 0.753448, 0.500335,
		0.501866, 0.657410, -0.562088,
		15.079084, 23.881474, 15.574525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
