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
	<2.122223, 4.726474, 2.883862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901681, 4.555111, 3.170212>,  <1.769356, 4.452293, 3.342021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901681, 4.555111, 3.170212>,  <2.122223, 4.726474, 2.883862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.901681, 4.555111, 3.170212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816481, 0.100829, -0.568500,
		0.171368, -0.897943, -0.405378,
		-0.551355, -0.428407, 0.715874,
		1.736275, 4.426589, 3.384974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.708900, 4.215188, 2.594661>,  <2.122223, 4.726474, 2.883862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.708900, 4.215188, 2.594661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.539053, 4.372971, 2.920631>,  <1.437145, 4.467640, 3.116214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.539053, 4.372971, 2.920631>,  <1.708900, 4.215188, 2.594661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.539053, 4.372971, 2.920631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810305, 0.235938, -0.536413,
		-0.403864, -0.888109, 0.219448,
		-0.424617, 0.394458, 0.814926,
		1.411668, 4.491308, 3.165109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.144049, 3.826996, 2.731477>,  <1.708900, 4.215188, 2.594661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.144049, 3.826996, 2.731477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157792, 4.220047, 2.804428>,  <1.166038, 4.455878, 2.848199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157792, 4.220047, 2.804428>,  <1.144049, 3.826996, 2.731477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.157792, 4.220047, 2.804428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581013, 0.168118, -0.796342,
		-0.813169, -0.078602, 0.576696,
		0.034359, 0.982628, 0.182378,
		1.168100, 4.514835, 2.859141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.564507, 4.027384, 2.454448>,  <1.144049, 3.826996, 2.731477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.564507, 4.027384, 2.454448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.732614, 4.386566, 2.506680>,  <0.833477, 4.602076, 2.538019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.732614, 4.386566, 2.506680>,  <0.564507, 4.027384, 2.454448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.732614, 4.386566, 2.506680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523625, 0.357522, -0.773301,
		-0.741076, 0.256617, 0.620446,
		0.420266, 0.897956, 0.130580,
		0.858693, 4.655953, 2.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.079502, 4.701387, 2.520086>,  <0.564507, 4.027384, 2.454448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.079502, 4.701387, 2.520086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.438291, 4.802601, 2.375080>,  <0.653564, 4.863329, 2.288077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.438291, 4.802601, 2.375080>,  <0.079502, 4.701387, 2.520086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.438291, 4.802601, 2.375080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441801, 0.542651, -0.714382,
		0.015954, 0.800939, 0.598533,
		0.896971, 0.253035, -0.362514,
		0.707382, 4.878511, 2.266326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.060466, 5.415009, 2.543541>,  <0.079502, 4.701387, 2.520086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.060466, 5.415009, 2.543541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.309080, 5.258751, 2.271927>,  <0.458249, 5.164996, 2.108958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.309080, 5.258751, 2.271927>,  <0.060466, 5.415009, 2.543541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.309080, 5.258751, 2.271927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421029, 0.564391, -0.710068,
		0.660627, 0.727227, 0.186316,
		0.621536, -0.390646, -0.679035,
		0.495541, 5.141557, 2.068216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.257565, 6.017113, 2.183059>,  <0.060466, 5.415009, 2.543541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.257565, 6.017113, 2.183059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.365058, 5.711720, 1.948154>,  <0.429554, 5.528483, 1.807212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.365058, 5.711720, 1.948154>,  <0.257565, 6.017113, 2.183059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.365058, 5.711720, 1.948154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397224, 0.467586, -0.789669,
		0.877494, 0.445483, -0.177619,
		0.268732, -0.763484, -0.587261,
		0.445678, 5.482674, 1.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.619174, 6.298690, 1.648025>,  <0.257565, 6.017113, 2.183059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.619174, 6.298690, 1.648025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.489586, 5.942360, 1.520607>,  <0.411833, 5.728562, 1.444156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.489586, 5.942360, 1.520607>,  <0.619174, 6.298690, 1.648025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.489586, 5.942360, 1.520607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321287, 0.420292, -0.848604,
		0.889841, -0.172578, -0.422373,
		-0.323971, -0.890826, -0.318546,
		0.392395, 5.675112, 1.425043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.006888, 1.751730, 0.384877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.231174, 1.446602, 0.283768>,  <-0.374012, 1.263525, 0.223102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.231174, 1.446602, 0.283768>,  <0.006888, 1.751730, 0.384877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.231174, 1.446602, 0.283768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418410, -0.562696, 0.712956,
		-0.686093, 0.318557, 0.654063,
		-0.595155, -0.762821, -0.252774,
		-0.409721, 1.217756, 0.207936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.158203, 1.353235, 0.954470>,  <0.006888, 1.751730, 0.384877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.158203, 1.353235, 0.954470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.191473, 1.093788, 0.651848>,  <-0.211435, 0.938120, 0.470274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.191473, 1.093788, 0.651848>,  <-0.158203, 1.353235, 0.954470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.191473, 1.093788, 0.651848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594324, -0.641682, 0.484793,
		-0.799913, -0.409316, 0.438861,
		-0.083176, -0.648618, -0.756556,
		-0.216426, 0.899203, 0.424881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.398352, 0.616006, 1.231700>,  <-0.158203, 1.353235, 0.954470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.398352, 0.616006, 1.231700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.175114, 0.607819, 0.899891>,  <-0.041171, 0.602906, 0.700805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.175114, 0.607819, 0.899891>,  <-0.398352, 0.616006, 1.231700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.175114, 0.607819, 0.899891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541901, -0.748078, 0.383045,
		-0.628389, -0.663295, -0.406408,
		0.558096, -0.020468, -0.829524,
		-0.007685, 0.601678, 0.651034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.370009, -0.123895, 0.903401>,  <-0.398352, 0.616006, 1.231700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.370009, -0.123895, 0.903401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.098349, 0.169701, 0.902020>,  <0.064648, 0.345858, 0.901191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.098349, 0.169701, 0.902020>,  <-0.370009, -0.123895, 0.903401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.098349, 0.169701, 0.902020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588013, -0.541253, 0.601070,
		0.439310, -0.410249, -0.799189,
		0.679152, 0.733990, -0.003453,
		0.105397, 0.389898, 0.900983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.270045, -0.412165, 0.627456>,  <-0.370009, -0.123895, 0.903401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.270045, -0.412165, 0.627456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.320236, -0.101768, 0.874710>,  <0.350351, 0.084470, 1.023063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.320236, -0.101768, 0.874710>,  <0.270045, -0.412165, 0.627456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.320236, -0.101768, 0.874710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490982, -0.589982, 0.640982,
		0.862086, 0.223065, -0.455027,
		0.125477, 0.775992, 0.618136,
		0.357879, 0.131029, 1.060151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.924929, -0.380917, 0.930356>,  <0.270045, -0.412165, 0.627456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.924929, -0.380917, 0.930356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.753973, -0.140419, 1.200420>,  <0.651400, 0.003880, 1.362459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.753973, -0.140419, 1.200420>,  <0.924929, -0.380917, 0.930356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.753973, -0.140419, 1.200420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540378, -0.428826, 0.723948,
		0.724797, 0.674250, -0.141624,
		-0.427389, 0.601246, 0.675161,
		0.625756, 0.039955, 1.402969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.453762, -0.166507, 1.224627>,  <0.924929, -0.380917, 0.930356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.453762, -0.166507, 1.224627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.147131, -0.092720, 1.470661>,  <0.963152, -0.048448, 1.618282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.147131, -0.092720, 1.470661>,  <1.453762, -0.166507, 1.224627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.147131, -0.092720, 1.470661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489237, -0.452654, 0.745488,
		0.415939, 0.872397, 0.256746,
		-0.766578, 0.184468, 0.615085,
		0.917157, -0.037380, 1.655187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.865180, 0.017105, 1.807869>,  <1.453762, -0.166507, 1.224627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.865180, 0.017105, 1.807869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490585, -0.045197, 1.933556>,  <1.265828, -0.082578, 2.008967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490585, -0.045197, 1.933556>,  <1.865180, 0.017105, 1.807869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490585, -0.045197, 1.933556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350661, -0.429415, 0.832250,
		0.005302, 0.889575, 0.456759,
		-0.936487, -0.155755, 0.314216,
		1.209639, -0.091923, 2.027821>
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
