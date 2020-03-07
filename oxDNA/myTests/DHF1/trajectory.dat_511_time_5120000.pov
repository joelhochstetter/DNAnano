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
	<2.403664, 4.225173, -0.592798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457502, 3.889446, -0.382111>,  <2.489805, 3.688010, -0.255698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457502, 3.889446, -0.382111>,  <2.403664, 4.225173, -0.592798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457502, 3.889446, -0.382111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874471, 0.149386, 0.461503,
		-0.466032, -0.522715, -0.713852,
		0.134595, -0.839317, 0.526717,
		2.497881, 3.637651, -0.224095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.785108, 3.802575, -0.515274>,  <2.403664, 4.225173, -0.592798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.785108, 3.802575, -0.515274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996765, 3.721725, -0.185631>,  <2.123760, 3.673216, 0.012155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.996765, 3.721725, -0.185631>,  <1.785108, 3.802575, -0.515274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.996765, 3.721725, -0.185631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750669, 0.341297, 0.565696,
		-0.395606, -0.917966, 0.028867,
		0.529142, -0.202123, 0.824108,
		2.155508, 3.661088, 0.061602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.341800, 3.393334, -0.052716>,  <1.785108, 3.802575, -0.515274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.341800, 3.393334, -0.052716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.614777, 3.609570, 0.144073>,  <1.778563, 3.739311, 0.262147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.614777, 3.609570, 0.144073>,  <1.341800, 3.393334, -0.052716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.614777, 3.609570, 0.144073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729983, 0.469633, 0.496558,
		0.037387, -0.698004, 0.715117,
		0.682442, 0.540588, 0.491973,
		1.819509, 3.771746, 0.291665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.185301, 3.446573, 0.645987>,  <1.341800, 3.393334, -0.052716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.185301, 3.446573, 0.645987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.401621, 3.780903, 0.608177>,  <1.531413, 3.981501, 0.585491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.401621, 3.780903, 0.608177>,  <1.185301, 3.446573, 0.645987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.401621, 3.780903, 0.608177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712831, 0.515053, 0.476017,
		0.446550, -0.190052, 0.874342,
		0.540801, 0.835823, -0.094522,
		1.563861, 4.031650, 0.579820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.111658, 3.704751, 1.197690>,  <1.185301, 3.446573, 0.645987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.111658, 3.704751, 1.197690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.232894, 4.027538, 0.994934>,  <1.305636, 4.221211, 0.873281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.232894, 4.027538, 0.994934>,  <1.111658, 3.704751, 1.197690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.232894, 4.027538, 0.994934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666616, 0.559646, 0.492361,
		0.680999, 0.188670, 0.707562,
		0.303090, 0.806970, -0.506889,
		1.323821, 4.269629, 0.842867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.292928, 4.154858, 1.688571>,  <1.111658, 3.704751, 1.197690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.292928, 4.154858, 1.688571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.204406, 4.392948, 1.379578>,  <1.151293, 4.535802, 1.194182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.204406, 4.392948, 1.379578>,  <1.292928, 4.154858, 1.688571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.204406, 4.392948, 1.379578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817051, 0.319282, 0.480090,
		0.532402, 0.737405, 0.415671,
		-0.221305, 0.595225, -0.772484,
		1.138014, 4.571516, 1.147833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.084115, 4.897229, 1.975242>,  <1.292928, 4.154858, 1.688571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.084115, 4.897229, 1.975242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.940338, 4.883339, 1.602234>,  <0.854072, 4.875005, 1.378429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.940338, 4.883339, 1.602234>,  <1.084115, 4.897229, 1.975242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.940338, 4.883339, 1.602234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902709, 0.266166, 0.338040,
		0.236468, 0.963301, -0.127018,
		-0.359442, -0.034725, -0.932521,
		0.832505, 4.872921, 1.322478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.621030, 5.445766, 1.943108>,  <1.084115, 4.897229, 1.975242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.621030, 5.445766, 1.943108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.505726, 5.179680, 1.667603>,  <0.436544, 5.020028, 1.502299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.505726, 5.179680, 1.667603>,  <0.621030, 5.445766, 1.943108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.505726, 5.179680, 1.667603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951965, 0.276676, 0.131197,
		0.103290, 0.693498, -0.713016,
		-0.288260, -0.665215, -0.688764,
		0.419248, 4.980115, 1.460973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.632325, 4.756969, 2.120374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.783838, 4.741310, 1.750511>,  <-0.874746, 4.731915, 1.528593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.783838, 4.741310, 1.750511>,  <-0.632325, 4.756969, 2.120374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.783838, 4.741310, 1.750511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925326, 0.002542, -0.379164,
		0.017194, -0.999230, 0.035260,
		-0.378782, -0.039146, -0.924657,
		-0.897473, 4.729566, 1.473114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.423628, 4.170933, 1.698308>,  <-0.632325, 4.756969, 2.120374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.423628, 4.170933, 1.698308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.441402, 4.503429, 1.476654>,  <-0.452067, 4.702927, 1.343662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.441402, 4.503429, 1.476654>,  <-0.423628, 4.170933, 1.698308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.441402, 4.503429, 1.476654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939422, -0.153938, -0.306250,
		-0.339869, -0.534175, -0.774045,
		-0.044436, 0.831241, -0.554134,
		-0.454733, 4.752801, 1.310414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.093000, 4.010664, 1.064877>,  <-0.423628, 4.170933, 1.698308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.093000, 4.010664, 1.064877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.087721, 4.410236, 1.082588>,  <-0.084554, 4.649980, 1.093215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.087721, 4.410236, 1.082588>,  <-0.093000, 4.010664, 1.064877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.087721, 4.410236, 1.082588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922321, 0.004942, -0.386393,
		-0.386199, 0.045937, -0.921271,
		0.013197, 0.998932, 0.044277,
		-0.083762, 4.709916, 1.095871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.074023, 4.269363, 0.405618>,  <-0.093000, 4.010664, 1.064877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.074023, 4.269363, 0.405618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.192162, 4.516098, 0.697449>,  <0.263045, 4.664139, 0.872547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.192162, 4.516098, 0.697449>,  <0.074023, 4.269363, 0.405618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.192162, 4.516098, 0.697449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914457, 0.038614, -0.402837,
		-0.276657, 0.786144, -0.552666,
		0.295347, 0.616836, 0.729577,
		0.280766, 4.701149, 0.916322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.346466, 4.908935, 0.141539>,  <0.074023, 4.269363, 0.405618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.346466, 4.908935, 0.141539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.513626, 4.895832, 0.504700>,  <0.613922, 4.887970, 0.722596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.513626, 4.895832, 0.504700>,  <0.346466, 4.908935, 0.141539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.513626, 4.895832, 0.504700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906189, 0.086163, -0.414003,
		-0.064666, 0.995742, 0.065691,
		0.417900, -0.032757, 0.907902,
		0.638996, 4.886005, 0.777070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.912869, 5.355667, 0.137279>,  <0.346466, 4.908935, 0.141539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.912869, 5.355667, 0.137279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002979, 5.120415, 0.447983>,  <1.057045, 4.979263, 0.634405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002979, 5.120415, 0.447983>,  <0.912869, 5.355667, 0.137279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.002979, 5.120415, 0.447983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917212, -0.140863, -0.372665,
		0.328592, 0.796405, 0.507708,
		0.225275, -0.588130, 0.776758,
		1.070562, 4.943975, 0.681010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.645786, 5.267377, 0.156127>,  <0.912869, 5.355667, 0.137279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.645786, 5.267377, 0.156127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.555674, 4.967510, 0.405045>,  <1.501606, 4.787590, 0.554395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.555674, 4.967510, 0.405045>,  <1.645786, 5.267377, 0.156127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.555674, 4.967510, 0.405045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896929, -0.409008, -0.168022,
		0.380484, 0.520300, 0.764539,
		-0.225281, -0.749667, 0.622293,
		1.488089, 4.742610, 0.591732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.333116, 5.104984, 0.582592>,  <1.645786, 5.267377, 0.156127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.333116, 5.104984, 0.582592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.102835, 4.778408, 0.564735>,  <1.964666, 4.582463, 0.554021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.102835, 4.778408, 0.564735>,  <2.333116, 5.104984, 0.582592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.102835, 4.778408, 0.564735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789547, -0.540888, -0.289923,
		0.212559, -0.202156, 0.956008,
		-0.575703, -0.816439, -0.044642,
		1.930124, 4.533476, 0.551343>
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
