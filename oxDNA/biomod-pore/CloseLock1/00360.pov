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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
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
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.924227, 35.416740, 35.094345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137686, 35.103966, 34.965481>,  <24.265760, 34.916302, 34.888161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137686, 35.103966, 34.965481>,  <23.924227, 35.416740, 35.094345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.137686, 35.103966, 34.965481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503671, 0.599869, -0.621669,
		0.679365, 0.169487, 0.713959,
		0.533647, -0.781941, -0.322165,
		24.297779, 34.869385, 34.868832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644958, 35.407673, 35.247944>,  <23.924227, 35.416740, 35.094345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644958, 35.407673, 35.247944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539431, 35.227261, 34.906891>,  <24.476114, 35.119015, 34.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539431, 35.227261, 34.906891>,  <24.644958, 35.407673, 35.247944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539431, 35.227261, 34.906891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330902, 0.787982, -0.519218,
		0.906037, -0.419116, -0.058639,
		-0.263818, -0.451027, -0.852628,
		24.460285, 35.091953, 34.651104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260147, 35.225986, 34.777065>,  <24.644958, 35.407673, 35.247944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260147, 35.225986, 34.777065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915546, 35.298351, 34.587292>,  <24.708786, 35.341770, 34.473427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915546, 35.298351, 34.587292>,  <25.260147, 35.225986, 34.777065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915546, 35.298351, 34.587292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390155, 0.833837, -0.390507,
		0.324951, -0.521524, -0.788936,
		-0.861503, 0.180911, -0.474431,
		24.657095, 35.352623, 34.444962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167639, 34.786182, 34.237995>,  <25.260147, 35.225986, 34.777065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167639, 34.786182, 34.237995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474669, 34.712448, 33.992443>,  <25.658886, 34.668205, 33.845112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474669, 34.712448, 33.992443>,  <25.167639, 34.786182, 34.237995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474669, 34.712448, 33.992443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107858, -0.981241, 0.159788,
		-0.631818, -0.056437, -0.773059,
		0.767576, -0.184338, -0.613878,
		25.704941, 34.657146, 33.808281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959566, 34.250351, 33.681484>,  <25.167639, 34.786182, 34.237995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959566, 34.250351, 33.681484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358124, 34.233017, 33.710655>,  <25.597260, 34.222618, 33.728157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358124, 34.233017, 33.710655>,  <24.959566, 34.250351, 33.681484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358124, 34.233017, 33.710655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045898, -0.998373, 0.033844,
		0.071346, -0.037069, -0.996763,
		0.996395, -0.043335, 0.072931,
		25.657042, 34.220016, 33.732536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246395, 33.762966, 33.055004>,  <24.959566, 34.250351, 33.681484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246395, 33.762966, 33.055004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493034, 33.783913, 33.369217>,  <25.641018, 33.796478, 33.557743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493034, 33.783913, 33.369217>,  <25.246395, 33.762966, 33.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493034, 33.783913, 33.369217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049020, -0.998403, 0.028076,
		0.785749, 0.021195, -0.618182,
		0.616600, 0.052364, 0.785533,
		25.678015, 33.799622, 33.604877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726912, 33.284161, 32.843670>,  <25.246395, 33.762966, 33.055004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726912, 33.284161, 32.843670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763138, 33.324310, 33.239998>,  <25.784874, 33.348400, 33.477795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763138, 33.324310, 33.239998>,  <25.726912, 33.284161, 32.843670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763138, 33.324310, 33.239998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025323, -0.994818, 0.098468,
		0.995568, 0.016172, -0.092639,
		0.090566, 0.100378, 0.990819,
		25.790308, 33.354424, 33.537243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269079, 32.754974, 33.058907>,  <25.726912, 33.284161, 32.843670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269079, 32.754974, 33.058907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066034, 32.865501, 33.385338>,  <25.944208, 32.931820, 33.581196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066034, 32.865501, 33.385338>,  <26.269079, 32.754974, 33.058907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066034, 32.865501, 33.385338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169518, -0.960693, 0.219845,
		0.844746, -0.026744, 0.534499,
		-0.507610, 0.276320, 0.816075,
		25.913752, 32.948399, 33.630161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639708, 32.348953, 33.572193>,  <26.269079, 32.754974, 33.058907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639708, 32.348953, 33.572193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300491, 32.491089, 33.729454>,  <26.096962, 32.576370, 33.823811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300491, 32.491089, 33.729454>,  <26.639708, 32.348953, 33.572193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300491, 32.491089, 33.729454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130405, -0.859001, 0.495088,
		0.513638, 0.368586, 0.774804,
		-0.848040, 0.355334, 0.393150,
		26.046080, 32.597691, 33.847401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615318, 32.298306, 34.328091>,  <26.639708, 32.348953, 33.572193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615318, 32.298306, 34.328091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226925, 32.323925, 34.235928>,  <25.993889, 32.339298, 34.180630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226925, 32.323925, 34.235928>,  <26.615318, 32.298306, 34.328091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226925, 32.323925, 34.235928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168934, -0.865654, 0.471279,
		-0.169268, 0.496528, 0.851357,
		-0.970984, 0.064051, -0.230409,
		25.935629, 32.343140, 34.166805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203989, 32.410980, 34.996056>,  <26.615318, 32.298306, 34.328091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203989, 32.410980, 34.996056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971880, 32.251823, 34.711811>,  <25.832615, 32.156330, 34.541264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971880, 32.251823, 34.711811>,  <26.203989, 32.410980, 34.996056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971880, 32.251823, 34.711811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145186, -0.808018, 0.570989,
		-0.801377, 0.434499, 0.411102,
		-0.580272, -0.397891, -0.710610,
		25.797798, 32.132458, 34.498627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734884, 32.054508, 35.355286>,  <26.203989, 32.410980, 34.996056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734884, 32.054508, 35.355286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666620, 31.895779, 34.994530>,  <25.625662, 31.800541, 34.778076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666620, 31.895779, 34.994530>,  <25.734884, 32.054508, 35.355286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666620, 31.895779, 34.994530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235941, -0.872230, 0.428423,
		-0.956664, 0.285908, 0.055229,
		-0.170662, -0.396827, -0.901889,
		25.615421, 31.776731, 34.723965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061605, 31.661594, 35.355339>,  <25.734884, 32.054508, 35.355286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061605, 31.661594, 35.355339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218891, 31.538391, 35.008808>,  <25.313263, 31.464470, 34.800892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218891, 31.538391, 35.008808>,  <25.061605, 31.661594, 35.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218891, 31.538391, 35.008808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021355, -0.938907, 0.343507,
		-0.919199, -0.153571, -0.362612,
		0.393212, -0.308008, -0.866323,
		25.336855, 31.445990, 34.748913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508038, 31.093904, 34.920338>,  <25.061605, 31.661594, 35.355339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508038, 31.093904, 34.920338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899170, 31.049520, 34.849308>,  <25.133850, 31.022890, 34.806690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899170, 31.049520, 34.849308>,  <24.508038, 31.093904, 34.920338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899170, 31.049520, 34.849308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073138, -0.975627, 0.206887,
		-0.196201, -0.189314, -0.962115,
		0.977832, -0.110959, -0.177572,
		25.192520, 31.016233, 34.796036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581114, 30.494104, 34.451836>,  <24.508038, 31.093904, 34.920338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581114, 30.494104, 34.451836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920990, 30.560369, 34.652069>,  <25.124916, 30.600128, 34.772209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920990, 30.560369, 34.652069>,  <24.581114, 30.494104, 34.451836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920990, 30.560369, 34.652069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025560, -0.961186, 0.274713,
		0.526661, -0.220627, -0.820946,
		0.849691, 0.165664, 0.500580,
		25.175898, 30.610069, 34.802242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052183, 29.968372, 34.271553>,  <24.581114, 30.494104, 34.451836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052183, 29.968372, 34.271553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206152, 30.123209, 34.606693>,  <25.298534, 30.216110, 34.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206152, 30.123209, 34.606693>,  <25.052183, 29.968372, 34.271553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206152, 30.123209, 34.606693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008981, -0.906185, 0.422786,
		0.922904, -0.170266, -0.345336,
		0.384924, 0.387090, 0.837852,
		25.321629, 30.239336, 34.858047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264690, 29.353558, 34.469353>,  <25.052183, 29.968372, 34.271553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264690, 29.353558, 34.469353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335009, 29.599222, 34.777092>,  <25.377199, 29.746622, 34.961735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335009, 29.599222, 34.777092>,  <25.264690, 29.353558, 34.469353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335009, 29.599222, 34.777092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083678, -0.788015, 0.609943,
		0.980864, -0.042848, -0.189923,
		0.175797, 0.614164, 0.769350,
		25.387747, 29.783472, 35.007896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958345, 29.307959, 34.702011>,  <25.264690, 29.353558, 34.469353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958345, 29.307959, 34.702011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757257, 29.436985, 35.022816>,  <25.636604, 29.514400, 35.215298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757257, 29.436985, 35.022816>,  <25.958345, 29.307959, 34.702011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757257, 29.436985, 35.022816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331281, -0.785052, 0.523399,
		0.798451, 0.528815, 0.287802,
		-0.502721, 0.322565, 0.802012,
		25.606441, 29.533754, 35.263420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474213, 29.374292, 35.254814>,  <25.958345, 29.307959, 34.702011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474213, 29.374292, 35.254814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111095, 29.329248, 35.416420>,  <25.893225, 29.302221, 35.513382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111095, 29.329248, 35.416420>,  <26.474213, 29.374292, 35.254814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111095, 29.329248, 35.416420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260987, -0.905732, 0.333969,
		0.328320, 0.408617, 0.851609,
		-0.907795, -0.112610, 0.404014,
		25.838757, 29.295465, 35.537624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734295, 29.150967, 35.949627>,  <26.474213, 29.374292, 35.254814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734295, 29.150967, 35.949627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349319, 29.045731, 35.922798>,  <26.118334, 28.982588, 35.906700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349319, 29.045731, 35.922798>,  <26.734295, 29.150967, 35.949627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349319, 29.045731, 35.922798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180930, -0.805677, 0.564047,
		-0.202436, 0.530724, 0.823014,
		-0.962437, -0.263091, -0.067075,
		26.060589, 28.966803, 35.902676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518709, 28.908524, 36.575478>,  <26.734295, 29.150967, 35.949627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518709, 28.908524, 36.575478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246725, 28.747908, 36.330063>,  <26.083534, 28.651539, 36.182816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246725, 28.747908, 36.330063>,  <26.518709, 28.908524, 36.575478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246725, 28.747908, 36.330063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002886, -0.835259, 0.549849,
		-0.733245, 0.375645, 0.566783,
		-0.679958, -0.401539, -0.613533,
		26.042738, 28.627445, 36.146004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994963, 28.702951, 37.079105>,  <26.518709, 28.908524, 36.575478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994963, 28.702951, 37.079105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016186, 28.508364, 36.730270>,  <26.028919, 28.391611, 36.520969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016186, 28.508364, 36.730270>,  <25.994963, 28.702951, 37.079105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016186, 28.508364, 36.730270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133664, -0.861996, 0.488974,
		-0.989605, -0.142511, 0.019286,
		0.053060, -0.486470, -0.872085,
		26.032104, 28.362423, 36.468643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648973, 28.156937, 37.229576>,  <25.994963, 28.702951, 37.079105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648973, 28.156937, 37.229576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832003, 28.035078, 36.895435>,  <25.941820, 27.961964, 36.694950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832003, 28.035078, 36.895435>,  <25.648973, 28.156937, 37.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832003, 28.035078, 36.895435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170358, -0.892036, 0.418630,
		-0.872702, -0.333862, -0.356269,
		0.457569, -0.304646, -0.835357,
		25.969275, 27.943684, 36.644829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301689, 27.550554, 37.083004>,  <25.648973, 28.156937, 37.229576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301689, 27.550554, 37.083004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655615, 27.538857, 36.896996>,  <25.867970, 27.531837, 36.785389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655615, 27.538857, 36.896996>,  <25.301689, 27.550554, 37.083004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655615, 27.538857, 36.896996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234501, -0.834467, 0.498671,
		-0.402632, -0.550281, -0.731491,
		0.884814, -0.029245, -0.465025,
		25.921059, 27.530083, 36.757488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323484, 26.871338, 37.051388>,  <25.301689, 27.550554, 37.083004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323484, 26.871338, 37.051388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686220, 27.023428, 36.978649>,  <25.903862, 27.114683, 36.935005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686220, 27.023428, 36.978649>,  <25.323484, 26.871338, 37.051388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686220, 27.023428, 36.978649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421032, -0.836984, 0.349556,
		-0.019288, -0.393553, -0.919100,
		0.906841, 0.380228, -0.181842,
		25.958273, 27.137497, 36.924095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780315, 26.399691, 36.849636>,  <25.323484, 26.871338, 37.051388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780315, 26.399691, 36.849636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022928, 26.670000, 37.017181>,  <26.168497, 26.832186, 37.117710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022928, 26.670000, 37.017181>,  <25.780315, 26.399691, 36.849636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022928, 26.670000, 37.017181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356426, -0.702045, 0.616517,
		0.710688, -0.224644, -0.666677,
		0.606534, 0.675772, 0.418866,
		26.204889, 26.872732, 37.142841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506529, 26.203897, 36.938465>,  <25.780315, 26.399691, 36.849636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506529, 26.203897, 36.938465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376587, 26.469114, 37.208233>,  <26.298622, 26.628244, 37.370094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376587, 26.469114, 37.208233>,  <26.506529, 26.203897, 36.938465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376587, 26.469114, 37.208233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092024, -0.687552, 0.720280,
		0.941276, 0.296049, 0.162339,
		-0.324855, 0.663044, 0.674420,
		26.279131, 26.668028, 37.410561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276781, 25.582544, 36.450230>,  <26.506529, 26.203897, 36.938465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276781, 25.582544, 36.450230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914238, 25.693136, 36.322437>,  <25.696712, 25.759491, 36.245762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914238, 25.693136, 36.322437>,  <26.276781, 25.582544, 36.450230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914238, 25.693136, 36.322437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413474, -0.424913, 0.805287,
		0.086893, 0.861979, 0.499442,
		-0.906360, 0.276480, -0.319484,
		25.642330, 25.776081, 36.226593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785925, 25.216770, 36.032795>,  <26.276781, 25.582544, 36.450230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785925, 25.216770, 36.032795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166311, 25.100035, 36.073765>,  <27.394543, 25.029993, 36.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166311, 25.100035, 36.073765>,  <26.785925, 25.216770, 36.032795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166311, 25.100035, 36.073765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294210, 0.955703, -0.008516,
		-0.095406, 0.038234, 0.994704,
		0.950967, -0.291840, 0.102429,
		27.451601, 25.012484, 36.104492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131027, 25.569448, 36.521187>,  <26.785925, 25.216770, 36.032795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131027, 25.569448, 36.521187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434601, 25.507822, 36.268116>,  <27.616745, 25.470846, 36.116272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434601, 25.507822, 36.268116>,  <27.131027, 25.569448, 36.521187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434601, 25.507822, 36.268116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229974, 0.972412, 0.039070,
		0.609207, -0.175152, 0.773427,
		0.758933, -0.154067, -0.632680,
		27.662281, 25.461601, 36.078312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727528, 26.071602, 36.679264>,  <27.131027, 25.569448, 36.521187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727528, 26.071602, 36.679264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774784, 26.011339, 36.286663>,  <27.803139, 25.975182, 36.051102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774784, 26.011339, 36.286663>,  <27.727528, 26.071602, 36.679264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774784, 26.011339, 36.286663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526808, 0.847367, -0.066658,
		0.841734, -0.509187, 0.179476,
		0.118141, -0.150658, -0.981501,
		27.810226, 25.966143, 35.992214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396658, 26.195129, 36.552422>,  <27.727528, 26.071602, 36.679264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396658, 26.195129, 36.552422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190474, 26.289989, 36.223045>,  <28.066763, 26.346905, 36.025417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190474, 26.289989, 36.223045>,  <28.396658, 26.195129, 36.552422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190474, 26.289989, 36.223045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457850, 0.888498, -0.030721,
		0.724343, -0.392849, -0.566567,
		-0.515462, 0.237150, -0.823443,
		28.035835, 26.361134, 35.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874666, 26.234140, 36.024265>,  <28.396658, 26.195129, 36.552422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874666, 26.234140, 36.024265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552685, 26.449829, 35.925236>,  <28.359495, 26.579243, 35.865818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552685, 26.449829, 35.925236>,  <28.874666, 26.234140, 36.024265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552685, 26.449829, 35.925236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576234, 0.809910, -0.109548,
		0.141440, -0.230840, -0.962657,
		-0.804953, 0.539221, -0.247572,
		28.311199, 26.611595, 35.850964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004789, 26.613119, 35.385441>,  <28.874666, 26.234140, 36.024265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004789, 26.613119, 35.385441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718618, 26.834265, 35.556324>,  <28.546917, 26.966951, 35.658855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718618, 26.834265, 35.556324>,  <29.004789, 26.613119, 35.385441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718618, 26.834265, 35.556324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582717, 0.809501, -0.071754,
		-0.385496, 0.197607, -0.901302,
		-0.715426, 0.552865, 0.427209,
		28.503990, 27.000124, 35.684486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710922, 27.084858, 34.983616>,  <29.004789, 26.613119, 35.385441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710922, 27.084858, 34.983616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681870, 27.256178, 35.343903>,  <28.664438, 27.358971, 35.560074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681870, 27.256178, 35.343903>,  <28.710922, 27.084858, 34.983616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681870, 27.256178, 35.343903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502833, 0.795648, -0.337791,
		-0.861326, 0.428373, -0.273154,
		-0.072634, 0.428299, 0.900713,
		28.660080, 27.384668, 35.614117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281458, 27.709200, 34.867935>,  <28.710922, 27.084858, 34.983616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281458, 27.709200, 34.867935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528948, 27.788012, 35.172134>,  <28.677441, 27.835299, 35.354656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528948, 27.788012, 35.172134>,  <28.281458, 27.709200, 34.867935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528948, 27.788012, 35.172134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027854, 0.961929, -0.271876,
		-0.785115, 0.189399, 0.589679,
		0.618723, 0.197029, 0.760501,
		28.714565, 27.847120, 35.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989290, 28.223511, 35.327747>,  <28.281458, 27.709200, 34.867935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989290, 28.223511, 35.327747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384562, 28.252722, 35.381660>,  <28.621725, 28.270248, 35.414009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384562, 28.252722, 35.381660>,  <27.989290, 28.223511, 35.327747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384562, 28.252722, 35.381660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029884, 0.954144, -0.297852,
		-0.150356, 0.290303, 0.945049,
		0.988180, 0.073026, 0.134786,
		28.681015, 28.274630, 35.422096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065559, 28.810795, 35.739574>,  <27.989290, 28.223511, 35.327747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065559, 28.810795, 35.739574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432631, 28.767105, 35.586765>,  <28.652872, 28.740891, 35.495079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432631, 28.767105, 35.586765>,  <28.065559, 28.810795, 35.739574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432631, 28.767105, 35.586765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076550, 0.992063, -0.099759,
		0.389885, 0.062303, 0.918753,
		0.917676, -0.109225, -0.382021,
		28.707933, 28.734337, 35.472160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438877, 29.467525, 35.906330>,  <28.065559, 28.810795, 35.739574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438877, 29.467525, 35.906330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686855, 29.332140, 35.623173>,  <28.835642, 29.250908, 35.453278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686855, 29.332140, 35.623173>,  <28.438877, 29.467525, 35.906330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686855, 29.332140, 35.623173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152431, 0.936943, -0.314487,
		0.769695, 0.087060, 0.632448,
		0.619947, -0.338464, -0.707890,
		28.872839, 29.230600, 35.410805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144068, 29.869438, 35.917915>,  <28.438877, 29.467525, 35.906330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144068, 29.869438, 35.917915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115942, 29.699923, 35.556705>,  <29.099066, 29.598213, 35.339977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115942, 29.699923, 35.556705>,  <29.144068, 29.869438, 35.917915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115942, 29.699923, 35.556705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264947, 0.864818, -0.426489,
		0.961696, -0.269243, 0.051471,
		-0.070316, -0.423790, -0.903027,
		29.094847, 29.572786, 35.285797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634228, 30.219299, 35.595371>,  <29.144068, 29.869438, 35.917915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634228, 30.219299, 35.595371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407486, 30.092665, 35.291149>,  <29.271441, 30.016684, 35.108616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407486, 30.092665, 35.291149>,  <29.634228, 30.219299, 35.595371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407486, 30.092665, 35.291149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157185, 0.864687, -0.477084,
		0.808684, -0.389985, -0.440389,
		-0.566854, -0.316588, -0.760558,
		29.237431, 29.997688, 35.062981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035503, 30.320150, 34.935745>,  <29.634228, 30.219299, 35.595371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035503, 30.320150, 34.935745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650000, 30.276758, 34.838257>,  <29.418697, 30.250723, 34.779766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650000, 30.276758, 34.838257>,  <30.035503, 30.320150, 34.935745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650000, 30.276758, 34.838257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079808, 0.754501, -0.651428,
		0.254551, -0.647271, -0.718501,
		-0.963760, -0.108480, -0.243717,
		29.360872, 30.244215, 34.765141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017660, 30.381563, 34.269646>,  <30.035503, 30.320150, 34.935745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017660, 30.381563, 34.269646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629738, 30.451550, 34.337601>,  <29.396984, 30.493542, 34.378376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629738, 30.451550, 34.337601>,  <30.017660, 30.381563, 34.269646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629738, 30.451550, 34.337601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062321, 0.851295, -0.520974,
		-0.235781, -0.494655, -0.836495,
		-0.969806, 0.174967, 0.169892,
		29.338797, 30.504040, 34.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749443, 30.727957, 33.606308>,  <30.017660, 30.381563, 34.269646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749443, 30.727957, 33.606308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484306, 30.821615, 33.890789>,  <29.325224, 30.877810, 34.061478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484306, 30.821615, 33.890789>,  <29.749443, 30.727957, 33.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484306, 30.821615, 33.890789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212143, 0.852199, -0.478281,
		-0.718076, -0.467903, -0.515202,
		-0.662844, 0.234146, 0.711206,
		29.285454, 30.891859, 34.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247059, 30.954229, 33.216354>,  <29.749443, 30.727957, 33.606308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247059, 30.954229, 33.216354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148287, 31.101807, 33.574776>,  <29.089024, 31.190353, 33.789829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148287, 31.101807, 33.574776>,  <29.247059, 30.954229, 33.216354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148287, 31.101807, 33.574776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351100, 0.827793, -0.437593,
		-0.903191, -0.422659, -0.074872,
		-0.246931, 0.368942, 0.896051,
		29.074207, 31.212490, 33.843590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578186, 31.137901, 33.099571>,  <29.247059, 30.954229, 33.216354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578186, 31.137901, 33.099571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721331, 31.372890, 33.389896>,  <28.807217, 31.513884, 33.564091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721331, 31.372890, 33.389896>,  <28.578186, 31.137901, 33.099571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721331, 31.372890, 33.389896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474093, 0.783966, -0.400790,
		-0.804469, -0.200677, 0.559069,
		0.357861, 0.587474, 0.725816,
		28.828690, 31.549133, 33.607643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033934, 31.437819, 33.346043>,  <28.578186, 31.137901, 33.099571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033934, 31.437819, 33.346043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320387, 31.688391, 33.469162>,  <28.492258, 31.838734, 33.543034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320387, 31.688391, 33.469162>,  <28.033934, 31.437819, 33.346043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320387, 31.688391, 33.469162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576621, 0.779474, -0.244805,
		-0.393272, -0.002169, 0.919420,
		0.716132, 0.626431, 0.307796,
		28.535227, 31.876320, 33.561501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689646, 32.052338, 33.370964>,  <28.033934, 31.437819, 33.346043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689646, 32.052338, 33.370964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068678, 32.176968, 33.399273>,  <28.296097, 32.251747, 33.416260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068678, 32.176968, 33.399273>,  <27.689646, 32.052338, 33.370964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068678, 32.176968, 33.399273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271707, 0.902342, -0.334596,
		-0.168115, 0.297827, 0.939700,
		0.947582, 0.311574, 0.070776,
		28.352953, 32.270439, 33.420506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660580, 32.711452, 33.661160>,  <27.689646, 32.052338, 33.370964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660580, 32.711452, 33.661160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023418, 32.712162, 33.492790>,  <28.241121, 32.712589, 33.391769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023418, 32.712162, 33.492790>,  <27.660580, 32.711452, 33.661160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023418, 32.712162, 33.492790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133944, 0.949226, -0.284654,
		0.399044, 0.314588, 0.861277,
		0.907096, 0.001773, -0.420920,
		28.295547, 32.712692, 33.366512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994022, 33.378792, 33.883160>,  <27.660580, 32.711452, 33.661160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994022, 33.378792, 33.883160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191381, 33.228966, 33.569153>,  <28.309797, 33.139069, 33.380749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191381, 33.228966, 33.569153>,  <27.994022, 33.378792, 33.883160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191381, 33.228966, 33.569153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021389, 0.897028, -0.441456,
		0.869542, 0.234604, 0.434578,
		0.493396, -0.374569, -0.785021,
		28.339399, 33.116596, 33.333645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417101, 33.858479, 33.721684>,  <27.994022, 33.378792, 33.883160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417101, 33.858479, 33.721684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436213, 33.671486, 33.368599>,  <28.447680, 33.559288, 33.156750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436213, 33.671486, 33.368599>,  <28.417101, 33.858479, 33.721684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436213, 33.671486, 33.368599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022176, 0.883996, -0.466968,
		0.998612, 0.002737, 0.052604,
		0.047779, -0.467486, -0.882708,
		28.450546, 33.531239, 33.103786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969986, 34.162773, 33.488884>,  <28.417101, 33.858479, 33.721684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969986, 34.162773, 33.488884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757856, 34.026817, 33.178211>,  <28.630579, 33.945244, 32.991806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757856, 34.026817, 33.178211>,  <28.969986, 34.162773, 33.488884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757856, 34.026817, 33.178211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016763, 0.920143, -0.391224,
		0.847630, -0.194456, -0.493671,
		-0.530323, -0.339889, -0.776681,
		28.598759, 33.924850, 32.945206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250702, 34.511715, 32.886810>,  <28.969986, 34.162773, 33.488884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250702, 34.511715, 32.886810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887411, 34.390713, 32.771145>,  <28.669437, 34.318111, 32.701744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887411, 34.390713, 32.771145>,  <29.250702, 34.511715, 32.886810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887411, 34.390713, 32.771145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178182, 0.904764, -0.386851,
		0.378651, -0.299824, -0.875631,
		-0.908226, -0.302503, -0.289166,
		28.614943, 34.299961, 32.684395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210453, 34.738235, 32.251598>,  <29.250702, 34.511715, 32.886810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210453, 34.738235, 32.251598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826210, 34.648129, 32.316704>,  <28.595665, 34.594067, 32.355766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826210, 34.648129, 32.316704>,  <29.210453, 34.738235, 32.251598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826210, 34.648129, 32.316704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276178, 0.839134, -0.468593,
		-0.031026, -0.495086, -0.868290,
		-0.960606, -0.225264, 0.162767,
		28.538029, 34.580551, 32.365532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871389, 34.757816, 31.629641>,  <29.210453, 34.738235, 32.251598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871389, 34.757816, 31.629641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573887, 34.789547, 31.895132>,  <28.395386, 34.808586, 32.054428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573887, 34.789547, 31.895132>,  <28.871389, 34.757816, 31.629641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573887, 34.789547, 31.895132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356069, 0.793321, -0.493818,
		-0.565722, -0.603613, -0.561792,
		-0.743756, 0.079327, 0.663728,
		28.350760, 34.813347, 32.094250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303154, 34.927383, 31.279257>,  <28.871389, 34.757816, 31.629641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303154, 34.927383, 31.279257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191380, 35.052479, 31.642378>,  <28.124315, 35.127537, 31.860250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191380, 35.052479, 31.642378>,  <28.303154, 34.927383, 31.279257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191380, 35.052479, 31.642378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291872, 0.873059, -0.390613,
		-0.914728, -0.374114, -0.152683,
		-0.279435, 0.312741, 0.907805,
		28.107550, 35.146301, 31.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044811, 35.607151, 31.214994>,  <28.303154, 34.927383, 31.279257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044811, 35.607151, 31.214994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920340, 35.583218, 31.594381>,  <27.845657, 35.568859, 31.822014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920340, 35.583218, 31.594381>,  <28.044811, 35.607151, 31.214994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920340, 35.583218, 31.594381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486023, 0.867649, -0.104725,
		-0.816670, -0.493565, -0.299072,
		-0.311178, -0.059830, 0.948466,
		27.826986, 35.565269, 31.878922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725830, 35.858116, 31.411598>,  <28.044811, 35.607151, 31.214994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725830, 35.858116, 31.411598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528387, 36.195114, 31.497902>,  <28.409922, 36.397312, 31.549685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528387, 36.195114, 31.497902>,  <28.725830, 35.858116, 31.411598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528387, 36.195114, 31.497902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661627, 0.202764, 0.721898,
		0.564449, 0.499085, -0.657504,
		-0.493606, 0.842497, 0.215758,
		28.380304, 36.447865, 31.562630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150742, 36.499371, 31.399967>,  <28.725830, 35.858116, 31.411598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150742, 36.499371, 31.399967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842642, 36.519260, 31.654287>,  <28.657782, 36.531193, 31.806879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842642, 36.519260, 31.654287>,  <29.150742, 36.499371, 31.399967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842642, 36.519260, 31.654287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635831, 0.136977, 0.759576,
		-0.049320, 0.989325, -0.137123,
		-0.770251, 0.049725, 0.635800,
		28.611567, 36.534180, 31.845028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144142, 37.191437, 31.710140>,  <29.150742, 36.499371, 31.399967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144142, 37.191437, 31.710140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998510, 36.897964, 31.939629>,  <28.911131, 36.721882, 32.077320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998510, 36.897964, 31.939629>,  <29.144142, 37.191437, 31.710140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998510, 36.897964, 31.939629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654087, 0.237106, 0.718297,
		-0.663036, 0.636779, 0.393568,
		-0.364079, -0.733685, 0.573719,
		28.889286, 36.677860, 32.111744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923023, 37.416191, 32.332027>,  <29.144142, 37.191437, 31.710140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923023, 37.416191, 32.332027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052235, 37.037868, 32.345333>,  <29.129761, 36.810875, 32.353317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052235, 37.037868, 32.345333>,  <28.923023, 37.416191, 32.332027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052235, 37.037868, 32.345333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667351, 0.252567, 0.700608,
		-0.671041, -0.204115, 0.712770,
		0.323027, -0.945805, 0.033267,
		29.149143, 36.754128, 32.355312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922729, 37.185024, 32.977829>,  <28.923023, 37.416191, 32.332027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922729, 37.185024, 32.977829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197998, 36.951855, 32.805035>,  <29.363159, 36.811951, 32.701359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197998, 36.951855, 32.805035>,  <28.922729, 37.185024, 32.977829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197998, 36.951855, 32.805035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701650, 0.383141, 0.600741,
		-0.184675, -0.716520, 0.672678,
		0.688173, -0.582926, -0.431989,
		29.404449, 36.776978, 32.675438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390081, 37.068470, 33.462009>,  <28.922729, 37.185024, 32.977829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390081, 37.068470, 33.462009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598814, 36.990299, 33.129864>,  <29.724054, 36.943398, 32.930576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598814, 36.990299, 33.129864>,  <29.390081, 37.068470, 33.462009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598814, 36.990299, 33.129864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803186, 0.440478, 0.401087,
		0.287371, -0.876234, 0.386823,
		0.521834, -0.195431, -0.830359,
		29.755363, 36.931671, 32.880756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075987, 36.539688, 33.602013>,  <29.390081, 37.068470, 33.462009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075987, 36.539688, 33.602013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083786, 36.831676, 33.328732>,  <30.088467, 37.006870, 33.164764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083786, 36.831676, 33.328732>,  <30.075987, 36.539688, 33.602013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083786, 36.831676, 33.328732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814748, 0.384455, 0.434028,
		0.579488, -0.565099, -0.587246,
		0.019499, 0.729971, -0.683200,
		30.089636, 37.050667, 33.123772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687860, 36.311008, 33.929646>,  <30.075987, 36.539688, 33.602013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687860, 36.311008, 33.929646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982874, 36.170731, 34.160488>,  <31.159882, 36.086563, 34.298996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982874, 36.170731, 34.160488>,  <30.687860, 36.311008, 33.929646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982874, 36.170731, 34.160488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357689, 0.521999, 0.774323,
		-0.572801, -0.777516, 0.259553,
		0.737535, -0.350694, 0.577110,
		31.204134, 36.065521, 34.333622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356747, 35.987141, 34.541313>,  <30.687860, 36.311008, 33.929646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356747, 35.987141, 34.541313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735085, 36.069023, 34.642094>,  <30.962088, 36.118153, 34.702560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735085, 36.069023, 34.642094>,  <30.356747, 35.987141, 34.541313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735085, 36.069023, 34.642094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309814, 0.337461, 0.888895,
		0.096936, -0.918813, 0.382605,
		0.945843, 0.204702, 0.251949,
		31.018837, 36.130432, 34.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520735, 35.718975, 35.173946>,  <30.356747, 35.987141, 34.541313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520735, 35.718975, 35.173946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793449, 36.007370, 35.124393>,  <30.957079, 36.180408, 35.094662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793449, 36.007370, 35.124393>,  <30.520735, 35.718975, 35.173946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793449, 36.007370, 35.124393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179825, 0.329315, 0.926938,
		0.709105, -0.609697, 0.354174,
		0.681786, 0.720986, -0.123881,
		30.997986, 36.223667, 35.087231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866726, 35.807083, 35.750256>,  <30.520735, 35.718975, 35.173946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866726, 35.807083, 35.750256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915884, 36.162846, 35.574139>,  <30.945379, 36.376305, 35.468468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915884, 36.162846, 35.574139>,  <30.866726, 35.807083, 35.750256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915884, 36.162846, 35.574139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109888, 0.453119, 0.884651,
		0.986317, -0.060339, 0.153422,
		0.122897, 0.889406, -0.440288,
		30.952753, 36.429668, 35.442051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093887, 36.230831, 36.328201>,  <30.866726, 35.807083, 35.750256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093887, 36.230831, 36.328201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035643, 36.495743, 36.034210>,  <31.000696, 36.654690, 35.857815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035643, 36.495743, 36.034210>,  <31.093887, 36.230831, 36.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035643, 36.495743, 36.034210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107953, 0.749091, 0.653611,
		0.983435, 0.015830, -0.180570,
		-0.145610, 0.662277, -0.734974,
		30.991959, 36.694427, 35.813717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754347, 36.664635, 36.266277>,  <31.093887, 36.230831, 36.328201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754347, 36.664635, 36.266277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437080, 36.861568, 36.122894>,  <31.246719, 36.979729, 36.036865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437080, 36.861568, 36.122894>,  <31.754347, 36.664635, 36.266277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437080, 36.861568, 36.122894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221396, 0.781430, 0.583396,
		0.567334, 0.383371, -0.728806,
		-0.793168, 0.492336, -0.358455,
		31.199129, 37.009270, 36.015358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945732, 37.364014, 36.245262>,  <31.754347, 36.664635, 36.266277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945732, 37.364014, 36.245262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545740, 37.366093, 36.246727>,  <31.305744, 37.367340, 36.247604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545740, 37.366093, 36.246727>,  <31.945732, 37.364014, 36.245262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545740, 37.366093, 36.246727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006353, 0.801384, 0.598117,
		0.000174, 0.598128, -0.801401,
		-0.999980, 0.005196, 0.003660,
		31.245747, 37.367653, 36.247826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731522, 38.049225, 36.039707>,  <31.945732, 37.364014, 36.245262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731522, 38.049225, 36.039707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433222, 37.876156, 36.242352>,  <31.254242, 37.772312, 36.363937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433222, 37.876156, 36.242352>,  <31.731522, 38.049225, 36.039707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433222, 37.876156, 36.242352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066598, 0.805018, 0.589500,
		-0.662890, 0.405880, -0.629157,
		-0.745749, -0.432674, 0.506608,
		31.209497, 37.746353, 36.394333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333654, 38.667126, 36.313850>,  <31.731522, 38.049225, 36.039707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333654, 38.667126, 36.313850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145248, 38.380028, 36.518978>,  <31.032206, 38.207767, 36.642056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145248, 38.380028, 36.518978>,  <31.333654, 38.667126, 36.313850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145248, 38.380028, 36.518978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215974, 0.657484, 0.721852,
		-0.855279, 0.229246, -0.464698,
		-0.471013, -0.717748, 0.512821,
		31.003944, 38.164703, 36.672825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661356, 38.962780, 36.552006>,  <31.333654, 38.667126, 36.313850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661356, 38.962780, 36.552006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729794, 38.653423, 36.796165>,  <30.770857, 38.467808, 36.942661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729794, 38.653423, 36.796165>,  <30.661356, 38.962780, 36.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729794, 38.653423, 36.796165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373267, 0.522471, 0.766613,
		-0.911810, -0.359006, -0.199290,
		0.171096, -0.773394, 0.610399,
		30.781122, 38.421406, 36.979286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005304, 38.781807, 36.912720>,  <30.661356, 38.962780, 36.552006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005304, 38.781807, 36.912720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289387, 38.614960, 37.139568>,  <30.459835, 38.514851, 37.275677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289387, 38.614960, 37.139568>,  <30.005304, 38.781807, 36.912720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289387, 38.614960, 37.139568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474232, 0.311916, 0.823294,
		-0.520302, -0.853653, 0.023715,
		0.710204, -0.417115, 0.567120,
		30.502449, 38.489826, 37.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631557, 38.484718, 37.507774>,  <30.005304, 38.781807, 36.912720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631557, 38.484718, 37.507774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006908, 38.538887, 37.634960>,  <30.232121, 38.571388, 37.711273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006908, 38.538887, 37.634960>,  <29.631557, 38.484718, 37.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006908, 38.538887, 37.634960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345256, 0.408698, 0.844845,
		-0.015540, -0.902566, 0.430270,
		0.938380, 0.135425, 0.317968,
		30.288422, 38.579514, 37.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578768, 38.210815, 38.214222>,  <29.631557, 38.484718, 37.507774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578768, 38.210815, 38.214222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912216, 38.430527, 38.191002>,  <30.112286, 38.562355, 38.177071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912216, 38.430527, 38.191002>,  <29.578768, 38.210815, 38.214222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912216, 38.430527, 38.191002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157687, 0.337403, 0.928059,
		0.529349, -0.764495, 0.367880,
		0.833621, 0.549278, -0.058053,
		30.162302, 38.595310, 38.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898357, 38.043125, 38.829479>,  <29.578768, 38.210815, 38.214222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898357, 38.043125, 38.829479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038813, 38.393993, 38.698463>,  <30.123085, 38.604515, 38.619854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038813, 38.393993, 38.698463>,  <29.898357, 38.043125, 38.829479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038813, 38.393993, 38.698463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138333, 0.394575, 0.908391,
		0.926050, -0.273659, 0.259890,
		0.351136, 0.877167, -0.327540,
		30.144154, 38.657143, 38.600201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400082, 38.289597, 39.353180>,  <29.898357, 38.043125, 38.829479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400082, 38.289597, 39.353180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300005, 38.619064, 39.149624>,  <30.239958, 38.816746, 39.027489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300005, 38.619064, 39.149624>,  <30.400082, 38.289597, 39.353180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300005, 38.619064, 39.149624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033654, 0.517892, 0.854784,
		0.967611, 0.230987, -0.101853,
		-0.250193, 0.823671, -0.508891,
		30.224947, 38.866165, 38.996956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746529, 38.767174, 39.658073>,  <30.400082, 38.289597, 39.353180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746529, 38.767174, 39.658073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467770, 38.978371, 39.463936>,  <30.300514, 39.105087, 39.347454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467770, 38.978371, 39.463936>,  <30.746529, 38.767174, 39.658073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467770, 38.978371, 39.463936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133910, 0.569048, 0.811327,
		0.704557, 0.630406, -0.325866,
		-0.696899, 0.527989, -0.485345,
		30.258699, 39.136768, 39.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873955, 39.476162, 39.807793>,  <30.746529, 38.767174, 39.658073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873955, 39.476162, 39.807793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495768, 39.435402, 39.684044>,  <30.268856, 39.410946, 39.609795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495768, 39.435402, 39.684044>,  <30.873955, 39.476162, 39.807793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495768, 39.435402, 39.684044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302940, 0.624053, 0.720268,
		0.119672, 0.774710, -0.620889,
		-0.945466, -0.101896, -0.309372,
		30.212128, 39.404835, 39.591232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602526, 40.033253, 39.987968>,  <30.873955, 39.476162, 39.807793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602526, 40.033253, 39.987968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274752, 39.814930, 39.917973>,  <30.078087, 39.683937, 39.875973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274752, 39.814930, 39.917973>,  <30.602526, 40.033253, 39.987968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274752, 39.814930, 39.917973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476903, 0.479897, 0.736385,
		-0.317944, 0.686874, -0.653541,
		-0.819436, -0.545805, -0.174992,
		30.028921, 39.651188, 39.865475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138700, 40.465641, 39.984856>,  <30.602526, 40.033253, 39.987968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138700, 40.465641, 39.984856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931288, 40.134007, 40.068516>,  <29.806839, 39.935028, 40.118710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931288, 40.134007, 40.068516>,  <30.138700, 40.465641, 39.984856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931288, 40.134007, 40.068516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385098, 0.444830, 0.808595,
		-0.763428, 0.338741, -0.549938,
		-0.518533, -0.829084, 0.209148,
		29.775728, 39.885281, 40.131260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527025, 40.709301, 40.109898>,  <30.138700, 40.465641, 39.984856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527025, 40.709301, 40.109898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547913, 40.350491, 40.285454>,  <29.560446, 40.135204, 40.390785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547913, 40.350491, 40.285454>,  <29.527025, 40.709301, 40.109898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547913, 40.350491, 40.285454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323134, 0.400666, 0.857351,
		-0.944911, -0.186590, -0.268936,
		0.052220, -0.897024, 0.438887,
		29.563578, 40.081383, 40.417118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906422, 40.700550, 40.396488>,  <29.527025, 40.709301, 40.109898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906422, 40.700550, 40.396488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131828, 40.419594, 40.570431>,  <29.267073, 40.251022, 40.674797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131828, 40.419594, 40.570431>,  <28.906422, 40.700550, 40.396488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131828, 40.419594, 40.570431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413427, 0.215955, 0.884557,
		-0.715212, -0.678244, -0.168693,
		0.563515, -0.702388, 0.434858,
		29.300882, 40.208878, 40.700890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444412, 40.394958, 40.928890>,  <28.906422, 40.700550, 40.396488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444412, 40.394958, 40.928890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813824, 40.294922, 41.045200>,  <29.035471, 40.234901, 41.114986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813824, 40.294922, 41.045200>,  <28.444412, 40.394958, 40.928890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813824, 40.294922, 41.045200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226463, 0.256289, 0.939697,
		-0.309530, -0.933687, 0.180055,
		0.923529, -0.250089, 0.290775,
		29.090883, 40.219894, 41.132431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373075, 39.994675, 41.529846>,  <28.444412, 40.394958, 40.928890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373075, 39.994675, 41.529846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749756, 40.128307, 41.545799>,  <28.975763, 40.208488, 41.555370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749756, 40.128307, 41.545799>,  <28.373075, 39.994675, 41.529846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749756, 40.128307, 41.545799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078571, 0.103110, 0.991562,
		0.327150, -0.936887, 0.123348,
		0.941700, 0.334081, 0.039879,
		29.032267, 40.228531, 41.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657001, 39.707535, 42.084969>,  <28.373075, 39.994675, 41.529846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657001, 39.707535, 42.084969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908115, 40.013676, 42.028225>,  <29.058784, 40.197361, 41.994179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908115, 40.013676, 42.028225>,  <28.657001, 39.707535, 42.084969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908115, 40.013676, 42.028225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066583, 0.234380, 0.969862,
		0.775533, -0.599421, 0.198099,
		0.627786, 0.765350, -0.141858,
		29.096451, 40.243282, 41.985668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145590, 39.635834, 42.669025>,  <28.657001, 39.707535, 42.084969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145590, 39.635834, 42.669025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152611, 40.016048, 42.544975>,  <29.156824, 40.244175, 42.470547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152611, 40.016048, 42.544975>,  <29.145590, 39.635834, 42.669025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152611, 40.016048, 42.544975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107976, 0.306554, 0.945709,
		0.993999, -0.050085, -0.097254,
		0.017552, 0.950535, -0.310122,
		29.157877, 40.301208, 42.451939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658554, 40.012638, 43.019646>,  <29.145590, 39.635834, 42.669025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658554, 40.012638, 43.019646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426111, 40.314453, 42.897667>,  <29.286644, 40.495541, 42.824482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426111, 40.314453, 42.897667>,  <29.658554, 40.012638, 43.019646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426111, 40.314453, 42.897667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073600, 0.421893, 0.903653,
		0.810490, 0.502678, -0.300700,
		-0.581110, 0.754534, -0.304943,
		29.251778, 40.540813, 42.806183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791498, 40.403561, 43.525970>,  <29.658554, 40.012638, 43.019646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791498, 40.403561, 43.525970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490187, 40.597656, 43.348377>,  <29.309401, 40.714111, 43.241821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490187, 40.597656, 43.348377>,  <29.791498, 40.403561, 43.525970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490187, 40.597656, 43.348377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149642, 0.530896, 0.834120,
		0.640453, 0.694762, -0.327301,
		-0.753278, 0.485237, -0.443979,
		29.264204, 40.743229, 43.215183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886713, 41.105183, 43.394440>,  <29.791498, 40.403561, 43.525970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886713, 41.105183, 43.394440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501486, 41.034218, 43.475460>,  <29.270350, 40.991638, 43.524071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501486, 41.034218, 43.475460>,  <29.886713, 41.105183, 43.394440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501486, 41.034218, 43.475460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064839, 0.577298, 0.813955,
		-0.261341, 0.797026, -0.544472,
		-0.963066, -0.177417, 0.202550,
		29.212566, 40.980991, 43.536224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666094, 41.725178, 43.550732>,  <29.886713, 41.105183, 43.394440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666094, 41.725178, 43.550732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399288, 41.471581, 43.707268>,  <29.239204, 41.319424, 43.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399288, 41.471581, 43.707268>,  <29.666094, 41.725178, 43.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399288, 41.471581, 43.707268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039252, 0.554430, 0.831304,
		-0.744011, 0.539130, -0.394698,
		-0.667014, -0.633992, 0.391340,
		29.199184, 41.281384, 43.824669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265415, 42.150345, 43.877411>,  <29.666094, 41.725178, 43.550732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265415, 42.150345, 43.877411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115601, 41.802162, 44.005173>,  <29.025711, 41.593250, 44.081829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115601, 41.802162, 44.005173>,  <29.265415, 42.150345, 43.877411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115601, 41.802162, 44.005173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365639, 0.455222, 0.811838,
		-0.852074, 0.187274, -0.488772,
		-0.374536, -0.870460, 0.319409,
		29.003241, 41.541023, 44.100994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565718, 42.266861, 43.998646>,  <29.265415, 42.150345, 43.877411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565718, 42.266861, 43.998646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690584, 41.963715, 44.227798>,  <28.765505, 41.781826, 44.365292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690584, 41.963715, 44.227798>,  <28.565718, 42.266861, 43.998646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690584, 41.963715, 44.227798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491727, 0.387069, 0.779989,
		-0.812870, -0.525189, -0.251831,
		0.312166, -0.757862, 0.572886,
		28.784233, 41.736355, 44.399666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977085, 41.891121, 44.335796>,  <28.565718, 42.266861, 43.998646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977085, 41.891121, 44.335796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314304, 41.829563, 44.541935>,  <28.516636, 41.792629, 44.665619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314304, 41.829563, 44.541935>,  <27.977085, 41.891121, 44.335796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314304, 41.829563, 44.541935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461373, 0.285509, 0.840012,
		-0.276413, -0.945939, 0.169694,
		0.843049, -0.153898, 0.515349,
		28.567219, 41.783394, 44.696541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715986, 41.895599, 44.967064>,  <27.977085, 41.891121, 44.335796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715986, 41.895599, 44.967064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105659, 41.928276, 45.051247>,  <28.339464, 41.947880, 45.101757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105659, 41.928276, 45.051247>,  <27.715986, 41.895599, 44.967064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105659, 41.928276, 45.051247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223061, 0.204672, 0.953075,
		0.034778, -0.975416, 0.217609,
		0.974184, 0.081686, 0.210459,
		28.397915, 41.952782, 45.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761238, 41.758350, 45.683460>,  <27.715986, 41.895599, 44.967064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761238, 41.758350, 45.683460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122377, 41.905884, 45.595074>,  <28.339062, 41.994404, 45.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122377, 41.905884, 45.595074>,  <27.761238, 41.758350, 45.683460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122377, 41.905884, 45.595074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099941, 0.319815, 0.942194,
		0.418178, -0.872744, 0.251884,
		0.902851, 0.368831, -0.220962,
		28.393232, 42.016533, 45.528786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246456, 41.457371, 46.205406>,  <27.761238, 41.758350, 45.683460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246456, 41.457371, 46.205406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417950, 41.792625, 46.070518>,  <28.520845, 41.993778, 45.989586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417950, 41.792625, 46.070518>,  <28.246456, 41.457371, 46.205406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417950, 41.792625, 46.070518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106403, 0.323817, 0.940117,
		0.897143, -0.438941, 0.049651,
		0.428733, 0.838137, -0.337215,
		28.546570, 42.044067, 45.969353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820673, 41.624271, 46.678658>,  <28.246456, 41.457371, 46.205406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820673, 41.624271, 46.678658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701611, 41.951595, 46.481976>,  <28.630173, 42.147987, 46.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701611, 41.951595, 46.481976>,  <28.820673, 41.624271, 46.678658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701611, 41.951595, 46.481976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080309, 0.491765, 0.867016,
		0.951289, 0.297561, -0.080659,
		-0.297656, 0.818306, -0.491708,
		28.612314, 42.197086, 46.334465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086897, 42.161770, 47.066216>,  <28.820673, 41.624271, 46.678658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086897, 42.161770, 47.066216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811674, 42.355061, 46.849670>,  <28.646540, 42.471035, 46.719742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811674, 42.355061, 46.849670>,  <29.086897, 42.161770, 47.066216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811674, 42.355061, 46.849670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098592, 0.676862, 0.729478,
		0.718928, 0.555296, -0.418077,
		-0.688057, 0.483223, -0.541363,
		28.605257, 42.500027, 46.687260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287960, 42.893238, 47.014442>,  <29.086897, 42.161770, 47.066216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287960, 42.893238, 47.014442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894115, 42.882561, 46.945354>,  <28.657808, 42.876152, 46.903900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894115, 42.882561, 46.945354>,  <29.287960, 42.893238, 47.014442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894115, 42.882561, 46.945354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149305, 0.642185, 0.751869,
		0.090844, 0.766084, -0.636287,
		-0.984609, -0.026698, -0.172719,
		28.598732, 42.874550, 46.893539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110716, 43.572868, 47.058567>,  <29.287960, 42.893238, 47.014442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110716, 43.572868, 47.058567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750328, 43.402828, 47.093304>,  <28.534096, 43.300804, 47.114147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750328, 43.402828, 47.093304>,  <29.110716, 43.572868, 47.058567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750328, 43.402828, 47.093304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275421, 0.715004, 0.642583,
		-0.335256, 0.555029, -0.761279,
		-0.900970, -0.425102, 0.086843,
		28.480038, 43.275299, 47.119358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598457, 44.152473, 47.164196>,  <29.110716, 43.572868, 47.058567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598457, 44.152473, 47.164196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444307, 43.812576, 47.308102>,  <28.351818, 43.608639, 47.394444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444307, 43.812576, 47.308102>,  <28.598457, 44.152473, 47.164196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444307, 43.812576, 47.308102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380806, 0.501578, 0.776792,
		-0.840520, 0.162357, -0.516882,
		-0.385374, -0.849741, 0.359760,
		28.328695, 43.557655, 47.416031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909050, 44.384918, 47.293041>,  <28.598457, 44.152473, 47.164196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909050, 44.384918, 47.293041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047791, 44.089340, 47.524094>,  <28.131035, 43.911995, 47.662727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047791, 44.089340, 47.524094>,  <27.909050, 44.384918, 47.293041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047791, 44.089340, 47.524094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385236, 0.449282, 0.806064,
		-0.855154, -0.502109, -0.128833,
		0.346849, -0.738940, 0.577635,
		28.151846, 43.867657, 47.697384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429762, 44.138874, 47.781731>,  <27.909050, 44.384918, 47.293041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429762, 44.138874, 47.781731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780594, 44.066113, 47.959560>,  <27.991093, 44.022453, 48.066257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780594, 44.066113, 47.959560>,  <27.429762, 44.138874, 47.781731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780594, 44.066113, 47.959560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323400, 0.460709, 0.826534,
		-0.355171, -0.868710, 0.345249,
		0.877078, -0.181908, 0.444572,
		28.043716, 44.011539, 48.092934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261322, 44.070236, 48.456009>,  <27.429762, 44.138874, 47.781731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261322, 44.070236, 48.456009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653957, 44.143925, 48.476204>,  <27.889538, 44.188137, 48.488319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653957, 44.143925, 48.476204>,  <27.261322, 44.070236, 48.456009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653957, 44.143925, 48.476204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121460, 0.397964, 0.909325,
		0.147428, -0.898714, 0.413012,
		0.981587, 0.184225, 0.050487,
		27.948433, 44.199192, 48.491348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370234, 44.035099, 49.129539>,  <27.261322, 44.070236, 48.456009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370234, 44.035099, 49.129539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702759, 44.212067, 48.994968>,  <27.902273, 44.318249, 48.914227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702759, 44.212067, 48.994968>,  <27.370234, 44.035099, 49.129539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702759, 44.212067, 48.994968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085745, 0.495972, 0.864095,
		0.549155, -0.747178, 0.374371,
		0.831310, 0.442421, -0.336433,
		27.952152, 44.344791, 48.894039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004498, 43.839542, 49.558849>,  <27.370234, 44.035099, 49.129539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004498, 43.839542, 49.558849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984802, 44.199379, 49.385269>,  <27.972986, 44.415279, 49.281120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984802, 44.199379, 49.385269>,  <28.004498, 43.839542, 49.558849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984802, 44.199379, 49.385269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007833, 0.434113, 0.900825,
		0.998756, 0.047753, -0.014328,
		-0.049237, 0.899592, -0.433947,
		27.970032, 44.469257, 49.255085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848963, 43.215130, 49.878727>,  <28.004498, 43.839542, 49.558849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848963, 43.215130, 49.878727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465336, 43.322178, 49.915756>,  <27.235159, 43.386406, 49.937973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465336, 43.322178, 49.915756>,  <27.848963, 43.215130, 49.878727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465336, 43.322178, 49.915756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214893, -0.474923, -0.853387,
		-0.184419, -0.838349, 0.512993,
		-0.959068, 0.267619, 0.092571,
		27.177616, 43.402462, 49.943527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261520, 42.681221, 49.762417>,  <27.848963, 43.215130, 49.878727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261520, 42.681221, 49.762417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157152, 43.049850, 49.647442>,  <27.094530, 43.271027, 49.578457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157152, 43.049850, 49.647442>,  <27.261520, 42.681221, 49.762417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157152, 43.049850, 49.647442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124981, -0.327492, -0.936552,
		-0.957235, -0.208443, 0.200629,
		-0.260922, 0.921575, -0.287435,
		27.078876, 43.326324, 49.561211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311964, 41.998497, 49.660336>,  <27.261520, 42.681221, 49.762417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311964, 41.998497, 49.660336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551113, 42.031334, 49.979286>,  <27.694603, 42.051037, 50.170658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551113, 42.031334, 49.979286>,  <27.311964, 41.998497, 49.660336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551113, 42.031334, 49.979286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730150, -0.466282, -0.499462,
		0.330803, 0.880819, -0.338714,
		0.597872, 0.082088, 0.797378,
		27.730474, 42.055962, 50.218498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876751, 42.336933, 49.410805>,  <27.311964, 41.998497, 49.660336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876751, 42.336933, 49.410805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924517, 42.098469, 49.728378>,  <27.953176, 41.955391, 49.918922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924517, 42.098469, 49.728378>,  <27.876751, 42.336933, 49.410805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924517, 42.098469, 49.728378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752314, -0.467493, -0.464191,
		0.647892, 0.652721, 0.392673,
		0.119415, -0.596159, 0.793936,
		27.960340, 41.919621, 49.966560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549389, 42.404980, 49.566101>,  <27.876751, 42.336933, 49.410805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549389, 42.404980, 49.566101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383707, 42.044239, 49.615257>,  <28.284298, 41.827797, 49.644749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383707, 42.044239, 49.615257>,  <28.549389, 42.404980, 49.566101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383707, 42.044239, 49.615257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738401, -0.411893, -0.533955,
		0.532164, -0.130425, 0.836535,
		-0.414204, -0.901850, 0.122889,
		28.259445, 41.773685, 49.652122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001705, 41.827133, 50.032978>,  <28.549389, 42.404980, 49.566101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001705, 41.827133, 50.032978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737675, 41.674824, 49.773964>,  <28.579256, 41.583439, 49.618553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737675, 41.674824, 49.773964>,  <29.001705, 41.827133, 50.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737675, 41.674824, 49.773964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747898, -0.413827, -0.519033,
		-0.070333, -0.826895, 0.557940,
		-0.660077, -0.380777, -0.647539,
		28.539652, 41.560589, 49.579700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036596, 41.126289, 49.970325>,  <29.001705, 41.827133, 50.032978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036596, 41.126289, 49.970325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873556, 41.255703, 49.628754>,  <28.775732, 41.333351, 49.423813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873556, 41.255703, 49.628754>,  <29.036596, 41.126289, 49.970325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873556, 41.255703, 49.628754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731599, -0.443919, -0.517397,
		-0.546468, -0.835622, -0.055753,
		-0.407598, 0.323530, -0.853928,
		28.751276, 41.352760, 49.372574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045340, 40.483105, 49.566685>,  <29.036596, 41.126289, 49.970325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045340, 40.483105, 49.566685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021130, 40.804092, 49.329239>,  <29.006603, 40.996685, 49.186771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021130, 40.804092, 49.329239>,  <29.045340, 40.483105, 49.566685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021130, 40.804092, 49.329239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714959, -0.380147, -0.586790,
		-0.696542, -0.459928, -0.550722,
		-0.060526, 0.802468, -0.593618,
		29.002972, 41.044834, 49.151154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932224, 40.284576, 48.842911>,  <29.045340, 40.483105, 49.566685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932224, 40.284576, 48.842911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098839, 40.648201, 48.839008>,  <29.198809, 40.866375, 48.836666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098839, 40.648201, 48.839008>,  <28.932224, 40.284576, 48.842911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098839, 40.648201, 48.839008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738919, -0.344790, -0.578895,
		-0.529618, 0.233921, -0.815344,
		0.416538, 0.909066, -0.009758,
		29.223801, 40.920921, 48.836082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115620, 40.533333, 48.123871>,  <28.932224, 40.284576, 48.842911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115620, 40.533333, 48.123871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367668, 40.743290, 48.352757>,  <29.518898, 40.869263, 48.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367668, 40.743290, 48.352757>,  <29.115620, 40.533333, 48.123871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367668, 40.743290, 48.352757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741902, -0.189464, -0.643183,
		-0.229188, 0.829813, -0.508806,
		0.630122, 0.524894, 0.572217,
		29.556705, 40.900757, 48.524422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509783, 41.022579, 47.579590>,  <29.115620, 40.533333, 48.123871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509783, 41.022579, 47.579590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742121, 41.014397, 47.905094>,  <29.881523, 41.009487, 48.100395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742121, 41.014397, 47.905094>,  <29.509783, 41.022579, 47.579590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742121, 41.014397, 47.905094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801355, -0.161263, -0.576043,
		0.143013, 0.986700, -0.077275,
		0.580843, -0.020457, 0.813759,
		29.916374, 41.008259, 48.149223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065845, 41.132721, 47.302883>,  <29.509783, 41.022579, 47.579590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065845, 41.132721, 47.302883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205738, 41.011292, 47.657406>,  <30.289673, 40.938435, 47.870117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205738, 41.011292, 47.657406>,  <30.065845, 41.132721, 47.302883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205738, 41.011292, 47.657406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825034, -0.348412, -0.444890,
		0.443854, 0.886823, 0.128604,
		0.349732, -0.303569, 0.886303,
		30.310658, 40.920219, 47.923298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807732, 41.334644, 47.354340>,  <30.065845, 41.132721, 47.302883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807732, 41.334644, 47.354340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746923, 41.030640, 47.607094>,  <30.710438, 40.848236, 47.758747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746923, 41.030640, 47.607094>,  <30.807732, 41.334644, 47.354340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746923, 41.030640, 47.607094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815816, -0.457402, -0.353875,
		0.557973, 0.461706, 0.689561,
		-0.152021, -0.760008, 0.631885,
		30.701317, 40.802639, 47.796658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438755, 41.260403, 47.655396>,  <30.807732, 41.334644, 47.354340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438755, 41.260403, 47.655396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267944, 40.901882, 47.703201>,  <31.165457, 40.686768, 47.731884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267944, 40.901882, 47.703201>,  <31.438755, 41.260403, 47.655396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267944, 40.901882, 47.703201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743659, -0.423305, -0.517479,
		0.514410, -0.132100, 0.847309,
		-0.427029, -0.896305, 0.119516,
		31.139835, 40.632992, 47.739056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955013, 40.752659, 47.780933>,  <31.438755, 41.260403, 47.655396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955013, 40.752659, 47.780933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662207, 40.518341, 47.641796>,  <31.486523, 40.377750, 47.558315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662207, 40.518341, 47.641796>,  <31.955013, 40.752659, 47.780933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662207, 40.518341, 47.641796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645311, -0.432466, -0.629719,
		0.218457, -0.685432, 0.694593,
		-0.732018, -0.585795, -0.347842,
		31.442602, 40.342602, 47.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304649, 40.153851, 47.712395>,  <31.955013, 40.752659, 47.780933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304649, 40.153851, 47.712395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982929, 40.105423, 47.479694>,  <31.789896, 40.076366, 47.340073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982929, 40.105423, 47.479694>,  <32.304649, 40.153851, 47.712395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982929, 40.105423, 47.479694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562883, -0.468970, -0.680610,
		-0.190423, -0.874876, 0.445343,
		-0.804302, -0.121072, -0.581755,
		31.741638, 40.069103, 47.305168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280090, 39.432438, 47.417507>,  <32.304649, 40.153851, 47.712395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280090, 39.432438, 47.417507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060520, 39.661179, 47.173653>,  <31.928778, 39.798424, 47.027340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060520, 39.661179, 47.173653>,  <32.280090, 39.432438, 47.417507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060520, 39.661179, 47.173653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481979, -0.379336, -0.789810,
		-0.682916, -0.727382, -0.067394,
		-0.548928, 0.571856, -0.609638,
		31.895842, 39.832737, 46.990761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973848, 38.965397, 46.976265>,  <32.280090, 39.432438, 47.417507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973848, 38.965397, 46.976265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961830, 39.310173, 46.773819>,  <31.954620, 39.517040, 46.652351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961830, 39.310173, 46.773819>,  <31.973848, 38.965397, 46.976265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961830, 39.310173, 46.773819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427462, -0.446628, -0.786003,
		-0.903534, -0.239961, -0.355028,
		-0.030044, 0.861941, -0.506118,
		31.952816, 39.568756, 46.621983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781620, 38.790298, 46.279171>,  <31.973848, 38.965397, 46.976265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781620, 38.790298, 46.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951271, 39.152245, 46.264523>,  <32.053062, 39.369411, 46.255733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951271, 39.152245, 46.264523>,  <31.781620, 38.790298, 46.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951271, 39.152245, 46.264523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331695, -0.192849, -0.923465,
		-0.842672, 0.379517, -0.381931,
		0.424125, 0.904863, -0.036625,
		32.078510, 39.423702, 46.253536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620584, 39.091080, 45.617012>,  <31.781620, 38.790298, 46.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620584, 39.091080, 45.617012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941050, 39.314568, 45.702774>,  <32.133327, 39.448662, 45.754230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941050, 39.314568, 45.702774>,  <31.620584, 39.091080, 45.617012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941050, 39.314568, 45.702774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277668, -0.029673, -0.960219,
		-0.530132, 0.828825, -0.178911,
		0.801162, 0.558721, 0.214407,
		32.181396, 39.482185, 45.767097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533461, 39.650127, 45.147041>,  <31.620584, 39.091080, 45.617012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533461, 39.650127, 45.147041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911880, 39.605186, 45.268608>,  <32.138931, 39.578220, 45.341549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911880, 39.605186, 45.268608>,  <31.533461, 39.650127, 45.147041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911880, 39.605186, 45.268608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291578, -0.113887, -0.949743,
		0.141317, 0.987121, -0.074984,
		0.946051, -0.112351, 0.303917,
		32.195694, 39.571480, 45.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955368, 40.056789, 44.671391>,  <31.533461, 39.650127, 45.147041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955368, 40.056789, 44.671391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191036, 39.770248, 44.820908>,  <32.332436, 39.598324, 44.910618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191036, 39.770248, 44.820908>,  <31.955368, 40.056789, 44.671391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191036, 39.770248, 44.820908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409868, -0.133713, -0.902291,
		0.696339, 0.684806, 0.214830,
		0.589169, -0.716353, 0.373790,
		32.367786, 39.555344, 44.933044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494911, 40.250404, 44.348362>,  <31.955368, 40.056789, 44.671391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494911, 40.250404, 44.348362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564476, 39.873981, 44.464409>,  <32.606216, 39.648129, 44.534039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564476, 39.873981, 44.464409>,  <32.494911, 40.250404, 44.348362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564476, 39.873981, 44.464409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388206, -0.205231, -0.898430,
		0.905013, 0.268877, 0.329630,
		0.173917, -0.941056, 0.290116,
		32.616650, 39.591663, 44.551445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239941, 40.101612, 44.172932>,  <32.494911, 40.250404, 44.348362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239941, 40.101612, 44.172932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016876, 39.773800, 44.225674>,  <32.883038, 39.577114, 44.257317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016876, 39.773800, 44.225674>,  <33.239941, 40.101612, 44.172932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016876, 39.773800, 44.225674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296743, -0.345173, -0.890393,
		0.775217, -0.457409, 0.435679,
		-0.557658, -0.819532, 0.131851,
		32.849579, 39.527939, 44.265228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655735, 39.591465, 43.932545>,  <33.239941, 40.101612, 44.172932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655735, 39.591465, 43.932545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280128, 39.455391, 43.912426>,  <33.054764, 39.373749, 43.900356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280128, 39.455391, 43.912426>,  <33.655735, 39.591465, 43.932545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280128, 39.455391, 43.912426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207817, -0.444845, -0.871163,
		0.273979, -0.828487, 0.488411,
		-0.939014, -0.340181, -0.050296,
		32.998425, 39.353336, 43.897339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791599, 38.856583, 43.758621>,  <33.655735, 39.591465, 43.932545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791599, 38.856583, 43.758621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406742, 38.938446, 43.686626>,  <33.175827, 38.987564, 43.643429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406742, 38.938446, 43.686626>,  <33.791599, 38.856583, 43.758621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406742, 38.938446, 43.686626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055382, -0.499789, -0.864375,
		-0.266856, -0.841621, 0.469534,
		-0.962144, 0.204659, -0.179982,
		33.118099, 38.999844, 43.632633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425915, 38.216358, 43.632999>,  <33.791599, 38.856583, 43.758621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425915, 38.216358, 43.632999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226250, 38.508602, 43.446648>,  <33.106449, 38.683949, 43.334839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226250, 38.508602, 43.446648>,  <33.425915, 38.216358, 43.632999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226250, 38.508602, 43.446648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118604, -0.474979, -0.871968,
		-0.858352, -0.490510, 0.150439,
		-0.499164, 0.730612, -0.465876,
		33.076500, 38.727787, 43.306885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977249, 37.864677, 43.119453>,  <33.425915, 38.216358, 43.632999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977249, 37.864677, 43.119453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974819, 38.249027, 43.008690>,  <32.973362, 38.479637, 42.942234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974819, 38.249027, 43.008690>,  <32.977249, 37.864677, 43.119453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974819, 38.249027, 43.008690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126961, -0.275411, -0.952906,
		-0.991889, 0.029370, 0.123667,
		-0.006072, 0.960878, -0.276906,
		32.972996, 38.537292, 42.925617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463917, 37.921997, 42.606506>,  <32.977249, 37.864677, 43.119453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463917, 37.921997, 42.606506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673168, 38.257156, 42.544193>,  <32.798721, 38.458252, 42.506805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673168, 38.257156, 42.544193>,  <32.463917, 37.921997, 42.606506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673168, 38.257156, 42.544193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088340, -0.128491, -0.987768,
		-0.847662, 0.530494, 0.006802,
		0.523131, 0.837894, -0.155781,
		32.830109, 38.508526, 42.497459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965887, 38.311771, 42.246704>,  <32.463917, 37.921997, 42.606506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965887, 38.311771, 42.246704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337173, 38.431011, 42.157669>,  <32.559944, 38.502556, 42.104248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337173, 38.431011, 42.157669>,  <31.965887, 38.311771, 42.246704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337173, 38.431011, 42.157669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189811, -0.135115, -0.972479,
		-0.319973, 0.944923, -0.068833,
		0.928218, 0.298102, -0.222590,
		32.615639, 38.520443, 42.090893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839998, 38.744225, 41.629517>,  <31.965887, 38.311771, 42.246704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839998, 38.744225, 41.629517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227650, 38.645744, 41.634773>,  <32.460239, 38.586658, 41.637928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227650, 38.645744, 41.634773>,  <31.839998, 38.744225, 41.629517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227650, 38.645744, 41.634773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020101, -0.132028, -0.991042,
		0.245728, 0.960185, -0.132901,
		0.969130, -0.246198, 0.013142,
		32.518391, 38.571884, 41.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194195, 39.075394, 41.091751>,  <31.839998, 38.744225, 41.629517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194195, 39.075394, 41.091751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446117, 38.775074, 41.171391>,  <32.597271, 38.594883, 41.219173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446117, 38.775074, 41.171391>,  <32.194195, 39.075394, 41.091751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446117, 38.775074, 41.171391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159834, -0.125576, -0.979124,
		0.760130, 0.648482, 0.040915,
		0.629806, -0.750801, 0.199103,
		32.635059, 38.549835, 41.231121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576942, 38.976433, 40.451878>,  <32.194195, 39.075394, 41.091751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576942, 38.976433, 40.451878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626392, 38.623184, 40.632904>,  <32.656063, 38.411236, 40.741520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626392, 38.623184, 40.632904>,  <32.576942, 38.976433, 40.451878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626392, 38.623184, 40.632904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061602, -0.448352, -0.891732,
		0.990415, 0.138121, -0.001026,
		0.123627, -0.883121, 0.452563,
		32.663479, 38.358250, 40.768673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884113, 38.577168, 39.944530>,  <32.576942, 38.976433, 40.451878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884113, 38.577168, 39.944530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825340, 38.287422, 40.213963>,  <32.790077, 38.113575, 40.375622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825340, 38.287422, 40.213963>,  <32.884113, 38.577168, 39.944530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825340, 38.287422, 40.213963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017236, -0.682741, -0.730457,
		0.988997, -0.095718, 0.112801,
		-0.146932, -0.724364, 0.673579,
		32.781261, 38.070114, 40.416035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387825, 38.072224, 39.696640>,  <32.884113, 38.577168, 39.944530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387825, 38.072224, 39.696640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081665, 37.917297, 39.902222>,  <32.897968, 37.824341, 40.025570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081665, 37.917297, 39.902222>,  <33.387825, 38.072224, 39.696640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081665, 37.917297, 39.902222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207935, -0.606945, -0.767060,
		0.609039, -0.693976, 0.384018,
		-0.765398, -0.387318, 0.513955,
		32.852047, 37.801102, 40.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633686, 37.321991, 39.811543>,  <33.387825, 38.072224, 39.696640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633686, 37.321991, 39.811543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234810, 37.346519, 39.828781>,  <32.995483, 37.361237, 39.839123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234810, 37.346519, 39.828781>,  <33.633686, 37.321991, 39.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234810, 37.346519, 39.828781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074461, -0.744937, -0.662966,
		-0.008552, -0.664310, 0.747408,
		-0.997187, 0.061323, 0.043094,
		32.935654, 37.364918, 39.841709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442627, 36.613331, 39.832756>,  <33.633686, 37.321991, 39.811543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442627, 36.613331, 39.832756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106960, 36.797478, 39.716927>,  <32.905560, 36.907967, 39.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106960, 36.797478, 39.716927>,  <33.442627, 36.613331, 39.832756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106960, 36.797478, 39.716927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191576, -0.748525, -0.634829,
		-0.509008, -0.477255, 0.716337,
		-0.839172, 0.460367, -0.289575,
		32.855209, 36.935589, 39.630054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998096, 36.109238, 39.671104>,  <33.442627, 36.613331, 39.832756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998096, 36.109238, 39.671104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841503, 36.428886, 39.488613>,  <32.747547, 36.620678, 39.379120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841503, 36.428886, 39.488613>,  <32.998096, 36.109238, 39.671104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841503, 36.428886, 39.488613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131033, -0.539155, -0.831951,
		-0.910810, -0.265912, 0.315780,
		-0.391480, 0.799126, -0.456225,
		32.724060, 36.668625, 39.351746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304489, 35.965462, 39.495003>,  <32.998096, 36.109238, 39.671104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304489, 35.965462, 39.495003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413750, 36.259754, 39.247105>,  <32.479305, 36.436329, 39.098366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413750, 36.259754, 39.247105>,  <32.304489, 35.965462, 39.495003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413750, 36.259754, 39.247105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370268, -0.514200, -0.773628,
		-0.887859, 0.440786, 0.131967,
		0.273147, 0.735735, -0.619745,
		32.495693, 36.480476, 39.061180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731606, 35.957672, 39.052834>,  <32.304489, 35.965462, 39.495003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731606, 35.957672, 39.052834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017120, 36.163464, 38.862751>,  <32.188431, 36.286938, 38.748703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017120, 36.163464, 38.862751>,  <31.731606, 35.957672, 39.052834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017120, 36.163464, 38.862751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082966, -0.611624, -0.786786,
		-0.695432, 0.601023, -0.393885,
		0.713786, 0.514477, -0.475208,
		32.231255, 36.317806, 38.720188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493610, 36.086643, 38.388817>,  <31.731606, 35.957672, 39.052834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493610, 36.086643, 38.388817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892355, 36.116837, 38.379246>,  <32.131603, 36.134953, 38.373505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892355, 36.116837, 38.379246>,  <31.493610, 36.086643, 38.388817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892355, 36.116837, 38.379246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012922, -0.453222, -0.891304,
		-0.078121, 0.888197, -0.452774,
		0.996860, 0.075480, -0.023929,
		32.191414, 36.139481, 38.372066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611267, 36.230976, 37.695435>,  <31.493610, 36.086643, 38.388817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611267, 36.230976, 37.695435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975647, 36.113628, 37.811440>,  <32.194275, 36.043221, 37.881042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975647, 36.113628, 37.811440>,  <31.611267, 36.230976, 37.695435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975647, 36.113628, 37.811440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067232, -0.588033, -0.806038,
		0.407005, 0.753757, -0.515944,
		0.910949, -0.293373, 0.290009,
		32.248932, 36.025616, 37.898441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129341, 36.361412, 37.117252>,  <31.611267, 36.230976, 37.695435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129341, 36.361412, 37.117252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287056, 36.073143, 37.345348>,  <32.381683, 35.900181, 37.482204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287056, 36.073143, 37.345348>,  <32.129341, 36.361412, 37.117252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287056, 36.073143, 37.345348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002425, -0.619687, -0.784845,
		0.918984, 0.310837, -0.242587,
		0.394287, -0.720672, 0.570236,
		32.405342, 35.856941, 37.516418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676369, 36.115623, 36.675007>,  <32.129341, 36.361412, 37.117252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676369, 36.115623, 36.675007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579319, 35.861958, 36.968662>,  <32.521088, 35.709759, 37.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579319, 35.861958, 36.968662>,  <32.676369, 36.115623, 36.675007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579319, 35.861958, 36.968662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167275, -0.772766, -0.612251,
		0.955590, -0.025744, 0.293574,
		-0.242626, -0.634169, 0.734141,
		32.506531, 35.671707, 37.188904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241505, 35.679943, 36.783497>,  <32.676369, 36.115623, 36.675007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241505, 35.679943, 36.783497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918770, 35.482338, 36.913094>,  <32.725128, 35.363777, 36.990852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918770, 35.482338, 36.913094>,  <33.241505, 35.679943, 36.783497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918770, 35.482338, 36.913094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210853, -0.753095, -0.623209,
		0.551867, -0.434513, 0.711787,
		-0.806836, -0.494011, 0.323990,
		32.676720, 35.334133, 37.010292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486069, 34.963165, 36.994400>,  <33.241505, 35.679943, 36.783497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486069, 34.963165, 36.994400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091957, 34.918976, 36.942204>,  <32.855492, 34.892464, 36.910885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091957, 34.918976, 36.942204>,  <33.486069, 34.963165, 36.994400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091957, 34.918976, 36.942204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170381, -0.697687, -0.695847,
		-0.014169, -0.707835, 0.706236,
		-0.985276, -0.110470, -0.130487,
		32.796375, 34.885834, 36.903057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843246, 35.348827, 37.627480>,  <33.486069, 34.963165, 36.994400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843246, 35.348827, 37.627480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231007, 35.299332, 37.542675>,  <34.463661, 35.269634, 37.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231007, 35.299332, 37.542675>,  <33.843246, 35.348827, 37.627480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231007, 35.299332, 37.542675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224789, 0.100367, 0.969225,
		-0.098656, -0.987225, 0.125112,
		0.969400, -0.123744, -0.212015,
		34.521828, 35.262207, 37.479069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137779, 34.787003, 38.016670>,  <33.843246, 35.348827, 37.627480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137779, 34.787003, 38.016670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452480, 35.005680, 37.902023>,  <34.641300, 35.136887, 37.833233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452480, 35.005680, 37.902023>,  <34.137779, 34.787003, 38.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452480, 35.005680, 37.902023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264006, 0.121703, 0.956812,
		0.557963, -0.828443, -0.048579,
		0.786752, 0.546690, -0.286620,
		34.688507, 35.169685, 37.816036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698036, 34.613731, 38.475925>,  <34.137779, 34.787003, 38.016670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698036, 34.613731, 38.475925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816910, 34.974613, 38.350899>,  <34.888233, 35.191143, 38.275883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816910, 34.974613, 38.350899>,  <34.698036, 34.613731, 38.475925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816910, 34.974613, 38.350899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207698, 0.258439, 0.943435,
		0.931956, -0.345295, -0.110583,
		0.297184, 0.902209, -0.312571,
		34.906067, 35.245277, 38.257126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301575, 34.645756, 38.736473>,  <34.698036, 34.613731, 38.475925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301575, 34.645756, 38.736473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182499, 35.020889, 38.665081>,  <35.111053, 35.245968, 38.622246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182499, 35.020889, 38.665081>,  <35.301575, 34.645756, 38.736473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182499, 35.020889, 38.665081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317475, 0.273565, 0.907949,
		0.900329, 0.213621, -0.379174,
		-0.297686, 0.937832, -0.178479,
		35.093193, 35.302238, 38.611538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860340, 35.092594, 39.140862>,  <35.301575, 34.645756, 38.736473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860340, 35.092594, 39.140862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575771, 35.356529, 39.044121>,  <35.405029, 35.514889, 38.986076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575771, 35.356529, 39.044121>,  <35.860340, 35.092594, 39.140862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575771, 35.356529, 39.044121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169149, 0.494807, 0.852382,
		0.682102, 0.565496, -0.463628,
		-0.711425, 0.659834, -0.241855,
		35.362343, 35.554478, 38.971565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232803, 35.780788, 39.064747>,  <35.860340, 35.092594, 39.140862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232803, 35.780788, 39.064747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848438, 35.831860, 39.163006>,  <35.617821, 35.862503, 39.221962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848438, 35.831860, 39.163006>,  <36.232803, 35.780788, 39.064747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848438, 35.831860, 39.163006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276781, 0.423844, 0.862409,
		0.005999, 0.896690, -0.442618,
		-0.960914, 0.127682, 0.245644,
		35.560165, 35.870163, 39.236698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152405, 36.519093, 39.215202>,  <36.232803, 35.780788, 39.064747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152405, 36.519093, 39.215202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830605, 36.366596, 39.397385>,  <35.637524, 36.275097, 39.506695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830605, 36.366596, 39.397385>,  <36.152405, 36.519093, 39.215202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830605, 36.366596, 39.397385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194076, 0.556000, 0.808207,
		-0.561354, 0.738593, -0.373311,
		-0.804497, -0.381240, 0.455456,
		35.589256, 36.252224, 39.534023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859707, 37.094982, 39.574772>,  <36.152405, 36.519093, 39.215202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859707, 37.094982, 39.574772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705151, 36.769154, 39.747829>,  <35.612415, 36.573658, 39.851665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705151, 36.769154, 39.747829>,  <35.859707, 37.094982, 39.574772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705151, 36.769154, 39.747829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201311, 0.383286, 0.901424,
		-0.900098, 0.435398, 0.015883,
		-0.386390, -0.814568, 0.432645,
		35.589233, 36.524784, 39.877625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537758, 37.388264, 40.121799>,  <35.859707, 37.094982, 39.574772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537758, 37.388264, 40.121799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560841, 37.003265, 40.227837>,  <35.574688, 36.772266, 40.291458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560841, 37.003265, 40.227837>,  <35.537758, 37.388264, 40.121799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560841, 37.003265, 40.227837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182192, 0.271226, 0.945115,
		-0.981568, -0.006239, 0.191010,
		0.057703, -0.962496, 0.265090,
		35.578152, 36.714516, 40.307365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106277, 37.228947, 40.640663>,  <35.537758, 37.388264, 40.121799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106277, 37.228947, 40.640663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345276, 36.915462, 40.708542>,  <35.488674, 36.727371, 40.749268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345276, 36.915462, 40.708542>,  <35.106277, 37.228947, 40.640663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345276, 36.915462, 40.708542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098502, 0.281755, 0.954417,
		-0.795800, -0.553543, 0.245544,
		0.597494, -0.783712, 0.169696,
		35.524525, 36.680347, 40.759449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875439, 36.950619, 41.301235>,  <35.106277, 37.228947, 40.640663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875439, 36.950619, 41.301235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248680, 36.810291, 41.269634>,  <35.472626, 36.726093, 41.250675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248680, 36.810291, 41.269634>,  <34.875439, 36.950619, 41.301235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248680, 36.810291, 41.269634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142617, 0.159359, 0.976865,
		-0.330118, -0.922782, 0.198732,
		0.933103, -0.350824, -0.078998,
		35.528610, 36.705044, 41.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916130, 36.502251, 41.818867>,  <34.875439, 36.950619, 41.301235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916130, 36.502251, 41.818867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297447, 36.587494, 41.733242>,  <35.526237, 36.638641, 41.681866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297447, 36.587494, 41.733242>,  <34.916130, 36.502251, 41.818867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297447, 36.587494, 41.733242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166426, 0.220853, 0.961003,
		0.252079, -0.951739, 0.175069,
		0.953288, 0.213112, -0.214067,
		35.583435, 36.651428, 41.669022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311947, 36.154625, 42.369850>,  <34.916130, 36.502251, 41.818867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311947, 36.154625, 42.369850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526386, 36.456017, 42.217609>,  <35.655052, 36.636852, 42.126263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526386, 36.456017, 42.217609>,  <35.311947, 36.154625, 42.369850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526386, 36.456017, 42.217609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156292, 0.354481, 0.921909,
		0.829560, -0.553721, 0.072274,
		0.536100, 0.753483, -0.380605,
		35.687218, 36.682060, 42.103428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920761, 36.155212, 42.817120>,  <35.311947, 36.154625, 42.369850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920761, 36.155212, 42.817120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893761, 36.513836, 42.642017>,  <35.877560, 36.729012, 42.536957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893761, 36.513836, 42.642017>,  <35.920761, 36.155212, 42.817120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893761, 36.513836, 42.642017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132852, 0.442921, 0.886663,
		0.988835, 0.001695, -0.149007,
		-0.067501, 0.896559, -0.437751,
		35.873512, 36.782803, 42.510693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482281, 36.628593, 43.146717>,  <35.920761, 36.155212, 42.817120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482281, 36.628593, 43.146717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190662, 36.859749, 43.000000>,  <36.015694, 36.998444, 42.911968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190662, 36.859749, 43.000000>,  <36.482281, 36.628593, 43.146717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190662, 36.859749, 43.000000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076700, 0.601485, 0.795194,
		0.680156, 0.551598, -0.482833,
		-0.729044, 0.577889, -0.366796,
		35.971951, 37.033115, 42.889961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698624, 37.299850, 43.311089>,  <36.482281, 36.628593, 43.146717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698624, 37.299850, 43.311089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314007, 37.362614, 43.220921>,  <36.083237, 37.400272, 43.166821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314007, 37.362614, 43.220921>,  <36.698624, 37.299850, 43.311089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314007, 37.362614, 43.220921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043019, 0.724562, 0.687865,
		0.271262, 0.671110, -0.689948,
		-0.961544, 0.156911, -0.225417,
		36.025543, 37.409687, 43.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642727, 37.996044, 43.438160>,  <36.698624, 37.299850, 43.311089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642727, 37.996044, 43.438160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261204, 37.877972, 43.415791>,  <36.032291, 37.807129, 43.402370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261204, 37.877972, 43.415791>,  <36.642727, 37.996044, 43.438160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261204, 37.877972, 43.415791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238427, 0.630476, 0.738683,
		-0.182785, 0.717893, -0.671729,
		-0.953804, -0.295179, -0.055924,
		35.975063, 37.789417, 43.399014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108559, 38.578598, 43.352139>,  <36.642727, 37.996044, 43.438160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108559, 38.578598, 43.352139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922829, 38.273525, 43.532234>,  <35.811390, 38.090481, 43.640293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922829, 38.273525, 43.532234>,  <36.108559, 38.578598, 43.352139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922829, 38.273525, 43.532234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216044, 0.590542, 0.777551,
		-0.858912, 0.263762, -0.438975,
		-0.464322, -0.762686, 0.450240,
		35.783531, 38.044720, 43.667305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481144, 38.791420, 43.385666>,  <36.108559, 38.578598, 43.352139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481144, 38.791420, 43.385666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496746, 38.503212, 43.662601>,  <35.506107, 38.330288, 43.828762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496746, 38.503212, 43.662601>,  <35.481144, 38.791420, 43.385666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496746, 38.503212, 43.662601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453905, 0.604478, 0.654658,
		-0.890196, -0.339788, -0.303473,
		0.039002, -0.720521, 0.692335,
		35.508446, 38.287056, 43.870300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830814, 38.768032, 43.792511>,  <35.481144, 38.791420, 43.385666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830814, 38.768032, 43.792511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086025, 38.584908, 44.040165>,  <35.239151, 38.475033, 44.188759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086025, 38.584908, 44.040165>,  <34.830814, 38.768032, 43.792511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086025, 38.584908, 44.040165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320248, 0.573453, 0.754051,
		-0.700263, -0.679379, 0.219261,
		0.638023, -0.457816, 0.619137,
		35.277431, 38.447563, 44.225906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413841, 38.441448, 44.397617>,  <34.830814, 38.768032, 43.792511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413841, 38.441448, 44.397617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792747, 38.496380, 44.513432>,  <35.020092, 38.529339, 44.582920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792747, 38.496380, 44.513432>,  <34.413841, 38.441448, 44.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792747, 38.496380, 44.513432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306088, 0.655254, 0.690617,
		-0.094878, -0.742821, 0.662733,
		0.947264, 0.137330, 0.289538,
		35.076927, 38.537579, 44.600292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424007, 38.557507, 45.147102>,  <34.413841, 38.441448, 44.397617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424007, 38.557507, 45.147102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772152, 38.709457, 45.021774>,  <34.981037, 38.800629, 44.946579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772152, 38.709457, 45.021774>,  <34.424007, 38.557507, 45.147102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772152, 38.709457, 45.021774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059943, 0.713287, 0.698304,
		0.488755, -0.588994, 0.643587,
		0.870359, 0.379878, -0.313316,
		35.033260, 38.823421, 44.927780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800617, 38.752281, 45.787411>,  <34.424007, 38.557507, 45.147102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800617, 38.752281, 45.787411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953445, 38.963589, 45.484108>,  <35.045143, 39.090374, 45.302128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953445, 38.963589, 45.484108>,  <34.800617, 38.752281, 45.787411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953445, 38.963589, 45.484108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116654, 0.841511, 0.527495,
		0.916741, -0.113086, 0.383141,
		0.382069, 0.528271, -0.758256,
		35.068066, 39.122070, 45.256630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246296, 39.136482, 46.132938>,  <34.800617, 38.752281, 45.787411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246296, 39.136482, 46.132938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171375, 39.317406, 45.784149>,  <35.126423, 39.425961, 45.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171375, 39.317406, 45.784149>,  <35.246296, 39.136482, 46.132938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171375, 39.317406, 45.784149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119507, 0.870595, 0.477266,
		0.975006, 0.193597, -0.109006,
		-0.187298, 0.452310, -0.871972,
		35.115185, 39.453098, 45.522556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541271, 39.705811, 46.267906>,  <35.246296, 39.136482, 46.132938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541271, 39.705811, 46.267906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308762, 39.781330, 45.951305>,  <35.169254, 39.826641, 45.761345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308762, 39.781330, 45.951305>,  <35.541271, 39.705811, 46.267906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308762, 39.781330, 45.951305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315699, 0.844194, 0.433210,
		0.749970, 0.501690, -0.431106,
		-0.581274, 0.188795, -0.791503,
		35.134380, 39.837967, 45.713856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743767, 40.383049, 46.139961>,  <35.541271, 39.705811, 46.267906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743767, 40.383049, 46.139961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393101, 40.281368, 45.976578>,  <35.182701, 40.220360, 45.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393101, 40.281368, 45.976578>,  <35.743767, 40.383049, 46.139961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393101, 40.281368, 45.976578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439558, 0.768330, 0.465250,
		0.195567, 0.587411, -0.785303,
		-0.876665, -0.254199, -0.408462,
		35.130100, 40.205109, 45.854038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437466, 40.922649, 45.624043>,  <35.743767, 40.383049, 46.139961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437466, 40.922649, 45.624043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131390, 40.706676, 45.764301>,  <34.947742, 40.577095, 45.848457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131390, 40.706676, 45.764301>,  <35.437466, 40.922649, 45.624043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131390, 40.706676, 45.764301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387721, 0.821287, 0.418522,
		-0.513958, 0.184294, -0.837785,
		-0.765193, -0.539930, 0.350652,
		34.901833, 40.544697, 45.869495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879467, 41.430977, 45.629005>,  <35.437466, 40.922649, 45.624043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879467, 41.430977, 45.629005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728859, 41.128899, 45.843639>,  <34.638496, 40.947651, 45.972420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728859, 41.128899, 45.843639>,  <34.879467, 41.430977, 45.629005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728859, 41.128899, 45.843639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466930, 0.654954, 0.594149,
		-0.800132, -0.026838, -0.599223,
		-0.376518, -0.755193, 0.536580,
		34.615902, 40.902340, 46.004612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199314, 41.702118, 45.728539>,  <34.879467, 41.430977, 45.629005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199314, 41.702118, 45.728539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292805, 41.421909, 45.998245>,  <34.348900, 41.253784, 46.160069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292805, 41.421909, 45.998245>,  <34.199314, 41.702118, 45.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292805, 41.421909, 45.998245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355075, 0.584084, 0.729909,
		-0.905149, -0.410012, -0.112226,
		0.233723, -0.700526, 0.674268,
		34.362923, 41.211750, 46.200527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587734, 41.577877, 46.124401>,  <34.199314, 41.702118, 45.728539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587734, 41.577877, 46.124401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868069, 41.426712, 46.366398>,  <34.036270, 41.336014, 46.511597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868069, 41.426712, 46.366398>,  <33.587734, 41.577877, 46.124401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868069, 41.426712, 46.366398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460592, 0.407883, 0.788344,
		-0.544692, -0.831152, 0.111794,
		0.700832, -0.377914, 0.604992,
		34.078320, 41.313339, 46.547897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298370, 41.217213, 46.735432>,  <33.587734, 41.577877, 46.124401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298370, 41.217213, 46.735432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661331, 41.340904, 46.849274>,  <33.879108, 41.415119, 46.917580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661331, 41.340904, 46.849274>,  <33.298370, 41.217213, 46.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661331, 41.340904, 46.849274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417805, 0.590534, 0.690441,
		0.045433, -0.745417, 0.665048,
		0.907400, 0.309229, 0.284609,
		33.933552, 41.433674, 46.934658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301743, 41.181145, 47.543911>,  <33.298370, 41.217213, 46.735432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301743, 41.181145, 47.543911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605194, 41.419857, 47.439342>,  <33.787266, 41.563084, 47.376602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605194, 41.419857, 47.439342>,  <33.301743, 41.181145, 47.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605194, 41.419857, 47.439342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243830, 0.632142, 0.735488,
		0.604174, -0.494222, 0.625074,
		0.758631, 0.596775, -0.261418,
		33.832783, 41.598892, 47.360916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716805, 41.281895, 48.074150>,  <33.301743, 41.181145, 47.543911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716805, 41.281895, 48.074150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843311, 41.592945, 47.856792>,  <33.919216, 41.779575, 47.726376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843311, 41.592945, 47.856792>,  <33.716805, 41.281895, 48.074150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843311, 41.592945, 47.856792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067534, 0.589799, 0.804721,
		0.946263, -0.217809, 0.239051,
		0.316268, 0.777622, -0.543396,
		33.938190, 41.826233, 47.693775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259983, 41.632046, 48.582310>,  <33.716805, 41.281895, 48.074150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259983, 41.632046, 48.582310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127987, 41.905056, 48.321461>,  <34.048790, 42.068863, 48.164951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127987, 41.905056, 48.321461>,  <34.259983, 41.632046, 48.582310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127987, 41.905056, 48.321461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279577, 0.589163, 0.758105,
		0.901634, 0.432486, -0.003599,
		-0.329990, 0.682527, -0.652122,
		34.028992, 42.109814, 48.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488770, 42.245300, 48.808796>,  <34.259983, 41.632046, 48.582310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488770, 42.245300, 48.808796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190895, 42.358833, 48.567177>,  <34.012169, 42.426952, 48.422203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190895, 42.358833, 48.567177>,  <34.488770, 42.245300, 48.808796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190895, 42.358833, 48.567177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331566, 0.628145, 0.703916,
		0.579223, 0.724482, -0.373665,
		-0.744691, 0.283830, -0.604050,
		33.967487, 42.443981, 48.385963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516750, 42.907520, 48.786598>,  <34.488770, 42.245300, 48.808796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516750, 42.907520, 48.786598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135376, 42.844791, 48.683548>,  <33.906551, 42.807152, 48.621716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135376, 42.844791, 48.683548>,  <34.516750, 42.907520, 48.786598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135376, 42.844791, 48.683548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297646, 0.627223, 0.719721,
		0.048719, 0.762887, -0.644693,
		-0.953432, -0.156827, -0.257628,
		33.849346, 42.797745, 48.606258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227436, 43.596733, 48.675381>,  <34.516750, 42.907520, 48.786598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227436, 43.596733, 48.675381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925781, 43.342312, 48.740757>,  <33.744789, 43.189659, 48.779984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925781, 43.342312, 48.740757>,  <34.227436, 43.596733, 48.675381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925781, 43.342312, 48.740757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423083, 0.660912, 0.619836,
		-0.502268, 0.398293, -0.767522,
		-0.754140, -0.636049, 0.163444,
		33.699539, 43.151497, 48.789791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595917, 43.911381, 48.531448>,  <34.227436, 43.596733, 48.675381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595917, 43.911381, 48.531448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540421, 43.619747, 48.799534>,  <33.507122, 43.444767, 48.960384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540421, 43.619747, 48.799534>,  <33.595917, 43.911381, 48.531448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540421, 43.619747, 48.799534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460991, 0.646509, 0.607876,
		-0.876492, -0.224623, -0.425801,
		-0.138741, -0.729089, 0.670210,
		33.498798, 43.401020, 49.000595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694057, 44.357552, 47.935547>,  <33.595917, 43.911381, 48.531448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694057, 44.357552, 47.935547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781761, 44.720287, 47.791569>,  <33.834385, 44.937931, 47.705181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781761, 44.720287, 47.791569>,  <33.694057, 44.357552, 47.935547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781761, 44.720287, 47.791569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138317, -0.394088, -0.908605,
		-0.965812, 0.149437, -0.211841,
		0.219263, 0.906842, -0.359945,
		33.847542, 44.992340, 47.683586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250507, 44.485565, 47.279869>,  <33.694057, 44.357552, 47.935547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250507, 44.485565, 47.279869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584393, 44.703808, 47.250004>,  <33.784721, 44.834755, 47.232086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584393, 44.703808, 47.250004>,  <33.250507, 44.485565, 47.279869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584393, 44.703808, 47.250004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148406, -0.353425, -0.923616,
		-0.530318, 0.759870, -0.375978,
		0.834708, 0.545608, -0.074658,
		33.834805, 44.867489, 47.227608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121059, 44.790840, 46.741711>,  <33.250507, 44.485565, 47.279869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121059, 44.790840, 46.741711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516251, 44.813454, 46.799263>,  <33.753365, 44.827023, 46.833794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516251, 44.813454, 46.799263>,  <33.121059, 44.790840, 46.741711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516251, 44.813454, 46.799263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154342, -0.413117, -0.897504,
		0.008698, 0.908921, -0.416877,
		0.987979, 0.056535, 0.143878,
		33.812645, 44.830414, 46.842426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337337, 44.986057, 46.113991>,  <33.121059, 44.790840, 46.741711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337337, 44.986057, 46.113991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669823, 44.834488, 46.276722>,  <33.869312, 44.743546, 46.374363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669823, 44.834488, 46.276722>,  <33.337337, 44.986057, 46.113991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669823, 44.834488, 46.276722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294009, -0.321473, -0.900119,
		0.471859, 0.867798, -0.155805,
		0.831209, -0.378921, 0.406830,
		33.919186, 44.720810, 46.398769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913754, 45.089634, 45.636654>,  <33.337337, 44.986057, 46.113991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913754, 45.089634, 45.636654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041336, 44.786587, 45.864437>,  <34.117886, 44.604759, 46.001106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041336, 44.786587, 45.864437>,  <33.913754, 45.089634, 45.636654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041336, 44.786587, 45.864437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389288, -0.443095, -0.807541,
		0.864132, 0.479250, 0.153606,
		0.318952, -0.757619, 0.569459,
		34.137020, 44.559299, 46.035275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531181, 44.965824, 45.340473>,  <33.913754, 45.089634, 45.636654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531181, 44.965824, 45.340473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435783, 44.647419, 45.563000>,  <34.378544, 44.456375, 45.696518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435783, 44.647419, 45.563000>,  <34.531181, 44.965824, 45.340473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435783, 44.647419, 45.563000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429251, -0.600258, -0.674859,
		0.871128, 0.077852, 0.484845,
		-0.238493, -0.796009, 0.556319,
		34.364235, 44.408615, 45.729897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120110, 44.523621, 45.515812>,  <34.531181, 44.965824, 45.340473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120110, 44.523621, 45.515812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802509, 44.280853, 45.529697>,  <34.611950, 44.135193, 45.538029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802509, 44.280853, 45.529697>,  <35.120110, 44.523621, 45.515812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802509, 44.280853, 45.529697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440690, -0.613984, -0.654840,
		0.418749, -0.504649, 0.754970,
		-0.794004, -0.606921, 0.034712,
		34.564308, 44.098778, 45.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394989, 43.945229, 45.198036>,  <35.120110, 44.523621, 45.515812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394989, 43.945229, 45.198036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020901, 43.819195, 45.262646>,  <34.796448, 43.743576, 45.301411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020901, 43.819195, 45.262646>,  <35.394989, 43.945229, 45.198036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020901, 43.819195, 45.262646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134432, -0.738009, -0.661264,
		0.327564, -0.596710, 0.732556,
		-0.935216, -0.315085, 0.161529,
		34.740337, 43.724670, 45.311104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466400, 43.125038, 45.173580>,  <35.394989, 43.945229, 45.198036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466400, 43.125038, 45.173580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089226, 43.240345, 45.106922>,  <34.862923, 43.309528, 45.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089226, 43.240345, 45.106922>,  <35.466400, 43.125038, 45.173580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089226, 43.240345, 45.106922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058242, -0.635559, -0.769852,
		-0.327838, -0.716216, 0.616082,
		-0.942937, 0.288269, -0.166647,
		34.806343, 43.326824, 45.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063843, 42.509624, 45.150661>,  <35.466400, 43.125038, 45.173580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063843, 42.509624, 45.150661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876484, 42.787090, 44.931778>,  <34.764069, 42.953571, 44.800449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876484, 42.787090, 44.931778>,  <35.063843, 42.509624, 45.150661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876484, 42.787090, 44.931778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060392, -0.592762, -0.803110,
		-0.881452, -0.409221, 0.235756,
		-0.468396, 0.693665, -0.547205,
		34.735966, 42.995190, 44.767616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562153, 42.157928, 44.879234>,  <35.063843, 42.509624, 45.150661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562153, 42.157928, 44.879234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631569, 42.474258, 44.644466>,  <34.673218, 42.664055, 44.503605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631569, 42.474258, 44.644466>,  <34.562153, 42.157928, 44.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631569, 42.474258, 44.644466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014251, -0.593887, -0.804422,
		-0.984724, 0.147963, -0.091793,
		0.173540, 0.790825, -0.586923,
		34.683632, 42.711506, 44.468388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008080, 42.166946, 44.330986>,  <34.562153, 42.157928, 44.879234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008080, 42.166946, 44.330986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323036, 42.374496, 44.197853>,  <34.512012, 42.499027, 44.117973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323036, 42.374496, 44.197853>,  <34.008080, 42.166946, 44.330986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323036, 42.374496, 44.197853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006236, -0.533193, -0.845971,
		-0.616417, 0.668188, -0.416598,
		0.787395, 0.518874, -0.332836,
		34.559254, 42.530159, 44.098003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969589, 42.101429, 43.633083>,  <34.008080, 42.166946, 44.330986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969589, 42.101429, 43.633083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333958, 42.261463, 43.673389>,  <34.552578, 42.357483, 43.697571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333958, 42.261463, 43.673389>,  <33.969589, 42.101429, 43.633083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333958, 42.261463, 43.673389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302734, -0.482230, -0.822074,
		-0.280311, 0.779349, -0.560393,
		0.910921, 0.400087, 0.100762,
		34.607235, 42.381489, 43.703617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224613, 42.403900, 43.077084>,  <33.969589, 42.101429, 43.633083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224613, 42.403900, 43.077084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573860, 42.308868, 43.247364>,  <34.783409, 42.251850, 43.349533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573860, 42.308868, 43.247364>,  <34.224613, 42.403900, 43.077084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573860, 42.308868, 43.247364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282016, -0.466141, -0.838558,
		0.397661, 0.852214, -0.339995,
		0.873117, -0.237578, 0.425704,
		34.835796, 42.237595, 43.375076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783577, 42.428345, 42.607327>,  <34.224613, 42.403900, 43.077084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783577, 42.428345, 42.607327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997337, 42.210041, 42.865494>,  <35.125595, 42.079060, 43.020393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997337, 42.210041, 42.865494>,  <34.783577, 42.428345, 42.607327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997337, 42.210041, 42.865494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222016, -0.646150, -0.730205,
		0.815549, 0.533517, -0.224139,
		0.534404, -0.545755, 0.645417,
		35.157658, 42.046314, 43.059120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401016, 42.175797, 42.236324>,  <34.783577, 42.428345, 42.607327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401016, 42.175797, 42.236324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374249, 41.941334, 42.559296>,  <35.358189, 41.800655, 42.753078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374249, 41.941334, 42.559296>,  <35.401016, 42.175797, 42.236324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374249, 41.941334, 42.559296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427506, -0.748045, -0.507610,
		0.901532, 0.311211, 0.300646,
		-0.066923, -0.586154, 0.807431,
		35.354172, 41.765488, 42.801525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077263, 41.877018, 42.374405>,  <35.401016, 42.175797, 42.236324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077263, 41.877018, 42.374405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828316, 41.631840, 42.569115>,  <35.678947, 41.484734, 42.685940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828316, 41.631840, 42.569115>,  <36.077263, 41.877018, 42.374405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828316, 41.631840, 42.569115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445110, -0.788713, -0.424039,
		0.643839, -0.047240, 0.763701,
		-0.622372, -0.612944, 0.486777,
		35.641605, 41.447956, 42.715149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452839, 41.352173, 42.851978>,  <36.077263, 41.877018, 42.374405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452839, 41.352173, 42.851978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094673, 41.205402, 42.751106>,  <35.879772, 41.117340, 42.690582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094673, 41.205402, 42.751106>,  <36.452839, 41.352173, 42.851978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094673, 41.205402, 42.751106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422085, -0.879825, -0.218522,
		-0.141695, -0.302111, 0.942683,
		-0.895414, -0.366929, -0.252183,
		35.826050, 41.095325, 42.675453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471222, 40.719193, 43.110260>,  <36.452839, 41.352173, 42.851978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471222, 40.719193, 43.110260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165367, 40.670513, 42.857113>,  <35.981853, 40.641308, 42.705223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165367, 40.670513, 42.857113>,  <36.471222, 40.719193, 43.110260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165367, 40.670513, 42.857113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425558, -0.832810, -0.354017,
		-0.483978, -0.540017, 0.688584,
		-0.764634, -0.121696, -0.632870,
		35.935978, 40.634003, 42.667252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373901, 39.982780, 43.113190>,  <36.471222, 40.719193, 43.110260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373901, 39.982780, 43.113190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181229, 40.106277, 42.785126>,  <36.065624, 40.180378, 42.588287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181229, 40.106277, 42.785126>,  <36.373901, 39.982780, 43.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181229, 40.106277, 42.785126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313774, -0.813075, -0.490363,
		-0.818245, -0.493544, 0.294770,
		-0.481685, 0.308746, -0.820156,
		36.036724, 40.198902, 42.539078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997704, 39.429188, 42.789974>,  <36.373901, 39.982780, 43.113190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997704, 39.429188, 42.789974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013542, 39.701962, 42.497837>,  <36.023045, 39.865627, 42.322556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013542, 39.701962, 42.497837>,  <35.997704, 39.429188, 42.789974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013542, 39.701962, 42.497837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414373, -0.676308, -0.609018,
		-0.909245, -0.278518, -0.309355,
		0.039597, 0.681935, -0.730340,
		36.025421, 39.906544, 42.278736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770889, 39.002502, 42.262924>,  <35.997704, 39.429188, 42.789974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770889, 39.002502, 42.262924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957024, 39.315460, 42.097359>,  <36.068707, 39.503235, 41.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957024, 39.315460, 42.097359>,  <35.770889, 39.002502, 42.262924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957024, 39.315460, 42.097359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359688, -0.594423, -0.719226,
		-0.808755, 0.185805, -0.558025,
		0.465339, 0.782392, -0.413911,
		36.096626, 39.550179, 41.973186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564747, 39.012661, 41.659321>,  <35.770889, 39.002502, 42.262924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564747, 39.012661, 41.659321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909252, 39.212029, 41.619698>,  <36.115955, 39.331650, 41.595924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909252, 39.212029, 41.619698>,  <35.564747, 39.012661, 41.659321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909252, 39.212029, 41.619698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272611, -0.617677, -0.737670,
		-0.428853, 0.608321, -0.667855,
		0.861260, 0.498417, -0.099057,
		36.167629, 39.361553, 41.589981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687206, 39.003933, 40.996380>,  <35.564747, 39.012661, 41.659321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687206, 39.003933, 40.996380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056381, 39.105797, 41.111855>,  <36.277885, 39.166916, 41.181141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056381, 39.105797, 41.111855>,  <35.687206, 39.003933, 40.996380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056381, 39.105797, 41.111855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382095, -0.514687, -0.767528,
		-0.046876, 0.818684, -0.572328,
		0.922933, 0.254663, 0.288689,
		36.333260, 39.182194, 41.198460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025650, 39.247189, 40.433949>,  <35.687206, 39.003933, 40.996380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025650, 39.247189, 40.433949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312294, 39.121670, 40.683109>,  <36.484280, 39.046360, 40.832603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312294, 39.121670, 40.683109>,  <36.025650, 39.247189, 40.433949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312294, 39.121670, 40.683109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376888, -0.577250, -0.724388,
		0.586878, 0.753867, -0.295397,
		0.716610, -0.313796, 0.622898,
		36.527275, 39.027531, 40.869980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671219, 39.425900, 40.126297>,  <36.025650, 39.247189, 40.433949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671219, 39.425900, 40.126297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737503, 39.132774, 40.390274>,  <36.777275, 38.956898, 40.548660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737503, 39.132774, 40.390274>,  <36.671219, 39.425900, 40.126297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737503, 39.132774, 40.390274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368806, -0.574589, -0.730637,
		0.914616, 0.364465, 0.175050,
		0.165710, -0.732811, 0.659945,
		36.787216, 38.912930, 40.588257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395172, 39.174549, 40.033989>,  <36.671219, 39.425900, 40.126297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395172, 39.174549, 40.033989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214390, 38.871246, 40.221943>,  <37.105923, 38.689266, 40.334713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214390, 38.871246, 40.221943>,  <37.395172, 39.174549, 40.033989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214390, 38.871246, 40.221943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437440, -0.647456, -0.624057,
		0.777421, -0.076500, 0.624311,
		-0.451954, -0.758254, 0.469882,
		37.078804, 38.643768, 40.362907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860363, 38.671967, 40.151985>,  <37.395172, 39.174549, 40.033989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860363, 38.671967, 40.151985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530994, 38.447803, 40.187576>,  <37.333374, 38.313305, 40.208931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530994, 38.447803, 40.187576>,  <37.860363, 38.671967, 40.151985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530994, 38.447803, 40.187576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453102, -0.743775, -0.491423,
		0.341574, -0.364336, 0.866364,
		-0.823423, -0.560409, 0.088973,
		37.283966, 38.279682, 40.214268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026886, 37.985222, 40.465202>,  <37.860363, 38.671967, 40.151985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026886, 37.985222, 40.465202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677494, 37.906536, 40.287064>,  <37.467857, 37.859325, 40.180180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677494, 37.906536, 40.287064>,  <38.026886, 37.985222, 40.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677494, 37.906536, 40.287064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453742, -0.660528, -0.598181,
		-0.176490, -0.724572, 0.666219,
		-0.873481, -0.196719, -0.445345,
		37.415451, 37.847519, 40.153461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171207, 37.364372, 40.218555>,  <38.026886, 37.985222, 40.465202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171207, 37.364372, 40.218555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868103, 37.499329, 39.995140>,  <37.686241, 37.580303, 39.861092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868103, 37.499329, 39.995140>,  <38.171207, 37.364372, 40.218555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868103, 37.499329, 39.995140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339674, -0.526897, -0.779102,
		-0.557162, -0.780091, 0.284654,
		-0.757754, 0.337397, -0.558544,
		37.640778, 37.600548, 39.827576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996559, 36.780327, 39.874527>,  <38.171207, 37.364372, 40.218555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996559, 36.780327, 39.874527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836010, 37.087563, 39.674953>,  <37.739681, 37.271904, 39.555210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836010, 37.087563, 39.674953>,  <37.996559, 36.780327, 39.874527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836010, 37.087563, 39.674953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299141, -0.404936, -0.864027,
		-0.865688, -0.496047, -0.067239,
		-0.401370, 0.768091, -0.498936,
		37.715599, 37.317989, 39.525272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612728, 36.499111, 39.214970>,  <37.996559, 36.780327, 39.874527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612728, 36.499111, 39.214970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716259, 36.879688, 39.148319>,  <37.778378, 37.108036, 39.108330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716259, 36.879688, 39.148319>,  <37.612728, 36.499111, 39.214970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716259, 36.879688, 39.148319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366656, -0.256369, -0.894337,
		-0.893627, 0.170388, -0.415208,
		0.258830, 0.951443, -0.166624,
		37.793907, 37.165123, 39.098331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437080, 36.526947, 38.544086>,  <37.612728, 36.499111, 39.214970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437080, 36.526947, 38.544086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663017, 36.850536, 38.609226>,  <37.798580, 37.044689, 38.648312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663017, 36.850536, 38.609226>,  <37.437080, 36.526947, 38.544086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663017, 36.850536, 38.609226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405578, -0.100291, -0.908542,
		-0.718652, 0.579229, -0.384750,
		0.564841, 0.808972, 0.162848,
		37.832470, 37.093227, 38.658081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262177, 37.028458, 38.051823>,  <37.437080, 36.526947, 38.544086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262177, 37.028458, 38.051823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631966, 37.132545, 38.163273>,  <37.853840, 37.195000, 38.230145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631966, 37.132545, 38.163273>,  <37.262177, 37.028458, 38.051823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631966, 37.132545, 38.163273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307529, -0.077060, -0.948413,
		-0.225324, 0.962470, -0.151265,
		0.924475, 0.260219, 0.278624,
		37.909309, 37.210609, 38.246861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442490, 37.367546, 37.449825>,  <37.262177, 37.028458, 38.051823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442490, 37.367546, 37.449825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798965, 37.333241, 37.628006>,  <38.012852, 37.312656, 37.734917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798965, 37.333241, 37.628006>,  <37.442490, 37.367546, 37.449825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798965, 37.333241, 37.628006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448050, 0.012763, -0.893918,
		0.070979, 0.996234, 0.049800,
		0.891187, -0.085762, 0.445456,
		38.066322, 37.307510, 37.761642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950485, 37.882717, 37.046471>,  <37.442490, 37.367546, 37.449825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950485, 37.882717, 37.046471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153675, 37.590878, 37.229618>,  <38.275589, 37.415775, 37.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153675, 37.590878, 37.229618>,  <37.950485, 37.882717, 37.046471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153675, 37.590878, 37.229618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548894, -0.135479, -0.824840,
		0.663834, 0.670322, 0.331652,
		0.507976, -0.729598, 0.457871,
		38.306068, 37.371998, 37.366978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669777, 38.058937, 36.922215>,  <37.950485, 37.882717, 37.046471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669777, 38.058937, 36.922215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689968, 37.670662, 37.016201>,  <38.702084, 37.437695, 37.072594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689968, 37.670662, 37.016201>,  <38.669777, 38.058937, 36.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689968, 37.670662, 37.016201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621100, -0.153726, -0.768507,
		0.782104, 0.184731, 0.595137,
		0.050479, -0.970692, 0.234966,
		38.705112, 37.379456, 37.086689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340324, 37.835712, 36.730064>,  <38.669777, 38.058937, 36.922215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340324, 37.835712, 36.730064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150723, 37.483582, 36.737591>,  <39.036961, 37.272305, 36.742107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150723, 37.483582, 36.737591>,  <39.340324, 37.835712, 36.730064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150723, 37.483582, 36.737591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697685, -0.388527, -0.601899,
		0.537176, -0.272172, 0.798351,
		-0.474001, -0.880323, 0.018817,
		39.008522, 37.219486, 36.743237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853443, 37.251701, 36.688549>,  <39.340324, 37.835712, 36.730064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853443, 37.251701, 36.688549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502312, 37.116066, 36.553238>,  <39.291634, 37.034683, 36.472050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502312, 37.116066, 36.553238>,  <39.853443, 37.251701, 36.688549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502312, 37.116066, 36.553238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470044, -0.474114, -0.744496,
		0.092069, -0.812547, 0.575579,
		-0.877828, -0.339093, -0.338281,
		39.238964, 37.014339, 36.451752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025524, 36.609692, 36.353016>,  <39.853443, 37.251701, 36.688549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025524, 36.609692, 36.353016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663368, 36.734928, 36.238304>,  <39.446075, 36.810070, 36.169479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663368, 36.734928, 36.238304>,  <40.025524, 36.609692, 36.353016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663368, 36.734928, 36.238304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236190, -0.189866, -0.952977,
		-0.352821, -0.930550, 0.097954,
		-0.905391, 0.313094, -0.286775,
		39.391750, 36.828857, 36.152271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617371, 36.074036, 36.010853>,  <40.025524, 36.609692, 36.353016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617371, 36.074036, 36.010853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506546, 36.432907, 35.873268>,  <39.440052, 36.648228, 35.790718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506546, 36.432907, 35.873268>,  <39.617371, 36.074036, 36.010853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506546, 36.432907, 35.873268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073132, -0.337251, -0.938570,
		-0.958064, -0.285199, 0.027827,
		-0.277064, 0.897175, -0.343965,
		39.423428, 36.702061, 35.770077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369251, 35.601917, 35.403851>,  <39.617371, 36.074036, 36.010853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369251, 35.601917, 35.403851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705231, 35.399136, 35.326412>,  <39.906818, 35.277466, 35.279949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705231, 35.399136, 35.326412>,  <39.369251, 35.601917, 35.403851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705231, 35.399136, 35.326412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253997, 0.682535, -0.685296,
		0.479554, 0.526440, 0.702060,
		0.839948, -0.506958, -0.193598,
		39.957214, 35.247047, 35.268333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014751, 36.036526, 35.293663>,  <39.369251, 35.601917, 35.403851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014751, 36.036526, 35.293663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069077, 35.685562, 35.109612>,  <40.101673, 35.474983, 34.999180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069077, 35.685562, 35.109612>,  <40.014751, 36.036526, 35.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069077, 35.685562, 35.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266910, 0.479661, -0.835873,
		0.954103, -0.009288, 0.299333,
		0.135815, -0.877405, -0.460126,
		40.109821, 35.422340, 34.971573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730789, 36.179741, 34.974689>,  <40.014751, 36.036526, 35.293663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730789, 36.179741, 34.974689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530434, 35.910000, 34.757671>,  <40.410221, 35.748154, 34.627460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530434, 35.910000, 34.757671>,  <40.730789, 36.179741, 34.974689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530434, 35.910000, 34.757671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036377, 0.609893, -0.791648,
		0.864748, -0.416262, -0.280956,
		-0.500886, -0.674356, -0.542546,
		40.380169, 35.707691, 34.594906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126633, 35.916218, 34.486237>,  <40.730789, 36.179741, 34.974689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126633, 35.916218, 34.486237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745949, 35.887497, 34.366840>,  <40.517540, 35.870262, 34.295200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745949, 35.887497, 34.366840>,  <41.126633, 35.916218, 34.486237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745949, 35.887497, 34.366840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245611, 0.405264, -0.880589,
		0.184197, -0.911376, -0.368057,
		-0.951707, -0.071803, -0.298492,
		40.460438, 35.865955, 34.277294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088779, 35.505360, 33.824951>,  <41.126633, 35.916218, 34.486237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088779, 35.505360, 33.824951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789276, 35.769741, 33.844963>,  <40.609573, 35.928371, 33.856972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789276, 35.769741, 33.844963>,  <41.088779, 35.505360, 33.824951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789276, 35.769741, 33.844963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337989, 0.445634, -0.828960,
		-0.570202, -0.603777, -0.557066,
		-0.748754, 0.660957, 0.050032,
		40.564651, 35.968029, 33.859974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753410, 35.228306, 33.685329>,  <41.088779, 35.505360, 33.824951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753410, 35.228306, 33.685329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116737, 35.144920, 33.830383>,  <42.334732, 35.094891, 33.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116737, 35.144920, 33.830383>,  <41.753410, 35.228306, 33.685329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116737, 35.144920, 33.830383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334322, 0.159199, 0.928916,
		-0.251373, -0.964987, 0.074910,
		0.908317, -0.208461, 0.362634,
		42.389233, 35.082382, 33.939175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770298, 34.817032, 34.397545>,  <41.753410, 35.228306, 33.685329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770298, 34.817032, 34.397545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103329, 35.035946, 34.363369>,  <42.303146, 35.167294, 34.342865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103329, 35.035946, 34.363369>,  <41.770298, 34.817032, 34.397545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103329, 35.035946, 34.363369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014229, 0.175326, 0.984408,
		0.553728, -0.818379, 0.153759,
		0.832576, 0.547282, -0.085438,
		42.353100, 35.200130, 34.337738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173710, 34.530388, 34.958572>,  <41.770298, 34.817032, 34.397545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173710, 34.530388, 34.958572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368916, 34.872334, 34.888084>,  <42.486038, 35.077499, 34.845791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368916, 34.872334, 34.888084>,  <42.173710, 34.530388, 34.958572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368916, 34.872334, 34.888084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085919, 0.247957, 0.964953,
		0.868598, -0.455769, 0.194455,
		0.488013, 0.854863, -0.176216,
		42.515320, 35.128792, 34.835220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686634, 34.625381, 35.474796>,  <42.173710, 34.530388, 34.958572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686634, 34.625381, 35.474796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610260, 34.999325, 35.355076>,  <42.564438, 35.223690, 35.283241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610260, 34.999325, 35.355076>,  <42.686634, 34.625381, 35.474796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610260, 34.999325, 35.355076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187828, 0.264484, 0.945922,
		0.963466, 0.236824, 0.125094,
		-0.190932, 0.934860, -0.299303,
		42.552982, 35.279781, 35.265285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020592, 34.933079, 36.013859>,  <42.686634, 34.625381, 35.474796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020592, 34.933079, 36.013859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808247, 35.230240, 35.850750>,  <42.680840, 35.408535, 35.752884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808247, 35.230240, 35.850750>,  <43.020592, 34.933079, 36.013859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808247, 35.230240, 35.850750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118789, 0.541653, 0.832166,
		0.839092, 0.393326, -0.375792,
		-0.530861, 0.742904, -0.407774,
		42.648987, 35.453110, 35.728416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318672, 35.464264, 36.196190>,  <43.020592, 34.933079, 36.013859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318672, 35.464264, 36.196190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956604, 35.607964, 36.105316>,  <42.739365, 35.694183, 36.050793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956604, 35.607964, 36.105316>,  <43.318672, 35.464264, 36.196190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956604, 35.607964, 36.105316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038230, 0.601124, 0.798241,
		0.423329, 0.713858, -0.557852,
		-0.905169, 0.359246, -0.227182,
		42.685055, 35.715736, 36.037163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437222, 36.196716, 36.392944>,  <43.318672, 35.464264, 36.196190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437222, 36.196716, 36.392944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050880, 36.094398, 36.376446>,  <42.819077, 36.033009, 36.366547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050880, 36.094398, 36.376446>,  <43.437222, 36.196716, 36.392944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050880, 36.094398, 36.376446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129450, 0.338505, 0.932018,
		-0.224442, 0.905530, -0.360058,
		-0.965851, -0.255793, -0.041246,
		42.761124, 36.017662, 36.364071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122334, 36.705177, 36.774300>,  <43.437222, 36.196716, 36.392944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122334, 36.705177, 36.774300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844303, 36.417629, 36.778095>,  <42.677483, 36.245102, 36.780373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844303, 36.417629, 36.778095>,  <43.122334, 36.705177, 36.774300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844303, 36.417629, 36.778095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187645, 0.194150, 0.962858,
		-0.694014, 0.667480, -0.269842,
		-0.695078, -0.718872, 0.009494,
		42.635780, 36.201969, 36.780945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498646, 36.943542, 37.192482>,  <43.122334, 36.705177, 36.774300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498646, 36.943542, 37.192482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436466, 36.548939, 37.171940>,  <42.399158, 36.312176, 37.159615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436466, 36.548939, 37.171940>,  <42.498646, 36.943542, 37.192482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436466, 36.548939, 37.171940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405282, 0.016280, 0.914047,
		-0.900878, 0.162905, -0.402344,
		-0.155453, -0.986508, -0.051356,
		42.389832, 36.252987, 37.156532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712688, 36.770981, 37.323017>,  <42.498646, 36.943542, 37.192482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712688, 36.770981, 37.323017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951958, 36.464764, 37.417797>,  <42.095520, 36.281036, 37.474667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951958, 36.464764, 37.417797>,  <41.712688, 36.770981, 37.323017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951958, 36.464764, 37.417797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523628, -0.149549, 0.838718,
		-0.606636, -0.625768, -0.490313,
		0.598169, -0.765538, 0.236948,
		42.131409, 36.235104, 37.488880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242851, 36.275040, 37.788666>,  <41.712688, 36.770981, 37.323017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242851, 36.275040, 37.788666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637726, 36.221703, 37.823750>,  <41.874649, 36.189701, 37.844799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637726, 36.221703, 37.823750>,  <41.242851, 36.275040, 37.788666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637726, 36.221703, 37.823750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102827, -0.111098, 0.988476,
		-0.122071, -0.984822, -0.123386,
		0.987180, -0.133352, 0.087705,
		41.933880, 36.181702, 37.850060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332260, 35.705090, 38.287514>,  <41.242851, 36.275040, 37.788666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332260, 35.705090, 38.287514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695271, 35.873089, 38.287636>,  <41.913078, 35.973888, 38.287708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695271, 35.873089, 38.287636>,  <41.332260, 35.705090, 38.287514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695271, 35.873089, 38.287636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078176, -0.169642, 0.982400,
		0.412655, -0.891530, -0.186789,
		0.907527, 0.419995, 0.000308,
		41.967529, 35.999088, 38.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628189, 35.290398, 38.875214>,  <41.332260, 35.705090, 38.287514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628189, 35.290398, 38.875214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857121, 35.609699, 38.800133>,  <41.994480, 35.801281, 38.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857121, 35.609699, 38.800133>,  <41.628189, 35.290398, 38.875214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857121, 35.609699, 38.800133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045894, 0.259725, 0.964592,
		0.818742, -0.543444, 0.185282,
		0.572324, 0.798255, -0.187707,
		42.028816, 35.849174, 38.743820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222141, 35.201756, 39.346710>,  <41.628189, 35.290398, 38.875214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222141, 35.201756, 39.346710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219765, 35.582279, 39.223434>,  <42.218338, 35.810593, 39.149471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219765, 35.582279, 39.223434>,  <42.222141, 35.201756, 39.346710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219765, 35.582279, 39.223434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236555, 0.300783, 0.923889,
		0.971600, -0.067410, -0.226824,
		-0.005945, 0.951307, -0.308186,
		42.217979, 35.867672, 39.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872520, 35.599613, 39.634453>,  <42.222141, 35.201756, 39.346710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872520, 35.599613, 39.634453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579700, 35.861164, 39.557995>,  <42.404007, 36.018097, 39.512119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579700, 35.861164, 39.557995>,  <42.872520, 35.599613, 39.634453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579700, 35.861164, 39.557995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091771, 0.372679, 0.923411,
		0.675038, 0.658445, -0.332828,
		-0.732053, 0.653881, -0.191147,
		42.360085, 36.057327, 39.500652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178783, 36.422684, 39.812489>,  <42.872520, 35.599613, 39.634453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178783, 36.422684, 39.812489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779629, 36.401466, 39.827518>,  <42.540134, 36.388737, 39.836536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779629, 36.401466, 39.827518>,  <43.178783, 36.422684, 39.812489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779629, 36.401466, 39.827518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004110, 0.525365, 0.850867,
		-0.064869, 0.849222, -0.524036,
		-0.997885, -0.053041, 0.037571,
		42.480263, 36.385555, 39.838791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928299, 37.108501, 39.933933>,  <43.178783, 36.422684, 39.812489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928299, 37.108501, 39.933933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610836, 36.879696, 40.016792>,  <42.420357, 36.742413, 40.066509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610836, 36.879696, 40.016792>,  <42.928299, 37.108501, 39.933933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610836, 36.879696, 40.016792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247273, 0.614415, 0.749233,
		-0.555844, 0.543413, -0.629078,
		-0.793658, -0.572011, 0.207147,
		42.372738, 36.708092, 40.078938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457237, 37.521473, 40.042336>,  <42.928299, 37.108501, 39.933933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457237, 37.521473, 40.042336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325260, 37.213535, 40.260868>,  <42.246075, 37.028774, 40.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325260, 37.213535, 40.260868>,  <42.457237, 37.521473, 40.042336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325260, 37.213535, 40.260868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359612, 0.637603, 0.681280,
		-0.872822, 0.028316, -0.487216,
		-0.329941, -0.769845, 0.546331,
		42.226276, 36.982582, 40.424767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843731, 37.809368, 40.422394>,  <42.457237, 37.521473, 40.042336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843731, 37.809368, 40.422394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922024, 37.459541, 40.599850>,  <41.968998, 37.249645, 40.706322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922024, 37.459541, 40.599850>,  <41.843731, 37.809368, 40.422394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922024, 37.459541, 40.599850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185757, 0.411135, 0.892448,
		-0.962903, -0.257091, -0.081984,
		0.195734, -0.874570, 0.443639,
		41.980743, 37.197170, 40.732941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394409, 37.740925, 41.009926>,  <41.843731, 37.809368, 40.422394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394409, 37.740925, 41.009926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658417, 37.459045, 41.114059>,  <41.816822, 37.289917, 41.176540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658417, 37.459045, 41.114059>,  <41.394409, 37.740925, 41.009926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658417, 37.459045, 41.114059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052713, 0.302235, 0.951775,
		-0.749394, -0.641915, 0.162335,
		0.660022, -0.704698, 0.260331,
		41.856422, 37.247635, 41.192158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097958, 37.455864, 41.625988>,  <41.394409, 37.740925, 41.009926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097958, 37.455864, 41.625988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490322, 37.378128, 41.628513>,  <41.725742, 37.331486, 41.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490322, 37.378128, 41.628513>,  <41.097958, 37.455864, 41.625988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490322, 37.378128, 41.628513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066592, 0.366255, 0.928129,
		-0.182688, -0.909993, 0.372206,
		0.980913, -0.194344, 0.006312,
		41.784595, 37.319824, 41.630405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224167, 37.039940, 42.323906>,  <41.097958, 37.455864, 41.625988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224167, 37.039940, 42.323906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556423, 37.225136, 42.200180>,  <41.755775, 37.336254, 42.125946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556423, 37.225136, 42.200180>,  <41.224167, 37.039940, 42.323906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556423, 37.225136, 42.200180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211229, 0.251972, 0.944401,
		0.515191, -0.849792, 0.111500,
		0.830639, 0.462995, -0.309314,
		41.805614, 37.364033, 42.107388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853985, 36.803516, 42.724483>,  <41.224167, 37.039940, 42.323906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853985, 36.803516, 42.724483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898937, 37.173439, 42.579102>,  <41.925907, 37.395393, 42.491875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898937, 37.173439, 42.579102>,  <41.853985, 36.803516, 42.724483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898937, 37.173439, 42.579102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180816, 0.340629, 0.922647,
		0.977076, -0.169403, -0.128941,
		0.112379, 0.924810, -0.363451,
		41.932652, 37.450882, 42.470066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571720, 36.852772, 42.622841>,  <41.853985, 36.803516, 42.724483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571720, 36.852772, 42.622841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346889, 37.160492, 42.744324>,  <42.211990, 37.345123, 42.817215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346889, 37.160492, 42.744324>,  <42.571720, 36.852772, 42.622841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346889, 37.160492, 42.744324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479704, 0.004100, 0.877421,
		0.673757, 0.638871, -0.371343,
		-0.562081, 0.769303, 0.303707,
		42.178265, 37.391281, 42.835434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661522, 36.304962, 43.104828>,  <42.571720, 36.852772, 42.622841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661522, 36.304962, 43.104828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678047, 36.313381, 42.705257>,  <42.687962, 36.318432, 42.465515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678047, 36.313381, 42.705257>,  <42.661522, 36.304962, 43.104828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678047, 36.313381, 42.705257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844557, 0.533471, 0.046165,
		0.533869, -0.845556, 0.004267,
		0.041312, 0.021042, -0.998925,
		42.690441, 36.319695, 42.405579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137672, 36.938087, 43.294544>,  <42.661522, 36.304962, 43.104828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137672, 36.938087, 43.294544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284714, 37.231251, 43.523529>,  <43.372936, 37.407150, 43.660919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284714, 37.231251, 43.523529>,  <43.137672, 36.938087, 43.294544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284714, 37.231251, 43.523529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837007, -0.007547, 0.547140,
		0.405325, -0.680284, 0.610677,
		0.367601, 0.732910, 0.572462,
		43.394993, 37.451122, 43.695267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145515, 36.754951, 44.046497>,  <43.137672, 36.938087, 43.294544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145515, 36.754951, 44.046497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082386, 37.148724, 44.015556>,  <43.044510, 37.384987, 43.996994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082386, 37.148724, 44.015556>,  <43.145515, 36.754951, 44.046497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082386, 37.148724, 44.015556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898001, -0.110503, 0.425891,
		0.410714, 0.136675, 0.901462,
		-0.157823, 0.984434, -0.077350,
		43.035038, 37.444054, 43.992352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587116, 36.474380, 44.348412>,  <43.145515, 36.754951, 44.046497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587116, 36.474380, 44.348412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976582, 36.518070, 44.428459>,  <44.210262, 36.544285, 44.476486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976582, 36.518070, 44.428459>,  <43.587116, 36.474380, 44.348412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976582, 36.518070, 44.428459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226603, -0.560152, -0.796794,
		0.025064, 0.821157, -0.570152,
		0.973665, 0.109227, 0.200116,
		44.268681, 36.550838, 44.488495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966843, 36.765057, 43.789783>,  <43.587116, 36.474380, 44.348412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966843, 36.765057, 43.789783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166458, 36.511631, 44.026279>,  <44.286228, 36.359577, 44.168179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166458, 36.511631, 44.026279>,  <43.966843, 36.765057, 43.789783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166458, 36.511631, 44.026279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164170, -0.600794, -0.782365,
		0.850889, 0.487492, -0.195806,
		0.499036, -0.633560, 0.591240,
		44.316170, 36.321564, 44.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566216, 36.687393, 43.475887>,  <43.966843, 36.765057, 43.789783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566216, 36.687393, 43.475887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429352, 36.364300, 43.667927>,  <44.347233, 36.170444, 43.783150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429352, 36.364300, 43.667927>,  <44.566216, 36.687393, 43.475887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429352, 36.364300, 43.667927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179693, -0.557756, -0.810320,
		0.922299, -0.190991, 0.335987,
		-0.342163, -0.807732, 0.480098,
		44.326702, 36.121979, 43.811954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099098, 36.150703, 43.519817>,  <44.566216, 36.687393, 43.475887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099098, 36.150703, 43.519817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712627, 36.053844, 43.484341>,  <44.480743, 35.995728, 43.463055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712627, 36.053844, 43.484341>,  <45.099098, 36.150703, 43.519817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712627, 36.053844, 43.484341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168045, -0.330307, -0.928794,
		0.195612, -0.912283, 0.359827,
		-0.966177, -0.242151, -0.088692,
		44.422775, 35.981201, 43.457733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041283, 35.405102, 43.364864>,  <45.099098, 36.150703, 43.519817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041283, 35.405102, 43.364864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720509, 35.608051, 43.238705>,  <44.528046, 35.729820, 43.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720509, 35.608051, 43.238705>,  <45.041283, 35.405102, 43.364864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720509, 35.608051, 43.238705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126517, -0.371738, -0.919676,
		-0.583864, -0.777422, 0.233918,
		-0.801933, 0.507371, -0.315401,
		44.479927, 35.760262, 43.144085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662251, 35.046829, 42.816643>,  <45.041283, 35.405102, 43.364864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662251, 35.046829, 42.816643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582291, 35.426250, 42.718433>,  <44.534313, 35.653904, 42.659508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582291, 35.426250, 42.718433>,  <44.662251, 35.046829, 42.816643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582291, 35.426250, 42.718433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133411, -0.221900, -0.965900,
		-0.970691, -0.225840, -0.082190,
		-0.199901, 0.948555, -0.245526,
		44.522320, 35.710815, 42.644775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175533, 35.075970, 42.194874>,  <44.662251, 35.046829, 42.816643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175533, 35.075970, 42.194874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321846, 35.447899, 42.178703>,  <44.409634, 35.671055, 42.169003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321846, 35.447899, 42.178703>,  <44.175533, 35.075970, 42.194874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321846, 35.447899, 42.178703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103744, -0.083897, -0.991059,
		-0.924901, 0.358317, -0.127151,
		0.365781, 0.929823, -0.040423,
		44.431580, 35.726845, 42.166576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801983, 35.520901, 41.656403>,  <44.175533, 35.075970, 42.194874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801983, 35.520901, 41.656403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149029, 35.710911, 41.715179>,  <44.357258, 35.824917, 41.750446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149029, 35.710911, 41.715179>,  <43.801983, 35.520901, 41.656403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149029, 35.710911, 41.715179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090430, 0.139844, -0.986035,
		-0.488942, 0.868788, 0.078374,
		0.867616, 0.475027, 0.146940,
		44.409313, 35.853420, 41.759262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785511, 36.148506, 41.173153>,  <43.801983, 35.520901, 41.656403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785511, 36.148506, 41.173153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160835, 36.062820, 41.281731>,  <44.386028, 36.011410, 41.346878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160835, 36.062820, 41.281731>,  <43.785511, 36.148506, 41.173153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160835, 36.062820, 41.281731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312050, 0.186341, -0.931612,
		0.148985, 0.958847, 0.241692,
		0.938311, -0.214216, 0.271446,
		44.442329, 35.998554, 41.363163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141376, 36.755299, 40.947563>,  <43.785511, 36.148506, 41.173153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141376, 36.755299, 40.947563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401405, 36.453068, 40.979832>,  <44.557423, 36.271729, 40.999191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401405, 36.453068, 40.979832>,  <44.141376, 36.755299, 40.947563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401405, 36.453068, 40.979832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232287, 0.096524, -0.967846,
		0.723495, 0.647911, 0.238258,
		0.650075, -0.755576, 0.080667,
		44.596428, 36.226395, 41.004032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527859, 36.876316, 40.318344>,  <44.141376, 36.755299, 40.947563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527859, 36.876316, 40.318344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655972, 36.528286, 40.468216>,  <44.732838, 36.319466, 40.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655972, 36.528286, 40.468216>,  <44.527859, 36.876316, 40.318344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655972, 36.528286, 40.468216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298021, -0.282890, -0.911678,
		0.899225, 0.403653, 0.168698,
		0.320278, -0.870079, 0.374679,
		44.752056, 36.267262, 40.580620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184273, 36.784286, 40.137047>,  <44.527859, 36.876316, 40.318344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184273, 36.784286, 40.137047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089417, 36.398720, 40.185436>,  <45.032501, 36.167381, 40.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089417, 36.398720, 40.185436>,  <45.184273, 36.784286, 40.137047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089417, 36.398720, 40.185436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278232, -0.186701, -0.942194,
		0.930779, -0.189778, 0.312467,
		-0.237145, -0.963912, 0.120975,
		45.018272, 36.109547, 40.221729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775635, 36.355762, 39.941387>,  <45.184273, 36.784286, 40.137047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775635, 36.355762, 39.941387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449249, 36.130043, 39.891159>,  <45.253418, 35.994614, 39.861023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449249, 36.130043, 39.891159>,  <45.775635, 36.355762, 39.941387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449249, 36.130043, 39.891159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222878, -0.106647, -0.968995,
		0.533408, -0.818655, 0.212790,
		-0.815966, -0.564296, -0.125574,
		45.204460, 35.960754, 39.853485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877834, 35.848015, 39.409431>,  <45.775635, 36.355762, 39.941387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877834, 35.848015, 39.409431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478840, 35.819714, 39.407578>,  <45.239445, 35.802734, 39.406467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.478840, 35.819714, 39.407578>,  <45.877834, 35.848015, 39.409431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478840, 35.819714, 39.407578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030644, -0.371273, -0.928018,
		0.063941, -0.925824, 0.372507,
		-0.997483, -0.070753, -0.004632,
		45.179596, 35.798489, 39.406189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736893, 35.285091, 39.087368>,  <45.877834, 35.848015, 39.409431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736893, 35.285091, 39.087368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384949, 35.474350, 39.069542>,  <45.173782, 35.587906, 39.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384949, 35.474350, 39.069542>,  <45.736893, 35.285091, 39.087368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384949, 35.474350, 39.069542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104474, -0.284047, -0.953101,
		-0.463614, -0.833937, 0.299352,
		-0.879856, 0.473146, -0.044563,
		45.120991, 35.616295, 39.056171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401184, 34.711254, 38.778923>,  <45.736893, 35.285091, 39.087368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401184, 34.711254, 38.778923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233212, 35.072720, 38.745338>,  <45.132427, 35.289600, 38.725189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.233212, 35.072720, 38.745338>,  <45.401184, 34.711254, 38.778923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.233212, 35.072720, 38.745338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268251, -0.211966, -0.939740,
		-0.867006, -0.372105, 0.331420,
		-0.419932, 0.903664, -0.083958,
		45.107231, 35.343819, 38.720150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791245, 34.559895, 38.490730>,  <45.401184, 34.711254, 38.778923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791245, 34.559895, 38.490730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851467, 34.947857, 38.414185>,  <44.887600, 35.180634, 38.368256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851467, 34.947857, 38.414185>,  <44.791245, 34.559895, 38.490730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851467, 34.947857, 38.414185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228479, -0.154193, -0.961261,
		-0.961837, 0.188446, 0.198388,
		0.150555, 0.969904, -0.191365,
		44.896633, 35.238827, 38.356773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226498, 34.761494, 38.062588>,  <44.791245, 34.559895, 38.490730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226498, 34.761494, 38.062588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515480, 35.030376, 37.997849>,  <44.688869, 35.191704, 37.959003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515480, 35.030376, 37.997849>,  <44.226498, 34.761494, 38.062588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515480, 35.030376, 37.997849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206406, -0.013726, -0.978370,
		-0.659885, 0.740240, 0.128830,
		0.722460, 0.672203, -0.161848,
		44.732220, 35.232037, 37.949295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968990, 35.148739, 37.480362>,  <44.226498, 34.761494, 38.062588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968990, 35.148739, 37.480362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351700, 35.263882, 37.496967>,  <44.581326, 35.332966, 37.506931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.351700, 35.263882, 37.496967>,  <43.968990, 35.148739, 37.480362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351700, 35.263882, 37.496967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029484, 0.045989, -0.998507,
		-0.289337, 0.956568, 0.035514,
		0.956773, 0.287858, 0.041510,
		44.638733, 35.350239, 37.509418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985329, 35.675430, 37.068295>,  <43.968990, 35.148739, 37.480362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985329, 35.675430, 37.068295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357735, 35.531147, 37.090572>,  <44.581177, 35.444576, 37.103939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357735, 35.531147, 37.090572>,  <43.985329, 35.675430, 37.068295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357735, 35.531147, 37.090572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053691, -0.015592, -0.998436,
		0.361009, 0.932550, 0.004850,
		0.931016, -0.360705, 0.055698,
		44.637039, 35.422935, 37.107281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277267, 36.129719, 36.651947>,  <43.985329, 35.675430, 37.068295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277267, 36.129719, 36.651947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550800, 35.839432, 36.682159>,  <44.714920, 35.665260, 36.700287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550800, 35.839432, 36.682159>,  <44.277267, 36.129719, 36.651947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550800, 35.839432, 36.682159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167464, 0.055358, -0.984323,
		0.710161, 0.685760, 0.159388,
		0.683833, -0.725719, 0.075527,
		44.755951, 35.621716, 36.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814827, 36.311897, 36.183830>,  <44.277267, 36.129719, 36.651947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814827, 36.311897, 36.183830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878387, 35.921383, 36.242630>,  <44.916523, 35.687073, 36.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878387, 35.921383, 36.242630>,  <44.814827, 36.311897, 36.183830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878387, 35.921383, 36.242630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297839, -0.094549, -0.949922,
		0.941298, 0.194725, 0.275753,
		0.158902, -0.976290, 0.146995,
		44.926060, 35.628494, 36.286728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552067, 36.185421, 36.046677>,  <44.814827, 36.311897, 36.183830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552067, 36.185421, 36.046677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374363, 35.829056, 36.008926>,  <45.267738, 35.615238, 35.986275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374363, 35.829056, 36.008926>,  <45.552067, 36.185421, 36.046677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374363, 35.829056, 36.008926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385339, -0.094916, -0.917880,
		0.808792, -0.444147, 0.385471,
		-0.444261, -0.890912, -0.094380,
		45.241085, 35.561783, 35.980614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049648, 35.782928, 35.693192>,  <45.552067, 36.185421, 36.046677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049648, 35.782928, 35.693192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713821, 35.584625, 35.604336>,  <45.512325, 35.465641, 35.551022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713821, 35.584625, 35.604336>,  <46.049648, 35.782928, 35.693192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713821, 35.584625, 35.604336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379033, -0.241621, -0.893282,
		0.389182, -0.834169, 0.390768,
		-0.839566, -0.495763, -0.222143,
		45.461952, 35.435898, 35.537693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329868, 35.026897, 35.652977>,  <46.049648, 35.782928, 35.693192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329868, 35.026897, 35.652977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022865, 35.152737, 35.429565>,  <45.838661, 35.228241, 35.295517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022865, 35.152737, 35.429565>,  <46.329868, 35.026897, 35.652977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022865, 35.152737, 35.429565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426611, -0.399664, -0.811339,
		-0.478468, -0.860987, 0.172536,
		-0.767510, 0.314594, -0.558533,
		45.792614, 35.247116, 35.262005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057934, 34.436523, 35.309689>,  <46.329868, 35.026897, 35.652977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057934, 34.436523, 35.309689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002434, 34.781803, 35.115517>,  <45.969135, 34.988972, 34.999016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002434, 34.781803, 35.115517>,  <46.057934, 34.436523, 35.309689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002434, 34.781803, 35.115517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471914, -0.373307, -0.798711,
		-0.870658, -0.339900, -0.355559,
		-0.138749, 0.863198, -0.485426,
		45.960808, 35.040764, 34.969891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944439, 34.507935, 34.480942>,  <46.057934, 34.436523, 35.309689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944439, 34.507935, 34.480942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131878, 34.709576, 34.190758>,  <46.244343, 34.830559, 34.016647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131878, 34.709576, 34.190758>,  <45.944439, 34.507935, 34.480942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131878, 34.709576, 34.190758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167439, 0.755641, 0.633223,
		0.867399, -0.418198, 0.269686,
		0.468598, 0.504101, -0.725465,
		46.272457, 34.860806, 33.973118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554329, 34.831100, 34.802418>,  <45.944439, 34.507935, 34.480942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554329, 34.831100, 34.802418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452991, 35.052086, 34.484776>,  <46.392189, 35.184677, 34.294189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452991, 35.052086, 34.484776>,  <46.554329, 34.831100, 34.802418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452991, 35.052086, 34.484776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047823, 0.827034, 0.560114,
		0.966194, 0.103924, -0.235943,
		-0.253342, 0.552463, -0.794105,
		46.376987, 35.217823, 34.246544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106136, 34.871689, 35.318058>,  <46.554329, 34.831100, 34.802418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106136, 34.871689, 35.318058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427441, 35.104397, 35.369144>,  <47.620224, 35.244022, 35.399796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427441, 35.104397, 35.369144>,  <47.106136, 34.871689, 35.318058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427441, 35.104397, 35.369144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595459, -0.779237, -0.195495,
		-0.014210, 0.233085, -0.972353,
		0.803260, 0.581774, 0.127719,
		47.668419, 35.278931, 35.407459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649841, 34.908939, 34.686661>,  <47.106136, 34.871689, 35.318058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649841, 34.908939, 34.686661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.776642, 34.914425, 35.065990>,  <47.852722, 34.917717, 35.293591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.776642, 34.914425, 35.065990>,  <47.649841, 34.908939, 34.686661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.776642, 34.914425, 35.065990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479843, -0.864799, -0.147895,
		0.818084, 0.501931, -0.280719,
		0.316999, 0.013710, 0.948327,
		47.871742, 34.918537, 35.350487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.956923, 43.225685, 40.313305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.603191, 43.064915, 40.408314>,  <31.390953, 42.968452, 40.465321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.603191, 43.064915, 40.408314>,  <31.956923, 43.225685, 40.313305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603191, 43.064915, 40.408314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003679, -0.514746, -0.857335,
		0.466849, -0.757293, 0.456683,
		-0.884329, -0.401926, 0.237523,
		31.337893, 42.944336, 40.479572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029236, 42.564888, 40.249744>,  <31.956923, 43.225685, 40.313305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029236, 42.564888, 40.249744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.630833, 42.593929, 40.228962>,  <31.391790, 42.611355, 40.216492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.630833, 42.593929, 40.228962>,  <32.029236, 42.564888, 40.249744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630833, 42.593929, 40.228962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019296, -0.743272, -0.668711,
		-0.087164, -0.665038, 0.741705,
		-0.996007, 0.072600, -0.051954,
		31.332031, 42.615707, 40.213375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699038, 41.910088, 40.353661>,  <32.029236, 42.564888, 40.249744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699038, 41.910088, 40.353661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.425152, 42.120525, 40.151913>,  <31.260820, 42.246788, 40.030865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.425152, 42.120525, 40.151913>,  <31.699038, 41.910088, 40.353661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425152, 42.120525, 40.151913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131024, -0.769629, -0.624904,
		-0.716937, -0.361796, 0.595907,
		-0.684715, 0.526095, -0.504371,
		31.219738, 42.278355, 40.000603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264341, 41.408455, 40.251965>,  <31.699038, 41.910088, 40.353661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264341, 41.408455, 40.251965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.164312, 41.693237, 39.989491>,  <31.104294, 41.864109, 39.832008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.164312, 41.693237, 39.989491>,  <31.264341, 41.408455, 40.251965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164312, 41.693237, 39.989491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033164, -0.683616, -0.729088,
		-0.967659, -0.160564, 0.194566,
		-0.250074, 0.711961, -0.656182,
		31.089291, 41.906826, 39.792637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767555, 41.118393, 39.916317>,  <31.264341, 41.408455, 40.251965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767555, 41.118393, 39.916317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.856285, 41.412106, 39.659683>,  <30.909523, 41.588333, 39.505703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.856285, 41.412106, 39.659683>,  <30.767555, 41.118393, 39.916317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856285, 41.412106, 39.659683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023077, -0.653835, -0.756285,
		-0.974813, 0.182569, -0.128092,
		0.221826, 0.734281, -0.641580,
		30.922832, 41.632389, 39.467209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226824, 41.144722, 39.320763>,  <30.767555, 41.118393, 39.916317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226824, 41.144722, 39.320763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586237, 41.284569, 39.214622>,  <30.801886, 41.368477, 39.150940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586237, 41.284569, 39.214622>,  <30.226824, 41.144722, 39.320763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586237, 41.284569, 39.214622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030119, -0.652254, -0.757402,
		-0.437873, 0.672558, -0.596602,
		0.898532, 0.349614, -0.265348,
		30.855797, 41.389454, 39.135017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218212, 41.117420, 38.652176>,  <30.226824, 41.144722, 39.320763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218212, 41.117420, 38.652176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.610798, 41.169643, 38.708294>,  <30.846350, 41.200977, 38.741966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.610798, 41.169643, 38.708294>,  <30.218212, 41.117420, 38.652176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610798, 41.169643, 38.708294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191474, -0.699364, -0.688642,
		0.008208, 0.702740, -0.711399,
		0.981463, 0.130561, 0.140297,
		30.905237, 41.208813, 38.750381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462469, 41.197411, 37.979160>,  <30.218212, 41.117420, 38.652176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462469, 41.197411, 37.979160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.792770, 41.105289, 38.185108>,  <30.990952, 41.050018, 38.308678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.792770, 41.105289, 38.185108>,  <30.462469, 41.197411, 37.979160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792770, 41.105289, 38.185108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272841, -0.635834, -0.721992,
		0.493650, 0.736665, -0.462206,
		0.825753, -0.230303, 0.514872,
		31.040497, 41.036198, 38.339569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888697, 41.076912, 37.448780>,  <30.462469, 41.197411, 37.979160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888697, 41.076912, 37.448780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.031242, 40.874218, 37.762779>,  <31.116770, 40.752602, 37.951180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.031242, 40.874218, 37.762779>,  <30.888697, 41.076912, 37.448780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031242, 40.874218, 37.762779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523709, -0.587444, -0.616959,
		0.773779, 0.630972, 0.056041,
		0.356363, -0.506739, 0.784997,
		31.138151, 40.722195, 37.998280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553152, 40.858959, 37.196854>,  <30.888697, 41.076912, 37.448780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553152, 40.858959, 37.196854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.487028, 40.647133, 37.529655>,  <31.447353, 40.520039, 37.729336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.487028, 40.647133, 37.529655>,  <31.553152, 40.858959, 37.196854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487028, 40.647133, 37.529655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453405, -0.789986, -0.412730,
		0.875841, 0.309010, 0.370697,
		-0.165308, -0.529562, 0.832008,
		31.437435, 40.488266, 37.779259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160954, 40.772491, 37.606503>,  <31.553152, 40.858959, 37.196854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160954, 40.772491, 37.606503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.915174, 40.460079, 37.651108>,  <31.767706, 40.272633, 37.677872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.915174, 40.460079, 37.651108>,  <32.160954, 40.772491, 37.606503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915174, 40.460079, 37.651108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659913, -0.586254, -0.469916,
		0.432397, -0.215150, 0.875639,
		-0.614450, -0.781035, 0.111514,
		31.730839, 40.225769, 37.684563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534199, 40.272621, 38.049217>,  <32.160954, 40.772491, 37.606503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534199, 40.272621, 38.049217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.256611, 40.065155, 37.849457>,  <32.090057, 39.940678, 37.729603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.256611, 40.065155, 37.849457>,  <32.534199, 40.272621, 38.049217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256611, 40.065155, 37.849457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703143, -0.637435, -0.315068,
		-0.154921, -0.569795, 0.807052,
		-0.693967, -0.518662, -0.499399,
		32.048420, 39.909557, 37.699638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565483, 39.524734, 38.196327>,  <32.534199, 40.272621, 38.049217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565483, 39.524734, 38.196327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.393921, 39.592342, 37.841370>,  <32.290985, 39.632908, 37.628395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.393921, 39.592342, 37.841370>,  <32.565483, 39.524734, 38.196327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393921, 39.592342, 37.841370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739639, -0.498269, -0.452396,
		-0.518628, -0.850388, 0.088693,
		-0.428905, 0.169024, -0.887396,
		32.265251, 39.643047, 37.575150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551071, 38.815205, 38.003132>,  <32.565483, 39.524734, 38.196327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551071, 38.815205, 38.003132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.484089, 39.032784, 37.674232>,  <32.443901, 39.163330, 37.476894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.484089, 39.032784, 37.674232>,  <32.551071, 38.815205, 38.003132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484089, 39.032784, 37.674232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555265, -0.637123, -0.534561,
		-0.814641, -0.546077, -0.195345,
		-0.167452, 0.543944, -0.822244,
		32.433853, 39.195965, 37.427559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414532, 38.424507, 37.445625>,  <32.551071, 38.815205, 38.003132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414532, 38.424507, 37.445625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.549477, 38.759476, 37.273617>,  <32.630444, 38.960457, 37.170414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.549477, 38.759476, 37.273617>,  <32.414532, 38.424507, 37.445625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549477, 38.759476, 37.273617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416821, -0.542459, -0.729383,
		-0.844068, 0.066822, -0.532057,
		0.337358, 0.837421, -0.430019,
		32.650684, 39.010700, 37.144611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494045, 38.170456, 36.807480>,  <32.414532, 38.424507, 37.445625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494045, 38.170456, 36.807480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.687424, 38.518505, 36.769184>,  <32.803452, 38.727333, 36.746208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.687424, 38.518505, 36.769184>,  <32.494045, 38.170456, 36.807480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687424, 38.518505, 36.769184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415243, -0.324234, -0.849968,
		-0.770617, 0.371162, -0.518062,
		0.483449, 0.870122, -0.095738,
		32.832458, 38.779541, 36.740463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668766, 38.207211, 36.141827>,  <32.494045, 38.170456, 36.807480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668766, 38.207211, 36.141827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915825, 38.489017, 36.281635>,  <33.064060, 38.658104, 36.365520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915825, 38.489017, 36.281635>,  <32.668766, 38.207211, 36.141827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915825, 38.489017, 36.281635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757233, -0.412715, -0.506226,
		-0.212396, 0.577336, -0.788398,
		0.617646, 0.704521, 0.349519,
		33.101120, 38.700375, 36.386490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967220, 38.622841, 35.568661>,  <32.668766, 38.207211, 36.141827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967220, 38.622841, 35.568661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224915, 38.663376, 35.871895>,  <33.379532, 38.687698, 36.053837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224915, 38.663376, 35.871895>,  <32.967220, 38.622841, 35.568661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224915, 38.663376, 35.871895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748030, -0.290080, -0.596913,
		0.159413, 0.951622, -0.262686,
		0.644235, 0.101341, 0.758084,
		33.418186, 38.693779, 36.099319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602310, 38.890156, 35.262691>,  <32.967220, 38.622841, 35.568661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602310, 38.890156, 35.262691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742573, 38.752937, 35.611256>,  <33.826733, 38.670605, 35.820393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742573, 38.752937, 35.611256>,  <33.602310, 38.890156, 35.262691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742573, 38.752937, 35.611256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870173, -0.224602, -0.438581,
		0.346175, 0.912070, 0.219753,
		0.350659, -0.343049, 0.871410,
		33.847771, 38.650024, 35.872677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242687, 39.184628, 35.279835>,  <33.602310, 38.890156, 35.262691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242687, 39.184628, 35.279835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.236084, 38.878544, 35.537262>,  <34.232121, 38.694893, 35.691719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.236084, 38.878544, 35.537262>,  <34.242687, 39.184628, 35.279835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236084, 38.878544, 35.537262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863836, -0.335043, -0.376210,
		0.503503, 0.549730, 0.666545,
		-0.016507, -0.765208, 0.643571,
		34.231133, 38.648983, 35.730335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964924, 39.145939, 35.695930>,  <34.242687, 39.184628, 35.279835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964924, 39.145939, 35.695930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797989, 38.783112, 35.673809>,  <34.697830, 38.565414, 35.660538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797989, 38.783112, 35.673809>,  <34.964924, 39.145939, 35.695930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797989, 38.783112, 35.673809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826538, -0.353581, -0.437967,
		0.377713, -0.228485, 0.897289,
		-0.417334, -0.907069, -0.055300,
		34.672791, 38.510990, 35.657219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510422, 38.644375, 35.985146>,  <34.964924, 39.145939, 35.695930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510422, 38.644375, 35.985146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246937, 38.496891, 35.722801>,  <35.088848, 38.408401, 35.565395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246937, 38.496891, 35.722801>,  <35.510422, 38.644375, 35.985146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246937, 38.496891, 35.722801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737165, -0.490775, -0.464465,
		-0.150627, -0.789426, 0.595078,
		-0.658710, -0.368709, -0.655861,
		35.049324, 38.386280, 35.526043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846561, 38.007107, 36.248180>,  <35.510422, 38.644375, 35.985146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846561, 38.007107, 36.248180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179230, 38.066814, 36.034248>,  <36.378830, 38.102638, 35.905888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179230, 38.066814, 36.034248>,  <35.846561, 38.007107, 36.248180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179230, 38.066814, 36.034248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141058, 0.874797, 0.463500,
		0.537059, -0.460920, 0.706484,
		0.831667, 0.149272, -0.534834,
		36.428730, 38.111595, 35.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379574, 38.285343, 36.713673>,  <35.846561, 38.007107, 36.248180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379574, 38.285343, 36.713673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518459, 38.406536, 36.358673>,  <36.601791, 38.479252, 36.145676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518459, 38.406536, 36.358673>,  <36.379574, 38.285343, 36.713673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518459, 38.406536, 36.358673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045320, 0.939846, 0.338579,
		0.936688, -0.157783, 0.312603,
		0.347221, 0.302976, -0.887492,
		36.622623, 38.497429, 36.092422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984890, 38.624733, 36.793900>,  <36.379574, 38.285343, 36.713673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984890, 38.624733, 36.793900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809738, 38.760014, 36.460701>,  <36.704647, 38.841183, 36.260780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809738, 38.760014, 36.460701>,  <36.984890, 38.624733, 36.793900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809738, 38.760014, 36.460701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202318, 0.939847, 0.275235,
		0.875974, -0.048011, -0.479962,
		-0.437877, 0.338204, -0.832996,
		36.678375, 38.861473, 36.210804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527851, 39.108997, 36.603676>,  <36.984890, 38.624733, 36.793900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527851, 39.108997, 36.603676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201641, 39.229816, 36.406219>,  <37.005913, 39.302307, 36.287746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201641, 39.229816, 36.406219>,  <37.527851, 39.108997, 36.603676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201641, 39.229816, 36.406219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143013, 0.931720, 0.333835,
		0.560768, 0.201655, -0.803041,
		-0.815528, 0.302049, -0.493640,
		36.956982, 39.320431, 36.258129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608349, 39.772770, 36.507652>,  <37.527851, 39.108997, 36.603676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608349, 39.772770, 36.507652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217484, 39.741459, 36.428642>,  <36.982964, 39.722672, 36.381237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217484, 39.741459, 36.428642>,  <37.608349, 39.772770, 36.507652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217484, 39.741459, 36.428642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144252, 0.926972, 0.346286,
		0.155999, 0.366873, -0.917098,
		-0.977167, -0.078273, -0.197529,
		36.924332, 39.717976, 36.369385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369770, 40.502647, 36.363342>,  <37.608349, 39.772770, 36.507652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369770, 40.502647, 36.363342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040405, 40.300606, 36.466774>,  <36.842785, 40.179379, 36.528831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040405, 40.300606, 36.466774>,  <37.369770, 40.502647, 36.363342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040405, 40.300606, 36.466774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304401, 0.777756, 0.549942,
		-0.478889, 0.374117, -0.794167,
		-0.823411, -0.505107, 0.258577,
		36.793381, 40.149075, 36.544346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876179, 41.020889, 36.408661>,  <37.369770, 40.502647, 36.363342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876179, 41.020889, 36.408661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.687870, 40.746880, 36.631054>,  <36.574886, 40.582474, 36.764492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.687870, 40.746880, 36.631054>,  <36.876179, 41.020889, 36.408661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687870, 40.746880, 36.631054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433381, 0.728471, 0.530577,
		-0.768476, 0.008827, -0.639818,
		-0.470772, -0.685020, 0.555987,
		36.546638, 40.541374, 36.797852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168396, 41.210018, 36.333649>,  <36.876179, 41.020889, 36.408661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168396, 41.210018, 36.333649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222248, 40.989391, 36.662926>,  <36.254559, 40.857014, 36.860493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222248, 40.989391, 36.662926>,  <36.168396, 41.210018, 36.333649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222248, 40.989391, 36.662926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519309, 0.668253, 0.532688,
		-0.843915, -0.499207, -0.196467,
		0.134632, -0.551571, 0.823191,
		36.262638, 40.823921, 36.909882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478580, 41.129280, 36.554737>,  <36.168396, 41.210018, 36.333649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478580, 41.129280, 36.554737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739807, 41.072392, 36.852268>,  <35.896542, 41.038258, 37.030788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739807, 41.072392, 36.852268>,  <35.478580, 41.129280, 36.554737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739807, 41.072392, 36.852268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608823, 0.485534, 0.627369,
		-0.450378, -0.862572, 0.230499,
		0.653066, -0.142220, 0.743828,
		35.935726, 41.029724, 37.075417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104961, 41.041866, 37.058949>,  <35.478580, 41.129280, 36.554737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104961, 41.041866, 37.058949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424538, 41.069805, 37.297886>,  <35.616283, 41.086571, 37.441250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424538, 41.069805, 37.297886>,  <35.104961, 41.041866, 37.058949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424538, 41.069805, 37.297886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560732, 0.445614, 0.697859,
		-0.217439, -0.892496, 0.395186,
		0.798937, 0.069852, 0.597344,
		35.664219, 41.090759, 37.477089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910839, 40.769833, 37.820244>,  <35.104961, 41.041866, 37.058949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910839, 40.769833, 37.820244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218491, 41.025291, 37.829803>,  <35.403084, 41.178566, 37.835541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218491, 41.025291, 37.829803>,  <34.910839, 40.769833, 37.820244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218491, 41.025291, 37.829803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477273, 0.549116, 0.686063,
		0.425027, -0.539079, 0.727149,
		0.769131, 0.638644, 0.023899,
		35.449230, 41.216885, 37.836971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964458, 40.953438, 38.556938>,  <34.910839, 40.769833, 37.820244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964458, 40.953438, 38.556938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173218, 41.227844, 38.354156>,  <35.298473, 41.392490, 38.232487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173218, 41.227844, 38.354156>,  <34.964458, 40.953438, 38.556938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173218, 41.227844, 38.354156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271766, 0.697066, 0.663507,
		0.808561, -0.208507, 0.550231,
		0.521893, 0.686020, -0.506955,
		35.329784, 41.433651, 38.202068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158897, 41.367825, 38.973019>,  <34.964458, 40.953438, 38.556938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158897, 41.367825, 38.973019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198780, 41.613525, 38.659904>,  <35.222710, 41.760944, 38.472034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198780, 41.613525, 38.659904>,  <35.158897, 41.367825, 38.973019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198780, 41.613525, 38.659904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211062, 0.781861, 0.586640,
		0.972374, 0.106723, 0.207604,
		0.099710, 0.614251, -0.782786,
		35.228695, 41.797802, 38.425068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517830, 41.960442, 39.172474>,  <35.158897, 41.367825, 38.973019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517830, 41.960442, 39.172474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277447, 42.061443, 38.869133>,  <35.133217, 42.122044, 38.687130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277447, 42.061443, 38.869133>,  <35.517830, 41.960442, 39.172474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277447, 42.061443, 38.869133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404128, 0.722587, 0.560847,
		0.689590, 0.643514, -0.332198,
		-0.600954, 0.252504, -0.758351,
		35.097160, 42.137196, 38.641628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458683, 42.827499, 39.110584>,  <35.517830, 41.960442, 39.172474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458683, 42.827499, 39.110584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150394, 42.621384, 38.960667>,  <34.965420, 42.497715, 38.870716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150394, 42.621384, 38.960667>,  <35.458683, 42.827499, 39.110584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150394, 42.621384, 38.960667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630347, 0.702472, 0.330448,
		0.093005, 0.490932, -0.866220,
		-0.770723, -0.515285, -0.374791,
		34.919178, 42.466797, 38.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061195, 43.238636, 38.582508>,  <35.458683, 42.827499, 39.110584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061195, 43.238636, 38.582508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831841, 42.952942, 38.743053>,  <34.694229, 42.781525, 38.839378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831841, 42.952942, 38.743053>,  <35.061195, 43.238636, 38.582508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831841, 42.952942, 38.743053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545611, 0.698345, 0.463275,
		-0.611177, 0.046649, -0.790118,
		-0.573386, -0.714240, 0.401360,
		34.659824, 42.738670, 38.863461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339161, 43.592316, 38.582832>,  <35.061195, 43.238636, 38.582508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339161, 43.592316, 38.582832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303375, 43.267498, 38.813511>,  <34.281906, 43.072609, 38.951920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.303375, 43.267498, 38.813511>,  <34.339161, 43.592316, 38.582832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303375, 43.267498, 38.813511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458740, 0.547542, 0.699825,
		-0.884055, -0.201947, -0.421502,
		-0.089462, -0.812044, 0.576699,
		34.276535, 43.023884, 38.986519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757450, 43.705513, 38.951733>,  <34.339161, 43.592316, 38.582832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757450, 43.705513, 38.951733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917450, 43.397308, 39.150249>,  <34.013451, 43.212383, 39.269360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917450, 43.397308, 39.150249>,  <33.757450, 43.705513, 38.951733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917450, 43.397308, 39.150249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442234, 0.312028, 0.840873,
		-0.802762, -0.555828, -0.215936,
		0.400003, -0.770515, 0.496290,
		34.037453, 43.166153, 39.299137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.148857, 43.336460, 39.428814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494194, 43.186821, 39.564278>,  <33.701397, 43.097038, 39.645554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494194, 43.186821, 39.564278>,  <33.148857, 43.336460, 39.428814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494194, 43.186821, 39.564278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270596, 0.223251, 0.936449,
		-0.425931, -0.900116, 0.091512,
		0.863343, -0.374100, 0.338657,
		33.753197, 43.074593, 39.665874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012669, 42.726238, 39.880581>,  <33.148857, 43.336460, 39.428814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012669, 42.726238, 39.880581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361305, 42.889809, 39.988739>,  <33.570488, 42.987949, 40.053635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361305, 42.889809, 39.988739>,  <33.012669, 42.726238, 39.880581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361305, 42.889809, 39.988739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370774, 0.189028, 0.909283,
		0.320719, -0.892775, 0.316375,
		0.871588, 0.408928, 0.270393,
		33.622784, 43.012486, 40.069859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112476, 42.509663, 40.576557>,  <33.012669, 42.726238, 39.880581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112476, 42.509663, 40.576557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354843, 42.824814, 40.532555>,  <33.500263, 43.013905, 40.506153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354843, 42.824814, 40.532555>,  <33.112476, 42.509663, 40.576557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354843, 42.824814, 40.532555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203393, 0.287115, 0.936053,
		0.769084, -0.544800, 0.334219,
		0.605921, 0.787882, -0.110008,
		33.536621, 43.061180, 40.499554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478703, 42.494720, 41.212452>,  <33.112476, 42.509663, 40.576557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478703, 42.494720, 41.212452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506638, 42.870396, 41.077957>,  <33.523399, 43.095798, 40.997261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506638, 42.870396, 41.077957>,  <33.478703, 42.494720, 41.212452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506638, 42.870396, 41.077957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236664, 0.343039, 0.909018,
		0.969078, 0.016093, 0.246228,
		0.069837, 0.939183, -0.336240,
		33.527588, 43.152149, 40.977085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715282, 42.859764, 41.890560>,  <33.478703, 42.494720, 41.212452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715282, 42.859764, 41.890560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578041, 43.127411, 41.626873>,  <33.495697, 43.287998, 41.468662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578041, 43.127411, 41.626873>,  <33.715282, 42.859764, 41.890560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578041, 43.127411, 41.626873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214461, 0.627476, 0.748519,
		0.914487, 0.398196, -0.071790,
		-0.343103, 0.669114, -0.659216,
		33.475109, 43.328144, 41.429108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011475, 43.585461, 42.040134>,  <33.715282, 42.859764, 41.890560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011475, 43.585461, 42.040134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685650, 43.667057, 41.822922>,  <33.490154, 43.716015, 41.692596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685650, 43.667057, 41.822922>,  <34.011475, 43.585461, 42.040134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685650, 43.667057, 41.822922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167202, 0.813831, 0.556527,
		0.555460, 0.544120, -0.628806,
		-0.814560, 0.203991, -0.543029,
		33.441280, 43.728256, 41.660011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011925, 44.244598, 42.006676>,  <34.011475, 43.585461, 42.040134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011925, 44.244598, 42.006676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641941, 44.109249, 41.937447>,  <33.419952, 44.028038, 41.895908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641941, 44.109249, 41.937447>,  <34.011925, 44.244598, 42.006676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641941, 44.109249, 41.937447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358521, 0.625681, 0.692810,
		-0.126141, 0.702871, -0.700044,
		-0.924960, -0.338372, -0.173069,
		33.364452, 44.007736, 41.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601379, 44.803738, 42.275932>,  <34.011925, 44.244598, 42.006676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601379, 44.803738, 42.275932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300137, 44.549152, 42.209305>,  <33.119392, 44.396400, 42.169331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300137, 44.549152, 42.209305>,  <33.601379, 44.803738, 42.275932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300137, 44.549152, 42.209305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546459, 0.464177, 0.697081,
		-0.366350, 0.615999, -0.697376,
		-0.753107, -0.636463, -0.166567,
		33.074203, 44.358212, 42.159336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997002, 45.156570, 42.246429>,  <33.601379, 44.803738, 42.275932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997002, 45.156570, 42.246429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900059, 44.780968, 42.344028>,  <32.841892, 44.555607, 42.402588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900059, 44.780968, 42.344028>,  <32.997002, 45.156570, 42.246429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900059, 44.780968, 42.344028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394994, 0.325209, 0.859197,
		-0.886141, 0.111851, -0.449716,
		-0.242353, -0.939004, 0.244001,
		32.827354, 44.499268, 42.417229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137592, 45.170204, 42.288326>,  <32.997002, 45.156570, 42.246429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137592, 45.170204, 42.288326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314949, 44.888802, 42.510494>,  <32.421364, 44.719959, 42.643795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314949, 44.888802, 42.510494>,  <32.137592, 45.170204, 42.288326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314949, 44.888802, 42.510494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481342, 0.335843, 0.809641,
		-0.756119, -0.626333, -0.189716,
		0.443390, -0.703503, 0.555418,
		32.447968, 44.677750, 42.677120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698645, 45.120838, 42.793526>,  <32.137592, 45.170204, 42.288326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698645, 45.120838, 42.793526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.006359, 44.916237, 42.946659>,  <32.190987, 44.793476, 43.038540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.006359, 44.916237, 42.946659>,  <31.698645, 45.120838, 42.793526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006359, 44.916237, 42.946659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345336, 0.171238, 0.922725,
		-0.537532, -0.842047, -0.044909,
		0.769287, -0.511502, 0.382835,
		32.237144, 44.762787, 43.061508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412104, 44.799225, 43.382652>,  <31.698645, 45.120838, 42.793526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412104, 44.799225, 43.382652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807261, 44.797825, 43.444698>,  <32.044353, 44.796986, 43.481926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807261, 44.797825, 43.444698>,  <31.412104, 44.799225, 43.382652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807261, 44.797825, 43.444698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140012, 0.410630, 0.900988,
		-0.066851, -0.911795, 0.405166,
		0.987891, -0.003504, 0.155113,
		32.103626, 44.796772, 43.491234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385294, 44.645119, 44.078259>,  <31.412104, 44.799225, 43.382652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385294, 44.645119, 44.078259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742336, 44.813923, 44.014805>,  <31.956562, 44.915207, 43.976734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742336, 44.813923, 44.014805>,  <31.385294, 44.645119, 44.078259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742336, 44.813923, 44.014805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087431, 0.507211, 0.857376,
		0.442280, -0.751429, 0.489636,
		0.892606, 0.422009, -0.158631,
		32.010117, 44.940525, 43.967216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843084, 44.608475, 44.661251>,  <31.385294, 44.645119, 44.078259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843084, 44.608475, 44.661251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996038, 44.911362, 44.449436>,  <32.087811, 45.093094, 44.322350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996038, 44.911362, 44.449436>,  <31.843084, 44.608475, 44.661251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996038, 44.911362, 44.449436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032680, 0.583811, 0.811231,
		0.923426, -0.292897, 0.247985,
		0.382383, 0.757216, -0.529535,
		32.110752, 45.138527, 44.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360115, 44.832550, 45.112350>,  <31.843084, 44.608475, 44.661251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360115, 44.832550, 45.112350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316601, 45.148685, 44.871178>,  <32.290493, 45.338367, 44.726475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316601, 45.148685, 44.871178>,  <32.360115, 44.832550, 45.112350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316601, 45.148685, 44.871178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185903, 0.612006, 0.768693,
		0.976527, -0.028461, -0.213507,
		-0.108790, 0.790341, -0.602931,
		32.283962, 45.385788, 44.690300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845444, 45.392315, 45.343773>,  <32.360115, 44.832550, 45.112350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845444, 45.392315, 45.343773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565708, 45.593540, 45.140659>,  <32.397865, 45.714275, 45.018791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565708, 45.593540, 45.140659>,  <32.845444, 45.392315, 45.343773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565708, 45.593540, 45.140659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050474, 0.673874, 0.737120,
		0.713001, 0.541130, -0.445878,
		-0.699343, 0.503062, -0.507786,
		32.355904, 45.744457, 44.988323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020935, 46.081356, 45.434738>,  <32.845444, 45.392315, 45.343773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020935, 46.081356, 45.434738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631500, 46.049831, 45.349033>,  <32.397839, 46.030914, 45.297611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631500, 46.049831, 45.349033>,  <33.020935, 46.081356, 45.434738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631500, 46.049831, 45.349033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212232, 0.658310, 0.722208,
		0.084132, 0.748609, -0.657652,
		-0.973591, -0.078814, -0.214264,
		32.339424, 46.026188, 45.284756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953060, 46.719017, 45.436218>,  <33.020935, 46.081356, 45.434738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953060, 46.719017, 45.436218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590546, 46.553066, 45.468510>,  <32.373035, 46.453495, 45.487885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590546, 46.553066, 45.468510>,  <32.953060, 46.719017, 45.436218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590546, 46.553066, 45.468510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235452, 0.654203, 0.718736,
		-0.350998, 0.632376, -0.690580,
		-0.906291, -0.414873, 0.080730,
		32.318657, 46.428604, 45.492729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592587, 47.330349, 45.429077>,  <32.953060, 46.719017, 45.436218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592587, 47.330349, 45.429077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383141, 47.026829, 45.584023>,  <32.257473, 46.844715, 45.676991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383141, 47.026829, 45.584023>,  <32.592587, 47.330349, 45.429077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383141, 47.026829, 45.584023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335517, 0.601591, 0.724926,
		-0.783106, 0.249616, -0.569593,
		-0.523615, -0.758802, 0.387359,
		32.226055, 46.799187, 45.700230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792446, 47.454559, 45.461761>,  <32.592587, 47.330349, 45.429077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792446, 47.454559, 45.461761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870895, 47.177219, 45.739120>,  <31.917965, 47.010815, 45.905537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870895, 47.177219, 45.739120>,  <31.792446, 47.454559, 45.461761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870895, 47.177219, 45.739120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436361, 0.571549, 0.694925,
		-0.878137, -0.438864, -0.190456,
		0.196123, -0.693347, 0.693402,
		31.929731, 46.969215, 45.947140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320425, 47.604446, 45.893280>,  <31.792446, 47.454559, 45.461761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320425, 47.604446, 45.893280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544945, 47.372562, 46.129543>,  <31.679657, 47.233433, 46.271301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.544945, 47.372562, 46.129543>,  <31.320425, 47.604446, 45.893280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544945, 47.372562, 46.129543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275483, 0.542117, 0.793863,
		-0.780418, -0.608310, 0.144588,
		0.561298, -0.579713, 0.590657,
		31.713335, 47.198647, 46.306740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881447, 47.372284, 46.363258>,  <31.320425, 47.604446, 45.893280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881447, 47.372284, 46.363258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247145, 47.317879, 46.515919>,  <31.466564, 47.285236, 46.607513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247145, 47.317879, 46.515919>,  <30.881447, 47.372284, 46.363258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247145, 47.317879, 46.515919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286331, 0.449544, 0.846123,
		-0.286654, -0.882842, 0.372048,
		0.914245, -0.136015, 0.381648,
		31.521418, 47.277073, 46.630413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917030, 47.115334, 47.118744>,  <30.881447, 47.372284, 46.363258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917030, 47.115334, 47.118744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.231319, 47.334167, 47.003273>,  <31.419893, 47.465469, 46.933990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.231319, 47.334167, 47.003273>,  <30.917030, 47.115334, 47.118744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231319, 47.334167, 47.003273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173708, 0.643040, 0.745872,
		0.593682, -0.535907, 0.600287,
		0.785727, 0.547086, -0.288670,
		31.467037, 47.498295, 46.916672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090363, 46.360188, 47.168716>,  <30.917030, 47.115334, 47.118744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090363, 46.360188, 47.168716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966444, 46.451603, 46.799545>,  <30.892092, 46.506451, 46.578041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966444, 46.451603, 46.799545>,  <31.090363, 46.360188, 47.168716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966444, 46.451603, 46.799545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065577, -0.973508, -0.219047,
		-0.948538, -0.007338, 0.316579,
		-0.309800, 0.228535, -0.922928,
		30.873505, 46.520164, 46.522667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547964, 46.079540, 47.561798>,  <31.090363, 46.360188, 47.168716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547964, 46.079540, 47.561798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150745, 46.033382, 47.552456>,  <29.912415, 46.005688, 47.546852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150745, 46.033382, 47.552456>,  <30.547964, 46.079540, 47.561798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150745, 46.033382, 47.552456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099858, -0.720434, -0.686297,
		0.062374, -0.683856, 0.726947,
		-0.993045, -0.115398, -0.023352,
		29.852833, 45.998764, 47.545448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514997, 45.404938, 47.728607>,  <30.547964, 46.079540, 47.561798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514997, 45.404938, 47.728607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200031, 45.525948, 47.513779>,  <30.011051, 45.598553, 47.384880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200031, 45.525948, 47.513779>,  <30.514997, 45.404938, 47.728607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200031, 45.525948, 47.513779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194942, -0.704349, -0.682562,
		-0.584782, -0.642160, 0.495642,
		-0.787419, 0.302528, -0.537074,
		29.963806, 45.616707, 47.352657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223499, 44.835876, 47.602669>,  <30.514997, 45.404938, 47.728607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223499, 44.835876, 47.602669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032423, 45.062126, 47.333778>,  <29.917778, 45.197876, 47.172443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032423, 45.062126, 47.333778>,  <30.223499, 44.835876, 47.602669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032423, 45.062126, 47.333778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073185, -0.736891, -0.672038,
		-0.875475, -0.370223, 0.310610,
		-0.477690, 0.565621, -0.672224,
		29.889116, 45.231812, 47.132111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727034, 44.382683, 47.278286>,  <30.223499, 44.835876, 47.602669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727034, 44.382683, 47.278286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749088, 44.704567, 47.041843>,  <29.762321, 44.897697, 46.899979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749088, 44.704567, 47.041843>,  <29.727034, 44.382683, 47.278286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749088, 44.704567, 47.041843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096434, -0.584945, -0.805320,
		-0.993811, 0.101406, 0.045349,
		0.055138, 0.804709, -0.591103,
		29.765629, 44.945980, 46.864513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208054, 44.340412, 46.784775>,  <29.727034, 44.382683, 47.278286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208054, 44.340412, 46.784775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484074, 44.586685, 46.632580>,  <29.649685, 44.734447, 46.541264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484074, 44.586685, 46.632580>,  <29.208054, 44.340412, 46.784775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484074, 44.586685, 46.632580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024925, -0.505178, -0.862655,
		-0.723332, 0.604759, -0.333253,
		0.690051, 0.615680, -0.380484,
		29.691090, 44.771389, 46.518433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898043, 44.588627, 46.113857>,  <29.208054, 44.340412, 46.784775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898043, 44.588627, 46.113857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294405, 44.637939, 46.092293>,  <29.532223, 44.667526, 46.079353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294405, 44.637939, 46.092293>,  <28.898043, 44.588627, 46.113857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294405, 44.637939, 46.092293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023733, -0.554509, -0.831839,
		-0.132449, 0.822995, -0.552392,
		0.990906, 0.123286, -0.053912,
		29.591677, 44.674927, 46.076118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966274, 44.808384, 45.506180>,  <28.898043, 44.588627, 46.113857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966274, 44.808384, 45.506180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320124, 44.661823, 45.621555>,  <29.532433, 44.573887, 45.690781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320124, 44.661823, 45.621555>,  <28.966274, 44.808384, 45.506180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320124, 44.661823, 45.621555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101440, -0.452533, -0.885959,
		0.455142, 0.812998, -0.363153,
		0.884622, -0.366399, 0.288437,
		29.585510, 44.551903, 45.708088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361263, 44.901226, 44.947514>,  <28.966274, 44.808384, 45.506180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361263, 44.901226, 44.947514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.588610, 44.631905, 45.136665>,  <29.725018, 44.470310, 45.250156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.588610, 44.631905, 45.136665>,  <29.361263, 44.901226, 44.947514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588610, 44.631905, 45.136665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278915, -0.383040, -0.880617,
		0.774057, 0.632408, -0.029913,
		0.568368, -0.673305, 0.472883,
		29.759119, 44.429913, 45.278530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082710, 44.944477, 44.570103>,  <29.361263, 44.901226, 44.947514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082710, 44.944477, 44.570103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.076694, 44.595276, 44.765095>,  <30.073086, 44.385754, 44.882088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.076694, 44.595276, 44.765095>,  <30.082710, 44.944477, 44.570103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076694, 44.595276, 44.765095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537680, -0.418105, -0.732181,
		0.843015, 0.251096, 0.475686,
		-0.015039, -0.873006, 0.487478,
		30.072184, 44.333374, 44.911339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705975, 44.608044, 44.411995>,  <30.082710, 44.944477, 44.570103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705975, 44.608044, 44.411995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482702, 44.302017, 44.540440>,  <30.348740, 44.118401, 44.617508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482702, 44.302017, 44.540440>,  <30.705975, 44.608044, 44.411995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482702, 44.302017, 44.540440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452055, -0.604943, -0.655507,
		0.695760, -0.220729, 0.683517,
		-0.558179, -0.765063, 0.321114,
		30.315248, 44.072498, 44.636772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173832, 44.010178, 44.401993>,  <30.705975, 44.608044, 44.411995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173832, 44.010178, 44.401993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799557, 43.869160, 44.396290>,  <30.574991, 43.784550, 44.392868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799557, 43.869160, 44.396290>,  <31.173832, 44.010178, 44.401993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799557, 43.869160, 44.396290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264344, -0.673694, -0.690115,
		0.233689, -0.649501, 0.723559,
		-0.935688, -0.352540, -0.014257,
		30.518850, 43.763397, 44.392014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203281, 43.248260, 44.426678>,  <31.173832, 44.010178, 44.401993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203281, 43.248260, 44.426678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.861935, 43.361347, 44.251480>,  <30.657127, 43.429199, 44.146362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.861935, 43.361347, 44.251480>,  <31.203281, 43.248260, 44.426678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861935, 43.361347, 44.251480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298457, -0.423909, -0.855117,
		-0.427419, -0.860452, 0.277374,
		-0.853368, 0.282709, -0.437994,
		30.605925, 43.446159, 44.120083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985374, 42.705681, 43.921303>,  <31.203281, 43.248260, 44.426678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985374, 42.705681, 43.921303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757710, 43.001808, 43.778206>,  <30.621111, 43.179485, 43.692348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757710, 43.001808, 43.778206>,  <30.985374, 42.705681, 43.921303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757710, 43.001808, 43.778206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162169, -0.325473, -0.931541,
		-0.806075, -0.588212, 0.065190,
		-0.569161, 0.740320, -0.357745,
		30.586962, 43.223904, 43.670883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528259, 42.387592, 43.437630>,  <30.985374, 42.705681, 43.921303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528259, 42.387592, 43.437630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520618, 42.778107, 43.351372>,  <30.516035, 43.012413, 43.299618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520618, 42.778107, 43.351372>,  <30.528259, 42.387592, 43.437630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520618, 42.778107, 43.351372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094788, -0.212948, -0.972455,
		-0.995314, -0.039016, -0.088473,
		-0.019101, 0.976284, -0.215648,
		30.514889, 43.070992, 43.286678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125280, 42.447716, 42.828094>,  <30.528259, 42.387592, 43.437630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125280, 42.447716, 42.828094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346743, 42.780384, 42.844994>,  <30.479620, 42.979984, 42.855133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346743, 42.780384, 42.844994>,  <30.125280, 42.447716, 42.828094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346743, 42.780384, 42.844994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176366, -0.067530, -0.982005,
		-0.813855, 0.551144, -0.184068,
		0.553656, 0.831673, 0.042243,
		30.512840, 43.029884, 42.857666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883038, 42.882393, 42.308952>,  <30.125280, 42.447716, 42.828094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883038, 42.882393, 42.308952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263794, 42.985317, 42.375519>,  <30.492247, 43.047073, 42.415459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263794, 42.985317, 42.375519>,  <29.883038, 42.882393, 42.308952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263794, 42.985317, 42.375519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177057, -0.018562, -0.984026,
		-0.250115, 0.966149, -0.063228,
		0.951889, 0.257315, 0.166420,
		30.549360, 43.062511, 42.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016293, 43.259850, 41.708912>,  <29.883038, 42.882393, 42.308952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016293, 43.259850, 41.708912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379435, 43.201328, 41.866085>,  <30.597321, 43.166214, 41.960388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379435, 43.201328, 41.866085>,  <30.016293, 43.259850, 41.708912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379435, 43.201328, 41.866085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415974, 0.196791, -0.887828,
		0.052566, 0.969468, 0.239516,
		0.907856, -0.146302, 0.392929,
		30.651791, 43.157436, 41.983963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376894, 43.778297, 41.482826>,  <30.016293, 43.259850, 41.708912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376894, 43.778297, 41.482826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641983, 43.499298, 41.591854>,  <30.801037, 43.331898, 41.657272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.641983, 43.499298, 41.591854>,  <30.376894, 43.778297, 41.482826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641983, 43.499298, 41.591854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312974, -0.072690, -0.946976,
		0.680329, 0.712888, 0.170126,
		0.662721, -0.697500, 0.272568,
		30.840799, 43.290047, 41.673626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952663, 44.033291, 41.164139>,  <30.376894, 43.778297, 41.482826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952663, 44.033291, 41.164139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.007414, 43.647202, 41.253239>,  <31.040264, 43.415550, 41.306698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.007414, 43.647202, 41.253239>,  <30.952663, 44.033291, 41.164139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007414, 43.647202, 41.253239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161082, -0.200182, -0.966426,
		0.977403, 0.168163, 0.128079,
		0.136878, -0.965219, 0.222746,
		31.048477, 43.357635, 41.320061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522274, 43.859142, 40.791164>,  <30.952663, 44.033291, 41.164139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522274, 43.859142, 40.791164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.321634, 43.519585, 40.857826>,  <31.201250, 43.315849, 40.897823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.321634, 43.519585, 40.857826>,  <31.522274, 43.859142, 40.791164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321634, 43.519585, 40.857826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204290, -0.303431, -0.930696,
		0.840632, -0.432791, 0.325622,
		-0.501601, -0.848894, 0.166659,
		31.171154, 43.264915, 40.907825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.943565, 37.808346, 41.678806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597054, 37.662689, 41.815605>,  <42.389145, 37.575294, 41.897682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597054, 37.662689, 41.815605>,  <42.943565, 37.808346, 41.678806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597054, 37.662689, 41.815605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171950, -0.425412, -0.888514,
		0.469037, -0.828507, 0.305911,
		-0.866278, -0.364145, 0.341995,
		42.337170, 37.553448, 41.918205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033283, 37.130444, 41.664978>,  <42.943565, 37.808346, 41.678806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033283, 37.130444, 41.664978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637886, 37.187477, 41.644753>,  <42.400650, 37.221699, 41.632618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637886, 37.187477, 41.644753>,  <43.033283, 37.130444, 41.664978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637886, 37.187477, 41.644753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041858, -0.578955, -0.814284,
		-0.145377, -0.802796, 0.578260,
		-0.988490, 0.142583, -0.050563,
		42.341339, 37.230251, 41.629585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782207, 36.390907, 41.470078>,  <43.033283, 37.130444, 41.664978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782207, 36.390907, 41.470078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492802, 36.656067, 41.393036>,  <42.319157, 36.815163, 41.346813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.492802, 36.656067, 41.393036>,  <42.782207, 36.390907, 41.470078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492802, 36.656067, 41.393036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256606, -0.517285, -0.816437,
		-0.640842, -0.541282, 0.544367,
		-0.723516, 0.662895, -0.192602,
		42.275745, 36.854935, 41.335255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145344, 36.048191, 41.318771>,  <42.782207, 36.390907, 41.470078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145344, 36.048191, 41.318771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120461, 36.404877, 41.139450>,  <42.105530, 36.618889, 41.031857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120461, 36.404877, 41.139450>,  <42.145344, 36.048191, 41.318771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120461, 36.404877, 41.139450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176817, -0.451913, -0.874363,
		-0.982276, 0.024878, 0.185781,
		-0.062205, 0.891715, -0.448302,
		42.101799, 36.672390, 41.004959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566238, 35.997936, 40.888172>,  <42.145344, 36.048191, 41.318771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566238, 35.997936, 40.888172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791180, 36.296932, 40.746742>,  <41.926144, 36.476330, 40.661884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791180, 36.296932, 40.746742>,  <41.566238, 35.997936, 40.888172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791180, 36.296932, 40.746742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138930, -0.336109, -0.931520,
		-0.815142, 0.572966, -0.085163,
		0.562353, 0.747490, -0.353579,
		41.959885, 36.521179, 40.640667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338490, 35.918144, 40.225670>,  <41.566238, 35.997936, 40.888172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338490, 35.918144, 40.225670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659828, 36.154949, 40.199875>,  <41.852631, 36.297031, 40.184399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.659828, 36.154949, 40.199875>,  <41.338490, 35.918144, 40.225670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659828, 36.154949, 40.199875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067440, -0.198037, -0.977872,
		-0.591686, 0.781217, -0.199018,
		0.803343, 0.592014, -0.064490,
		41.900829, 36.332554, 40.180527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184288, 36.360825, 39.674805>,  <41.338490, 35.918144, 40.225670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184288, 36.360825, 39.674805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574955, 36.421337, 39.735771>,  <41.809357, 36.457645, 39.772350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574955, 36.421337, 39.735771>,  <41.184288, 36.360825, 39.674805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574955, 36.421337, 39.735771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191578, -0.293140, -0.936679,
		-0.097019, 0.944026, -0.315282,
		0.976670, 0.151277, 0.152415,
		41.867954, 36.466721, 39.781494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576626, 37.012360, 39.297020>,  <41.184288, 36.360825, 39.674805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576626, 37.012360, 39.297020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.817444, 36.696724, 39.345798>,  <41.961937, 36.507343, 39.375065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.817444, 36.696724, 39.345798>,  <41.576626, 37.012360, 39.297020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817444, 36.696724, 39.345798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023629, -0.170273, -0.985114,
		0.798111, 0.590203, -0.121158,
		0.602047, -0.789093, 0.121951,
		41.998058, 36.459995, 39.382385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014462, 37.138817, 38.843586>,  <41.576626, 37.012360, 39.297020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014462, 37.138817, 38.843586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.107464, 36.756474, 38.915459>,  <42.163265, 36.527069, 38.958584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.107464, 36.756474, 38.915459>,  <42.014462, 37.138817, 38.843586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107464, 36.756474, 38.915459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105562, -0.158852, -0.981643,
		0.966850, 0.247202, 0.063969,
		0.232502, -0.955854, 0.179681,
		42.177216, 36.469719, 38.969364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699272, 36.913280, 38.497345>,  <42.014462, 37.138817, 38.843586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699272, 36.913280, 38.497345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496708, 36.576759, 38.572975>,  <42.375168, 36.374847, 38.618355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496708, 36.576759, 38.572975>,  <42.699272, 36.913280, 38.497345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496708, 36.576759, 38.572975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237403, -0.346830, -0.907386,
		0.828967, -0.414623, 0.375368,
		-0.506412, -0.841306, 0.189078,
		42.344784, 36.324368, 38.629700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174351, 36.316994, 38.411049>,  <42.699272, 36.913280, 38.497345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174351, 36.316994, 38.411049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796684, 36.203415, 38.344204>,  <42.570084, 36.135269, 38.304096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796684, 36.203415, 38.344204>,  <43.174351, 36.316994, 38.411049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796684, 36.203415, 38.344204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256306, -0.314286, -0.914074,
		0.207029, -0.905868, 0.369516,
		-0.944164, -0.283949, -0.167113,
		42.513435, 36.118229, 38.294071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203629, 35.709202, 38.026188>,  <43.174351, 36.316994, 38.411049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203629, 35.709202, 38.026188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831970, 35.849289, 37.978794>,  <42.608974, 35.933342, 37.950359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831970, 35.849289, 37.978794>,  <43.203629, 35.709202, 38.026188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831970, 35.849289, 37.978794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008227, -0.300803, -0.953651,
		-0.369632, -0.887052, 0.276608,
		-0.929142, 0.350224, -0.118484,
		42.553226, 35.954357, 37.943249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907814, 35.206005, 37.707512>,  <43.203629, 35.709202, 38.026188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907814, 35.206005, 37.707512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648014, 35.499901, 37.629215>,  <42.492134, 35.676239, 37.582237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648014, 35.499901, 37.629215>,  <42.907814, 35.206005, 37.707512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648014, 35.499901, 37.629215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017889, -0.272128, -0.962095,
		-0.760153, -0.621377, 0.189890,
		-0.649498, 0.734736, -0.195743,
		42.453163, 35.720322, 37.570492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351910, 35.002785, 37.350647>,  <42.907814, 35.206005, 37.707512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351910, 35.002785, 37.350647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333485, 35.388454, 37.246155>,  <42.322430, 35.619858, 37.183460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333485, 35.388454, 37.246155>,  <42.351910, 35.002785, 37.350647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333485, 35.388454, 37.246155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209345, -0.246379, -0.946294,
		-0.976756, -0.098274, -0.190498,
		-0.046061, 0.964178, -0.261226,
		42.319668, 35.677708, 37.167786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831730, 35.128426, 36.754219>,  <42.351910, 35.002785, 37.350647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831730, 35.128426, 36.754219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072540, 35.447742, 36.747406>,  <42.217026, 35.639332, 36.743317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072540, 35.447742, 36.747406>,  <41.831730, 35.128426, 36.754219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072540, 35.447742, 36.747406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013759, -0.031703, -0.999403,
		-0.798356, 0.601434, -0.030069,
		0.602028, 0.798293, -0.017035,
		42.253147, 35.687229, 36.742294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451710, 35.677483, 36.404316>,  <41.831730, 35.128426, 36.754219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451710, 35.677483, 36.404316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839855, 35.773540, 36.393589>,  <42.072742, 35.831177, 36.387154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839855, 35.773540, 36.393589>,  <41.451710, 35.677483, 36.404316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839855, 35.773540, 36.393589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027792, -0.221174, -0.974838,
		-0.240038, 0.945204, -0.221294,
		0.970366, 0.240148, -0.026821,
		42.130966, 35.845585, 36.385544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509624, 36.148846, 35.883949>,  <41.451710, 35.677483, 36.404316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509624, 36.148846, 35.883949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878372, 36.000252, 35.928036>,  <42.099621, 35.911095, 35.954487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878372, 36.000252, 35.928036>,  <41.509624, 36.148846, 35.883949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878372, 36.000252, 35.928036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077863, -0.101032, -0.991832,
		0.379589, 0.922924, -0.064214,
		0.921873, -0.371489, 0.110213,
		42.154934, 35.888805, 35.961098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846439, 36.429169, 35.325806>,  <41.509624, 36.148846, 35.883949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846439, 36.429169, 35.325806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074425, 36.121567, 35.441578>,  <42.211216, 35.937004, 35.511040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074425, 36.121567, 35.441578>,  <41.846439, 36.429169, 35.325806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074425, 36.121567, 35.441578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209917, -0.204273, -0.956142,
		0.794401, 0.605725, 0.044999,
		0.569967, -0.769006, 0.289426,
		42.245415, 35.890865, 35.528404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302944, 36.412884, 34.745064>,  <41.846439, 36.429169, 35.325806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302944, 36.412884, 34.745064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367771, 36.066154, 34.933685>,  <42.406666, 35.858116, 35.046856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.367771, 36.066154, 34.933685>,  <42.302944, 36.412884, 34.745064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367771, 36.066154, 34.933685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313837, -0.407779, -0.857451,
		0.935544, 0.286951, 0.205954,
		0.162063, -0.866819, 0.471551,
		42.416389, 35.806110, 35.075150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013474, 36.276360, 34.716217>,  <42.302944, 36.412884, 34.745064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013474, 36.276360, 34.716217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820118, 35.926460, 34.729782>,  <42.704105, 35.716522, 34.737919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820118, 35.926460, 34.729782>,  <43.013474, 36.276360, 34.716217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820118, 35.926460, 34.729782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482783, -0.298700, -0.823225,
		0.730245, -0.381565, 0.566702,
		-0.483388, -0.874749, 0.033911,
		42.675102, 35.664036, 34.739956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430820, 35.855907, 34.419350>,  <43.013474, 36.276360, 34.716217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430820, 35.855907, 34.419350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.091213, 35.646614, 34.389969>,  <42.887451, 35.521038, 34.372341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.091213, 35.646614, 34.389969>,  <43.430820, 35.855907, 34.419350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091213, 35.646614, 34.389969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274116, -0.317343, -0.907829,
		0.451699, -0.790897, 0.412857,
		-0.849016, -0.523236, -0.073454,
		42.836510, 35.489643, 34.367931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911324, 35.332405, 34.340866>,  <43.430820, 35.855907, 34.419350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911324, 35.332405, 34.340866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.926132, 35.624107, 34.067570>,  <43.935017, 35.799129, 33.903591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.926132, 35.624107, 34.067570>,  <43.911324, 35.332405, 34.340866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926132, 35.624107, 34.067570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972121, -0.184697, -0.144460,
		-0.231541, -0.658846, -0.715759,
		0.037021, 0.729252, -0.683243,
		43.937237, 35.842884, 33.862598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268227, 35.581078, 34.926952>,  <43.911324, 35.332405, 34.340866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268227, 35.581078, 34.926952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623981, 35.406975, 34.982868>,  <44.837437, 35.302513, 35.016418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623981, 35.406975, 34.982868>,  <44.268227, 35.581078, 34.926952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623981, 35.406975, 34.982868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213025, -0.124038, 0.969141,
		-0.404483, -0.891722, -0.203038,
		0.889390, -0.435254, 0.139788,
		44.890797, 35.276398, 35.024803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235378, 34.932037, 35.346588>,  <44.268227, 35.581078, 34.926952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235378, 34.932037, 35.346588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607296, 35.063828, 35.412231>,  <44.830448, 35.142902, 35.451618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607296, 35.063828, 35.412231>,  <44.235378, 34.932037, 35.346588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607296, 35.063828, 35.412231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130671, -0.121344, 0.983972,
		0.344106, -0.936335, -0.069773,
		0.929794, 0.329473, 0.164107,
		44.886234, 35.162670, 35.461464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595600, 34.478802, 35.806305>,  <44.235378, 34.932037, 35.346588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595600, 34.478802, 35.806305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804234, 34.815887, 35.859650>,  <44.929413, 35.018139, 35.891655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.804234, 34.815887, 35.859650>,  <44.595600, 34.478802, 35.806305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804234, 34.815887, 35.859650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073270, -0.111489, 0.991061,
		0.850050, -0.526690, 0.003595,
		0.521581, 0.842714, 0.133362,
		44.960709, 35.068703, 35.899658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987083, 34.366508, 36.345798>,  <44.595600, 34.478802, 35.806305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987083, 34.366508, 36.345798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.966866, 34.765926, 36.338295>,  <44.954735, 35.005577, 36.333794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.966866, 34.765926, 36.338295>,  <44.987083, 34.366508, 36.345798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966866, 34.765926, 36.338295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045469, 0.021064, 0.998744,
		0.997686, 0.049627, -0.046467,
		-0.050543, 0.998546, -0.018759,
		44.951702, 35.065491, 36.332668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538033, 34.545193, 36.758461>,  <44.987083, 34.366508, 36.345798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538033, 34.545193, 36.758461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315269, 34.877403, 36.754890>,  <45.181614, 35.076729, 36.752747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315269, 34.877403, 36.754890>,  <45.538033, 34.545193, 36.758461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315269, 34.877403, 36.754890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073940, 0.060279, 0.995439,
		0.827279, 0.553704, -0.094978,
		-0.556904, 0.830529, -0.008927,
		45.148197, 35.126560, 36.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856476, 34.949841, 37.296432>,  <45.538033, 34.545193, 36.758461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856476, 34.949841, 37.296432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.503426, 35.122940, 37.223003>,  <45.291595, 35.226799, 37.178947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.503426, 35.122940, 37.223003>,  <45.856476, 34.949841, 37.296432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503426, 35.122940, 37.223003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008257, 0.376186, 0.926507,
		0.470005, 0.819275, -0.328458,
		-0.882625, 0.432751, -0.183574,
		45.238640, 35.252766, 37.167931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953728, 35.647911, 37.539112>,  <45.856476, 34.949841, 37.296432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953728, 35.647911, 37.539112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559387, 35.582623, 37.523880>,  <45.322781, 35.543449, 37.514740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559387, 35.582623, 37.523880>,  <45.953728, 35.647911, 37.539112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559387, 35.582623, 37.523880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096762, 0.368737, 0.924484,
		-0.136848, 0.915092, -0.379315,
		-0.985855, -0.163217, -0.038085,
		45.263630, 35.533657, 37.512455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566853, 36.225513, 37.793373>,  <45.953728, 35.647911, 37.539112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566853, 36.225513, 37.793373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318340, 35.915039, 37.836357>,  <45.169231, 35.728756, 37.862148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318340, 35.915039, 37.836357>,  <45.566853, 36.225513, 37.793373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318340, 35.915039, 37.836357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135444, 0.241447, 0.960915,
		-0.771793, 0.582444, -0.255136,
		-0.621282, -0.776184, 0.107458,
		45.131954, 35.682182, 37.868595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036320, 36.483456, 38.055473>,  <45.566853, 36.225513, 37.793373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036320, 36.483456, 38.055473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969254, 36.100769, 38.150620>,  <44.929012, 35.871159, 38.207706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969254, 36.100769, 38.150620>,  <45.036320, 36.483456, 38.055473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969254, 36.100769, 38.150620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285447, 0.278060, 0.917171,
		-0.943614, 0.085881, -0.319713,
		-0.167667, -0.956717, 0.237867,
		44.918953, 35.813755, 38.221981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476982, 36.525234, 38.540787>,  <45.036320, 36.483456, 38.055473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476982, 36.525234, 38.540787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.656921, 36.171818, 38.592937>,  <44.764885, 35.959770, 38.624229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.656921, 36.171818, 38.592937>,  <44.476982, 36.525234, 38.540787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656921, 36.171818, 38.592937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199486, 0.042895, 0.978961,
		-0.870543, -0.466390, -0.156958,
		0.449845, -0.883538, 0.130381,
		44.791874, 35.906757, 38.632053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985741, 36.218273, 39.017406>,  <44.476982, 36.525234, 38.540787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985741, 36.218273, 39.017406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346622, 36.046776, 39.036171>,  <44.563152, 35.943878, 39.047432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.346622, 36.046776, 39.036171>,  <43.985741, 36.218273, 39.017406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346622, 36.046776, 39.036171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044186, 0.016318, 0.998890,
		-0.429030, -0.903281, -0.004222,
		0.902209, -0.428740, 0.046913,
		44.617287, 35.918156, 39.050243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888695, 35.750118, 39.569450>,  <43.985741, 36.218273, 39.017406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888695, 35.750118, 39.569450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284393, 35.761078, 39.511974>,  <44.521812, 35.767654, 39.477489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284393, 35.761078, 39.511974>,  <43.888695, 35.750118, 39.569450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284393, 35.761078, 39.511974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145743, -0.268398, 0.952219,
		-0.012473, -0.962918, -0.269505,
		0.989244, 0.027402, -0.143687,
		44.581165, 35.769299, 39.468868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112053, 35.203598, 39.961643>,  <43.888695, 35.750118, 39.569450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112053, 35.203598, 39.961643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443027, 35.418991, 39.897926>,  <44.641613, 35.548229, 39.859695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443027, 35.418991, 39.897926>,  <44.112053, 35.203598, 39.961643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443027, 35.418991, 39.897926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227528, -0.062147, 0.971786,
		0.513394, -0.840339, -0.173944,
		0.827440, 0.538487, -0.159295,
		44.691261, 35.580536, 39.850140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466709, 35.018211, 40.566608>,  <44.112053, 35.203598, 39.961643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466709, 35.018211, 40.566608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652382, 35.345264, 40.430363>,  <44.763786, 35.541496, 40.348614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652382, 35.345264, 40.430363>,  <44.466709, 35.018211, 40.566608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652382, 35.345264, 40.430363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389890, 0.156684, 0.907434,
		0.795314, -0.554015, -0.246056,
		0.464179, 0.817629, -0.340618,
		44.791637, 35.590553, 40.328178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024303, 35.012005, 40.909584>,  <44.466709, 35.018211, 40.566608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024303, 35.012005, 40.909584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979382, 35.397106, 40.811195>,  <44.952431, 35.628166, 40.752163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979382, 35.397106, 40.811195>,  <45.024303, 35.012005, 40.909584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979382, 35.397106, 40.811195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222061, 0.265590, 0.938164,
		0.968544, 0.050736, -0.243615,
		-0.112300, 0.962750, -0.245969,
		44.945690, 35.685932, 40.737404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501099, 35.343670, 41.172340>,  <45.024303, 35.012005, 40.909584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501099, 35.343670, 41.172340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240368, 35.642002, 41.117409>,  <45.083931, 35.821003, 41.084450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240368, 35.642002, 41.117409>,  <45.501099, 35.343670, 41.172340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240368, 35.642002, 41.117409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074918, 0.243521, 0.966998,
		0.754661, 0.620024, -0.214609,
		-0.651824, 0.745833, -0.137325,
		45.044819, 35.865753, 41.076210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772968, 36.035160, 41.456509>,  <45.501099, 35.343670, 41.172340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772968, 36.035160, 41.456509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373066, 36.042126, 41.450947>,  <45.133125, 36.046307, 41.447609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373066, 36.042126, 41.450947>,  <45.772968, 36.035160, 41.456509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373066, 36.042126, 41.450947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009057, 0.252321, 0.967601,
		0.020359, 0.967487, -0.252101,
		-0.999752, 0.017416, -0.013900,
		45.073139, 36.047352, 41.446777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505932, 36.492081, 42.031940>,  <45.772968, 36.035160, 41.456509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505932, 36.492081, 42.031940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171391, 36.296246, 41.933296>,  <44.970665, 36.178745, 41.874111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171391, 36.296246, 41.933296>,  <45.505932, 36.492081, 42.031940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171391, 36.296246, 41.933296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317125, 0.065167, 0.946142,
		-0.447146, 0.869517, -0.209763,
		-0.836356, -0.489585, -0.246607,
		44.920483, 36.149368, 41.859314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903900, 36.945385, 42.172012>,  <45.505932, 36.492081, 42.031940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903900, 36.945385, 42.172012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778091, 36.565887, 42.184341>,  <44.702606, 36.338188, 42.191738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778091, 36.565887, 42.184341>,  <44.903900, 36.945385, 42.172012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778091, 36.565887, 42.184341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357013, 0.148317, 0.922249,
		-0.879554, 0.279067, -0.385365,
		-0.314525, -0.948748, 0.030823,
		44.683735, 36.281261, 42.193588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262943, 36.968361, 42.424713>,  <44.903900, 36.945385, 42.172012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262943, 36.968361, 42.424713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384575, 36.594528, 42.498577>,  <44.457554, 36.370228, 42.542896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384575, 36.594528, 42.498577>,  <44.262943, 36.968361, 42.424713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384575, 36.594528, 42.498577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232593, 0.115136, 0.965735,
		-0.923816, -0.336611, -0.182366,
		0.304080, -0.934579, 0.184658,
		44.475800, 36.314156, 42.553974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.961117, 42.367455, 37.527550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780991, 42.087585, 37.749420>,  <35.672916, 41.919662, 37.882542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780991, 42.087585, 37.749420>,  <35.961117, 42.367455, 37.527550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780991, 42.087585, 37.749420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709932, -0.657332, -0.252806,
		0.541490, 0.279941, 0.792730,
		-0.450316, -0.699677, 0.554678,
		35.645897, 41.877682, 37.915825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488667, 41.947620, 37.872505>,  <35.961117, 42.367455, 37.527550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488667, 41.947620, 37.872505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155663, 41.726440, 37.858791>,  <35.955860, 41.593731, 37.850563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155663, 41.726440, 37.858791>,  <36.488667, 41.947620, 37.872505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155663, 41.726440, 37.858791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538628, -0.793349, -0.283685,
		0.129665, -0.254636, 0.958304,
		-0.832507, -0.552953, -0.034285,
		35.905910, 41.560555, 37.848507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750122, 41.296799, 38.131992>,  <36.488667, 41.947620, 37.872505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750122, 41.296799, 38.131992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408455, 41.217617, 37.939651>,  <36.203457, 41.170109, 37.824245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408455, 41.217617, 37.939651>,  <36.750122, 41.296799, 38.131992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408455, 41.217617, 37.939651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411093, -0.823334, -0.391311,
		-0.318442, -0.531919, 0.784638,
		-0.854165, -0.197950, -0.480852,
		36.152206, 41.158234, 37.795395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635544, 40.626011, 38.203564>,  <36.750122, 41.296799, 38.131992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635544, 40.626011, 38.203564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407982, 40.729053, 37.891159>,  <36.271446, 40.790878, 37.703716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407982, 40.729053, 37.891159>,  <36.635544, 40.626011, 38.203564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407982, 40.729053, 37.891159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249070, -0.851104, -0.462154,
		-0.783781, -0.457449, 0.420034,
		-0.568904, 0.257610, -0.781015,
		36.237312, 40.806335, 37.656853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362869, 40.051216, 37.968346>,  <36.635544, 40.626011, 38.203564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362869, 40.051216, 37.968346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314548, 40.278454, 37.642727>,  <36.285557, 40.414799, 37.447357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314548, 40.278454, 37.642727>,  <36.362869, 40.051216, 37.968346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314548, 40.278454, 37.642727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227028, -0.782508, -0.579775,
		-0.966367, -0.254848, -0.034447,
		-0.120799, 0.568096, -0.814048,
		36.278309, 40.448883, 37.398514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934570, 39.732372, 37.525551>,  <36.362869, 40.051216, 37.968346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934570, 39.732372, 37.525551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154182, 39.975304, 37.295868>,  <36.285950, 40.121063, 37.158058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154182, 39.975304, 37.295868>,  <35.934570, 39.732372, 37.525551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154182, 39.975304, 37.295868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021477, -0.697040, -0.716711,
		-0.835528, 0.381162, -0.395738,
		0.549028, 0.607331, -0.574210,
		36.318890, 40.157501, 37.123604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687027, 39.675076, 36.842705>,  <35.934570, 39.732372, 37.525551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687027, 39.675076, 36.842705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060410, 39.810165, 36.794353>,  <36.284439, 39.891220, 36.765343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060410, 39.810165, 36.794353>,  <35.687027, 39.675076, 36.842705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060410, 39.810165, 36.794353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170214, -0.713663, -0.679495,
		-0.315745, 0.613701, -0.723655,
		0.933452, 0.337723, -0.120875,
		36.340446, 39.911484, 36.758091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660660, 39.632984, 36.172482>,  <35.687027, 39.675076, 36.842705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660660, 39.632984, 36.172482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056370, 39.681099, 36.205605>,  <36.293797, 39.709969, 36.225479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056370, 39.681099, 36.205605>,  <35.660660, 39.632984, 36.172482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056370, 39.681099, 36.205605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141841, -0.656500, -0.740870,
		-0.034755, 0.744673, -0.666524,
		0.989279, 0.120290, 0.082809,
		36.353153, 39.717186, 36.230446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896999, 39.639400, 35.546570>,  <35.660660, 39.632984, 36.172482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896999, 39.639400, 35.546570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211636, 39.536385, 35.771049>,  <36.400417, 39.474575, 35.905739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211636, 39.536385, 35.771049>,  <35.896999, 39.639400, 35.546570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211636, 39.536385, 35.771049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140451, -0.810419, -0.568766,
		0.601288, 0.526208, -0.601297,
		0.786592, -0.257539, 0.561201,
		36.447613, 39.459122, 35.939411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394554, 39.434299, 35.109039>,  <35.896999, 39.639400, 35.546570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394554, 39.434299, 35.109039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485680, 39.269032, 35.461716>,  <36.540356, 39.169868, 35.673325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485680, 39.269032, 35.461716>,  <36.394554, 39.434299, 35.109039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485680, 39.269032, 35.461716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126199, -0.885340, -0.447489,
		0.965491, 0.213215, -0.149554,
		0.227817, -0.413173, 0.881696,
		36.554024, 39.145081, 35.726223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917850, 38.979671, 34.966473>,  <36.394554, 39.434299, 35.109039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917850, 38.979671, 34.966473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815121, 38.814983, 35.316223>,  <36.753483, 38.716171, 35.526073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815121, 38.814983, 35.316223>,  <36.917850, 38.979671, 34.966473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815121, 38.814983, 35.316223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118398, -0.911308, -0.394334,
		0.959179, 0.002251, 0.282791,
		-0.256822, -0.411719, 0.874374,
		36.738075, 38.691467, 35.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336697, 38.456894, 35.078426>,  <36.917850, 38.979671, 34.966473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336697, 38.456894, 35.078426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043537, 38.369095, 35.336006>,  <36.867641, 38.316418, 35.490555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043537, 38.369095, 35.336006>,  <37.336697, 38.456894, 35.078426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043537, 38.369095, 35.336006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112102, -0.972550, -0.203912,
		0.671034, -0.077259, 0.737391,
		-0.732903, -0.219495, 0.643953,
		36.823666, 38.303246, 35.529190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620419, 37.915268, 35.466198>,  <37.336697, 38.456894, 35.078426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620419, 37.915268, 35.466198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220543, 37.918964, 35.475388>,  <36.980618, 37.921181, 35.480900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220543, 37.918964, 35.475388>,  <37.620419, 37.915268, 35.466198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220543, 37.918964, 35.475388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015219, -0.961141, -0.275638,
		0.019536, -0.275903, 0.960987,
		-0.999693, 0.009240, 0.022976,
		36.920635, 37.921738, 35.482281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452267, 37.334995, 35.754295>,  <37.620419, 37.915268, 35.466198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452267, 37.334995, 35.754295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134949, 37.411301, 35.523022>,  <36.944557, 37.457085, 35.384258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134949, 37.411301, 35.523022>,  <37.452267, 37.334995, 35.754295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134949, 37.411301, 35.523022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170036, -0.981277, -0.090466,
		-0.584618, 0.026546, 0.810875,
		-0.793290, 0.190766, -0.578186,
		36.896961, 37.468529, 35.349567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250389, 37.078411, 35.632565>,  <37.452267, 37.334995, 35.754295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250389, 37.078411, 35.632565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580318, 36.946770, 35.816460>,  <38.778275, 36.867783, 35.926796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580318, 36.946770, 35.816460>,  <38.250389, 37.078411, 35.632565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580318, 36.946770, 35.816460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429611, 0.163797, 0.888034,
		-0.367562, -0.929978, -0.006285,
		0.824823, -0.329107, 0.459735,
		38.827766, 36.848038, 35.954380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103764, 36.462410, 36.025909>,  <38.250389, 37.078411, 35.632565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103764, 36.462410, 36.025909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430843, 36.644321, 36.167076>,  <38.627090, 36.753468, 36.251774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430843, 36.644321, 36.167076>,  <38.103764, 36.462410, 36.025909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430843, 36.644321, 36.167076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441949, 0.103126, 0.891093,
		0.368858, -0.884612, 0.285316,
		0.817695, 0.454782, 0.352915,
		38.676151, 36.780754, 36.272949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341240, 36.120564, 36.727783>,  <38.103764, 36.462410, 36.025909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341240, 36.120564, 36.727783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559822, 36.455166, 36.743973>,  <38.690971, 36.655930, 36.753685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559822, 36.455166, 36.743973>,  <38.341240, 36.120564, 36.727783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559822, 36.455166, 36.743973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311512, 0.158167, 0.936987,
		0.777395, -0.524631, 0.347013,
		0.546458, 0.836508, 0.040471,
		38.723759, 36.706120, 36.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683437, 36.117043, 37.385891>,  <38.341240, 36.120564, 36.727783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683437, 36.117043, 37.385891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710320, 36.503456, 37.286079>,  <38.726448, 36.735302, 37.226192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710320, 36.503456, 37.286079>,  <38.683437, 36.117043, 37.385891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710320, 36.503456, 37.286079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349618, 0.257042, 0.900942,
		0.934479, 0.026690, 0.355017,
		0.067208, 0.966032, -0.249532,
		38.730480, 36.793266, 37.211220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992233, 36.451885, 37.984383>,  <38.683437, 36.117043, 37.385891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992233, 36.451885, 37.984383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774410, 36.721088, 37.784172>,  <38.643719, 36.882610, 37.664047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774410, 36.721088, 37.784172>,  <38.992233, 36.451885, 37.984383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774410, 36.721088, 37.784172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410697, 0.306361, 0.858761,
		0.731291, 0.673206, 0.109571,
		-0.544555, 0.673005, -0.500523,
		38.611042, 36.922989, 37.634014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227303, 37.032425, 38.285851>,  <38.992233, 36.451885, 37.984383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227303, 37.032425, 38.285851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870392, 37.113144, 38.124298>,  <38.656246, 37.161575, 38.027367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870392, 37.113144, 38.124298>,  <39.227303, 37.032425, 38.285851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870392, 37.113144, 38.124298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337848, 0.294985, 0.893780,
		0.299504, 0.933949, -0.195030,
		-0.892276, 0.201800, -0.403882,
		38.602711, 37.173683, 38.003132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101322, 37.591564, 38.610096>,  <39.227303, 37.032425, 38.285851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101322, 37.591564, 38.610096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751038, 37.445335, 38.483936>,  <38.540867, 37.357597, 38.408241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751038, 37.445335, 38.483936>,  <39.101322, 37.591564, 38.610096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751038, 37.445335, 38.483936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426054, 0.277749, 0.861007,
		-0.227158, 0.888376, -0.398982,
		-0.875715, -0.365573, -0.315404,
		38.488323, 37.335663, 38.389317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606815, 38.082596, 38.888180>,  <39.101322, 37.591564, 38.610096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606815, 38.082596, 38.888180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345200, 37.796055, 38.790962>,  <38.188232, 37.624130, 38.732632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345200, 37.796055, 38.790962>,  <38.606815, 38.082596, 38.888180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345200, 37.796055, 38.790962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565722, 0.249893, 0.785820,
		-0.502191, 0.651451, -0.568697,
		-0.654036, -0.716356, -0.243046,
		38.148991, 37.581146, 38.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991005, 38.387371, 38.758430>,  <38.606815, 38.082596, 38.888180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991005, 38.387371, 38.758430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912621, 38.010113, 38.865822>,  <37.865589, 37.783760, 38.930256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912621, 38.010113, 38.865822>,  <37.991005, 38.387371, 38.758430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912621, 38.010113, 38.865822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717676, 0.324509, 0.616146,
		-0.668238, -0.071941, -0.740461,
		-0.195960, -0.943143, 0.268479,
		37.853832, 37.727169, 38.946365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213566, 38.342777, 38.892216>,  <37.991005, 38.387371, 38.758430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213566, 38.342777, 38.892216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342812, 38.006371, 39.065781>,  <37.420361, 37.804527, 39.169922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342812, 38.006371, 39.065781>,  <37.213566, 38.342777, 38.892216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342812, 38.006371, 39.065781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549846, 0.206344, 0.809377,
		-0.770238, -0.500109, -0.395759,
		0.323114, -0.841019, 0.433917,
		37.439747, 37.754066, 39.195957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662704, 37.898262, 39.027767>,  <37.213566, 38.342777, 38.892216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662704, 37.898262, 39.027767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951054, 37.810051, 39.290588>,  <37.124062, 37.757126, 39.448280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951054, 37.810051, 39.290588>,  <36.662704, 37.898262, 39.027767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951054, 37.810051, 39.290588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609508, 0.249571, 0.752472,
		-0.329919, -0.942912, 0.045497,
		0.720870, -0.220524, 0.657050,
		37.167316, 37.743893, 39.487705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237930, 37.770424, 39.592716>,  <36.662704, 37.898262, 39.027767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237930, 37.770424, 39.592716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610546, 37.825951, 39.727161>,  <36.834114, 37.859264, 39.807827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610546, 37.825951, 39.727161>,  <36.237930, 37.770424, 39.592716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610546, 37.825951, 39.727161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363467, 0.325957, 0.872722,
		0.011587, -0.935138, 0.354095,
		0.931535, 0.138814, 0.336115,
		36.890007, 37.867596, 39.827995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215996, 37.569492, 40.340332>,  <36.237930, 37.770424, 39.592716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215996, 37.569492, 40.340332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546452, 37.786968, 40.281147>,  <36.744724, 37.917454, 40.245636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546452, 37.786968, 40.281147>,  <36.215996, 37.569492, 40.340332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546452, 37.786968, 40.281147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140766, 0.453406, 0.880118,
		0.545603, -0.706270, 0.451110,
		0.826137, 0.543696, -0.147961,
		36.794292, 37.950077, 40.236759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531239, 37.626675, 40.963299>,  <36.215996, 37.569492, 40.340332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531239, 37.626675, 40.963299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711720, 37.920925, 40.761200>,  <36.820007, 38.097473, 40.639942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711720, 37.920925, 40.761200>,  <36.531239, 37.626675, 40.963299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711720, 37.920925, 40.761200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115248, 0.609442, 0.784409,
		0.884949, -0.295698, 0.359761,
		0.451201, 0.735624, -0.505246,
		36.847080, 38.141613, 40.609627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805046, 36.990578, 41.431698>,  <36.531239, 37.626675, 40.963299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805046, 36.990578, 41.431698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430183, 36.873829, 41.508175>,  <36.205265, 36.803780, 41.554062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430183, 36.873829, 41.508175>,  <36.805046, 36.990578, 41.431698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430183, 36.873829, 41.508175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087210, -0.334631, -0.938305,
		0.337847, -0.896009, 0.288146,
		-0.937152, -0.291874, 0.191195,
		36.149036, 36.786266, 41.565533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744888, 36.350082, 41.016624>,  <36.805046, 36.990578, 41.431698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744888, 36.350082, 41.016624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371601, 36.471493, 41.093540>,  <36.147629, 36.544338, 41.139690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371601, 36.471493, 41.093540>,  <36.744888, 36.350082, 41.016624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371601, 36.471493, 41.093540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269560, -0.237569, -0.933219,
		-0.237569, -0.922733, 0.303522,
		0.933219, -0.303522, -0.192293,
		36.091637, 36.562550, 41.151230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361431, 35.685783, 40.832306>,  <36.744888, 36.350082, 41.016624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361431, 35.685783, 40.832306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089622, 35.978722, 40.814774>,  <35.926537, 36.154484, 40.804256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089622, 35.978722, 40.814774>,  <36.361431, 35.685783, 40.832306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089622, 35.978722, 40.814774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365802, -0.389993, -0.845041,
		-0.635952, -0.558194, 0.532902,
		-0.679525, 0.732342, -0.043829,
		35.885765, 36.198425, 40.801624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686211, 35.430775, 40.672848>,  <36.361431, 35.685783, 40.832306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686211, 35.430775, 40.672848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667099, 35.810394, 40.548248>,  <35.655632, 36.038166, 40.473488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667099, 35.810394, 40.548248>,  <35.686211, 35.430775, 40.672848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667099, 35.810394, 40.548248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426076, -0.301425, -0.852996,
		-0.903425, 0.091968, 0.418766,
		-0.047779, 0.949044, -0.311500,
		35.652767, 36.095108, 40.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044563, 35.481613, 40.435711>,  <35.686211, 35.430775, 40.672848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044563, 35.481613, 40.435711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227760, 35.787899, 40.255081>,  <35.337681, 35.971672, 40.146706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227760, 35.787899, 40.255081>,  <35.044563, 35.481613, 40.435711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227760, 35.787899, 40.255081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392808, -0.281373, -0.875518,
		-0.797459, 0.578365, 0.171912,
		0.457997, 0.765718, -0.451570,
		35.365158, 36.017612, 40.119610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552055, 35.664791, 39.981785>,  <35.044563, 35.481613, 40.435711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552055, 35.664791, 39.981785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884987, 35.845451, 39.853256>,  <35.084743, 35.953846, 39.776138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884987, 35.845451, 39.853256>,  <34.552055, 35.664791, 39.981785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884987, 35.845451, 39.853256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351738, -0.017646, -0.935932,
		-0.428386, 0.892020, 0.144176,
		0.832326, 0.451652, -0.321317,
		35.134686, 35.980946, 39.756863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324528, 36.163197, 39.461571>,  <34.552055, 35.664791, 39.981785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324528, 36.163197, 39.461571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707733, 36.073128, 39.390572>,  <34.937656, 36.019085, 39.347973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707733, 36.073128, 39.390572>,  <34.324528, 36.163197, 39.461571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707733, 36.073128, 39.390572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189217, -0.031381, -0.981434,
		0.215424, 0.973813, -0.072671,
		0.958013, -0.225175, -0.177502,
		34.995136, 36.005577, 39.337322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368000, 36.382195, 38.828175>,  <34.324528, 36.163197, 39.461571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368000, 36.382195, 38.828175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683968, 36.137871, 38.849884>,  <34.873547, 35.991276, 38.862911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683968, 36.137871, 38.849884>,  <34.368000, 36.382195, 38.828175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683968, 36.137871, 38.849884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171291, -0.304773, -0.936895,
		0.588804, 0.730773, -0.345371,
		0.789917, -0.610807, 0.054277,
		34.920944, 35.954628, 38.866169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749462, 36.561840, 38.276360>,  <34.368000, 36.382195, 38.828175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749462, 36.561840, 38.276360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857433, 36.192196, 38.384548>,  <34.922215, 35.970409, 38.449463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857433, 36.192196, 38.384548>,  <34.749462, 36.561840, 38.276360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857433, 36.192196, 38.384548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022802, -0.274686, -0.961263,
		0.962611, 0.265636, -0.053073,
		0.269925, -0.924113, 0.270473,
		34.938412, 35.914963, 38.465691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215008, 36.412022, 37.879990>,  <34.749462, 36.561840, 38.276360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215008, 36.412022, 37.879990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116440, 36.042656, 37.997688>,  <35.057301, 35.821037, 38.068310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116440, 36.042656, 37.997688>,  <35.215008, 36.412022, 37.879990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116440, 36.042656, 37.997688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029309, -0.310573, -0.950098,
		0.968720, -0.225498, 0.103596,
		-0.246419, -0.923415, 0.294249,
		35.042515, 35.765633, 38.085964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581463, 36.039009, 37.408920>,  <35.215008, 36.412022, 37.879990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581463, 36.039009, 37.408920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318649, 35.780560, 37.564270>,  <35.160961, 35.625492, 37.657482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318649, 35.780560, 37.564270>,  <35.581463, 36.039009, 37.408920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318649, 35.780560, 37.564270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043032, -0.482201, -0.875003,
		0.752633, -0.591618, 0.289018,
		-0.657033, -0.646119, 0.388379,
		35.121540, 35.586723, 37.680782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811394, 35.340721, 37.339546>,  <35.581463, 36.039009, 37.408920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811394, 35.340721, 37.339546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411655, 35.355164, 37.339149>,  <35.171810, 35.363827, 37.338913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411655, 35.355164, 37.339149>,  <35.811394, 35.340721, 37.339546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411655, 35.355164, 37.339149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017912, -0.519214, -0.854457,
		-0.031361, -0.853881, 0.519522,
		-0.999348, 0.036103, -0.000988,
		35.111851, 35.365993, 37.338852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.409367, 38.492329, 44.886719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021744, 38.539082, 44.799755>,  <35.789169, 38.567135, 44.747578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021744, 38.539082, 44.799755>,  <36.409367, 38.492329, 44.886719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021744, 38.539082, 44.799755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057995, -0.748315, -0.660803,
		-0.239931, -0.652965, 0.718381,
		-0.969056, 0.116885, -0.217412,
		35.731026, 38.574146, 44.734531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044994, 37.853283, 45.055847>,  <36.409367, 38.492329, 44.886719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044994, 37.853283, 45.055847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820099, 38.037518, 44.781113>,  <35.685162, 38.148060, 44.616272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820099, 38.037518, 44.781113>,  <36.044994, 37.853283, 45.055847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820099, 38.037518, 44.781113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194505, -0.733592, -0.651161,
		-0.803776, -0.499701, 0.322867,
		-0.562239, 0.460589, -0.686838,
		35.651428, 38.175694, 44.575062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689751, 37.304016, 44.690754>,  <36.044994, 37.853283, 45.055847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689751, 37.304016, 44.690754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.625088, 37.612305, 44.444225>,  <35.586288, 37.797279, 44.296307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.625088, 37.612305, 44.444225>,  <35.689751, 37.304016, 44.690754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625088, 37.612305, 44.444225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177570, -0.637060, -0.750082,
		-0.970739, -0.011819, 0.239844,
		-0.161660, 0.770724, -0.616321,
		35.576591, 37.843521, 44.259331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139393, 37.135910, 44.269634>,  <35.689751, 37.304016, 44.690754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139393, 37.135910, 44.269634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324574, 37.429173, 44.070374>,  <35.435684, 37.605129, 43.950817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.324574, 37.429173, 44.070374>,  <35.139393, 37.135910, 44.269634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324574, 37.429173, 44.070374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090325, -0.520063, -0.849338,
		-0.881768, 0.438200, -0.174543,
		0.462954, 0.733154, -0.498156,
		35.463459, 37.649120, 43.920925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777962, 37.160240, 43.536354>,  <35.139393, 37.135910, 44.269634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777962, 37.160240, 43.536354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126999, 37.352173, 43.499828>,  <35.336422, 37.467331, 43.477913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126999, 37.352173, 43.499828>,  <34.777962, 37.160240, 43.536354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126999, 37.352173, 43.499828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038801, -0.254459, -0.966305,
		-0.486897, 0.839652, -0.240658,
		0.872597, 0.479829, -0.091316,
		35.388779, 37.496120, 43.472435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723358, 37.582371, 42.907856>,  <34.777962, 37.160240, 43.536354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723358, 37.582371, 42.907856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116295, 37.545650, 42.973068>,  <35.352058, 37.523617, 43.012196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116295, 37.545650, 42.973068>,  <34.723358, 37.582371, 42.907856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116295, 37.545650, 42.973068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153190, -0.105632, -0.982535,
		0.107419, 0.990159, -0.089704,
		0.982341, -0.091801, 0.163029,
		35.410995, 37.518108, 43.021976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098362, 37.874268, 42.345516>,  <34.723358, 37.582371, 42.907856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098362, 37.874268, 42.345516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360046, 37.612816, 42.497711>,  <35.517059, 37.455944, 42.589027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360046, 37.612816, 42.497711>,  <35.098362, 37.874268, 42.345516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360046, 37.612816, 42.497711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271920, -0.266163, -0.924779,
		0.705737, 0.708465, 0.003608,
		0.654213, -0.653632, 0.380487,
		35.556309, 37.416725, 42.611858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683395, 37.917759, 41.992840>,  <35.098362, 37.874268, 42.345516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683395, 37.917759, 41.992840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747105, 37.557480, 42.154522>,  <35.785328, 37.341312, 42.251530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747105, 37.557480, 42.154522>,  <35.683395, 37.917759, 41.992840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747105, 37.557480, 42.154522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260741, -0.356512, -0.897169,
		0.952180, 0.248285, 0.178066,
		0.159271, -0.900696, 0.404202,
		35.794888, 37.287270, 42.275784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403355, 37.705566, 41.825703>,  <35.683395, 37.917759, 41.992840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403355, 37.705566, 41.825703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166458, 37.389515, 41.888874>,  <36.024319, 37.199883, 41.926777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.166458, 37.389515, 41.888874>,  <36.403355, 37.705566, 41.825703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166458, 37.389515, 41.888874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140914, -0.294542, -0.945192,
		0.793341, -0.537531, 0.285781,
		-0.592245, -0.790130, 0.157927,
		35.988785, 37.152477, 41.936253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029770, 37.945297, 41.486153>,  <36.403355, 37.705566, 41.825703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029770, 37.945297, 41.486153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963646, 38.242512, 41.226746>,  <36.923973, 38.420841, 41.071102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963646, 38.242512, 41.226746>,  <37.029770, 37.945297, 41.486153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963646, 38.242512, 41.226746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078356, 0.645589, 0.759655,
		0.983124, 0.176394, -0.048502,
		-0.165311, 0.743035, -0.648515,
		36.914051, 38.465424, 41.032192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417564, 38.540760, 41.697437>,  <37.029770, 37.945297, 41.486153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417564, 38.540760, 41.697437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122528, 38.679230, 41.465534>,  <36.945507, 38.762314, 41.326393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122528, 38.679230, 41.465534>,  <37.417564, 38.540760, 41.697437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122528, 38.679230, 41.465534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053976, 0.825614, 0.561648,
		0.673090, 0.445558, -0.590278,
		-0.737589, 0.346179, -0.579762,
		36.901253, 38.783085, 41.291607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499252, 39.275841, 41.792812>,  <37.417564, 38.540760, 41.697437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499252, 39.275841, 41.792812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141541, 39.236694, 41.618141>,  <36.926914, 39.213207, 41.513340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141541, 39.236694, 41.618141>,  <37.499252, 39.275841, 41.792812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141541, 39.236694, 41.618141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307862, 0.842739, 0.441601,
		0.324783, 0.529350, -0.783776,
		-0.894280, -0.097870, -0.436674,
		36.873257, 39.207333, 41.487141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325554, 39.925678, 41.633171>,  <37.499252, 39.275841, 41.792812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325554, 39.925678, 41.633171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963932, 39.755627, 41.615490>,  <36.746960, 39.653595, 41.604881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963932, 39.755627, 41.615490>,  <37.325554, 39.925678, 41.633171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963932, 39.755627, 41.615490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395422, 0.792639, 0.464075,
		-0.162256, 0.437027, -0.884693,
		-0.904055, -0.425125, -0.044200,
		36.692715, 39.628090, 41.602230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835636, 40.474731, 41.357426>,  <37.325554, 39.925678, 41.633171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835636, 40.474731, 41.357426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633385, 40.198681, 41.564529>,  <36.512035, 40.033051, 41.688793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633385, 40.198681, 41.564529>,  <36.835636, 40.474731, 41.357426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633385, 40.198681, 41.564529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592305, 0.714020, 0.373296,
		-0.627310, -0.117924, -0.769789,
		-0.505624, -0.690123, 0.517759,
		36.481697, 39.991646, 41.719856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194866, 40.745529, 41.270828>,  <36.835636, 40.474731, 41.357426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194866, 40.745529, 41.270828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162914, 40.493332, 41.579659>,  <36.143742, 40.342014, 41.764957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162914, 40.493332, 41.579659>,  <36.194866, 40.745529, 41.270828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162914, 40.493332, 41.579659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660625, 0.613507, 0.432648,
		-0.746454, -0.475491, -0.465526,
		-0.079883, -0.630490, 0.772076,
		36.138950, 40.304184, 41.811283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477760, 40.680397, 41.360958>,  <36.194866, 40.745529, 41.270828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477760, 40.680397, 41.360958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654938, 40.564899, 41.700470>,  <35.761246, 40.495602, 41.904175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654938, 40.564899, 41.700470>,  <35.477760, 40.680397, 41.360958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654938, 40.564899, 41.700470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720382, 0.448950, 0.528671,
		-0.533710, -0.845618, -0.009146,
		0.442948, -0.288746, 0.848778,
		35.787823, 40.478275, 41.955105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956409, 40.587997, 41.855415>,  <35.477760, 40.680397, 41.360958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956409, 40.587997, 41.855415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268097, 40.595394, 42.106007>,  <35.455109, 40.599831, 42.256359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.268097, 40.595394, 42.106007>,  <34.956409, 40.587997, 41.855415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268097, 40.595394, 42.106007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506294, 0.607757, 0.611799,
		-0.369432, -0.793907, 0.482940,
		0.779222, 0.018491, 0.626476,
		35.501862, 40.600941, 42.293949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669624, 40.558445, 42.541817>,  <34.956409, 40.587997, 41.855415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669624, 40.558445, 42.541817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033924, 40.723209, 42.553516>,  <35.252506, 40.822067, 42.560535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033924, 40.723209, 42.553516>,  <34.669624, 40.558445, 42.541817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033924, 40.723209, 42.553516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360332, 0.758115, 0.543527,
		0.201713, -0.505558, 0.838882,
		0.910754, 0.411913, 0.029247,
		35.307152, 40.846783, 42.562290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687607, 40.695835, 43.170425>,  <34.669624, 40.558445, 42.541817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687607, 40.695835, 43.170425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992874, 40.919209, 43.040356>,  <35.176033, 41.053230, 42.962315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992874, 40.919209, 43.040356>,  <34.687607, 40.695835, 43.170425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992874, 40.919209, 43.040356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260629, 0.726452, 0.635877,
		0.591314, -0.400530, 0.699946,
		0.763165, 0.558429, -0.325172,
		35.221825, 41.086739, 42.942802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109295, 40.925938, 43.727184>,  <34.687607, 40.695835, 43.170425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109295, 40.925938, 43.727184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.203426, 41.189754, 43.441631>,  <35.259907, 41.348045, 43.270298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.203426, 41.189754, 43.441631>,  <35.109295, 40.925938, 43.727184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203426, 41.189754, 43.441631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106202, 0.747562, 0.655646,
		0.966095, -0.078479, 0.245970,
		0.235332, 0.659540, -0.713881,
		35.274025, 41.387615, 43.227467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578335, 41.382702, 44.086044>,  <35.109295, 40.925938, 43.727184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578335, 41.382702, 44.086044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467377, 41.585800, 43.759792>,  <35.400803, 41.707657, 43.564041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467377, 41.585800, 43.759792>,  <35.578335, 41.382702, 44.086044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467377, 41.585800, 43.759792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102445, 0.828473, 0.550580,
		0.955279, 0.236285, -0.177798,
		-0.277394, 0.507743, -0.815629,
		35.384159, 41.738121, 43.515102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983948, 42.025570, 43.974346>,  <35.578335, 41.382702, 44.086044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983948, 42.025570, 43.974346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621494, 42.065281, 43.809875>,  <35.404022, 42.089108, 43.711193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621494, 42.065281, 43.809875>,  <35.983948, 42.025570, 43.974346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621494, 42.065281, 43.809875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128984, 0.860925, 0.492109,
		0.402847, 0.498952, -0.767308,
		-0.906133, 0.099274, -0.411178,
		35.349655, 42.095062, 43.686523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866669, 42.774467, 43.702267>,  <35.983948, 42.025570, 43.974346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866669, 42.774467, 43.702267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484707, 42.661858, 43.740025>,  <35.255531, 42.594292, 43.762680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484707, 42.661858, 43.740025>,  <35.866669, 42.774467, 43.702267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484707, 42.661858, 43.740025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178675, 0.798702, 0.574587,
		-0.237153, 0.531807, -0.812982,
		-0.954900, -0.281525, 0.094394,
		35.198238, 42.577400, 43.768341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.282270, 41.383629, 42.667419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.587828, 41.183987, 42.831055>,  <28.771162, 41.064201, 42.929237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.587828, 41.183987, 42.831055>,  <28.282270, 41.383629, 42.667419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587828, 41.183987, 42.831055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212421, -0.404121, -0.889699,
		0.609378, 0.766536, -0.202685,
		0.763895, -0.499109, 0.409091,
		28.816996, 41.034252, 42.953781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655634, 41.513027, 42.214424>,  <28.282270, 41.383629, 42.667419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655634, 41.513027, 42.214424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872206, 41.243336, 42.415329>,  <29.002150, 41.081520, 42.535873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872206, 41.243336, 42.415329>,  <28.655634, 41.513027, 42.214424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872206, 41.243336, 42.415329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286755, -0.413488, -0.864176,
		0.790332, 0.611917, -0.030536,
		0.541430, -0.674229, 0.502263,
		29.034636, 41.041065, 42.566010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392170, 41.524883, 41.999783>,  <28.655634, 41.513027, 42.214424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392170, 41.524883, 41.999783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.307875, 41.156528, 42.130966>,  <29.257298, 40.935516, 42.209679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.307875, 41.156528, 42.130966>,  <29.392170, 41.524883, 41.999783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307875, 41.156528, 42.130966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261387, -0.376363, -0.888835,
		0.941948, -0.101587, 0.320021,
		-0.210738, -0.920886, 0.327961,
		29.244654, 40.880264, 42.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911585, 41.185734, 41.704250>,  <29.392170, 41.524883, 41.999783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911585, 41.185734, 41.704250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.654377, 40.896935, 41.806427>,  <29.500051, 40.723656, 41.867733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.654377, 40.896935, 41.806427>,  <29.911585, 41.185734, 41.704250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654377, 40.896935, 41.806427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331945, -0.563327, -0.756621,
		0.690173, -0.401730, 0.601893,
		-0.643020, -0.721995, 0.255441,
		29.461472, 40.680336, 41.883060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300467, 40.574226, 41.638054>,  <29.911585, 41.185734, 41.704250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300467, 40.574226, 41.638054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.920874, 40.456253, 41.593426>,  <29.693119, 40.385468, 41.566650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.920874, 40.456253, 41.593426>,  <30.300467, 40.574226, 41.638054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920874, 40.456253, 41.593426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268474, -0.570109, -0.776465,
		0.165400, -0.766804, 0.620205,
		-0.948981, -0.294936, -0.111571,
		29.636179, 40.367771, 41.559956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336214, 39.948841, 41.483898>,  <30.300467, 40.574226, 41.638054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336214, 39.948841, 41.483898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.950930, 40.002987, 41.391029>,  <29.719759, 40.035473, 41.335308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.950930, 40.002987, 41.391029>,  <30.336214, 39.948841, 41.483898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950930, 40.002987, 41.391029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116532, -0.568103, -0.814665,
		-0.242174, -0.811748, 0.531428,
		-0.963209, 0.135363, -0.232175,
		29.661966, 40.043594, 41.321377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059858, 39.348694, 41.299850>,  <30.336214, 39.948841, 41.483898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059858, 39.348694, 41.299850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.793709, 39.587975, 41.121220>,  <29.634018, 39.731544, 41.014042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.793709, 39.587975, 41.121220>,  <30.059858, 39.348694, 41.299850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793709, 39.587975, 41.121220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198835, -0.434592, -0.878405,
		-0.719542, -0.673263, 0.170222,
		-0.665375, 0.598203, -0.446576,
		29.594097, 39.767437, 40.987247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680723, 38.868320, 40.851006>,  <30.059858, 39.348694, 41.299850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680723, 38.868320, 40.851006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.639206, 39.248810, 40.734802>,  <29.614296, 39.477104, 40.665081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.639206, 39.248810, 40.734802>,  <29.680723, 38.868320, 40.851006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639206, 39.248810, 40.734802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164586, -0.271631, -0.948224,
		-0.980887, -0.146231, -0.128366,
		-0.103791, 0.951227, -0.290506,
		29.608068, 39.534180, 40.647652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071552, 38.875370, 40.400986>,  <29.680723, 38.868320, 40.851006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071552, 38.875370, 40.400986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.307655, 39.182331, 40.300838>,  <29.449318, 39.366508, 40.240749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.307655, 39.182331, 40.300838>,  <29.071552, 38.875370, 40.400986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307655, 39.182331, 40.300838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215572, -0.448757, -0.867263,
		-0.777897, 0.457938, -0.430314,
		0.590259, 0.767405, -0.250368,
		29.484734, 39.412552, 40.225727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924795, 39.008091, 39.741394>,  <29.071552, 38.875370, 40.400986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924795, 39.008091, 39.741394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.263897, 39.217018, 39.778259>,  <29.467358, 39.342373, 39.800377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.263897, 39.217018, 39.778259>,  <28.924795, 39.008091, 39.741394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263897, 39.217018, 39.778259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221018, -0.189941, -0.956595,
		-0.482141, 0.831329, -0.276465,
		0.847756, 0.522317, 0.092161,
		29.518225, 39.373714, 39.805908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885408, 39.296871, 39.138191>,  <28.924795, 39.008091, 39.741394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885408, 39.296871, 39.138191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261583, 39.341232, 39.266739>,  <29.487289, 39.367847, 39.343868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261583, 39.341232, 39.266739>,  <28.885408, 39.296871, 39.138191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261583, 39.341232, 39.266739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336840, -0.176089, -0.924950,
		-0.045992, 0.978107, -0.202958,
		0.940438, 0.110904, 0.321367,
		29.543715, 39.374504, 39.363148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264576, 39.673206, 38.624664>,  <28.885408, 39.296871, 39.138191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264576, 39.673206, 38.624664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.550760, 39.506020, 38.848598>,  <29.722471, 39.405708, 38.982960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.550760, 39.506020, 38.848598>,  <29.264576, 39.673206, 38.624664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550760, 39.506020, 38.848598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515972, -0.224158, -0.826756,
		0.471049, 0.880373, 0.055283,
		0.715461, -0.417968, 0.559837,
		29.765398, 39.380630, 39.016548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888651, 39.908970, 38.264828>,  <29.264576, 39.673206, 38.624664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888651, 39.908970, 38.264828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.948597, 39.577457, 38.480476>,  <29.984566, 39.378548, 38.609867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.948597, 39.577457, 38.480476>,  <29.888651, 39.908970, 38.264828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948597, 39.577457, 38.480476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493566, -0.409766, -0.767127,
		0.856698, 0.381061, 0.347650,
		0.149867, -0.828785, 0.539125,
		29.993557, 39.328823, 38.642216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639997, 39.752514, 38.199848>,  <29.888651, 39.908970, 38.264828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639997, 39.752514, 38.199848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.484600, 39.407356, 38.329144>,  <30.391361, 39.200260, 38.406719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.484600, 39.407356, 38.329144>,  <30.639997, 39.752514, 38.199848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484600, 39.407356, 38.329144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567693, -0.500448, -0.653663,
		0.725808, -0.070443, 0.684281,
		-0.388493, -0.862896, 0.323240,
		30.368052, 39.148487, 38.426117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113253, 39.731529, 38.799644>,  <30.639997, 39.752514, 38.199848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113253, 39.731529, 38.799644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.243351, 39.967598, 38.504101>,  <31.321411, 40.109238, 38.326775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.243351, 39.967598, 38.504101>,  <31.113253, 39.731529, 38.799644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243351, 39.967598, 38.504101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118658, 0.749696, 0.651058,
		0.938155, -0.299427, 0.173809,
		0.325248, 0.590169, -0.738860,
		31.340925, 40.144650, 38.282444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602072, 40.222778, 39.151344>,  <31.113253, 39.731529, 38.799644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602072, 40.222778, 39.151344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513742, 40.386589, 38.797276>,  <31.460745, 40.484875, 38.584835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513742, 40.386589, 38.797276>,  <31.602072, 40.222778, 39.151344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513742, 40.386589, 38.797276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044352, 0.902417, 0.428575,
		0.974304, 0.133899, -0.181113,
		-0.220825, 0.409530, -0.885168,
		31.447495, 40.509449, 38.531727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081501, 40.831917, 39.111076>,  <31.602072, 40.222778, 39.151344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081501, 40.831917, 39.111076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758160, 40.884304, 38.881496>,  <31.564156, 40.915737, 38.743748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758160, 40.884304, 38.881496>,  <32.081501, 40.831917, 39.111076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758160, 40.884304, 38.881496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141197, 0.903348, 0.405001,
		0.571518, 0.408423, -0.711729,
		-0.808351, 0.130971, -0.573947,
		31.515654, 40.923595, 38.709312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114952, 41.500252, 38.838497>,  <32.081501, 40.831917, 39.111076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114952, 41.500252, 38.838497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.731655, 41.390163, 38.807442>,  <31.501678, 41.324108, 38.788807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.731655, 41.390163, 38.807442>,  <32.114952, 41.500252, 38.838497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731655, 41.390163, 38.807442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285245, 0.900658, 0.327796,
		-0.020290, 0.336254, -0.941553,
		-0.958240, -0.275224, -0.077640,
		31.444183, 41.307598, 38.784149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783043, 42.127117, 38.628094>,  <32.114952, 41.500252, 38.838497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783043, 42.127117, 38.628094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513624, 41.883137, 38.795090>,  <31.351973, 41.736748, 38.895287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513624, 41.883137, 38.795090>,  <31.783043, 42.127117, 38.628094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513624, 41.883137, 38.795090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471890, 0.789584, 0.392272,
		-0.568907, 0.067206, -0.819651,
		-0.673546, -0.609952, 0.417486,
		31.311560, 41.700150, 38.920334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143057, 42.482635, 38.540073>,  <31.783043, 42.127117, 38.628094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143057, 42.482635, 38.540073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100121, 42.218067, 38.836990>,  <31.074358, 42.059326, 39.015141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100121, 42.218067, 38.836990>,  <31.143057, 42.482635, 38.540073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100121, 42.218067, 38.836990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280484, 0.736428, 0.615632,
		-0.953838, -0.142118, -0.264568,
		-0.107343, -0.661420, 0.742295,
		31.067917, 42.019642, 39.059677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644480, 42.764774, 38.946133>,  <31.143057, 42.482635, 38.540073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644480, 42.764774, 38.946133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788841, 42.499794, 39.208706>,  <30.875458, 42.340805, 39.366249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788841, 42.499794, 39.208706>,  <30.644480, 42.764774, 38.946133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788841, 42.499794, 39.208706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185715, 0.638724, 0.746687,
		-0.913925, -0.391390, 0.107489,
		0.360902, -0.662454, 0.656433,
		30.897112, 42.301056, 39.405636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150051, 42.789799, 39.481754>,  <30.644480, 42.764774, 38.946133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150051, 42.789799, 39.481754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.494568, 42.643440, 39.622776>,  <30.701277, 42.555626, 39.707390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.494568, 42.643440, 39.622776>,  <30.150051, 42.789799, 39.481754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494568, 42.643440, 39.622776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075944, 0.593357, 0.801349,
		-0.502405, -0.716969, 0.483265,
		0.861291, -0.365901, 0.352555,
		30.752954, 42.533669, 39.728542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027681, 42.700649, 40.242634>,  <30.150051, 42.789799, 39.481754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027681, 42.700649, 40.242634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427677, 42.701134, 40.241066>,  <30.667675, 42.701424, 40.240124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427677, 42.701134, 40.241066>,  <30.027681, 42.700649, 40.242634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427677, 42.701134, 40.241066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003126, 0.394537, 0.918875,
		0.002661, -0.918880, 0.394529,
		0.999992, 0.001212, -0.003922,
		30.727674, 42.701496, 40.239891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218670, 42.354370, 40.798050>,  <30.027681, 42.700649, 40.242634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218670, 42.354370, 40.798050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.559391, 42.540260, 40.701332>,  <30.763823, 42.651794, 40.643299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.559391, 42.540260, 40.701332>,  <30.218670, 42.354370, 40.798050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559391, 42.540260, 40.701332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102631, 0.304586, 0.946939,
		0.513713, -0.831420, 0.211752,
		0.851801, 0.464723, -0.241799,
		30.814932, 42.679676, 40.628792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698561, 42.117966, 41.253387>,  <30.218670, 42.354370, 40.798050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698561, 42.117966, 41.253387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856697, 42.464165, 41.130344>,  <30.951578, 42.671883, 41.056519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856697, 42.464165, 41.130344>,  <30.698561, 42.117966, 41.253387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856697, 42.464165, 41.130344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049131, 0.354335, 0.933827,
		0.917220, -0.354065, 0.182605,
		0.395339, 0.865497, -0.307608,
		30.975300, 42.723812, 41.038063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200243, 42.148342, 41.747349>,  <30.698561, 42.117966, 41.253387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200243, 42.148342, 41.747349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.131842, 42.507210, 41.584457>,  <31.090801, 42.722530, 41.486721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.131842, 42.507210, 41.584457>,  <31.200243, 42.148342, 41.747349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131842, 42.507210, 41.584457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144415, 0.386033, 0.911111,
		0.974629, 0.214613, 0.063552,
		-0.171003, 0.897173, -0.407232,
		31.080542, 42.776363, 41.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767405, 42.432766, 41.932587>,  <31.200243, 42.148342, 41.747349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767405, 42.432766, 41.932587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.476360, 42.698353, 41.863621>,  <31.301733, 42.857704, 41.822239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.476360, 42.698353, 41.863621>,  <31.767405, 42.432766, 41.932587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476360, 42.698353, 41.863621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023862, 0.226691, 0.973674,
		0.685573, 0.712572, -0.149100,
		-0.727613, 0.663967, -0.172417,
		31.258076, 42.897541, 41.811897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840458, 42.914684, 42.445614>,  <31.767405, 42.432766, 41.932587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840458, 42.914684, 42.445614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.471693, 43.000404, 42.316525>,  <31.250435, 43.051838, 42.239071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.471693, 43.000404, 42.316525>,  <31.840458, 42.914684, 42.445614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471693, 43.000404, 42.316525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259870, 0.275720, 0.925444,
		0.287306, 0.937045, -0.198500,
		-0.921912, 0.214302, -0.322726,
		31.195120, 43.064693, 42.219707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214233, 43.401436, 42.099171>,  <31.840458, 42.914684, 42.445614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214233, 43.401436, 42.099171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469639, 43.709255, 42.103062>,  <32.622883, 43.893948, 42.105396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469639, 43.709255, 42.103062>,  <32.214233, 43.401436, 42.099171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469639, 43.709255, 42.103062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320807, -0.254642, -0.912272,
		-0.699563, 0.585616, -0.409469,
		0.638509, 0.769553, 0.009731,
		32.661190, 43.940121, 42.105980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086861, 43.719639, 41.484646>,  <32.214233, 43.401436, 42.099171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086861, 43.719639, 41.484646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457935, 43.801907, 41.609287>,  <32.680580, 43.851269, 41.684071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457935, 43.801907, 41.609287>,  <32.086861, 43.719639, 41.484646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457935, 43.801907, 41.609287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360971, -0.280893, -0.889269,
		-0.095368, 0.937443, -0.334821,
		0.927688, 0.205668, 0.311602,
		32.736240, 43.863605, 41.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395077, 43.931744, 40.926514>,  <32.086861, 43.719639, 41.484646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395077, 43.931744, 40.926514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721054, 43.890003, 41.154541>,  <32.916641, 43.864960, 41.291359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721054, 43.890003, 41.154541>,  <32.395077, 43.931744, 40.926514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721054, 43.890003, 41.154541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505285, -0.353794, -0.787094,
		0.283825, 0.929484, -0.235592,
		0.814942, -0.104355, 0.570070,
		32.965538, 43.858696, 41.325562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896557, 44.295170, 40.554867>,  <32.395077, 43.931744, 40.926514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896557, 44.295170, 40.554867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053070, 44.020065, 40.799450>,  <33.146976, 43.855003, 40.946198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053070, 44.020065, 40.799450>,  <32.896557, 44.295170, 40.554867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053070, 44.020065, 40.799450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443893, -0.440972, -0.780066,
		0.806136, 0.576647, 0.132749,
		0.391283, -0.687766, 0.611454,
		33.170456, 43.813736, 40.982887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641018, 44.384140, 40.438877>,  <32.896557, 44.295170, 40.554867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641018, 44.384140, 40.438877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.588001, 44.018433, 40.592007>,  <33.556190, 43.799007, 40.683884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.588001, 44.018433, 40.592007>,  <33.641018, 44.384140, 40.438877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588001, 44.018433, 40.592007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622744, -0.377292, -0.685450,
		0.771119, 0.147554, 0.619357,
		-0.132538, -0.914264, 0.382825,
		33.548241, 43.744152, 40.706856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315113, 44.095718, 40.543369>,  <33.641018, 44.384140, 40.438877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315113, 44.095718, 40.543369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.087662, 43.768158, 40.512241>,  <33.951191, 43.571621, 40.493565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.087662, 43.768158, 40.512241>,  <34.315113, 44.095718, 40.543369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087662, 43.768158, 40.512241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616597, -0.361704, -0.699270,
		0.544488, -0.445607, 0.710610,
		-0.568630, -0.818904, -0.077816,
		33.917072, 43.522488, 40.488895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735172, 43.514809, 40.471127>,  <34.315113, 44.095718, 40.543369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735172, 43.514809, 40.471127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390781, 43.370094, 40.328114>,  <34.184147, 43.283264, 40.242306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390781, 43.370094, 40.328114>,  <34.735172, 43.514809, 40.471127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390781, 43.370094, 40.328114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492080, -0.414534, -0.765519,
		0.128746, -0.835028, 0.534932,
		-0.860977, -0.361787, -0.357531,
		34.132488, 43.261559, 40.220856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949318, 42.886948, 40.197460>,  <34.735172, 43.514809, 40.471127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949318, 42.886948, 40.197460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581440, 42.930599, 40.046593>,  <34.360714, 42.956791, 39.956074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581440, 42.930599, 40.046593>,  <34.949318, 42.886948, 40.197460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581440, 42.930599, 40.046593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288863, -0.462566, -0.838207,
		-0.265937, -0.879843, 0.393896,
		-0.919694, 0.109128, -0.377167,
		34.305531, 42.963337, 39.933441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676006, 42.230309, 39.975643>,  <34.949318, 42.886948, 40.197460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676006, 42.230309, 39.975643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460072, 42.503677, 39.779068>,  <34.330509, 42.667698, 39.661121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.460072, 42.503677, 39.779068>,  <34.676006, 42.230309, 39.975643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460072, 42.503677, 39.779068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170026, -0.483256, -0.858810,
		-0.824419, -0.547176, 0.144680,
		-0.539838, 0.683420, -0.491440,
		34.298119, 42.708702, 39.631638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092934, 41.884499, 39.649418>,  <34.676006, 42.230309, 39.975643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092934, 41.884499, 39.649418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198383, 42.221550, 39.461594>,  <34.261654, 42.423779, 39.348900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198383, 42.221550, 39.461594>,  <34.092934, 41.884499, 39.649418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198383, 42.221550, 39.461594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215112, -0.525875, -0.822911,
		-0.940334, 0.115932, -0.319893,
		0.263625, 0.842624, -0.469559,
		34.277470, 42.474339, 39.320724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813679, 41.797012, 38.924644>,  <34.092934, 41.884499, 39.649418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813679, 41.797012, 38.924644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093506, 42.082500, 38.938610>,  <34.261402, 42.253792, 38.946991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093506, 42.082500, 38.938610>,  <33.813679, 41.797012, 38.924644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093506, 42.082500, 38.938610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418332, -0.369442, -0.829766,
		-0.579317, 0.595082, -0.557019,
		0.699565, 0.713716, 0.034918,
		34.303375, 42.296616, 38.949085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824173, 42.151279, 38.286793>,  <33.813679, 41.797012, 38.924644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824173, 42.151279, 38.286793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187824, 42.193844, 38.447872>,  <34.406013, 42.219383, 38.544521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187824, 42.193844, 38.447872>,  <33.824173, 42.151279, 38.286793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187824, 42.193844, 38.447872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411760, -0.375382, -0.830387,
		0.062803, 0.920742, -0.385085,
		0.909126, 0.106412, 0.402700,
		34.460564, 42.225769, 38.568684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204472, 42.442833, 37.804462>,  <33.824173, 42.151279, 38.286793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204472, 42.442833, 37.804462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483631, 42.294815, 38.049740>,  <34.651127, 42.206005, 38.196907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483631, 42.294815, 38.049740>,  <34.204472, 42.442833, 37.804462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483631, 42.294815, 38.049740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475287, -0.401188, -0.783039,
		0.535766, 0.837923, -0.104111,
		0.697895, -0.370044, 0.613197,
		34.693001, 42.183804, 38.233700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614765, 42.487228, 37.234177>,  <34.204472, 42.442833, 37.804462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614765, 42.487228, 37.234177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.719425, 42.115780, 37.128948>,  <34.782223, 41.892910, 37.065811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.719425, 42.115780, 37.128948>,  <34.614765, 42.487228, 37.234177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719425, 42.115780, 37.128948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210812, 0.320974, -0.923328,
		0.941859, 0.186128, 0.279746,
		0.261649, -0.928618, -0.263074,
		34.797920, 41.837193, 37.050026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.170815, 27.601030, 36.664936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815079, 27.421555, 36.700161>,  <26.601637, 27.313869, 36.721298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815079, 27.421555, 36.700161>,  <27.170815, 27.601030, 36.664936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815079, 27.421555, 36.700161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410392, 0.698328, -0.586443,
		0.201631, -0.557688, -0.805189,
		-0.889339, -0.448688, 0.088067,
		26.548277, 27.286947, 36.726582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909134, 27.383801, 35.981270>,  <27.170815, 27.601030, 36.664936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909134, 27.383801, 35.981270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611403, 27.450668, 36.239891>,  <26.432764, 27.490789, 36.395065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611403, 27.450668, 36.239891>,  <26.909134, 27.383801, 35.981270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611403, 27.450668, 36.239891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367423, 0.705943, -0.605512,
		-0.557651, -0.688258, -0.464033,
		-0.744329, 0.167168, 0.646552,
		26.388103, 27.500818, 36.433857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355074, 27.453672, 35.526386>,  <26.909134, 27.383801, 35.981270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355074, 27.453672, 35.526386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199234, 27.607559, 35.861099>,  <26.105730, 27.699890, 36.061928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199234, 27.607559, 35.861099>,  <26.355074, 27.453672, 35.526386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199234, 27.607559, 35.861099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526600, 0.652347, -0.545101,
		-0.755582, -0.653021, -0.051563,
		-0.389599, 0.384716, 0.836783,
		26.082354, 27.722975, 36.112133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703228, 27.580568, 35.368275>,  <26.355074, 27.453672, 35.526386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703228, 27.580568, 35.368275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765734, 27.819405, 35.682999>,  <25.803238, 27.962706, 35.871834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.765734, 27.819405, 35.682999>,  <25.703228, 27.580568, 35.368275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765734, 27.819405, 35.682999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447095, 0.753070, -0.482693,
		-0.880731, -0.276348, 0.384635,
		0.156266, 0.597091, 0.786806,
		25.812613, 27.998531, 35.919041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150307, 27.938990, 35.583889>,  <25.703228, 27.580568, 35.368275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150307, 27.938990, 35.583889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.436365, 28.164209, 35.749557>,  <25.608000, 28.299341, 35.848957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.436365, 28.164209, 35.749557>,  <25.150307, 27.938990, 35.583889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436365, 28.164209, 35.749557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392116, 0.813695, -0.429122,
		-0.578626, 0.144483, 0.802693,
		0.715148, 0.563050, 0.414171,
		25.650909, 28.333124, 35.873810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849159, 28.545620, 35.731697>,  <25.150307, 27.938990, 35.583889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849159, 28.545620, 35.731697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.217688, 28.696629, 35.768879>,  <25.438805, 28.787233, 35.791187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.217688, 28.696629, 35.768879>,  <24.849159, 28.545620, 35.731697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217688, 28.696629, 35.768879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326967, 0.881695, -0.340156,
		-0.210372, 0.283001, 0.935764,
		0.921323, 0.377523, 0.092952,
		25.494085, 28.809885, 35.796764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733055, 29.097342, 36.100384>,  <24.849159, 28.545620, 35.731697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733055, 29.097342, 36.100384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.086382, 29.169128, 35.927162>,  <25.298378, 29.212200, 35.823227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.086382, 29.169128, 35.927162>,  <24.733055, 29.097342, 36.100384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086382, 29.169128, 35.927162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248934, 0.962376, -0.108927,
		0.397216, 0.204020, 0.894760,
		0.883319, 0.179469, -0.433058,
		25.351377, 29.222969, 35.797245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809221, 29.864763, 36.187077>,  <24.733055, 29.097342, 36.100384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809221, 29.864763, 36.187077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.080574, 29.759407, 35.912727>,  <25.243385, 29.696194, 35.748119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.080574, 29.759407, 35.912727>,  <24.809221, 29.864763, 36.187077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080574, 29.759407, 35.912727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043741, 0.946353, -0.320160,
		0.733407, 0.187189, 0.653509,
		0.678381, -0.263393, -0.685874,
		25.284088, 29.680389, 35.706966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465593, 30.443993, 36.170319>,  <24.809221, 29.864763, 36.187077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465593, 30.443993, 36.170319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.436085, 30.239111, 35.828041>,  <25.418381, 30.116182, 35.622677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.436085, 30.239111, 35.828041>,  <25.465593, 30.443993, 36.170319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436085, 30.239111, 35.828041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006737, 0.858264, -0.513165,
		0.997253, -0.032092, -0.066765,
		-0.073770, -0.512205, -0.855690,
		25.413954, 30.085449, 35.571335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080683, 30.732868, 35.755970>,  <25.465593, 30.443993, 36.170319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080683, 30.732868, 35.755970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823807, 30.540520, 35.517189>,  <25.669682, 30.425110, 35.373920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823807, 30.540520, 35.517189>,  <26.080683, 30.732868, 35.755970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823807, 30.540520, 35.517189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006427, 0.775355, -0.631493,
		0.766503, -0.409387, -0.494849,
		-0.642209, -0.480861, -0.596943,
		25.631149, 30.396257, 35.338104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350035, 30.753202, 35.093338>,  <26.080683, 30.732868, 35.755970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350035, 30.753202, 35.093338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.982744, 30.659483, 34.965611>,  <25.762369, 30.603252, 34.888973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.982744, 30.659483, 34.965611>,  <26.350035, 30.753202, 35.093338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982744, 30.659483, 34.965611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045005, 0.739305, -0.671866,
		0.393491, -0.631296, -0.668304,
		-0.918226, -0.234296, -0.319321,
		25.707277, 30.589193, 34.869816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383297, 30.837317, 34.378258>,  <26.350035, 30.753202, 35.093338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383297, 30.837317, 34.378258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017723, 30.884333, 34.533646>,  <25.798380, 30.912542, 34.626881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017723, 30.884333, 34.533646>,  <26.383297, 30.837317, 34.378258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017723, 30.884333, 34.533646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064514, 0.902903, -0.424975,
		-0.400705, -0.413460, -0.817610,
		-0.913933, 0.117542, 0.388472,
		25.743544, 30.919596, 34.650188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081875, 30.995831, 33.715057>,  <26.383297, 30.837317, 34.378258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081875, 30.995831, 33.715057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854973, 31.097729, 34.028320>,  <25.718832, 31.158869, 34.216278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.854973, 31.097729, 34.028320>,  <26.081875, 30.995831, 33.715057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854973, 31.097729, 34.028320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139468, 0.907503, -0.396215,
		-0.811648, -0.333979, -0.479255,
		-0.567253, 0.254747, 0.783153,
		25.684797, 31.174152, 34.263268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416048, 31.298061, 33.555767>,  <26.081875, 30.995831, 33.715057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416048, 31.298061, 33.555767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.443537, 31.448057, 33.925560>,  <25.460030, 31.538054, 34.147434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.443537, 31.448057, 33.925560>,  <25.416048, 31.298061, 33.555767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443537, 31.448057, 33.925560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081544, 0.925681, -0.369413,
		-0.994297, -0.049999, 0.094194,
		0.068724, 0.374987, 0.924479,
		25.464153, 31.560553, 34.202904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883718, 31.799452, 33.611732>,  <25.416048, 31.298061, 33.555767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883718, 31.799452, 33.611732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.168550, 31.891563, 33.877037>,  <25.339449, 31.946831, 34.036221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.168550, 31.891563, 33.877037>,  <24.883718, 31.799452, 33.611732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168550, 31.891563, 33.877037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064236, 0.962088, -0.265068,
		-0.699153, 0.146145, 0.699876,
		0.712081, 0.230280, 0.663259,
		25.382175, 31.960648, 34.076015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674232, 32.467007, 33.916855>,  <24.883718, 31.799452, 33.611732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674232, 32.467007, 33.916855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.067459, 32.420284, 33.973328>,  <25.303396, 32.392250, 34.007210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.067459, 32.420284, 33.973328>,  <24.674232, 32.467007, 33.916855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067459, 32.420284, 33.973328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144474, 0.968017, -0.205113,
		-0.112708, 0.222037, 0.968502,
		0.983069, -0.116806, 0.141182,
		25.362379, 32.385242, 34.015682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902966, 33.079544, 34.349316>,  <24.674232, 32.467007, 33.916855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902966, 33.079544, 34.349316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.248363, 32.920242, 34.225529>,  <25.455603, 32.824661, 34.151257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.248363, 32.920242, 34.225529>,  <24.902966, 33.079544, 34.349316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248363, 32.920242, 34.225529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341756, 0.913263, -0.221707,
		0.370917, 0.085682, 0.924705,
		0.863495, -0.398258, -0.309463,
		25.507412, 32.800766, 34.132690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430565, 33.347343, 34.781021>,  <24.902966, 33.079544, 34.349316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430565, 33.347343, 34.781021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.564465, 33.239937, 34.419727>,  <25.644804, 33.175491, 34.202950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.564465, 33.239937, 34.419727>,  <25.430565, 33.347343, 34.781021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564465, 33.239937, 34.419727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418395, 0.901226, -0.112861,
		0.844327, -0.340131, 0.414032,
		0.334749, -0.268521, -0.903238,
		25.664888, 33.159382, 34.148754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152615, 33.510990, 34.803898>,  <25.430565, 33.347343, 34.781021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152615, 33.510990, 34.803898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030022, 33.491222, 34.423660>,  <25.956465, 33.479362, 34.195518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030022, 33.491222, 34.423660>,  <26.152615, 33.510990, 34.803898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030022, 33.491222, 34.423660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224311, 0.966778, -0.122579,
		0.925069, -0.250797, -0.285216,
		-0.306483, -0.049417, -0.950592,
		25.938076, 33.476398, 34.138481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573503, 33.947369, 34.524761>,  <26.152615, 33.510990, 34.803898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573503, 33.947369, 34.524761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320761, 33.875759, 34.223110>,  <26.169115, 33.832794, 34.042122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320761, 33.875759, 34.223110>,  <26.573503, 33.947369, 34.524761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320761, 33.875759, 34.223110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143865, 0.928963, -0.341073,
		0.761615, -0.324002, -0.561218,
		-0.631859, -0.179027, -0.754124,
		26.131203, 33.822052, 33.996872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960646, 34.124657, 33.825859>,  <26.573503, 33.947369, 34.524761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960646, 34.124657, 33.825859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564020, 34.144360, 33.777893>,  <26.326046, 34.156181, 33.749115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564020, 34.144360, 33.777893>,  <26.960646, 34.124657, 33.825859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564020, 34.144360, 33.777893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079896, 0.960644, -0.266043,
		0.102090, -0.273379, -0.956473,
		-0.991561, 0.049258, -0.119914,
		26.266552, 34.159138, 33.741920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845407, 34.617168, 33.237309>,  <26.960646, 34.124657, 33.825859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845407, 34.617168, 33.237309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.500641, 34.616249, 33.440128>,  <26.293781, 34.615696, 33.561821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.500641, 34.616249, 33.440128>,  <26.845407, 34.617168, 33.237309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500641, 34.616249, 33.440128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042921, 0.996731, -0.068442,
		-0.505231, -0.080755, -0.859197,
		-0.861916, -0.002299, 0.507046,
		26.242065, 34.615559, 33.592243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563942, 34.971901, 33.141254>,  <26.845407, 34.617168, 33.237309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563942, 34.971901, 33.141254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793600, 34.926273, 32.816948>,  <27.931395, 34.898895, 32.622364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793600, 34.926273, 32.816948>,  <27.563942, 34.971901, 33.141254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793600, 34.926273, 32.816948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031310, -0.992581, 0.117481,
		-0.818154, -0.042066, -0.573458,
		0.574146, -0.114073, -0.810767,
		27.965843, 34.892052, 32.573719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213808, 34.463104, 32.574299>,  <27.563942, 34.971901, 33.141254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213808, 34.463104, 32.574299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609959, 34.480354, 32.521690>,  <27.847649, 34.490704, 32.490124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609959, 34.480354, 32.521690>,  <27.213808, 34.463104, 32.574299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609959, 34.480354, 32.521690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062017, -0.987764, 0.143095,
		-0.123744, -0.149874, -0.980931,
		0.990374, 0.043128, -0.131524,
		27.907070, 34.493294, 32.482231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481817, 33.878441, 32.189026>,  <27.213808, 34.463104, 32.574299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481817, 33.878441, 32.189026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826107, 34.008701, 32.345539>,  <28.032681, 34.086857, 32.439445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826107, 34.008701, 32.345539>,  <27.481817, 33.878441, 32.189026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826107, 34.008701, 32.345539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283857, -0.945062, 0.162122,
		0.422582, -0.028474, -0.905877,
		0.860726, 0.325649, 0.391284,
		28.084326, 34.106396, 32.462925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984694, 33.475178, 31.850346>,  <27.481817, 33.878441, 32.189026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984694, 33.475178, 31.850346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136002, 33.608013, 32.195976>,  <28.226788, 33.687714, 32.403355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136002, 33.608013, 32.195976>,  <27.984694, 33.475178, 31.850346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136002, 33.608013, 32.195976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424231, -0.891833, 0.157043,
		0.822763, 0.307162, -0.478239,
		0.378271, 0.332093, 0.864075,
		28.249483, 33.707642, 32.455200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503258, 33.025253, 31.917536>,  <27.984694, 33.475178, 31.850346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503258, 33.025253, 31.917536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478018, 33.184196, 32.283733>,  <28.462873, 33.279564, 32.503452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478018, 33.184196, 32.283733>,  <28.503258, 33.025253, 31.917536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478018, 33.184196, 32.283733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154122, -0.902436, 0.402313,
		0.986035, 0.166483, -0.004299,
		-0.063099, 0.397357, 0.915492,
		28.459087, 33.303402, 32.558380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963814, 32.711258, 32.287182>,  <28.503258, 33.025253, 31.917536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963814, 32.711258, 32.287182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.767866, 32.840332, 32.611134>,  <28.650297, 32.917778, 32.805504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.767866, 32.840332, 32.611134>,  <28.963814, 32.711258, 32.287182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767866, 32.840332, 32.611134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376445, -0.759611, 0.530359,
		0.786332, 0.564681, 0.250636,
		-0.489869, 0.322687, 0.809877,
		28.620905, 32.937138, 32.854095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471861, 32.711403, 32.836910>,  <28.963814, 32.711258, 32.287182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471861, 32.711403, 32.836910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113712, 32.709892, 33.015034>,  <28.898823, 32.708984, 33.121906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113712, 32.709892, 33.015034>,  <29.471861, 32.711403, 32.836910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113712, 32.709892, 33.015034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259582, -0.816932, 0.515014,
		0.361840, 0.576721, 0.732437,
		-0.895371, -0.003775, 0.445305,
		28.845100, 32.708759, 33.148624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560757, 32.714657, 33.546059>,  <29.471861, 32.711403, 32.836910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560757, 32.714657, 33.546059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187662, 32.581383, 33.490932>,  <28.963806, 32.501419, 33.457859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187662, 32.581383, 33.490932>,  <29.560757, 32.714657, 33.546059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187662, 32.581383, 33.490932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149586, -0.705352, 0.692895,
		-0.328067, 0.625673, 0.707746,
		-0.932736, -0.333185, -0.137811,
		28.907841, 32.481426, 33.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332033, 32.736679, 34.191151>,  <29.560757, 32.714657, 33.546059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332033, 32.736679, 34.191151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107262, 32.484699, 33.976711>,  <28.972399, 32.333511, 33.848049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107262, 32.484699, 33.976711>,  <29.332033, 32.736679, 34.191151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107262, 32.484699, 33.976711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161875, -0.719315, 0.675561,
		-0.811193, 0.292836, 0.506176,
		-0.561928, -0.629947, -0.536100,
		28.938683, 32.295715, 33.815880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205746, 32.229820, 34.645065>,  <29.332033, 32.736679, 34.191151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205746, 32.229820, 34.645065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080742, 32.011215, 34.334282>,  <29.005739, 31.880053, 34.147812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.080742, 32.011215, 34.334282>,  <29.205746, 32.229820, 34.645065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080742, 32.011215, 34.334282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137405, -0.835327, 0.532305,
		-0.939924, 0.059594, 0.336143,
		-0.312512, -0.546514, -0.776955,
		28.986988, 31.847261, 34.101196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873714, 31.647005, 35.017578>,  <29.205746, 32.229820, 34.645065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873714, 31.647005, 35.017578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911478, 31.511656, 34.643074>,  <28.934135, 31.430447, 34.418369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911478, 31.511656, 34.643074>,  <28.873714, 31.647005, 35.017578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911478, 31.511656, 34.643074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118223, -0.929999, 0.348031,
		-0.988489, -0.143545, -0.047797,
		0.094409, -0.338374, -0.936264,
		28.939800, 31.410143, 34.362194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373615, 31.235258, 34.986130>,  <28.873714, 31.647005, 35.017578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373615, 31.235258, 34.986130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654999, 31.131020, 34.721634>,  <28.823828, 31.068478, 34.562935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654999, 31.131020, 34.721634>,  <28.373615, 31.235258, 34.986130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654999, 31.131020, 34.721634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143752, -0.963297, 0.226704,
		-0.696049, -0.064422, -0.715098,
		0.703457, -0.260594, -0.661241,
		28.866035, 31.052841, 34.523262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072653, 30.772308, 34.508156>,  <28.373615, 31.235258, 34.986130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072653, 30.772308, 34.508156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.462147, 30.683462, 34.488125>,  <28.695843, 30.630154, 34.476109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.462147, 30.683462, 34.488125>,  <28.072653, 30.772308, 34.508156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462147, 30.683462, 34.488125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187010, -0.905631, 0.380605,
		-0.129888, -0.361243, -0.923381,
		0.973733, -0.222117, -0.050075,
		28.754267, 30.616827, 34.473103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108828, 30.058704, 34.347061>,  <28.072653, 30.772308, 34.508156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108828, 30.058704, 34.347061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474981, 30.130884, 34.491009>,  <28.694674, 30.174192, 34.577377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474981, 30.130884, 34.491009>,  <28.108828, 30.058704, 34.347061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474981, 30.130884, 34.491009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022967, -0.915866, 0.400827,
		0.401921, -0.358646, -0.842515,
		0.915386, 0.180451, 0.359869,
		28.749598, 30.185020, 34.598969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509815, 29.436855, 34.112968>,  <28.108828, 30.058704, 34.347061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509815, 29.436855, 34.112968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696186, 29.610027, 34.421638>,  <28.808008, 29.713930, 34.606842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696186, 29.610027, 34.421638>,  <28.509815, 29.436855, 34.112968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696186, 29.610027, 34.421638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051993, -0.884013, 0.464561,
		0.883294, -0.176329, -0.434395,
		0.465927, 0.432930, 0.771676,
		28.835964, 29.739906, 34.653141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998915, 28.999889, 34.165581>,  <28.509815, 29.436855, 34.112968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998915, 28.999889, 34.165581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047150, 29.193604, 34.512203>,  <29.076092, 29.309832, 34.720177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047150, 29.193604, 34.512203>,  <28.998915, 28.999889, 34.165581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047150, 29.193604, 34.512203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017993, -0.873852, 0.485860,
		0.992540, -0.042997, -0.114090,
		0.120589, 0.484288, 0.866559,
		29.083326, 29.338890, 34.772171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576159, 28.758699, 34.433426>,  <28.998915, 28.999889, 34.165581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576159, 28.758699, 34.433426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356928, 28.897137, 34.738014>,  <29.225389, 28.980200, 34.920765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356928, 28.897137, 34.738014>,  <29.576159, 28.758699, 34.433426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356928, 28.897137, 34.738014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107185, -0.873813, 0.474303,
		0.829532, 0.341572, 0.441821,
		-0.548077, 0.346092, 0.761467,
		29.192505, 29.000965, 34.966454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922535, 28.658579, 35.080387>,  <29.576159, 28.758699, 34.433426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922535, 28.658579, 35.080387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546917, 28.666632, 35.217670>,  <29.321547, 28.671463, 35.300041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546917, 28.666632, 35.217670>,  <29.922535, 28.658579, 35.080387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546917, 28.666632, 35.217670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190383, -0.800790, 0.567882,
		0.286271, 0.598607, 0.748144,
		-0.939044, 0.020134, 0.343208,
		29.265203, 28.672672, 35.320633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976185, 28.326359, 35.693050>,  <29.922535, 28.658579, 35.080387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976185, 28.326359, 35.693050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585472, 28.317690, 35.607800>,  <29.351044, 28.312489, 35.556648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585472, 28.317690, 35.607800>,  <29.976185, 28.326359, 35.693050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585472, 28.317690, 35.607800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064169, -0.919594, 0.387594,
		-0.204392, 0.392271, 0.896854,
		-0.976784, -0.021671, -0.213129,
		29.292437, 28.311188, 35.543861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603931, 27.967842, 36.312042>,  <29.976185, 28.326359, 35.693050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603931, 27.967842, 36.312042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350872, 27.933126, 36.004219>,  <29.199038, 27.912296, 35.819523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350872, 27.933126, 36.004219>,  <29.603931, 27.967842, 36.312042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350872, 27.933126, 36.004219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013483, -0.994784, 0.101104,
		-0.774323, 0.053587, 0.630518,
		-0.632647, -0.086789, -0.769562,
		29.161077, 27.907089, 35.773350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.475002, 43.452698, 43.776451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198162, 43.173615, 43.850433>,  <35.032059, 43.006165, 43.894821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198162, 43.173615, 43.850433>,  <35.475002, 43.452698, 43.776451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198162, 43.173615, 43.850433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466162, 0.627687, 0.623460,
		-0.551085, 0.345277, -0.759664,
		-0.692098, -0.697706, 0.184954,
		34.990532, 42.964302, 43.905918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940151, 43.867188, 43.981266>,  <35.475002, 43.452698, 43.776451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940151, 43.867188, 43.981266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822315, 43.505032, 44.103565>,  <34.751614, 43.287739, 44.176945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822315, 43.505032, 44.103565>,  <34.940151, 43.867188, 43.981266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822315, 43.505032, 44.103565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460493, 0.414841, 0.784763,
		-0.837356, 0.090385, -0.539134,
		-0.294586, -0.905393, 0.305748,
		34.733940, 43.233414, 44.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244812, 43.955757, 44.056683>,  <34.940151, 43.867188, 43.981266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244812, 43.955757, 44.056683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389755, 43.653404, 44.274799>,  <34.476723, 43.471992, 44.405670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389755, 43.653404, 44.274799>,  <34.244812, 43.955757, 44.056683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389755, 43.653404, 44.274799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346247, 0.434013, 0.831713,
		-0.865337, -0.490186, -0.104451,
		0.362360, -0.755877, 0.545293,
		34.498463, 43.426640, 44.438389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679070, 43.594749, 44.542431>,  <34.244812, 43.955757, 44.056683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679070, 43.594749, 44.542431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040028, 43.560810, 44.711422>,  <34.256603, 43.540447, 44.812817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040028, 43.560810, 44.711422>,  <33.679070, 43.594749, 44.542431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040028, 43.560810, 44.711422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348971, 0.431283, 0.831994,
		-0.252801, -0.898218, 0.359576,
		0.902392, -0.084847, 0.422481,
		34.310745, 43.535355, 44.838165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448574, 43.718296, 45.183880>,  <33.679070, 43.594749, 44.542431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448574, 43.718296, 45.183880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845150, 43.683693, 45.223003>,  <34.083096, 43.662930, 45.246475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845150, 43.683693, 45.223003>,  <33.448574, 43.718296, 45.183880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845150, 43.683693, 45.223003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056981, 0.387327, 0.920180,
		-0.117487, -0.917875, 0.379082,
		0.991438, -0.086509, 0.097807,
		34.142582, 43.657742, 45.252346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599033, 43.269951, 45.672665>,  <33.448574, 43.718296, 45.183880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599033, 43.269951, 45.672665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897636, 43.533562, 45.635990>,  <34.076797, 43.691727, 45.613987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897636, 43.533562, 45.635990>,  <33.599033, 43.269951, 45.672665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897636, 43.533562, 45.635990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091794, 0.238479, 0.966800,
		0.659010, -0.713311, 0.238522,
		0.746512, 0.659025, -0.091682,
		34.121590, 43.731270, 45.608486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956806, 43.326485, 46.407776>,  <33.599033, 43.269951, 45.672665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956806, 43.326485, 46.407776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085102, 43.650814, 46.211945>,  <34.162079, 43.845413, 46.094444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085102, 43.650814, 46.211945>,  <33.956806, 43.326485, 46.407776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085102, 43.650814, 46.211945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070383, 0.495057, 0.866005,
		0.944550, -0.312217, 0.101714,
		0.320735, 0.810826, -0.489581,
		34.181324, 43.894062, 46.065071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586300, 43.560101, 46.819275>,  <33.956806, 43.326485, 46.407776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586300, 43.560101, 46.819275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458805, 43.859627, 46.586834>,  <34.382309, 44.039341, 46.447369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458805, 43.859627, 46.586834>,  <34.586300, 43.560101, 46.819275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458805, 43.859627, 46.586834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062578, 0.595119, 0.801198,
		0.945774, 0.291739, -0.142830,
		-0.318741, 0.748814, -0.581104,
		34.363182, 44.084270, 46.412502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963860, 44.214123, 46.945465>,  <34.586300, 43.560101, 46.819275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963860, 44.214123, 46.945465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632511, 44.365719, 46.780464>,  <34.433701, 44.456676, 46.681461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632511, 44.365719, 46.780464>,  <34.963860, 44.214123, 46.945465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632511, 44.365719, 46.780464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141346, 0.571142, 0.808590,
		0.542050, 0.728121, -0.419550,
		-0.828374, 0.378994, -0.412505,
		34.383999, 44.479416, 46.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050236, 44.936146, 46.966888>,  <34.963860, 44.214123, 46.945465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050236, 44.936146, 46.966888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655243, 44.919823, 46.905945>,  <34.418247, 44.910030, 46.869377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655243, 44.919823, 46.905945>,  <35.050236, 44.936146, 46.966888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655243, 44.919823, 46.905945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138539, 0.686126, 0.714169,
		0.075396, 0.726337, -0.683191,
		-0.987483, -0.040803, -0.152358,
		34.358997, 44.907581, 46.860237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821770, 45.671837, 46.972992>,  <35.050236, 44.936146, 46.966888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821770, 45.671837, 46.972992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522842, 45.425819, 47.073578>,  <34.343487, 45.278210, 47.133930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522842, 45.425819, 47.073578>,  <34.821770, 45.671837, 46.972992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522842, 45.425819, 47.073578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102411, 0.480540, 0.870972,
		-0.656530, 0.625138, -0.422103,
		-0.747315, -0.615047, 0.251468,
		34.298649, 45.241306, 47.149017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404518, 46.096058, 47.366634>,  <34.821770, 45.671837, 46.972992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404518, 46.096058, 47.366634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230949, 45.747272, 47.457310>,  <34.126808, 45.538002, 47.511715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230949, 45.747272, 47.457310>,  <34.404518, 46.096058, 47.366634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230949, 45.747272, 47.457310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349495, 0.394819, 0.849689,
		-0.830401, 0.289471, -0.476068,
		-0.433921, -0.871966, 0.226690,
		34.100773, 45.485683, 47.525318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768139, 46.596539, 47.427048>,  <34.404518, 46.096058, 47.366634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768139, 46.596539, 47.427048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824306, 46.847008, 47.733822>,  <33.858006, 46.997292, 47.917885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824306, 46.847008, 47.733822>,  <33.768139, 46.596539, 47.427048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824306, 46.847008, 47.733822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779042, 0.547932, -0.304736,
		-0.611046, -0.554682, 0.564757,
		0.140417, 0.626177, 0.766932,
		33.866432, 47.034863, 47.963902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139717, 46.823181, 47.843208>,  <33.768139, 46.596539, 47.427048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139717, 46.823181, 47.843208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420441, 47.107822, 47.829990>,  <33.588875, 47.278606, 47.822060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420441, 47.107822, 47.829990>,  <33.139717, 46.823181, 47.843208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420441, 47.107822, 47.829990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633557, 0.602292, -0.485644,
		-0.325683, 0.361763, 0.873532,
		0.701809, 0.711598, -0.033041,
		33.630985, 47.321301, 47.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770355, 47.120747, 47.184055>,  <33.139717, 46.823181, 47.843208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770355, 47.120747, 47.184055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407585, 47.183971, 47.027851>,  <32.189922, 47.221905, 46.934128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407585, 47.183971, 47.027851>,  <32.770355, 47.120747, 47.184055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407585, 47.183971, 47.027851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132778, -0.772466, -0.621020,
		-0.399818, -0.615071, 0.679583,
		-0.906927, 0.158061, -0.390513,
		32.135506, 47.231388, 46.910698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528915, 46.454479, 47.003372>,  <32.770355, 47.120747, 47.184055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528915, 46.454479, 47.003372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281269, 46.696007, 46.802536>,  <32.132679, 46.840923, 46.682034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.281269, 46.696007, 46.802536>,  <32.528915, 46.454479, 47.003372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281269, 46.696007, 46.802536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065639, -0.676916, -0.733128,
		-0.782548, -0.420937, 0.458726,
		-0.619120, 0.603818, -0.502090,
		32.095531, 46.877151, 46.651909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973799, 45.988937, 46.842426>,  <32.528915, 46.454479, 47.003372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973799, 45.988937, 46.842426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.990139, 46.293827, 46.584015>,  <31.999943, 46.476761, 46.428970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.990139, 46.293827, 46.584015>,  <31.973799, 45.988937, 46.842426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990139, 46.293827, 46.584015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119895, -0.645631, -0.754179,
		-0.991946, -0.046646, -0.117762,
		0.040851, 0.762223, -0.646024,
		32.002396, 46.522495, 46.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468332, 45.873051, 46.256283>,  <31.973799, 45.988937, 46.842426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468332, 45.873051, 46.256283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708889, 46.143852, 46.086582>,  <31.853224, 46.306335, 45.984760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708889, 46.143852, 46.086582>,  <31.468332, 45.873051, 46.256283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708889, 46.143852, 46.086582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057018, -0.493288, -0.867995,
		-0.796917, 0.546196, -0.258057,
		0.601392, 0.677006, -0.424253,
		31.889307, 46.346954, 45.959305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198309, 45.898006, 45.705719>,  <31.468332, 45.873051, 46.256283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198309, 45.898006, 45.705719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566029, 46.042160, 45.642452>,  <31.786659, 46.128651, 45.604492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566029, 46.042160, 45.642452>,  <31.198309, 45.898006, 45.705719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566029, 46.042160, 45.642452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042641, -0.490733, -0.870266,
		-0.391247, 0.793289, -0.466496,
		0.919297, 0.360381, -0.158171,
		31.841818, 46.150276, 45.595001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142675, 46.048199, 44.959904>,  <31.198309, 45.898006, 45.705719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142675, 46.048199, 44.959904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533989, 46.095249, 45.028172>,  <31.768776, 46.123478, 45.069134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.533989, 46.095249, 45.028172>,  <31.142675, 46.048199, 44.959904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533989, 46.095249, 45.028172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207275, -0.553957, -0.806330,
		-0.000300, 0.824194, -0.566307,
		0.978283, 0.117624, 0.170669,
		31.827475, 46.130535, 45.079372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452686, 46.443489, 44.398129>,  <31.142675, 46.048199, 44.959904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452686, 46.443489, 44.398129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698051, 46.188568, 44.584705>,  <31.845270, 46.035614, 44.696651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698051, 46.188568, 44.584705>,  <31.452686, 46.443489, 44.398129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698051, 46.188568, 44.584705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103089, -0.520948, -0.847340,
		0.783005, 0.567855, -0.253858,
		0.613413, -0.637302, 0.466444,
		31.882076, 45.997379, 44.724640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963144, 46.379013, 43.927700>,  <31.452686, 46.443489, 44.398129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963144, 46.379013, 43.927700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051434, 46.070511, 44.166512>,  <32.104408, 45.885410, 44.309799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051434, 46.070511, 44.166512>,  <31.963144, 46.379013, 43.927700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051434, 46.070511, 44.166512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291387, -0.532028, -0.795009,
		0.930792, 0.349445, 0.107303,
		0.220723, -0.771255, 0.597032,
		32.117649, 45.839134, 44.345619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531994, 46.088921, 43.540390>,  <31.963144, 46.379013, 43.927700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531994, 46.088921, 43.540390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428600, 45.798443, 43.795208>,  <32.366566, 45.624157, 43.948101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428600, 45.798443, 43.795208>,  <32.531994, 46.088921, 43.540390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428600, 45.798443, 43.795208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248548, -0.687253, -0.682574,
		0.933495, -0.018094, 0.358134,
		-0.258480, -0.726193, 0.637050,
		32.351055, 45.580585, 43.986324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077003, 45.638290, 43.625443>,  <32.531994, 46.088921, 43.540390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077003, 45.638290, 43.625443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757870, 45.415684, 43.718182>,  <32.566391, 45.282120, 43.773827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757870, 45.415684, 43.718182>,  <33.077003, 45.638290, 43.625443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757870, 45.415684, 43.718182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324644, -0.720630, -0.612617,
		0.508010, -0.413496, 0.755611,
		-0.797830, -0.556520, 0.231848,
		32.518520, 45.248730, 43.787735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373360, 44.927448, 43.667183>,  <33.077003, 45.638290, 43.625443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373360, 44.927448, 43.667183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977882, 44.891205, 43.619389>,  <32.740597, 44.869461, 43.590714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977882, 44.891205, 43.619389>,  <33.373360, 44.927448, 43.667183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977882, 44.891205, 43.619389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149303, -0.669023, -0.728091,
		-0.013969, -0.737698, 0.674987,
		-0.988693, -0.090607, -0.119486,
		32.681274, 44.864021, 43.583542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284363, 44.285553, 43.622982>,  <33.373360, 44.927448, 43.667183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284363, 44.285553, 43.622982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954498, 44.419403, 43.440571>,  <32.756580, 44.499714, 43.331123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954498, 44.419403, 43.440571>,  <33.284363, 44.285553, 43.622982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954498, 44.419403, 43.440571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168748, -0.623965, -0.763015,
		-0.539868, -0.706183, 0.458093,
		-0.824662, 0.334625, -0.456026,
		32.707100, 44.519791, 43.303764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967419, 43.633858, 43.404297>,  <33.284363, 44.285553, 43.622982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967419, 43.633858, 43.404297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836998, 43.956013, 43.206287>,  <32.758747, 44.149303, 43.087482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836998, 43.956013, 43.206287>,  <32.967419, 43.633858, 43.404297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836998, 43.956013, 43.206287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016170, -0.518814, -0.854734,
		-0.945215, -0.286689, 0.156134,
		-0.326047, 0.805383, -0.495026,
		32.739185, 44.197628, 43.057781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405392, 43.388561, 42.841747>,  <32.967419, 43.633858, 43.404297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405392, 43.388561, 42.841747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.545815, 43.732330, 42.693073>,  <32.630066, 43.938591, 42.603870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.545815, 43.732330, 42.693073>,  <32.405392, 43.388561, 42.841747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545815, 43.732330, 42.693073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048827, -0.413209, -0.909326,
		-0.935081, 0.301074, -0.187022,
		0.351054, 0.859426, -0.371684,
		32.651131, 43.990158, 42.581570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662745, 43.546280, 42.824265>,  <32.405392, 43.388561, 42.841747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662745, 43.546280, 42.824265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298882, 43.446606, 42.691345>,  <31.080563, 43.386799, 42.611591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.298882, 43.446606, 42.691345>,  <31.662745, 43.546280, 42.824265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298882, 43.446606, 42.691345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412255, 0.444113, 0.795493,
		-0.050648, 0.860621, -0.506721,
		-0.909660, -0.249188, -0.332302,
		31.025984, 43.371849, 42.591656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172844, 44.164482, 42.844189>,  <31.662745, 43.546280, 42.824265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172844, 44.164482, 42.844189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971277, 43.819489, 42.862877>,  <30.850338, 43.612492, 42.874092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.971277, 43.819489, 42.862877>,  <31.172844, 44.164482, 42.844189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971277, 43.819489, 42.862877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375036, 0.267206, 0.887665,
		-0.778086, 0.429784, -0.458113,
		-0.503915, -0.862489, 0.046725,
		30.820103, 43.560741, 42.876896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470488, 44.395931, 43.126289>,  <31.172844, 44.164482, 42.844189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470488, 44.395931, 43.126289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491022, 43.997917, 43.160400>,  <30.503344, 43.759109, 43.180866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491022, 43.997917, 43.160400>,  <30.470488, 44.395931, 43.126289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491022, 43.997917, 43.160400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313175, 0.065048, 0.947465,
		-0.948307, -0.075347, -0.308281,
		0.051336, -0.995033, 0.085282,
		30.506422, 43.699406, 43.185986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827244, 44.172253, 43.265285>,  <30.470488, 44.395931, 43.126289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827244, 44.172253, 43.265285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.070927, 43.887196, 43.404430>,  <30.217136, 43.716164, 43.487919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.070927, 43.887196, 43.404430>,  <29.827244, 44.172253, 43.265285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070927, 43.887196, 43.404430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396333, 0.106337, 0.911928,
		-0.686867, -0.693425, -0.217661,
		0.609208, -0.712639, 0.347867,
		30.253689, 43.673405, 43.508789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420868, 43.748192, 43.648869>,  <29.827244, 44.172253, 43.265285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420868, 43.748192, 43.648869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791222, 43.668980, 43.777569>,  <30.013433, 43.621452, 43.854790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791222, 43.668980, 43.777569>,  <29.420868, 43.748192, 43.648869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791222, 43.668980, 43.777569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295006, 0.153096, 0.943151,
		-0.236031, -0.968166, 0.083329,
		0.925884, -0.198030, 0.321750,
		30.068987, 43.609570, 43.874092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362825, 43.289661, 44.179810>,  <29.420868, 43.748192, 43.648869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362825, 43.289661, 44.179810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.731760, 43.416985, 44.267422>,  <29.953121, 43.493378, 44.319988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.731760, 43.416985, 44.267422>,  <29.362825, 43.289661, 44.179810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731760, 43.416985, 44.267422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314633, 0.289667, 0.903935,
		0.224282, -0.902648, 0.367321,
		0.922336, 0.318307, 0.219036,
		30.008461, 43.512478, 44.333134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389894, 43.198101, 44.875088>,  <29.362825, 43.289661, 44.179810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389894, 43.198101, 44.875088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690802, 43.451424, 44.802406>,  <29.871346, 43.603416, 44.758797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690802, 43.451424, 44.802406>,  <29.389894, 43.198101, 44.875088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690802, 43.451424, 44.802406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219371, 0.500806, 0.837299,
		0.621268, -0.590010, 0.515669,
		0.752265, 0.633309, -0.181703,
		29.916481, 43.641415, 44.747894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555984, 42.573837, 45.364506>,  <29.389894, 43.198101, 44.875088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555984, 42.573837, 45.364506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187204, 42.422352, 45.396954>,  <28.965937, 42.331459, 45.416424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187204, 42.422352, 45.396954>,  <29.555984, 42.573837, 45.364506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187204, 42.422352, 45.396954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160010, -0.563181, -0.810693,
		0.352707, -0.734439, 0.579824,
		-0.921951, -0.378715, 0.081120,
		28.910620, 42.308739, 45.421291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628593, 41.972664, 45.075253>,  <29.555984, 42.573837, 45.364506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628593, 41.972664, 45.075253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236523, 41.922752, 45.136810>,  <29.001280, 41.892803, 45.173744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236523, 41.922752, 45.136810>,  <29.628593, 41.972664, 45.075253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236523, 41.922752, 45.136810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018378, -0.716126, -0.697729,
		0.197271, -0.686726, 0.699636,
		-0.980177, -0.124784, 0.153892,
		28.942471, 41.885319, 45.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587543, 41.256119, 45.310093>,  <29.628593, 41.972664, 45.075253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587543, 41.256119, 45.310093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255157, 41.391750, 45.133675>,  <29.055725, 41.473129, 45.027824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255157, 41.391750, 45.133675>,  <29.587543, 41.256119, 45.310093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255157, 41.391750, 45.133675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109482, -0.677610, -0.727227,
		-0.545444, -0.652587, 0.525948,
		-0.830967, 0.339080, -0.441045,
		29.005869, 41.493473, 45.001362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308352, 40.707127, 44.924328>,  <29.587543, 41.256119, 45.310093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308352, 40.707127, 44.924328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.099539, 41.014690, 44.776676>,  <28.974251, 41.199230, 44.688084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.099539, 41.014690, 44.776676>,  <29.308352, 40.707127, 44.924328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099539, 41.014690, 44.776676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025253, -0.446528, -0.894413,
		-0.852553, -0.457589, 0.252519,
		-0.522030, 0.768912, -0.369133,
		28.942930, 41.245365, 44.665936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724775, 40.430714, 44.596104>,  <29.308352, 40.707127, 44.924328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724775, 40.430714, 44.596104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.777271, 40.796162, 44.442181>,  <28.808769, 41.015430, 44.349827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.777271, 40.796162, 44.442181>,  <28.724775, 40.430714, 44.596104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777271, 40.796162, 44.442181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058051, -0.380417, -0.922991,
		-0.989650, 0.143472, 0.003111,
		0.131240, 0.913619, -0.384808,
		28.816643, 41.070248, 44.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081003, 40.578621, 44.119373>,  <28.724775, 40.430714, 44.596104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081003, 40.578621, 44.119373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.413303, 40.772213, 44.009377>,  <28.612682, 40.888367, 43.943378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.413303, 40.772213, 44.009377>,  <28.081003, 40.578621, 44.119373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413303, 40.772213, 44.009377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042466, -0.437479, -0.898225,
		-0.555024, 0.757878, -0.342883,
		0.830750, 0.483976, -0.274996,
		28.662529, 40.917404, 43.926876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986639, 40.924397, 43.452202>,  <28.081003, 40.578621, 44.119373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986639, 40.924397, 43.452202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380135, 40.853703, 43.464981>,  <28.616232, 40.811287, 43.472649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380135, 40.853703, 43.464981>,  <27.986639, 40.924397, 43.452202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380135, 40.853703, 43.464981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008475, -0.223375, -0.974696,
		0.179403, 0.958575, -0.221241,
		0.983739, -0.176739, 0.031951,
		28.675257, 40.800682, 43.474567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.620270, 42.975552, 49.660816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.863518, 43.130581, 49.383694>,  <33.009468, 43.223598, 49.217419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.863518, 43.130581, 49.383694>,  <32.620270, 42.975552, 49.660816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863518, 43.130581, 49.383694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091054, -0.901015, -0.424125,
		-0.788607, 0.194836, -0.583214,
		0.608119, 0.387572, -0.692806,
		33.045952, 43.246853, 49.175854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609230, 42.482529, 49.024384>,  <32.620270, 42.975552, 49.660816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609230, 42.482529, 49.024384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.938694, 42.696453, 48.948963>,  <33.136372, 42.824810, 48.903709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.938694, 42.696453, 48.948963>,  <32.609230, 42.482529, 49.024384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938694, 42.696453, 48.948963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349026, -0.740165, -0.574749,
		-0.446946, 0.407589, -0.796311,
		0.823663, 0.534815, -0.188554,
		33.185791, 42.856899, 48.892399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634216, 42.665405, 48.364216>,  <32.609230, 42.482529, 49.024384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634216, 42.665405, 48.364216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020470, 42.679123, 48.467270>,  <33.252220, 42.687355, 48.529102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020470, 42.679123, 48.467270>,  <32.634216, 42.665405, 48.364216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020470, 42.679123, 48.467270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219278, -0.639670, -0.736709,
		0.139535, 0.767884, -0.625207,
		0.965633, 0.034298, 0.257637,
		33.310158, 42.689411, 48.544559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849247, 42.655823, 47.679523>,  <32.634216, 42.665405, 48.364216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849247, 42.655823, 47.679523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184856, 42.617104, 47.893688>,  <33.386223, 42.593872, 48.022186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184856, 42.617104, 47.893688>,  <32.849247, 42.655823, 47.679523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184856, 42.617104, 47.893688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415458, -0.521440, -0.745315,
		0.351333, 0.847780, -0.397284,
		0.839023, -0.096799, 0.535416,
		33.436562, 42.588062, 48.054314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443310, 42.823769, 47.221542>,  <32.849247, 42.655823, 47.679523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443310, 42.823769, 47.221542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629799, 42.613728, 47.506332>,  <33.741692, 42.487701, 47.677204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629799, 42.613728, 47.506332>,  <33.443310, 42.823769, 47.221542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629799, 42.613728, 47.506332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467810, -0.536728, -0.702194,
		0.750860, 0.660446, -0.004585,
		0.466222, -0.525105, 0.711971,
		33.769665, 42.456196, 47.719925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126846, 42.792850, 46.893860>,  <33.443310, 42.823769, 47.221542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126846, 42.792850, 46.893860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093384, 42.503403, 47.167904>,  <34.073307, 42.329735, 47.332333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093384, 42.503403, 47.167904>,  <34.126846, 42.792850, 46.893860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093384, 42.503403, 47.167904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472109, -0.634248, -0.612244,
		0.877562, 0.272230, 0.394685,
		-0.083657, -0.723616, 0.685114,
		34.068287, 42.286320, 47.373440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771076, 42.394016, 46.929726>,  <34.126846, 42.792850, 46.893860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771076, 42.394016, 46.929726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.491119, 42.144958, 47.069710>,  <34.323147, 41.995525, 47.153702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.491119, 42.144958, 47.069710>,  <34.771076, 42.394016, 46.929726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491119, 42.144958, 47.069710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482032, -0.773322, -0.411848,
		0.527067, -0.119555, 0.841372,
		-0.699890, -0.622640, 0.349963,
		34.281151, 41.958168, 47.174698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149284, 41.770309, 47.229542>,  <34.771076, 42.394016, 46.929726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149284, 41.770309, 47.229542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.770840, 41.677258, 47.139423>,  <34.543774, 41.621426, 47.085354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.770840, 41.677258, 47.139423>,  <35.149284, 41.770309, 47.229542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770840, 41.677258, 47.139423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318897, -0.790344, -0.523126,
		-0.056366, -0.566781, 0.821938,
		-0.946112, -0.232627, -0.225293,
		34.487007, 41.607471, 47.071835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956310, 40.933540, 47.391773>,  <35.149284, 41.770309, 47.229542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956310, 40.933540, 47.391773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.704746, 41.074047, 47.114330>,  <34.553806, 41.158352, 46.947865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.704746, 41.074047, 47.114330>,  <34.956310, 40.933540, 47.391773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704746, 41.074047, 47.114330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194687, -0.792547, -0.577898,
		-0.752706, -0.498483, 0.430056,
		-0.628912, 0.351261, -0.693603,
		34.516075, 41.179424, 46.906250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589355, 40.311455, 47.191471>,  <34.956310, 40.933540, 47.391773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589355, 40.311455, 47.191471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510815, 40.563038, 46.890575>,  <34.463692, 40.713985, 46.710037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510815, 40.563038, 46.890575>,  <34.589355, 40.311455, 47.191471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510815, 40.563038, 46.890575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027794, -0.770433, -0.636914,
		-0.980139, -0.104151, 0.168757,
		-0.196352, 0.628955, -0.752237,
		34.451908, 40.751724, 46.664906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167824, 39.962341, 46.789661>,  <34.589355, 40.311455, 47.191471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167824, 39.962341, 46.789661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.323959, 40.245792, 46.554550>,  <34.417641, 40.415863, 46.413483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.323959, 40.245792, 46.554550>,  <34.167824, 39.962341, 46.789661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323959, 40.245792, 46.554550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174760, -0.683841, -0.708393,
		-0.903933, 0.173794, -0.390770,
		0.390339, 0.708630, -0.587774,
		34.441063, 40.458382, 46.378220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825748, 39.927780, 46.180187>,  <34.167824, 39.962341, 46.789661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825748, 39.927780, 46.180187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.179844, 40.088799, 46.086960>,  <34.392300, 40.185410, 46.031025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.179844, 40.088799, 46.086960>,  <33.825748, 39.927780, 46.180187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179844, 40.088799, 46.086960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132162, -0.698081, -0.703716,
		-0.445975, 0.592151, -0.671166,
		0.885234, 0.402543, -0.233067,
		34.445415, 40.209560, 46.017040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199623, 40.281506, 45.893665>,  <33.825748, 39.927780, 46.180187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199623, 40.281506, 45.893665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893723, 40.023891, 45.885933>,  <32.710182, 39.869324, 45.881294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893723, 40.023891, 45.885933>,  <33.199623, 40.281506, 45.893665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893723, 40.023891, 45.885933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429785, 0.487531, 0.759999,
		-0.480037, 0.589522, -0.649637,
		-0.764754, -0.644032, -0.019335,
		32.664295, 39.830681, 45.880131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610058, 40.601723, 46.119709>,  <33.199623, 40.281506, 45.893665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610058, 40.601723, 46.119709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.455902, 40.234417, 46.156097>,  <32.363411, 40.014034, 46.177933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.455902, 40.234417, 46.156097>,  <32.610058, 40.601723, 46.119709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455902, 40.234417, 46.156097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615941, 0.329403, 0.715619,
		-0.687092, 0.219754, -0.692541,
		-0.385385, -0.918260, 0.090974,
		32.340286, 39.958939, 46.183392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987705, 40.767399, 46.044983>,  <32.610058, 40.601723, 46.119709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987705, 40.767399, 46.044983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995371, 40.410511, 46.225460>,  <31.999969, 40.196377, 46.333748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995371, 40.410511, 46.225460>,  <31.987705, 40.767399, 46.044983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995371, 40.410511, 46.225460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764718, 0.277634, 0.581486,
		-0.644080, -0.356181, -0.676975,
		0.019163, -0.892219, 0.451196,
		32.001122, 40.142845, 46.360821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197599, 40.591446, 46.215984>,  <31.987705, 40.767399, 46.044983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197599, 40.591446, 46.215984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404034, 40.344501, 46.453480>,  <31.527893, 40.196335, 46.595978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404034, 40.344501, 46.453480>,  <31.197599, 40.591446, 46.215984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404034, 40.344501, 46.453480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707878, 0.082861, 0.701458,
		-0.482252, -0.782302, -0.394255,
		0.516083, -0.617364, 0.593734,
		31.558859, 40.159294, 46.631599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741745, 39.964832, 46.501282>,  <31.197599, 40.591446, 46.215984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741745, 39.964832, 46.501282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.052021, 39.991192, 46.752350>,  <31.238186, 40.007008, 46.902988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.052021, 39.991192, 46.752350>,  <30.741745, 39.964832, 46.501282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052021, 39.991192, 46.752350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630975, 0.059976, 0.773481,
		0.013323, -0.996022, 0.088100,
		0.775689, 0.065895, 0.627666,
		31.284727, 40.010960, 46.940651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500778, 39.549316, 47.087727>,  <30.741745, 39.964832, 46.501282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500778, 39.549316, 47.087727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782146, 39.798370, 47.224857>,  <30.950968, 39.947803, 47.307137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782146, 39.798370, 47.224857>,  <30.500778, 39.549316, 47.087727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782146, 39.798370, 47.224857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588630, 0.239954, 0.771970,
		0.398391, -0.744816, 0.535288,
		0.703420, 0.622632, 0.342825,
		30.993174, 39.985161, 47.327705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472023, 39.517513, 47.812466>,  <30.500778, 39.549316, 47.087727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472023, 39.517513, 47.812466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.679317, 39.859356, 47.799320>,  <30.803694, 40.064461, 47.791431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.679317, 39.859356, 47.799320>,  <30.472023, 39.517513, 47.812466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679317, 39.859356, 47.799320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633754, 0.409549, 0.656220,
		0.574271, -0.319246, 0.753853,
		0.518235, 0.854606, -0.032869,
		30.834787, 40.115738, 47.789459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585648, 39.757614, 48.501297>,  <30.472023, 39.517513, 47.812466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585648, 39.757614, 48.501297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608475, 40.093990, 48.286049>,  <30.622171, 40.295815, 48.156902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608475, 40.093990, 48.286049>,  <30.585648, 39.757614, 48.501297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608475, 40.093990, 48.286049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613771, 0.454658, 0.645423,
		0.787419, 0.293449, 0.542088,
		0.057066, 0.840936, -0.538116,
		30.625595, 40.346272, 48.124615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716501, 40.383633, 48.996788>,  <30.585648, 39.757614, 48.501297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716501, 40.383633, 48.996788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566620, 40.541683, 48.661297>,  <30.476690, 40.636513, 48.460003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566620, 40.541683, 48.661297>,  <30.716501, 40.383633, 48.996788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566620, 40.541683, 48.661297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755556, 0.394160, 0.523234,
		0.537338, 0.829767, 0.150847,
		-0.374704, 0.395127, -0.838732,
		30.454208, 40.660221, 48.409676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598625, 41.090599, 49.215393>,  <30.716501, 40.383633, 48.996788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598625, 41.090599, 49.215393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.381180, 41.040054, 48.883484>,  <30.250711, 41.009727, 48.684338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.381180, 41.040054, 48.883484>,  <30.598625, 41.090599, 49.215393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381180, 41.040054, 48.883484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762874, 0.486639, 0.425682,
		0.350009, 0.864416, -0.360941,
		-0.543615, -0.126360, -0.829769,
		30.218096, 41.002148, 48.634552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319653, 41.762558, 49.075596>,  <30.598625, 41.090599, 49.215393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319653, 41.762558, 49.075596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.092922, 41.467094, 48.929672>,  <29.956884, 41.289814, 48.842117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.092922, 41.467094, 48.929672>,  <30.319653, 41.762558, 49.075596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092922, 41.467094, 48.929672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818437, 0.454269, 0.351855,
		-0.094182, 0.498012, -0.862041,
		-0.566826, -0.738664, -0.364807,
		29.922874, 41.245495, 48.820229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739855, 42.082134, 48.842571>,  <30.319653, 41.762558, 49.075596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739855, 42.082134, 48.842571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.549540, 41.730976, 48.820915>,  <29.435350, 41.520283, 48.807922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.549540, 41.730976, 48.820915>,  <29.739855, 42.082134, 48.842571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549540, 41.730976, 48.820915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838647, 0.434240, 0.328797,
		-0.265138, 0.201844, -0.942847,
		-0.475787, -0.877892, -0.054142,
		29.406803, 41.467609, 48.804672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980177, 42.178547, 48.495495>,  <29.739855, 42.082134, 48.842571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980177, 42.178547, 48.495495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.002710, 41.835545, 48.700047>,  <29.016232, 41.629742, 48.822777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.002710, 41.835545, 48.700047>,  <28.980177, 42.178547, 48.495495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002710, 41.835545, 48.700047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927346, 0.144840, 0.345038,
		-0.369940, -0.493660, -0.787048,
		0.056335, -0.857509, 0.511376,
		29.019611, 41.578293, 48.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392715, 41.938145, 48.279232>,  <28.980177, 42.178547, 48.495495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392715, 41.938145, 48.279232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504705, 41.760208, 48.619522>,  <28.571899, 41.653446, 48.823696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504705, 41.760208, 48.619522>,  <28.392715, 41.938145, 48.279232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504705, 41.760208, 48.619522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921974, 0.122367, 0.367411,
		-0.267541, -0.887209, -0.375876,
		0.279975, -0.444845, 0.850721,
		28.588697, 41.626755, 48.874737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405657, 42.708168, 48.234211>,  <28.392715, 41.938145, 48.279232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405657, 42.708168, 48.234211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.344286, 43.076805, 48.091591>,  <28.307465, 43.297989, 48.006020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.344286, 43.076805, 48.091591>,  <28.405657, 42.708168, 48.234211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344286, 43.076805, 48.091591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037899, -0.366044, -0.929825,
		-0.987433, -0.129147, 0.091088,
		-0.153426, 0.921592, -0.356550,
		28.298258, 43.353283, 47.984627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694326, 42.555496, 47.959049>,  <28.405657, 42.708168, 48.234211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694326, 42.555496, 47.959049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.895416, 42.857368, 47.790421>,  <28.016069, 43.038494, 47.689243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.895416, 42.857368, 47.790421>,  <27.694326, 42.555496, 47.959049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895416, 42.857368, 47.790421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031577, -0.503384, -0.863486,
		-0.863870, 0.420783, -0.276894,
		0.502724, 0.754683, -0.421571,
		28.046234, 43.083775, 47.663948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429728, 42.562050, 47.268387>,  <27.694326, 42.555496, 47.959049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429728, 42.562050, 47.268387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.736647, 42.814335, 47.221996>,  <27.920799, 42.965706, 47.194160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.736647, 42.814335, 47.221996>,  <27.429728, 42.562050, 47.268387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736647, 42.814335, 47.221996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072051, -0.264496, -0.961692,
		-0.637228, 0.729549, -0.248391,
		0.767300, 0.630714, -0.115979,
		27.966837, 43.003548, 47.187202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391388, 42.941975, 46.587994>,  <27.429728, 42.562050, 47.268387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391388, 42.941975, 46.587994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.786228, 42.946609, 46.651863>,  <28.023132, 42.949390, 46.690186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.786228, 42.946609, 46.651863>,  <27.391388, 42.941975, 46.587994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786228, 42.946609, 46.651863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155341, -0.310667, -0.937739,
		0.038737, 0.950448, -0.308461,
		0.987101, 0.011592, 0.159678,
		28.082359, 42.950089, 46.699768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639086, 43.165962, 46.009735>,  <27.391388, 42.941975, 46.587994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639086, 43.165962, 46.009735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.937193, 42.972057, 46.192852>,  <28.116056, 42.855713, 46.302723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.937193, 42.972057, 46.192852>,  <27.639086, 43.165962, 46.009735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937193, 42.972057, 46.192852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219357, -0.470113, -0.854913,
		0.629649, 0.737560, -0.244023,
		0.745269, -0.484767, 0.457795,
		28.160774, 42.826626, 46.330189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322508, 43.240665, 45.567345>,  <27.639086, 43.165962, 46.009735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322508, 43.240665, 45.567345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.413446, 42.934422, 45.808064>,  <28.468010, 42.750675, 45.952496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.413446, 42.934422, 45.808064>,  <28.322508, 43.240665, 45.567345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413446, 42.934422, 45.808064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360713, -0.507810, -0.782314,
		0.904544, 0.394930, 0.160718,
		0.227345, -0.765611, 0.601793,
		28.481649, 42.704739, 45.988602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053448, 43.154568, 45.543896>,  <28.322508, 43.240665, 45.567345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053448, 43.154568, 45.543896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860722, 42.821938, 45.654415>,  <28.745085, 42.622360, 45.720726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860722, 42.821938, 45.654415>,  <29.053448, 43.154568, 45.543896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860722, 42.821938, 45.654415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375106, -0.480689, -0.792612,
		0.791927, -0.278253, 0.543532,
		-0.481816, -0.831573, 0.276297,
		28.716177, 42.572464, 45.737305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786545, 43.178421, 45.652336>,  <29.053448, 43.154568, 45.543896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786545, 43.178421, 45.652336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.866524, 43.497925, 45.425354>,  <29.914511, 43.689625, 45.289165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.866524, 43.497925, 45.425354>,  <29.786545, 43.178421, 45.652336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866524, 43.497925, 45.425354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012809, 0.581235, 0.813635,
		0.979723, -0.155415, 0.126447,
		0.199946, 0.798756, -0.567459,
		29.926508, 43.737553, 45.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476357, 43.511841, 45.777523>,  <29.786545, 43.178421, 45.652336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476357, 43.511841, 45.777523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.228994, 43.792923, 45.636791>,  <30.080578, 43.961571, 45.552353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.228994, 43.792923, 45.636791>,  <30.476357, 43.511841, 45.777523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228994, 43.792923, 45.636791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152380, 0.546426, 0.823528,
		0.770946, 0.455660, -0.444990,
		-0.618403, 0.702704, -0.351831,
		30.043474, 44.003735, 45.531242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793045, 44.087727, 45.968189>,  <30.476357, 43.511841, 45.777523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793045, 44.087727, 45.968189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.412170, 44.201706, 45.924107>,  <30.183645, 44.270092, 45.897655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.412170, 44.201706, 45.924107>,  <30.793045, 44.087727, 45.968189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412170, 44.201706, 45.924107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164862, 0.782928, 0.599870,
		0.257216, 0.553019, -0.792471,
		-0.952187, 0.284945, -0.110210,
		30.126514, 44.287189, 45.891045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865484, 44.871819, 45.891346>,  <30.793045, 44.087727, 45.968189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865484, 44.871819, 45.891346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.477640, 44.809517, 45.966812>,  <30.244934, 44.772137, 46.012093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.477640, 44.809517, 45.966812>,  <30.865484, 44.871819, 45.891346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477640, 44.809517, 45.966812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000503, 0.772418, 0.635114,
		-0.244649, 0.615719, -0.749024,
		-0.969612, -0.155757, 0.188662,
		30.186756, 44.762791, 46.023411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629112, 45.531483, 46.002747>,  <30.865484, 44.871819, 45.891346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629112, 45.531483, 46.002747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.333973, 45.305912, 46.151108>,  <30.156889, 45.170570, 46.240124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.333973, 45.305912, 46.151108>,  <30.629112, 45.531483, 46.002747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333973, 45.305912, 46.151108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209139, 0.713481, 0.668734,
		-0.641749, 0.415853, -0.644379,
		-0.737848, -0.563924, 0.370905,
		30.112619, 45.136734, 46.262379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017124, 46.015636, 46.038185>,  <30.629112, 45.531483, 46.002747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017124, 46.015636, 46.038185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.925226, 45.700863, 46.267254>,  <29.870087, 45.512001, 46.404697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.925226, 45.700863, 46.267254>,  <30.017124, 46.015636, 46.038185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925226, 45.700863, 46.267254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311578, 0.616917, 0.722726,
		-0.922028, -0.012389, -0.386925,
		-0.229747, -0.786931, 0.572675,
		29.856302, 45.464783, 46.439056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380674, 46.133087, 46.306118>,  <30.017124, 46.015636, 46.038185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380674, 46.133087, 46.306118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.514339, 45.856262, 46.562050>,  <29.594538, 45.690166, 46.715611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.514339, 45.856262, 46.562050>,  <29.380674, 46.133087, 46.306118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514339, 45.856262, 46.562050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263742, 0.583077, 0.768415,
		-0.904862, -0.425526, 0.012317,
		0.334162, -0.692061, 0.639833,
		29.614588, 45.648643, 46.754002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893879, 45.877487, 46.721085>,  <29.380674, 46.133087, 46.306118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893879, 45.877487, 46.721085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.218449, 45.798050, 46.940960>,  <29.413191, 45.750389, 47.072884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.218449, 45.798050, 46.940960>,  <28.893879, 45.877487, 46.721085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218449, 45.798050, 46.940960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385834, 0.524432, 0.759015,
		-0.439006, -0.827969, 0.348914,
		0.811422, -0.198589, 0.549687,
		29.461876, 45.738472, 47.105865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575380, 45.865864, 47.352196>,  <28.893879, 45.877487, 46.721085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575380, 45.865864, 47.352196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.968847, 45.908512, 47.410210>,  <29.204927, 45.934101, 47.445019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.968847, 45.908512, 47.410210>,  <28.575380, 45.865864, 47.352196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968847, 45.908512, 47.410210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179756, 0.539624, 0.822492,
		0.009428, -0.835128, 0.549975,
		0.983666, 0.106616, 0.145032,
		29.263947, 45.940498, 47.453720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.239960, 37.545925, 35.099533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506870, 37.686062, 35.362438>,  <34.667019, 37.770145, 35.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506870, 37.686062, 35.362438>,  <34.239960, 37.545925, 35.099533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506870, 37.686062, 35.362438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743183, 0.371438, 0.556519,
		-0.049158, -0.859821, 0.508224,
		0.667280, 0.350346, 0.657263,
		34.707054, 37.791164, 35.559616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087307, 37.400776, 35.790684>,  <34.239960, 37.545925, 35.099533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087307, 37.400776, 35.790684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296135, 37.741898, 35.785507>,  <34.421432, 37.946571, 35.782402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296135, 37.741898, 35.785507>,  <34.087307, 37.400776, 35.790684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296135, 37.741898, 35.785507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686804, 0.429345, 0.586483,
		0.505711, -0.297299, 0.809858,
		0.522069, 0.852805, -0.012939,
		34.452755, 37.997738, 35.781624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297138, 37.605450, 36.521736>,  <34.087307, 37.400776, 35.790684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297138, 37.605450, 36.521736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291878, 37.928925, 36.286503>,  <34.288723, 38.123009, 36.145363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291878, 37.928925, 36.286503>,  <34.297138, 37.605450, 36.521736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291878, 37.928925, 36.286503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642225, 0.443960, 0.624857,
		0.766403, 0.385898, 0.513525,
		-0.013147, 0.808692, -0.588086,
		34.287933, 38.171532, 36.110077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254784, 38.130875, 36.973785>,  <34.297138, 37.605450, 36.521736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254784, 38.130875, 36.973785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142197, 38.308567, 36.633564>,  <34.074646, 38.415184, 36.429432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142197, 38.308567, 36.633564>,  <34.254784, 38.130875, 36.973785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142197, 38.308567, 36.633564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685382, 0.527294, 0.502208,
		0.671587, 0.724306, 0.156054,
		-0.281465, 0.444233, -0.850550,
		34.057758, 38.441837, 36.378399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243362, 38.806316, 37.097721>,  <34.254784, 38.130875, 36.973785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243362, 38.806316, 37.097721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000824, 38.769249, 36.781807>,  <33.855301, 38.747009, 36.592258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000824, 38.769249, 36.781807>,  <34.243362, 38.806316, 37.097721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000824, 38.769249, 36.781807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680416, 0.574483, 0.454976,
		0.411555, 0.813254, -0.411389,
		-0.606347, -0.092668, -0.789782,
		33.818920, 38.741447, 36.544872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937103, 39.444435, 37.035198>,  <34.243362, 38.806316, 37.097721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937103, 39.444435, 37.035198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689140, 39.204201, 36.833202>,  <33.540363, 39.060059, 36.712006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689140, 39.204201, 36.833202>,  <33.937103, 39.444435, 37.035198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689140, 39.204201, 36.833202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780862, 0.535546, 0.321629,
		0.077278, 0.593706, -0.800963,
		-0.619905, -0.600587, -0.504988,
		33.503170, 39.024025, 36.681705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559536, 39.841614, 36.710793>,  <33.937103, 39.444435, 37.035198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559536, 39.841614, 36.710793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332939, 39.512306, 36.725311>,  <33.196983, 39.314720, 36.734024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332939, 39.512306, 36.725311>,  <33.559536, 39.841614, 36.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332939, 39.512306, 36.725311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709294, 0.509539, 0.487106,
		-0.419516, 0.250193, -0.872588,
		-0.566488, -0.823270, 0.036300,
		33.162994, 39.265324, 36.736202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953438, 40.111713, 36.589268>,  <33.559536, 39.841614, 36.710793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953438, 40.111713, 36.589268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874321, 39.755669, 36.753498>,  <32.826851, 39.542042, 36.852036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874321, 39.755669, 36.753498>,  <32.953438, 40.111713, 36.589268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874321, 39.755669, 36.753498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868351, 0.353436, 0.347922,
		-0.454804, -0.287711, -0.842838,
		-0.197789, -0.890115, 0.410579,
		32.814983, 39.488632, 36.876671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407120, 39.798550, 36.309479>,  <32.953438, 40.111713, 36.589268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407120, 39.798550, 36.309479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433720, 39.639256, 36.675426>,  <32.449680, 39.543678, 36.894997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433720, 39.639256, 36.675426>,  <32.407120, 39.798550, 36.309479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433720, 39.639256, 36.675426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945829, 0.266862, 0.184914,
		-0.317783, -0.877607, -0.358914,
		0.066501, -0.398234, 0.914870,
		32.453671, 39.519787, 36.949886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671932, 39.630867, 36.430679>,  <32.407120, 39.798550, 36.309479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671932, 39.630867, 36.430679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871334, 39.643261, 36.777214>,  <31.990974, 39.650700, 36.985134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871334, 39.643261, 36.777214>,  <31.671932, 39.630867, 36.430679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871334, 39.643261, 36.777214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836504, 0.279455, 0.471345,
		-0.227495, -0.959658, 0.165232,
		0.498505, 0.030989, 0.866333,
		32.020885, 39.652557, 37.037113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119204, 39.389488, 36.906631>,  <31.671932, 39.630867, 36.430679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119204, 39.389488, 36.906631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390055, 39.541592, 37.158630>,  <31.552565, 39.632854, 37.309830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390055, 39.541592, 37.158630>,  <31.119204, 39.389488, 36.906631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390055, 39.541592, 37.158630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735641, 0.328682, 0.592284,
		0.018150, -0.864508, 0.502292,
		0.677128, 0.380256, 0.630002,
		31.593193, 39.655670, 37.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828344, 39.307114, 37.550339>,  <31.119204, 39.389488, 36.906631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828344, 39.307114, 37.550339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114784, 39.583408, 37.590511>,  <31.286648, 39.749184, 37.614613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114784, 39.583408, 37.590511>,  <30.828344, 39.307114, 37.550339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114784, 39.583408, 37.590511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627509, 0.574079, 0.525991,
		0.305664, -0.439684, 0.844540,
		0.716102, 0.690733, 0.100430,
		31.329615, 39.790627, 37.620640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275213, 39.320602, 38.204369>,  <30.828344, 39.307114, 37.550339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275213, 39.320602, 38.204369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959736, 39.074696, 38.206203>,  <30.770449, 38.927151, 38.207306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959736, 39.074696, 38.206203>,  <31.275213, 39.320602, 38.204369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959736, 39.074696, 38.206203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381791, -0.495624, -0.780123,
		0.481869, -0.613527, 0.625609,
		-0.788694, -0.614769, 0.004587,
		30.723127, 38.890266, 38.207581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529873, 38.678467, 38.173592>,  <31.275213, 39.320602, 38.204369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529873, 38.678467, 38.173592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157286, 38.658714, 38.029411>,  <30.933733, 38.646862, 37.942902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157286, 38.658714, 38.029411>,  <31.529873, 38.678467, 38.173592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157286, 38.658714, 38.029411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333559, -0.511505, -0.791897,
		-0.145266, -0.857860, 0.492924,
		-0.931470, -0.049384, -0.360451,
		30.877844, 38.643898, 37.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373402, 37.993309, 38.074162>,  <31.529873, 38.678467, 38.173592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373402, 37.993309, 38.074162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111191, 38.174431, 37.832417>,  <30.953865, 38.283104, 37.687370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111191, 38.174431, 37.832417>,  <31.373402, 37.993309, 38.074162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111191, 38.174431, 37.832417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258974, -0.616975, -0.743152,
		-0.709380, -0.643669, 0.287178,
		-0.655525, 0.452805, -0.604363,
		30.914534, 38.310272, 37.651108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887547, 37.485664, 37.802513>,  <31.373402, 37.993309, 38.074162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887547, 37.485664, 37.802513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879244, 37.786446, 37.538956>,  <30.874262, 37.966915, 37.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879244, 37.786446, 37.538956>,  <30.887547, 37.485664, 37.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879244, 37.786446, 37.538956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075897, -0.655948, -0.750981,
		-0.996900, -0.065594, -0.043457,
		-0.020755, 0.751951, -0.658893,
		30.873018, 38.012032, 37.341290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396698, 37.241974, 37.302979>,  <30.887547, 37.485664, 37.802513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396698, 37.241974, 37.302979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621981, 37.518559, 37.122009>,  <30.757151, 37.684509, 37.013428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621981, 37.518559, 37.122009>,  <30.396698, 37.241974, 37.302979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621981, 37.518559, 37.122009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037849, -0.525356, -0.850041,
		-0.825450, 0.495871, -0.269712,
		0.563205, 0.691458, -0.452423,
		30.790943, 37.725994, 36.986282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996540, 37.376568, 36.772980>,  <30.396698, 37.241974, 37.302979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996540, 37.376568, 36.772980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352587, 37.498329, 36.637318>,  <30.566216, 37.571388, 36.555920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352587, 37.498329, 36.637318>,  <29.996540, 37.376568, 36.772980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352587, 37.498329, 36.637318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015719, -0.723250, -0.690407,
		-0.455458, 0.619875, -0.638994,
		0.890119, 0.304407, -0.339154,
		30.619623, 37.589653, 36.535572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887060, 37.276932, 36.123650>,  <29.996540, 37.376568, 36.772980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887060, 37.276932, 36.123650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281498, 37.318100, 36.175846>,  <30.518160, 37.342800, 36.207165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281498, 37.318100, 36.175846>,  <29.887060, 37.276932, 36.123650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281498, 37.318100, 36.175846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165931, -0.565222, -0.808078,
		-0.009408, 0.818493, -0.574439,
		0.986092, 0.102920, 0.130496,
		30.577326, 37.348976, 36.214996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177076, 37.689487, 35.526234>,  <29.887060, 37.276932, 36.123650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177076, 37.689487, 35.526234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462643, 37.466015, 35.695087>,  <30.633982, 37.331932, 35.796398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462643, 37.466015, 35.695087>,  <30.177076, 37.689487, 35.526234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462643, 37.466015, 35.695087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124105, -0.492352, -0.861503,
		0.689146, 0.667430, -0.282162,
		0.713916, -0.558684, 0.422134,
		30.676817, 37.298409, 35.821728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564947, 37.661777, 35.003876>,  <30.177076, 37.689487, 35.526234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564947, 37.661777, 35.003876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684235, 37.366867, 35.246357>,  <30.755808, 37.189919, 35.391846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684235, 37.366867, 35.246357>,  <30.564947, 37.661777, 35.003876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684235, 37.366867, 35.246357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293892, -0.533321, -0.793219,
		0.908125, 0.414713, 0.057633,
		0.298221, -0.737280, 0.606203,
		30.773701, 37.145683, 35.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279129, 37.604664, 35.008080>,  <30.564947, 37.661777, 35.003876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279129, 37.604664, 35.008080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147636, 37.247791, 35.131985>,  <31.068741, 37.033669, 35.206329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147636, 37.247791, 35.131985>,  <31.279129, 37.604664, 35.008080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147636, 37.247791, 35.131985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652164, -0.451681, -0.608824,
		0.683095, 0.001880, 0.730327,
		-0.328730, -0.892178, 0.309767,
		31.049017, 36.980137, 35.224915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843834, 37.147392, 34.905487>,  <31.279129, 37.604664, 35.008080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843834, 37.147392, 34.905487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589848, 36.846760, 34.976971>,  <31.437456, 36.666378, 35.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589848, 36.846760, 34.976971>,  <31.843834, 37.147392, 34.905487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589848, 36.846760, 34.976971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472348, -0.560752, -0.680033,
		0.611313, -0.347386, 0.711069,
		-0.634967, -0.751585, 0.178709,
		31.399357, 36.621284, 35.030582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266029, 36.575062, 34.911106>,  <31.843834, 37.147392, 34.905487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266029, 36.575062, 34.911106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892879, 36.441940, 34.855988>,  <31.668989, 36.362068, 34.822914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892879, 36.441940, 34.855988>,  <32.266029, 36.575062, 34.911106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892879, 36.441940, 34.855988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340204, -0.688355, -0.640647,
		0.118352, -0.644523, 0.755369,
		-0.932874, -0.332801, -0.137801,
		31.613018, 36.342098, 34.814648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236988, 35.831745, 34.996487>,  <32.266029, 36.575062, 34.911106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236988, 35.831745, 34.996487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928900, 35.896526, 34.749737>,  <31.744047, 35.935394, 34.601688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928900, 35.896526, 34.749737>,  <32.236988, 35.831745, 34.996487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928900, 35.896526, 34.749737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231986, -0.829824, -0.507518,
		-0.594091, -0.534007, 0.601575,
		-0.770220, 0.161955, -0.616873,
		31.697834, 35.945114, 34.564674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781160, 35.247906, 35.016861>,  <32.236988, 35.831745, 34.996487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781160, 35.247906, 35.016861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761961, 35.438419, 34.665668>,  <31.750441, 35.552727, 34.454952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761961, 35.438419, 34.665668>,  <31.781160, 35.247906, 35.016861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761961, 35.438419, 34.665668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295115, -0.832991, -0.468011,
		-0.954256, -0.281569, -0.100576,
		-0.047998, 0.476284, -0.877981,
		31.747562, 35.581303, 34.402275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305824, 34.908268, 35.586849>,  <31.781160, 35.247906, 35.016861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305824, 34.908268, 35.586849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390724, 34.670563, 35.897152>,  <32.441666, 34.527939, 36.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390724, 34.670563, 35.897152>,  <32.305824, 34.908268, 35.586849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390724, 34.670563, 35.897152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281216, 0.723122, 0.630882,
		-0.935878, -0.352060, -0.013634,
		0.212249, -0.594262, 0.775759,
		32.454399, 34.492283, 36.129879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833775, 35.055107, 36.078552>,  <32.305824, 34.908268, 35.586849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833775, 35.055107, 36.078552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108982, 34.844208, 36.278004>,  <32.274105, 34.717667, 36.397675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108982, 34.844208, 36.278004>,  <31.833775, 35.055107, 36.078552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108982, 34.844208, 36.278004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169929, 0.550958, 0.817049,
		-0.705516, -0.646878, 0.289475,
		0.688020, -0.527252, 0.498633,
		32.315388, 34.686031, 36.427593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504932, 34.728920, 36.706333>,  <31.833775, 35.055107, 36.078552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504932, 34.728920, 36.706333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896172, 34.773796, 36.776466>,  <32.130913, 34.800720, 36.818546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896172, 34.773796, 36.776466>,  <31.504932, 34.728920, 36.706333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896172, 34.773796, 36.776466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207992, 0.559864, 0.802055,
		-0.008185, -0.820955, 0.570934,
		0.978096, 0.112185, 0.175335,
		32.189602, 34.807453, 36.829067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692774, 34.568684, 37.430340>,  <31.504932, 34.728920, 36.706333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692774, 34.568684, 37.430340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971745, 34.817226, 37.287506>,  <32.139126, 34.966351, 37.201805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971745, 34.817226, 37.287506>,  <31.692774, 34.568684, 37.430340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971745, 34.817226, 37.287506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082951, 0.564907, 0.820974,
		0.711838, -0.542950, 0.445524,
		0.697428, 0.621357, -0.357084,
		32.180973, 35.003635, 37.180382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175911, 34.685055, 38.018009>,  <31.692774, 34.568684, 37.430340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175911, 34.685055, 38.018009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271507, 34.980888, 37.766327>,  <32.328865, 35.158390, 37.615318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271507, 34.980888, 37.766327>,  <32.175911, 34.685055, 38.018009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271507, 34.980888, 37.766327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094492, 0.627194, 0.773110,
		0.966414, -0.244218, 0.080006,
		0.238987, 0.739584, -0.629206,
		32.343204, 35.202763, 37.577564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787399, 34.884926, 38.269470>,  <32.175911, 34.685055, 38.018009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787399, 34.884926, 38.269470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691189, 35.201241, 38.044327>,  <32.633461, 35.391029, 37.909241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691189, 35.201241, 38.044327>,  <32.787399, 34.884926, 38.269470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691189, 35.201241, 38.044327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312273, 0.612093, 0.726517,
		0.919039, -0.001017, -0.394166,
		-0.240528, 0.790785, -0.562855,
		32.619030, 35.438477, 37.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295105, 35.454292, 38.330669>,  <32.787399, 34.884926, 38.269470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295105, 35.454292, 38.330669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982922, 35.644741, 38.168583>,  <32.795612, 35.759010, 38.071331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982922, 35.644741, 38.168583>,  <33.295105, 35.454292, 38.330669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982922, 35.644741, 38.168583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093829, 0.729975, 0.677003,
		0.618131, 0.490349, -0.614386,
		-0.780455, 0.476124, -0.405212,
		32.748787, 35.787579, 38.047020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515282, 36.130802, 38.327461>,  <33.295105, 35.454292, 38.330669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515282, 36.130802, 38.327461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115993, 36.115372, 38.345631>,  <32.876419, 36.106113, 38.356533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115993, 36.115372, 38.345631>,  <33.515282, 36.130802, 38.327461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115993, 36.115372, 38.345631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002750, 0.791186, 0.611569,
		-0.059529, 0.610357, -0.789886,
		-0.998223, -0.038579, 0.045420,
		32.816528, 36.103798, 38.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361038, 36.859112, 38.161755>,  <33.515282, 36.130802, 38.327461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361038, 36.859112, 38.161755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032955, 36.699795, 38.326008>,  <32.836105, 36.604206, 38.424561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032955, 36.699795, 38.326008>,  <33.361038, 36.859112, 38.161755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032955, 36.699795, 38.326008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073756, 0.785445, 0.614521,
		-0.567287, 0.473750, -0.673607,
		-0.820211, -0.398292, 0.410632,
		32.786892, 36.580307, 38.449196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864273, 37.367645, 38.233444>,  <33.361038, 36.859112, 38.161755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864273, 37.367645, 38.233444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743404, 37.084599, 38.488934>,  <32.670883, 36.914768, 38.642227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743404, 37.084599, 38.488934>,  <32.864273, 37.367645, 38.233444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743404, 37.084599, 38.488934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101665, 0.690147, 0.716492,
		-0.947817, 0.151567, -0.280483,
		-0.302171, -0.707619, 0.638724,
		32.652752, 36.872314, 38.680550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272419, 37.712433, 38.701206>,  <32.864273, 37.367645, 38.233444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272419, 37.712433, 38.701206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388233, 37.388893, 38.905926>,  <32.457722, 37.194771, 39.028759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388233, 37.388893, 38.905926>,  <32.272419, 37.712433, 38.701206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388233, 37.388893, 38.905926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021337, 0.540023, 0.841380,
		-0.956929, -0.232691, 0.173616,
		0.289538, -0.808845, 0.511799,
		32.475094, 37.146240, 39.059464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815699, 37.576717, 39.132988>,  <32.272419, 37.712433, 38.701206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815699, 37.576717, 39.132988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140007, 37.392246, 39.277195>,  <32.334591, 37.281563, 39.363720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140007, 37.392246, 39.277195>,  <31.815699, 37.576717, 39.132988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140007, 37.392246, 39.277195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019064, 0.594752, 0.803683,
		-0.585055, -0.658475, 0.473415,
		0.810770, -0.461174, 0.360516,
		32.383240, 37.253895, 39.385349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649464, 37.476006, 39.843151>,  <31.815699, 37.576717, 39.132988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649464, 37.476006, 39.843151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047943, 37.441204, 39.841412>,  <32.287029, 37.420322, 39.840366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047943, 37.441204, 39.841412>,  <31.649464, 37.476006, 39.843151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047943, 37.441204, 39.841412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055206, 0.591968, 0.804069,
		-0.067380, -0.801252, 0.594521,
		0.996199, -0.087000, -0.004347,
		32.346802, 37.415104, 39.840107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806450, 37.216038, 40.522148>,  <31.649464, 37.476006, 39.843151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806450, 37.216038, 40.522148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147045, 37.373714, 40.383827>,  <32.351402, 37.468323, 40.300835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147045, 37.373714, 40.383827>,  <31.806450, 37.216038, 40.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147045, 37.373714, 40.383827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240445, 0.292525, 0.925535,
		0.465996, -0.871229, 0.154300,
		0.851489, 0.394195, -0.345799,
		32.402493, 37.491974, 40.280087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259052, 37.092808, 41.081532>,  <31.806450, 37.216038, 40.522148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259052, 37.092808, 41.081532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420231, 37.392796, 40.871704>,  <32.516937, 37.572788, 40.745808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420231, 37.392796, 40.871704>,  <32.259052, 37.092808, 41.081532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420231, 37.392796, 40.871704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289911, 0.439050, 0.850403,
		0.868091, -0.494749, -0.040510,
		0.402950, 0.749972, -0.524569,
		32.541115, 37.617786, 40.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926998, 37.202782, 41.356869>,  <32.259052, 37.092808, 41.081532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926998, 37.202782, 41.356869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843227, 37.546322, 41.169884>,  <32.792965, 37.752445, 41.057693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843227, 37.546322, 41.169884>,  <32.926998, 37.202782, 41.356869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843227, 37.546322, 41.169884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302480, 0.511518, 0.804273,
		0.929863, 0.027041, -0.366911,
		-0.209429, 0.858847, -0.467462,
		32.780399, 37.803974, 41.029644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504372, 37.747879, 41.609695>,  <32.926998, 37.202782, 41.356869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504372, 37.747879, 41.609695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225605, 37.996246, 41.466160>,  <33.058346, 38.145267, 41.380039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225605, 37.996246, 41.466160>,  <33.504372, 37.747879, 41.609695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225605, 37.996246, 41.466160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093407, 0.574693, 0.813021,
		0.711045, 0.533089, -0.458510,
		-0.696915, 0.620922, -0.358838,
		33.016529, 38.182522, 41.358509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795555, 38.376560, 41.482162>,  <33.504372, 37.747879, 41.609695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795555, 38.376560, 41.482162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405960, 38.423126, 41.559929>,  <33.172203, 38.451065, 41.606590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405960, 38.423126, 41.559929>,  <33.795555, 38.376560, 41.482162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405960, 38.423126, 41.559929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223940, 0.363158, 0.904416,
		0.034687, 0.924426, -0.379781,
		-0.973986, 0.116420, 0.194419,
		33.113766, 38.458054, 41.618256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765854, 39.027420, 41.777863>,  <33.795555, 38.376560, 41.482162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765854, 39.027420, 41.777863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414330, 38.868690, 41.883869>,  <33.203415, 38.773453, 41.947472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414330, 38.868690, 41.883869>,  <33.765854, 39.027420, 41.777863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414330, 38.868690, 41.883869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090447, 0.406788, 0.909034,
		-0.468528, 0.822835, -0.321597,
		-0.878807, -0.396820, 0.265014,
		33.150688, 38.749645, 41.963375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552414, 39.530033, 42.214550>,  <33.765854, 39.027420, 41.777863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552414, 39.530033, 42.214550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319065, 39.216541, 42.299824>,  <33.179054, 39.028446, 42.350986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319065, 39.216541, 42.299824>,  <33.552414, 39.530033, 42.214550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319065, 39.216541, 42.299824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108087, 0.335050, 0.935980,
		-0.804979, 0.522985, -0.280171,
		-0.583375, -0.783727, 0.213180,
		33.144054, 38.981422, 42.363777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894726, 39.768391, 42.547882>,  <33.552414, 39.530033, 42.214550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894726, 39.768391, 42.547882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922894, 39.388393, 42.669579>,  <32.939793, 39.160397, 42.742596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922894, 39.388393, 42.669579>,  <32.894726, 39.768391, 42.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922894, 39.388393, 42.669579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349466, 0.262171, 0.899522,
		-0.934299, -0.169660, -0.313529,
		0.070415, -0.949990, 0.304237,
		32.944019, 39.103397, 42.760849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291512, 39.620228, 42.860989>,  <32.894726, 39.768391, 42.547882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291512, 39.620228, 42.860989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518467, 39.319366, 42.995049>,  <32.654640, 39.138847, 43.075485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518467, 39.319366, 42.995049>,  <32.291512, 39.620228, 42.860989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518467, 39.319366, 42.995049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325509, 0.168992, 0.930315,
		-0.756380, -0.636949, -0.148949,
		0.567392, -0.752155, 0.335154,
		32.688686, 39.093719, 43.095596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854340, 39.223438, 43.399647>,  <32.291512, 39.620228, 42.860989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854340, 39.223438, 43.399647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244656, 39.163193, 43.463078>,  <32.478844, 39.127045, 43.501137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244656, 39.163193, 43.463078>,  <31.854340, 39.223438, 43.399647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244656, 39.163193, 43.463078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145876, 0.091996, 0.985016,
		-0.162948, -0.984303, 0.067798,
		0.975791, -0.150616, 0.158577,
		32.537392, 39.118008, 43.510651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938906, 38.654335, 43.895130>,  <31.854340, 39.223438, 43.399647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938906, 38.654335, 43.895130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268467, 38.880638, 43.908405>,  <32.466202, 39.016422, 43.916370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268467, 38.880638, 43.908405>,  <31.938906, 38.654335, 43.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268467, 38.880638, 43.908405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076265, 0.052660, 0.995696,
		0.561579, -0.822886, 0.086534,
		0.823901, 0.565761, 0.033185,
		32.515636, 39.050365, 43.918362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366428, 38.344612, 44.422077>,  <31.938906, 38.654335, 43.895130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366428, 38.344612, 44.422077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517483, 38.709633, 44.359280>,  <32.608116, 38.928646, 44.321602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517483, 38.709633, 44.359280>,  <32.366428, 38.344612, 44.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517483, 38.709633, 44.359280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029749, 0.157501, 0.987071,
		0.925477, -0.377421, 0.032331,
		0.377633, 0.912550, -0.156991,
		32.630772, 38.983398, 44.312183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940212, 38.363781, 44.896488>,  <32.366428, 38.344612, 44.422077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940212, 38.363781, 44.896488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826637, 38.731983, 44.789120>,  <32.758492, 38.952904, 44.724701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826637, 38.731983, 44.789120>,  <32.940212, 38.363781, 44.896488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826637, 38.731983, 44.789120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050212, 0.293830, 0.954538,
		0.957528, 0.257550, -0.129649,
		-0.283936, 0.920506, -0.268418,
		32.741455, 39.008137, 44.708595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359715, 38.811131, 45.248993>,  <32.940212, 38.363781, 44.896488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359715, 38.811131, 45.248993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038822, 39.041695, 45.186806>,  <32.846287, 39.180035, 45.149494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038822, 39.041695, 45.186806>,  <33.359715, 38.811131, 45.248993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038822, 39.041695, 45.186806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020193, 0.286467, 0.957877,
		0.596666, 0.765303, -0.241453,
		-0.802235, 0.576409, -0.155471,
		32.798153, 39.214619, 45.140163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450996, 39.489071, 45.722813>,  <33.359715, 38.811131, 45.248993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450996, 39.489071, 45.722813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065990, 39.519611, 45.618702>,  <32.834988, 39.537937, 45.556236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065990, 39.519611, 45.618702>,  <33.450996, 39.489071, 45.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065990, 39.519611, 45.618702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218238, 0.351825, 0.910270,
		0.161070, 0.932947, -0.321973,
		-0.962512, 0.076351, -0.260273,
		32.777237, 39.542515, 45.540619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952328, 40.018993, 45.332569>,  <33.450996, 39.489071, 45.722813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952328, 40.018993, 45.332569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316177, 40.048916, 45.496029>,  <34.534485, 40.066868, 45.594105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316177, 40.048916, 45.496029>,  <33.952328, 40.018993, 45.332569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316177, 40.048916, 45.496029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320026, -0.753390, -0.574446,
		0.264903, 0.653306, -0.709238,
		0.909621, 0.074802, 0.408650,
		34.589066, 40.071358, 45.618626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276932, 40.099510, 44.790527>,  <33.952328, 40.018993, 45.332569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276932, 40.099510, 44.790527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561752, 40.018078, 45.059315>,  <34.732643, 39.969219, 45.220589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561752, 40.018078, 45.059315>,  <34.276932, 40.099510, 44.790527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561752, 40.018078, 45.059315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310441, -0.767133, -0.561367,
		0.629772, 0.608327, -0.483038,
		0.712049, -0.203579, 0.671968,
		34.775368, 39.957005, 45.260906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949818, 40.038067, 44.365120>,  <34.276932, 40.099510, 44.790527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949818, 40.038067, 44.365120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020100, 39.847160, 44.709526>,  <35.062267, 39.732616, 44.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020100, 39.847160, 44.709526>,  <34.949818, 40.038067, 44.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020100, 39.847160, 44.709526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354540, -0.785255, -0.507617,
		0.918385, 0.394454, 0.031238,
		0.175702, -0.477263, 0.861016,
		35.072811, 39.703983, 44.967831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637089, 39.853580, 44.378368>,  <34.949818, 40.038067, 44.365120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637089, 39.853580, 44.378368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474075, 39.614357, 44.654411>,  <35.376266, 39.470825, 44.820038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474075, 39.614357, 44.654411>,  <35.637089, 39.853580, 44.378368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474075, 39.614357, 44.654411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410264, -0.795057, -0.446729,
		0.815843, 0.101069, 0.569373,
		-0.407534, -0.598054, 0.690107,
		35.351814, 39.434940, 44.861443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180698, 39.433525, 44.705322>,  <35.637089, 39.853580, 44.378368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180698, 39.433525, 44.705322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839970, 39.234802, 44.771755>,  <35.635532, 39.115570, 44.811615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839970, 39.234802, 44.771755>,  <36.180698, 39.433525, 44.705322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839970, 39.234802, 44.771755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396892, -0.819024, -0.414338,
		0.341868, -0.287028, 0.894841,
		-0.851823, -0.496805, 0.166079,
		35.584423, 39.085762, 44.821579>
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
