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
	<4.012954, 3.563250, 0.012713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.173443, 3.530136, 0.377605>,  <4.269736, 3.510268, 0.596541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.173443, 3.530136, 0.377605>,  <4.012954, 3.563250, 0.012713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.173443, 3.530136, 0.377605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269584, -0.962470, 0.031227,
		0.875412, -0.258452, -0.408481,
		0.401222, -0.082784, 0.912232,
		4.293809, 3.505301, 0.651275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.479645, 2.999985, 0.086749>,  <4.012954, 3.563250, 0.012713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.479645, 2.999985, 0.086749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.329924, 3.051277, 0.454108>,  <4.240091, 3.082052, 0.674524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.329924, 3.051277, 0.454108>,  <4.479645, 2.999985, 0.086749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.329924, 3.051277, 0.454108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280764, -0.959578, 0.019552,
		0.883781, -0.250535, 0.395175,
		-0.374302, 0.128231, 0.918398,
		4.217633, 3.089746, 0.729628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.712975, 2.470498, 0.479109>,  <4.479645, 2.999985, 0.086749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.712975, 2.470498, 0.479109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.351124, 2.634815, 0.524535>,  <4.134013, 2.733406, 0.551791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.351124, 2.634815, 0.524535>,  <4.712975, 2.470498, 0.479109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.351124, 2.634815, 0.524535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418508, -0.805778, -0.419014,
		-0.080620, -0.426579, 0.900850,
		-0.904628, 0.410794, 0.113565,
		4.079735, 2.758053, 0.558605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.238692, 1.957599, 0.679071>,  <4.712975, 2.470498, 0.479109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.238692, 1.957599, 0.679071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.006229, 2.228897, 0.499187>,  <3.866752, 2.391676, 0.391257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.006229, 2.228897, 0.499187>,  <4.238692, 1.957599, 0.679071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.006229, 2.228897, 0.499187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445308, -0.727578, -0.521854,
		-0.681145, -0.103019, 0.724864,
		-0.581156, 0.678246, -0.449711,
		3.831882, 2.432371, 0.364275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405177, 1.755592, 0.623264>,  <4.238692, 1.957599, 0.679071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405177, 1.755592, 0.623264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.473370, 1.998955, 0.313225>,  <3.514285, 2.144972, 0.127201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.473370, 1.998955, 0.313225>,  <3.405177, 1.755592, 0.623264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.473370, 1.998955, 0.313225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445576, -0.653996, -0.611351,
		-0.878862, 0.449589, 0.159598,
		0.170480, 0.608407, -0.775099,
		3.524514, 2.181477, 0.080695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.716680, 1.849979, 0.207268>,  <3.405177, 1.755592, 0.623264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.716680, 1.849979, 0.207268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.013458, 1.795082, -0.055237>,  <3.191525, 1.762144, -0.212740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.013458, 1.795082, -0.055237>,  <2.716680, 1.849979, 0.207268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.013458, 1.795082, -0.055237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547172, -0.689603, -0.474396,
		-0.387453, 0.711064, -0.586743,
		0.741946, -0.137243, -0.656263,
		3.236042, 1.753909, -0.252116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.242415, 1.832018, -0.427667>,  <2.716680, 1.849979, 0.207268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.242415, 1.832018, -0.427667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577204, 1.616955, -0.386868>,  <2.778077, 1.487917, -0.362388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577204, 1.616955, -0.386868>,  <2.242415, 1.832018, -0.427667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577204, 1.616955, -0.386868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432609, -0.764195, -0.478389,
		0.335156, 0.356272, -0.872204,
		0.836971, -0.537658, 0.101998,
		2.828295, 1.455657, -0.356268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.689084, 1.884530, -1.049516>,  <2.242415, 1.832018, -0.427667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.689084, 1.884530, -1.049516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.495775, 2.090584, -1.332665>,  <2.379790, 2.214216, -1.502555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.495775, 2.090584, -1.332665>,  <2.689084, 1.884530, -1.049516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.495775, 2.090584, -1.332665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869085, 0.184810, -0.458843,
		-0.105545, -0.836947, -0.537010,
		-0.483272, 0.515135, -0.707872,
		2.350794, 2.245125, -1.545027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.368973, 0.014783, 3.094190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.235926, 0.385246, 3.165289>,  <-1.156097, 0.607524, 3.207949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.235926, 0.385246, 3.165289>,  <-1.368973, 0.014783, 3.094190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.235926, 0.385246, 3.165289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931434, -0.352136, 0.091820,
		0.147631, 0.135020, -0.979783,
		0.332619, 0.926159, 0.177748,
		-1.136140, 0.663094, 3.218614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.867014, 0.306059, 2.490949>,  <-1.368973, 0.014783, 3.094190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.867014, 0.306059, 2.490949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.783859, 0.451019, 2.854366>,  <-0.733967, 0.537996, 3.072416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.783859, 0.451019, 2.854366>,  <-0.867014, 0.306059, 2.490949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.783859, 0.451019, 2.854366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924030, -0.377442, -0.060875,
		0.320861, 0.852175, -0.413335,
		0.207886, 0.362402, 0.908542,
		-0.721494, 0.559740, 3.126928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.392395, 0.834866, 2.411804>,  <-0.867014, 0.306059, 2.490949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.392395, 0.834866, 2.411804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.335279, 0.678562, 2.775544>,  <-0.301010, 0.584780, 2.993788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.335279, 0.678562, 2.775544>,  <-0.392395, 0.834866, 2.411804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.335279, 0.678562, 2.775544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919325, -0.288017, -0.268120,
		0.366679, 0.874272, 0.318110,
		0.142788, -0.390760, 0.909350,
		-0.292443, 0.561334, 3.048349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.336263, 0.990876, 2.578671>,  <-0.392395, 0.834866, 2.411804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.336263, 0.990876, 2.578671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.212986, 0.687672, 2.808606>,  <0.139020, 0.505749, 2.946567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.212986, 0.687672, 2.808606>,  <0.336263, 0.990876, 2.578671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.212986, 0.687672, 2.808606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751193, -0.564664, -0.341852,
		0.583718, 0.326458, 0.743437,
		-0.308192, -0.758010, 0.574838,
		0.120529, 0.460269, 2.981057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.851510, 0.699251, 3.168888>,  <0.336263, 0.990876, 2.578671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.851510, 0.699251, 3.168888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.604805, 0.440506, 2.989479>,  <0.456782, 0.285259, 2.881833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.604805, 0.440506, 2.989479>,  <0.851510, 0.699251, 3.168888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.604805, 0.440506, 2.989479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776261, -0.594277, -0.210365,
		-0.130471, -0.477916, 0.868662,
		-0.616763, -0.646862, -0.448523,
		0.419776, 0.246447, 2.854922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.913020, -0.031037, 3.439853>,  <0.851510, 0.699251, 3.168888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.913020, -0.031037, 3.439853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.762396, -0.060192, 3.070445>,  <0.672022, -0.077685, 2.848800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.762396, -0.060192, 3.070445>,  <0.913020, -0.031037, 3.439853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.762396, -0.060192, 3.070445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579976, -0.795907, -0.173665,
		-0.722378, -0.601015, 0.341981,
		-0.376560, -0.072889, -0.923520,
		0.649428, -0.082059, 2.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.812479, -0.842940, 3.254645>,  <0.913020, -0.031037, 3.439853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.812479, -0.842940, 3.254645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.913528, -0.606236, 2.948442>,  <0.974158, -0.464213, 2.764721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.913528, -0.606236, 2.948442>,  <0.812479, -0.842940, 3.254645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.913528, -0.606236, 2.948442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789648, -0.583297, -0.190317,
		-0.559140, -0.556403, -0.614637,
		0.252623, 0.591760, -0.765507,
		0.989315, -0.428707, 2.718790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.957252, -1.271232, 2.719861>,  <0.812479, -0.842940, 3.254645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.957252, -1.271232, 2.719861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.138237, -0.920971, 2.652320>,  <1.246828, -0.710814, 2.611796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.138237, -0.920971, 2.652320>,  <0.957252, -1.271232, 2.719861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.138237, -0.920971, 2.652320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853900, -0.480005, -0.201121,
		-0.257161, -0.053183, -0.964904,
		0.452463, 0.875652, -0.168851,
		1.273976, -0.658275, 2.601665>
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
