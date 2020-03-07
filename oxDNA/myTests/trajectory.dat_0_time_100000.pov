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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<42.780075, 45.114342, 57.106071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154655, 45.218914, 57.012505>,  <43.379402, 45.281658, 56.956364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154655, 45.218914, 57.012505>,  <42.780075, 45.114342, 57.106071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154655, 45.218914, 57.012505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083069, -0.482576, -0.871906,
		-0.340824, 0.835927, -0.430191,
		0.936450, 0.261431, -0.233913,
		43.435589, 45.297344, 56.942329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692009, 45.337189, 56.494949>,  <42.780075, 45.114342, 57.106071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692009, 45.337189, 56.494949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086845, 45.273212, 56.498428>,  <43.323746, 45.234825, 56.500515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086845, 45.273212, 56.498428>,  <42.692009, 45.337189, 56.494949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086845, 45.273212, 56.498428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056163, -0.396412, -0.916353,
		0.150012, 0.904033, -0.400277,
		0.987088, -0.159945, 0.008694,
		43.382973, 45.225227, 56.501038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093204, 45.754650, 55.984070>,  <42.692009, 45.337189, 56.494949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093204, 45.754650, 55.984070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373688, 45.474510, 56.037468>,  <43.541977, 45.306427, 56.069508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373688, 45.474510, 56.037468>,  <43.093204, 45.754650, 55.984070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373688, 45.474510, 56.037468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153091, -0.034965, -0.987593,
		0.696325, 0.712947, 0.082699,
		0.701210, -0.700346, 0.133493,
		43.584049, 45.264408, 56.077515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749325, 45.942902, 55.488255>,  <43.093204, 45.754650, 55.984070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749325, 45.942902, 55.488255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747154, 45.547371, 55.547844>,  <43.745853, 45.310051, 55.583599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747154, 45.547371, 55.547844>,  <43.749325, 45.942902, 55.488255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747154, 45.547371, 55.547844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108764, -0.148674, -0.982887,
		0.994053, 0.010873, 0.108354,
		-0.005422, -0.988827, 0.148973,
		43.745529, 45.250725, 55.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381096, 45.621803, 55.114571>,  <43.749325, 45.942902, 55.488255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381096, 45.621803, 55.114571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116768, 45.324024, 55.152748>,  <43.958172, 45.145355, 55.175655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116768, 45.324024, 55.152748>,  <44.381096, 45.621803, 55.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116768, 45.324024, 55.152748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160486, -0.264382, -0.950971,
		0.733183, -0.613105, 0.294183,
		-0.660822, -0.744449, 0.095445,
		43.918522, 45.100689, 55.181381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606133, 45.052776, 54.605316>,  <44.381096, 45.621803, 55.114571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606133, 45.052776, 54.605316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231430, 44.937019, 54.684036>,  <44.006607, 44.867565, 54.731270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231430, 44.937019, 54.684036>,  <44.606133, 45.052776, 54.605316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231430, 44.937019, 54.684036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092109, -0.338639, -0.936397,
		0.337634, -0.895307, 0.290567,
		-0.936760, -0.289396, 0.196801,
		43.950401, 44.850201, 54.743076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472691, 44.469143, 54.242401>,  <44.606133, 45.052776, 54.605316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472691, 44.469143, 54.242401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092896, 44.567913, 54.319870>,  <43.865021, 44.627174, 54.366352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092896, 44.567913, 54.319870>,  <44.472691, 44.469143, 54.242401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092896, 44.567913, 54.319870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244755, -0.196411, -0.949483,
		-0.196411, -0.948921, 0.246925,
		0.949483, -0.246925, -0.193675,
		43.808052, 44.641991, 54.377972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087227, 43.856697, 54.170055>,  <44.472691, 44.469143, 54.242401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087227, 43.856697, 54.170055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839615, 44.169445, 54.140442>,  <43.691048, 44.357094, 54.122673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839615, 44.169445, 54.140442>,  <44.087227, 43.856697, 54.170055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839615, 44.169445, 54.140442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215566, -0.259796, -0.941296,
		-0.755205, -0.566731, 0.329366,
		-0.619029, 0.781871, -0.074032,
		43.653908, 44.404007, 54.118233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555214, 43.613102, 53.741287>,  <44.087227, 43.856697, 54.170055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555214, 43.613102, 53.741287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515457, 44.010380, 53.716988>,  <43.491604, 44.248745, 53.702408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515457, 44.010380, 53.716988>,  <43.555214, 43.613102, 53.741287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515457, 44.010380, 53.716988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119891, -0.072561, -0.990132,
		-0.987799, -0.091127, 0.126287,
		-0.099391, 0.993192, -0.060751,
		43.485641, 44.308338, 53.698761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993740, 43.728252, 53.433899>,  <43.555214, 43.613102, 53.741287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993740, 43.728252, 53.433899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199799, 44.065727, 53.373482>,  <43.323433, 44.268211, 53.337231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199799, 44.065727, 53.373482>,  <42.993740, 43.728252, 53.433899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199799, 44.065727, 53.373482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098243, -0.116945, -0.988268,
		-0.851451, 0.523945, 0.022642,
		0.515150, 0.843686, -0.151047,
		43.354343, 44.318832, 53.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725330, 44.079586, 52.990971>,  <42.993740, 43.728252, 53.433899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725330, 44.079586, 52.990971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082771, 44.258961, 52.983231>,  <43.297237, 44.366585, 52.978584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082771, 44.258961, 52.983231>,  <42.725330, 44.079586, 52.990971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082771, 44.258961, 52.983231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079101, 0.114894, -0.990223,
		-0.441827, 0.886400, 0.138142,
		0.893606, 0.448435, -0.019352,
		43.350853, 44.393490, 52.977425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601871, 44.623859, 52.640320>,  <42.725330, 44.079586, 52.990971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601871, 44.623859, 52.640320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997734, 44.570503, 52.619194>,  <43.235252, 44.538490, 52.606518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997734, 44.570503, 52.619194>,  <42.601871, 44.623859, 52.640320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997734, 44.570503, 52.619194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048448, 0.035803, -0.998184,
		0.135042, 0.990416, 0.028970,
		0.989655, -0.133393, -0.052818,
		43.294632, 44.530487, 52.603348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652321, 45.138805, 52.200459>,  <42.601871, 44.623859, 52.640320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652321, 45.138805, 52.200459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983467, 44.915039, 52.183964>,  <43.182156, 44.780781, 52.174068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983467, 44.915039, 52.183964>,  <42.652321, 45.138805, 52.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983467, 44.915039, 52.183964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095542, 0.213062, -0.972356,
		0.552732, 0.801039, 0.229834,
		0.827864, -0.559412, -0.041233,
		43.231827, 44.747215, 52.171593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118664, 45.515907, 51.877346>,  <42.652321, 45.138805, 52.200459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118664, 45.515907, 51.877346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250130, 45.139000, 51.851704>,  <43.329010, 44.912857, 51.836319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250130, 45.139000, 51.851704>,  <43.118664, 45.515907, 51.877346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250130, 45.139000, 51.851704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206661, 0.137985, -0.968634,
		0.921558, 0.305109, 0.240081,
		0.328667, -0.942268, -0.064107,
		43.348728, 44.856319, 51.832470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704014, 45.559071, 51.529102>,  <43.118664, 45.515907, 51.877346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704014, 45.559071, 51.529102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586098, 45.179146, 51.487228>,  <43.515350, 44.951191, 51.462105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586098, 45.179146, 51.487228>,  <43.704014, 45.559071, 51.529102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586098, 45.179146, 51.487228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092976, 0.080527, -0.992407,
		0.951029, -0.302283, 0.064571,
		-0.294788, -0.949811, -0.104688,
		43.497662, 44.894203, 51.455822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110130, 45.331886, 50.992718>,  <43.704014, 45.559071, 51.529102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110130, 45.331886, 50.992718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863419, 45.018044, 51.017937>,  <43.715389, 44.829739, 51.033070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863419, 45.018044, 51.017937>,  <44.110130, 45.331886, 50.992718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863419, 45.018044, 51.017937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033947, -0.053514, -0.997990,
		0.786400, -0.617684, 0.006371,
		-0.616783, -0.784603, 0.063052,
		43.678383, 44.782661, 51.036854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461987, 44.794266, 50.676926>,  <44.110130, 45.331886, 50.992718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461987, 44.794266, 50.676926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070374, 44.713242, 50.668373>,  <43.835403, 44.664627, 50.663242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070374, 44.713242, 50.668373>,  <44.461987, 44.794266, 50.676926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070374, 44.713242, 50.668373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030543, -0.042230, -0.998641,
		0.201386, -0.978358, 0.047531,
		-0.979036, -0.202564, -0.021377,
		43.776661, 44.652473, 50.661961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349491, 44.196018, 50.234020>,  <44.461987, 44.794266, 50.676926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349491, 44.196018, 50.234020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012093, 44.410603, 50.244843>,  <43.809654, 44.539352, 50.251335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012093, 44.410603, 50.244843>,  <44.349491, 44.196018, 50.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012093, 44.410603, 50.244843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064758, -0.051559, -0.996568,
		-0.533221, -0.842351, 0.078230,
		-0.843494, 0.536457, 0.027056,
		43.759045, 44.571541, 50.252960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842464, 43.777077, 49.878712>,  <44.349491, 44.196018, 50.234020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842464, 43.777077, 49.878712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733025, 44.160950, 49.852917>,  <43.667362, 44.391273, 49.837440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733025, 44.160950, 49.852917>,  <43.842464, 43.777077, 49.878712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733025, 44.160950, 49.852917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224118, -0.128807, -0.966012,
		-0.935370, -0.249843, 0.250323,
		-0.273595, 0.959680, -0.064488,
		43.650948, 44.448853, 49.833569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318378, 43.754856, 49.388741>,  <43.842464, 43.777077, 49.878712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318378, 43.754856, 49.388741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391579, 44.144676, 49.440529>,  <43.435501, 44.378567, 49.471603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391579, 44.144676, 49.440529>,  <43.318378, 43.754856, 49.388741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391579, 44.144676, 49.440529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202494, 0.166239, -0.965070,
		-0.962032, 0.150394, 0.227762,
		0.183003, 0.974549, 0.129473,
		43.446480, 44.437042, 49.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773663, 44.064777, 49.004776>,  <43.318378, 43.754856, 49.388741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773663, 44.064777, 49.004776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052650, 44.344273, 49.068405>,  <43.220043, 44.511971, 49.106583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052650, 44.344273, 49.068405>,  <42.773663, 44.064777, 49.004776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052650, 44.344273, 49.068405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130190, 0.341830, -0.930700,
		-0.704693, 0.628421, 0.329384,
		0.697465, 0.698741, 0.159071,
		43.261890, 44.553894, 49.116127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494247, 44.628658, 48.635284>,  <42.773663, 44.064777, 49.004776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494247, 44.628658, 48.635284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877548, 44.731449, 48.685440>,  <43.107529, 44.793125, 48.715534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877548, 44.731449, 48.685440>,  <42.494247, 44.628658, 48.635284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877548, 44.731449, 48.685440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001984, 0.432518, -0.901623,
		-0.285932, 0.864227, 0.413950,
		0.958248, 0.256981, 0.125385,
		43.165024, 44.808544, 48.723057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565060, 45.377113, 48.468124>,  <42.494247, 44.628658, 48.635284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565060, 45.377113, 48.468124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912834, 45.186218, 48.417015>,  <43.121498, 45.071682, 48.386349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912834, 45.186218, 48.417015>,  <42.565060, 45.377113, 48.468124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912834, 45.186218, 48.417015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060776, 0.359970, -0.930982,
		0.490292, 0.801665, 0.341976,
		0.869437, -0.477237, -0.127769,
		43.173664, 45.043049, 48.378685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018299, 45.880234, 48.219551>,  <42.565060, 45.377113, 48.468124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018299, 45.880234, 48.219551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181564, 45.524296, 48.137978>,  <43.279522, 45.310734, 48.089035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181564, 45.524296, 48.137978>,  <43.018299, 45.880234, 48.219551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181564, 45.524296, 48.137978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111936, 0.270484, -0.956195,
		0.906022, 0.367453, 0.210006,
		0.408160, -0.889841, -0.203933,
		43.304012, 45.257343, 48.076797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471809, 46.051334, 47.659782>,  <43.018299, 45.880234, 48.219551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471809, 46.051334, 47.659782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458374, 45.652283, 47.635738>,  <43.450314, 45.412853, 47.621311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458374, 45.652283, 47.635738>,  <43.471809, 46.051334, 47.659782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458374, 45.652283, 47.635738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098977, 0.063172, -0.993082,
		0.994523, -0.027408, -0.100864,
		-0.033590, -0.997626, -0.060113,
		43.448296, 45.352993, 47.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086941, 45.802189, 47.230366>,  <43.471809, 46.051334, 47.659782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086941, 45.802189, 47.230366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804237, 45.519257, 47.235661>,  <43.634617, 45.349499, 47.238838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804237, 45.519257, 47.235661>,  <44.086941, 45.802189, 47.230366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804237, 45.519257, 47.235661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048853, 0.030130, -0.998352,
		0.705766, -0.706240, -0.055850,
		-0.706759, -0.707331, 0.013237,
		43.592209, 45.307056, 47.239632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371441, 45.221008, 46.959995>,  <44.086941, 45.802189, 47.230366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371441, 45.221008, 46.959995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976372, 45.181480, 46.911427>,  <43.739330, 45.157764, 46.882286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976372, 45.181480, 46.911427>,  <44.371441, 45.221008, 46.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976372, 45.181480, 46.911427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148779, -0.351107, -0.924440,
		0.048717, -0.931107, 0.361480,
		-0.987670, -0.098817, -0.121424,
		43.680069, 45.151836, 46.875000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276913, 44.614902, 46.484100>,  <44.371441, 45.221008, 46.959995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276913, 44.614902, 46.484100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921722, 44.798431, 46.471588>,  <43.708607, 44.908550, 46.464081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921722, 44.798431, 46.471588>,  <44.276913, 44.614902, 46.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921722, 44.798431, 46.471588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059640, -0.182334, -0.981426,
		-0.456007, -0.869617, 0.189272,
		-0.887976, 0.458826, -0.031281,
		43.655331, 44.936077, 46.462204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934792, 44.151749, 46.034920>,  <44.276913, 44.614902, 46.484100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934792, 44.151749, 46.034920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751320, 44.507191, 46.033913>,  <43.641239, 44.720455, 46.033310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751320, 44.507191, 46.033913>,  <43.934792, 44.151749, 46.034920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751320, 44.507191, 46.033913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028803, -0.017697, -0.999429,
		-0.888137, -0.458340, 0.033711,
		-0.458675, 0.888601, -0.002516,
		43.613716, 44.773769, 46.033157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665272, 44.186142, 45.375134>,  <43.934792, 44.151749, 46.034920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665272, 44.186142, 45.375134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574219, 44.551987, 45.508797>,  <43.519588, 44.771496, 45.588997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574219, 44.551987, 45.508797>,  <43.665272, 44.186142, 45.375134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574219, 44.551987, 45.508797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091195, 0.321639, -0.942461,
		-0.969468, -0.245007, 0.010193,
		-0.227631, 0.914615, 0.334162,
		43.505928, 44.826370, 45.609047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039108, 44.381557, 45.104652>,  <43.665272, 44.186142, 45.375134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039108, 44.381557, 45.104652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242279, 44.718731, 45.175606>,  <43.364182, 44.921036, 45.218178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242279, 44.718731, 45.175606>,  <43.039108, 44.381557, 45.104652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242279, 44.718731, 45.175606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305707, 0.368917, -0.877749,
		-0.805326, 0.391609, 0.445076,
		0.507930, 0.842937, 0.177380,
		43.394657, 44.971611, 45.228821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615746, 44.946030, 44.890736>,  <43.039108, 44.381557, 45.104652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615746, 44.946030, 44.890736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990921, 45.084560, 44.883400>,  <43.216026, 45.167679, 44.878998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990921, 45.084560, 44.883400>,  <42.615746, 44.946030, 44.890736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990921, 45.084560, 44.883400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183752, 0.451421, -0.873186,
		-0.294130, 0.822361, 0.487041,
		0.937935, 0.346325, -0.018335,
		43.272301, 45.188457, 44.877899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549835, 45.611000, 44.618797>,  <42.615746, 44.946030, 44.890736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549835, 45.611000, 44.618797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937706, 45.537361, 44.554497>,  <43.170429, 45.493179, 44.515919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937706, 45.537361, 44.554497>,  <42.549835, 45.611000, 44.618797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937706, 45.537361, 44.554497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085135, 0.362093, -0.928246,
		0.229090, 0.913782, 0.335440,
		0.969675, -0.184094, -0.160747,
		43.228607, 45.482132, 44.506271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653584, 46.050552, 44.076916>,  <42.549835, 45.611000, 44.618797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653584, 46.050552, 44.076916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971977, 45.809372, 44.098270>,  <43.163013, 45.664665, 44.111084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971977, 45.809372, 44.098270>,  <42.653584, 46.050552, 44.076916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971977, 45.809372, 44.098270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111593, 0.059489, -0.991972,
		0.594936, 0.795556, 0.114638,
		0.795989, -0.602952, 0.053386,
		43.210773, 45.628487, 44.114285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139359, 46.330875, 43.609905>,  <42.653584, 46.050552, 44.076916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139359, 46.330875, 43.609905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268013, 45.952728, 43.631176>,  <43.345207, 45.725842, 43.643940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268013, 45.952728, 43.631176>,  <43.139359, 46.330875, 43.609905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268013, 45.952728, 43.631176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044866, -0.040881, -0.998156,
		0.945799, 0.323430, 0.029266,
		0.321637, -0.945369, 0.053177,
		43.364506, 45.669117, 43.647129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824512, 46.263035, 43.262882>,  <43.139359, 46.330875, 43.609905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824512, 46.263035, 43.262882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641678, 45.907417, 43.273285>,  <43.531979, 45.694046, 43.279526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641678, 45.907417, 43.273285>,  <43.824512, 46.263035, 43.262882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641678, 45.907417, 43.273285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012704, -0.022707, -0.999661,
		0.889331, -0.457263, -0.000915,
		-0.457088, -0.889042, 0.026003,
		43.504551, 45.640705, 43.281086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182888, 45.718277, 42.947437>,  <43.824512, 46.263035, 43.262882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182888, 45.718277, 42.947437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800415, 45.601540, 42.938168>,  <43.570930, 45.531498, 42.932606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800415, 45.601540, 42.938168>,  <44.182888, 45.718277, 42.947437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800415, 45.601540, 42.938168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066491, -0.139379, -0.988004,
		0.285114, -0.946255, 0.152677,
		-0.956184, -0.291846, -0.023178,
		43.513561, 45.513985, 42.931213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229691, 45.338802, 42.351910>,  <44.182888, 45.718277, 42.947437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229691, 45.338802, 42.351910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833122, 45.368000, 42.395287>,  <43.595181, 45.385517, 42.421314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833122, 45.368000, 42.395287>,  <44.229691, 45.338802, 42.351910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833122, 45.368000, 42.395287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099268, 0.119384, -0.987873,
		-0.085056, -0.990161, -0.111113,
		-0.991419, 0.072994, 0.108446,
		43.535698, 45.389900, 42.427822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904205, 44.860996, 41.825760>,  <44.229691, 45.338802, 42.351910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904205, 44.860996, 41.825760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653763, 45.153347, 41.934441>,  <43.503498, 45.328758, 41.999649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653763, 45.153347, 41.934441>,  <43.904205, 44.860996, 41.825760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653763, 45.153347, 41.934441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169439, 0.212595, -0.962338,
		-0.761109, -0.648558, -0.009267,
		-0.626102, 0.730874, 0.271699,
		43.465931, 45.372608, 42.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138245, 44.705605, 41.729481>,  <43.904205, 44.860996, 41.825760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138245, 44.705605, 41.729481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174599, 45.103947, 41.731255>,  <43.196411, 45.342953, 41.732319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174599, 45.103947, 41.731255>,  <43.138245, 44.705605, 41.729481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174599, 45.103947, 41.731255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223622, 0.024746, -0.974362,
		-0.970430, 0.087559, 0.224943,
		0.090880, 0.995852, 0.004435,
		43.201862, 45.402702, 41.732586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637756, 44.886860, 41.307014>,  <43.138245, 44.705605, 41.729481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637756, 44.886860, 41.307014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848244, 45.226730, 41.320496>,  <42.974537, 45.430653, 41.328583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848244, 45.226730, 41.320496>,  <42.637756, 44.886860, 41.307014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848244, 45.226730, 41.320496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256474, 0.196374, -0.946393,
		-0.810748, 0.489369, 0.321256,
		0.526221, 0.849680, 0.033699,
		43.006111, 45.481636, 41.330605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186932, 45.387791, 40.979668>,  <42.637756, 44.886860, 41.307014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186932, 45.387791, 40.979668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566399, 45.510662, 40.949524>,  <42.794079, 45.584385, 40.931438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566399, 45.510662, 40.949524>,  <42.186932, 45.387791, 40.979668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566399, 45.510662, 40.949524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135952, 0.180909, -0.974058,
		-0.285580, 0.934298, 0.213383,
		0.948663, 0.307181, -0.075356,
		42.850998, 45.602818, 40.926918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231270, 46.018669, 40.620342>,  <42.186932, 45.387791, 40.979668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231270, 46.018669, 40.620342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607155, 45.886723, 40.584293>,  <42.832687, 45.807556, 40.562664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607155, 45.886723, 40.584293>,  <42.231270, 46.018669, 40.620342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607155, 45.886723, 40.584293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072408, 0.065627, -0.995214,
		0.334203, 0.941743, 0.037786,
		0.939716, -0.329868, -0.090123,
		42.889069, 45.787762, 40.557255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588512, 46.495342, 40.196648>,  <42.231270, 46.018669, 40.620342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588512, 46.495342, 40.196648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818993, 46.169548, 40.169514>,  <42.957279, 45.974072, 40.153233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818993, 46.169548, 40.169514>,  <42.588512, 46.495342, 40.196648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818993, 46.169548, 40.169514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132832, 0.175217, -0.975528,
		0.806443, 0.553087, 0.209150,
		0.576199, -0.814490, -0.067835,
		42.991852, 45.925201, 40.149162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213581, 46.753716, 39.840939>,  <42.588512, 46.495342, 40.196648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213581, 46.753716, 39.840939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227013, 46.356850, 39.792812>,  <43.235073, 46.118729, 39.763935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227013, 46.356850, 39.792812>,  <43.213581, 46.753716, 39.840939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227013, 46.356850, 39.792812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162111, 0.124197, -0.978925,
		0.986201, 0.013369, 0.165012,
		0.033581, -0.992167, -0.120316,
		43.237087, 46.059200, 39.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767563, 46.597378, 39.381660>,  <43.213581, 46.753716, 39.840939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767563, 46.597378, 39.381660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535431, 46.272049, 39.365040>,  <43.396152, 46.076851, 39.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535431, 46.272049, 39.365040>,  <43.767563, 46.597378, 39.381660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535431, 46.272049, 39.365040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018098, 0.038128, -0.999109,
		0.814178, -0.580567, -0.007407,
		-0.580333, -0.813319, -0.041550,
		43.361332, 46.028053, 39.352573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122601, 46.082993, 38.979828>,  <43.767563, 46.597378, 39.381660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122601, 46.082993, 38.979828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735443, 45.982880, 38.970577>,  <43.503147, 45.922813, 38.965027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735443, 45.982880, 38.970577>,  <44.122601, 46.082993, 38.979828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735443, 45.982880, 38.970577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075603, -0.202161, -0.976430,
		0.239707, -0.946832, 0.214593,
		-0.967897, -0.250281, -0.023124,
		43.445072, 45.907795, 38.963638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115532, 45.423805, 38.614712>,  <44.122601, 46.082993, 38.979828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115532, 45.423805, 38.614712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742043, 45.558872, 38.567146>,  <43.517948, 45.639912, 38.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742043, 45.558872, 38.567146>,  <44.115532, 45.423805, 38.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742043, 45.558872, 38.567146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013382, -0.299013, -0.954155,
		-0.357743, -0.892509, 0.274677,
		-0.933724, 0.337667, -0.118914,
		43.461926, 45.660172, 38.531471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807365, 44.944649, 38.148304>,  <44.115532, 45.423805, 38.614712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807365, 44.944649, 38.148304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545937, 45.245625, 38.115646>,  <43.389080, 45.426212, 38.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545937, 45.245625, 38.115646>,  <43.807365, 44.944649, 38.148304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545937, 45.245625, 38.115646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000431, -0.107503, -0.994205,
		-0.756861, -0.649823, 0.069937,
		-0.653576, 0.752444, -0.081644,
		43.349865, 45.471359, 38.091152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253475, 44.723606, 37.643036>,  <43.807365, 44.944649, 38.148304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253475, 44.723606, 37.643036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204758, 45.120529, 37.634109>,  <43.175526, 45.358681, 37.628754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204758, 45.120529, 37.634109>,  <43.253475, 44.723606, 37.643036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204758, 45.120529, 37.634109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081347, -0.012430, -0.996608,
		-0.989216, -0.123199, -0.079207,
		-0.121796, 0.992304, -0.022318,
		43.168221, 45.418221, 37.627415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767303, 44.865093, 37.086246>,  <43.253475, 44.723606, 37.643036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767303, 44.865093, 37.086246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966209, 45.205666, 37.152927>,  <43.085552, 45.410011, 37.192936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966209, 45.205666, 37.152927>,  <42.767303, 44.865093, 37.086246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966209, 45.205666, 37.152927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042993, 0.167724, -0.984896,
		-0.866535, 0.496918, 0.046797,
		0.497262, 0.851435, 0.166703,
		43.115387, 45.461098, 37.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459808, 45.274868, 36.581635>,  <42.767303, 44.865093, 37.086246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459808, 45.274868, 36.581635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804970, 45.452759, 36.677643>,  <43.012066, 45.559494, 36.735249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804970, 45.452759, 36.677643>,  <42.459808, 45.274868, 36.581635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804970, 45.452759, 36.677643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164703, 0.201533, -0.965535,
		-0.477773, 0.872698, 0.100656,
		0.862905, 0.444729, 0.240023,
		43.063843, 45.586178, 36.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509098, 45.886497, 36.169243>,  <42.459808, 45.274868, 36.581635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509098, 45.886497, 36.169243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889816, 45.801510, 36.257732>,  <43.118248, 45.750519, 36.310825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889816, 45.801510, 36.257732>,  <42.509098, 45.886497, 36.169243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889816, 45.801510, 36.257732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257092, 0.159244, -0.953176,
		0.167288, 0.964106, 0.206191,
		0.951798, -0.212465, 0.221224,
		43.175354, 45.737770, 36.324100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839073, 46.354290, 35.866352>,  <42.509098, 45.886497, 36.169243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839073, 46.354290, 35.866352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105385, 46.060463, 35.918739>,  <43.265171, 45.884167, 35.950172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105385, 46.060463, 35.918739>,  <42.839073, 46.354290, 35.866352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105385, 46.060463, 35.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161450, -0.029543, -0.986439,
		0.728475, 0.677892, 0.098926,
		0.665776, -0.734567, 0.130967,
		43.305119, 45.840092, 35.958031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353153, 46.581329, 35.464489>,  <42.839073, 46.354290, 35.866352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353153, 46.581329, 35.464489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433884, 46.192711, 35.514076>,  <43.482323, 45.959541, 35.543827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433884, 46.192711, 35.514076>,  <43.353153, 46.581329, 35.464489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433884, 46.192711, 35.514076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174326, -0.088918, -0.980665,
		0.963782, 0.219539, 0.151419,
		0.201831, -0.971543, 0.123969,
		43.494434, 45.901249, 35.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959698, 46.532471, 35.170006>,  <43.353153, 46.581329, 35.464489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959698, 46.532471, 35.170006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832314, 46.153313, 35.173500>,  <43.755882, 45.925819, 35.175598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832314, 46.153313, 35.173500>,  <43.959698, 46.532471, 35.170006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832314, 46.153313, 35.173500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169331, -0.065954, -0.983350,
		0.932688, -0.311683, 0.181512,
		-0.318465, -0.947895, 0.008737,
		43.736774, 45.868946, 35.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305477, 46.221882, 34.691090>,  <43.959698, 46.532471, 35.170006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305477, 46.221882, 34.691090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988121, 45.981785, 34.731564>,  <43.797707, 45.837727, 34.755848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988121, 45.981785, 34.731564>,  <44.305477, 46.221882, 34.691090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988121, 45.981785, 34.731564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025224, -0.133668, -0.990705,
		0.608187, -0.788571, 0.090911,
		-0.793393, -0.600241, 0.101187,
		43.750103, 45.801712, 34.761921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510849, 45.612106, 34.396870>,  <44.305477, 46.221882, 34.691090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510849, 45.612106, 34.396870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112343, 45.578621, 34.405270>,  <43.873238, 45.558529, 34.410309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112343, 45.578621, 34.405270>,  <44.510849, 45.612106, 34.396870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112343, 45.578621, 34.405270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003678, -0.284324, -0.958721,
		0.086229, -0.955066, 0.283571,
		-0.996268, -0.083713, 0.021004,
		43.813461, 45.553509, 34.411572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358513, 44.965210, 34.011391>,  <44.510849, 45.612106, 34.396870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358513, 44.965210, 34.011391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011101, 45.163437, 34.014675>,  <43.802654, 45.282372, 34.016644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011101, 45.163437, 34.014675>,  <44.358513, 44.965210, 34.011391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011101, 45.163437, 34.014675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148209, -0.243880, -0.958414,
		-0.472955, -0.833629, 0.285265,
		-0.868532, 0.495565, 0.008207,
		43.750542, 45.312107, 34.017136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834969, 44.507931, 33.899139>,  <44.358513, 44.965210, 34.011391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834969, 44.507931, 33.899139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689949, 44.867264, 33.799904>,  <43.602936, 45.082863, 33.740360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689949, 44.867264, 33.799904>,  <43.834969, 44.507931, 33.899139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689949, 44.867264, 33.799904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012306, -0.270794, -0.962559,
		-0.931884, -0.345921, 0.109231,
		-0.362548, 0.898337, -0.248092,
		43.581184, 45.136765, 33.725475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547977, 44.355606, 33.311790>,  <43.834969, 44.507931, 33.899139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547977, 44.355606, 33.311790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524620, 44.754726, 33.299271>,  <43.510605, 44.994198, 33.291759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524620, 44.754726, 33.299271>,  <43.547977, 44.355606, 33.311790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524620, 44.754726, 33.299271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184929, -0.041618, -0.981870,
		-0.981015, -0.051552, 0.186953,
		-0.058398, 0.997803, -0.031295,
		43.507099, 45.054066, 33.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901836, 44.542835, 33.071877>,  <43.547977, 44.355606, 33.311790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901836, 44.542835, 33.071877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135124, 44.855789, 32.984486>,  <43.275097, 45.043560, 32.932053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135124, 44.855789, 32.984486>,  <42.901836, 44.542835, 33.071877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135124, 44.855789, 32.984486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324159, -0.022449, -0.945736,
		-0.744834, 0.622390, 0.240525,
		0.583217, 0.782385, -0.218475,
		43.310089, 45.090504, 32.918941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464439, 45.013187, 32.620956>,  <42.901836, 44.542835, 33.071877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464439, 45.013187, 32.620956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851685, 45.106159, 32.583572>,  <43.084030, 45.161942, 32.561142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851685, 45.106159, 32.583572>,  <42.464439, 45.013187, 32.620956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851685, 45.106159, 32.583572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119413, 0.100190, -0.987776,
		-0.220227, 0.967439, 0.124751,
		0.968112, 0.232431, -0.093460,
		43.142117, 45.175888, 32.555534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444057, 45.517612, 32.032150>,  <42.464439, 45.013187, 32.620956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444057, 45.517612, 32.032150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812683, 45.370434, 32.081688>,  <43.033859, 45.282127, 32.111412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812683, 45.370434, 32.081688>,  <42.444057, 45.517612, 32.032150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812683, 45.370434, 32.081688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042553, -0.221340, -0.974268,
		0.385894, 0.903118, -0.188321,
		0.921561, -0.367950, 0.123844,
		43.089153, 45.260048, 32.118843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.372635, 43.476067, 33.078094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.083374, 43.735531, 32.983200>,  <45.909817, 43.891209, 32.926262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.083374, 43.735531, 32.983200>,  <46.372635, 43.476067, 33.078094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083374, 43.735531, 32.983200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049549, 0.293879, 0.954558,
		0.688906, 0.702048, -0.180380,
		-0.723155, 0.648663, -0.237240,
		45.866428, 43.930130, 32.912029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604546, 44.105915, 33.365376>,  <46.372635, 43.476067, 33.078094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604546, 44.105915, 33.365376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.207230, 44.139610, 33.333672>,  <45.968842, 44.159828, 33.314648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.207230, 44.139610, 33.333672>,  <46.604546, 44.105915, 33.365376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207230, 44.139610, 33.333672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057338, 0.236510, 0.969936,
		0.100449, 0.967971, -0.230092,
		-0.993289, 0.084236, -0.079258,
		45.909245, 44.164883, 33.309895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.383999, 44.789070, 33.680325>,  <46.604546, 44.105915, 33.365376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.383999, 44.789070, 33.680325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.060188, 44.555447, 33.656509>,  <45.865902, 44.415272, 33.642220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.060188, 44.555447, 33.656509>,  <46.383999, 44.789070, 33.680325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060188, 44.555447, 33.656509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229966, 0.222148, 0.947505,
		-0.540169, 0.780722, -0.314148,
		-0.809526, -0.584057, -0.059542,
		45.817329, 44.380230, 33.638645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722088, 45.129902, 33.887859>,  <46.383999, 44.789070, 33.680325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722088, 45.129902, 33.887859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.663162, 44.738750, 33.947266>,  <45.627808, 44.504059, 33.982910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.663162, 44.738750, 33.947266>,  <45.722088, 45.129902, 33.887859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663162, 44.738750, 33.947266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155886, 0.171233, 0.972820,
		-0.976728, 0.120162, -0.177662,
		-0.147318, -0.977875, 0.148516,
		45.618965, 44.445389, 33.991821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299931, 45.143681, 34.403713>,  <45.722088, 45.129902, 33.887859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299931, 45.143681, 34.403713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.431465, 44.765949, 34.399426>,  <45.510387, 44.539310, 34.396854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.431465, 44.765949, 34.399426>,  <45.299931, 45.143681, 34.403713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431465, 44.765949, 34.399426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067567, -0.034849, 0.997106,
		-0.941965, -0.327165, -0.075265,
		0.328841, -0.944324, -0.010721,
		45.530117, 44.482651, 34.396210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980251, 44.846943, 34.898228>,  <45.299931, 45.143681, 34.403713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980251, 44.846943, 34.898228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.293282, 44.603069, 34.847858>,  <45.481102, 44.456745, 34.817638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.293282, 44.603069, 34.847858>,  <44.980251, 44.846943, 34.898228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293282, 44.603069, 34.847858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125853, -0.043154, 0.991110,
		-0.609697, -0.791469, 0.042959,
		0.782579, -0.609683, -0.125920,
		45.528057, 44.420166, 34.810081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879498, 44.369564, 35.400650>,  <44.980251, 44.846943, 34.898228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879498, 44.369564, 35.400650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.264160, 44.301918, 35.314297>,  <45.494957, 44.261330, 35.262486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.264160, 44.301918, 35.314297>,  <44.879498, 44.369564, 35.400650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264160, 44.301918, 35.314297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196539, -0.124014, 0.972622,
		-0.191262, -0.977762, -0.086021,
		0.961661, -0.169119, -0.215887,
		45.552658, 44.251183, 35.249531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172562, 43.864670, 35.807926>,  <44.879498, 44.369564, 35.400650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172562, 43.864670, 35.807926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.515564, 44.034004, 35.690990>,  <45.721367, 44.135605, 35.620827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.515564, 44.034004, 35.690990>,  <45.172562, 43.864670, 35.807926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515564, 44.034004, 35.690990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375205, -0.125824, 0.918363,
		0.351996, -0.897191, -0.266734,
		0.857509, 0.423339, -0.292341,
		45.772816, 44.161007, 35.603287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739456, 43.521118, 36.283760>,  <45.172562, 43.864670, 35.807926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739456, 43.521118, 36.283760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.924370, 43.840439, 36.129356>,  <46.035316, 44.032032, 36.036713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.924370, 43.840439, 36.129356>,  <45.739456, 43.521118, 36.283760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924370, 43.840439, 36.129356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498796, 0.125807, 0.857540,
		0.733142, -0.588965, -0.340034,
		0.462282, 0.798306, -0.386008,
		46.063053, 44.079929, 36.013554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554039, 43.484177, 36.298729>,  <45.739456, 43.521118, 36.283760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554039, 43.484177, 36.298729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.439590, 43.867306, 36.309376>,  <46.370922, 44.097183, 36.315762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.439590, 43.867306, 36.309376>,  <46.554039, 43.484177, 36.298729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439590, 43.867306, 36.309376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380149, 0.087973, 0.920732,
		0.879558, 0.273558, -0.389287,
		-0.286121, 0.957824, 0.026615,
		46.353756, 44.154652, 36.317360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.106800, 43.913261, 36.700081>,  <46.554039, 43.484177, 36.298729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.106800, 43.913261, 36.700081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.785439, 44.151424, 36.702477>,  <46.592621, 44.294323, 36.703915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.785439, 44.151424, 36.702477>,  <47.106800, 43.913261, 36.700081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785439, 44.151424, 36.702477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213188, 0.278239, 0.936554,
		0.555964, 0.753707, -0.350472,
		-0.803402, 0.595407, 0.005991,
		46.544418, 44.330048, 36.704273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.383808, 44.525833, 37.043072>,  <47.106800, 43.913261, 36.700081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.383808, 44.525833, 37.043072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.984787, 44.498020, 37.040104>,  <46.745373, 44.481331, 37.038322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.984787, 44.498020, 37.040104>,  <47.383808, 44.525833, 37.043072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984787, 44.498020, 37.040104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027996, 0.299909, 0.953557,
		-0.064077, 0.951430, -0.301122,
		-0.997552, -0.069532, -0.007419,
		46.685520, 44.477161, 37.037880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153519, 45.145855, 37.438423>,  <47.383808, 44.525833, 37.043072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153519, 45.145855, 37.438423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.815453, 44.932350, 37.427223>,  <46.612614, 44.804245, 37.420502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.815453, 44.932350, 37.427223>,  <47.153519, 45.145855, 37.438423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.815453, 44.932350, 37.427223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152465, 0.190546, 0.969766,
		-0.512292, 0.823886, -0.242424,
		-0.845170, -0.533764, -0.027999,
		46.561901, 44.772221, 37.418823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648617, 45.588543, 37.708000>,  <47.153519, 45.145855, 37.438423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648617, 45.588543, 37.708000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.506264, 45.216038, 37.739246>,  <46.420853, 44.992535, 37.757996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.506264, 45.216038, 37.739246>,  <46.648617, 45.588543, 37.708000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506264, 45.216038, 37.739246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297935, 0.192288, 0.935019,
		-0.885765, 0.309488, -0.345887,
		-0.355887, -0.931258, 0.078115,
		46.399498, 44.936661, 37.762680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103100, 45.787144, 38.091076>,  <46.648617, 45.588543, 37.708000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103100, 45.787144, 38.091076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.188919, 45.397522, 38.119888>,  <46.240410, 45.163750, 38.137177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.188919, 45.397522, 38.119888>,  <46.103100, 45.787144, 38.091076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188919, 45.397522, 38.119888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115329, 0.047968, 0.992168,
		-0.969880, -0.221179, -0.102045,
		0.214552, -0.974053, 0.072032,
		46.253284, 45.105305, 38.141499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556404, 45.446060, 38.470444>,  <46.103100, 45.787144, 38.091076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556404, 45.446060, 38.470444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.873283, 45.206367, 38.516655>,  <46.063412, 45.062553, 38.544380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.873283, 45.206367, 38.516655>,  <45.556404, 45.446060, 38.470444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873283, 45.206367, 38.516655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334707, -0.268339, 0.903308,
		-0.510288, -0.754267, -0.413143,
		0.792198, -0.599229, 0.115528,
		46.110943, 45.026600, 38.551315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276817, 45.001183, 38.955826>,  <45.556404, 45.446060, 38.470444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276817, 45.001183, 38.955826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.671776, 44.938095, 38.950584>,  <45.908752, 44.900242, 38.947441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.671776, 44.938095, 38.950584>,  <45.276817, 45.001183, 38.955826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671776, 44.938095, 38.950584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035205, -0.299610, 0.953412,
		-0.154299, -0.940935, -0.301386,
		0.987397, -0.157720, -0.013104,
		45.967995, 44.890778, 38.946651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388779, 44.269001, 39.199894>,  <45.276817, 45.001183, 38.955826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388779, 44.269001, 39.199894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.720642, 44.480583, 39.271305>,  <45.919762, 44.607533, 39.314152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.720642, 44.480583, 39.271305>,  <45.388779, 44.269001, 39.199894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720642, 44.480583, 39.271305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003079, -0.315447, 0.948938,
		0.558258, -0.787847, -0.260086,
		0.829662, 0.528951, 0.178527,
		45.969540, 44.639267, 39.324863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836548, 43.797859, 39.593445>,  <45.388779, 44.269001, 39.199894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836548, 43.797859, 39.593445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.977974, 44.166523, 39.657364>,  <46.062832, 44.387722, 39.695717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.977974, 44.166523, 39.657364>,  <45.836548, 43.797859, 39.593445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977974, 44.166523, 39.657364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190047, -0.238050, 0.952478,
		0.915899, -0.306397, -0.259325,
		0.353568, 0.921658, 0.159800,
		46.084045, 44.443020, 39.705303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147285, 43.682751, 40.125862>,  <45.836548, 43.797859, 39.593445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147285, 43.682751, 40.125862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.157066, 44.081978, 40.103043>,  <46.162937, 44.321514, 40.089352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.157066, 44.081978, 40.103043>,  <46.147285, 43.682751, 40.125862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157066, 44.081978, 40.103043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118252, 0.053782, 0.991526,
		0.992682, -0.030995, -0.116709,
		0.024456, 0.998071, -0.057053,
		46.164402, 44.381401, 40.085926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805222, 43.939293, 40.321949>,  <46.147285, 43.682751, 40.125862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805222, 43.939293, 40.321949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.531761, 44.222904, 40.391106>,  <46.367683, 44.393070, 40.432598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.531761, 44.222904, 40.391106>,  <46.805222, 43.939293, 40.321949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531761, 44.222904, 40.391106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302729, 0.059959, 0.951189,
		0.664056, 0.702623, -0.255636,
		-0.683655, 0.709031, 0.172889,
		46.326664, 44.435612, 40.442974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110561, 44.476604, 40.792751>,  <46.805222, 43.939293, 40.321949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110561, 44.476604, 40.792751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.722267, 44.565792, 40.828434>,  <46.489292, 44.619305, 40.849846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.722267, 44.565792, 40.828434>,  <47.110561, 44.476604, 40.792751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722267, 44.565792, 40.828434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122239, 0.139004, 0.982718,
		0.206720, 0.964863, -0.162192,
		-0.970734, 0.222974, 0.089209,
		46.431046, 44.632683, 40.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097420, 44.917713, 41.332565>,  <47.110561, 44.476604, 40.792751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097420, 44.917713, 41.332565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.707344, 44.830677, 41.316261>,  <46.473297, 44.778454, 41.306477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.707344, 44.830677, 41.316261>,  <47.097420, 44.917713, 41.332565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707344, 44.830677, 41.316261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120690, 0.368203, 0.921879,
		-0.185583, 0.903925, -0.385328,
		-0.975189, -0.217590, -0.040763,
		46.414787, 44.765400, 41.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701550, 45.490284, 41.683681>,  <47.097420, 44.917713, 41.332565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701550, 45.490284, 41.683681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.447533, 45.181561, 41.670868>,  <46.295120, 44.996326, 41.663181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.447533, 45.181561, 41.670868>,  <46.701550, 45.490284, 41.683681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.447533, 45.181561, 41.670868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170005, 0.099191, 0.980438,
		-0.753536, 0.628067, -0.194202,
		-0.635044, -0.771812, -0.032030,
		46.257019, 44.950016, 41.661259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067127, 45.661610, 42.070702>,  <46.701550, 45.490284, 41.683681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067127, 45.661610, 42.070702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.062950, 45.263588, 42.110226>,  <46.060444, 45.024776, 42.133942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.062950, 45.263588, 42.110226>,  <46.067127, 45.661610, 42.070702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062950, 45.263588, 42.110226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224747, 0.098624, 0.969413,
		-0.974361, -0.012089, -0.224664,
		-0.010438, -0.995051, 0.098812,
		46.059818, 44.965073, 42.139870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424301, 45.521942, 42.485355>,  <46.067127, 45.661610, 42.070702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424301, 45.521942, 42.485355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.673767, 45.212723, 42.531731>,  <45.823444, 45.027191, 42.559555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.673767, 45.212723, 42.531731>,  <45.424301, 45.521942, 42.485355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673767, 45.212723, 42.531731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160285, 0.018700, 0.986894,
		-0.765086, -0.634070, -0.112246,
		0.623660, -0.773050, 0.115939,
		45.860867, 44.980808, 42.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155087, 45.217285, 43.050945>,  <45.424301, 45.521942, 42.485355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155087, 45.217285, 43.050945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.506325, 45.028370, 43.020256>,  <45.717068, 44.915020, 43.001842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.506325, 45.028370, 43.020256>,  <45.155087, 45.217285, 43.050945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506325, 45.028370, 43.020256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002527, -0.164914, 0.986305,
		-0.478474, -0.865878, -0.146004,
		0.878097, -0.472290, -0.076719,
		45.769753, 44.886684, 42.997242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078491, 44.566360, 43.295650>,  <45.155087, 45.217285, 43.050945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078491, 44.566360, 43.295650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.468681, 44.652832, 43.312206>,  <45.702797, 44.704716, 43.322140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.468681, 44.652832, 43.312206>,  <45.078491, 44.566360, 43.295650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468681, 44.652832, 43.312206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003751, -0.204339, 0.978893,
		0.220079, -0.954730, -0.200138,
		0.975475, 0.216184, 0.041389,
		45.761322, 44.717686, 43.324623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425282, 44.016407, 43.703175>,  <45.078491, 44.566360, 43.295650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425282, 44.016407, 43.703175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.641281, 44.352684, 43.719330>,  <45.770882, 44.554451, 43.729023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.641281, 44.352684, 43.719330>,  <45.425282, 44.016407, 43.703175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641281, 44.352684, 43.719330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015561, -0.057946, 0.998199,
		0.841520, -0.538400, -0.044373,
		0.540001, 0.840695, 0.040385,
		45.803280, 44.604893, 43.731445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893253, 43.848129, 44.147610>,  <45.425282, 44.016407, 43.703175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893253, 43.848129, 44.147610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.926689, 44.246696, 44.152855>,  <45.946751, 44.485836, 44.156002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.926689, 44.246696, 44.152855>,  <45.893253, 43.848129, 44.147610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926689, 44.246696, 44.152855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043534, -0.009495, 0.999007,
		0.995549, -0.084079, 0.042585,
		0.083591, 0.996414, 0.013113,
		45.951767, 44.545620, 44.156788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299538, 44.046757, 44.753239>,  <45.893253, 43.848129, 44.147610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299538, 44.046757, 44.753239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.153458, 44.410984, 44.675781>,  <46.065811, 44.629520, 44.629307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.153458, 44.410984, 44.675781>,  <46.299538, 44.046757, 44.753239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153458, 44.410984, 44.675781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029492, 0.219223, 0.975229,
		0.930463, 0.350441, -0.106914,
		-0.365198, 0.910567, -0.193643,
		46.043900, 44.684155, 44.617687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527905, 44.278275, 45.317142>,  <46.299538, 44.046757, 44.753239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527905, 44.278275, 45.317142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.278107, 44.557667, 45.177353>,  <46.128227, 44.725300, 45.093479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.278107, 44.557667, 45.177353>,  <46.527905, 44.278275, 45.317142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278107, 44.557667, 45.177353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030152, 0.425565, 0.904425,
		0.780446, 0.575347, -0.244703,
		-0.624496, 0.698477, -0.349478,
		46.090759, 44.767208, 45.072510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747002, 44.879139, 45.515717>,  <46.527905, 44.278275, 45.317142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747002, 44.879139, 45.515717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.363869, 44.985455, 45.472057>,  <46.133987, 45.049244, 45.445862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.363869, 44.985455, 45.472057>,  <46.747002, 44.879139, 45.515717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363869, 44.985455, 45.472057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027413, 0.293605, 0.955534,
		0.286021, 0.918232, -0.273938,
		-0.957831, 0.265793, -0.109149,
		46.076519, 45.065193, 45.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785889, 45.580662, 45.673164>,  <46.747002, 44.879139, 45.515717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785889, 45.580662, 45.673164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.424644, 45.414391, 45.716248>,  <46.207897, 45.314629, 45.742096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.424644, 45.414391, 45.716248>,  <46.785889, 45.580662, 45.673164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424644, 45.414391, 45.716248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052301, 0.142481, 0.988415,
		-0.426204, 0.898284, -0.106936,
		-0.903114, -0.415673, 0.107707,
		46.153709, 45.289688, 45.748558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479801, 45.836040, 46.275043>,  <46.785889, 45.580662, 45.673164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479801, 45.836040, 46.275043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.221519, 45.535130, 46.222668>,  <46.066551, 45.354584, 46.191242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.221519, 45.535130, 46.222668>,  <46.479801, 45.836040, 46.275043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221519, 45.535130, 46.222668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069432, -0.112923, 0.991175,
		-0.760428, 0.649093, 0.020682,
		-0.645700, -0.752281, -0.130937,
		46.027809, 45.309444, 46.183388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848156, 46.063038, 46.660522>,  <46.479801, 45.836040, 46.275043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848156, 46.063038, 46.660522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.826141, 45.666355, 46.614063>,  <45.812935, 45.428345, 46.586189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.826141, 45.666355, 46.614063>,  <45.848156, 46.063038, 46.660522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826141, 45.666355, 46.614063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101061, -0.110193, 0.988759,
		-0.993357, 0.066154, -0.094159,
		-0.055034, -0.991706, -0.116146,
		45.809631, 45.368843, 46.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403183, 45.909321, 47.226257>,  <45.848156, 46.063038, 46.660522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403183, 45.909321, 47.226257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.579147, 45.570320, 47.107452>,  <45.684727, 45.366920, 47.036167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.579147, 45.570320, 47.107452>,  <45.403183, 45.909321, 47.226257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579147, 45.570320, 47.107452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002286, -0.329678, 0.944091,
		-0.898039, -0.415994, -0.143091,
		0.439909, -0.847504, -0.297014,
		45.711121, 45.316071, 47.018349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031456, 45.429245, 47.466503>,  <45.403183, 45.909321, 47.226257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031456, 45.429245, 47.466503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.383217, 45.243790, 47.423237>,  <45.594273, 45.132519, 47.397278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.383217, 45.243790, 47.423237>,  <45.031456, 45.429245, 47.466503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383217, 45.243790, 47.423237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026789, -0.275028, 0.961063,
		-0.475331, -0.842260, -0.254279,
		0.879399, -0.463635, -0.108166,
		45.647038, 45.104698, 47.390785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953491, 44.905743, 47.780224>,  <45.031456, 45.429245, 47.466503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953491, 44.905743, 47.780224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.352264, 44.935982, 47.788326>,  <45.591530, 44.954124, 47.793186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.352264, 44.935982, 47.788326>,  <44.953491, 44.905743, 47.780224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352264, 44.935982, 47.788326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000019, -0.258557, 0.965996,
		0.078261, -0.963034, -0.257762,
		0.996933, 0.075595, 0.020253,
		45.651344, 44.958660, 47.794403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210178, 44.378593, 48.202393>,  <44.953491, 44.905743, 47.780224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210178, 44.378593, 48.202393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.542320, 44.600216, 48.178604>,  <45.741604, 44.733189, 48.164330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.542320, 44.600216, 48.178604>,  <45.210178, 44.378593, 48.202393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542320, 44.600216, 48.178604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195704, -0.190028, 0.962075,
		0.521742, -0.810501, -0.266221,
		0.830353, 0.554055, -0.059472,
		45.791428, 44.766434, 48.160763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718487, 43.917572, 48.398304>,  <45.210178, 44.378593, 48.202393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718487, 43.917572, 48.398304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.815285, 44.302212, 48.450089>,  <45.873363, 44.532997, 48.481159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.815285, 44.302212, 48.450089>,  <45.718487, 43.917572, 48.398304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815285, 44.302212, 48.450089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149993, -0.168893, 0.974155,
		0.958615, -0.216319, -0.185104,
		0.241991, 0.961604, 0.129457,
		45.887882, 44.590694, 48.488926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428329, 43.940540, 48.602623>,  <45.718487, 43.917572, 48.398304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428329, 43.940540, 48.602623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.215126, 44.257275, 48.721893>,  <46.087204, 44.447315, 48.793453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.215126, 44.257275, 48.721893>,  <46.428329, 43.940540, 48.602623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215126, 44.257275, 48.721893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342093, -0.120640, 0.931890,
		0.773872, 0.598705, -0.206578,
		-0.533005, 0.791832, 0.298173,
		46.055225, 44.494823, 48.811344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644154, 44.018894, 49.238438>,  <46.428329, 43.940540, 48.602623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644154, 44.018894, 49.238438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.403641, 44.336941, 49.270058>,  <46.259335, 44.527771, 49.289028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.403641, 44.336941, 49.270058>,  <46.644154, 44.018894, 49.238438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403641, 44.336941, 49.270058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148193, 0.013756, 0.988863,
		0.785176, 0.606297, -0.126102,
		-0.601279, 0.795119, 0.079048,
		46.223255, 44.575478, 49.293774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.943726, 44.517975, 49.763359>,  <46.644154, 44.018894, 49.238438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.943726, 44.517975, 49.763359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.546494, 44.561733, 49.746269>,  <46.308155, 44.587990, 49.736015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.546494, 44.561733, 49.746269>,  <46.943726, 44.517975, 49.763359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546494, 44.561733, 49.746269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070621, -0.265609, 0.961491,
		0.093841, 0.957853, 0.271497,
		-0.993079, 0.109401, -0.042720,
		46.248569, 44.594555, 49.733452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816002, 44.902996, 50.354862>,  <46.943726, 44.517975, 49.763359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816002, 44.902996, 50.354862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.469261, 44.722160, 50.270782>,  <46.261215, 44.613659, 50.220333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.469261, 44.722160, 50.270782>,  <46.816002, 44.902996, 50.354862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469261, 44.722160, 50.270782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161944, -0.143434, 0.976320,
		-0.471531, 0.880367, 0.051123,
		-0.866852, -0.452086, -0.210204,
		46.209206, 44.586536, 50.207722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322422, 45.224564, 50.798531>,  <46.816002, 44.902996, 50.354862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322422, 45.224564, 50.798531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.152763, 44.881378, 50.682598>,  <46.050968, 44.675468, 50.613041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.152763, 44.881378, 50.682598>,  <46.322422, 45.224564, 50.798531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152763, 44.881378, 50.682598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267672, -0.186970, 0.945195,
		-0.865133, 0.478476, -0.150351,
		-0.424142, -0.857964, -0.289829,
		46.025520, 44.623989, 50.595650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668499, 45.250515, 51.048283>,  <46.322422, 45.224564, 50.798531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668499, 45.250515, 51.048283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.768105, 44.868038, 50.986710>,  <45.827869, 44.638554, 50.949764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.768105, 44.868038, 50.986710>,  <45.668499, 45.250515, 51.048283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768105, 44.868038, 50.986710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132762, -0.191142, 0.972543,
		-0.959358, -0.221738, -0.174542,
		0.249012, -0.956189, -0.153935,
		45.842808, 44.581181, 50.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137863, 44.844307, 51.381184>,  <45.668499, 45.250515, 51.048283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137863, 44.844307, 51.381184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.475960, 44.632191, 51.354797>,  <45.678818, 44.504921, 51.338966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.475960, 44.632191, 51.354797>,  <45.137863, 44.844307, 51.381184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475960, 44.632191, 51.354797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023107, -0.159599, 0.986911,
		-0.533881, -0.832657, -0.147154,
		0.845244, -0.530294, -0.065967,
		45.729534, 44.473103, 51.335007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069237, 44.366261, 51.865215>,  <45.137863, 44.844307, 51.381184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069237, 44.366261, 51.865215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.465874, 44.362942, 51.813553>,  <45.703854, 44.360950, 51.782555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.465874, 44.362942, 51.813553>,  <45.069237, 44.366261, 51.865215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465874, 44.362942, 51.813553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129293, 0.018238, 0.991439,
		-0.005874, -0.999799, 0.019158,
		0.991589, -0.008301, -0.129160,
		45.763351, 44.360455, 51.774803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300495, 43.964787, 52.425663>,  <45.069237, 44.366261, 51.865215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300495, 43.964787, 52.425663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.655128, 44.098091, 52.297344>,  <45.867908, 44.178074, 52.220352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.655128, 44.098091, 52.297344>,  <45.300495, 43.964787, 52.425663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655128, 44.098091, 52.297344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402175, -0.212721, 0.890508,
		0.228535, -0.918523, -0.322626,
		0.886581, 0.333264, -0.320793,
		45.921104, 44.198071, 52.201107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808273, 43.486164, 52.744164>,  <45.300495, 43.964787, 52.425663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808273, 43.486164, 52.744164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.017365, 43.810314, 52.638298>,  <46.142818, 44.004803, 52.574780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.017365, 43.810314, 52.638298>,  <45.808273, 43.486164, 52.744164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017365, 43.810314, 52.638298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501245, -0.041041, 0.864331,
		0.689568, -0.584476, -0.427649,
		0.522732, 0.810372, -0.264665,
		46.174183, 44.053425, 52.558899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479347, 43.345272, 52.958687>,  <45.808273, 43.486164, 52.744164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479347, 43.345272, 52.958687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.487267, 43.742058, 52.908703>,  <46.492020, 43.980129, 52.878712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.487267, 43.742058, 52.908703>,  <46.479347, 43.345272, 52.958687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487267, 43.742058, 52.908703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397763, 0.106855, 0.911244,
		0.917274, -0.067745, -0.392451,
		0.019797, 0.991964, -0.124962,
		46.493206, 44.039646, 52.871216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200687, 43.485340, 53.151958>,  <46.479347, 43.345272, 52.958687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200687, 43.485340, 53.151958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.976830, 43.815983, 53.175690>,  <46.842514, 44.014370, 53.189926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.976830, 43.815983, 53.175690>,  <47.200687, 43.485340, 53.151958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976830, 43.815983, 53.175690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356367, 0.175408, 0.917733,
		0.748200, 0.534745, -0.392742,
		-0.559643, 0.826608, 0.059325,
		46.808937, 44.063965, 53.193485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.664440, 43.881210, 53.609833>,  <47.200687, 43.485340, 53.151958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.664440, 43.881210, 53.609833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.301155, 44.046543, 53.636101>,  <47.083183, 44.145741, 53.651863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.301155, 44.046543, 53.636101>,  <47.664440, 43.881210, 53.609833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301155, 44.046543, 53.636101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153744, 0.183555, 0.970912,
		0.389252, 0.891889, -0.230253,
		-0.908210, 0.413330, 0.065673,
		47.028690, 44.170544, 53.655804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708271, 44.625225, 53.881203>,  <47.664440, 43.881210, 53.609833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708271, 44.625225, 53.881203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.348480, 44.485046, 53.985615>,  <47.132607, 44.400940, 54.048264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.348480, 44.485046, 53.985615>,  <47.708271, 44.625225, 53.881203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348480, 44.485046, 53.985615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214158, 0.167167, 0.962388,
		-0.380899, 0.921544, -0.075312,
		-0.899473, -0.350444, 0.261030,
		47.078640, 44.379913, 54.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490192, 45.112648, 54.412060>,  <47.708271, 44.625225, 53.881203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490192, 45.112648, 54.412060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.254028, 44.792133, 54.450760>,  <47.112328, 44.599827, 54.473980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.254028, 44.792133, 54.450760>,  <47.490192, 45.112648, 54.412060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254028, 44.792133, 54.450760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133440, 0.021315, 0.990828,
		-0.795995, 0.597907, 0.094339,
		-0.590412, -0.801282, 0.096752,
		47.076904, 44.551750, 54.479786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135071, 45.206944, 55.016113>,  <47.490192, 45.112648, 54.412060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135071, 45.206944, 55.016113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.091225, 44.811840, 54.971718>,  <47.064915, 44.574780, 54.945080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.091225, 44.811840, 54.971718>,  <47.135071, 45.206944, 55.016113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091225, 44.811840, 54.971718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054964, -0.117511, 0.991549,
		-0.992453, 0.102592, 0.067173,
		-0.109619, -0.987758, -0.110985,
		47.058338, 44.515514, 54.938423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549252, 45.067657, 55.424904>,  <47.135071, 45.206944, 55.016113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549252, 45.067657, 55.424904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.748924, 44.723816, 55.381268>,  <46.868729, 44.517513, 55.355083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.748924, 44.723816, 55.381268>,  <46.549252, 45.067657, 55.424904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748924, 44.723816, 55.381268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058173, -0.092373, 0.994024,
		-0.864541, -0.502547, 0.003894,
		0.499184, -0.859601, -0.109095,
		46.898678, 44.465935, 55.348537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266296, 44.613861, 55.924568>,  <46.549252, 45.067657, 55.424904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266296, 44.613861, 55.924568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.633171, 44.491333, 55.822632>,  <46.853294, 44.417816, 55.761471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.633171, 44.491333, 55.822632>,  <46.266296, 44.613861, 55.924568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633171, 44.491333, 55.822632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198725, -0.202693, 0.958866,
		-0.345370, -0.930100, -0.125034,
		0.917185, -0.306316, -0.254839,
		46.908325, 44.399437, 55.746181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321865, 44.002247, 56.152065>,  <46.266296, 44.613861, 55.924568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321865, 44.002247, 56.152065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.703835, 44.114990, 56.114807>,  <46.933018, 44.182636, 56.092453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.703835, 44.114990, 56.114807>,  <46.321865, 44.002247, 56.152065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703835, 44.114990, 56.114807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214328, -0.437553, 0.873276,
		0.205388, -0.853875, -0.478241,
		0.954924, 0.281861, -0.093141,
		46.990311, 44.199547, 56.086864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588211, 43.551571, 56.521923>,  <46.321865, 44.002247, 56.152065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588211, 43.551571, 56.521923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.887161, 43.810902, 56.463829>,  <47.066532, 43.966499, 56.428970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.887161, 43.810902, 56.463829>,  <46.588211, 43.551571, 56.521923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887161, 43.810902, 56.463829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345867, -0.193009, 0.918217,
		0.567276, -0.736489, -0.368487,
		0.747378, 0.648330, -0.145238,
		47.111374, 44.005402, 56.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113369, 43.196419, 56.922504>,  <46.588211, 43.551571, 56.521923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113369, 43.196419, 56.922504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.217621, 43.580612, 56.883438>,  <47.280170, 43.811131, 56.860001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.217621, 43.580612, 56.883438>,  <47.113369, 43.196419, 56.922504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217621, 43.580612, 56.883438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290154, 0.018553, 0.956800,
		0.920806, -0.277707, -0.273854,
		0.260629, 0.960487, -0.097661,
		47.295811, 43.868759, 56.854141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.753632, 43.315117, 57.065182>,  <47.113369, 43.196419, 56.922504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.753632, 43.315117, 57.065182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.646576, 43.699677, 57.090763>,  <47.582344, 43.930412, 57.106113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.646576, 43.699677, 57.090763>,  <47.753632, 43.315117, 57.065182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646576, 43.699677, 57.090763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411652, 0.054083, 0.909735,
		0.871155, 0.269808, -0.410235,
		-0.267640, 0.961394, 0.063952,
		47.566284, 43.988094, 57.109947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.362453, 43.724895, 57.306232>,  <47.753632, 43.315117, 57.065182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.362453, 43.724895, 57.306232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.029037, 43.919910, 57.410168>,  <47.828987, 44.036919, 57.472527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.029037, 43.919910, 57.410168>,  <48.362453, 43.724895, 57.306232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.029037, 43.919910, 57.410168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320725, 0.044092, 0.946145,
		0.449828, 0.871986, -0.193119,
		-0.833541, 0.487541, 0.259834,
		47.778976, 44.066174, 57.488117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.661022, 44.819530, 57.679089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.006767, 44.623943, 57.632099>,  <47.214214, 44.506592, 57.603905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.006767, 44.623943, 57.632099>,  <46.661022, 44.819530, 57.679089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006767, 44.623943, 57.632099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001859, 0.230488, -0.973073,
		0.502873, 0.841303, 0.198316,
		0.864359, -0.488963, -0.117470,
		47.266075, 44.477253, 57.596859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041508, 45.130085, 57.145836>,  <46.661022, 44.819530, 57.679089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041508, 45.130085, 57.145836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.208878, 44.766785, 57.145111>,  <47.309299, 44.548805, 57.144676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.208878, 44.766785, 57.145111>,  <47.041508, 45.130085, 57.145836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208878, 44.766785, 57.145111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016362, -0.005541, -0.999851,
		0.908104, 0.418393, -0.017179,
		0.418425, -0.908249, -0.001814,
		47.334404, 44.494308, 57.144566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716553, 45.083427, 56.668312>,  <47.041508, 45.130085, 57.145836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716553, 45.083427, 56.668312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.592514, 44.707287, 56.724289>,  <47.518089, 44.481602, 56.757877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.592514, 44.707287, 56.724289>,  <47.716553, 45.083427, 56.668312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592514, 44.707287, 56.724289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015091, -0.152053, -0.988257,
		0.950586, -0.304342, 0.061342,
		-0.310095, -0.940349, 0.139946,
		47.499485, 44.425182, 56.766273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.143368, 44.829308, 56.304935>,  <47.716553, 45.083427, 56.668312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.143368, 44.829308, 56.304935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.836647, 44.577499, 56.355080>,  <47.652615, 44.426414, 56.385166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.836647, 44.577499, 56.355080>,  <48.143368, 44.829308, 56.304935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836647, 44.577499, 56.355080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011057, -0.182319, -0.983177,
		0.641785, -0.755292, 0.132842,
		-0.766805, -0.629519, 0.125360,
		47.606606, 44.388645, 56.392689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.236496, 44.457287, 55.792995>,  <48.143368, 44.829308, 56.304935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.236496, 44.457287, 55.792995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.867142, 44.349930, 55.902782>,  <47.645531, 44.285515, 55.968655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.867142, 44.349930, 55.902782>,  <48.236496, 44.457287, 55.792995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.867142, 44.349930, 55.902782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214683, -0.231674, -0.948809,
		0.318237, -0.935037, 0.156305,
		-0.923383, -0.268390, 0.274464,
		47.590126, 44.269413, 55.985123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.036636, 43.854683, 55.333397>,  <48.236496, 44.457287, 55.792995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.036636, 43.854683, 55.333397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.708557, 44.025478, 55.485695>,  <47.511711, 44.127956, 55.577072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.708557, 44.025478, 55.485695>,  <48.036636, 43.854683, 55.333397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708557, 44.025478, 55.485695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432914, -0.028165, -0.900995,
		-0.373991, -0.903819, 0.207950,
		-0.820193, 0.426988, 0.380742,
		47.462498, 44.153576, 55.599918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555862, 43.346664, 55.204277>,  <48.036636, 43.854683, 55.333397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555862, 43.346664, 55.204277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.352715, 43.686481, 55.261330>,  <47.230827, 43.890373, 55.295563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.352715, 43.686481, 55.261330>,  <47.555862, 43.346664, 55.204277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352715, 43.686481, 55.261330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350165, -0.052315, -0.935226,
		-0.787054, -0.524916, 0.324050,
		-0.507868, 0.849544, 0.142632,
		47.200356, 43.941345, 55.304119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.960384, 43.268215, 54.779758>,  <47.555862, 43.346664, 55.204277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.960384, 43.268215, 54.779758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.976395, 43.664669, 54.830444>,  <46.986000, 43.902542, 54.860855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.976395, 43.664669, 54.830444>,  <46.960384, 43.268215, 54.779758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976395, 43.664669, 54.830444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365131, 0.132553, -0.921471,
		-0.930095, -0.009384, 0.367199,
		0.040026, 0.991131, 0.126714,
		46.988403, 43.962009, 54.868458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275219, 43.506618, 54.601925>,  <46.960384, 43.268215, 54.779758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275219, 43.506618, 54.601925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.529243, 43.812805, 54.560440>,  <46.681656, 43.996517, 54.535549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.529243, 43.812805, 54.560440>,  <46.275219, 43.506618, 54.601925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529243, 43.812805, 54.560440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398782, 0.209893, -0.892703,
		-0.661569, 0.608276, 0.438550,
		0.635058, 0.765471, -0.103711,
		46.719761, 44.042446, 54.529327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874199, 44.051800, 54.324726>,  <46.275219, 43.506618, 54.601925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874199, 44.051800, 54.324726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.260834, 44.126022, 54.253994>,  <46.492817, 44.170555, 54.211555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.260834, 44.126022, 54.253994>,  <45.874199, 44.051800, 54.324726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260834, 44.126022, 54.253994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218382, 0.234957, -0.947156,
		-0.134207, 0.954129, 0.267631,
		0.966591, 0.185561, -0.176831,
		46.550812, 44.181690, 54.200943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838413, 44.572803, 53.907177>,  <45.874199, 44.051800, 54.324726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838413, 44.572803, 53.907177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.212578, 44.467594, 53.812660>,  <46.437077, 44.404469, 53.755951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.212578, 44.467594, 53.812660>,  <45.838413, 44.572803, 53.907177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212578, 44.467594, 53.812660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181176, 0.217326, -0.959137,
		0.303624, 0.939995, 0.155636,
		0.935408, -0.263019, -0.236290,
		46.493198, 44.388687, 53.741772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087650, 45.140995, 53.429283>,  <45.838413, 44.572803, 53.907177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087650, 45.140995, 53.429283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308228, 44.818054, 53.345284>,  <46.440575, 44.624290, 53.294884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308228, 44.818054, 53.345284>,  <46.087650, 45.140995, 53.429283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308228, 44.818054, 53.345284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237584, 0.089312, -0.967252,
		0.799666, 0.583276, -0.142563,
		0.551443, -0.807349, -0.209997,
		46.473660, 44.575848, 53.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207325, 45.302334, 52.802101>,  <46.087650, 45.140995, 53.429283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207325, 45.302334, 52.802101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.321503, 44.919106, 52.812096>,  <46.390011, 44.689167, 52.818092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.321503, 44.919106, 52.812096>,  <46.207325, 45.302334, 52.802101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321503, 44.919106, 52.812096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074006, -0.048025, -0.996101,
		0.955534, 0.282481, -0.084611,
		0.285443, -0.958070, 0.024984,
		46.407135, 44.631683, 52.819592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.736237, 45.153267, 52.330070>,  <46.207325, 45.302334, 52.802101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.736237, 45.153267, 52.330070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.567474, 44.794991, 52.386269>,  <46.466217, 44.580025, 52.419987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.567474, 44.794991, 52.386269>,  <46.736237, 45.153267, 52.330070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.567474, 44.794991, 52.386269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023167, -0.165563, -0.985927,
		0.906343, -0.412715, 0.090602,
		-0.421908, -0.895687, 0.140495,
		46.440903, 44.526283, 52.428417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091877, 44.714848, 51.883701>,  <46.736237, 45.153267, 52.330070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091877, 44.714848, 51.883701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.744705, 44.534458, 51.966946>,  <46.536400, 44.426224, 52.016891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.744705, 44.534458, 51.966946>,  <47.091877, 44.714848, 51.883701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744705, 44.534458, 51.966946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154166, -0.153698, -0.976017,
		0.472149, -0.879201, 0.063874,
		-0.867933, -0.450979, 0.208112,
		46.484325, 44.399166, 52.029381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.061188, 44.206852, 51.506977>,  <47.091877, 44.714848, 51.883701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.061188, 44.206852, 51.506977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.671379, 44.252193, 51.584396>,  <46.437496, 44.279400, 51.630848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.671379, 44.252193, 51.584396>,  <47.061188, 44.206852, 51.506977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671379, 44.252193, 51.584396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211577, -0.178015, -0.961013,
		-0.074484, -0.977477, 0.197463,
		-0.974519, 0.113359, 0.193553,
		46.379025, 44.286201, 51.642464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.794449, 43.660007, 51.060848>,  <47.061188, 44.206852, 51.506977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.794449, 43.660007, 51.060848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.494125, 43.900284, 51.170723>,  <46.313931, 44.044449, 51.236649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.494125, 43.900284, 51.170723>,  <46.794449, 43.660007, 51.060848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494125, 43.900284, 51.170723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418964, -0.111594, -0.901119,
		-0.510641, -0.791655, 0.335453,
		-0.750810, 0.600691, 0.274690,
		46.268883, 44.080490, 51.253132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187504, 43.360706, 50.818733>,  <46.794449, 43.660007, 51.060848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187504, 43.360706, 50.818733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.073181, 43.742123, 50.856834>,  <46.004585, 43.970974, 50.879696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.073181, 43.742123, 50.856834>,  <46.187504, 43.360706, 50.818733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073181, 43.742123, 50.856834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300965, 0.005049, -0.953622,
		-0.909798, -0.301221, 0.285539,
		-0.285809, 0.953541, 0.095251,
		45.987438, 44.028187, 50.885410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565224, 43.459789, 50.390743>,  <46.187504, 43.360706, 50.818733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565224, 43.459789, 50.390743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.694565, 43.834160, 50.446571>,  <45.772171, 44.058781, 50.480068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.694565, 43.834160, 50.446571>,  <45.565224, 43.459789, 50.390743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694565, 43.834160, 50.446571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191550, 0.209180, -0.958933,
		-0.926687, 0.283343, 0.246916,
		0.323357, 0.935928, 0.139570,
		45.791573, 44.114937, 50.488441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033058, 43.977516, 50.045425>,  <45.565224, 43.459789, 50.390743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033058, 43.977516, 50.045425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.379501, 44.175159, 50.075668>,  <45.587368, 44.293747, 50.093815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.379501, 44.175159, 50.075668>,  <45.033058, 43.977516, 50.045425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379501, 44.175159, 50.075668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092434, 0.306960, -0.947223,
		-0.491241, 0.813406, 0.311533,
		0.866105, 0.494111, 0.075605,
		45.639332, 44.323395, 50.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959129, 44.717171, 49.746540>,  <45.033058, 43.977516, 50.045425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959129, 44.717171, 49.746540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.353912, 44.659637, 49.717625>,  <45.590782, 44.625118, 49.700275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.353912, 44.659637, 49.717625>,  <44.959129, 44.717171, 49.746540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353912, 44.659637, 49.717625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021963, 0.565182, -0.824674,
		0.159466, 0.812332, 0.560970,
		0.986959, -0.143829, -0.072286,
		45.650002, 44.616489, 49.695938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262341, 45.321655, 49.519760>,  <44.959129, 44.717171, 49.746540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262341, 45.321655, 49.519760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.581505, 45.098717, 49.427929>,  <45.773003, 44.964954, 49.372829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.581505, 45.098717, 49.427929>,  <45.262341, 45.321655, 49.519760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581505, 45.098717, 49.427929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004473, 0.375381, -0.926860,
		0.602756, 0.740580, 0.297028,
		0.797913, -0.557342, -0.229575,
		45.820877, 44.931515, 49.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780819, 45.745739, 49.109299>,  <45.262341, 45.321655, 49.519760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780819, 45.745739, 49.109299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.853828, 45.357555, 49.046181>,  <45.897633, 45.124645, 49.008308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.853828, 45.357555, 49.046181>,  <45.780819, 45.745739, 49.109299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853828, 45.357555, 49.046181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169880, 0.189207, -0.967130,
		0.968414, 0.149718, 0.199396,
		0.182524, -0.970456, -0.157797,
		45.908585, 45.066418, 48.998840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.343140, 45.814686, 48.678329>,  <45.780819, 45.745739, 49.109299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.343140, 45.814686, 48.678329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177155, 45.453472, 48.633896>,  <46.077564, 45.236744, 48.607235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177155, 45.453472, 48.633896>,  <46.343140, 45.814686, 48.678329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177155, 45.453472, 48.633896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068092, 0.090930, -0.993527,
		0.907287, -0.419841, 0.023757,
		-0.414963, -0.903031, -0.111087,
		46.052666, 45.182564, 48.600571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832909, 45.574707, 48.180359>,  <46.343140, 45.814686, 48.678329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832909, 45.574707, 48.180359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.535690, 45.307858, 48.159065>,  <46.357361, 45.147747, 48.146290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.535690, 45.307858, 48.159065>,  <46.832909, 45.574707, 48.180359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535690, 45.307858, 48.159065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108386, -0.041466, -0.993244,
		0.660406, -0.743795, 0.103118,
		-0.743045, -0.667121, -0.053232,
		46.312778, 45.107723, 48.143097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004356, 44.999809, 47.680237>,  <46.832909, 45.574707, 48.180359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004356, 44.999809, 47.680237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.605911, 44.990997, 47.714371>,  <46.366844, 44.985710, 47.734852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.605911, 44.990997, 47.714371>,  <47.004356, 44.999809, 47.680237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605911, 44.990997, 47.714371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083684, -0.067182, -0.994225,
		0.027637, -0.997498, 0.065077,
		-0.996109, -0.022031, 0.085331,
		46.307079, 44.984386, 47.739971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811897, 44.574562, 47.219860>,  <47.004356, 44.999809, 47.680237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811897, 44.574562, 47.219860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.471115, 44.774330, 47.282795>,  <46.266647, 44.894192, 47.320557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.471115, 44.774330, 47.282795>,  <46.811897, 44.574562, 47.219860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471115, 44.774330, 47.282795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211355, -0.053070, -0.975968,
		-0.479066, -0.864734, 0.150768,
		-0.851954, 0.499419, 0.157342,
		46.215530, 44.924156, 47.329998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473202, 44.250355, 46.724365>,  <46.811897, 44.574562, 47.219860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473202, 44.250355, 46.724365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.256599, 44.576969, 46.804405>,  <46.126640, 44.772938, 46.852428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.256599, 44.576969, 46.804405>,  <46.473202, 44.250355, 46.724365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256599, 44.576969, 46.804405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488657, -0.112025, -0.865254,
		-0.684098, -0.566315, 0.459670,
		-0.541501, 0.816540, 0.200098,
		46.094151, 44.821930, 46.864433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864563, 44.087101, 46.342300>,  <46.473202, 44.250355, 46.724365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864563, 44.087101, 46.342300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.849892, 44.480495, 46.413189>,  <45.841091, 44.716534, 46.455723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.849892, 44.480495, 46.413189>,  <45.864563, 44.087101, 46.342300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849892, 44.480495, 46.413189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377884, 0.150522, -0.913535,
		-0.925126, -0.100471, 0.366124,
		-0.036674, 0.983488, 0.177219,
		45.838890, 44.775543, 46.466354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.684788, 43.669384, 33.668167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.038086, 43.855911, 33.648438>,  <45.250065, 43.967827, 33.636600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.038086, 43.855911, 33.648438>,  <44.684788, 43.669384, 33.668167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038086, 43.855911, 33.648438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097524, 0.079792, -0.992029,
		-0.458665, 0.881012, 0.115953,
		0.883242, 0.466317, -0.049322,
		45.303059, 43.995808, 33.633640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655998, 44.178493, 33.025928>,  <44.684788, 43.669384, 33.668167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655998, 44.178493, 33.025928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.046410, 44.173607, 33.112854>,  <45.280655, 44.170673, 33.165009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.046410, 44.173607, 33.112854>,  <44.655998, 44.178493, 33.025928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046410, 44.173607, 33.112854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217118, -0.015487, -0.976023,
		0.015290, 0.999805, -0.012463,
		0.976026, -0.012218, 0.217312,
		45.339218, 44.169941, 33.178047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941235, 44.680969, 32.521187>,  <44.655998, 44.178493, 33.025928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941235, 44.680969, 32.521187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.219475, 44.421516, 32.644741>,  <45.386421, 44.265842, 32.718872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.219475, 44.421516, 32.644741>,  <44.941235, 44.680969, 32.521187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219475, 44.421516, 32.644741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277654, -0.153819, -0.948287,
		0.662605, 0.745394, 0.073100,
		0.695603, -0.648636, 0.308882,
		45.428154, 44.226925, 32.737408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303307, 44.700623, 32.097248>,  <44.941235, 44.680969, 32.521187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303307, 44.700623, 32.097248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.948303, 44.884682, 32.106911>,  <43.735302, 44.995117, 32.112709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.948303, 44.884682, 32.106911>,  <44.303307, 44.700623, 32.097248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948303, 44.884682, 32.106911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264684, 0.466191, 0.844161,
		0.377180, 0.755597, -0.535545,
		-0.887512, 0.460151, 0.024157,
		43.682049, 45.022728, 32.114159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384224, 45.489040, 32.298237>,  <44.303307, 44.700623, 32.097248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384224, 45.489040, 32.298237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.013054, 45.374268, 32.393421>,  <43.790352, 45.305405, 32.450531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.013054, 45.374268, 32.393421>,  <44.384224, 45.489040, 32.298237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013054, 45.374268, 32.393421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145607, 0.308644, 0.939966,
		-0.343147, 0.906869, -0.244620,
		-0.927927, -0.286928, 0.237957,
		43.734676, 45.288189, 32.464809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072746, 46.051384, 32.574974>,  <44.384224, 45.489040, 32.298237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072746, 46.051384, 32.574974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840088, 45.746368, 32.688274>,  <43.700493, 45.563358, 32.756252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840088, 45.746368, 32.688274>,  <44.072746, 46.051384, 32.574974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840088, 45.746368, 32.688274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080929, 0.400725, 0.912617,
		-0.809407, 0.507896, -0.294792,
		-0.581645, -0.762536, 0.283246,
		43.665596, 45.517609, 32.773247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680172, 46.296505, 33.137737>,  <44.072746, 46.051384, 32.574974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680172, 46.296505, 33.137737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.599045, 45.910099, 33.201836>,  <43.550369, 45.678257, 33.240295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.599045, 45.910099, 33.201836>,  <43.680172, 46.296505, 33.137737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599045, 45.910099, 33.201836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236394, 0.207107, 0.949329,
		-0.950254, 0.154659, -0.270365,
		-0.202817, -0.966016, 0.160244,
		43.538200, 45.620293, 33.249908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012463, 46.289261, 33.482666>,  <43.680172, 46.296505, 33.137737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012463, 46.289261, 33.482666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179504, 45.933372, 33.556427>,  <43.279728, 45.719841, 33.600685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179504, 45.933372, 33.556427>,  <43.012463, 46.289261, 33.482666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179504, 45.933372, 33.556427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192788, 0.111568, 0.974877,
		-0.887943, -0.442661, -0.124936,
		0.417601, -0.889721, 0.184406,
		43.304783, 45.666454, 33.611748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653702, 45.938103, 33.964424>,  <43.012463, 46.289261, 33.482666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653702, 45.938103, 33.964424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001427, 45.743420, 33.998840>,  <43.210064, 45.626610, 34.019489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001427, 45.743420, 33.998840>,  <42.653702, 45.938103, 33.964424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001427, 45.743420, 33.998840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082932, 0.027970, 0.996163,
		-0.487249, -0.873116, -0.016049,
		0.869316, -0.486710, 0.086038,
		43.262222, 45.597408, 34.024651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527924, 45.496723, 34.513897>,  <42.653702, 45.938103, 33.964424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527924, 45.496723, 34.513897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924759, 45.499184, 34.463734>,  <43.162861, 45.500660, 34.433636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924759, 45.499184, 34.463734>,  <42.527924, 45.496723, 34.513897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924759, 45.499184, 34.463734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122777, 0.161556, 0.979196,
		0.026285, -0.986844, 0.159523,
		0.992086, 0.006153, -0.125408,
		43.222385, 45.501030, 34.426109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805931, 44.916336, 34.891594>,  <42.527924, 45.496723, 34.513897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805931, 44.916336, 34.891594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101799, 45.183262, 34.856747>,  <43.279320, 45.343418, 34.835838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101799, 45.183262, 34.856747>,  <42.805931, 44.916336, 34.891594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101799, 45.183262, 34.856747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226910, -0.125421, 0.965806,
		0.633568, -0.734142, -0.244189,
		0.739665, 0.667312, -0.087121,
		43.323700, 45.383457, 34.830612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375816, 44.600391, 35.185101>,  <42.805931, 44.916336, 34.891594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375816, 44.600391, 35.185101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477531, 44.987190, 35.178757>,  <43.538563, 45.219269, 35.174950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477531, 44.987190, 35.178757>,  <43.375816, 44.600391, 35.185101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477531, 44.987190, 35.178757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045151, 0.004507, 0.998970,
		0.966073, -0.254744, -0.042515,
		0.254290, 0.966998, -0.015856,
		43.553818, 45.277290, 35.174000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791985, 44.685162, 35.746964>,  <43.375816, 44.600391, 35.185101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791985, 44.685162, 35.746964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675964, 45.062664, 35.683479>,  <43.606354, 45.289165, 35.645390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675964, 45.062664, 35.683479>,  <43.791985, 44.685162, 35.746964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675964, 45.062664, 35.683479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043529, 0.178674, 0.982945,
		0.956022, 0.278193, -0.092905,
		-0.290048, 0.943761, -0.158707,
		43.588951, 45.345791, 35.635868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169388, 44.982250, 36.252464>,  <43.791985, 44.685162, 35.746964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169388, 44.982250, 36.252464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892616, 45.253857, 36.154335>,  <43.726555, 45.416821, 36.095459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892616, 45.253857, 36.154335>,  <44.169388, 44.982250, 36.252464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892616, 45.253857, 36.154335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052257, 0.291798, 0.955051,
		0.720074, 0.673645, -0.166419,
		-0.691926, 0.679012, -0.245319,
		43.685040, 45.457561, 36.080738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418877, 45.584484, 36.512005>,  <44.169388, 44.982250, 36.252464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418877, 45.584484, 36.512005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022095, 45.596264, 36.462761>,  <43.784027, 45.603333, 36.433212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022095, 45.596264, 36.462761>,  <44.418877, 45.584484, 36.512005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022095, 45.596264, 36.462761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109071, 0.294750, 0.949329,
		0.064246, 0.955120, -0.289167,
		-0.991956, 0.029451, -0.123112,
		43.724506, 45.605099, 36.425827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217518, 46.182751, 36.930206>,  <44.418877, 45.584484, 36.512005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217518, 46.182751, 36.930206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853554, 46.023907, 36.882263>,  <43.635174, 45.928600, 36.853497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853554, 46.023907, 36.882263>,  <44.217518, 46.182751, 36.930206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853554, 46.023907, 36.882263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161909, 0.073977, 0.984029,
		-0.381901, 0.914785, -0.131608,
		-0.909910, -0.397110, -0.119860,
		43.580582, 45.904774, 36.846306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779770, 46.531254, 37.407803>,  <44.217518, 46.182751, 36.930206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779770, 46.531254, 37.407803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536606, 46.222038, 37.335308>,  <43.390705, 46.036507, 37.291813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536606, 46.222038, 37.335308>,  <43.779770, 46.531254, 37.407803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536606, 46.222038, 37.335308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283005, -0.002305, 0.959116,
		-0.741855, 0.634350, -0.217373,
		-0.607914, -0.773042, -0.181234,
		43.354233, 45.990124, 37.280937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063538, 46.654682, 37.712093>,  <43.779770, 46.531254, 37.407803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063538, 46.654682, 37.712093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128006, 46.260910, 37.684036>,  <43.166687, 46.024647, 37.667202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.128006, 46.260910, 37.684036>,  <43.063538, 46.654682, 37.712093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128006, 46.260910, 37.684036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333791, -0.121250, 0.934817,
		-0.928768, -0.127249, -0.348135,
		0.161166, -0.984432, -0.070138,
		43.176357, 45.965580, 37.662994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488323, 46.459869, 38.000561>,  <43.063538, 46.654682, 37.712093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488323, 46.459869, 38.000561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769058, 46.175697, 38.021370>,  <42.937500, 46.005192, 38.033855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769058, 46.175697, 38.021370>,  <42.488323, 46.459869, 38.000561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769058, 46.175697, 38.021370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176585, -0.102763, 0.978906,
		-0.690103, -0.696220, -0.197575,
		0.701837, -0.710434, 0.052025,
		42.979610, 45.962566, 38.036976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209873, 46.014877, 38.574951>,  <42.488323, 46.459869, 38.000561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209873, 46.014877, 38.574951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597748, 45.921837, 38.545021>,  <42.830475, 45.866013, 38.527061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597748, 45.921837, 38.545021>,  <42.209873, 46.014877, 38.574951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597748, 45.921837, 38.545021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006799, -0.280448, 0.959845,
		-0.244237, -0.931263, -0.270367,
		0.969692, -0.232591, -0.074827,
		42.888657, 45.852058, 38.522572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251625, 45.409084, 38.930973>,  <42.209873, 46.014877, 38.574951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251625, 45.409084, 38.930973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.620468, 45.563850, 38.930046>,  <42.841774, 45.656712, 38.929489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.620468, 45.563850, 38.930046>,  <42.251625, 45.409084, 38.930973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620468, 45.563850, 38.930046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041014, -0.091789, 0.994934,
		0.384743, -0.917535, -0.100508,
		0.922112, 0.386916, -0.002316,
		42.897102, 45.679924, 38.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637062, 44.946682, 39.268520>,  <42.251625, 45.409084, 38.930973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637062, 44.946682, 39.268520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863579, 45.275593, 39.291054>,  <42.999489, 45.472939, 39.304573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863579, 45.275593, 39.291054>,  <42.637062, 44.946682, 39.268520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863579, 45.275593, 39.291054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113131, -0.145248, 0.982906,
		0.816400, -0.550243, -0.175278,
		0.566297, 0.822274, 0.056331,
		43.033466, 45.522274, 39.307953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251984, 44.708126, 39.659206>,  <42.637062, 44.946682, 39.268520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251984, 44.708126, 39.659206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252678, 45.107327, 39.684467>,  <43.253094, 45.346848, 39.699623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252678, 45.107327, 39.684467>,  <43.251984, 44.708126, 39.659206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252678, 45.107327, 39.684467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122366, -0.062463, 0.990517,
		0.992483, -0.009445, 0.122014,
		0.001734, 0.998002, 0.063149,
		43.253197, 45.406727, 39.703411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827820, 44.935379, 40.151909>,  <43.251984, 44.708126, 39.659206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827820, 44.935379, 40.151909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.564667, 45.236271, 40.137245>,  <43.406776, 45.416805, 40.128445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.564667, 45.236271, 40.137245>,  <43.827820, 44.935379, 40.151909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564667, 45.236271, 40.137245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173043, 0.198359, 0.964733,
		0.732975, 0.628333, -0.260664,
		-0.657878, 0.752231, -0.036664,
		43.367302, 45.461941, 40.126247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151901, 45.486710, 40.512718>,  <43.827820, 44.935379, 40.151909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151901, 45.486710, 40.512718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767014, 45.595173, 40.522621>,  <43.536083, 45.660252, 40.528564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767014, 45.595173, 40.522621>,  <44.151901, 45.486710, 40.512718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767014, 45.595173, 40.522621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091490, 0.236337, 0.967354,
		0.256450, 0.933071, -0.252215,
		-0.962218, 0.271154, 0.024758,
		43.478348, 45.676517, 40.530048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076813, 46.093266, 40.909641>,  <44.151901, 45.486710, 40.512718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076813, 46.093266, 40.909641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706558, 45.941902, 40.908150>,  <43.484406, 45.851086, 40.907257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706558, 45.941902, 40.908150>,  <44.076813, 46.093266, 40.909641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706558, 45.941902, 40.908150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017914, 0.033980, 0.999262,
		-0.377998, 0.925017, -0.038232,
		-0.925633, -0.378404, -0.003726,
		43.428867, 45.828381, 40.907032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828316, 46.492851, 41.394619>,  <44.076813, 46.093266, 40.909641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828316, 46.492851, 41.394619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545258, 46.211739, 41.365410>,  <43.375423, 46.043072, 41.347885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545258, 46.211739, 41.365410>,  <43.828316, 46.492851, 41.394619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545258, 46.211739, 41.365410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169999, 0.069034, 0.983023,
		-0.685808, 0.708050, -0.168324,
		-0.707650, -0.702780, -0.073024,
		43.332962, 46.000904, 41.343502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248150, 46.628872, 41.913254>,  <43.828316, 46.492851, 41.394619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248150, 46.628872, 41.913254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207497, 46.241035, 41.824196>,  <43.183105, 46.008335, 41.770760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207497, 46.241035, 41.824196>,  <43.248150, 46.628872, 41.913254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207497, 46.241035, 41.824196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150694, -0.206218, 0.966833,
		-0.983342, 0.131817, -0.125151,
		-0.101636, -0.969587, -0.222646,
		43.177006, 45.950161, 41.757401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671909, 46.328388, 42.324383>,  <43.248150, 46.628872, 41.913254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671909, 46.328388, 42.324383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.908875, 46.020138, 42.230423>,  <43.051056, 45.835186, 42.174049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.908875, 46.020138, 42.230423>,  <42.671909, 46.328388, 42.324383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908875, 46.020138, 42.230423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193376, -0.419060, 0.887127,
		-0.782081, -0.480123, -0.397278,
		0.592414, -0.770630, -0.234895,
		43.086597, 45.788948, 42.159954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324505, 45.715004, 42.545376>,  <42.671909, 46.328388, 42.324383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324505, 45.715004, 42.545376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698296, 45.574497, 42.522141>,  <42.922569, 45.490192, 42.508202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698296, 45.574497, 42.522141>,  <42.324505, 45.715004, 42.545376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698296, 45.574497, 42.522141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081411, -0.369633, 0.925604,
		-0.346599, -0.860224, -0.374009,
		0.934474, -0.351262, -0.058083,
		42.978638, 45.469116, 42.504715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331070, 45.026318, 42.913849>,  <42.324505, 45.715004, 42.545376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331070, 45.026318, 42.913849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695190, 45.191853, 42.910286>,  <42.913662, 45.291176, 42.908146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695190, 45.191853, 42.910286>,  <42.331070, 45.026318, 42.913849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695190, 45.191853, 42.910286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101411, -0.202093, 0.974102,
		0.401322, -0.887634, -0.225935,
		0.910305, 0.413841, -0.008912,
		42.968281, 45.316006, 42.907612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662502, 44.658157, 43.450726>,  <42.331070, 45.026318, 42.913849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662502, 44.658157, 43.450726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933525, 44.946365, 43.391716>,  <43.096138, 45.119289, 43.356312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.933525, 44.946365, 43.391716>,  <42.662502, 44.658157, 43.450726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933525, 44.946365, 43.391716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410676, -0.204251, 0.888610,
		0.610132, -0.662667, -0.434293,
		0.677558, 0.720523, -0.147521,
		43.136791, 45.162521, 43.347458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.674202, 44.400448, 43.648113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597359, 44.792595, 43.665874>,  <43.551254, 45.027882, 43.676533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597359, 44.792595, 43.665874>,  <43.674202, 44.400448, 43.648113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597359, 44.792595, 43.665874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349887, 0.026151, 0.936427,
		0.916882, 0.195432, -0.348042,
		-0.192110, 0.980369, 0.044402,
		43.539726, 45.086704, 43.679195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208889, 44.734543, 43.980297>,  <43.674202, 44.400448, 43.648113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208889, 44.734543, 43.980297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903397, 44.987713, 44.031090>,  <43.720100, 45.139614, 44.061565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903397, 44.987713, 44.031090>,  <44.208889, 44.734543, 43.980297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903397, 44.987713, 44.031090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384271, 0.287679, 0.877255,
		0.518707, 0.718780, -0.462924,
		-0.763727, 0.632926, 0.126985,
		43.674278, 45.177589, 44.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537098, 45.312016, 44.318485>,  <44.208889, 44.734543, 43.980297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537098, 45.312016, 44.318485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147224, 45.376785, 44.380150>,  <43.913300, 45.415646, 44.417149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147224, 45.376785, 44.380150>,  <44.537098, 45.312016, 44.318485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147224, 45.376785, 44.380150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173602, 0.113639, 0.978238,
		0.140878, 0.980239, -0.138872,
		-0.974688, 0.161921, 0.154162,
		43.854816, 45.425362, 44.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029968, 45.518890, 44.682034>,  <44.537098, 45.312016, 44.318485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029968, 45.518890, 44.682034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361710, 45.332005, 44.804596>,  <45.560757, 45.219875, 44.878132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361710, 45.332005, 44.804596>,  <45.029968, 45.518890, 44.682034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361710, 45.332005, 44.804596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338821, -0.015491, -0.940723,
		0.444262, 0.884011, 0.145453,
		0.829356, -0.467210, 0.306403,
		45.610516, 45.191841, 44.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554325, 45.871288, 44.412609>,  <45.029968, 45.518890, 44.682034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554325, 45.871288, 44.412609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725616, 45.512917, 44.459827>,  <45.828392, 45.297894, 44.488159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725616, 45.512917, 44.459827>,  <45.554325, 45.871288, 44.412609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725616, 45.512917, 44.459827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455207, 0.101018, -0.884637,
		0.780644, 0.432565, 0.451091,
		0.428231, -0.895926, 0.118047,
		45.854084, 45.244141, 44.495243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149082, 45.822601, 44.020420>,  <45.554325, 45.871288, 44.412609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149082, 45.822601, 44.020420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104843, 45.428932, 44.075798>,  <46.078300, 45.192730, 44.109024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104843, 45.428932, 44.075798>,  <46.149082, 45.822601, 44.020420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104843, 45.428932, 44.075798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105614, -0.150154, -0.983005,
		0.988237, -0.094100, 0.120550,
		-0.110601, -0.984174, 0.138450,
		46.071663, 45.133678, 44.117332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810524, 45.481503, 43.710556>,  <46.149082, 45.822601, 44.020420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810524, 45.481503, 43.710556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.494644, 45.236160, 43.715813>,  <46.305119, 45.088955, 43.718967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.494644, 45.236160, 43.715813>,  <46.810524, 45.481503, 43.710556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494644, 45.236160, 43.715813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127783, -0.185389, -0.974321,
		0.600044, -0.767738, 0.224777,
		-0.789695, -0.613359, 0.013138,
		46.257736, 45.052155, 43.719753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.054020, 44.927353, 43.409927>,  <46.810524, 45.481503, 43.710556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.054020, 44.927353, 43.409927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661461, 44.861694, 43.370090>,  <46.425926, 44.822300, 43.346188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661461, 44.861694, 43.370090>,  <47.054020, 44.927353, 43.409927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661461, 44.861694, 43.370090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130199, -0.187751, -0.973549,
		0.141111, -0.968403, 0.205630,
		-0.981395, -0.164152, -0.099591,
		46.367043, 44.812450, 43.340214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021347, 44.485775, 42.942776>,  <47.054020, 44.927353, 43.409927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021347, 44.485775, 42.942776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632545, 44.577438, 42.963539>,  <46.399265, 44.632435, 42.975998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632545, 44.577438, 42.963539>,  <47.021347, 44.485775, 42.942776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632545, 44.577438, 42.963539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082431, -0.125717, -0.988636,
		-0.220026, -0.965237, 0.141087,
		-0.972005, 0.229156, 0.051904,
		46.340942, 44.646187, 42.979111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680645, 43.971149, 42.546024>,  <47.021347, 44.485775, 42.942776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680645, 43.971149, 42.546024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436096, 44.287220, 42.563175>,  <46.289368, 44.476864, 42.573467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436096, 44.287220, 42.563175>,  <46.680645, 43.971149, 42.546024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436096, 44.287220, 42.563175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102079, -0.025015, -0.994462,
		-0.784732, -0.612364, 0.095954,
		-0.611373, 0.790180, 0.042879,
		46.252686, 44.524273, 42.576038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039291, 43.713120, 42.250885>,  <46.680645, 43.971149, 42.546024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039291, 43.713120, 42.250885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036728, 44.107910, 42.186584>,  <46.035191, 44.344784, 42.148003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036728, 44.107910, 42.186584>,  <46.039291, 43.713120, 42.250885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036728, 44.107910, 42.186584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102572, -0.160555, -0.981683,
		-0.994705, 0.010195, 0.102266,
		-0.006411, 0.986974, -0.160751,
		46.034805, 44.404003, 42.138359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655228, 43.851593, 41.639698>,  <46.039291, 43.713120, 42.250885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655228, 43.851593, 41.639698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789833, 44.227745, 41.659470>,  <45.870598, 44.453438, 41.671333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789833, 44.227745, 41.659470>,  <45.655228, 43.851593, 41.639698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789833, 44.227745, 41.659470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094300, 0.018573, -0.995371,
		-0.936945, 0.339617, -0.082428,
		0.336514, 0.940380, 0.049428,
		45.890789, 44.509861, 41.674297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152630, 44.342010, 41.209206>,  <45.655228, 43.851593, 41.639698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152630, 44.342010, 41.209206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536713, 44.451080, 41.233345>,  <45.767162, 44.516521, 41.247829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536713, 44.451080, 41.233345>,  <45.152630, 44.342010, 41.209206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536713, 44.451080, 41.233345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046887, 0.055622, -0.997350,
		-0.275312, 0.960496, 0.040624,
		0.960211, 0.272678, 0.060348,
		45.824776, 44.532883, 41.251450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194454, 45.003090, 40.904427>,  <45.152630, 44.342010, 41.209206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194454, 45.003090, 40.904427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565788, 44.855480, 40.886478>,  <45.788589, 44.766914, 40.875710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565788, 44.855480, 40.886478>,  <45.194454, 45.003090, 40.904427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565788, 44.855480, 40.886478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032230, 0.200137, -0.979238,
		0.370345, 0.907614, 0.197688,
		0.928335, -0.369028, -0.044868,
		45.844288, 44.744770, 40.873016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528507, 45.435383, 40.445343>,  <45.194454, 45.003090, 40.904427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528507, 45.435383, 40.445343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759300, 45.108852, 40.456001>,  <45.897778, 44.912933, 40.462395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759300, 45.108852, 40.456001>,  <45.528507, 45.435383, 40.445343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759300, 45.108852, 40.456001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195606, 0.106435, -0.974890,
		0.792988, 0.567706, 0.221088,
		0.576982, -0.816322, 0.026645,
		45.932396, 44.863956, 40.463993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092606, 45.703506, 40.056374>,  <45.528507, 45.435383, 40.445343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092606, 45.703506, 40.056374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104851, 45.303749, 40.062965>,  <46.112198, 45.063892, 40.066921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104851, 45.303749, 40.062965>,  <46.092606, 45.703506, 40.056374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104851, 45.303749, 40.062965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269420, -0.007626, -0.962992,
		0.962536, 0.033915, 0.269024,
		0.030609, -0.999396, 0.016478,
		46.114033, 45.003929, 40.067909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772408, 45.562824, 39.832085>,  <46.092606, 45.703506, 40.056374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772408, 45.562824, 39.832085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550179, 45.232376, 39.794445>,  <46.416840, 45.034107, 39.771862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550179, 45.232376, 39.794445>,  <46.772408, 45.562824, 39.832085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.550179, 45.232376, 39.794445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247358, -0.056172, -0.967295,
		0.793820, -0.560682, 0.235556,
		-0.555576, -0.826124, -0.094099,
		46.383507, 44.984539, 39.766216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.193378, 45.015488, 39.522324>,  <46.772408, 45.562824, 39.832085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.193378, 45.015488, 39.522324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817688, 44.901409, 39.445877>,  <46.592274, 44.832962, 39.400009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817688, 44.901409, 39.445877>,  <47.193378, 45.015488, 39.522324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817688, 44.901409, 39.445877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192616, 0.023052, -0.981003,
		0.284183, -0.958192, 0.033283,
		-0.939223, -0.285195, -0.191114,
		46.535919, 44.815849, 39.388542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.260296, 44.595852, 38.893978>,  <47.193378, 45.015488, 39.522324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.260296, 44.595852, 38.893978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865677, 44.661247, 38.893143>,  <46.628906, 44.700485, 38.892643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865677, 44.661247, 38.893143>,  <47.260296, 44.595852, 38.893978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865677, 44.661247, 38.893143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026799, -0.174270, -0.984333,
		-0.161264, -0.971036, 0.176306,
		-0.986548, 0.163462, -0.002081,
		46.569714, 44.710293, 38.892517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929981, 44.087799, 38.426289>,  <47.260296, 44.595852, 38.893978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929981, 44.087799, 38.426289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675476, 44.394436, 38.460968>,  <46.522774, 44.578419, 38.481777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675476, 44.394436, 38.460968>,  <46.929981, 44.087799, 38.426289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.675476, 44.394436, 38.460968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211406, -0.065167, -0.975223,
		-0.741944, -0.638824, 0.203525,
		-0.636259, 0.766588, 0.086701,
		46.484600, 44.624413, 38.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327488, 43.817909, 38.158859>,  <46.929981, 44.087799, 38.426289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327488, 43.817909, 38.158859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311462, 44.217468, 38.149002>,  <46.301849, 44.457203, 38.143089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311462, 44.217468, 38.149002>,  <46.327488, 43.817909, 38.158859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311462, 44.217468, 38.149002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108424, -0.028861, -0.993686,
		-0.993297, -0.037137, 0.109460,
		-0.040062, 0.998893, -0.024641,
		46.299442, 44.517136, 38.141609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743706, 43.889313, 37.917801>,  <46.327488, 43.817909, 38.158859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743706, 43.889313, 37.917801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919220, 44.243118, 37.854431>,  <46.024529, 44.455402, 37.816410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919220, 44.243118, 37.854431>,  <45.743706, 43.889313, 37.917801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919220, 44.243118, 37.854431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175495, -0.088555, -0.980489,
		-0.881290, 0.458023, 0.116372,
		0.438782, 0.884518, -0.158423,
		46.050854, 44.508472, 37.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340000, 44.167908, 37.397743>,  <45.743706, 43.889313, 37.917801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340000, 44.167908, 37.397743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700027, 44.342064, 37.404816>,  <45.916046, 44.446556, 37.409061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700027, 44.342064, 37.404816>,  <45.340000, 44.167908, 37.397743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700027, 44.342064, 37.404816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071520, -0.107575, -0.991621,
		-0.429836, 0.893793, -0.127964,
		0.900070, 0.435386, 0.017685,
		45.970047, 44.472679, 37.410122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367817, 44.659588, 36.933865>,  <45.340000, 44.167908, 37.397743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367817, 44.659588, 36.933865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761665, 44.595898, 36.962608>,  <45.997974, 44.557682, 36.979855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761665, 44.595898, 36.962608>,  <45.367817, 44.659588, 36.933865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761665, 44.595898, 36.962608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050080, -0.136816, -0.989330,
		0.167358, 0.977716, -0.126738,
		0.984623, -0.159226, 0.071861,
		46.057053, 44.548130, 36.984165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668911, 45.267159, 36.646374>,  <45.367817, 44.659588, 36.933865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668911, 45.267159, 36.646374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947517, 44.980148, 36.648102>,  <46.114681, 44.807941, 36.649139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947517, 44.980148, 36.648102>,  <45.668911, 45.267159, 36.646374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947517, 44.980148, 36.648102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163471, 0.152814, -0.974641,
		0.698674, 0.679558, 0.223733,
		0.696514, -0.717530, 0.004321,
		46.156471, 44.764889, 36.649399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132038, 45.426884, 36.137066>,  <45.668911, 45.267159, 36.646374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132038, 45.426884, 36.137066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231461, 45.040878, 36.170475>,  <46.291115, 44.809277, 36.190521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231461, 45.040878, 36.170475>,  <46.132038, 45.426884, 36.137066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231461, 45.040878, 36.170475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005779, -0.084746, -0.996386,
		0.968601, 0.248140, -0.015487,
		0.248555, -0.965010, 0.083519,
		46.306026, 44.751373, 36.195530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619686, 45.195492, 35.720051>,  <46.132038, 45.426884, 36.137066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619686, 45.195492, 35.720051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446541, 44.840168, 35.781422>,  <46.342655, 44.626972, 35.818245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446541, 44.840168, 35.781422>,  <46.619686, 45.195492, 35.720051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.446541, 44.840168, 35.781422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101190, -0.121239, -0.987452,
		0.895764, -0.442953, -0.037408,
		-0.432860, -0.888309, 0.153424,
		46.316685, 44.573677, 35.827450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810341, 44.774967, 35.174004>,  <46.619686, 45.195492, 35.720051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810341, 44.774967, 35.174004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496399, 44.569992, 35.313374>,  <46.308033, 44.447006, 35.396996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496399, 44.569992, 35.313374>,  <46.810341, 44.774967, 35.174004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496399, 44.569992, 35.313374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163459, -0.371158, -0.914069,
		0.597729, -0.774368, 0.207543,
		-0.784857, -0.512441, 0.348429,
		46.260941, 44.416260, 35.417904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845650, 44.108017, 34.946495>,  <46.810341, 44.774967, 35.174004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845650, 44.108017, 34.946495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455994, 44.129414, 35.034302>,  <46.222198, 44.142250, 35.086987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455994, 44.129414, 35.034302>,  <46.845650, 44.108017, 34.946495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455994, 44.129414, 35.034302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225939, -0.226196, -0.947516,
		-0.001029, -0.972612, 0.232432,
		-0.974141, 0.053491, 0.219518,
		46.163750, 44.145462, 35.100159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508202, 43.551365, 34.657440>,  <46.845650, 44.108017, 34.946495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.508202, 43.551365, 34.657440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221176, 43.827538, 34.694115>,  <46.048962, 43.993240, 34.716122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221176, 43.827538, 34.694115>,  <46.508202, 43.551365, 34.657440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221176, 43.827538, 34.694115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266492, -0.150539, -0.952008,
		-0.643490, -0.707565, 0.292015,
		-0.717567, 0.690428, 0.091690,
		46.005905, 44.034664, 34.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983643, 43.251129, 34.338543>,  <46.508202, 43.551365, 34.657440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983643, 43.251129, 34.338543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896111, 43.641319, 34.348099>,  <45.843594, 43.875431, 34.353832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896111, 43.641319, 34.348099>,  <45.983643, 43.251129, 34.338543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896111, 43.641319, 34.348099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399244, -0.067169, -0.914381,
		-0.890348, -0.209628, 0.404150,
		-0.218827, 0.975471, 0.023889,
		45.830463, 43.933960, 34.355267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295555, 43.164253, 34.158268>,  <45.983643, 43.251129, 34.338543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295555, 43.164253, 34.158268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407997, 43.545185, 34.110859>,  <45.475464, 43.773743, 34.082413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407997, 43.545185, 34.110859>,  <45.295555, 43.164253, 34.158268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407997, 43.545185, 34.110859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314547, -0.025252, -0.948906,
		-0.906664, 0.304025, 0.292454,
		0.281106, 0.952330, -0.118525,
		45.492329, 43.830883, 34.075302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<45.359837, 44.239388, 45.862152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.512024, 44.585114, 45.993729>,  <45.603336, 44.792549, 46.072674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.512024, 44.585114, 45.993729>,  <45.359837, 44.239388, 45.862152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512024, 44.585114, 45.993729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041383, 0.339424, -0.939723,
		-0.923867, 0.371150, 0.093373,
		0.380471, 0.864314, 0.328941,
		45.626163, 44.844406, 46.092411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939171, 44.801010, 45.731209>,  <45.359837, 44.239388, 45.862152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939171, 44.801010, 45.731209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.312859, 44.940899, 45.759293>,  <45.537071, 45.024830, 45.776142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.312859, 44.940899, 45.759293>,  <44.939171, 44.801010, 45.731209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312859, 44.940899, 45.759293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053022, 0.330799, -0.942211,
		-0.352735, 0.876509, 0.327582,
		0.934220, 0.349720, 0.070210,
		45.593124, 45.045815, 45.780357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888435, 45.540974, 45.408016>,  <44.939171, 44.801010, 45.731209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888435, 45.540974, 45.408016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.254616, 45.380043, 45.404503>,  <45.474323, 45.283485, 45.402393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.254616, 45.380043, 45.404503>,  <44.888435, 45.540974, 45.408016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254616, 45.380043, 45.404503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058097, 0.153731, -0.986403,
		0.398205, 0.902497, 0.164108,
		0.915455, -0.402325, -0.008784,
		45.529251, 45.259346, 45.401867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421757, 45.776855, 44.983082>,  <44.888435, 45.540974, 45.408016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421757, 45.776855, 44.983082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.060822, 45.606312, 44.957764>,  <43.844261, 45.503986, 44.942574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.060822, 45.606312, 44.957764>,  <44.421757, 45.776855, 44.983082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060822, 45.606312, 44.957764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006429, -0.133520, 0.991025,
		-0.430982, 0.894646, 0.117739,
		-0.902338, -0.426357, -0.063297,
		43.790119, 45.478405, 44.938774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071098, 46.011192, 45.557827>,  <44.421757, 45.776855, 44.983082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071098, 46.011192, 45.557827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.846634, 45.698990, 45.447617>,  <43.711956, 45.511669, 45.381489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.846634, 45.698990, 45.447617>,  <44.071098, 46.011192, 45.557827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846634, 45.698990, 45.447617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136618, -0.240971, 0.960868,
		-0.816354, 0.576844, 0.028594,
		-0.561161, -0.780502, -0.275525,
		43.678284, 45.464840, 45.364960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435093, 46.077023, 45.834099>,  <44.071098, 46.011192, 45.557827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435093, 46.077023, 45.834099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.482361, 45.685795, 45.765495>,  <43.510723, 45.451057, 45.724335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.482361, 45.685795, 45.765495>,  <43.435093, 46.077023, 45.834099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482361, 45.685795, 45.765495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215787, -0.193883, 0.956998,
		-0.969263, -0.076083, -0.233966,
		0.118174, -0.978070, -0.171506,
		43.517815, 45.392372, 45.714043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899277, 45.913181, 46.276669>,  <43.435093, 46.077023, 45.834099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899277, 45.913181, 46.276669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.094200, 45.574909, 46.189621>,  <43.211155, 45.371948, 46.137394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.094200, 45.574909, 46.189621>,  <42.899277, 45.913181, 46.276669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094200, 45.574909, 46.189621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169772, -0.336210, 0.926359,
		-0.856565, -0.414480, -0.307412,
		0.487313, -0.845677, -0.217619,
		43.240395, 45.321205, 46.124336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431644, 45.342293, 46.327824>,  <42.899277, 45.913181, 46.276669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431644, 45.342293, 46.327824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.815994, 45.250942, 46.390511>,  <43.046604, 45.196133, 46.428123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.815994, 45.250942, 46.390511>,  <42.431644, 45.342293, 46.327824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815994, 45.250942, 46.390511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198952, -0.175455, 0.964175,
		-0.192710, -0.957630, -0.214028,
		0.960875, -0.228388, 0.156710,
		43.104259, 45.182430, 46.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388828, 44.782455, 46.785206>,  <42.431644, 45.342293, 46.327824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388828, 44.782455, 46.785206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.765221, 44.915398, 46.810783>,  <42.991058, 44.995163, 46.826130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.765221, 44.915398, 46.810783>,  <42.388828, 44.782455, 46.785206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765221, 44.915398, 46.810783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034988, -0.092406, 0.995106,
		0.336635, -0.938618, -0.075324,
		0.940985, 0.332352, 0.063947,
		43.047516, 45.015102, 46.829967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720959, 44.300842, 47.261684>,  <42.388828, 44.782455, 46.785206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720959, 44.300842, 47.261684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.978729, 44.606709, 47.262020>,  <43.133392, 44.790230, 47.262222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.978729, 44.606709, 47.262020>,  <42.720959, 44.300842, 47.261684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978729, 44.606709, 47.262020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321160, -0.271653, 0.907227,
		0.693953, -0.584373, -0.420640,
		0.644427, 0.764665, 0.000837,
		43.172058, 44.836109, 47.262272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439625, 44.033463, 47.508709>,  <42.720959, 44.300842, 47.261684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439625, 44.033463, 47.508709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.420074, 44.428223, 47.570198>,  <43.408344, 44.665081, 47.607094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.420074, 44.428223, 47.570198>,  <43.439625, 44.033463, 47.508709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420074, 44.428223, 47.570198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262180, -0.135838, 0.955410,
		0.963781, 0.086996, -0.252108,
		-0.048871, 0.986904, 0.153727,
		43.405415, 44.724293, 47.616318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982414, 44.198772, 47.793713>,  <43.439625, 44.033463, 47.508709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982414, 44.198772, 47.793713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.752945, 44.518154, 47.866779>,  <43.615265, 44.709785, 47.910622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.752945, 44.518154, 47.866779>,  <43.982414, 44.198772, 47.793713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752945, 44.518154, 47.866779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322909, 0.015508, 0.946303,
		0.752748, 0.601853, -0.266725,
		-0.573672, 0.798456, 0.182670,
		43.580845, 44.757690, 47.921581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407200, 44.653721, 48.220013>,  <43.982414, 44.198772, 47.793713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407200, 44.653721, 48.220013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.028038, 44.766541, 48.279228>,  <43.800541, 44.834232, 48.314758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.028038, 44.766541, 48.279228>,  <44.407200, 44.653721, 48.220013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028038, 44.766541, 48.279228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116876, -0.124385, 0.985327,
		0.296327, 0.951302, 0.084940,
		-0.947908, 0.282052, 0.148043,
		43.743664, 44.851154, 48.323643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469681, 45.095936, 48.735558>,  <44.407200, 44.653721, 48.220013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469681, 45.095936, 48.735558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.084343, 44.989246, 48.724117>,  <43.853138, 44.925232, 48.717251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.084343, 44.989246, 48.724117>,  <44.469681, 45.095936, 48.735558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084343, 44.989246, 48.724117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014367, -0.157774, 0.987371,
		-0.267869, 0.950771, 0.155824,
		-0.963348, -0.266725, -0.028603,
		43.795338, 44.909229, 48.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173290, 45.477497, 49.240761>,  <44.469681, 45.095936, 48.735558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173290, 45.477497, 49.240761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.903229, 45.184696, 49.204235>,  <43.741192, 45.009018, 49.182320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.903229, 45.184696, 49.204235>,  <44.173290, 45.477497, 49.240761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903229, 45.184696, 49.204235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129846, -0.003928, 0.991526,
		-0.726157, 0.681293, -0.092395,
		-0.675157, -0.732001, -0.091316,
		43.700684, 44.965096, 49.176842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703968, 45.715202, 49.657024>,  <44.173290, 45.477497, 49.240761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703968, 45.715202, 49.657024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.626549, 45.325974, 49.606937>,  <43.580097, 45.092438, 49.576885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.626549, 45.325974, 49.606937>,  <43.703968, 45.715202, 49.657024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626549, 45.325974, 49.606937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145301, -0.097791, 0.984543,
		-0.970272, 0.208746, -0.122461,
		-0.193544, -0.973068, -0.125215,
		43.568485, 45.034054, 49.569374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042599, 45.559349, 49.893852>,  <43.703968, 45.715202, 49.657024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042599, 45.559349, 49.893852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.235840, 45.209217, 49.885799>,  <43.351784, 44.999138, 49.880966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.235840, 45.209217, 49.885799>,  <43.042599, 45.559349, 49.893852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235840, 45.209217, 49.885799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183905, -0.123928, 0.975100,
		-0.856032, -0.467371, -0.220848,
		0.483102, -0.875332, -0.020135,
		43.380772, 44.946617, 49.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599789, 45.113781, 50.306900>,  <43.042599, 45.559349, 49.893852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599789, 45.113781, 50.306900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955032, 44.930813, 50.288914>,  <43.168179, 44.821033, 50.278122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955032, 44.930813, 50.288914>,  <42.599789, 45.113781, 50.306900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955032, 44.930813, 50.288914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025647, -0.147009, 0.988803,
		-0.458908, -0.877016, -0.142292,
		0.888114, -0.457419, -0.044970,
		43.221466, 44.793587, 50.275421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517761, 44.491459, 50.747192>,  <42.599789, 45.113781, 50.306900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517761, 44.491459, 50.747192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.911293, 44.538830, 50.693451>,  <43.147411, 44.567253, 50.661205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.911293, 44.538830, 50.693451>,  <42.517761, 44.491459, 50.747192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911293, 44.538830, 50.693451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163738, -0.290790, 0.942672,
		0.072574, -0.949429, -0.305480,
		0.983831, 0.118432, -0.134354,
		43.206444, 44.574360, 50.653145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664684, 43.925068, 51.022194>,  <42.517761, 44.491459, 50.747192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664684, 43.925068, 51.022194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.979004, 44.172226, 51.032974>,  <43.167595, 44.320522, 51.039440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.979004, 44.172226, 51.032974>,  <42.664684, 43.925068, 51.022194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979004, 44.172226, 51.032974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196547, -0.290789, 0.936382,
		0.586425, -0.730508, -0.349947,
		0.785795, 0.617899, 0.026947,
		43.214741, 44.357597, 51.041058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183552, 43.641712, 51.410782>,  <42.664684, 43.925068, 51.022194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183552, 43.641712, 51.410782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.302811, 44.023491, 51.415600>,  <43.374367, 44.252556, 51.418491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.302811, 44.023491, 51.415600>,  <43.183552, 43.641712, 51.410782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302811, 44.023491, 51.415600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332216, -0.115587, 0.936094,
		0.894840, -0.275096, -0.351543,
		0.298150, 0.954443, 0.012041,
		43.392254, 44.309822, 51.419212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732475, 43.620888, 51.661091>,  <43.183552, 43.641712, 51.410782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732475, 43.620888, 51.661091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.641129, 44.005836, 51.720001>,  <43.586319, 44.236805, 51.755348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.641129, 44.005836, 51.720001>,  <43.732475, 43.620888, 51.661091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641129, 44.005836, 51.720001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417314, -0.039913, 0.907886,
		0.879601, 0.268791, -0.392496,
		-0.228366, 0.962371, 0.147278,
		43.572620, 44.294548, 51.764183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293381, 44.029884, 52.052250>,  <43.732475, 43.620888, 51.661091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293381, 44.029884, 52.052250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.972816, 44.263939, 52.101818>,  <43.780479, 44.404373, 52.131557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.972816, 44.263939, 52.101818>,  <44.293381, 44.029884, 52.052250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972816, 44.263939, 52.101818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260377, 0.154785, 0.953019,
		0.538467, 0.796024, -0.276403,
		-0.801409, 0.585138, 0.123920,
		43.732395, 44.439480, 52.138992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552940, 44.487926, 52.436275>,  <44.293381, 44.029884, 52.052250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552940, 44.487926, 52.436275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.158623, 44.500614, 52.502243>,  <43.922031, 44.508224, 52.541824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.158623, 44.500614, 52.502243>,  <44.552940, 44.487926, 52.436275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158623, 44.500614, 52.502243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167143, 0.281176, 0.944989,
		-0.016402, 0.959132, -0.282483,
		-0.985796, 0.031716, 0.164924,
		43.862885, 44.510128, 52.551720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519810, 44.961056, 52.961716>,  <44.552940, 44.487926, 52.436275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519810, 44.961056, 52.961716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.156685, 44.794212, 52.944244>,  <43.938812, 44.694107, 52.933762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.156685, 44.794212, 52.944244>,  <44.519810, 44.961056, 52.961716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156685, 44.794212, 52.944244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212526, 0.367739, 0.905318,
		-0.361550, 0.831138, -0.422482,
		-0.907807, -0.417106, -0.043683,
		43.884342, 44.669079, 52.931141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044273, 45.439175, 53.185116>,  <44.519810, 44.961056, 52.961716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044273, 45.439175, 53.185116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.817184, 45.112160, 53.223755>,  <43.680931, 44.915951, 53.246937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.817184, 45.112160, 53.223755>,  <44.044273, 45.439175, 53.185116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817184, 45.112160, 53.223755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230567, 0.270550, 0.934688,
		-0.790272, 0.508372, -0.342094,
		-0.567723, -0.817533, 0.096594,
		43.646866, 44.866901, 53.252731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479488, 45.577282, 53.590698>,  <44.044273, 45.439175, 53.185116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479488, 45.577282, 53.590698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.483017, 45.179512, 53.632721>,  <43.485134, 44.940849, 53.657936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.483017, 45.179512, 53.632721>,  <43.479488, 45.577282, 53.590698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483017, 45.179512, 53.632721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010142, 0.104969, 0.994424,
		-0.999910, -0.009835, -0.009160,
		0.008819, -0.994427, 0.105059,
		43.485664, 44.881184, 53.664238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876926, 45.486397, 54.004745>,  <43.479488, 45.577282, 53.590698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876926, 45.486397, 54.004745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.126976, 45.175495, 54.033302>,  <43.277004, 44.988953, 54.050438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.126976, 45.175495, 54.033302>,  <42.876926, 45.486397, 54.004745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126976, 45.175495, 54.033302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069519, 0.035659, 0.996943,
		-0.777426, -0.628173, -0.031743,
		0.625120, -0.777256, 0.071393,
		43.314510, 44.942318, 54.054722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607933, 45.089344, 54.585236>,  <42.876926, 45.486397, 54.004745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607933, 45.089344, 54.585236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.983376, 44.975464, 54.507301>,  <43.208641, 44.907135, 54.460541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.983376, 44.975464, 54.507301>,  <42.607933, 45.089344, 54.585236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983376, 44.975464, 54.507301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166056, -0.122186, 0.978517,
		-0.302393, -0.950797, -0.067408,
		0.938607, -0.284704, -0.194834,
		43.264957, 44.890053, 54.448853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646809, 44.546085, 54.939964>,  <42.607933, 45.089344, 54.585236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646809, 44.546085, 54.939964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.028679, 44.660446, 54.906853>,  <43.257801, 44.729061, 54.886986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.028679, 44.660446, 54.906853>,  <42.646809, 44.546085, 54.939964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028679, 44.660446, 54.906853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123415, -0.127167, 0.984174,
		0.270847, -0.949785, -0.156688,
		0.954678, 0.285898, -0.082774,
		43.315083, 44.746216, 54.882019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970345, 44.165882, 55.432167>,  <42.646809, 44.546085, 54.939964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970345, 44.165882, 55.432167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.262192, 44.424282, 55.342422>,  <43.437302, 44.579323, 55.288578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.262192, 44.424282, 55.342422>,  <42.970345, 44.165882, 55.432167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262192, 44.424282, 55.342422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210579, 0.099899, 0.972459,
		0.650623, -0.756771, -0.063146,
		0.729621, 0.646001, -0.224357,
		43.481079, 44.618084, 55.275116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708843, 43.964165, 55.698917>,  <42.970345, 44.165882, 55.432167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708843, 43.964165, 55.698917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.716049, 44.363464, 55.676361>,  <43.720375, 44.603043, 55.662827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.716049, 44.363464, 55.676361>,  <43.708843, 43.964165, 55.698917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716049, 44.363464, 55.676361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294449, 0.048602, 0.954431,
		0.955497, -0.033801, -0.293057,
		0.018017, 0.998246, -0.056392,
		43.721455, 44.662937, 55.659443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313305, 44.244427, 56.211563>,  <43.708843, 43.964165, 55.698917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313305, 44.244427, 56.211563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066147, 44.554626, 56.159698>,  <43.917850, 44.740746, 56.128582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066147, 44.554626, 56.159698>,  <44.313305, 44.244427, 56.211563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066147, 44.554626, 56.159698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183537, 0.302609, 0.935276,
		0.764538, 0.554106, -0.329313,
		-0.617896, 0.775496, -0.129657,
		43.880779, 44.787273, 56.120800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624878, 44.787251, 56.524059>,  <44.313305, 44.244427, 56.211563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624878, 44.787251, 56.524059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.261345, 44.952732, 56.502602>,  <44.043224, 45.052021, 56.489727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.261345, 44.952732, 56.502602>,  <44.624878, 44.787251, 56.524059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261345, 44.952732, 56.502602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149663, 0.443369, 0.883756,
		0.389396, 0.795156, -0.464863,
		-0.908830, 0.413704, -0.053641,
		43.988697, 45.076843, 56.486511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580849, 45.565445, 56.454132>,  <44.624878, 44.787251, 56.524059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580849, 45.565445, 56.454132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.231522, 45.476608, 56.627563>,  <44.021927, 45.423306, 56.731621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.231522, 45.476608, 56.627563>,  <44.580849, 45.565445, 56.454132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231522, 45.476608, 56.627563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217128, 0.619272, 0.754558,
		-0.436084, 0.753112, -0.492599,
		-0.873319, -0.222093, 0.433576,
		43.969524, 45.409981, 56.757637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
