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
	<36.312878, 53.576073, 50.358948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495701, 53.578743, 50.003181>,  <36.605392, 53.580345, 49.789722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495701, 53.578743, 50.003181>,  <36.312878, 53.576073, 50.358948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495701, 53.578743, 50.003181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750383, 0.533973, 0.389614,
		0.477522, -0.845475, 0.239047,
		0.457054, 0.006672, -0.889414,
		36.632816, 53.580746, 49.736359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974751, 53.154575, 50.200848>,  <36.312878, 53.576073, 50.358948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974751, 53.154575, 50.200848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939236, 53.512440, 50.025719>,  <36.917927, 53.727158, 49.920639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939236, 53.512440, 50.025719>,  <36.974751, 53.154575, 50.200848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939236, 53.512440, 50.025719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810792, 0.320236, 0.489964,
		0.578561, -0.311485, -0.753820,
		-0.088784, 0.894666, -0.437825,
		36.912601, 53.780838, 49.894371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617764, 53.307438, 49.974346>,  <36.974751, 53.154575, 50.200848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617764, 53.307438, 49.974346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427719, 53.644890, 50.074387>,  <37.313690, 53.847363, 50.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427719, 53.644890, 50.074387>,  <37.617764, 53.307438, 49.974346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427719, 53.644890, 50.074387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831494, 0.337448, 0.441301,
		0.287898, 0.417629, -0.861801,
		-0.475113, 0.843632, 0.250105,
		37.285187, 53.897980, 50.149418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940205, 53.930084, 49.682732>,  <37.617764, 53.307438, 49.974346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940205, 53.930084, 49.682732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763287, 54.001804, 50.034237>,  <37.657135, 54.044834, 50.245140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763287, 54.001804, 50.034237>,  <37.940205, 53.930084, 49.682732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763287, 54.001804, 50.034237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848635, 0.400657, 0.345387,
		-0.290155, 0.898514, -0.329368,
		-0.442299, 0.179298, 0.878763,
		37.630596, 54.055595, 50.297867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351585, 54.508499, 49.961815>,  <37.940205, 53.930084, 49.682732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351585, 54.508499, 49.961815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155075, 54.329136, 50.260498>,  <38.037167, 54.221519, 50.439709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155075, 54.329136, 50.260498>,  <38.351585, 54.508499, 49.961815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155075, 54.329136, 50.260498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768931, 0.179417, 0.613640,
		-0.409134, 0.875637, 0.256652,
		-0.491278, -0.448408, 0.746710,
		38.007690, 54.194614, 50.484512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223515, 55.015671, 50.478168>,  <38.351585, 54.508499, 49.961815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223515, 55.015671, 50.478168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217987, 54.665211, 50.670906>,  <38.214672, 54.454937, 50.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217987, 54.665211, 50.670906>,  <38.223515, 55.015671, 50.478168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217987, 54.665211, 50.670906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647688, 0.359289, 0.671872,
		-0.761780, 0.321373, 0.562504,
		-0.013820, -0.876146, 0.481849,
		38.213840, 54.402367, 50.815460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546078, 55.291843, 51.033798>,  <38.223515, 55.015671, 50.478168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546078, 55.291843, 51.033798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574810, 54.893105, 51.047245>,  <38.592049, 54.653862, 51.055313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574810, 54.893105, 51.047245>,  <38.546078, 55.291843, 51.033798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574810, 54.893105, 51.047245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732793, 0.075611, 0.676238,
		-0.676649, -0.023943, 0.735916,
		0.071835, -0.996850, 0.033617,
		38.596359, 54.594051, 51.057331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719658, 55.119652, 51.714153>,  <38.546078, 55.291843, 51.033798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719658, 55.119652, 51.714153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861149, 54.817032, 51.494148>,  <38.946041, 54.635460, 51.362144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861149, 54.817032, 51.494148>,  <38.719658, 55.119652, 51.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861149, 54.817032, 51.494148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717206, -0.158084, 0.678694,
		-0.600413, -0.634543, 0.486682,
		0.353724, -0.756548, -0.550013,
		38.967266, 54.590069, 51.329144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820560, 54.451206, 51.966648>,  <38.719658, 55.119652, 51.714153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820560, 54.451206, 51.966648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114353, 54.490959, 51.698124>,  <39.290630, 54.514809, 51.537010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114353, 54.490959, 51.698124>,  <38.820560, 54.451206, 51.966648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114353, 54.490959, 51.698124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677681, -0.159602, 0.717827,
		-0.035804, -0.982166, -0.184573,
		0.734484, 0.099381, -0.671310,
		39.334698, 54.520771, 51.496731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127903, 53.845291, 51.839680>,  <38.820560, 54.451206, 51.966648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127903, 53.845291, 51.839680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357018, 54.171806, 51.809769>,  <39.494484, 54.367714, 51.791824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357018, 54.171806, 51.809769>,  <39.127903, 53.845291, 51.839680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357018, 54.171806, 51.809769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634373, -0.383660, 0.671100,
		0.519124, -0.431830, -0.737586,
		0.572783, 0.816289, -0.074774,
		39.528854, 54.416695, 51.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773186, 53.680130, 51.616280>,  <39.127903, 53.845291, 51.839680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773186, 53.680130, 51.616280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777515, 54.005775, 51.848518>,  <39.780113, 54.201164, 51.987862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777515, 54.005775, 51.848518>,  <39.773186, 53.680130, 51.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777515, 54.005775, 51.848518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561463, -0.485413, 0.670174,
		0.827431, 0.318730, -0.462351,
		0.010827, 0.814116, 0.580601,
		39.780762, 54.250011, 52.022697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419079, 54.015831, 51.700974>,  <39.773186, 53.680130, 51.616280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419079, 54.015831, 51.700974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190376, 54.043556, 52.027969>,  <40.053154, 54.060192, 52.224167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190376, 54.043556, 52.027969>,  <40.419079, 54.015831, 51.700974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190376, 54.043556, 52.027969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697706, -0.483136, 0.528948,
		0.431622, 0.872797, 0.227875,
		-0.571759, 0.069316, 0.817488,
		40.018848, 54.064350, 52.273216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831573, 54.466789, 52.193100>,  <40.419079, 54.015831, 51.700974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831573, 54.466789, 52.193100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606907, 54.169544, 52.338604>,  <40.472107, 53.991199, 52.425907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606907, 54.169544, 52.338604>,  <40.831573, 54.466789, 52.193100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606907, 54.169544, 52.338604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779494, -0.327898, 0.533734,
		-0.277346, 0.583328, 0.763418,
		-0.561665, -0.743109, 0.363760,
		40.438408, 53.946613, 52.447731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857307, 54.503666, 52.918179>,  <40.831573, 54.466789, 52.193100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857307, 54.503666, 52.918179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780037, 54.129410, 52.800018>,  <40.733677, 53.904858, 52.729122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780037, 54.129410, 52.800018>,  <40.857307, 54.503666, 52.918179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780037, 54.129410, 52.800018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872644, -0.301467, 0.384202,
		-0.448528, -0.183560, 0.874716,
		-0.193174, -0.935641, -0.295399,
		40.722084, 53.848717, 52.711399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064972, 54.048046, 53.448357>,  <40.857307, 54.503666, 52.918179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064972, 54.048046, 53.448357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083878, 53.860607, 53.095497>,  <41.095222, 53.748142, 52.883781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083878, 53.860607, 53.095497>,  <41.064972, 54.048046, 53.448357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083878, 53.860607, 53.095497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907657, -0.348568, 0.233793,
		-0.417043, -0.811735, 0.408854,
		0.047265, -0.468601, -0.882145,
		41.098057, 53.720028, 52.830853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591759, 53.889271, 52.937244>,  <41.064972, 54.048046, 53.448357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591759, 53.889271, 52.937244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580181, 53.897797, 52.537502>,  <41.573235, 53.902912, 52.297657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580181, 53.897797, 52.537502>,  <41.591759, 53.889271, 52.937244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580181, 53.897797, 52.537502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320399, -0.946824, -0.029476,
		-0.946836, -0.321048, 0.020744,
		-0.029104, 0.021262, -0.999350,
		41.571499, 53.904190, 52.237698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286148, 53.487000, 52.938351>,  <41.591759, 53.889271, 52.937244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286148, 53.487000, 52.938351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182858, 53.749054, 53.222355>,  <42.120884, 53.906288, 53.392757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182858, 53.749054, 53.222355>,  <42.286148, 53.487000, 52.938351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182858, 53.749054, 53.222355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718925, -0.360620, 0.594221,
		0.645340, 0.663889, -0.377872,
		-0.258229, 0.655137, 0.710009,
		42.105389, 53.945595, 53.435356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803856, 54.105167, 53.154724>,  <42.286148, 53.487000, 52.938351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803856, 54.105167, 53.154724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584553, 54.033932, 53.481575>,  <42.452972, 53.991192, 53.677685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584553, 54.033932, 53.481575>,  <42.803856, 54.105167, 53.154724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584553, 54.033932, 53.481575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823772, -0.283565, 0.490908,
		0.144286, 0.942272, 0.302169,
		-0.548254, -0.178087, 0.817131,
		42.420078, 53.980507, 53.726715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926899, 54.602379, 53.786488>,  <42.803856, 54.105167, 53.154724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926899, 54.602379, 53.786488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861446, 54.224106, 53.898849>,  <42.822174, 53.997143, 53.966267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861446, 54.224106, 53.898849>,  <42.926899, 54.602379, 53.786488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861446, 54.224106, 53.898849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884306, -0.014387, 0.466687,
		-0.437298, 0.324765, 0.838629,
		-0.163629, -0.945685, 0.280901,
		42.812359, 53.940399, 53.983120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137150, 55.329723, 53.755726>,  <42.926899, 54.602379, 53.786488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137150, 55.329723, 53.755726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315605, 55.512238, 53.447762>,  <43.422680, 55.621746, 53.262981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315605, 55.512238, 53.447762>,  <43.137150, 55.329723, 53.755726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315605, 55.512238, 53.447762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800666, 0.180874, 0.571155,
		0.399866, -0.871257, -0.284636,
		0.446140, 0.456284, -0.769912,
		43.449448, 55.649124, 53.216789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888252, 55.051964, 53.498318>,  <43.137150, 55.329723, 53.755726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888252, 55.051964, 53.498318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849014, 55.442314, 53.420296>,  <43.825470, 55.676525, 53.373482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849014, 55.442314, 53.420296>,  <43.888252, 55.051964, 53.498318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849014, 55.442314, 53.420296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812678, 0.191679, 0.550285,
		0.574397, -0.104538, -0.811874,
		-0.098094, 0.975874, -0.195056,
		43.819588, 55.735077, 53.361778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500584, 55.341026, 53.071079>,  <43.888252, 55.051964, 53.498318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500584, 55.341026, 53.071079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346367, 55.624535, 53.307388>,  <44.253838, 55.794640, 53.449173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346367, 55.624535, 53.307388>,  <44.500584, 55.341026, 53.071079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346367, 55.624535, 53.307388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887326, 0.109243, 0.448016,
		0.253001, 0.696933, -0.671025,
		-0.385542, 0.708766, 0.590769,
		44.230705, 55.837166, 53.484619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712612, 56.035278, 52.891399>,  <44.500584, 55.341026, 53.071079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712612, 56.035278, 52.891399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628117, 55.959229, 53.274906>,  <44.577419, 55.913601, 53.505009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628117, 55.959229, 53.274906>,  <44.712612, 56.035278, 52.891399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628117, 55.959229, 53.274906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896201, 0.353837, 0.267624,
		-0.390128, 0.915780, 0.095640,
		-0.211243, -0.190120, 0.958765,
		44.564743, 55.902191, 53.562534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894043, 56.635612, 53.240860>,  <44.712612, 56.035278, 52.891399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894043, 56.635612, 53.240860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887897, 56.322304, 53.489456>,  <44.884209, 56.134319, 53.638615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887897, 56.322304, 53.489456>,  <44.894043, 56.635612, 53.240860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887897, 56.322304, 53.489456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952159, 0.178271, 0.248220,
		-0.305217, 0.595574, 0.743057,
		-0.015368, -0.783269, 0.621493,
		44.883286, 56.087322, 53.675903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.174191, 56.843346, 53.909668>,  <44.894043, 56.635612, 53.240860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.174191, 56.843346, 53.909668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238319, 56.463310, 53.802612>,  <45.276798, 56.235291, 53.738377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238319, 56.463310, 53.802612>,  <45.174191, 56.843346, 53.909668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238319, 56.463310, 53.802612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968083, 0.098428, 0.230494,
		-0.192645, -0.296054, 0.935542,
		0.160322, -0.950086, -0.267644,
		45.286415, 56.178284, 53.722321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464073, 56.407902, 54.402180>,  <45.174191, 56.843346, 53.909668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464073, 56.407902, 54.402180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592957, 56.248875, 54.058525>,  <45.670288, 56.153458, 53.852333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592957, 56.248875, 54.058525>,  <45.464073, 56.407902, 54.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592957, 56.248875, 54.058525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946332, 0.111114, 0.303494,
		-0.025197, -0.910821, 0.412032,
		0.322211, -0.397566, -0.859140,
		45.689621, 56.129604, 53.800785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798588, 55.794922, 54.602909>,  <45.464073, 56.407902, 54.402180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798588, 55.794922, 54.602909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944050, 55.944775, 54.261757>,  <46.031326, 56.034687, 54.057064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.944050, 55.944775, 54.261757>,  <45.798588, 55.794922, 54.602909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944050, 55.944775, 54.261757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930727, -0.107991, 0.349407,
		0.038795, -0.920863, -0.387952,
		0.363651, 0.374633, -0.852882,
		46.053146, 56.057163, 54.005894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435246, 55.535049, 54.528103>,  <45.798588, 55.794922, 54.602909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435246, 55.535049, 54.528103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451813, 55.861473, 54.297508>,  <46.461754, 56.057327, 54.159153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451813, 55.861473, 54.297508>,  <46.435246, 55.535049, 54.528103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451813, 55.861473, 54.297508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962151, 0.122970, 0.243195,
		0.269352, -0.564740, -0.780076,
		0.041416, 0.816056, -0.576487,
		46.464237, 56.106289, 54.124561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068832, 55.552418, 54.076603>,  <46.435246, 55.535049, 54.528103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068832, 55.552418, 54.076603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.955116, 55.929192, 54.148094>,  <46.886887, 56.155254, 54.190990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.955116, 55.929192, 54.148094>,  <47.068832, 55.552418, 54.076603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.955116, 55.929192, 54.148094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958272, 0.273357, 0.083613,
		0.029900, 0.195043, -0.980339,
		-0.284290, 0.941931, 0.178731,
		46.869831, 56.211769, 54.201714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385815, 56.080467, 53.598381>,  <47.068832, 55.552418, 54.076603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385815, 56.080467, 53.598381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291996, 56.222473, 53.960365>,  <47.235703, 56.307674, 54.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291996, 56.222473, 53.960365>,  <47.385815, 56.080467, 53.598381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291996, 56.222473, 53.960365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888972, 0.455010, 0.051906,
		-0.393338, 0.816659, -0.422319,
		-0.234549, 0.355013, 0.904960,
		47.221630, 56.328976, 54.231853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470493, 56.878353, 53.588333>,  <47.385815, 56.080467, 53.598381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470493, 56.878353, 53.588333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585442, 56.740437, 53.945778>,  <47.654411, 56.657688, 54.160244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585442, 56.740437, 53.945778>,  <47.470493, 56.878353, 53.588333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585442, 56.740437, 53.945778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858034, 0.507293, -0.080194,
		-0.425672, 0.789793, 0.441621,
		0.287368, -0.344790, 0.893610,
		47.671654, 56.637001, 54.213860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.785099, 57.444622, 54.069740>,  <47.470493, 56.878353, 53.588333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.785099, 57.444622, 54.069740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.946880, 57.088737, 54.154430>,  <48.043949, 56.875206, 54.205242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.946880, 57.088737, 54.154430>,  <47.785099, 57.444622, 54.069740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.946880, 57.088737, 54.154430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913857, 0.384105, -0.131641,
		0.035799, 0.246726, 0.968424,
		0.404455, -0.889713, 0.211722,
		48.068218, 56.821823, 54.217945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.397400, 57.508553, 54.550037>,  <47.785099, 57.444622, 54.069740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.397400, 57.508553, 54.550037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.423000, 57.165253, 54.346344>,  <48.438362, 56.959274, 54.224129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.423000, 57.165253, 54.346344>,  <48.397400, 57.508553, 54.550037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.423000, 57.165253, 54.346344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928361, 0.238412, -0.285140,
		0.366127, -0.454499, 0.812023,
		0.064001, -0.858248, -0.509229,
		48.442200, 56.907780, 54.193577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.193428, 57.130489, 54.606327>,  <48.397400, 57.508553, 54.550037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.193428, 57.130489, 54.606327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.999088, 57.066559, 54.262604>,  <48.882484, 57.028198, 54.056370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.999088, 57.066559, 54.262604>,  <49.193428, 57.130489, 54.606327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.999088, 57.066559, 54.262604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801309, 0.311196, -0.510941,
		0.349075, -0.936809, -0.023123,
		-0.485850, -0.159828, -0.859305,
		48.853333, 57.018608, 54.004814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.560394, 56.690964, 54.033695>,  <49.193428, 57.130489, 54.606327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.560394, 56.690964, 54.033695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.308544, 56.958260, 53.875187>,  <49.157436, 57.118637, 53.780083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.308544, 56.958260, 53.875187>,  <49.560394, 56.690964, 54.033695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.308544, 56.958260, 53.875187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735601, 0.348684, -0.580785,
		-0.249930, -0.657173, -0.711097,
		-0.629624, 0.668240, -0.396270,
		49.119656, 57.158730, 53.756306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.782524, 56.746460, 53.278366>,  <49.560394, 56.690964, 54.033695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.782524, 56.746460, 53.278366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.608185, 57.079086, 53.416084>,  <49.503582, 57.278660, 53.498714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.608185, 57.079086, 53.416084>,  <49.782524, 56.746460, 53.278366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.608185, 57.079086, 53.416084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704699, 0.553263, -0.444184,
		-0.559854, 0.049029, -0.827139,
		-0.435847, 0.831563, 0.344297,
		49.477432, 57.328556, 53.519375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.802574, 57.286041, 52.722942>,  <49.782524, 56.746460, 53.278366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.802574, 57.286041, 52.722942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.786449, 57.436253, 53.093315>,  <49.776775, 57.526379, 53.315540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.786449, 57.436253, 53.093315>,  <49.802574, 57.286041, 52.722942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.786449, 57.436253, 53.093315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729236, 0.644570, -0.229662,
		-0.683074, 0.665966, -0.299832,
		-0.040316, 0.375524, 0.925935,
		49.774353, 57.548908, 53.371098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.650505, 58.016560, 52.861256>,  <49.802574, 57.286041, 52.722942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.650505, 58.016560, 52.861256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.902176, 57.937035, 53.161816>,  <50.053181, 57.889320, 53.342152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.902176, 57.937035, 53.161816>,  <49.650505, 58.016560, 52.861256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.902176, 57.937035, 53.161816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620047, 0.711332, -0.330982,
		-0.468694, 0.674152, 0.570828,
		0.629180, -0.198811, 0.751403,
		50.090931, 57.877392, 53.387238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.822285, 58.642006, 53.311443>,  <49.650505, 58.016560, 52.861256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.822285, 58.642006, 53.311443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.114548, 58.374184, 53.364876>,  <50.289906, 58.213490, 53.396935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.114548, 58.374184, 53.364876>,  <49.822285, 58.642006, 53.311443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.114548, 58.374184, 53.364876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682495, 0.721599, -0.116173,
		-0.018611, 0.176053, 0.984205,
		0.730653, -0.669553, 0.133585,
		50.333744, 58.173317, 53.404953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.320690, 58.785831, 53.816849>,  <49.822285, 58.642006, 53.311443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.320690, 58.785831, 53.816849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.512112, 58.541046, 53.564980>,  <50.626965, 58.394176, 53.413857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.512112, 58.541046, 53.564980>,  <50.320690, 58.785831, 53.816849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.512112, 58.541046, 53.564980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731320, 0.674680, -0.099893,
		0.485960, -0.412690, 0.770409,
		0.478555, -0.611959, -0.629675,
		50.655678, 58.357460, 53.376076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.992317, 58.793724, 53.900681>,  <50.320690, 58.785831, 53.816849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.992317, 58.793724, 53.900681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.985352, 58.642090, 53.530602>,  <50.981171, 58.551109, 53.308552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.985352, 58.642090, 53.530602>,  <50.992317, 58.793724, 53.900681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.985352, 58.642090, 53.530602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903060, 0.391216, -0.177291,
		0.429161, -0.838598, 0.335520,
		-0.017415, -0.379082, -0.925199,
		50.980125, 58.528366, 53.253040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.548256, 58.387890, 53.806587>,  <50.992317, 58.793724, 53.900681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.548256, 58.387890, 53.806587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.445511, 58.511833, 53.440414>,  <51.383865, 58.586201, 53.220711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.445511, 58.511833, 53.440414>,  <51.548256, 58.387890, 53.806587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.445511, 58.511833, 53.440414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935024, 0.319253, -0.154297,
		0.244443, -0.895580, -0.371733,
		-0.256862, 0.309863, -0.915427,
		51.368454, 58.604794, 53.165787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.584423, 57.810909, 54.392643>,  <51.548256, 58.387890, 53.806587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.584423, 57.810909, 54.392643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.682964, 57.694176, 54.022964>,  <51.742088, 57.624134, 53.801159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.682964, 57.694176, 54.022964>,  <51.584423, 57.810909, 54.392643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.682964, 57.694176, 54.022964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969164, 0.079548, 0.233225,
		0.005455, -0.953155, 0.302433,
		0.246357, -0.291835, -0.924197,
		51.756870, 57.606625, 53.745705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.155220, 57.372341, 54.483150>,  <51.584423, 57.810909, 54.392643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.155220, 57.372341, 54.483150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.226067, 57.543747, 54.128750>,  <52.268574, 57.646591, 53.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.226067, 57.543747, 54.128750>,  <52.155220, 57.372341, 54.483150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.226067, 57.543747, 54.128750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934186, 0.210097, 0.288366,
		0.309716, -0.878769, -0.363100,
		0.177121, 0.428514, -0.886004,
		52.279202, 57.672302, 53.862949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.593136, 57.000233, 54.088081>,  <52.155220, 57.372341, 54.483150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.593136, 57.000233, 54.088081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.642979, 57.396748, 54.071041>,  <52.672882, 57.634659, 54.060818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.642979, 57.396748, 54.071041>,  <52.593136, 57.000233, 54.088081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.642979, 57.396748, 54.071041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909544, -0.096962, 0.404138,
		0.396488, -0.089104, -0.913705,
		0.124605, 0.991292, -0.042600,
		52.680359, 57.694134, 54.058262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.141460, 57.232536, 53.573277>,  <52.593136, 57.000233, 54.088081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.141460, 57.232536, 53.573277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.088913, 57.480568, 53.882664>,  <53.057384, 57.629387, 54.068295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.088913, 57.480568, 53.882664>,  <53.141460, 57.232536, 53.573277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.088913, 57.480568, 53.882664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930440, -0.192111, 0.312049,
		0.342085, 0.760657, -0.551705,
		-0.131373, 0.620076, 0.773464,
		53.049500, 57.666592, 54.114704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.823563, 57.657917, 53.594219>,  <53.141460, 57.232536, 53.573277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.823563, 57.657917, 53.594219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.629715, 57.625000, 53.942558>,  <53.513405, 57.605247, 54.151562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.629715, 57.625000, 53.942558>,  <53.823563, 57.657917, 53.594219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.629715, 57.625000, 53.942558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854354, -0.258135, 0.451049,
		0.187676, 0.962597, 0.195408,
		-0.484620, -0.082297, 0.870845,
		53.484329, 57.600311, 54.203812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.244217, 58.105171, 54.177433>,  <53.823563, 57.657917, 53.594219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.244217, 58.105171, 54.177433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.019897, 57.803032, 54.313057>,  <53.885307, 57.621750, 54.394432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.019897, 57.803032, 54.313057>,  <54.244217, 58.105171, 54.177433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.019897, 57.803032, 54.313057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777549, -0.339764, 0.529130,
		-0.284477, 0.560366, 0.777857,
		-0.560795, -0.755348, 0.339057,
		53.851658, 57.576427, 54.414776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.372440, 57.999893, 54.944702>,  <54.244217, 58.105171, 54.177433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.372440, 57.999893, 54.944702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.196518, 57.666340, 54.811310>,  <54.090965, 57.466206, 54.731274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.196518, 57.666340, 54.811310>,  <54.372440, 57.999893, 54.944702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.196518, 57.666340, 54.811310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763839, -0.542613, 0.349457,
		-0.472356, -0.101030, 0.875598,
		-0.439805, -0.833885, -0.333477,
		54.064575, 57.416176, 54.711266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.866783, 57.596275, 55.437950>,  <54.372440, 57.999893, 54.944702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.866783, 57.596275, 55.437950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.068092, 57.533138, 55.098114>,  <55.188877, 57.495255, 54.894215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.068092, 57.533138, 55.098114>,  <54.866783, 57.596275, 55.437950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.068092, 57.533138, 55.098114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823897, -0.208843, 0.526858,
		-0.260592, -0.965127, 0.024943,
		0.503275, -0.157845, -0.849587,
		55.219074, 57.485786, 54.843239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.080582, 56.886925, 55.275139>,  <54.866783, 57.596275, 55.437950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.080582, 56.886925, 55.275139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.339684, 57.159142, 55.138153>,  <55.495144, 57.322472, 55.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.339684, 57.159142, 55.138153>,  <55.080582, 56.886925, 55.275139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.339684, 57.159142, 55.138153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709072, -0.374127, 0.597701,
		0.278632, -0.629996, -0.724893,
		0.647751, 0.680540, -0.342468,
		55.534008, 57.363304, 55.035412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.719711, 56.500202, 55.223293>,  <55.080582, 56.886925, 55.275139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.719711, 56.500202, 55.223293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.800346, 56.891731, 55.237518>,  <55.848728, 57.126648, 55.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.800346, 56.891731, 55.237518>,  <55.719711, 56.500202, 55.223293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.800346, 56.891731, 55.237518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776560, -0.181853, 0.603227,
		0.596921, -0.093986, -0.796776,
		0.201592, 0.978824, 0.035566,
		55.860825, 57.185379, 55.248188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.465981, 56.667458, 55.100300>,  <55.719711, 56.500202, 55.223293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.465981, 56.667458, 55.100300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.286621, 56.939308, 55.332520>,  <56.179005, 57.102417, 55.471851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.286621, 56.939308, 55.332520>,  <56.465981, 56.667458, 55.100300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.286621, 56.939308, 55.332520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798506, 0.012721, 0.601852,
		0.401650, 0.733447, -0.548391,
		-0.448402, 0.679627, 0.580553,
		56.152100, 57.143196, 55.506687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.800011, 57.225742, 55.123981>,  <56.465981, 56.667458, 55.100300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.800011, 57.225742, 55.123981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.588776, 57.132942, 55.450737>,  <56.462036, 57.077263, 55.646790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.588776, 57.132942, 55.450737>,  <56.800011, 57.225742, 55.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.588776, 57.132942, 55.450737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849020, -0.163531, 0.502417,
		0.017026, 0.958871, 0.283330,
		-0.528087, -0.231998, 0.816885,
		56.430351, 57.063343, 55.695801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.977398, 57.509151, 55.793240>,  <56.800011, 57.225742, 55.123981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.977398, 57.509151, 55.793240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.797775, 57.164406, 55.887512>,  <56.690002, 56.957558, 55.944077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.797775, 57.164406, 55.887512>,  <56.977398, 57.509151, 55.793240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.797775, 57.164406, 55.887512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867836, -0.357936, 0.344590,
		-0.212630, 0.359274, 0.908686,
		-0.449054, -0.861861, 0.235683,
		56.663059, 56.905846, 55.958218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.121155, 57.296177, 56.534088>,  <56.977398, 57.509151, 55.793240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.121155, 57.296177, 56.534088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.053696, 56.981277, 56.296837>,  <57.013222, 56.792339, 56.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.053696, 56.981277, 56.296837>,  <57.121155, 57.296177, 56.534088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.053696, 56.981277, 56.296837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921318, -0.339774, 0.189016,
		-0.350332, -0.514584, 0.782605,
		-0.168644, -0.787247, -0.593129,
		57.003101, 56.745102, 56.118896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.301636, 56.563953, 56.811943>,  <57.121155, 57.296177, 56.534088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.301636, 56.563953, 56.811943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.534393, 56.242687, 56.863037>,  <57.674049, 56.049927, 56.893696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.534393, 56.242687, 56.863037>,  <57.301636, 56.563953, 56.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.534393, 56.242687, 56.863037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695296, 0.409840, -0.590419,
		0.421854, 0.432378, 0.796925,
		0.581896, -0.803169, 0.127738,
		57.708961, 56.001736, 56.901360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.005520, 56.584782, 57.190647>,  <57.301636, 56.563953, 56.811943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.005520, 56.584782, 57.190647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.015526, 56.294289, 56.915848>,  <58.021530, 56.119995, 56.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.015526, 56.294289, 56.915848>,  <58.005520, 56.584782, 57.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.015526, 56.294289, 56.915848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672567, 0.520655, -0.525902,
		0.739614, -0.448896, 0.501461,
		0.025013, -0.726231, -0.686996,
		58.023029, 56.076420, 56.709747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.764721, 56.403759, 57.027103>,  <58.005520, 56.584782, 57.190647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.764721, 56.403759, 57.027103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.549644, 56.295052, 56.707848>,  <58.420597, 56.229828, 56.516293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.549644, 56.295052, 56.707848>,  <58.764721, 56.403759, 57.027103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.549644, 56.295052, 56.707848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659717, 0.453865, -0.598983,
		0.525031, -0.848617, -0.064752,
		-0.537695, -0.271767, -0.798139,
		58.388336, 56.213520, 56.468407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.283348, 56.140244, 56.553413>,  <58.764721, 56.403759, 57.027103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.283348, 56.140244, 56.553413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.948685, 56.271122, 56.377708>,  <58.747887, 56.349648, 56.272285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.948685, 56.271122, 56.377708>,  <59.283348, 56.140244, 56.553413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.948685, 56.271122, 56.377708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547261, 0.466298, -0.695034,
		-0.022584, -0.821895, -0.569191,
		-0.836657, 0.327193, -0.439260,
		58.697689, 56.369278, 56.245930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.280777, 56.029716, 55.820412>,  <59.283348, 56.140244, 56.553413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.280777, 56.029716, 55.820412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.041245, 56.344658, 55.879028>,  <58.897526, 56.533623, 55.914200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.041245, 56.344658, 55.879028>,  <59.280777, 56.029716, 55.820412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.041245, 56.344658, 55.879028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572205, 0.548648, -0.609562,
		-0.560344, -0.281169, -0.779075,
		-0.598828, 0.787356, 0.146545,
		58.861595, 56.580864, 55.922993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.249557, 56.173744, 55.200649>,  <59.280777, 56.029716, 55.820412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.249557, 56.173744, 55.200649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.222366, 56.500069, 55.430374>,  <59.206051, 56.695862, 55.568207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.222366, 56.500069, 55.430374>,  <59.249557, 56.173744, 55.200649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.222366, 56.500069, 55.430374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628437, 0.482100, -0.610448,
		-0.774885, 0.319420, -0.545458,
		-0.067976, 0.815812, 0.574308,
		59.201973, 56.744812, 55.602665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.281998, 56.668934, 54.750175>,  <59.249557, 56.173744, 55.200649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.281998, 56.668934, 54.750175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.431709, 56.744850, 55.113251>,  <59.521534, 56.790401, 55.331097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.431709, 56.744850, 55.113251>,  <59.281998, 56.668934, 54.750175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.431709, 56.744850, 55.113251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799419, 0.430012, -0.419546,
		-0.469944, 0.882648, 0.009218,
		0.374276, 0.189795, 0.907687,
		59.543991, 56.801788, 55.385555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.612579, 57.353947, 54.737000>,  <59.281998, 56.668934, 54.750175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.612579, 57.353947, 54.737000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.775200, 57.112526, 55.011353>,  <59.872772, 56.967674, 55.175964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.775200, 57.112526, 55.011353>,  <59.612579, 57.353947, 54.737000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.775200, 57.112526, 55.011353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902421, 0.382502, -0.198313,
		-0.142662, 0.699583, 0.700165,
		0.406551, -0.603552, 0.685887,
		59.897163, 56.931461, 55.217117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.943123, 57.722870, 55.179672>,  <59.612579, 57.353947, 54.737000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.943123, 57.722870, 55.179672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.095810, 57.355553, 55.137672>,  <60.187424, 57.135162, 55.112473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.095810, 57.355553, 55.137672>,  <59.943123, 57.722870, 55.179672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.095810, 57.355553, 55.137672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896893, 0.395458, -0.197981,
		0.223329, -0.018601, 0.974566,
		0.381717, -0.918296, -0.105000,
		60.210323, 57.080063, 55.106171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.578789, 57.579922, 55.570148>,  <59.943123, 57.722870, 55.179672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.578789, 57.579922, 55.570148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.587662, 57.357113, 55.238068>,  <60.592987, 57.223427, 55.038818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.587662, 57.357113, 55.238068>,  <60.578789, 57.579922, 55.570148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.587662, 57.357113, 55.238068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879444, 0.405815, -0.248783,
		0.475485, -0.724598, 0.498870,
		0.022182, -0.557021, -0.830202,
		60.594315, 57.190006, 54.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.215061, 57.418579, 55.530254>,  <60.578789, 57.579922, 55.570148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.215061, 57.418579, 55.530254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.062790, 57.421745, 55.160385>,  <60.971428, 57.423645, 54.938461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.062790, 57.421745, 55.160385>,  <61.215061, 57.418579, 55.530254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.062790, 57.421745, 55.160385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857255, 0.377934, -0.349685,
		0.346698, -0.925799, -0.150654,
		-0.380675, 0.007913, -0.924675,
		60.948589, 57.424118, 54.882984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.738049, 57.137688, 54.960655>,  <61.215061, 57.418579, 55.530254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.738049, 57.137688, 54.960655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.476944, 57.372879, 54.769581>,  <61.320282, 57.513996, 54.654938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.476944, 57.372879, 54.769581>,  <61.738049, 57.137688, 54.960655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.476944, 57.372879, 54.769581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756797, 0.534505, -0.376249,
		0.034095, -0.607108, -0.793887,
		-0.652760, 0.587983, -0.477682,
		61.281116, 57.549274, 54.626278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.308010, 56.600342, 55.276138>,  <61.738049, 57.137688, 54.960655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.308010, 56.600342, 55.276138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.400612, 56.774734, 55.624008>,  <62.456173, 56.879368, 55.832729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.400612, 56.774734, 55.624008>,  <62.308010, 56.600342, 55.276138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.400612, 56.774734, 55.624008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867254, 0.312542, -0.387541,
		-0.440769, 0.843943, -0.305750,
		0.231503, 0.435979, 0.869672,
		62.470062, 56.905529, 55.884911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.766491, 57.168205, 55.103008>,  <62.308010, 56.600342, 55.276138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.766491, 57.168205, 55.103008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.808655, 57.114742, 55.497169>,  <62.833954, 57.082664, 55.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.808655, 57.114742, 55.497169>,  <62.766491, 57.168205, 55.103008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.808655, 57.114742, 55.497169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976937, 0.198963, -0.077516,
		-0.185698, 0.970850, 0.151548,
		0.105409, -0.133659, 0.985406,
		62.840279, 57.074646, 55.792789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.020855, 57.749138, 55.529453>,  <62.766491, 57.168205, 55.103008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.020855, 57.749138, 55.529453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.140121, 57.417130, 55.717987>,  <63.211681, 57.217922, 55.831108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.140121, 57.417130, 55.717987>,  <63.020855, 57.749138, 55.529453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.140121, 57.417130, 55.717987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943352, 0.331541, -0.012916,
		-0.145547, 0.448488, 0.881858,
		0.298165, -0.830023, 0.471337,
		63.229572, 57.168121, 55.859386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.478939, 57.964085, 56.162323>,  <63.020855, 57.749138, 55.529453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.478939, 57.964085, 56.162323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.552483, 57.588516, 56.045967>,  <63.596611, 57.363174, 55.976154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.552483, 57.588516, 56.045967>,  <63.478939, 57.964085, 56.162323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.552483, 57.588516, 56.045967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961410, 0.233395, -0.145664,
		0.204659, -0.252882, 0.945603,
		0.183863, -0.938924, -0.290890,
		63.607643, 57.306839, 55.958702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.956730, 57.728180, 56.577312>,  <63.478939, 57.964085, 56.162323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.956730, 57.728180, 56.577312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.000854, 57.504307, 56.248779>,  <64.027328, 57.369984, 56.051659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.000854, 57.504307, 56.248779>,  <63.956730, 57.728180, 56.577312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.000854, 57.504307, 56.248779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987199, -0.034074, 0.155810,
		-0.115191, -0.828005, 0.548762,
		0.110313, -0.559685, -0.821330,
		64.033951, 57.336403, 56.002380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.383507, 57.177620, 56.795170>,  <63.956730, 57.728180, 56.577312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.383507, 57.177620, 56.795170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.431686, 57.208099, 56.399254>,  <64.460594, 57.226387, 56.161705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.431686, 57.208099, 56.399254>,  <64.383507, 57.177620, 56.795170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.431686, 57.208099, 56.399254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952479, -0.289873, 0.093584,
		-0.279783, -0.954027, -0.107493,
		0.120441, 0.076202, -0.989792,
		64.467819, 57.230961, 56.102318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.757935, 56.571377, 56.450562>,  <64.383507, 57.177620, 56.795170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.757935, 56.571377, 56.450562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.840714, 56.912537, 56.258842>,  <64.890381, 57.117233, 56.143810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.840714, 56.912537, 56.258842>,  <64.757935, 56.571377, 56.450562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.840714, 56.912537, 56.258842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970587, -0.117388, 0.210194,
		0.123010, -0.508704, -0.852108,
		0.206953, 0.852901, -0.479302,
		64.902802, 57.168407, 56.115051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.294640, 56.559212, 55.942062>,  <64.757935, 56.571377, 56.450562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.294640, 56.559212, 55.942062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.309937, 56.950981, 56.021317>,  <65.319115, 57.186043, 56.068871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.309937, 56.950981, 56.021317>,  <65.294640, 56.559212, 55.942062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.309937, 56.950981, 56.021317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925012, -0.109711, 0.363752,
		0.378007, 0.169365, -0.910179,
		0.038250, 0.979428, 0.198136,
		65.321411, 57.244808, 56.080757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.965034, 56.794243, 55.830105>,  <65.294640, 56.559212, 55.942062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.965034, 56.794243, 55.830105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.817657, 57.073746, 56.075378>,  <65.729233, 57.241447, 56.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.817657, 57.073746, 56.075378>,  <65.965034, 56.794243, 55.830105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.817657, 57.073746, 56.075378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874227, 0.036080, 0.484176,
		0.316197, 0.714449, -0.624164,
		-0.368439, 0.698756, 0.613182,
		65.707123, 57.283371, 56.259335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.326447, 57.501305, 55.958145>,  <65.965034, 56.794243, 55.830105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.326447, 57.501305, 55.958145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.159752, 57.439556, 56.316475>,  <66.059738, 57.402508, 56.531475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.159752, 57.439556, 56.316475>,  <66.326447, 57.501305, 55.958145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.159752, 57.439556, 56.316475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856251, 0.264252, 0.443853,
		-0.305242, 0.952019, 0.022058,
		-0.416728, -0.154370, 0.895828,
		66.034737, 57.393246, 56.585224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.279282, 58.084641, 56.431652>,  <66.326447, 57.501305, 55.958145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.279282, 58.084641, 56.431652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.355377, 57.720432, 56.578491>,  <66.401039, 57.501907, 56.666595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.355377, 57.720432, 56.578491>,  <66.279282, 58.084641, 56.431652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.355377, 57.720432, 56.578491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901705, 0.309937, 0.301441,
		-0.388245, 0.273669, 0.879984,
		0.190245, -0.910519, 0.367100,
		66.412453, 57.447277, 56.688622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.474327, 58.173553, 57.134293>,  <66.279282, 58.084641, 56.431652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.474327, 58.173553, 57.134293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.621452, 57.819595, 57.019981>,  <66.709724, 57.607220, 56.951397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.621452, 57.819595, 57.019981>,  <66.474327, 58.173553, 57.134293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.621452, 57.819595, 57.019981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879858, 0.231726, 0.414914,
		-0.300935, -0.404053, 0.863816,
		0.367816, -0.884898, -0.285775,
		66.731796, 57.554127, 56.934250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.969559, 57.853954, 57.578762>,  <66.474327, 58.173553, 57.134293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.969559, 57.853954, 57.578762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077171, 57.654819, 57.248970>,  <67.141739, 57.535339, 57.051094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077171, 57.654819, 57.248970>,  <66.969559, 57.853954, 57.578762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.077171, 57.654819, 57.248970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958632, 0.055769, 0.279131,
		-0.092982, -0.865473, 0.492251,
		0.269033, -0.497841, -0.824485,
		67.157883, 57.505466, 57.001625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.364899, 57.150490, 57.783226>,  <66.969559, 57.853954, 57.578762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.364899, 57.150490, 57.783226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.465553, 57.332508, 57.441559>,  <67.525948, 57.441719, 57.236557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.465553, 57.332508, 57.441559>,  <67.364899, 57.150490, 57.783226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.465553, 57.332508, 57.441559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933079, 0.120281, 0.338963,
		0.256985, -0.882306, -0.394328,
		0.251639, 0.455048, -0.854172,
		67.541046, 57.469021, 57.185307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.829781, 56.856224, 57.183636>,  <67.364899, 57.150490, 57.783226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.829781, 56.856224, 57.183636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.876335, 57.247036, 57.255043>,  <67.904266, 57.481522, 57.297886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.876335, 57.247036, 57.255043>,  <67.829781, 56.856224, 57.183636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.876335, 57.247036, 57.255043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978485, -0.143624, 0.148120,
		0.170357, 0.157437, -0.972724,
		0.116387, 0.977029, 0.178517,
		67.911255, 57.540146, 57.308598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.512596, 57.086922, 56.814545>,  <67.829781, 56.856224, 57.183636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.512596, 57.086922, 56.814545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.384666, 57.309643, 57.121185>,  <68.307907, 57.443275, 57.305172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.384666, 57.309643, 57.121185>,  <68.512596, 57.086922, 56.814545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.384666, 57.309643, 57.121185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917872, -0.018586, 0.396442,
		0.234986, 0.830439, -0.505126,
		-0.319832, 0.556800, 0.766604,
		68.288719, 57.476685, 57.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.882156, 57.803101, 56.918812>,  <68.512596, 57.086922, 56.814545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.882156, 57.803101, 56.918812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.736717, 57.629879, 57.248726>,  <68.649452, 57.525948, 57.446674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.736717, 57.629879, 57.248726>,  <68.882156, 57.803101, 56.918812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.736717, 57.629879, 57.248726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920538, -0.031246, 0.389402,
		-0.142861, 0.900826, 0.410003,
		-0.363595, -0.433054, 0.824781,
		68.627640, 57.499962, 57.496159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.153915, 58.130352, 57.427872>,  <68.882156, 57.803101, 56.918812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.153915, 58.130352, 57.427872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.068138, 57.791836, 57.622932>,  <69.016670, 57.588726, 57.739967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.068138, 57.791836, 57.622932>,  <69.153915, 58.130352, 57.427872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.068138, 57.791836, 57.622932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900205, 0.022486, 0.434886,
		-0.379006, 0.532244, 0.757015,
		-0.214443, -0.846292, 0.487651,
		69.003807, 57.537949, 57.769226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.126953, 58.172821, 58.277130>,  <69.153915, 58.130352, 57.427872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.126953, 58.172821, 58.277130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.245476, 57.829422, 58.109711>,  <69.316589, 57.623383, 58.009258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.245476, 57.829422, 58.109711>,  <69.126953, 58.172821, 58.277130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.245476, 57.829422, 58.109711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829073, 0.013624, 0.558975,
		-0.474177, -0.512635, 0.715795,
		0.296302, -0.858499, -0.418552,
		69.334366, 57.571873, 57.984146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.311714, 57.668213, 58.797382>,  <69.126953, 58.172821, 58.277130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.311714, 57.668213, 58.797382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.489067, 57.573051, 58.451706>,  <69.595474, 57.515953, 58.244301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.489067, 57.573051, 58.451706>,  <69.311714, 57.668213, 58.797382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.489067, 57.573051, 58.451706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882944, -0.050122, 0.466796,
		-0.154368, -0.969994, 0.187834,
		0.443375, -0.237905, -0.864188,
		69.622078, 57.501678, 58.192451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.821747, 57.074444, 58.841759>,  <69.311714, 57.668213, 58.797382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.821747, 57.074444, 58.841759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.889824, 57.373402, 58.584877>,  <69.930672, 57.552776, 58.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.889824, 57.373402, 58.584877>,  <69.821747, 57.074444, 58.841759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.889824, 57.373402, 58.584877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917722, 0.117158, 0.379554,
		0.358918, -0.653965, -0.665964,
		0.170192, 0.747398, -0.642208,
		69.940880, 57.597622, 58.392216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.426842, 56.997135, 58.378895>,  <69.821747, 57.074444, 58.841759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.426842, 56.997135, 58.378895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.339706, 57.376625, 58.470520>,  <70.287430, 57.604321, 58.525494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.339706, 57.376625, 58.470520>,  <70.426842, 56.997135, 58.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.339706, 57.376625, 58.470520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871746, 0.083597, 0.482774,
		0.438871, 0.304849, -0.845257,
		-0.217834, 0.948725, 0.229063,
		70.274353, 57.661243, 58.539238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.020020, 57.502956, 58.078686>,  <70.426842, 56.997135, 58.378895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.020020, 57.502956, 58.078686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.820320, 57.633244, 58.399849>,  <70.700500, 57.711414, 58.592548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.820320, 57.633244, 58.399849>,  <71.020020, 57.502956, 58.078686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.820320, 57.633244, 58.399849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865144, 0.238405, 0.441235,
		-0.047700, 0.914917, -0.400814,
		-0.499249, 0.325715, 0.802907,
		70.670547, 57.730957, 58.640720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.276855, 58.210838, 58.347530>,  <71.020020, 57.502956, 58.078686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.276855, 58.210838, 58.347530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.119392, 57.956501, 58.613083>,  <71.024918, 57.803898, 58.772415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.119392, 57.956501, 58.613083>,  <71.276855, 58.210838, 58.347530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.119392, 57.956501, 58.613083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779029, 0.152635, 0.608125,
		-0.488006, 0.756572, 0.435259,
		-0.393654, -0.635848, 0.663878,
		71.001297, 57.765747, 58.812244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.338165, 58.472717, 58.978497>,  <71.276855, 58.210838, 58.347530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.338165, 58.472717, 58.978497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.315117, 58.074661, 59.010422>,  <71.301285, 57.835827, 59.029575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.315117, 58.074661, 59.010422>,  <71.338165, 58.472717, 58.978497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.315117, 58.074661, 59.010422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761734, 0.007849, 0.647842,
		-0.645322, 0.098129, 0.757582,
		-0.057626, -0.995143, 0.079813,
		71.297829, 57.776119, 59.034367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.348671, 58.379818, 59.665539>,  <71.338165, 58.472717, 58.978497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.348671, 58.379818, 59.665539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.496048, 58.065750, 59.466438>,  <71.584473, 57.877308, 59.346977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.496048, 58.065750, 59.466438>,  <71.348671, 58.379818, 59.665539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.496048, 58.065750, 59.466438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825613, 0.030230, 0.563426,
		-0.427339, -0.618539, 0.659387,
		0.368435, -0.785172, -0.497755,
		71.606575, 57.830200, 59.317112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.501770, 57.902462, 60.099239>,  <71.348671, 58.379818, 59.665539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.501770, 57.902462, 60.099239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.746918, 57.793430, 59.802567>,  <71.894005, 57.728012, 59.624561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.746918, 57.793430, 59.802567>,  <71.501770, 57.902462, 60.099239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.746918, 57.793430, 59.802567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783010, 0.083301, 0.616406,
		-0.106239, -0.958519, 0.264488,
		0.612869, -0.272583, -0.741681,
		71.930779, 57.711655, 59.580063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.866592, 57.281197, 60.240253>,  <71.501770, 57.902462, 60.099239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.866592, 57.281197, 60.240253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.117340, 57.449665, 59.978065>,  <72.267792, 57.550747, 59.820755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.117340, 57.449665, 59.978065>,  <71.866592, 57.281197, 60.240253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.117340, 57.449665, 59.978065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758484, -0.137570, 0.637006,
		0.178116, -0.896487, -0.405691,
		0.626878, 0.421171, -0.655468,
		72.305405, 57.576015, 59.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.246582, 56.795231, 60.022297>,  <71.866592, 57.281197, 60.240253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.246582, 56.795231, 60.022297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.436623, 57.145992, 59.993141>,  <72.550652, 57.356449, 59.975647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.436623, 57.145992, 59.993141>,  <72.246582, 56.795231, 60.022297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.436623, 57.145992, 59.993141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500929, -0.201438, 0.841720,
		0.723425, -0.436419, -0.534971,
		0.475106, 0.876904, -0.072889,
		72.579155, 57.409065, 59.971275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.028671, 56.849781, 59.837189>,  <72.246582, 56.795231, 60.022297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.028671, 56.849781, 59.837189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.850143, 57.102753, 60.090431>,  <72.743027, 57.254536, 60.242378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.850143, 57.102753, 60.090431>,  <73.028671, 56.849781, 59.837189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.850143, 57.102753, 60.090431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458978, -0.445553, 0.768649,
		0.768199, 0.633651, -0.091409,
		-0.446328, 0.632430, 0.633106,
		72.716248, 57.292480, 60.280361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.538567, 57.100529, 60.318165>,  <73.028671, 56.849781, 59.837189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.538567, 57.100529, 60.318165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.182671, 57.099289, 60.500748>,  <72.969131, 57.098545, 60.610298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.182671, 57.099289, 60.500748>,  <73.538567, 57.100529, 60.318165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.182671, 57.099289, 60.500748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455611, -0.067179, 0.887640,
		0.027915, 0.997736, 0.061183,
		-0.889741, -0.003097, 0.456455,
		72.915749, 57.098358, 60.637684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.409920, 57.726345, 60.680256>,  <73.538567, 57.100529, 60.318165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.409920, 57.726345, 60.680256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.262016, 57.387138, 60.832123>,  <73.173271, 57.183613, 60.923244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.262016, 57.387138, 60.832123>,  <73.409920, 57.726345, 60.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.262016, 57.387138, 60.832123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519905, 0.149828, 0.840982,
		-0.770052, 0.508350, 0.385487,
		-0.369757, -0.848016, 0.379669,
		73.151093, 57.132732, 60.946022>
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
