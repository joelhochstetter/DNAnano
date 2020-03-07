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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<1.354119, 1.661808, -0.407142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.703716, 1.535500, -0.259399>,  <1.913475, 1.459715, -0.170754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.703716, 1.535500, -0.259399>,  <1.354119, 1.661808, -0.407142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.703716, 1.535500, -0.259399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446972, -0.820621, 0.356086,
		0.190659, -0.476309, -0.858358,
		0.873994, -0.315771, 0.369356,
		1.965914, 1.440768, -0.148593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.523137, 0.932987, -0.515028>,  <1.354119, 1.661808, -0.407142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.523137, 0.932987, -0.515028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.717308, 1.012955, -0.174583>,  <1.833811, 1.060935, 0.029684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.717308, 1.012955, -0.174583>,  <1.523137, 0.932987, -0.515028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.717308, 1.012955, -0.174583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504377, -0.731130, 0.459404,
		0.714118, -0.652289, -0.254076,
		0.485427, 0.199919, 0.851112,
		1.862936, 1.072930, 0.080750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.896882, 0.269904, -0.359647>,  <1.523137, 0.932987, -0.515028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.896882, 0.269904, -0.359647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.786663, 0.492638, -0.046211>,  <1.720532, 0.626278, 0.141850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.786663, 0.492638, -0.046211>,  <1.896882, 0.269904, -0.359647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.786663, 0.492638, -0.046211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545013, -0.761965, 0.349815,
		0.791856, -0.330675, 0.513438,
		-0.275546, 0.556833, 0.783589,
		1.703999, 0.659688, 0.188865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.095357, -0.028471, 0.301716>,  <1.896882, 0.269904, -0.359647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.095357, -0.028471, 0.301716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.762100, 0.189713, 0.338264>,  <1.562146, 0.320623, 0.360194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.762100, 0.189713, 0.338264>,  <2.095357, -0.028471, 0.301716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.762100, 0.189713, 0.338264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463562, -0.778831, 0.422530,
		0.301637, 0.309671, 0.901731,
		-0.833142, 0.545460, 0.091372,
		1.512158, 0.353350, 0.365676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867702, -0.133190, 1.055633>,  <2.095357, -0.028471, 0.301715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867702, -0.133190, 1.055633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543564, 0.002113, 0.864250>,  <1.349081, 0.083295, 0.749420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543564, 0.002113, 0.864250>,  <1.867702, -0.133190, 1.055633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.543564, 0.002113, 0.864250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526254, -0.779217, 0.340408,
		-0.257676, 0.527638, 0.809445,
		-0.810346, 0.338258, -0.478457,
		1.300460, 0.103591, 0.720713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.407049, -0.181936, 1.456896>,  <1.867702, -0.133190, 1.055633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.407049, -0.181936, 1.456896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.186676, -0.169342, 1.123314>,  <1.054452, -0.161785, 0.923165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.186676, -0.169342, 1.123314>,  <1.407049, -0.181936, 1.456896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.186676, -0.169342, 1.123314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574772, -0.738825, 0.351816,
		-0.605070, 0.673161, 0.425141,
		-0.550934, 0.031486, -0.833955,
		1.021396, -0.159896, 0.873127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.686690, -0.090177, 1.700318>,  <1.407049, -0.181936, 1.456896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.686690, -0.090177, 1.700318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.669067, -0.256790, 1.337097>,  <0.658494, -0.356758, 1.119164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.669067, -0.256790, 1.337097>,  <0.686690, -0.090177, 1.700318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669067, -0.256790, 1.337097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645594, -0.681784, 0.344063,
		-0.762409, 0.601391, -0.238874,
		-0.044056, -0.416532, -0.908053,
		0.655851, -0.381750, 1.064681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.020499, -0.106410, 1.390257>,  <0.686690, -0.090177, 1.700318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.020499, -0.106410, 1.390257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.158779, -0.414284, 1.208397>,  <0.266346, -0.599008, 1.099281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.158779, -0.414284, 1.208397>,  <-0.020499, -0.106410, 1.390257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.158779, -0.414284, 1.208397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763846, -0.593953, 0.252508,
		-0.464392, 0.234109, -0.854127,
		0.448197, -0.769684, -0.454650,
		0.293238, -0.645189, 1.072002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.445405, 3.052102, 2.253305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.074879, 3.028961, 2.104393>,  <-0.147437, 3.015077, 2.015046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.074879, 3.028961, 2.104393>,  <0.445405, 3.052102, 2.253305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.074879, 3.028961, 2.104393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362075, -0.136392, 0.922117,
		-0.104123, 0.988964, 0.105395,
		-0.926315, -0.057852, -0.372280,
		-0.203016, 3.011606, 1.992709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.733037, 3.286150, 1.642565>,  <0.445405, 3.052102, 2.253305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.733037, 3.286150, 1.642565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.504335, 3.281853, 1.314423>,  <0.367114, 3.279275, 1.117537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.504335, 3.281853, 1.314423>,  <0.733037, 3.286150, 1.642565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.504335, 3.281853, 1.314423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065265, 0.996150, -0.058531,
		0.817825, -0.087006, -0.568852,
		-0.571754, -0.010742, -0.820355,
		0.332809, 3.278630, 1.068316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.080228, 3.500801, 1.111399>,  <0.733037, 3.286150, 1.642565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.080228, 3.500801, 1.111399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.717171, 3.596748, 0.973618>,  <0.499336, 3.654317, 0.890949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.717171, 3.596748, 0.973618>,  <1.080228, 3.500801, 1.111399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.717171, 3.596748, 0.973618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311737, 0.934746, -0.170500,
		0.281078, -0.262132, -0.923191,
		-0.907643, 0.239869, -0.344453,
		0.444878, 3.668709, 0.870282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.121244, 3.805547, 0.415622>,  <1.080228, 3.500801, 1.111399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.121244, 3.805547, 0.415622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.794109, 3.969910, 0.576767>,  <0.597828, 4.068527, 0.673454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.794109, 3.969910, 0.576767>,  <1.121244, 3.805547, 0.415622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.794109, 3.969910, 0.576767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313534, 0.905228, -0.286808,
		-0.482533, -0.108251, -0.869162,
		-0.817837, 0.410907, 0.402862,
		0.548758, 4.093182, 0.697626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.863369, 4.235352, -0.136325>,  <1.121244, 3.805547, 0.415622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.863369, 4.235352, -0.136325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765444, 4.363800, 0.229614>,  <0.706689, 4.440869, 0.449178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765444, 4.363800, 0.229614>,  <0.863369, 4.235352, -0.136325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.765444, 4.363800, 0.229614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340923, 0.911817, -0.228826,
		-0.907655, 0.255874, -0.332703,
		-0.244813, 0.321121, 0.914848,
		0.692000, 4.460136, 0.504069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.440146, 4.867632, -0.249211>,  <0.863369, 4.235352, -0.136325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.440146, 4.867632, -0.249211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.607023, 4.855034, 0.114098>,  <0.707150, 4.847475, 0.332083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.607023, 4.855034, 0.114098>,  <0.440146, 4.867632, -0.249211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.607023, 4.855034, 0.114098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392947, 0.907405, -0.149026,
		-0.819477, 0.419076, 0.390940,
		0.417194, -0.031495, 0.908272,
		0.732181, 4.845585, 0.386579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.269297, 5.512471, 0.073594>,  <0.440146, 4.867632, -0.249211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.269297, 5.512471, 0.073594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596529, 5.371330, 0.255249>,  <0.792868, 5.286645, 0.364242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596529, 5.371330, 0.255249>,  <0.269297, 5.512471, 0.073594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596529, 5.371330, 0.255249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454535, 0.880489, -0.134678,
		-0.352343, 0.316599, 0.880693,
		0.818079, -0.352853, 0.454139,
		0.841953, 5.265474, 0.391491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.493545, 6.126362, 0.374972>,  <0.269297, 5.512471, 0.073594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.493545, 6.126362, 0.374972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.795820, 5.864906, 0.358528>,  <0.977185, 5.708033, 0.348662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.795820, 5.864906, 0.358528>,  <0.493545, 6.126362, 0.374972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795820, 5.864906, 0.358528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644145, 0.753122, -0.133731,
		0.118371, 0.074579, 0.990165,
		0.755688, -0.653640, -0.041108,
		1.022527, 5.668814, 0.346196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
