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
	<2.818960, 5.264929, 0.992271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146067, 5.179773, 1.206162>,  <3.342331, 5.128680, 1.334498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146067, 5.179773, 1.206162>,  <2.818960, 5.264929, 0.992271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.146067, 5.179773, 1.206162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306248, -0.947584, 0.091089,
		0.487309, -0.238249, -0.840099,
		0.817766, -0.212890, 0.534730,
		3.391397, 5.115906, 1.366581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.890066, 4.599883, 0.878967>,  <2.818960, 5.264929, 0.992271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.890066, 4.599883, 0.878967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107592, 4.666267, 1.208020>,  <3.238107, 4.706098, 1.405451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107592, 4.666267, 1.208020>,  <2.890066, 4.599883, 0.878967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.107592, 4.666267, 1.208020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222258, -0.916764, 0.331880,
		0.809238, -0.363318, -0.461663,
		0.543815, 0.165962, 0.822631,
		3.270736, 4.716056, 1.454809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.443849, 4.124323, 1.031403>,  <2.890066, 4.599883, 0.878967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.443849, 4.124323, 1.031403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.380197, 4.243347, 1.407942>,  <3.342005, 4.314762, 1.633866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.380197, 4.243347, 1.407942>,  <3.443849, 4.124323, 1.031403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.380197, 4.243347, 1.407942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057912, -0.949042, 0.309782,
		0.985558, 0.103811, 0.133789,
		-0.159130, 0.297560, 0.941348,
		3.332458, 4.332615, 1.690347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.872450, 3.760669, 1.392684>,  <3.443849, 4.124323, 1.031403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.872450, 3.760669, 1.392684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.558901, 3.884285, 1.608105>,  <3.370771, 3.958455, 1.737357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.558901, 3.884285, 1.608105>,  <3.872450, 3.760669, 1.392684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.558901, 3.884285, 1.608105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085342, -0.912733, 0.399544,
		0.615029, 0.267231, 0.741840,
		-0.783872, 0.309041, 0.538551,
		3.323739, 3.976997, 1.769670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.976775, 3.448111, 2.029770>,  <3.872450, 3.760669, 1.392684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.976775, 3.448111, 2.029770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.587636, 3.529688, 1.986000>,  <3.354152, 3.578634, 1.959738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.587636, 3.529688, 1.986000>,  <3.976775, 3.448111, 2.029770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.587636, 3.529688, 1.986000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231330, -0.871643, 0.432116,
		-0.007253, 0.445697, 0.895155,
		-0.972848, 0.203942, -0.109425,
		3.295782, 3.590870, 1.953173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.697651, 3.251397, 2.616049>,  <3.976775, 3.448111, 2.029770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.697651, 3.251397, 2.616049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.376843, 3.260582, 2.377306>,  <3.184359, 3.266093, 2.234060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.376843, 3.260582, 2.377306>,  <3.697651, 3.251397, 2.616049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.376843, 3.260582, 2.377306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261874, -0.911618, 0.316820,
		-0.536831, 0.410397, 0.737148,
		-0.802019, 0.022961, -0.596858,
		3.136238, 3.267470, 2.198249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.195811, 3.127713, 3.026885>,  <3.697651, 3.251397, 2.616049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.195811, 3.127713, 3.026885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023104, 3.025377, 2.680908>,  <2.919479, 2.963976, 2.473322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023104, 3.025377, 2.680908>,  <3.195811, 3.127713, 3.026885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.023104, 3.025377, 2.680908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503219, -0.727499, 0.466386,
		-0.748563, 0.636625, 0.185368,
		-0.431768, -0.255839, -0.864941,
		2.893573, 2.948626, 2.421426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.389057, 3.259125, 3.002082>,  <3.195811, 3.127713, 3.026885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.389057, 3.259125, 3.002082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488459, 2.951506, 2.766520>,  <2.548100, 2.766934, 2.625182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488459, 2.951506, 2.766520>,  <2.389057, 3.259125, 3.002082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488459, 2.951506, 2.766520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461305, -0.628566, 0.626181,
		-0.851730, 0.116057, -0.510967,
		0.248504, -0.769049, -0.588906,
		2.563010, 2.720791, 2.589848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.667201, 1.209653, 3.045361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522312, 1.262110, 2.676233>,  <2.435379, 1.293584, 2.454756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522312, 1.262110, 2.676233>,  <2.667201, 1.209653, 3.045361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.522312, 1.262110, 2.676233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406512, 0.913160, -0.029794,
		0.838776, -0.385930, -0.384076,
		-0.362221, 0.131141, -0.922821,
		2.413646, 1.301452, 2.399387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.198819, 1.559731, 2.602799>,  <2.667201, 1.209653, 3.045361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.198819, 1.559731, 2.602799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.834595, 1.623136, 2.450089>,  <2.616060, 1.661179, 2.358463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.834595, 1.623136, 2.450089>,  <3.198819, 1.559731, 2.602799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.834595, 1.623136, 2.450089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288245, 0.905460, -0.311541,
		0.296298, -0.393722, -0.870167,
		-0.910562, 0.158513, -0.381775,
		2.561426, 1.670690, 2.335557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.263082, 1.736528, 1.895857>,  <3.198819, 1.559731, 2.602799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.263082, 1.736528, 1.895857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.949276, 1.917096, 2.065917>,  <2.760992, 2.025437, 2.167954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.949276, 1.917096, 2.065917>,  <3.263082, 1.736528, 1.895857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949276, 1.917096, 2.065917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234377, 0.850607, -0.470676,
		-0.574110, -0.269607, -0.773117,
		-0.784516, 0.451421, 0.425152,
		2.713921, 2.052522, 2.193463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.856799, 2.124936, 1.484776>,  <3.263082, 1.736528, 1.895857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.856799, 2.124936, 1.484776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.748753, 2.302148, 1.826714>,  <2.683925, 2.408476, 2.031877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.748753, 2.302148, 1.826714>,  <2.856799, 2.124936, 1.484776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.748753, 2.302148, 1.826714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188053, 0.895026, -0.404432,
		-0.944285, 0.051513, -0.325073,
		-0.270115, 0.443030, 0.854846,
		2.667718, 2.435057, 2.083168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.381348, 2.652285, 1.286771>,  <2.856799, 2.124936, 1.484776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.381348, 2.652285, 1.286771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.543926, 2.762927, 1.635090>,  <2.641474, 2.829313, 1.844082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.543926, 2.762927, 1.635090>,  <2.381348, 2.652285, 1.286771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.543926, 2.762927, 1.635090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072161, 0.959814, -0.271200,
		-0.910820, 0.047390, 0.410073,
		0.406447, 0.276606, 0.870799,
		2.665860, 2.845909, 1.896330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064768, 3.256057, 1.403491>,  <2.381348, 2.652285, 1.286771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064768, 3.256057, 1.403491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387741, 3.244893, 1.639211>,  <2.581525, 3.238194, 1.780643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.387741, 3.244893, 1.639211>,  <2.064768, 3.256057, 1.403491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387741, 3.244893, 1.639211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153516, 0.974410, -0.164192,
		-0.569637, 0.223040, 0.791054,
		0.807432, -0.027910, 0.589299,
		2.629971, 3.236520, 1.816001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.091053, 3.834569, 1.876442>,  <2.064768, 3.256057, 1.403491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.091053, 3.834569, 1.876442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.468472, 3.730114, 1.794929>,  <2.694923, 3.667441, 1.746020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.468472, 3.730114, 1.794929>,  <2.091053, 3.834569, 1.876442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.468472, 3.730114, 1.794929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220595, 0.954320, -0.201523,
		0.247101, 0.145193, 0.958050,
		0.943546, -0.261137, -0.203784,
		2.751535, 3.651773, 1.733793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616380, 4.155046, 2.290662>,  <2.091053, 3.834569, 1.876442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616380, 4.155046, 2.290662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.783863, 4.065432, 1.938641>,  <2.884353, 4.011663, 1.727428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.783863, 4.065432, 1.938641>,  <2.616380, 4.155046, 2.290662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.783863, 4.065432, 1.938641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332385, 0.939653, -0.081069,
		0.845106, -0.258572, 0.467905,
		0.418706, -0.224037, -0.880053,
		2.909475, 3.998221, 1.674625>
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
