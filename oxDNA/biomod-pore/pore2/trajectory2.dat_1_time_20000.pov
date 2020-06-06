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
	<22.448172, 17.694345, -2.001292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834179, 17.754623, -1.915475>,  <23.065784, 17.790791, -1.863984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834179, 17.754623, -1.915475>,  <22.448172, 17.694345, -2.001292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834179, 17.754623, -1.915475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237746, 0.158028, 0.958386,
		0.110520, -0.975868, 0.188327,
		0.965019, 0.150695, 0.214544,
		23.123684, 17.799831, -1.851112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630745, 17.338991, -1.319759>,  <22.448172, 17.694345, -2.001292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630745, 17.338991, -1.319759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825142, 17.685059, -1.369219>,  <22.941780, 17.892700, -1.398896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825142, 17.685059, -1.369219>,  <22.630745, 17.338991, -1.319759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825142, 17.685059, -1.369219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494040, 0.388672, 0.777726,
		0.720925, -0.316881, 0.616322,
		0.485994, 0.865170, -0.123652,
		22.970940, 17.944611, -1.406315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190348, 17.596668, -0.722518>,  <22.630745, 17.338991, -1.319759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190348, 17.596668, -0.722518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.974258, 17.878685, -0.906289>,  <22.844604, 18.047895, -1.016551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.974258, 17.878685, -0.906289>,  <23.190348, 17.596668, -0.722518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.974258, 17.878685, -0.906289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529290, 0.139759, 0.836851,
		0.654224, 0.695258, 0.297670,
		-0.540225, 0.705042, -0.459427,
		22.812191, 18.090199, -1.044117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.109194, 18.165409, -0.265689>,  <23.190348, 17.596668, -0.722518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.109194, 18.165409, -0.265689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.806755, 18.131332, -0.525245>,  <22.625292, 18.110886, -0.680979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.806755, 18.131332, -0.525245>,  <23.109194, 18.165409, -0.265689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.806755, 18.131332, -0.525245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654275, 0.121937, 0.746361,
		0.015539, 0.988875, -0.147936,
		-0.756097, -0.085193, -0.648891,
		22.579926, 18.105774, -0.719913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.583935, 18.789473, -0.218538>,  <23.109194, 18.165409, -0.265689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.583935, 18.789473, -0.218538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416237, 18.435352, -0.299015>,  <22.315619, 18.222881, -0.347302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.416237, 18.435352, -0.299015>,  <22.583935, 18.789473, -0.218538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.416237, 18.435352, -0.299015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512949, 0.048138, 0.857068,
		-0.749076, 0.462525, -0.474295,
		-0.419247, -0.885299, -0.201193,
		22.290462, 18.169764, -0.359373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821642, 19.453354, 0.014713>,  <22.583935, 18.789473, -0.218538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821642, 19.453354, 0.014713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.211716, 19.425461, 0.098758>,  <23.445761, 19.408724, 0.149186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.211716, 19.425461, 0.098758>,  <22.821642, 19.453354, 0.014713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.211716, 19.425461, 0.098758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133919, 0.569935, 0.810704,
		-0.176285, -0.818726, 0.546454,
		0.975187, -0.069734, 0.210114,
		23.504272, 19.404541, 0.161792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.928276, 19.548410, 0.742682>,  <22.821642, 19.453354, 0.014713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.928276, 19.548410, 0.742682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.315289, 19.581566, 0.647170>,  <23.547495, 19.601460, 0.589863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.315289, 19.581566, 0.647170>,  <22.928276, 19.548410, 0.742682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.315289, 19.581566, 0.647170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222557, 0.168422, 0.960262,
		0.119806, -0.982224, 0.144507,
		0.967530, 0.082884, -0.238779,
		23.605547, 19.606432, 0.575536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.389225, 19.063320, 1.233084>,  <22.928276, 19.548410, 0.742682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.389225, 19.063320, 1.233084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.578522, 19.386200, 1.091963>,  <23.692101, 19.579927, 1.007290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.578522, 19.386200, 1.091963>,  <23.389225, 19.063320, 1.233084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.578522, 19.386200, 1.091963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138412, 0.327381, 0.934700,
		0.869990, -0.491172, 0.043205,
		0.473243, 0.807200, -0.352803,
		23.720495, 19.628359, 0.986122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.064405, 19.170954, 1.593965>,  <23.389225, 19.063320, 1.233084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.064405, 19.170954, 1.593965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.909107, 19.523853, 1.487459>,  <23.815928, 19.735594, 1.423555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.909107, 19.523853, 1.487459>,  <24.064405, 19.170954, 1.593965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.909107, 19.523853, 1.487459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004056, 0.287293, 0.957834,
		0.921546, 0.372956, -0.107962,
		-0.388247, 0.882251, -0.266266,
		23.792633, 19.788528, 1.407579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617292, 19.610579, 1.683249>,  <24.064405, 19.170954, 1.593965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617292, 19.610579, 1.683249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247540, 19.754421, 1.734166>,  <24.025688, 19.840727, 1.764716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247540, 19.754421, 1.734166>,  <24.617292, 19.610579, 1.683249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247540, 19.754421, 1.734166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178027, 0.111552, 0.977682,
		0.337381, 0.926412, -0.167136,
		-0.924381, 0.359607, 0.127291,
		23.970224, 19.862303, 1.772353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666479, 20.235180, 1.861931>,  <24.617292, 19.610579, 1.683249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666479, 20.235180, 1.861931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331554, 20.072731, 2.008341>,  <24.130600, 19.975262, 2.096186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331554, 20.072731, 2.008341>,  <24.666479, 20.235180, 1.861931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331554, 20.072731, 2.008341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378893, 0.051594, 0.924001,
		-0.394141, 0.912362, 0.110676,
		-0.837313, -0.406121, 0.366023,
		24.080360, 19.950895, 2.118147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364470, 20.635815, 2.446229>,  <24.666479, 20.235180, 1.861931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364470, 20.635815, 2.446229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293591, 20.243484, 2.478687>,  <24.251062, 20.008087, 2.498162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293591, 20.243484, 2.478687>,  <24.364470, 20.635815, 2.446229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293591, 20.243484, 2.478687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165991, 0.051484, 0.984782,
		-0.970076, 0.187970, 0.153686,
		-0.177197, -0.980825, 0.081145,
		24.240431, 19.949238, 2.503031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.949738, 20.647850, 3.056138>,  <24.364470, 20.635815, 2.446229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.949738, 20.647850, 3.056138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.157761, 20.319977, 2.960089>,  <24.282574, 20.123253, 2.902461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.157761, 20.319977, 2.960089>,  <23.949738, 20.647850, 3.056138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.157761, 20.319977, 2.960089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446266, 0.021056, 0.894653,
		-0.728277, -0.572428, 0.376747,
		0.520057, -0.819684, -0.240121,
		24.313778, 20.074072, 2.888053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.730249, 20.106213, 3.527040>,  <23.949738, 20.647850, 3.056138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.730249, 20.106213, 3.527040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106613, 20.055267, 3.401519>,  <24.332432, 20.024700, 3.326205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106613, 20.055267, 3.401519>,  <23.730249, 20.106213, 3.527040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106613, 20.055267, 3.401519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328504, 0.117964, 0.937107,
		-0.082334, -0.984816, 0.152832,
		0.940907, -0.127362, -0.313804,
		24.388885, 20.017059, 3.307377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.952770, 19.584843, 3.899107>,  <23.730249, 20.106213, 3.527040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.952770, 19.584843, 3.899107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255810, 19.810390, 3.767596>,  <24.437634, 19.945719, 3.688689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255810, 19.810390, 3.767596>,  <23.952770, 19.584843, 3.899107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255810, 19.810390, 3.767596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252706, 0.211037, 0.944247,
		0.601817, -0.798444, 0.017389,
		0.757598, 0.563870, -0.328778,
		24.483089, 19.979551, 3.668963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.682220, 19.350094, 4.202887>,  <23.952770, 19.584843, 3.899107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.682220, 19.350094, 4.202887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622704, 19.735931, 4.115788>,  <24.586992, 19.967434, 4.063528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622704, 19.735931, 4.115788>,  <24.682220, 19.350094, 4.202887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622704, 19.735931, 4.115788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305883, 0.254297, 0.917480,
		0.940370, 0.069909, -0.332891,
		-0.148794, 0.964596, -0.217749,
		24.578066, 20.025311, 4.050463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271685, 19.736124, 4.451313>,  <24.682220, 19.350094, 4.202887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271685, 19.736124, 4.451313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915161, 19.917057, 4.438877>,  <24.701248, 20.025618, 4.431415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915161, 19.917057, 4.438877>,  <25.271685, 19.736124, 4.451313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915161, 19.917057, 4.438877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079205, 0.222855, 0.971629,
		0.446429, 0.863556, -0.234459,
		-0.891307, 0.452334, -0.031091,
		24.647770, 20.052757, 4.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418451, 20.448521, 4.583287>,  <25.271685, 19.736124, 4.451313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418451, 20.448521, 4.583287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039040, 20.355988, 4.669795>,  <24.811392, 20.300467, 4.721700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039040, 20.355988, 4.669795>,  <25.418451, 20.448521, 4.583287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039040, 20.355988, 4.669795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170889, 0.201057, 0.964558,
		-0.266619, 0.951872, -0.151176,
		-0.948531, -0.231335, 0.216270,
		24.754480, 20.286587, 4.734676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041973, 20.889154, 5.038459>,  <25.418451, 20.448521, 4.583287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041973, 20.889154, 5.038459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917927, 20.526367, 5.152466>,  <24.843500, 20.308695, 5.220870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917927, 20.526367, 5.152466>,  <25.041973, 20.889154, 5.038459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917927, 20.526367, 5.152466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117995, 0.260761, 0.958165,
		-0.943349, 0.330771, 0.026152,
		-0.310114, -0.906970, 0.285017,
		24.824892, 20.254276, 5.237971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286077, 20.873791, 5.361511>,  <25.041973, 20.889154, 5.038459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286077, 20.873791, 5.361511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591217, 20.640396, 5.472944>,  <24.774300, 20.500359, 5.539804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591217, 20.640396, 5.472944>,  <24.286077, 20.873791, 5.361511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591217, 20.640396, 5.472944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000923, 0.431839, 0.901950,
		-0.646578, -0.687793, 0.329966,
		0.762847, -0.583486, 0.278583,
		24.820072, 20.465351, 5.556519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.007090, 20.484194, 6.034721>,  <24.286077, 20.873791, 5.361511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.007090, 20.484194, 6.034721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403805, 20.523262, 6.001695>,  <24.641834, 20.546703, 5.981879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403805, 20.523262, 6.001695>,  <24.007090, 20.484194, 6.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403805, 20.523262, 6.001695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050257, 0.296028, 0.953856,
		0.117603, -0.950173, 0.288689,
		0.991788, 0.097668, -0.082566,
		24.701342, 20.552563, 5.976925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419048, 20.127052, 6.513315>,  <24.007090, 20.484194, 6.034721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419048, 20.127052, 6.513315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567608, 20.481071, 6.401063>,  <24.656744, 20.693483, 6.333712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567608, 20.481071, 6.401063>,  <24.419048, 20.127052, 6.513315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567608, 20.481071, 6.401063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026030, 0.292205, 0.956001,
		0.928109, -0.362362, 0.085486,
		0.371398, 0.885048, -0.280631,
		24.679028, 20.746586, 6.316874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997875, 20.302378, 6.935620>,  <24.419048, 20.127052, 6.513315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997875, 20.302378, 6.935620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860661, 20.659775, 6.819689>,  <24.778332, 20.874212, 6.750130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860661, 20.659775, 6.819689>,  <24.997875, 20.302378, 6.935620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860661, 20.659775, 6.819689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026709, 0.299148, 0.953833,
		0.938942, 0.334940, -0.078754,
		-0.343036, 0.893491, -0.289828,
		24.757750, 20.927822, 6.732740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457539, 20.944590, 7.037308>,  <24.997875, 20.302378, 6.935620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457539, 20.944590, 7.037308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064442, 21.009205, 7.073364>,  <24.828585, 21.047974, 7.094998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064442, 21.009205, 7.073364>,  <25.457539, 20.944590, 7.037308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064442, 21.009205, 7.073364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147663, 0.391514, 0.908247,
		0.111428, 0.905882, -0.408610,
		-0.982741, 0.161540, 0.090140,
		24.769619, 21.057667, 7.100406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459368, 21.689905, 7.198719>,  <25.457539, 20.944590, 7.037308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459368, 21.689905, 7.198719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183731, 21.436222, 7.338965>,  <25.018349, 21.284012, 7.423114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183731, 21.436222, 7.338965>,  <25.459368, 21.689905, 7.198719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183731, 21.436222, 7.338965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199546, 0.299063, 0.933136,
		-0.696660, 0.712979, -0.079528,
		-0.689090, -0.634209, 0.350618,
		24.977003, 21.245958, 7.444151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046036, 22.068008, 7.788168>,  <25.459368, 21.689905, 7.198719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046036, 22.068008, 7.788168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995834, 21.672588, 7.821680>,  <24.965714, 21.435337, 7.841787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995834, 21.672588, 7.821680>,  <25.046036, 22.068008, 7.788168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995834, 21.672588, 7.821680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005114, 0.083802, 0.996469,
		-0.992080, 0.125490, -0.005462,
		-0.125505, -0.988549, 0.083780,
		24.958183, 21.376024, 7.846814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515772, 21.983339, 8.306515>,  <25.046036, 22.068008, 7.788168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515772, 21.983339, 8.306515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745354, 21.655827, 8.311693>,  <24.883102, 21.459318, 8.314800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745354, 21.655827, 8.311693>,  <24.515772, 21.983339, 8.306515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745354, 21.655827, 8.311693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064738, -0.029610, 0.997463,
		-0.816323, -0.573339, -0.070001,
		0.573957, -0.818783, 0.012946,
		24.917542, 21.410192, 8.315577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373016, 21.320398, 8.654804>,  <24.515772, 21.983339, 8.306515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373016, 21.320398, 8.654804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283184, 21.282066, 9.042697>,  <24.229284, 21.259068, 9.275433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283184, 21.282066, 9.042697>,  <24.373016, 21.320398, 8.654804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283184, 21.282066, 9.042697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697361, -0.679277, -0.228629,
		0.680626, -0.727598, 0.085724,
		-0.224581, -0.095831, 0.969732,
		24.215811, 21.253317, 9.333616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337929, 20.634626, 8.910480>,  <24.373016, 21.320398, 8.654804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337929, 20.634626, 8.910480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063084, 20.842888, 9.113180>,  <23.898176, 20.967844, 9.234800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063084, 20.842888, 9.113180>,  <24.337929, 20.634626, 8.910480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063084, 20.842888, 9.113180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709288, -0.631828, -0.312578,
		0.157435, -0.574209, 0.803429,
		-0.687113, 0.520651, 0.506751,
		23.856949, 20.999083, 9.265205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.947088, 19.962473, 8.573323>,  <24.337929, 20.634626, 8.910480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.947088, 19.962473, 8.573323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556114, 19.924835, 8.648975>,  <23.321529, 19.902252, 8.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556114, 19.924835, 8.648975>,  <23.947088, 19.962473, 8.573323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.556114, 19.924835, 8.648975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138973, -0.960711, 0.240252,
		0.159093, 0.261114, 0.952107,
		-0.977433, -0.094095, 0.189130,
		23.262884, 19.896606, 8.705714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.774137, 19.736139, 9.312842>,  <23.947088, 19.962473, 8.573323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.774137, 19.736139, 9.312842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.484783, 19.608093, 9.068143>,  <23.311171, 19.531265, 8.921324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.484783, 19.608093, 9.068143>,  <23.774137, 19.736139, 9.312842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.484783, 19.608093, 9.068143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170500, -0.941406, 0.291006,
		-0.669059, 0.106207, 0.735581,
		-0.723388, -0.320117, -0.611748,
		23.267767, 19.512058, 8.884619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.194519, 19.419643, 9.587667>,  <23.774137, 19.736139, 9.312842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.194519, 19.419643, 9.587667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212887, 19.248543, 9.226575>,  <23.223907, 19.145882, 9.009920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212887, 19.248543, 9.226575>,  <23.194519, 19.419643, 9.587667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212887, 19.248543, 9.226575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157369, -0.889300, 0.429395,
		-0.986472, -0.161779, 0.026479,
		0.045920, -0.427753, -0.902729,
		23.226664, 19.120216, 8.955756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645340, 18.958796, 9.529825>,  <23.194519, 19.419643, 9.587667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645340, 18.958796, 9.529825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992352, 18.881142, 9.346651>,  <23.200558, 18.834549, 9.236747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992352, 18.881142, 9.346651>,  <22.645340, 18.958796, 9.529825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992352, 18.881142, 9.346651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030481, -0.898203, 0.438523,
		-0.496452, -0.394390, -0.773300,
		0.867529, -0.194134, -0.457936,
		23.252609, 18.822901, 9.209270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.626097, 18.392141, 9.149920>,  <22.645340, 18.958796, 9.529825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.626097, 18.392141, 9.149920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.012730, 18.407852, 9.251252>,  <23.244709, 18.417278, 9.312052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.012730, 18.407852, 9.251252>,  <22.626097, 18.392141, 9.149920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.012730, 18.407852, 9.251252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120125, -0.803595, 0.582929,
		0.226471, -0.593880, -0.772022,
		0.966582, 0.039277, 0.253331,
		23.302704, 18.419636, 9.327251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.771887, 17.687925, 9.306737>,  <22.626097, 18.392141, 9.149920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.771887, 17.687925, 9.306737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016518, 17.928909, 9.511876>,  <23.163296, 18.073500, 9.634960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.016518, 17.928909, 9.511876>,  <22.771887, 17.687925, 9.306737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016518, 17.928909, 9.511876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145425, -0.551562, 0.821359,
		0.777704, -0.576906, -0.249711,
		0.611578, 0.602460, 0.512849,
		23.199991, 18.109648, 9.665730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.326672, 17.398594, 9.752316>,  <22.771887, 17.687925, 9.306737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.326672, 17.398594, 9.752316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256302, 17.746227, 9.937244>,  <23.214081, 17.954807, 10.048202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256302, 17.746227, 9.937244>,  <23.326672, 17.398594, 9.752316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256302, 17.746227, 9.937244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072133, -0.479765, 0.874427,
		0.981758, 0.120483, 0.147091,
		-0.175922, 0.869085, 0.462322,
		23.203526, 18.006952, 10.075941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803343, 17.458330, 10.285860>,  <23.326672, 17.398594, 9.752316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803343, 17.458330, 10.285860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.497425, 17.691654, 10.395289>,  <23.313875, 17.831648, 10.460947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.497425, 17.691654, 10.395289>,  <23.803343, 17.458330, 10.285860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497425, 17.691654, 10.395289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002798, -0.421612, 0.906772,
		0.644269, 0.694259, 0.320814,
		-0.764794, 0.583308, 0.273574,
		23.267986, 17.866646, 10.477362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.951591, 17.622326, 11.046494>,  <23.803343, 17.458330, 10.285860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.951591, 17.622326, 11.046494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562672, 17.696434, 10.989485>,  <23.329321, 17.740898, 10.955279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562672, 17.696434, 10.989485>,  <23.951591, 17.622326, 11.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.562672, 17.696434, 10.989485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189837, -0.270131, 0.943923,
		0.136379, 0.944831, 0.297818,
		-0.972297, 0.185269, -0.142524,
		23.270983, 17.752014, 10.946728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.809114, 17.966856, 11.577906>,  <23.951591, 17.622326, 11.046494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.809114, 17.966856, 11.577906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.458389, 17.834412, 11.438443>,  <23.247953, 17.754944, 11.354766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.458389, 17.834412, 11.438443>,  <23.809114, 17.966856, 11.577906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.458389, 17.834412, 11.438443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312905, -0.157636, 0.936612,
		-0.365085, 0.930331, 0.034610,
		-0.876814, -0.331113, -0.348656,
		23.195345, 17.735077, 11.333846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285549, 18.344440, 11.877744>,  <23.809114, 17.966856, 11.577906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285549, 18.344440, 11.877744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088226, 18.020000, 11.752035>,  <22.969833, 17.825336, 11.676610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088226, 18.020000, 11.752035>,  <23.285549, 18.344440, 11.877744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088226, 18.020000, 11.752035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478022, -0.049067, 0.876977,
		-0.726736, 0.582847, -0.363518,
		-0.493306, -0.811099, -0.314272,
		22.940235, 17.776670, 11.657754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527584, 18.394245, 12.087338>,  <23.285549, 18.344440, 11.877744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527584, 18.394245, 12.087338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580593, 18.003101, 12.022553>,  <22.612398, 17.768415, 11.983683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580593, 18.003101, 12.022553>,  <22.527584, 18.394245, 12.087338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580593, 18.003101, 12.022553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489351, -0.206649, 0.847250,
		-0.861959, -0.033025, -0.505901,
		0.132524, -0.977858, -0.161962,
		22.620350, 17.709743, 11.973965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802008, 18.060728, 12.254884>,  <22.527584, 18.394245, 12.087338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802008, 18.060728, 12.254884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057121, 17.752693, 12.260543>,  <22.210190, 17.567873, 12.263938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.057121, 17.752693, 12.260543>,  <21.802008, 18.060728, 12.254884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057121, 17.752693, 12.260543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289710, -0.222837, 0.930812,
		-0.713653, -0.597756, -0.365224,
		0.637784, -0.770086, 0.014147,
		22.248457, 17.521667, 12.264787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394306, 17.476040, 12.425692>,  <21.802008, 18.060728, 12.254884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394306, 17.476040, 12.425692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776760, 17.383965, 12.498157>,  <22.006233, 17.328720, 12.541636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776760, 17.383965, 12.498157>,  <21.394306, 17.476040, 12.425692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.776760, 17.383965, 12.498157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249550, -0.316222, 0.915275,
		-0.153396, -0.920336, -0.359794,
		0.956135, -0.230186, 0.181163,
		22.063601, 17.314909, 12.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320379, 16.835915, 12.756069>,  <21.394306, 17.476040, 12.425692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320379, 16.835915, 12.756069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.674767, 16.992764, 12.855105>,  <21.887400, 17.086872, 12.914527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.674767, 16.992764, 12.855105>,  <21.320379, 16.835915, 12.756069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674767, 16.992764, 12.855105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193269, -0.173115, 0.965753,
		0.421554, -0.903478, -0.077590,
		0.885968, 0.392121, 0.247591,
		21.940557, 17.110399, 12.929382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565397, 16.344629, 13.323707>,  <21.320379, 16.835915, 12.756069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565397, 16.344629, 13.323707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768414, 16.687996, 13.353440>,  <21.890223, 16.894016, 13.371281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768414, 16.687996, 13.353440>,  <21.565397, 16.344629, 13.323707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.768414, 16.687996, 13.353440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195080, 0.030451, 0.980314,
		0.839253, -0.512051, 0.182915,
		0.507541, 0.858415, 0.074335,
		21.920675, 16.945520, 13.375741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.142452, 16.214386, 13.708593>,  <21.565397, 16.344629, 13.323707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.142452, 16.214386, 13.708593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074959, 16.606743, 13.747333>,  <22.034462, 16.842157, 13.770576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074959, 16.606743, 13.747333>,  <22.142452, 16.214386, 13.708593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.074959, 16.606743, 13.747333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068303, -0.109657, 0.991620,
		0.983292, 0.160704, 0.085501,
		-0.168733, 0.980892, 0.096848,
		22.024340, 16.901011, 13.776387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.441696, 16.363033, 14.382575>,  <22.142452, 16.214386, 13.708593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.441696, 16.363033, 14.382575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.224678, 16.689362, 14.302489>,  <22.094467, 16.885159, 14.254438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.224678, 16.689362, 14.302489>,  <22.441696, 16.363033, 14.382575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224678, 16.689362, 14.302489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139980, 0.147207, 0.979151,
		0.828282, 0.559259, 0.034333,
		-0.542544, 0.815819, -0.200214,
		22.061914, 16.934107, 14.242425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676407, 16.744274, 14.795337>,  <22.441696, 16.363033, 14.382575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676407, 16.744274, 14.795337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.314857, 16.903103, 14.731648>,  <22.097929, 16.998400, 14.693436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.314857, 16.903103, 14.731648>,  <22.676407, 16.744274, 14.795337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.314857, 16.903103, 14.731648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115958, 0.130850, 0.984597,
		0.411790, 0.908412, -0.072228,
		-0.903871, 0.397072, -0.159221,
		22.043695, 17.022224, 14.683882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.584295, 17.417799, 15.068596>,  <22.676407, 16.744274, 14.795337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.584295, 17.417799, 15.068596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210289, 17.276306, 15.058675>,  <21.985886, 17.191410, 15.052722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.210289, 17.276306, 15.058675>,  <22.584295, 17.417799, 15.068596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210289, 17.276306, 15.058675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088165, 0.164159, 0.982486,
		-0.343466, 0.920828, -0.184678,
		-0.935018, -0.353733, -0.024802,
		21.929783, 17.170187, 15.051234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.340500, 17.918753, 15.505581>,  <22.584295, 17.417799, 15.068596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.340500, 17.918753, 15.505581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.050766, 17.644875, 15.473243>,  <21.876926, 17.480549, 15.453840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.050766, 17.644875, 15.473243>,  <22.340500, 17.918753, 15.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.050766, 17.644875, 15.473243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317064, 0.226683, 0.920915,
		-0.612218, 0.692683, -0.381285,
		-0.724333, -0.684693, -0.080845,
		21.833466, 17.439466, 15.448989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.668736, 18.357185, 15.608872>,  <22.340500, 17.918753, 15.505581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.668736, 18.357185, 15.608872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571373, 17.977158, 15.686975>,  <21.512955, 17.749142, 15.733836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571373, 17.977158, 15.686975>,  <21.668736, 18.357185, 15.608872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571373, 17.977158, 15.686975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420190, 0.284728, 0.861609,
		-0.874182, 0.127678, -0.468514,
		-0.243407, -0.950068, 0.195255,
		21.498350, 17.692137, 15.745551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979389, 18.524664, 15.795796>,  <21.668736, 18.357185, 15.608872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.979389, 18.524664, 15.795796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.116016, 18.170677, 15.922395>,  <21.197992, 17.958286, 15.998354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.116016, 18.170677, 15.922395>,  <20.979389, 18.524664, 15.795796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116016, 18.170677, 15.922395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488908, 0.120297, 0.864001,
		-0.802684, -0.449851, -0.391577,
		0.341567, -0.884965, 0.316496,
		21.218487, 17.905188, 16.017344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438980, 18.184832, 16.282022>,  <20.979389, 18.524664, 15.795796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438980, 18.184832, 16.282022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770382, 17.975956, 16.362915>,  <20.969223, 17.850632, 16.411449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770382, 17.975956, 16.362915>,  <20.438980, 18.184832, 16.282022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770382, 17.975956, 16.362915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229209, 0.013265, 0.973287,
		-0.510920, -0.852728, -0.108700,
		0.828507, -0.522187, 0.202230,
		21.018934, 17.819300, 16.423584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205910, 17.629381, 16.811216>,  <20.438980, 18.184832, 16.282022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205910, 17.629381, 16.811216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.603100, 17.664841, 16.842556>,  <20.841413, 17.686117, 16.861361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.603100, 17.664841, 16.842556>,  <20.205910, 17.629381, 16.811216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.603100, 17.664841, 16.842556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083281, 0.053349, 0.995097,
		0.084042, -0.994633, 0.060358,
		0.992976, 0.088656, 0.078350,
		20.900993, 17.691435, 16.866060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236795, 17.289875, 17.440353>,  <20.205910, 17.629381, 16.811216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236795, 17.289875, 17.440353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.592117, 17.463802, 17.381229>,  <20.805311, 17.568159, 17.345755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.592117, 17.463802, 17.381229>,  <20.236795, 17.289875, 17.440353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.592117, 17.463802, 17.381229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043838, 0.240102, 0.969757,
		0.457158, -0.867919, 0.194222,
		0.888304, 0.434818, -0.147813,
		20.858608, 17.594248, 17.336885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694897, 16.965603, 17.881491>,  <20.236795, 17.289875, 17.440353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694897, 16.965603, 17.881491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.844456, 17.324062, 17.785891>,  <20.934191, 17.539137, 17.728531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.844456, 17.324062, 17.785891>,  <20.694897, 16.965603, 17.881491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.844456, 17.324062, 17.785891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226912, 0.161470, 0.960436,
		0.899284, -0.413337, -0.142973,
		0.373898, 0.896147, -0.238999,
		20.956625, 17.592907, 17.714191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260740, 17.082048, 18.408556>,  <20.694897, 16.965603, 17.881491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260740, 17.082048, 18.408556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168831, 17.434963, 18.244228>,  <21.113686, 17.646713, 18.145632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168831, 17.434963, 18.244228>,  <21.260740, 17.082048, 18.408556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168831, 17.434963, 18.244228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206075, 0.456647, 0.865452,
		0.951177, 0.114199, -0.286743,
		-0.229774, 0.882288, -0.410819,
		21.099899, 17.699650, 18.120983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758139, 17.601799, 18.474442>,  <21.260740, 17.082048, 18.408556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758139, 17.601799, 18.474442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415932, 17.808907, 18.473185>,  <21.210608, 17.933170, 18.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415932, 17.808907, 18.473185>,  <21.758139, 17.601799, 18.474442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415932, 17.808907, 18.473185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157357, 0.265777, 0.951105,
		0.493286, 0.813192, -0.308851,
		-0.855516, 0.517767, -0.003142,
		21.159277, 17.964237, 18.472242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925062, 18.168011, 18.957535>,  <21.758139, 17.601799, 18.474442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925062, 18.168011, 18.957535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.533451, 18.200184, 18.882668>,  <21.298485, 18.219488, 18.837748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.533451, 18.200184, 18.882668>,  <21.925062, 18.168011, 18.957535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.533451, 18.200184, 18.882668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140003, 0.401783, 0.904970,
		0.147989, 0.912196, -0.382096,
		-0.979029, 0.080431, -0.187170,
		21.239742, 18.224314, 18.826517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758812, 18.852043, 19.172853>,  <21.925062, 18.168011, 18.957535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758812, 18.852043, 19.172853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425419, 18.631191, 19.181414>,  <21.225382, 18.498680, 19.186550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425419, 18.631191, 19.181414>,  <21.758812, 18.852043, 19.172853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425419, 18.631191, 19.181414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117133, 0.214411, 0.969694,
		-0.539984, 0.805719, -0.243381,
		-0.833485, -0.552127, 0.021402,
		21.175373, 18.465553, 19.187834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.195667, 19.277874, 19.340702>,  <21.758812, 18.852043, 19.172853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.195667, 19.277874, 19.340702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108276, 18.911335, 19.474913>,  <21.055841, 18.691412, 19.555439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108276, 18.911335, 19.474913>,  <21.195667, 19.277874, 19.340702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108276, 18.911335, 19.474913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213579, 0.380400, 0.899822,
		-0.952182, 0.124930, -0.278821,
		-0.218478, -0.916345, 0.335527,
		21.042732, 18.636431, 19.575571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.584366, 19.443270, 19.629368>,  <21.195667, 19.277874, 19.340702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.584366, 19.443270, 19.629368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.702911, 19.084187, 19.759777>,  <20.774038, 18.868736, 19.838022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.702911, 19.084187, 19.759777>,  <20.584366, 19.443270, 19.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.702911, 19.084187, 19.759777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381807, 0.201533, 0.902002,
		-0.875437, -0.391800, -0.283023,
		0.296366, -0.897707, 0.326021,
		20.791821, 18.814875, 19.857584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181946, 19.269964, 20.113342>,  <20.584366, 19.443270, 19.629368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181946, 19.269964, 20.113342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460495, 18.994652, 20.194668>,  <20.627625, 18.829464, 20.243464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460495, 18.994652, 20.194668>,  <20.181946, 19.269964, 20.113342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460495, 18.994652, 20.194668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177396, 0.109424, 0.978037,
		-0.695411, -0.717145, -0.045899,
		0.696372, -0.688280, 0.203313,
		20.669407, 18.788168, 20.255661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941420, 18.892513, 20.563150>,  <20.181946, 19.269964, 20.113342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941420, 18.892513, 20.563150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335587, 18.842796, 20.609632>,  <20.572086, 18.812965, 20.637522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335587, 18.842796, 20.609632>,  <19.941420, 18.892513, 20.563150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.335587, 18.842796, 20.609632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129522, -0.105024, 0.985999,
		-0.110348, -0.986672, -0.119591,
		0.985417, -0.124292, 0.116207,
		20.631212, 18.805508, 20.644495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985382, 18.286884, 20.990416>,  <19.941420, 18.892513, 20.563150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985382, 18.286884, 20.990416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.313812, 18.507355, 21.049799>,  <20.510870, 18.639637, 21.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.313812, 18.507355, 21.049799>,  <19.985382, 18.286884, 20.990416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313812, 18.507355, 21.049799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264175, 0.136362, 0.954786,
		0.506011, -0.823171, 0.257571,
		0.821075, 0.551176, 0.148460,
		20.560135, 18.672707, 21.094337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256323, 17.990923, 21.551516>,  <19.985382, 18.286884, 20.990416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256323, 17.990923, 21.551516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.432083, 18.350063, 21.540300>,  <20.537539, 18.565548, 21.533571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.432083, 18.350063, 21.540300>,  <20.256323, 17.990923, 21.551516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432083, 18.350063, 21.540300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191405, 0.124078, 0.973637,
		0.877662, -0.422450, 0.226373,
		0.439401, 0.897853, -0.028040,
		20.563904, 18.619419, 21.531889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587097, 17.933111, 22.088028>,  <20.256323, 17.990923, 21.551516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587097, 17.933111, 22.088028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617855, 18.324875, 22.013357>,  <20.636311, 18.559933, 21.968555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617855, 18.324875, 22.013357>,  <20.587097, 17.933111, 22.088028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617855, 18.324875, 22.013357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124207, 0.195182, 0.972870,
		0.989272, -0.051622, 0.136658,
		0.076895, 0.979408, -0.186676,
		20.640924, 18.618698, 21.957354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310122, 18.148371, 22.351170>,  <20.587097, 17.933111, 22.088028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310122, 18.148371, 22.351170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009174, 18.411850, 22.354227>,  <20.828606, 18.569937, 22.356062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009174, 18.411850, 22.354227>,  <21.310122, 18.148371, 22.351170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009174, 18.411850, 22.354227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042461, 0.036917, 0.998416,
		0.657372, 0.751501, -0.055744,
		-0.752369, 0.658698, 0.007642,
		20.783464, 18.609459, 22.356520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524298, 18.715271, 22.850922>,  <21.310122, 18.148371, 22.351170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524298, 18.715271, 22.850922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128036, 18.761803, 22.822430>,  <20.890280, 18.789721, 22.805334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128036, 18.761803, 22.822430>,  <21.524298, 18.715271, 22.850922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128036, 18.761803, 22.822430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056661, 0.124078, 0.990653,
		0.124078, 0.985430, -0.116327,
		-0.990653, 0.116327, -0.071231,
		20.830841, 18.796701, 22.801060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358812, 19.226831, 23.344938>,  <21.524298, 18.715271, 22.850922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358812, 19.226831, 23.344938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991699, 19.088863, 23.266241>,  <20.771431, 19.006083, 23.219023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991699, 19.088863, 23.266241>,  <21.358812, 19.226831, 23.344938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991699, 19.088863, 23.266241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257286, 0.139147, 0.956265,
		-0.302457, 0.928262, -0.216449,
		-0.917782, -0.344918, -0.196743,
		20.716364, 18.985388, 23.207218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.935526, 19.727652, 23.606619>,  <21.358812, 19.226831, 23.344938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.935526, 19.727652, 23.606619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738461, 19.380451, 23.581774>,  <20.620222, 19.172131, 23.566866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738461, 19.380451, 23.581774>,  <20.935526, 19.727652, 23.606619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738461, 19.380451, 23.581774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438692, 0.186082, 0.879160,
		-0.751554, 0.460377, -0.472461,
		-0.492662, -0.868001, -0.062113,
		20.590662, 19.120050, 23.563139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234537, 20.021156, 23.775534>,  <20.935526, 19.727652, 23.606619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234537, 20.021156, 23.775534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255882, 19.627388, 23.842543>,  <20.268690, 19.391127, 23.882748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255882, 19.627388, 23.842543>,  <20.234537, 20.021156, 23.775534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255882, 19.627388, 23.842543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410022, 0.131366, 0.902566,
		-0.910513, -0.116853, -0.396625,
		0.053364, -0.984423, 0.167523,
		20.271891, 19.332062, 23.892799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613327, 19.815680, 23.996553>,  <20.234537, 20.021156, 23.775534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613327, 19.815680, 23.996553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.842060, 19.526516, 24.151686>,  <19.979300, 19.353018, 24.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.842060, 19.526516, 24.151686>,  <19.613327, 19.815680, 23.996553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.842060, 19.526516, 24.151686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396291, 0.170523, 0.902151,
		-0.718306, -0.669571, -0.188972,
		0.571830, -0.722908, 0.387833,
		20.013609, 19.309643, 24.268036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.187834, 19.395222, 24.510569>,  <19.613327, 19.815680, 23.996553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.187834, 19.395222, 24.510569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.574173, 19.358150, 24.607353>,  <19.805977, 19.335909, 24.665424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.574173, 19.358150, 24.607353>,  <19.187834, 19.395222, 24.510569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574173, 19.358150, 24.607353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244811, -0.020532, 0.969354,
		-0.084873, -0.995484, -0.042520,
		0.965849, -0.092682, 0.241962,
		19.863928, 19.330347, 24.679941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158119, 18.907207, 25.092510>,  <19.187834, 19.395222, 24.510569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158119, 18.907207, 25.092510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527092, 19.059330, 25.119312>,  <19.748476, 19.150604, 25.135393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.527092, 19.059330, 25.119312>,  <19.158119, 18.907207, 25.092510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527092, 19.059330, 25.119312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034783, -0.090990, 0.995244,
		0.384596, -0.920373, -0.070703,
		0.922430, 0.380308, 0.067008,
		19.803822, 19.173422, 25.139414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507448, 18.534611, 25.581800>,  <19.158119, 18.907207, 25.092510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507448, 18.534611, 25.581800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.717934, 18.874722, 25.577284>,  <19.844225, 19.078789, 25.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.717934, 18.874722, 25.577284>,  <19.507448, 18.534611, 25.581800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717934, 18.874722, 25.577284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111137, -0.055605, 0.992248,
		0.843059, -0.523389, -0.123758,
		0.526214, 0.850277, -0.011289,
		19.875797, 19.129805, 25.573896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138708, 18.349892, 26.035439>,  <19.507448, 18.534611, 25.581800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138708, 18.349892, 26.035439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.133339, 18.746334, 25.982485>,  <20.130117, 18.984200, 25.950712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.133339, 18.746334, 25.982485>,  <20.138708, 18.349892, 26.035439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133339, 18.746334, 25.982485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369229, 0.127954, 0.920488,
		0.929241, -0.036527, -0.367663,
		-0.013422, 0.991107, -0.132386,
		20.129313, 19.043667, 25.942768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772909, 18.630445, 26.429430>,  <20.138708, 18.349892, 26.035439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772909, 18.630445, 26.429430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506069, 18.924458, 26.380924>,  <20.345964, 19.100864, 26.351820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506069, 18.924458, 26.380924>,  <20.772909, 18.630445, 26.429430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506069, 18.924458, 26.380924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264459, 0.385838, 0.883850,
		0.696446, 0.557548, -0.451778,
		-0.667102, 0.735030, -0.121267,
		20.305939, 19.144966, 26.344543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122295, 19.385397, 26.574356>,  <20.772909, 18.630445, 26.429430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122295, 19.385397, 26.574356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.726280, 19.354816, 26.621645>,  <20.488670, 19.336468, 26.650019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.726280, 19.354816, 26.621645>,  <21.122295, 19.385397, 26.574356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726280, 19.354816, 26.621645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074719, 0.426362, 0.901461,
		-0.119324, 0.901316, -0.416403,
		-0.990040, -0.076453, 0.118221,
		20.429268, 19.331881, 26.657112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802353, 20.060534, 26.714418>,  <21.122295, 19.385397, 26.574356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802353, 20.060534, 26.714418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.553692, 19.796246, 26.882702>,  <20.404495, 19.637672, 26.983671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.553692, 19.796246, 26.882702>,  <20.802353, 20.060534, 26.714418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.553692, 19.796246, 26.882702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192543, 0.391725, 0.899710,
		-0.759259, 0.640312, -0.116300,
		-0.621653, -0.660721, 0.420708,
		20.367195, 19.598030, 27.008915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.831808, 20.264090, 27.354862>,  <20.802353, 20.060534, 26.714418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.831808, 20.264090, 27.354862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.590572, 19.949352, 27.407263>,  <20.445831, 19.760509, 27.438704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.590572, 19.949352, 27.407263>,  <20.831808, 20.264090, 27.354862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.590572, 19.949352, 27.407263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118981, 0.251130, 0.960613,
		-0.788749, 0.563750, -0.245073,
		-0.603091, -0.786841, 0.131003,
		20.409645, 19.713301, 27.446564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466345, 20.441317, 27.858253>,  <20.831808, 20.264090, 27.354862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466345, 20.441317, 27.858253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446045, 20.042931, 27.887848>,  <20.433865, 19.803898, 27.905603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446045, 20.042931, 27.887848>,  <20.466345, 20.441317, 27.858253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446045, 20.042931, 27.887848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061681, 0.077064, 0.995116,
		-0.996805, 0.045939, -0.065344,
		-0.050750, -0.995967, 0.073985,
		20.430820, 19.744141, 27.910044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919527, 20.675425, 27.450016>,  <20.466345, 20.441317, 27.858253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919527, 20.675425, 27.450016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.521809, 20.691216, 27.489645>,  <19.283176, 20.700691, 27.513422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.521809, 20.691216, 27.489645>,  <19.919527, 20.675425, 27.450016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.521809, 20.691216, 27.489645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088359, 0.215226, -0.972559,
		-0.059719, -0.975766, -0.210510,
		-0.994297, 0.039480, 0.099070,
		19.223520, 20.703060, 27.519365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.801327, 20.670155, 26.786316>,  <19.919527, 20.675425, 27.450016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.801327, 20.670155, 26.786316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443172, 20.775307, 26.930082>,  <19.228279, 20.838398, 27.016342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443172, 20.775307, 26.930082>,  <19.801327, 20.670155, 26.786316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443172, 20.775307, 26.930082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204739, 0.473733, -0.856539,
		-0.395433, -0.840519, -0.370352,
		-0.895385, 0.262878, 0.359417,
		19.174557, 20.854170, 27.037907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246202, 20.256111, 26.477303>,  <19.801327, 20.670155, 26.786316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246202, 20.256111, 26.477303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.167534, 20.639107, 26.561712>,  <19.120333, 20.868904, 26.612358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.167534, 20.639107, 26.561712>,  <19.246202, 20.256111, 26.477303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167534, 20.639107, 26.561712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197033, 0.172243, -0.965148,
		-0.960468, -0.231396, 0.154782,
		-0.196671, 0.957491, 0.211026,
		19.108532, 20.926353, 26.625021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618689, 20.416788, 26.147284>,  <19.246202, 20.256111, 26.477303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618689, 20.416788, 26.147284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812263, 20.760418, 26.213968>,  <18.928410, 20.966597, 26.253979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812263, 20.760418, 26.213968>,  <18.618689, 20.416788, 26.147284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812263, 20.760418, 26.213968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116182, 0.251892, -0.960756,
		-0.867355, 0.445579, 0.221709,
		0.483939, 0.859075, 0.166712,
		18.957445, 21.018141, 26.263981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256308, 21.093355, 25.941910>,  <18.618689, 20.416788, 26.147284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256308, 21.093355, 25.941910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.646591, 21.176697, 25.914848>,  <18.880762, 21.226702, 25.898611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.646591, 21.176697, 25.914848>,  <18.256308, 21.093355, 25.941910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.646591, 21.176697, 25.914848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114417, 0.221347, -0.968460,
		-0.186805, 0.952678, 0.239809,
		0.975711, 0.208352, -0.067654,
		18.939304, 21.239202, 25.894552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321360, 21.750231, 25.711674>,  <18.256308, 21.093355, 25.941910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321360, 21.750231, 25.711674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.635708, 21.528820, 25.601389>,  <18.824316, 21.395973, 25.535217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.635708, 21.528820, 25.601389>,  <18.321360, 21.750231, 25.711674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635708, 21.528820, 25.601389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238285, 0.140372, -0.960998,
		0.570639, 0.820917, -0.021583,
		0.785870, -0.553526, -0.275714,
		18.871469, 21.362762, 25.518675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728857, 22.192686, 25.274874>,  <18.321360, 21.750231, 25.711674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728857, 22.192686, 25.274874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823318, 21.813580, 25.189106>,  <18.879995, 21.586117, 25.137646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823318, 21.813580, 25.189106>,  <18.728857, 22.192686, 25.274874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823318, 21.813580, 25.189106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222489, 0.162058, -0.961372,
		0.945902, 0.274736, -0.172597,
		0.236153, -0.947764, -0.214417,
		18.894165, 21.529251, 25.124781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026880, 22.298954, 24.676472>,  <18.728857, 22.192686, 25.274874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026880, 22.298954, 24.676472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.966160, 21.903717, 24.686481>,  <18.929728, 21.666574, 24.692488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.966160, 21.903717, 24.686481>,  <19.026880, 22.298954, 24.676472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.966160, 21.903717, 24.686481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113472, -0.007730, -0.993511,
		0.981876, -0.153654, -0.110948,
		-0.151799, -0.988094, 0.025026,
		18.920620, 21.607288, 24.693989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490118, 22.093325, 24.203661>,  <19.026880, 22.298954, 24.676472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490118, 22.093325, 24.203661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.227398, 21.792820, 24.229641>,  <19.069765, 21.612516, 24.245230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.227398, 21.792820, 24.229641>,  <19.490118, 22.093325, 24.203661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.227398, 21.792820, 24.229641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031922, -0.113759, -0.992995,
		0.753388, -0.650127, 0.098699,
		-0.656801, -0.751262, 0.064951,
		19.030357, 21.567442, 24.249126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777763, 21.618315, 23.717270>,  <19.490118, 22.093325, 24.203661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777763, 21.618315, 23.717270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389687, 21.537827, 23.771294>,  <19.156841, 21.489532, 23.803709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389687, 21.537827, 23.771294>,  <19.777763, 21.618315, 23.717270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389687, 21.537827, 23.771294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109684, -0.132371, -0.985113,
		0.216105, -0.970560, 0.106354,
		-0.970189, -0.201223, 0.135061,
		19.098629, 21.477459, 23.811811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674488, 21.068272, 23.416323>,  <19.777763, 21.618315, 23.717270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674488, 21.068272, 23.416323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318981, 21.251614, 23.415607>,  <19.105677, 21.361618, 23.415178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318981, 21.251614, 23.415607>,  <19.674488, 21.068272, 23.416323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318981, 21.251614, 23.415607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146125, -0.287039, -0.946708,
		-0.434442, -0.841142, 0.322088,
		-0.888768, 0.458355, -0.001790,
		19.052351, 21.389120, 23.415071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219835, 20.647444, 23.014297>,  <19.674488, 21.068272, 23.416323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219835, 20.647444, 23.014297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022587, 20.995388, 23.009043>,  <18.904238, 21.204155, 23.005890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022587, 20.995388, 23.009043>,  <19.219835, 20.647444, 23.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022587, 20.995388, 23.009043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332310, -0.202298, -0.921219,
		-0.803991, -0.449908, 0.388821,
		-0.493122, 0.869861, -0.013137,
		18.874651, 21.256346, 23.005102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612350, 20.472530, 22.655184>,  <19.219835, 20.647444, 23.014297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.612350, 20.472530, 22.655184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.637245, 20.871410, 22.638577>,  <18.652182, 21.110739, 22.628613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.637245, 20.871410, 22.638577>,  <18.612350, 20.472530, 22.655184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637245, 20.871410, 22.638577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226189, -0.026424, -0.973725,
		-0.972093, 0.069990, 0.223911,
		0.062235, 0.997198, -0.041517,
		18.655916, 21.170570, 22.626122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915661, 20.716558, 22.350676>,  <18.612350, 20.472530, 22.655184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915661, 20.716558, 22.350676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.189209, 21.003429, 22.297043>,  <18.353338, 21.175552, 22.264864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.189209, 21.003429, 22.297043>,  <17.915661, 20.716558, 22.350676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189209, 21.003429, 22.297043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218401, 0.025877, -0.975516,
		-0.696149, 0.696410, 0.174329,
		0.683870, 0.717178, -0.134083,
		18.394369, 21.218582, 22.256819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644308, 21.091253, 21.797857>,  <17.915661, 20.716558, 22.350676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644308, 21.091253, 21.797857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028263, 21.203320, 21.793331>,  <18.258636, 21.270559, 21.790615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028263, 21.203320, 21.793331>,  <17.644308, 21.091253, 21.797857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028263, 21.203320, 21.793331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007969, -0.013076, -0.999883,
		-0.280279, 0.959863, -0.010319,
		0.959886, 0.280164, -0.011314,
		18.316229, 21.287369, 21.789936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814043, 21.665552, 21.294897>,  <17.644308, 21.091253, 21.797857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814043, 21.665552, 21.294897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182041, 21.520996, 21.355564>,  <18.402840, 21.434261, 21.391964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182041, 21.520996, 21.355564>,  <17.814043, 21.665552, 21.294897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182041, 21.520996, 21.355564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254516, 0.256624, -0.932398,
		0.298040, 0.896404, 0.328073,
		0.919997, -0.361391, 0.151665,
		18.458040, 21.412579, 21.401064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195080, 22.081127, 20.934879>,  <17.814043, 21.665552, 21.294897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195080, 22.081127, 20.934879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395782, 21.737232, 20.973022>,  <18.516205, 21.530895, 20.995909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395782, 21.737232, 20.973022>,  <18.195080, 22.081127, 20.934879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395782, 21.737232, 20.973022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117218, -0.041644, -0.992233,
		0.857030, 0.509036, 0.079881,
		0.501756, -0.859737, 0.095359,
		18.546309, 21.479311, 21.001631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797079, 22.164139, 20.481203>,  <18.195080, 22.081127, 20.934879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797079, 22.164139, 20.481203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766331, 21.768959, 20.534945>,  <18.747881, 21.531851, 20.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766331, 21.768959, 20.534945>,  <18.797079, 22.164139, 20.481203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766331, 21.768959, 20.534945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221594, -0.148309, -0.963795,
		0.972104, -0.044317, 0.230323,
		-0.076871, -0.987948, 0.134351,
		18.743269, 21.472574, 20.575251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382517, 21.930590, 20.283047>,  <18.797079, 22.164139, 20.481203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382517, 21.930590, 20.283047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.134335, 21.617641, 20.261387>,  <18.985426, 21.429873, 20.248392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.134335, 21.617641, 20.261387>,  <19.382517, 21.930590, 20.283047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.134335, 21.617641, 20.261387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247891, -0.130148, -0.960006,
		0.744033, -0.609064, 0.274694,
		-0.620456, -0.782370, -0.054147,
		18.948198, 21.382931, 20.245142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791386, 21.373726, 19.889431>,  <19.382517, 21.930590, 20.283047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791386, 21.373726, 19.889431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399708, 21.297577, 19.861334>,  <19.164701, 21.251888, 19.844475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399708, 21.297577, 19.861334>,  <19.791386, 21.373726, 19.889431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399708, 21.297577, 19.861334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129938, -0.322378, -0.937651,
		0.155859, -0.927271, 0.340408,
		-0.979196, -0.190373, -0.070242,
		19.105949, 21.240465, 19.840261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.806658, 20.782539, 19.409086>,  <19.791386, 21.373726, 19.889431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.806658, 20.782539, 19.409086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443008, 20.948414, 19.393452>,  <19.224819, 21.047937, 19.384071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.443008, 20.948414, 19.393452>,  <19.806658, 20.782539, 19.409086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443008, 20.948414, 19.393452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010528, -0.070928, -0.997426,
		-0.416391, -0.907196, 0.060117,
		-0.909125, 0.414686, -0.039085,
		19.170271, 21.072819, 19.381727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.419279, 20.319078, 19.039673>,  <19.806658, 20.782539, 19.409086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.419279, 20.319078, 19.039673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232597, 20.671375, 19.007471>,  <19.120588, 20.882753, 18.988150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232597, 20.671375, 19.007471>,  <19.419279, 20.319078, 19.039673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232597, 20.671375, 19.007471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046784, -0.115484, -0.992207,
		-0.883175, -0.459302, 0.095102,
		-0.466705, 0.880742, -0.080504,
		19.092587, 20.935598, 18.983320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.027988, 20.178556, 18.469183>,  <19.419279, 20.319078, 19.039673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.027988, 20.178556, 18.469183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024765, 20.576046, 18.513813>,  <19.022831, 20.814539, 18.540590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024765, 20.576046, 18.513813>,  <19.027988, 20.178556, 18.469183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024765, 20.576046, 18.513813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040461, 0.111810, -0.992906,
		-0.999149, -0.003486, -0.041108,
		-0.008057, 0.993724, 0.111574,
		19.022348, 20.874163, 18.547285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766209, 20.415800, 17.894365>,  <19.027988, 20.178556, 18.469183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766209, 20.415800, 17.894365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.893993, 20.763874, 18.044416>,  <18.970663, 20.972719, 18.134447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.893993, 20.763874, 18.044416>,  <18.766209, 20.415800, 17.894365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893993, 20.763874, 18.044416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069219, 0.373383, -0.925091,
		-0.945068, 0.321496, 0.059048,
		0.319461, 0.870187, 0.375126,
		18.989832, 21.024931, 18.156954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310732, 21.028002, 17.537086>,  <18.766209, 20.415800, 17.894365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310732, 21.028002, 17.537086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.674034, 21.141682, 17.659922>,  <18.892015, 21.209890, 17.733622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.674034, 21.141682, 17.659922>,  <18.310732, 21.028002, 17.537086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674034, 21.141682, 17.659922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231887, 0.269009, -0.934806,
		-0.348282, 0.920252, 0.178426,
		0.908255, 0.284202, 0.307086,
		18.946510, 21.226942, 17.752047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382061, 21.619831, 17.203194>,  <18.310732, 21.028002, 17.537086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382061, 21.619831, 17.203194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748837, 21.498867, 17.307323>,  <18.968903, 21.426289, 17.369802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.748837, 21.498867, 17.307323>,  <18.382061, 21.619831, 17.203194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748837, 21.498867, 17.307323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335735, 0.232115, -0.912910,
		0.215649, 0.924483, 0.314366,
		0.916939, -0.302412, 0.260326,
		19.023918, 21.408144, 17.385422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815380, 22.076967, 16.922077>,  <18.382061, 21.619831, 17.203194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815380, 22.076967, 16.922077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.051487, 21.758869, 16.977451>,  <19.193151, 21.568010, 17.010675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.051487, 21.758869, 16.977451>,  <18.815380, 22.076967, 16.922077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051487, 21.758869, 16.977451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315734, 0.069624, -0.946290,
		0.742896, 0.602274, 0.292184,
		0.590269, -0.795248, 0.138435,
		19.228567, 21.520294, 17.018982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283329, 22.178392, 16.466999>,  <18.815380, 22.076967, 16.922077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283329, 22.178392, 16.466999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362225, 21.803230, 16.581142>,  <19.409561, 21.578133, 16.649630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362225, 21.803230, 16.581142>,  <19.283329, 22.178392, 16.466999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362225, 21.803230, 16.581142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655951, -0.090066, -0.749410,
		0.728577, 0.334995, 0.597456,
		0.197238, -0.937905, 0.285360,
		19.421396, 21.521858, 16.666750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.003420, 22.184824, 16.499037>,  <19.283329, 22.178392, 16.466999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.003420, 22.184824, 16.499037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840504, 21.826771, 16.426537>,  <19.742754, 21.611938, 16.383038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840504, 21.826771, 16.426537>,  <20.003420, 22.184824, 16.499037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840504, 21.826771, 16.426537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598394, -0.111626, -0.793387,
		0.689954, -0.431599, 0.581107,
		-0.407292, -0.895132, -0.181250,
		19.718315, 21.558231, 16.372162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.623804, 21.821053, 16.321650>,  <20.003420, 22.184824, 16.499037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.623804, 21.821053, 16.321650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295712, 21.630695, 16.194685>,  <20.098856, 21.516481, 16.118507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295712, 21.630695, 16.194685>,  <20.623804, 21.821053, 16.321650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295712, 21.630695, 16.194685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446048, -0.184691, -0.875746,
		0.358138, -0.859894, 0.363759,
		-0.820231, -0.475891, -0.317409,
		20.049643, 21.487928, 16.099463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865643, 21.350227, 15.926495>,  <20.623804, 21.821053, 16.321650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865643, 21.350227, 15.926495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479843, 21.360207, 15.821334>,  <20.248363, 21.366194, 15.758238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479843, 21.360207, 15.821334>,  <20.865643, 21.350227, 15.926495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479843, 21.360207, 15.821334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246652, -0.270579, -0.930564,
		-0.094351, -0.962374, 0.254820,
		-0.964500, 0.024947, -0.262901,
		20.190493, 21.367691, 15.742463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803926, 20.830074, 15.417027>,  <20.865643, 21.350227, 15.926495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803926, 20.830074, 15.417027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.493580, 21.069542, 15.337401>,  <20.307371, 21.213223, 15.289626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.493580, 21.069542, 15.337401>,  <20.803926, 20.830074, 15.417027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.493580, 21.069542, 15.337401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158536, -0.120395, -0.979986,
		-0.610651, -0.791898, -0.001500,
		-0.775868, 0.598667, -0.199064,
		20.260818, 21.249142, 15.277682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370119, 20.491631, 14.840420>,  <20.803926, 20.830074, 15.417027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370119, 20.491631, 14.840420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.297138, 20.884346, 14.819263>,  <20.253349, 21.119976, 14.806568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.297138, 20.884346, 14.819263>,  <20.370119, 20.491631, 14.840420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297138, 20.884346, 14.819263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157745, -0.023870, -0.987191,
		-0.970478, -0.188459, -0.150518,
		-0.182453, 0.981791, -0.052894,
		20.242403, 21.178883, 14.803394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149704, 20.559816, 14.194078>,  <20.370119, 20.491631, 14.840420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149704, 20.559816, 14.194078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.236916, 20.939137, 14.286326>,  <20.289244, 21.166729, 14.341675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.236916, 20.939137, 14.286326>,  <20.149704, 20.559816, 14.194078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.236916, 20.939137, 14.286326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140969, 0.203225, -0.968931,
		-0.965707, 0.243767, -0.089373,
		0.218030, 0.948303, 0.230619,
		20.302324, 21.223627, 14.355513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.029131, 20.820610, 13.567205>,  <20.149704, 20.559816, 14.194078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.029131, 20.820610, 13.567205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194763, 21.127552, 13.763043>,  <20.294142, 21.311718, 13.880546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194763, 21.127552, 13.763043>,  <20.029131, 20.820610, 13.567205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194763, 21.127552, 13.763043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060442, 0.513507, -0.855954,
		-0.908232, 0.384025, 0.166252,
		0.414079, 0.767356, 0.489594,
		20.318987, 21.357759, 13.909922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.702538, 21.528872, 13.363663>,  <20.029131, 20.820610, 13.567205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.702538, 21.528872, 13.363663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087128, 21.543438, 13.472651>,  <20.317883, 21.552177, 13.538043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087128, 21.543438, 13.472651>,  <19.702538, 21.528872, 13.363663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087128, 21.543438, 13.472651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250853, 0.289134, -0.923837,
		-0.112422, 0.956596, 0.268860,
		0.961475, 0.036415, 0.272470,
		20.375570, 21.554363, 13.554392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991692, 22.111944, 12.959912>,  <19.702538, 21.528872, 13.363663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991692, 22.111944, 12.959912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292198, 21.882698, 13.090839>,  <20.472502, 21.745152, 13.169395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.292198, 21.882698, 13.090839>,  <19.991692, 22.111944, 12.959912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292198, 21.882698, 13.090839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434011, 0.055371, -0.899204,
		0.497223, 0.817603, 0.290336,
		0.751268, -0.573114, 0.327317,
		20.517578, 21.710764, 13.189034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657745, 22.308266, 12.575312>,  <19.991692, 22.111944, 12.959912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.657745, 22.308266, 12.575312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.740562, 21.951900, 12.737006>,  <20.790253, 21.738081, 12.834023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.740562, 21.951900, 12.737006>,  <20.657745, 22.308266, 12.575312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.740562, 21.951900, 12.737006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437067, -0.285434, -0.852936,
		0.875275, 0.353272, 0.330292,
		0.207041, -0.890913, 0.404237,
		20.802675, 21.684626, 12.858277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197035, 22.141514, 12.283972>,  <20.657745, 22.308266, 12.575312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197035, 22.141514, 12.283972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105289, 21.781948, 12.433288>,  <21.050243, 21.566208, 12.522877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105289, 21.781948, 12.433288>,  <21.197035, 22.141514, 12.283972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105289, 21.781948, 12.433288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420712, -0.437395, -0.794788,
		0.877722, -0.025246, 0.478506,
		-0.229361, -0.898915, 0.373290,
		21.036482, 21.512274, 12.545275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.788353, 21.723995, 12.439442>,  <21.197035, 22.141514, 12.283972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.788353, 21.723995, 12.439442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.486301, 21.481533, 12.339559>,  <21.305071, 21.336056, 12.279629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.486301, 21.481533, 12.339559>,  <21.788353, 21.723995, 12.439442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.486301, 21.481533, 12.339559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485943, -0.261868, -0.833837,
		0.440047, -0.750998, 0.492302,
		-0.755128, -0.606158, -0.249708,
		21.259764, 21.299686, 12.264646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.104374, 21.301628, 12.031847>,  <21.788353, 21.723995, 12.439442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.104374, 21.301628, 12.031847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.738045, 21.147972, 11.985018>,  <21.518248, 21.055779, 11.956921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.738045, 21.147972, 11.985018>,  <22.104374, 21.301628, 12.031847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.738045, 21.147972, 11.985018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330887, -0.556626, -0.762024,
		0.227557, -0.736617, 0.636878,
		-0.915823, -0.384138, -0.117073,
		21.463299, 21.032730, 11.949896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185377, 20.620985, 11.955329>,  <22.104374, 21.301628, 12.031847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185377, 20.620985, 11.955329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822594, 20.673382, 11.795193>,  <21.604923, 20.704819, 11.699111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822594, 20.673382, 11.795193>,  <22.185377, 20.620985, 11.955329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822594, 20.673382, 11.795193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214199, -0.674939, -0.706099,
		-0.362696, -0.726153, 0.584083,
		-0.906957, 0.130990, -0.400339,
		21.550507, 20.712679, 11.675091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920992, 20.023602, 11.887404>,  <22.185377, 20.620985, 11.955329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920992, 20.023602, 11.887404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.705860, 20.213951, 11.609042>,  <21.576782, 20.328161, 11.442025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.705860, 20.213951, 11.609042>,  <21.920992, 20.023602, 11.887404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.705860, 20.213951, 11.609042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285298, -0.674017, -0.681400,
		-0.793314, -0.565016, 0.226738,
		-0.537827, 0.475876, -0.695905,
		21.544512, 20.356714, 11.400270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471155, 19.520138, 11.553759>,  <21.920992, 20.023602, 11.887404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471155, 19.520138, 11.553759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482342, 19.823780, 11.293612>,  <21.489054, 20.005966, 11.137525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482342, 19.823780, 11.293612>,  <21.471155, 19.520138, 11.553759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482342, 19.823780, 11.293612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082908, -0.650139, -0.755278,
		-0.996165, -0.032798, -0.081118,
		0.027967, 0.759107, -0.650365,
		21.490732, 20.051512, 11.098503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915869, 19.462311, 11.011876>,  <21.471155, 19.520138, 11.553759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915869, 19.462311, 11.011876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.202316, 19.701107, 10.867224>,  <21.374184, 19.844385, 10.780432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.202316, 19.701107, 10.867224>,  <20.915869, 19.462311, 11.011876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.202316, 19.701107, 10.867224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084512, -0.588463, -0.804095,
		-0.692844, 0.545264, -0.471862,
		0.716118, 0.596991, -0.361632,
		21.417152, 19.880205, 10.758735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361555, 18.891771, 10.828503>,  <20.915869, 19.462311, 11.011876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361555, 18.891771, 10.828503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085255, 18.603867, 10.800777>,  <19.919474, 18.431124, 10.784142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085255, 18.603867, 10.800777>,  <20.361555, 18.891771, 10.828503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085255, 18.603867, 10.800777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641151, 0.565330, 0.518967,
		-0.334349, 0.402917, -0.851979,
		-0.690750, -0.719763, -0.069313,
		19.878029, 18.387938, 10.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816525, 19.197987, 10.504268>,  <20.361555, 18.891771, 10.828503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816525, 19.197987, 10.504268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707523, 18.891815, 10.737457>,  <19.642122, 18.708113, 10.877371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.707523, 18.891815, 10.737457>,  <19.816525, 19.197987, 10.504268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707523, 18.891815, 10.737457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490808, 0.631729, 0.600022,
		-0.827556, -0.122622, -0.547827,
		-0.272502, -0.765430, 0.582975,
		19.625772, 18.662186, 10.912350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153759, 19.436487, 10.713964>,  <19.816525, 19.197987, 10.504268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153759, 19.436487, 10.713964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.260536, 19.146973, 10.968484>,  <19.324602, 18.973265, 11.121196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.260536, 19.146973, 10.968484>,  <19.153759, 19.436487, 10.713964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.260536, 19.146973, 10.968484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513786, 0.451716, 0.729367,
		-0.815332, -0.521619, -0.251289,
		0.266941, -0.723786, 0.636299,
		19.340618, 18.929836, 11.159374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554926, 19.355436, 11.077838>,  <19.153759, 19.436487, 10.713964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554926, 19.355436, 11.077838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.848007, 19.204170, 11.304161>,  <19.023855, 19.113411, 11.439955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.848007, 19.204170, 11.304161>,  <18.554926, 19.355436, 11.077838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848007, 19.204170, 11.304161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372313, 0.473209, 0.798408,
		-0.569677, -0.795653, 0.205925,
		0.732701, -0.378166, 0.565808,
		19.067818, 19.090721, 11.473904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272734, 18.884914, 11.618234>,  <18.554926, 19.355436, 11.077838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272734, 18.884914, 11.618234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623970, 19.016834, 11.756907>,  <18.834711, 19.095987, 11.840110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623970, 19.016834, 11.756907>,  <18.272734, 18.884914, 11.618234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623970, 19.016834, 11.756907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459342, 0.378066, 0.803786,
		0.134020, -0.865042, 0.483467,
		0.878091, 0.329800, 0.346682,
		18.887398, 19.115774, 11.860911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231312, 18.701143, 12.270630>,  <18.272734, 18.884914, 11.618234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231312, 18.701143, 12.270630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536732, 18.959404, 12.275083>,  <18.719984, 19.114361, 12.277754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536732, 18.959404, 12.275083>,  <18.231312, 18.701143, 12.270630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536732, 18.959404, 12.275083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279509, 0.314911, 0.907032,
		0.582120, -0.695677, 0.420916,
		0.763552, 0.645651, 0.011132,
		18.765797, 19.153099, 12.278422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.495632, 18.586882, 12.994848>,  <18.231312, 18.701143, 12.270630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.495632, 18.586882, 12.994848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610039, 18.944576, 12.857131>,  <18.678682, 19.159193, 12.774501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610039, 18.944576, 12.857131>,  <18.495632, 18.586882, 12.994848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610039, 18.944576, 12.857131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400905, 0.438017, 0.804622,
		0.870328, -0.092104, 0.483783,
		0.286014, 0.894236, -0.344294,
		18.695843, 19.212847, 12.753843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795887, 18.909664, 13.575263>,  <18.495632, 18.586882, 12.994848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795887, 18.909664, 13.575263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710461, 19.215950, 13.332589>,  <18.659204, 19.399721, 13.186985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710461, 19.215950, 13.332589>,  <18.795887, 18.909664, 13.575263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710461, 19.215950, 13.332589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386196, 0.504255, 0.772386,
		0.897353, 0.399255, 0.188025,
		-0.213566, 0.765717, -0.606685,
		18.646391, 19.445665, 13.150583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009060, 19.513889, 13.888135>,  <18.795887, 18.909664, 13.575263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009060, 19.513889, 13.888135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751053, 19.650349, 13.614619>,  <18.596249, 19.732224, 13.450510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751053, 19.650349, 13.614619>,  <19.009060, 19.513889, 13.888135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751053, 19.650349, 13.614619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459925, 0.541288, 0.703901,
		0.610262, 0.768522, -0.192238,
		-0.645019, 0.341148, -0.683790,
		18.557547, 19.752693, 13.409482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851381, 20.130499, 14.086075>,  <19.009060, 19.513889, 13.888135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851381, 20.130499, 14.086075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.534344, 20.075111, 13.848546>,  <18.344122, 20.041880, 13.706029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.534344, 20.075111, 13.848546>,  <18.851381, 20.130499, 14.086075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.534344, 20.075111, 13.848546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574960, 0.493982, 0.652229,
		0.203025, 0.858376, -0.471139,
		-0.792592, -0.138468, -0.593822,
		18.296566, 20.033571, 13.670400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529694, 20.838129, 14.020823>,  <18.851381, 20.130499, 14.086075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529694, 20.838129, 14.020823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255562, 20.561970, 13.928151>,  <18.091084, 20.396275, 13.872548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255562, 20.561970, 13.928151>,  <18.529694, 20.838129, 14.020823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.255562, 20.561970, 13.928151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660617, 0.455521, 0.596728,
		-0.306443, 0.562009, -0.768270,
		-0.685330, -0.690396, -0.231681,
		18.049963, 20.354851, 13.858646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942869, 21.155272, 14.173115>,  <18.529694, 20.838129, 14.020823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942869, 21.155272, 14.173115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818283, 20.775711, 14.193425>,  <17.743532, 20.547976, 14.205611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.818283, 20.775711, 14.193425>,  <17.942869, 21.155272, 14.173115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.818283, 20.775711, 14.193425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716605, 0.269637, 0.643252,
		-0.624074, 0.163963, -0.763969,
		-0.311464, -0.948900, 0.050777,
		17.724844, 20.491041, 14.208658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212524, 21.140427, 14.093222>,  <17.942869, 21.155272, 14.173115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212524, 21.140427, 14.093222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.325508, 20.812180, 14.291938>,  <17.393299, 20.615231, 14.411167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.325508, 20.812180, 14.291938>,  <17.212524, 21.140427, 14.093222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.325508, 20.812180, 14.291938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656361, 0.212344, 0.723948,
		-0.699576, -0.530561, -0.478643,
		0.282461, -0.820619, 0.496790,
		17.410246, 20.565994, 14.440975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667099, 21.053902, 14.508741>,  <17.212524, 21.140427, 14.093222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667099, 21.053902, 14.508741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932949, 20.809944, 14.681392>,  <17.092459, 20.663570, 14.784982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932949, 20.809944, 14.681392>,  <16.667099, 21.053902, 14.508741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932949, 20.809944, 14.681392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506137, 0.057452, 0.860537,
		-0.549635, -0.790398, -0.270506,
		0.664626, -0.609894, 0.431627,
		17.132338, 20.626976, 14.810880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260221, 20.795610, 15.019856>,  <16.667099, 21.053902, 14.508741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260221, 20.795610, 15.019856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621387, 20.682533, 15.149364>,  <16.838087, 20.614687, 15.227068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621387, 20.682533, 15.149364>,  <16.260221, 20.795610, 15.019856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621387, 20.682533, 15.149364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329490, 0.028465, 0.943730,
		-0.276003, -0.958788, -0.067443,
		0.902917, -0.282694, 0.323768,
		16.892263, 20.597725, 15.246494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134672, 20.228872, 15.553240>,  <16.260221, 20.795610, 15.019856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134672, 20.228872, 15.553240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.485413, 20.399162, 15.642587>,  <16.695856, 20.501337, 15.696195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.485413, 20.399162, 15.642587>,  <16.134672, 20.228872, 15.553240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.485413, 20.399162, 15.642587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141068, -0.216325, 0.966076,
		0.459604, -0.878613, -0.129629,
		0.876849, 0.425726, 0.223368,
		16.748466, 20.526880, 15.709597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578434, 19.738848, 16.015606>,  <16.134672, 20.228872, 15.553240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578434, 19.738848, 16.015606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802658, 20.066704, 16.062868>,  <16.937193, 20.263418, 16.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802658, 20.066704, 16.062868>,  <16.578434, 19.738848, 16.015606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802658, 20.066704, 16.062868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066521, -0.186787, 0.980146,
		0.825439, -0.541569, -0.159228,
		0.560559, 0.819642, 0.118155,
		16.970825, 20.312597, 16.098314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141884, 19.592020, 16.503195>,  <16.578434, 19.738848, 16.015606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141884, 19.592020, 16.503195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124619, 19.991051, 16.525038>,  <17.114260, 20.230469, 16.538143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124619, 19.991051, 16.525038>,  <17.141884, 19.592020, 16.503195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124619, 19.991051, 16.525038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005972, -0.054400, 0.998501,
		0.999050, 0.043426, -0.003609,
		-0.043165, 0.997575, 0.054607,
		17.111670, 20.290323, 16.541420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800415, 19.875422, 16.754198>,  <17.141884, 19.592020, 16.503195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800415, 19.875422, 16.754198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482124, 20.101986, 16.839989>,  <17.291151, 20.237925, 16.891462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482124, 20.101986, 16.839989>,  <17.800415, 19.875422, 16.754198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.482124, 20.101986, 16.839989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247545, -0.019035, 0.968689,
		0.552760, 0.823902, -0.125066,
		-0.795724, 0.566412, 0.214475,
		17.243406, 20.271910, 16.904331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954096, 20.331209, 17.353106>,  <17.800415, 19.875422, 16.754198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954096, 20.331209, 17.353106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.555168, 20.349430, 17.376028>,  <17.315811, 20.360363, 17.389782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.555168, 20.349430, 17.376028>,  <17.954096, 20.331209, 17.353106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555168, 20.349430, 17.376028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059694, 0.052939, 0.996812,
		0.042371, 0.997558, -0.055516,
		-0.997317, 0.045550, 0.057305,
		17.255974, 20.363094, 17.393219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918451, 20.455809, 18.018093>,  <17.954096, 20.331209, 17.353106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.918451, 20.455809, 18.018093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.542900, 20.359718, 17.919462>,  <17.317570, 20.302065, 17.860283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.542900, 20.359718, 17.919462>,  <17.918451, 20.455809, 18.018093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542900, 20.359718, 17.919462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261449, 0.031617, 0.964699,
		-0.223950, 0.970202, -0.092492,
		-0.938877, -0.240226, -0.246578,
		17.261236, 20.287651, 17.845490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403555, 20.901432, 18.396589>,  <17.918451, 20.455809, 18.018093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403555, 20.901432, 18.396589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.227432, 20.556965, 18.294985>,  <17.121759, 20.350285, 18.234022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.227432, 20.556965, 18.294985>,  <17.403555, 20.901432, 18.396589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227432, 20.556965, 18.294985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309317, -0.120099, 0.943345,
		-0.842885, 0.493929, -0.213494,
		-0.440305, -0.861168, -0.254010,
		17.095341, 20.298615, 18.218782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859024, 20.911196, 18.751221>,  <17.403555, 20.901432, 18.396589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859024, 20.911196, 18.751221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881538, 20.522583, 18.659168>,  <16.895046, 20.289415, 18.603937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.881538, 20.522583, 18.659168>,  <16.859024, 20.911196, 18.751221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.881538, 20.522583, 18.659168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310609, -0.236097, 0.920750,
		-0.948870, 0.019657, -0.315055,
		0.056284, -0.971531, -0.230131,
		16.898424, 20.231123, 18.590130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268686, 20.694874, 19.113064>,  <16.859024, 20.911196, 18.751221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268686, 20.694874, 19.113064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495827, 20.373734, 19.040428>,  <16.632111, 20.181049, 18.996847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495827, 20.373734, 19.040428>,  <16.268686, 20.694874, 19.113064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495827, 20.373734, 19.040428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198559, -0.347700, 0.916340,
		-0.798823, -0.484289, -0.356855,
		0.567853, -0.802850, -0.181591,
		16.666182, 20.132879, 18.985950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998741, 20.277412, 19.475689>,  <16.268686, 20.694874, 19.113064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998741, 20.277412, 19.475689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.354095, 20.106583, 19.408308>,  <16.567308, 20.004084, 19.367880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.354095, 20.106583, 19.408308>,  <15.998741, 20.277412, 19.475689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354095, 20.106583, 19.408308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036097, -0.430762, 0.901743,
		-0.457680, -0.795014, -0.398099,
		0.888384, -0.427080, -0.168454,
		16.620611, 19.978460, 19.357773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973720, 19.503004, 19.609030>,  <15.998741, 20.277412, 19.475689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973720, 19.503004, 19.609030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.354473, 19.616512, 19.655323>,  <16.582926, 19.684616, 19.683100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.354473, 19.616512, 19.655323>,  <15.973720, 19.503004, 19.609030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354473, 19.616512, 19.655323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026661, -0.452889, 0.891168,
		0.305300, -0.845202, -0.438663,
		0.951883, 0.283769, 0.115733,
		16.640038, 19.701643, 19.690042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330587, 18.861904, 19.739471>,  <15.973720, 19.503004, 19.609030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330587, 18.861904, 19.739471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529388, 19.176460, 19.886213>,  <16.648668, 19.365194, 19.974258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529388, 19.176460, 19.886213>,  <16.330587, 18.861904, 19.739471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529388, 19.176460, 19.886213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031858, -0.439017, 0.897914,
		0.867164, -0.434578, -0.243245,
		0.497003, 0.786388, 0.366855,
		16.678490, 19.412376, 19.996269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750322, 18.582727, 20.175297>,  <16.330587, 18.861904, 19.739471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750322, 18.582727, 20.175297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.796539, 18.960415, 20.298649>,  <16.824270, 19.187027, 20.372660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.796539, 18.960415, 20.298649>,  <16.750322, 18.582727, 20.175297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796539, 18.960415, 20.298649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071274, -0.317540, 0.945563,
		0.990742, -0.087275, -0.103988,
		0.115545, 0.944220, 0.308379,
		16.831203, 19.243681, 20.391163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338570, 18.569632, 20.646687>,  <16.750322, 18.582727, 20.175297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338570, 18.569632, 20.646687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136734, 18.899994, 20.747305>,  <17.015633, 19.098211, 20.807676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.136734, 18.899994, 20.747305>,  <17.338570, 18.569632, 20.646687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136734, 18.899994, 20.747305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017427, -0.281552, 0.959388,
		0.863185, 0.488478, 0.127675,
		-0.504587, 0.825904, 0.251544,
		16.985357, 19.147764, 20.822767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685837, 18.903887, 21.108816>,  <17.338570, 18.569632, 20.646687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685837, 18.903887, 21.108816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.315334, 19.038082, 21.177515>,  <17.093033, 19.118599, 21.218735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.315334, 19.038082, 21.177515>,  <17.685837, 18.903887, 21.108816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315334, 19.038082, 21.177515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174720, -0.021555, 0.984382,
		0.333952, 0.941797, -0.038651,
		-0.926255, 0.335489, 0.171749,
		17.037458, 19.138729, 21.229040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734692, 19.386911, 21.591801>,  <17.685837, 18.903887, 21.108816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734692, 19.386911, 21.591801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356579, 19.257099, 21.605228>,  <17.129711, 19.179213, 21.613285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.356579, 19.257099, 21.605228>,  <17.734692, 19.386911, 21.591801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356579, 19.257099, 21.605228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004077, 0.114627, 0.993400,
		-0.326236, 0.938904, -0.109678,
		-0.945280, -0.324530, 0.033568,
		17.072994, 19.159740, 21.615299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.455564, 19.809458, 22.071062>,  <17.734692, 19.386911, 21.591801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.455564, 19.809458, 22.071062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.175747, 19.524387, 22.050159>,  <17.007856, 19.353346, 22.037617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.175747, 19.524387, 22.050159>,  <17.455564, 19.809458, 22.071062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.175747, 19.524387, 22.050159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206361, 0.131462, 0.969605,
		-0.684144, 0.689065, -0.239032,
		-0.699544, -0.712676, -0.052258,
		16.965883, 19.310585, 22.034483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843306, 20.047981, 22.466812>,  <17.455564, 19.809458, 22.071062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843306, 20.047981, 22.466812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.768665, 19.655777, 22.442232>,  <16.723881, 19.420454, 22.427485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.768665, 19.655777, 22.442232>,  <16.843306, 20.047981, 22.466812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768665, 19.655777, 22.442232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416559, 0.022318, 0.908835,
		-0.889752, 0.195188, -0.412606,
		-0.186602, -0.980512, -0.061450,
		16.712685, 19.361624, 22.423798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224140, 20.017164, 22.810408>,  <16.843306, 20.047981, 22.466812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224140, 20.017164, 22.810408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355206, 19.639641, 22.793137>,  <16.433844, 19.413126, 22.782774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355206, 19.639641, 22.793137>,  <16.224140, 20.017164, 22.810408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355206, 19.639641, 22.793137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489802, -0.208768, 0.846469,
		-0.807919, -0.256207, -0.530684,
		0.327661, -0.943808, -0.043177,
		16.453505, 19.356499, 22.780184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652386, 19.601389, 22.764929>,  <16.224140, 20.017164, 22.810408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652386, 19.601389, 22.764929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938312, 19.358379, 22.903467>,  <16.109867, 19.212574, 22.986589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938312, 19.358379, 22.903467>,  <15.652386, 19.601389, 22.764929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938312, 19.358379, 22.903467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546228, -0.175797, 0.818981,
		-0.436664, -0.774603, -0.457509,
		0.714814, -0.607524, 0.346346,
		16.152756, 19.176123, 23.007372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.239147, 18.906284, 22.973995>,  <15.652386, 19.601389, 22.764929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.239147, 18.906284, 22.973995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.599154, 18.947422, 23.143412>,  <15.815159, 18.972105, 23.245062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.599154, 18.947422, 23.143412>,  <15.239147, 18.906284, 22.973995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.599154, 18.947422, 23.143412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407027, -0.149187, 0.901150,
		0.155867, -0.983446, -0.092410,
		0.900019, 0.102846, 0.423543,
		15.869161, 18.978275, 23.270475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328533, 18.319075, 23.353497>,  <15.239147, 18.906284, 22.973995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.328533, 18.319075, 23.353497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552274, 18.598324, 23.532270>,  <15.686518, 18.765873, 23.639534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552274, 18.598324, 23.532270>,  <15.328533, 18.319075, 23.353497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552274, 18.598324, 23.532270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550344, -0.090430, 0.830027,
		0.619878, -0.710243, 0.333626,
		0.559351, 0.698124, 0.446933,
		15.720079, 18.807760, 23.666351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599461, 18.117599, 24.049595>,  <15.328533, 18.319075, 23.353497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599461, 18.117599, 24.049595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546809, 18.513916, 24.062279>,  <15.515219, 18.751705, 24.069889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546809, 18.513916, 24.062279>,  <15.599461, 18.117599, 24.049595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546809, 18.513916, 24.062279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634297, -0.108763, 0.765401,
		0.761801, 0.080635, 0.642772,
		-0.131628, 0.990792, 0.031710,
		15.507320, 18.811153, 24.071793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277905, 17.444801, 24.146839>,  <15.599461, 18.117599, 24.049595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277905, 17.444801, 24.146839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054042, 17.126770, 24.240337>,  <14.919724, 16.935951, 24.296436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054042, 17.126770, 24.240337>,  <15.277905, 17.444801, 24.146839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054042, 17.126770, 24.240337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019306, -0.294487, -0.955460,
		0.828500, -0.530217, 0.180161,
		-0.559657, -0.795077, 0.233746,
		14.886145, 16.888247, 24.310461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572598, 16.932306, 23.718649>,  <15.277905, 17.444801, 24.146839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572598, 16.932306, 23.718649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209132, 16.785305, 23.797915>,  <14.991053, 16.697104, 23.845474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209132, 16.785305, 23.797915>,  <15.572598, 16.932306, 23.718649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209132, 16.785305, 23.797915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132986, -0.195155, -0.971715,
		0.395781, -0.909316, 0.128458,
		-0.908665, -0.367503, 0.198165,
		14.936533, 16.675055, 23.857365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547789, 16.277933, 23.369814>,  <15.572598, 16.932306, 23.718649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547789, 16.277933, 23.369814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178048, 16.413609, 23.439703>,  <14.956203, 16.495014, 23.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178048, 16.413609, 23.439703>,  <15.547789, 16.277933, 23.369814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178048, 16.413609, 23.439703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248599, -0.188027, -0.950181,
		-0.289439, -0.921736, 0.258125,
		-0.924351, 0.339189, 0.174720,
		14.900743, 16.515364, 23.492119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074886, 15.845981, 22.953274>,  <15.547789, 16.277933, 23.369814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074886, 15.845981, 22.953274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.860793, 16.173454, 23.036489>,  <14.732337, 16.369938, 23.086418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.860793, 16.173454, 23.036489>,  <15.074886, 15.845981, 22.953274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.860793, 16.173454, 23.036489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321420, 0.030371, -0.946450,
		-0.781162, -0.573440, 0.246886,
		-0.535233, 0.818685, 0.208040,
		14.700223, 16.419060, 23.098902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305528, 15.691480, 22.698376>,  <15.074886, 15.845981, 22.953274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.305528, 15.691480, 22.698376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374375, 16.084286, 22.729412>,  <14.415684, 16.319969, 22.748034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374375, 16.084286, 22.729412>,  <14.305528, 15.691480, 22.698376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374375, 16.084286, 22.729412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351158, 0.134758, -0.926568,
		-0.920360, 0.132233, 0.368037,
		0.172119, 0.982016, 0.077591,
		14.426011, 16.378891, 22.752689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769979, 15.982727, 22.269110>,  <14.305528, 15.691480, 22.698376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769979, 15.982727, 22.269110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040248, 16.271877, 22.326963>,  <14.202409, 16.445368, 22.361675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040248, 16.271877, 22.326963>,  <13.769979, 15.982727, 22.269110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040248, 16.271877, 22.326963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050253, 0.240903, -0.969247,
		-0.735488, 0.647624, 0.199098,
		0.675672, 0.722875, 0.144636,
		14.242949, 16.488739, 22.370354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437232, 16.528442, 22.023056>,  <13.769979, 15.982727, 22.269110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437232, 16.528442, 22.023056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827462, 16.616291, 22.021431>,  <14.061601, 16.669001, 22.020456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827462, 16.616291, 22.021431>,  <13.437232, 16.528442, 22.023056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827462, 16.616291, 22.021431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039687, 0.158034, -0.986636,
		-0.216046, 0.962700, 0.162890,
		0.975576, 0.219623, -0.004064,
		14.120135, 16.682178, 22.020212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537333, 17.077015, 21.556761>,  <13.437232, 16.528442, 22.023056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.537333, 17.077015, 21.556761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913352, 16.945061, 21.591370>,  <14.138964, 16.865889, 21.612135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913352, 16.945061, 21.591370>,  <13.537333, 17.077015, 21.556761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913352, 16.945061, 21.591370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181057, 0.267742, -0.946326,
		0.289012, 0.905257, 0.311419,
		0.940048, -0.329884, 0.086522,
		14.195367, 16.846096, 21.617327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.906049, 17.615021, 21.370085>,  <13.537333, 17.077015, 21.556761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.906049, 17.615021, 21.370085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138839, 17.291798, 21.333542>,  <14.278513, 17.097864, 21.311615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138839, 17.291798, 21.333542>,  <13.906049, 17.615021, 21.370085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.138839, 17.291798, 21.333542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182496, 0.239256, -0.953652,
		0.792464, 0.538330, 0.286708,
		0.581976, -0.808058, -0.091359,
		14.313432, 17.049379, 21.306133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529097, 17.904114, 21.037455>,  <13.906049, 17.615021, 21.370085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.529097, 17.904114, 21.037455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.489415, 17.509953, 20.982115>,  <14.465606, 17.273457, 20.948910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.489415, 17.509953, 20.982115>,  <14.529097, 17.904114, 21.037455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489415, 17.509953, 20.982115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275245, 0.106437, -0.955464,
		0.956242, -0.132867, 0.260668,
		-0.099205, -0.985402, -0.138351,
		14.459654, 17.214333, 20.940609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.026191, 17.776402, 20.600424>,  <14.529097, 17.904114, 21.037455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.026191, 17.776402, 20.600424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835534, 17.427620, 20.555683>,  <14.721140, 17.218351, 20.528839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835534, 17.427620, 20.555683>,  <15.026191, 17.776402, 20.600424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835534, 17.427620, 20.555683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301808, -0.042807, -0.952407,
		0.825666, -0.487716, 0.283566,
		-0.476643, -0.871952, -0.111852,
		14.692541, 17.166035, 20.522127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574191, 17.232170, 20.394215>,  <15.026191, 17.776402, 20.600424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574191, 17.232170, 20.394215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201869, 17.155273, 20.269863>,  <14.978476, 17.109135, 20.195251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201869, 17.155273, 20.269863>,  <15.574191, 17.232170, 20.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201869, 17.155273, 20.269863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326875, -0.057179, -0.943336,
		0.163575, -0.979680, 0.116062,
		-0.930804, -0.192244, -0.310880,
		14.922627, 17.097601, 20.176600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640028, 16.815620, 19.789694>,  <15.574191, 17.232170, 20.394215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.640028, 16.815620, 19.789694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275828, 16.980427, 19.775652>,  <15.057308, 17.079311, 19.767227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275828, 16.980427, 19.775652>,  <15.640028, 16.815620, 19.789694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.275828, 16.980427, 19.775652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086294, 0.106302, -0.990582,
		-0.404406, -0.904954, -0.132343,
		-0.910500, 0.412018, -0.035103,
		15.002679, 17.104033, 19.765121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.399730, 16.623610, 19.140278>,  <15.640028, 16.815620, 19.789694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.399730, 16.623610, 19.140278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124274, 16.907547, 19.199474>,  <14.959001, 17.077909, 19.234991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124274, 16.907547, 19.199474>,  <15.399730, 16.623610, 19.140278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124274, 16.907547, 19.199474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109154, 0.303251, -0.946638,
		-0.716842, -0.635738, -0.286312,
		-0.688639, 0.709842, 0.147989,
		14.917683, 17.120501, 19.243872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864212, 16.527355, 18.602892>,  <15.399730, 16.623610, 19.140278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864212, 16.527355, 18.602892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889169, 16.900650, 18.744415>,  <14.904142, 17.124626, 18.829329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889169, 16.900650, 18.744415>,  <14.864212, 16.527355, 18.602892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889169, 16.900650, 18.744415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001995, 0.354380, -0.935100,
		-0.998050, 0.059048, 0.020248,
		0.062392, 0.933235, 0.353806,
		14.907887, 17.180620, 18.850557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432072, 16.841055, 18.072237>,  <14.864212, 16.527355, 18.602892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432072, 16.841055, 18.072237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.636062, 17.124325, 18.267548>,  <14.758455, 17.294287, 18.384733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.636062, 17.124325, 18.267548>,  <14.432072, 16.841055, 18.072237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.636062, 17.124325, 18.267548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123934, 0.501223, -0.856397,
		-0.851214, 0.497255, 0.167845,
		0.509975, 0.708176, 0.488275,
		14.789054, 17.336777, 18.414030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087270, 17.534534, 17.856558>,  <14.432072, 16.841055, 18.072237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087270, 17.534534, 17.856558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461398, 17.601841, 17.981047>,  <14.685875, 17.642225, 18.055740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461398, 17.601841, 17.981047>,  <14.087270, 17.534534, 17.856558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461398, 17.601841, 17.981047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219532, 0.413807, -0.883498,
		-0.277451, 0.894679, 0.350102,
		0.935322, 0.168268, 0.311222,
		14.741995, 17.652321, 18.074413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212088, 18.128508, 17.604017>,  <14.087270, 17.534534, 17.856558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212088, 18.128508, 17.604017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581231, 17.994446, 17.679913>,  <14.802717, 17.914009, 17.725451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581231, 17.994446, 17.679913>,  <14.212088, 18.128508, 17.604017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581231, 17.994446, 17.679913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320251, 0.394131, -0.861452,
		0.213937, 0.855764, 0.471061,
		0.922860, -0.335154, 0.189740,
		14.858089, 17.893900, 17.736835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769876, 18.701147, 17.694351>,  <14.212088, 18.128508, 17.604017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769876, 18.701147, 17.694351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973098, 18.375992, 17.580442>,  <15.095031, 18.180899, 17.512098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973098, 18.375992, 17.580442>,  <14.769876, 18.701147, 17.694351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973098, 18.375992, 17.580442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378579, 0.507718, -0.773887,
		0.773666, 0.285368, 0.565691,
		0.508054, -0.812888, -0.284770,
		15.125514, 18.132126, 17.495012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401846, 18.974287, 17.519707>,  <14.769876, 18.701147, 17.694351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401846, 18.974287, 17.519707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403573, 18.611935, 17.350302>,  <15.404610, 18.394524, 17.248659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403573, 18.611935, 17.350302>,  <15.401846, 18.974287, 17.519707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403573, 18.611935, 17.350302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374344, 0.394185, -0.839336,
		0.927280, -0.154915, 0.340813,
		0.004318, -0.905880, -0.423512,
		15.404868, 18.340170, 17.223248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095684, 18.976101, 17.182554>,  <15.401846, 18.974287, 17.519707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095684, 18.976101, 17.182554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933953, 18.652138, 17.012579>,  <15.836915, 18.457760, 16.910595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933953, 18.652138, 17.012579>,  <16.095684, 18.976101, 17.182554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933953, 18.652138, 17.012579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578732, 0.133214, -0.804564,
		0.708229, -0.571231, 0.414858,
		-0.404327, -0.809907, -0.424936,
		15.812655, 18.409166, 16.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685154, 18.641598, 16.913874>,  <16.095684, 18.976101, 17.182554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685154, 18.641598, 16.913874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358055, 18.522011, 16.717136>,  <16.161797, 18.450258, 16.599094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358055, 18.522011, 16.717136>,  <16.685154, 18.641598, 16.913874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358055, 18.522011, 16.717136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511598, 0.014010, -0.859111,
		0.263736, -0.954161, 0.141495,
		-0.817747, -0.298967, -0.491841,
		16.112730, 18.432320, 16.569584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.873373, 18.132236, 16.436068>,  <16.685154, 18.641598, 16.913874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.873373, 18.132236, 16.436068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529785, 18.287998, 16.303080>,  <16.323633, 18.381454, 16.223288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.529785, 18.287998, 16.303080>,  <16.873373, 18.132236, 16.436068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529785, 18.287998, 16.303080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367577, 0.016934, -0.929839,
		-0.356452, -0.920912, -0.157682,
		-0.858969, 0.389403, -0.332470,
		16.272095, 18.404819, 16.203339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743832, 17.698647, 15.892093>,  <16.873373, 18.132236, 16.436068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743832, 17.698647, 15.892093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.507572, 18.010746, 15.809777>,  <16.365816, 18.198006, 15.760388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.507572, 18.010746, 15.809777>,  <16.743832, 17.698647, 15.892093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507572, 18.010746, 15.809777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296449, -0.027376, -0.954656,
		-0.750500, -0.624873, -0.215134,
		-0.590649, 0.780246, -0.205789,
		16.330378, 18.244820, 15.748041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350382, 17.495472, 15.328963>,  <16.743832, 17.698647, 15.892093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350382, 17.495472, 15.328963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.328327, 17.894852, 15.332063>,  <16.315094, 18.134480, 15.333922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.328327, 17.894852, 15.332063>,  <16.350382, 17.495472, 15.328963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328327, 17.894852, 15.332063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094544, 0.012946, -0.995436,
		-0.993993, -0.054153, -0.095112,
		-0.055137, 0.998448, 0.007748,
		16.311787, 18.194386, 15.334387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882167, 17.603352, 14.863290>,  <16.350382, 17.495472, 15.328963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882167, 17.603352, 14.863290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.042706, 17.968914, 14.887593>,  <16.139029, 18.188251, 14.902176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.042706, 17.968914, 14.887593>,  <15.882167, 17.603352, 14.863290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.042706, 17.968914, 14.887593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081659, 0.030369, -0.996197,
		-0.912278, 0.404783, -0.062440,
		0.401347, 0.913908, 0.060760,
		16.163109, 18.243086, 14.905821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481571, 18.207130, 14.515967>,  <15.882167, 17.603352, 14.863290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481571, 18.207130, 14.515967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.873851, 18.285339, 14.516358>,  <16.109219, 18.332264, 14.516593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.873851, 18.285339, 14.516358>,  <15.481571, 18.207130, 14.515967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873851, 18.285339, 14.516358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008153, 0.045886, -0.998913,
		-0.195353, 0.979625, 0.046594,
		0.980699, 0.195521, 0.000978,
		16.168060, 18.343996, 14.516652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489250, 18.611334, 14.049019>,  <15.481571, 18.207130, 14.515967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.489250, 18.611334, 14.049019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863690, 18.472618, 14.072515>,  <16.088354, 18.389389, 14.086612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.863690, 18.472618, 14.072515>,  <15.489250, 18.611334, 14.049019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863690, 18.472618, 14.072515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092828, 0.082502, -0.992258,
		0.339260, 0.934307, 0.109422,
		0.936101, -0.346791, 0.058740,
		16.144522, 18.368582, 14.090137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781295, 18.998983, 13.608627>,  <15.489250, 18.611334, 14.049019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781295, 18.998983, 13.608627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023273, 18.684040, 13.656131>,  <16.168461, 18.495073, 13.684633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023273, 18.684040, 13.656131>,  <15.781295, 18.998983, 13.608627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023273, 18.684040, 13.656131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155293, -0.029621, -0.987424,
		0.780977, 0.615781, 0.104352,
		0.604946, -0.787361, 0.118760,
		16.204758, 18.447832, 13.691759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234518, 19.116894, 13.113154>,  <15.781295, 18.998983, 13.608627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234518, 19.116894, 13.113154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308689, 18.735405, 13.207836>,  <16.353191, 18.506512, 13.264646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308689, 18.735405, 13.207836>,  <16.234518, 19.116894, 13.113154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308689, 18.735405, 13.207836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076618, -0.226117, -0.971082,
		0.979667, 0.198200, 0.031144,
		0.185427, -0.953723, 0.236705,
		16.364317, 18.449287, 13.278848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872732, 18.899069, 12.840311>,  <16.234518, 19.116894, 13.113154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872732, 18.899069, 12.840311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656906, 18.563660, 12.870631>,  <16.527411, 18.362413, 12.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656906, 18.563660, 12.870631>,  <16.872732, 18.899069, 12.840311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656906, 18.563660, 12.870631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046049, -0.119286, -0.991792,
		0.840683, -0.531646, 0.102976,
		-0.539566, -0.838524, 0.075799,
		16.495037, 18.312101, 12.893371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110285, 18.555119, 12.293943>,  <16.872732, 18.899069, 12.840311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.110285, 18.555119, 12.293943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777073, 18.352531, 12.382987>,  <16.577147, 18.230980, 12.436414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777073, 18.352531, 12.382987>,  <17.110285, 18.555119, 12.293943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777073, 18.352531, 12.382987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064574, -0.310617, -0.948339,
		0.549450, -0.804368, 0.226048,
		-0.833028, -0.506468, 0.222610,
		16.527164, 18.200592, 12.449770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251186, 17.946440, 11.976342>,  <17.110285, 18.555119, 12.293943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251186, 17.946440, 11.976342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854931, 17.978481, 12.020564>,  <16.617178, 17.997705, 12.047097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854931, 17.978481, 12.020564>,  <17.251186, 17.946440, 11.976342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854931, 17.978481, 12.020564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128191, -0.267170, -0.955085,
		-0.046969, -0.960314, 0.274937,
		-0.990637, 0.080104, 0.110555,
		16.557739, 18.002512, 12.053731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.043505, 17.363783, 11.572756>,  <17.251186, 17.946440, 11.976342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.043505, 17.363783, 11.572756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723122, 17.599026, 11.617655>,  <16.530891, 17.740171, 11.644594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723122, 17.599026, 11.617655>,  <17.043505, 17.363783, 11.572756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723122, 17.599026, 11.617655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414270, -0.409018, -0.813071,
		-0.432271, -0.697728, 0.571242,
		-0.800950, 0.588115, 0.112241,
		16.482836, 17.775457, 11.651329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544910, 16.947803, 11.299689>,  <17.043505, 17.363783, 11.572756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544910, 16.947803, 11.299689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376526, 17.310600, 11.294627>,  <16.275496, 17.528278, 11.291590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376526, 17.310600, 11.294627>,  <16.544910, 16.947803, 11.299689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376526, 17.310600, 11.294627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362057, -0.180800, -0.914454,
		-0.831689, -0.380367, 0.404492,
		-0.420960, 0.906991, -0.012655,
		16.250238, 17.582697, 11.290831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762203, 16.922873, 10.989702>,  <16.544910, 16.947803, 11.299689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762203, 16.922873, 10.989702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891974, 17.299347, 10.951941>,  <15.969837, 17.525232, 10.929285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891974, 17.299347, 10.951941>,  <15.762203, 16.922873, 10.989702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891974, 17.299347, 10.951941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263639, -0.005875, -0.964604,
		-0.908428, 0.337832, 0.246228,
		0.324427, 0.941188, -0.094402,
		15.989303, 17.581703, 10.923621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252133, 17.113489, 10.634386>,  <15.762203, 16.922873, 10.989702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252133, 17.113489, 10.634386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563148, 17.359577, 10.582317>,  <15.749756, 17.507229, 10.551076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563148, 17.359577, 10.582317>,  <15.252133, 17.113489, 10.634386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563148, 17.359577, 10.582317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188051, 0.029949, -0.981703,
		-0.600063, 0.787787, 0.138979,
		0.777535, 0.615219, -0.130173,
		15.796408, 17.544144, 10.543265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038165, 17.738489, 10.367256>,  <15.252133, 17.113489, 10.634386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038165, 17.738489, 10.367256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422124, 17.693466, 10.264550>,  <15.652499, 17.666452, 10.202927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422124, 17.693466, 10.264550>,  <15.038165, 17.738489, 10.367256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422124, 17.693466, 10.264550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239719, 0.145369, -0.959897,
		0.145369, 0.982954, 0.112557,
		0.959897, -0.112557, -0.256765,
		15.710093, 17.659698, 10.187521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113691, 18.187635, 9.802967>,  <15.038165, 17.738489, 10.367256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113691, 18.187635, 9.802967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425364, 17.941250, 9.756558>,  <15.612369, 17.793419, 9.728713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425364, 17.941250, 9.756558>,  <15.113691, 18.187635, 9.802967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425364, 17.941250, 9.756558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234942, -0.115408, -0.965134,
		0.581098, 0.779275, -0.234640,
		0.779183, -0.615965, -0.116021,
		15.659120, 17.756460, 9.721752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393811, 18.429844, 9.163835>,  <15.113691, 18.187635, 9.802967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393811, 18.429844, 9.163835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543569, 18.064827, 9.229684>,  <15.633423, 17.845818, 9.269194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543569, 18.064827, 9.229684>,  <15.393811, 18.429844, 9.163835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543569, 18.064827, 9.229684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359376, -0.306455, -0.881439,
		0.854798, 0.270843, -0.442680,
		0.374393, -0.912540, 0.164623,
		15.655887, 17.791065, 9.279071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793585, 18.356209, 8.601750>,  <15.393811, 18.429844, 9.163835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793585, 18.356209, 8.601750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672896, 18.013466, 8.768967>,  <15.600483, 17.807819, 8.869296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672896, 18.013466, 8.768967>,  <15.793585, 18.356209, 8.601750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672896, 18.013466, 8.768967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521738, -0.218597, -0.824624,
		0.797969, -0.466913, -0.381100,
		-0.301721, -0.856859, 0.418040,
		15.582380, 17.756409, 8.894379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950514, 17.767424, 8.184905>,  <15.793585, 18.356209, 8.601750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950514, 17.767424, 8.184905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619609, 17.748829, 8.408860>,  <15.421065, 17.737673, 8.543234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619609, 17.748829, 8.408860>,  <15.950514, 17.767424, 8.184905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619609, 17.748829, 8.408860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553571, -0.102650, -0.826451,
		0.095892, -0.993631, 0.059185,
		-0.827263, -0.046487, 0.559889,
		15.371430, 17.734882, 8.576827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514349, 17.152117, 7.850843>,  <15.950514, 17.767424, 8.184905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514349, 17.152117, 7.850843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329324, 17.432095, 8.068509>,  <15.218308, 17.600080, 8.199109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329324, 17.432095, 8.068509>,  <15.514349, 17.152117, 7.850843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329324, 17.432095, 8.068509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622296, 0.180852, -0.761604,
		-0.631492, -0.690922, 0.351916,
		-0.462564, 0.699943, 0.544165,
		15.190555, 17.642076, 8.231758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.758798, 17.077589, 7.747581>,  <15.514349, 17.152117, 7.850843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.758798, 17.077589, 7.747581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840083, 17.457367, 7.843293>,  <14.888855, 17.685234, 7.900720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840083, 17.457367, 7.843293>,  <14.758798, 17.077589, 7.747581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840083, 17.457367, 7.843293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543034, 0.312637, -0.779341,
		-0.814750, 0.028436, 0.579114,
		0.203214, 0.949447, 0.239279,
		14.901048, 17.742201, 7.915077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105281, 17.562798, 7.806414>,  <14.758798, 17.077589, 7.747581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105281, 17.562798, 7.806414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.436017, 17.721699, 7.647153>,  <14.634459, 17.817039, 7.551597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.436017, 17.721699, 7.647153>,  <14.105281, 17.562798, 7.806414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.436017, 17.721699, 7.647153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541985, 0.373615, -0.752770,
		-0.150283, 0.838214, 0.524225,
		0.826841, 0.397251, -0.398152,
		14.684070, 17.840874, 7.527708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988703, 18.323622, 7.803139>,  <14.105281, 17.562798, 7.806414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988703, 18.323622, 7.803139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.226371, 18.227867, 7.495982>,  <14.368972, 18.170414, 7.311688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.226371, 18.227867, 7.495982>,  <13.988703, 18.323622, 7.803139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.226371, 18.227867, 7.495982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691247, 0.336169, -0.639662,
		0.411267, 0.910871, 0.034267,
		0.594169, -0.239385, -0.767892,
		14.404621, 18.156052, 7.265615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.329294, 18.920479, 7.314996>,  <13.988703, 18.323622, 7.803139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.329294, 18.920479, 7.314996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.266660, 18.594456, 7.091869>,  <14.229079, 18.398842, 6.957993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.266660, 18.594456, 7.091869>,  <14.329294, 18.920479, 7.314996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.266660, 18.594456, 7.091869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630561, 0.517200, -0.578703,
		0.760180, 0.261121, -0.594930,
		-0.156586, -0.815058, -0.557817,
		14.219684, 18.349937, 6.924524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528361, 19.014135, 6.595187>,  <14.329294, 18.920479, 7.314996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528361, 19.014135, 6.595187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203275, 18.781090, 6.598099>,  <14.008223, 18.641262, 6.599845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203275, 18.781090, 6.598099>,  <14.528361, 19.014135, 6.595187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203275, 18.781090, 6.598099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495315, 0.684253, -0.535220,
		0.306846, -0.438588, -0.844681,
		-0.812717, -0.582613, 0.007279,
		13.959459, 18.606306, 6.600282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204985, 18.745329, 5.855853>,  <14.528361, 19.014135, 6.595187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204985, 18.745329, 5.855853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.980767, 18.859306, 6.166877>,  <13.846237, 18.927692, 6.353491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.980767, 18.859306, 6.166877>,  <14.204985, 18.745329, 5.855853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.980767, 18.859306, 6.166877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264791, 0.827976, -0.494309,
		-0.784651, -0.482972, -0.388665,
		-0.560543, 0.284946, 0.777559,
		13.812604, 18.944790, 6.400145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593268, 19.022186, 5.610532>,  <14.204985, 18.745329, 5.855853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593268, 19.022186, 5.610532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651555, 19.180473, 5.973228>,  <13.686527, 19.275446, 6.190845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651555, 19.180473, 5.973228>,  <13.593268, 19.022186, 5.610532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651555, 19.180473, 5.973228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232682, 0.904520, -0.357355,
		-0.961574, -0.158909, 0.223881,
		0.145718, 0.395717, 0.906738,
		13.695271, 19.299189, 6.245249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.947621, 19.378523, 5.940480>,  <13.593268, 19.022186, 5.610532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.947621, 19.378523, 5.940480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.306186, 19.530010, 6.032582>,  <13.521324, 19.620903, 6.087844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.306186, 19.530010, 6.032582>,  <12.947621, 19.378523, 5.940480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.306186, 19.530010, 6.032582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218052, 0.829113, -0.514806,
		-0.385876, 0.411270, 0.825807,
		0.896411, 0.378720, 0.230256,
		13.575109, 19.643627, 6.101659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.984369, 20.090527, 6.290876>,  <12.947621, 19.378523, 5.940480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.984369, 20.090527, 6.290876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305350, 20.040401, 6.057513>,  <13.497939, 20.010326, 5.917495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305350, 20.040401, 6.057513>,  <12.984369, 20.090527, 6.290876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305350, 20.040401, 6.057513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201424, 0.863430, -0.462512,
		0.561691, 0.488657, 0.667621,
		0.802454, -0.125314, -0.583408,
		13.546086, 20.002808, 5.882491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.416595, 20.782949, 6.179077>,  <12.984369, 20.090527, 6.290876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.416595, 20.782949, 6.179077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.486392, 20.554424, 5.858289>,  <13.528271, 20.417309, 5.665816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.486392, 20.554424, 5.858289>,  <13.416595, 20.782949, 6.179077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.486392, 20.554424, 5.858289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224721, 0.769864, -0.597335,
		0.958672, 0.284450, 0.005951,
		0.174494, -0.571312, -0.801969,
		13.538740, 20.383030, 5.617698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.908010, 21.062521, 5.785451>,  <13.416595, 20.782949, 6.179077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.908010, 21.062521, 5.785451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613965, 20.867203, 5.597335>,  <13.437537, 20.750011, 5.484465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613965, 20.867203, 5.597335>,  <13.908010, 21.062521, 5.785451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613965, 20.867203, 5.597335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281557, 0.850943, -0.443420,
		0.616711, -0.193551, -0.763024,
		-0.735115, -0.488297, -0.470290,
		13.393431, 20.720715, 5.456248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076615, 21.158106, 5.181992>,  <13.908010, 21.062521, 5.785451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.076615, 21.158106, 5.181992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683881, 21.090599, 5.216671>,  <13.448240, 21.050095, 5.237478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683881, 21.090599, 5.216671>,  <14.076615, 21.158106, 5.181992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683881, 21.090599, 5.216671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186783, 0.779494, -0.597914,
		0.033328, -0.603247, -0.796858,
		-0.981836, -0.168766, 0.086697,
		13.389330, 21.039968, 5.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635199, 21.067020, 4.501960>,  <14.076615, 21.158106, 5.181992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635199, 21.067020, 4.501960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444867, 21.231323, 4.813052>,  <13.330668, 21.329905, 4.999707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444867, 21.231323, 4.813052>,  <13.635199, 21.067020, 4.501960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444867, 21.231323, 4.813052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094301, 0.855326, -0.509435,
		-0.874468, -0.315745, -0.368254,
		-0.475829, 0.410758, 0.777730,
		13.302118, 21.354551, 5.046371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989810, 21.426247, 4.272108>,  <13.635199, 21.067020, 4.501960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.989810, 21.426247, 4.272108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185395, 21.567509, 4.591156>,  <13.302747, 21.652266, 4.782585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185395, 21.567509, 4.591156>,  <12.989810, 21.426247, 4.272108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185395, 21.567509, 4.591156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099980, 0.885667, -0.453428,
		-0.866556, 0.301456, 0.397750,
		0.488963, 0.353154, 0.797620,
		13.332085, 21.673454, 4.830442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.654620, 22.078285, 4.637303>,  <12.989810, 21.426247, 4.272108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.654620, 22.078285, 4.637303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053857, 22.053654, 4.635548>,  <13.293399, 22.038876, 4.634494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053857, 22.053654, 4.635548>,  <12.654620, 22.078285, 4.637303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.053857, 22.053654, 4.635548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048215, 0.821927, -0.567549,
		0.038556, 0.566255, 0.823328,
		0.998093, -0.061579, -0.004388,
		13.353285, 22.035179, 4.634231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902018, 22.657715, 4.752574>,  <12.654620, 22.078285, 4.637303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902018, 22.657715, 4.752574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.203549, 22.503159, 4.539992>,  <13.384468, 22.410425, 4.412443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.203549, 22.503159, 4.539992>,  <12.902018, 22.657715, 4.752574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.203549, 22.503159, 4.539992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035457, 0.783726, -0.620094,
		0.656114, 0.486288, 0.577095,
		0.753828, -0.386390, -0.531456,
		13.429698, 22.387241, 4.380556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.238001, 23.216921, 4.485849>,  <12.902018, 22.657715, 4.752574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.238001, 23.216921, 4.485849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256446, 22.905106, 4.235988>,  <13.267513, 22.718016, 4.086071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256446, 22.905106, 4.235988>,  <13.238001, 23.216921, 4.485849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256446, 22.905106, 4.235988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033044, 0.623787, -0.780895,
		0.998390, 0.056651, 0.003006,
		0.046113, -0.779538, -0.624655,
		13.270280, 22.671244, 4.048591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718917, 23.253050, 4.040122>,  <13.238001, 23.216921, 4.485849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718917, 23.253050, 4.040122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427009, 23.041882, 3.866348>,  <13.251863, 22.915180, 3.762084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427009, 23.041882, 3.866348>,  <13.718917, 23.253050, 4.040122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427009, 23.041882, 3.866348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031078, 0.660382, -0.750286,
		0.682992, -0.534031, -0.498331,
		-0.729765, -0.527926, -0.434439,
		13.208077, 22.883505, 3.736017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018163, 23.108995, 3.484184>,  <13.718917, 23.253050, 4.040122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018163, 23.108995, 3.484184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619189, 23.131168, 3.466063>,  <13.379805, 23.144472, 3.455190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.619189, 23.131168, 3.466063>,  <14.018163, 23.108995, 3.484184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619189, 23.131168, 3.466063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071355, 0.821195, -0.566169,
		0.005817, -0.567949, -0.823043,
		-0.997434, 0.055435, -0.045303,
		13.319959, 23.147799, 3.452472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719704, 23.041880, 2.758625>,  <14.018163, 23.108995, 3.484184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719704, 23.041880, 2.758625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484834, 23.260086, 2.997837>,  <13.343911, 23.391010, 3.141364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484834, 23.260086, 2.997837>,  <13.719704, 23.041880, 2.758625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484834, 23.260086, 2.997837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054351, 0.763703, -0.643275,
		-0.807633, -0.345212, -0.478077,
		-0.587175, 0.545515, 0.598029,
		13.308681, 23.423740, 3.177246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.223554, 22.942694, 2.254913>,  <13.719704, 23.041880, 2.758625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.223554, 22.942694, 2.254913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.981925, 23.224571, 2.106049>,  <12.836948, 23.393698, 2.016731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.981925, 23.224571, 2.106049>,  <13.223554, 22.942694, 2.254913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981925, 23.224571, 2.106049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096481, 0.398887, 0.911911,
		0.791068, 0.586765, -0.172967,
		-0.604071, 0.704696, -0.372158,
		12.800704, 23.435980, 1.994402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615235, 22.399788, 2.151636>,  <13.223554, 22.942694, 2.254913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615235, 22.399788, 2.151636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326030, 22.376179, 1.876313>,  <13.152507, 22.362013, 1.711119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326030, 22.376179, 1.876313>,  <13.615235, 22.399788, 2.151636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326030, 22.376179, 1.876313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641621, -0.426693, -0.637382,
		-0.256075, -0.902469, 0.346376,
		-0.723013, -0.059025, -0.688308,
		13.109126, 22.358471, 1.669821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737693, 21.653814, 1.855155>,  <13.615235, 22.399788, 2.151636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737693, 21.653814, 1.855155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513940, 21.877991, 1.610861>,  <13.379688, 22.012497, 1.464285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513940, 21.877991, 1.610861>,  <13.737693, 21.653814, 1.855155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513940, 21.877991, 1.610861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603183, -0.230159, -0.763673,
		-0.568561, -0.795569, -0.209303,
		-0.559382, 0.560443, -0.610734,
		13.346126, 22.046124, 1.427641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.522274, 21.335735, 1.300211>,  <13.737693, 21.653814, 1.855155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.522274, 21.335735, 1.300211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548459, 21.707584, 1.155149>,  <13.564170, 21.930693, 1.068112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548459, 21.707584, 1.155149>,  <13.522274, 21.335735, 1.300211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548459, 21.707584, 1.155149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427519, -0.354518, -0.831591,
		-0.901633, -0.100604, -0.420639,
		0.065462, 0.929621, -0.362655,
		13.568098, 21.986471, 1.046352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097913, 21.454529, 0.656152>,  <13.522274, 21.335735, 1.300211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097913, 21.454529, 0.656152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421226, 21.685780, 0.700784>,  <13.615213, 21.824530, 0.727563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421226, 21.685780, 0.700784>,  <13.097913, 21.454529, 0.656152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421226, 21.685780, 0.700784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296366, -0.235723, -0.925528,
		-0.508770, 0.781156, -0.361868,
		0.808282, 0.578126, 0.111579,
		13.663711, 21.859217, 0.734258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.134681, 21.841646, 0.007386>,  <13.097913, 21.454529, 0.656152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.134681, 21.841646, 0.007386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477038, 21.782597, 0.205639>,  <13.682453, 21.747168, 0.324591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477038, 21.782597, 0.205639>,  <13.134681, 21.841646, 0.007386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477038, 21.782597, 0.205639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444069, -0.281386, -0.850661,
		0.265042, 0.948171, -0.175282,
		0.855894, -0.147624, 0.495633,
		13.733807, 21.738310, 0.354329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684378, 22.235229, -0.296919>,  <13.134681, 21.841646, 0.007386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684378, 22.235229, -0.296919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826934, 21.902348, -0.127016>,  <13.912467, 21.702618, -0.025074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826934, 21.902348, -0.127016>,  <13.684378, 22.235229, -0.296919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826934, 21.902348, -0.127016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405793, -0.271628, -0.872668,
		0.841616, 0.483374, 0.240898,
		0.356390, -0.832207, 0.424757,
		13.933851, 21.652685, 0.000411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262511, 22.057516, -0.586542>,  <13.684378, 22.235229, -0.296919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262511, 22.057516, -0.586542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208520, 21.685951, -0.448614>,  <14.176126, 21.463013, -0.365858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208520, 21.685951, -0.448614>,  <14.262511, 22.057516, -0.586542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208520, 21.685951, -0.448614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482162, -0.365598, -0.796152,
		0.865622, 0.058795, 0.497235,
		-0.134978, -0.928914, 0.344818,
		14.168027, 21.407276, -0.345169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.895257, 21.679180, -0.441023>,  <14.262511, 22.057516, -0.586542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.895257, 21.679180, -0.441023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.593989, 21.436951, -0.543799>,  <14.413229, 21.291613, -0.605465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.593989, 21.436951, -0.543799>,  <14.895257, 21.679180, -0.441023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593989, 21.436951, -0.543799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572717, -0.411481, -0.708999,
		0.323624, -0.681149, 0.656736,
		-0.753168, -0.605573, -0.256940,
		14.368039, 21.255280, -0.620881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146526, 20.997169, -0.444730>,  <14.895257, 21.679180, -0.441023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146526, 20.997169, -0.444730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841506, 21.026634, -0.701819>,  <14.658494, 21.044313, -0.856072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841506, 21.026634, -0.701819>,  <15.146526, 20.997169, -0.444730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841506, 21.026634, -0.701819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596928, -0.302875, -0.742929,
		-0.249388, -0.950180, 0.186988,
		-0.762551, 0.073659, -0.642722,
		14.612741, 21.048733, -0.894636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.297263, 20.475197, -0.909959>,  <15.146526, 20.997169, -0.444730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.297263, 20.475197, -0.909959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.046371, 20.740116, -1.073883>,  <14.895835, 20.899067, -1.172238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.046371, 20.740116, -1.073883>,  <15.297263, 20.475197, -0.909959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.046371, 20.740116, -1.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441983, -0.130559, -0.887471,
		-0.641274, -0.737778, -0.210834,
		-0.627231, 0.662297, -0.409810,
		14.858201, 20.938805, -1.196826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951637, 20.134951, -1.527004>,  <15.297263, 20.475197, -0.909959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951637, 20.134951, -1.527004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944503, 20.524353, -1.618187>,  <14.940222, 20.757996, -1.672897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944503, 20.524353, -1.618187>,  <14.951637, 20.134951, -1.527004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944503, 20.524353, -1.618187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440598, -0.197012, -0.875819,
		-0.897527, -0.116060, -0.425411,
		-0.017836, 0.973507, -0.227959,
		14.939152, 20.816404, -1.686575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.299734, 15.052710, 18.942598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.639099, 15.258854, 18.894266>,  <19.842718, 15.382541, 18.865267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.639099, 15.258854, 18.894266>,  <19.299734, 15.052710, 18.942598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.639099, 15.258854, 18.894266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132440, -0.014339, -0.991087,
		-0.512501, 0.856853, 0.056089,
		0.848412, 0.515361, -0.120830,
		19.893623, 15.413463, 18.858017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113266, 15.451607, 18.378447>,  <19.299734, 15.052710, 18.942598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113266, 15.451607, 18.378447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.511684, 15.486851, 18.373966>,  <19.750736, 15.507997, 18.371277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.511684, 15.486851, 18.373966>,  <19.113266, 15.451607, 18.378447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511684, 15.486851, 18.373966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016501, 0.059645, -0.998083,
		-0.087272, 0.994324, 0.060863,
		0.996048, 0.088109, -0.011202,
		19.810499, 15.513284, 18.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.377123, 16.164295, 18.118706>,  <19.113266, 15.451607, 18.378447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.377123, 16.164295, 18.118706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.664803, 15.890659, 18.070080>,  <19.837410, 15.726479, 18.040905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.664803, 15.890659, 18.070080>,  <19.377123, 16.164295, 18.118706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664803, 15.890659, 18.070080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104317, 0.066663, -0.992307,
		0.686929, 0.726347, -0.023418,
		0.719198, -0.684088, -0.121564,
		19.880562, 15.685433, 18.033611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628820, 16.356218, 17.501732>,  <19.377123, 16.164295, 18.118706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628820, 16.356218, 17.501732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.814552, 16.003544, 17.535271>,  <19.925991, 15.791940, 17.555393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.814552, 16.003544, 17.535271>,  <19.628820, 16.356218, 17.501732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814552, 16.003544, 17.535271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084661, -0.050052, -0.995152,
		0.881607, 0.469177, 0.051404,
		0.464329, -0.881685, 0.083847,
		19.953852, 15.739038, 17.560425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.200020, 16.353247, 17.049280>,  <19.628820, 16.356218, 17.501732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.200020, 16.353247, 17.049280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.137348, 15.966656, 17.130638>,  <20.099745, 15.734700, 17.179453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.137348, 15.966656, 17.130638>,  <20.200020, 16.353247, 17.049280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.137348, 15.966656, 17.130638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064821, -0.215557, -0.974338,
		0.985520, -0.139472, 0.096421,
		-0.156677, -0.966480, 0.203395,
		20.090345, 15.676712, 17.191656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703262, 16.033152, 16.622530>,  <20.200020, 16.353247, 17.049280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.703262, 16.033152, 16.622530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.397804, 15.786175, 16.698019>,  <20.214529, 15.637989, 16.743313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.397804, 15.786175, 16.698019>,  <20.703262, 16.033152, 16.622530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.397804, 15.786175, 16.698019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073842, -0.206865, -0.975579,
		0.641402, -0.758930, 0.112378,
		-0.763644, -0.617440, 0.188724,
		20.168711, 15.600943, 16.754637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.907892, 15.460342, 16.121099>,  <20.703262, 16.033152, 16.622530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.907892, 15.460342, 16.121099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.528595, 15.413765, 16.239269>,  <20.301016, 15.385818, 16.310171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.528595, 15.413765, 16.239269>,  <20.907892, 15.460342, 16.121099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528595, 15.413765, 16.239269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266942, -0.211542, -0.940208,
		0.171974, -0.970408, 0.169510,
		-0.948244, -0.116443, 0.295422,
		20.244122, 15.378832, 16.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680883, 14.797573, 15.783787>,  <20.907892, 15.460342, 16.121099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680883, 14.797573, 15.783787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.369816, 15.041382, 15.845387>,  <20.183176, 15.187667, 15.882348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.369816, 15.041382, 15.845387>,  <20.680883, 14.797573, 15.783787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369816, 15.041382, 15.845387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280195, -0.116752, -0.952817,
		-0.562782, -0.784125, 0.261579,
		-0.777667, 0.609522, 0.154002,
		20.136515, 15.224238, 15.891588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147730, 14.381454, 15.597865>,  <20.680883, 14.797573, 15.783787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147730, 14.381454, 15.597865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.008152, 14.756260, 15.591611>,  <19.924406, 14.981143, 15.587858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.008152, 14.756260, 15.591611>,  <20.147730, 14.381454, 15.597865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.008152, 14.756260, 15.591611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287226, -0.122814, -0.949957,
		-0.892043, -0.326990, 0.311990,
		-0.348943, 0.937014, -0.015636,
		19.903469, 15.037364, 15.586920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.553993, 14.374955, 15.134790>,  <20.147730, 14.381454, 15.597865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.553993, 14.374955, 15.134790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.653564, 14.761066, 15.166469>,  <19.713306, 14.992733, 15.185475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.653564, 14.761066, 15.166469>,  <19.553993, 14.374955, 15.134790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653564, 14.761066, 15.166469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017703, 0.086291, -0.996113,
		-0.968360, 0.246558, 0.038568,
		0.248928, 0.965279, 0.079196,
		19.728243, 15.050650, 15.190228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021601, 14.792654, 14.765483>,  <19.553993, 14.374955, 15.134790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021601, 14.792654, 14.765483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.353176, 15.015808, 14.781600>,  <19.552122, 15.149700, 14.791270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.353176, 15.015808, 14.781600>,  <19.021601, 14.792654, 14.765483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353176, 15.015808, 14.781600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083416, 0.194535, -0.977342,
		-0.553082, 0.806797, 0.207794,
		0.828940, 0.557884, 0.040293,
		19.601858, 15.183173, 14.793688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943153, 15.435172, 14.415041>,  <19.021601, 14.792654, 14.765483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943153, 15.435172, 14.415041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.336910, 15.368549, 14.437791>,  <19.573164, 15.328576, 14.451441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.336910, 15.368549, 14.437791>,  <18.943153, 15.435172, 14.415041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336910, 15.368549, 14.437791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096955, 0.243497, -0.965043,
		0.146886, 0.955494, 0.255845,
		0.984390, -0.166557, 0.056874,
		19.632227, 15.318583, 14.454853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198242, 15.974738, 14.071425>,  <18.943153, 15.435172, 14.415041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198242, 15.974738, 14.071425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.502224, 15.714794, 14.066493>,  <19.684612, 15.558827, 14.063534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.502224, 15.714794, 14.066493>,  <19.198242, 15.974738, 14.071425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502224, 15.714794, 14.066493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098275, 0.133636, -0.986146,
		0.642505, 0.748213, 0.165422,
		0.759953, -0.649861, -0.012331,
		19.730209, 15.519835, 14.062794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683392, 16.246496, 13.713463>,  <19.198242, 15.974738, 14.071425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683392, 16.246496, 13.713463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.811943, 15.868256, 13.693231>,  <19.889074, 15.641312, 13.681091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.811943, 15.868256, 13.693231>,  <19.683392, 16.246496, 13.713463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.811943, 15.868256, 13.693231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260573, 0.139660, -0.955299,
		0.910395, 0.293831, 0.291281,
		0.321377, -0.945599, -0.050582,
		19.908356, 15.584576, 13.678056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319603, 16.269905, 13.273197>,  <19.683392, 16.246496, 13.713463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319603, 16.269905, 13.273197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.163780, 15.901810, 13.288177>,  <20.070286, 15.680952, 13.297166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.163780, 15.901810, 13.288177>,  <20.319603, 16.269905, 13.273197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163780, 15.901810, 13.288177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014984, -0.046991, -0.998783,
		0.920881, -0.388522, 0.032094,
		-0.389557, -0.920241, 0.037451,
		20.046913, 15.625737, 13.299413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766685, 15.942179, 12.941153>,  <20.319603, 16.269905, 13.273197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766685, 15.942179, 12.941153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.429497, 15.727230, 12.931084>,  <20.227184, 15.598261, 12.925042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.429497, 15.727230, 12.931084>,  <20.766685, 15.942179, 12.941153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429497, 15.727230, 12.931084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008664, 0.033227, -0.999410,
		0.537891, -0.842691, -0.023354,
		-0.842970, -0.537371, -0.025173,
		20.176605, 15.566019, 12.923532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927307, 15.338243, 12.414058>,  <20.766685, 15.942179, 12.941153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927307, 15.338243, 12.414058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.528614, 15.315399, 12.436889>,  <20.289398, 15.301693, 12.450587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.528614, 15.315399, 12.436889>,  <20.927307, 15.338243, 12.414058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528614, 15.315399, 12.436889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059070, 0.033846, -0.997680,
		0.055042, -0.997794, -0.037109,
		-0.996735, -0.057107, 0.057077,
		20.229593, 15.298266, 12.454012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677853, 14.821246, 11.907517>,  <20.927307, 15.338243, 12.414058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.677853, 14.821246, 11.907517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.361637, 15.053059, 11.986704>,  <20.171907, 15.192146, 12.034216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.361637, 15.053059, 11.986704>,  <20.677853, 14.821246, 11.907517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.361637, 15.053059, 11.986704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200661, 0.060293, -0.977804,
		-0.578604, -0.812716, 0.068626,
		-0.790539, 0.579532, 0.197966,
		20.124475, 15.226918, 12.046094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324305, 14.644449, 11.244038>,  <20.677853, 14.821246, 11.907517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324305, 14.644449, 11.244038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.103806, 14.933037, 11.411661>,  <19.971506, 15.106190, 11.512236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.103806, 14.933037, 11.411661>,  <20.324305, 14.644449, 11.244038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103806, 14.933037, 11.411661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539488, 0.074923, -0.838654,
		-0.636459, -0.688382, 0.347922,
		-0.551247, 0.721469, 0.419059,
		19.938431, 15.149477, 11.537378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541338, 14.510110, 11.011275>,  <20.324305, 14.644449, 11.244038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541338, 14.510110, 11.011275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.611191, 14.890209, 11.114450>,  <19.653103, 15.118269, 11.176355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.611191, 14.890209, 11.114450>,  <19.541338, 14.510110, 11.011275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611191, 14.890209, 11.114450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565263, 0.311246, -0.763939,
		-0.806214, -0.012397, 0.591493,
		0.174630, 0.950248, 0.257939,
		19.663580, 15.175283, 11.191833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841614, 14.948930, 11.024164>,  <19.541338, 14.510110, 11.011275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841614, 14.948930, 11.024164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.139042, 15.209763, 10.964978>,  <19.317499, 15.366262, 10.929467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.139042, 15.209763, 10.964978>,  <18.841614, 14.948930, 11.024164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139042, 15.209763, 10.964978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468719, 0.350495, -0.810836,
		-0.476871, 0.672267, 0.566261,
		0.743570, 0.652082, -0.147964,
		19.362112, 15.405387, 10.920589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536800, 15.573627, 10.878869>,  <18.841614, 14.948930, 11.024164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.536800, 15.573627, 10.878869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.909603, 15.637413, 10.748679>,  <19.133286, 15.675685, 10.670565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.909603, 15.637413, 10.748679>,  <18.536800, 15.573627, 10.878869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909603, 15.637413, 10.748679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362154, 0.445468, -0.818781,
		0.014422, 0.880982, 0.472930,
		0.932007, 0.159465, -0.325476,
		19.189205, 15.685252, 10.651036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916824, 15.681185, 10.305087>,  <18.536800, 15.573627, 10.878869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916824, 15.681185, 10.305087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.547012, 15.538052, 10.252630>,  <17.325125, 15.452172, 10.221156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.547012, 15.538052, 10.252630>,  <17.916824, 15.681185, 10.305087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547012, 15.538052, 10.252630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095193, -0.116376, 0.988633,
		-0.369027, 0.926506, 0.073530,
		-0.924531, -0.357832, -0.131143,
		17.269653, 15.430702, 10.213287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424879, 16.144558, 10.684058>,  <17.916824, 15.681185, 10.305087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424879, 16.144558, 10.684058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.268997, 15.783081, 10.613097>,  <17.175468, 15.566195, 10.570520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.268997, 15.783081, 10.613097>,  <17.424879, 16.144558, 10.684058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268997, 15.783081, 10.613097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096186, -0.151638, 0.983745,
		-0.915904, 0.400432, -0.027829,
		-0.389704, -0.903692, -0.177402,
		17.152086, 15.511973, 10.559876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789114, 16.059397, 11.050879>,  <17.424879, 16.144558, 10.684058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789114, 16.059397, 11.050879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.910988, 15.684494, 10.983100>,  <16.984112, 15.459552, 10.942432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.910988, 15.684494, 10.983100>,  <16.789114, 16.059397, 11.050879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910988, 15.684494, 10.983100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188442, -0.233711, 0.953870,
		-0.933625, -0.258700, -0.247827,
		0.304687, -0.937258, -0.169448,
		17.002394, 15.403316, 10.932265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380558, 15.621185, 11.351461>,  <16.789114, 16.059397, 11.050879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380558, 15.621185, 11.351461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.681564, 15.358704, 11.329130>,  <16.862167, 15.201215, 11.315731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.681564, 15.358704, 11.329130>,  <16.380558, 15.621185, 11.351461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681564, 15.358704, 11.329130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123614, -0.224004, 0.966717,
		-0.646869, -0.720568, -0.249683,
		0.752515, -0.656204, -0.055829,
		16.907318, 15.161842, 11.312382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133438, 14.933502, 11.584794>,  <16.380558, 15.621185, 11.351461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133438, 14.933502, 11.584794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.531105, 14.913864, 11.623197>,  <16.769705, 14.902081, 11.646238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.531105, 14.913864, 11.623197>,  <16.133438, 14.933502, 11.584794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531105, 14.913864, 11.623197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102645, -0.158061, 0.982080,
		-0.033038, -0.986208, -0.162179,
		0.994169, -0.049093, 0.096007,
		16.829355, 14.899136, 11.651999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289452, 14.420421, 12.092790>,  <16.133438, 14.933502, 11.584794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.289452, 14.420421, 12.092790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.633778, 14.623848, 12.085273>,  <16.840374, 14.745905, 12.080763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.633778, 14.623848, 12.085273>,  <16.289452, 14.420421, 12.092790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633778, 14.623848, 12.085273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122327, -0.170931, 0.977660,
		0.493996, -0.843884, -0.209352,
		0.860816, 0.508570, -0.018791,
		16.892023, 14.776419, 12.079636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.638556, 14.124791, 12.585604>,  <16.289452, 14.420421, 12.092790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.638556, 14.124791, 12.585604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.860863, 14.452381, 12.528466>,  <16.994247, 14.648935, 12.494184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.860863, 14.452381, 12.528466>,  <16.638556, 14.124791, 12.585604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860863, 14.452381, 12.528466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213905, 0.025166, 0.976530,
		0.803348, -0.573278, -0.161196,
		0.555767, 0.818974, -0.142844,
		17.027594, 14.698073, 12.485613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212896, 14.062856, 13.009074>,  <16.638556, 14.124791, 12.585604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212896, 14.062856, 13.009074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.177544, 14.457695, 12.955666>,  <17.156332, 14.694598, 12.923620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.177544, 14.457695, 12.955666>,  <17.212896, 14.062856, 13.009074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177544, 14.457695, 12.955666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134931, 0.144675, 0.980236,
		0.986906, 0.068618, -0.145976,
		-0.088380, 0.987097, -0.133521,
		17.151030, 14.753824, 12.915609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743454, 14.362660, 13.393727>,  <17.212896, 14.062856, 13.009074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.743454, 14.362660, 13.393727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478870, 14.657459, 13.338150>,  <17.320120, 14.834339, 13.304804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478870, 14.657459, 13.338150>,  <17.743454, 14.362660, 13.393727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478870, 14.657459, 13.338150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042963, 0.222195, 0.974055,
		0.748749, 0.638329, -0.178637,
		-0.661460, 0.736997, -0.138944,
		17.280432, 14.878558, 13.296467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053885, 14.919637, 13.736095>,  <17.743454, 14.362660, 13.393727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.053885, 14.919637, 13.736095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.670300, 15.023418, 13.690358>,  <17.440149, 15.085688, 13.662916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.670300, 15.023418, 13.690358>,  <18.053885, 14.919637, 13.736095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670300, 15.023418, 13.690358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048635, 0.246776, 0.967852,
		0.279330, 0.933695, -0.224030,
		-0.958963, 0.259454, -0.114342,
		17.382610, 15.101254, 13.656055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027594, 15.566395, 14.005103>,  <18.053885, 14.919637, 13.736095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027594, 15.566395, 14.005103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.641441, 15.463120, 13.990237>,  <17.409750, 15.401155, 13.981318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.641441, 15.463120, 13.990237>,  <18.027594, 15.566395, 14.005103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641441, 15.463120, 13.990237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113988, 0.289401, 0.950397,
		-0.234626, 0.921730, -0.308812,
		-0.965379, -0.258189, -0.037165,
		17.351828, 15.385663, 13.979088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677067, 16.201797, 14.208110>,  <18.027594, 15.566395, 14.005103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677067, 16.201797, 14.208110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.444855, 15.883953, 14.279193>,  <17.305527, 15.693247, 14.321842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.444855, 15.883953, 14.279193>,  <17.677067, 16.201797, 14.208110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444855, 15.883953, 14.279193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253954, 0.384060, 0.887696,
		-0.773622, 0.470206, -0.424753,
		-0.580531, -0.794609, 0.177707,
		17.270695, 15.645570, 14.332505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072260, 16.467224, 14.558285>,  <17.677067, 16.201797, 14.208110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.072260, 16.467224, 14.558285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.072388, 16.081661, 14.664777>,  <17.072464, 15.850323, 14.728672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.072388, 16.081661, 14.664777>,  <17.072260, 16.467224, 14.558285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072388, 16.081661, 14.664777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168135, 0.262389, 0.950202,
		-0.985764, -0.045067, -0.161983,
		0.000320, -0.963909, 0.266231,
		17.072483, 15.792488, 14.744646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609943, 16.451588, 15.162655>,  <17.072260, 16.467224, 14.558285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609943, 16.451588, 15.162655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798515, 16.099659, 15.186883>,  <16.911659, 15.888502, 15.201420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798515, 16.099659, 15.186883>,  <16.609943, 16.451588, 15.162655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798515, 16.099659, 15.186883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017758, 0.059196, 0.998088,
		-0.881725, -0.471604, 0.012283,
		0.471430, -0.879821, 0.060570,
		16.939945, 15.835712, 15.205054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.264883, 16.055029, 15.677382>,  <16.609943, 16.451588, 15.162655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.264883, 16.055029, 15.677382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.628422, 15.897034, 15.623740>,  <16.846544, 15.802237, 15.591556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.628422, 15.897034, 15.623740>,  <16.264883, 16.055029, 15.677382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628422, 15.897034, 15.623740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117569, -0.065893, 0.990876,
		-0.400222, -0.916319, -0.013448,
		0.908845, -0.394989, -0.134103,
		16.901075, 15.778537, 15.583509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334185, 15.504249, 16.228537>,  <16.264883, 16.055029, 15.677382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334185, 15.504249, 16.228537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.710400, 15.599911, 16.132042>,  <16.936129, 15.657308, 16.074146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.710400, 15.599911, 16.132042>,  <16.334185, 15.504249, 16.228537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.710400, 15.599911, 16.132042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284157, -0.164792, 0.944510,
		0.186131, -0.956895, -0.222951,
		0.940537, 0.239155, -0.241235,
		16.992561, 15.671658, 16.059671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837324, 14.966067, 16.348026>,  <16.334185, 15.504249, 16.228537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837324, 14.966067, 16.348026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.029709, 15.315746, 16.374718>,  <17.145140, 15.525554, 16.390732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.029709, 15.315746, 16.374718>,  <16.837324, 14.966067, 16.348026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029709, 15.315746, 16.374718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304199, -0.237775, 0.922456,
		0.822276, -0.423368, -0.380291,
		0.480962, 0.874198, 0.066728,
		17.173998, 15.578006, 16.394735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349903, 14.732974, 16.861284>,  <16.837324, 14.966067, 16.348026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349903, 14.732974, 16.861284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.406132, 15.128036, 16.833643>,  <17.439869, 15.365074, 16.817059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.406132, 15.128036, 16.833643>,  <17.349903, 14.732974, 16.861284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406132, 15.128036, 16.833643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332851, 0.018590, 0.942796,
		0.932443, -0.155531, -0.326130,
		0.140571, 0.987656, -0.069103,
		17.448303, 15.424334, 16.812912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.073462, 14.903322, 17.230207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.840385, 15.228371, 17.225870>,  <17.700539, 15.423400, 17.223269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.840385, 15.228371, 17.225870>,  <18.073462, 14.903322, 17.230207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840385, 15.228371, 17.225870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235470, 0.181585, 0.954768,
		0.777833, 0.553783, -0.297156,
		-0.582693, 0.812620, -0.010844,
		17.665577, 15.472157, 17.222616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480267, 15.446992, 17.568026>,  <18.073462, 14.903322, 17.230207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480267, 15.446992, 17.568026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.089756, 15.513821, 17.623116>,  <17.855450, 15.553918, 17.656170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.089756, 15.513821, 17.623116>,  <18.480267, 15.446992, 17.568026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089756, 15.513821, 17.623116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181256, 0.282691, 0.941930,
		0.118437, 0.944549, -0.306267,
		-0.976278, 0.167072, 0.137724,
		17.796873, 15.563942, 17.664433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452173, 16.008511, 17.985100>,  <18.480267, 15.446992, 17.568026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452173, 16.008511, 17.985100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.084198, 15.855232, 18.018257>,  <17.863413, 15.763266, 18.038153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.084198, 15.855232, 18.018257>,  <18.452173, 16.008511, 17.985100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084198, 15.855232, 18.018257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049527, 0.096159, 0.994133,
		-0.388917, 0.918649, -0.069482,
		-0.919940, -0.383194, 0.082895,
		17.808216, 15.740273, 18.043125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285437, 16.335361, 18.604706>,  <18.452173, 16.008511, 17.985100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285437, 16.335361, 18.604706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.978027, 16.080917, 18.577181>,  <17.793581, 15.928251, 18.560665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.978027, 16.080917, 18.577181>,  <18.285437, 16.335361, 18.604706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978027, 16.080917, 18.577181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007151, -0.116083, 0.993214,
		-0.639781, 0.762816, 0.093762,
		-0.768524, -0.636110, -0.068813,
		17.747471, 15.890084, 18.556538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834383, 16.521204, 19.198549>,  <18.285437, 16.335361, 18.604706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834383, 16.521204, 19.198549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.758160, 16.149529, 19.071871>,  <17.712425, 15.926523, 18.995863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.758160, 16.149529, 19.071871>,  <17.834383, 16.521204, 19.198549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758160, 16.149529, 19.071871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046342, -0.330765, 0.942575,
		-0.980582, 0.164938, 0.106090,
		-0.190558, -0.929188, -0.316698,
		17.700993, 15.870772, 18.976862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.210285, 16.177708, 19.556372>,  <17.834383, 16.521204, 19.198549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.210285, 16.177708, 19.556372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.430626, 15.872330, 19.421486>,  <17.562830, 15.689103, 19.340555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.430626, 15.872330, 19.421486>,  <17.210285, 16.177708, 19.556372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430626, 15.872330, 19.421486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002788, -0.405722, 0.913992,
		-0.834599, -0.502533, -0.225621,
		0.550851, -0.763446, -0.337215,
		17.595881, 15.643296, 19.320322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826424, 15.614589, 19.893227>,  <17.210285, 16.177708, 19.556372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826424, 15.614589, 19.893227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.188877, 15.491966, 19.776644>,  <17.406349, 15.418393, 19.706694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.188877, 15.491966, 19.776644>,  <16.826424, 15.614589, 19.893227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188877, 15.491966, 19.776644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090132, -0.533276, 0.841126,
		-0.413278, -0.788442, -0.455589,
		0.906133, -0.306556, -0.291455,
		17.460716, 15.400000, 19.689207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801125, 14.826422, 19.958845>,  <16.826424, 15.614589, 19.893227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801125, 14.826422, 19.958845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.173367, 14.971893, 19.942299>,  <17.396711, 15.059176, 19.932371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.173367, 14.971893, 19.942299>,  <16.801125, 14.826422, 19.958845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173367, 14.971893, 19.942299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268375, -0.601111, 0.752755,
		0.248896, -0.711620, -0.657000,
		0.930605, 0.363680, -0.041367,
		17.452549, 15.080997, 19.929888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204367, 14.282741, 19.969366>,  <16.801125, 14.826422, 19.958845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204367, 14.282741, 19.969366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.435875, 14.575214, 20.113806>,  <17.574780, 14.750699, 20.200470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.435875, 14.575214, 20.113806>,  <17.204367, 14.282741, 19.969366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435875, 14.575214, 20.113806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224799, -0.568695, 0.791234,
		0.783893, -0.376769, -0.493515,
		0.578772, 0.731184, 0.361099,
		17.609507, 14.794570, 20.222136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788189, 13.890418, 20.337210>,  <17.204367, 14.282741, 19.969366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788189, 13.890418, 20.337210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.796650, 14.264168, 20.479475>,  <17.801727, 14.488418, 20.564835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.796650, 14.264168, 20.479475>,  <17.788189, 13.890418, 20.337210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.796650, 14.264168, 20.479475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170503, -0.353905, 0.919609,
		0.985130, 0.041188, -0.166800,
		0.021155, 0.934374, 0.355665,
		17.802996, 14.544480, 20.586174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219173, 13.815366, 20.853588>,  <17.788189, 13.890418, 20.337210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219173, 13.815366, 20.853588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.000008, 14.141926, 20.926563>,  <17.868509, 14.337862, 20.970348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.000008, 14.141926, 20.926563>,  <18.219173, 13.815366, 20.853588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.000008, 14.141926, 20.926563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101714, -0.151452, 0.983217,
		0.830329, 0.557273, -0.000057,
		-0.547912, 0.816400, 0.182438,
		17.835634, 14.386846, 20.981295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553564, 14.257019, 21.422649>,  <18.219173, 13.815366, 20.853588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553564, 14.257019, 21.422649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.176453, 14.388996, 21.403450>,  <17.950186, 14.468183, 21.391930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.176453, 14.388996, 21.403450>,  <18.553564, 14.257019, 21.422649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176453, 14.388996, 21.403450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058296, -0.021380, 0.998070,
		0.328280, 0.943759, 0.039391,
		-0.942780, 0.329943, -0.047999,
		17.893620, 14.487979, 21.389050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568501, 14.726787, 21.989248>,  <18.553564, 14.257019, 21.422649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568501, 14.726787, 21.989248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.185207, 14.642048, 21.912397>,  <17.955233, 14.591205, 21.866287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.185207, 14.642048, 21.912397>,  <18.568501, 14.726787, 21.989248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185207, 14.642048, 21.912397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165408, -0.137506, 0.976592,
		-0.233307, 0.967581, 0.096721,
		-0.958232, -0.211848, -0.192127,
		17.897738, 14.578493, 21.854759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133148, 15.186260, 22.514486>,  <18.568501, 14.726787, 21.989248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133148, 15.186260, 22.514486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.898087, 14.883640, 22.399738>,  <17.757050, 14.702068, 22.330889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.898087, 14.883640, 22.399738>,  <18.133148, 15.186260, 22.514486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898087, 14.883640, 22.399738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340587, -0.090311, 0.935866,
		-0.733936, 0.647671, -0.204599,
		-0.587656, -0.756549, -0.286870,
		17.721790, 14.656675, 22.313677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386547, 15.375863, 22.650881>,  <18.133148, 15.186260, 22.514486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386547, 15.375863, 22.650881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.422329, 14.978081, 22.628765>,  <17.443798, 14.739411, 22.615496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.422329, 14.978081, 22.628765>,  <17.386547, 15.375863, 22.650881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422329, 14.978081, 22.628765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392913, -0.086246, 0.915522,
		-0.915214, -0.060174, -0.398450,
		0.089456, -0.994455, -0.055290,
		17.449165, 14.679745, 22.612179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705374, 15.149035, 22.871330>,  <17.386547, 15.375863, 22.650881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705374, 15.149035, 22.871330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.934559, 14.823647, 22.911276>,  <17.072071, 14.628413, 22.935244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.934559, 14.823647, 22.911276>,  <16.705374, 15.149035, 22.871330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934559, 14.823647, 22.911276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397786, -0.169483, 0.901688,
		-0.716574, -0.556360, -0.420696,
		0.572964, -0.813474, 0.099865,
		17.106449, 14.579604, 22.941235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223724, 14.697649, 23.088947>,  <16.705374, 15.149035, 22.871330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223724, 14.697649, 23.088947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.592361, 14.590092, 23.200922>,  <16.813543, 14.525558, 23.268106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.592361, 14.590092, 23.200922>,  <16.223724, 14.697649, 23.088947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592361, 14.590092, 23.200922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294564, -0.014814, 0.955517,
		-0.252786, -0.963056, -0.092859,
		0.921592, -0.268894, 0.279937,
		16.868839, 14.509423, 23.284903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113886, 14.100672, 23.431408>,  <16.223724, 14.697649, 23.088947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113886, 14.100672, 23.431408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.452694, 14.286362, 23.534988>,  <16.655979, 14.397776, 23.597137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.452694, 14.286362, 23.534988>,  <16.113886, 14.100672, 23.431408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452694, 14.286362, 23.534988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274647, -0.034893, 0.960912,
		0.455114, -0.885030, 0.097942,
		0.847018, 0.464224, 0.258951,
		16.706799, 14.425629, 23.612675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090879, 13.948009, 24.071896>,  <16.113886, 14.100672, 23.431408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090879, 13.948009, 24.071896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.375820, 14.228706, 24.067669>,  <16.546783, 14.397125, 24.065132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.375820, 14.228706, 24.067669>,  <16.090879, 13.948009, 24.071896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375820, 14.228706, 24.067669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194930, 0.212298, 0.957566,
		0.674211, -0.680061, 0.288021,
		0.712350, 0.701745, -0.010569,
		16.589525, 14.439230, 24.064499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506243, 13.861823, 24.630537>,  <16.090879, 13.948009, 24.071896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506243, 13.861823, 24.630537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.542042, 14.249397, 24.538317>,  <16.563522, 14.481942, 24.482985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.542042, 14.249397, 24.538317>,  <16.506243, 13.861823, 24.630537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542042, 14.249397, 24.538317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123162, 0.240470, 0.962811,
		0.988343, -0.057775, 0.140858,
		0.089498, 0.968936, -0.230551,
		16.568892, 14.540078, 24.469152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120638, 14.126909, 24.981714>,  <16.506243, 13.861823, 24.630537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120638, 14.126909, 24.981714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.853676, 14.417862, 24.917858>,  <16.693499, 14.592434, 24.879545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.853676, 14.417862, 24.917858>,  <17.120638, 14.126909, 24.981714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853676, 14.417862, 24.917858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017597, 0.198905, 0.979861,
		0.744486, 0.656775, -0.119951,
		-0.667406, 0.727382, -0.159639,
		16.653454, 14.636076, 24.869967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332050, 14.640998, 25.505205>,  <17.120638, 14.126909, 24.981714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332050, 14.640998, 25.505205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.972340, 14.754456, 25.372032>,  <16.756514, 14.822530, 25.292128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.972340, 14.754456, 25.372032>,  <17.332050, 14.640998, 25.505205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972340, 14.754456, 25.372032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157478, 0.500172, 0.851486,
		0.408042, 0.818153, -0.405127,
		-0.899279, 0.283643, -0.332932,
		16.702557, 14.839548, 25.272152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267622, 15.417819, 25.545059>,  <17.332050, 14.640998, 25.505205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.267622, 15.417819, 25.545059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.906124, 15.249344, 25.575642>,  <16.689226, 15.148259, 25.593992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.906124, 15.249344, 25.575642>,  <17.267622, 15.417819, 25.545059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906124, 15.249344, 25.575642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052874, 0.287075, 0.956448,
		-0.424793, 0.860342, -0.281713,
		-0.903745, -0.421188, 0.076458,
		16.635000, 15.122988, 25.598579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736074, 15.937099, 25.710667>,  <17.267622, 15.417819, 25.545059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736074, 15.937099, 25.710667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.621826, 15.570606, 25.823050>,  <16.553276, 15.350710, 25.890478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.621826, 15.570606, 25.823050>,  <16.736074, 15.937099, 25.710667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621826, 15.570606, 25.823050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197449, 0.343140, 0.918297,
		-0.937782, 0.206811, -0.278918,
		-0.285622, -0.916234, 0.280956,
		16.536140, 15.295736, 25.907337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394053, 16.427086, 25.526508>,  <16.736074, 15.937099, 25.710667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394053, 16.427086, 25.526508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.740170, 16.497337, 25.714306>,  <17.947840, 16.539488, 25.826984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.740170, 16.497337, 25.714306>,  <17.394053, 16.427086, 25.526508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740170, 16.497337, 25.714306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444124, 0.165674, -0.880515,
		-0.232427, 0.970416, 0.065355,
		0.865293, 0.175629, 0.469492,
		17.999758, 16.550026, 25.855154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635704, 16.994776, 25.229250>,  <17.394053, 16.427086, 25.526508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635704, 16.994776, 25.229250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.952320, 16.823799, 25.403952>,  <18.142290, 16.721212, 25.508774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.952320, 16.823799, 25.403952>,  <17.635704, 16.994776, 25.229250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952320, 16.823799, 25.403952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548726, 0.182528, -0.815833,
		0.269001, 0.885425, 0.379027,
		0.791542, -0.427442, 0.436755,
		18.189783, 16.695566, 25.534979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298899, 17.486370, 25.017719>,  <17.635704, 16.994776, 25.229250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298899, 17.486370, 25.017719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.435497, 17.134548, 25.150244>,  <18.517456, 16.923454, 25.229757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.435497, 17.134548, 25.150244>,  <18.298899, 17.486370, 25.017719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435497, 17.134548, 25.150244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704289, 0.006047, -0.709887,
		0.622380, 0.475761, 0.621526,
		0.341495, -0.879554, 0.331310,
		18.537947, 16.870682, 25.249636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.012506, 17.535795, 25.300127>,  <18.298899, 17.486370, 25.017719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.012506, 17.535795, 25.300127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.961113, 17.154987, 25.189022>,  <18.930277, 16.926502, 25.122358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.961113, 17.154987, 25.189022>,  <19.012506, 17.535795, 25.300127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961113, 17.154987, 25.189022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631592, 0.137383, -0.763032,
		0.764580, -0.273470, 0.583636,
		-0.128485, -0.952019, -0.277762,
		18.922567, 16.869381, 25.105694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667622, 17.349102, 25.045120>,  <19.012506, 17.535795, 25.300127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667622, 17.349102, 25.045120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.443493, 17.047737, 24.907478>,  <19.309015, 16.866919, 24.824892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.443493, 17.047737, 24.907478>,  <19.667622, 17.349102, 25.045120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.443493, 17.047737, 24.907478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565730, -0.044677, -0.823380,
		0.604972, -0.656028, 0.451262,
		-0.560321, -0.753413, -0.344106,
		19.275396, 16.821712, 24.804247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.133076, 17.103781, 24.538626>,  <19.667622, 17.349102, 25.045120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.133076, 17.103781, 24.538626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.791695, 16.906303, 24.471832>,  <19.586866, 16.787817, 24.431755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.791695, 16.906303, 24.471832>,  <20.133076, 17.103781, 24.538626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.791695, 16.906303, 24.471832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338570, -0.281619, -0.897809,
		0.396217, -0.822774, 0.407498,
		-0.853453, -0.493694, -0.166985,
		19.535658, 16.758196, 24.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349936, 16.526989, 24.212618>,  <20.133076, 17.103781, 24.538626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349936, 16.526989, 24.212618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.965874, 16.564281, 24.107233>,  <19.735437, 16.586657, 24.044003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.965874, 16.564281, 24.107233>,  <20.349936, 16.526989, 24.212618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965874, 16.564281, 24.107233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264123, -0.005411, -0.964474,
		-0.091349, -0.995629, -0.019430,
		-0.960154, 0.093236, -0.263463,
		19.677828, 16.592251, 24.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212133, 16.129709, 23.595654>,  <20.349936, 16.526989, 24.212618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212133, 16.129709, 23.595654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.908028, 16.389183, 23.609577>,  <19.725565, 16.544867, 23.617931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.908028, 16.389183, 23.609577>,  <20.212133, 16.129709, 23.595654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908028, 16.389183, 23.609577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081599, 0.148520, -0.985537,
		-0.644471, -0.746426, -0.165846,
		-0.760262, 0.648683, 0.034809,
		19.679949, 16.583788, 23.620020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754848, 15.859722, 23.137056>,  <20.212133, 16.129709, 23.595654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754848, 15.859722, 23.137056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.666817, 16.247593, 23.179560>,  <19.613998, 16.480316, 23.205063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.666817, 16.247593, 23.179560>,  <19.754848, 15.859722, 23.137056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.666817, 16.247593, 23.179560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139611, 0.076500, -0.987247,
		-0.965440, -0.232108, 0.118541,
		-0.220079, 0.969677, 0.106260,
		19.600794, 16.538496, 23.211437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138065, 15.873417, 22.848259>,  <19.754848, 15.859722, 23.137056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138065, 15.873417, 22.848259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.315163, 16.231915, 22.859016>,  <19.421421, 16.447014, 22.865471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.315163, 16.231915, 22.859016>,  <19.138065, 15.873417, 22.848259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315163, 16.231915, 22.859016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030968, 0.045259, -0.998495,
		-0.896113, 0.441245, 0.047793,
		0.442744, 0.896245, 0.026893,
		19.447987, 16.500788, 22.867085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683924, 16.165598, 22.433290>,  <19.138065, 15.873417, 22.848259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.683924, 16.165598, 22.433290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.020233, 16.382145, 22.431732>,  <19.222019, 16.512074, 22.430798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.020233, 16.382145, 22.431732>,  <18.683924, 16.165598, 22.433290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020233, 16.382145, 22.431732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029182, -0.052506, -0.998194,
		-0.540597, 0.839144, -0.059944,
		0.840776, 0.541370, -0.003896,
		19.272467, 16.544556, 22.430563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567577, 16.684149, 21.808720>,  <18.683924, 16.165598, 22.433290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567577, 16.684149, 21.808720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.946461, 16.636379, 21.927736>,  <19.173792, 16.607718, 21.999146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.946461, 16.636379, 21.927736>,  <18.567577, 16.684149, 21.808720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946461, 16.636379, 21.927736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258553, -0.264237, -0.929155,
		0.189585, 0.957035, -0.219411,
		0.947211, -0.119425, 0.297539,
		19.230623, 16.600552, 22.016998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823990, 16.993166, 21.253851>,  <18.567577, 16.684149, 21.808720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823990, 16.993166, 21.253851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.129841, 16.801231, 21.425947>,  <19.313351, 16.686071, 21.529205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.129841, 16.801231, 21.425947>,  <18.823990, 16.993166, 21.253851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.129841, 16.801231, 21.425947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465792, -0.049924, -0.883485,
		0.445405, 0.875938, 0.185330,
		0.764625, -0.479834, 0.430241,
		19.359228, 16.657282, 21.555019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357037, 17.325401, 20.988953>,  <18.823990, 16.993166, 21.253851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.357037, 17.325401, 20.988953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.497410, 16.967857, 21.100565>,  <19.581635, 16.753330, 21.167532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.497410, 16.967857, 21.100565>,  <19.357037, 17.325401, 20.988953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.497410, 16.967857, 21.100565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497425, -0.074513, -0.864301,
		0.793356, 0.442111, 0.418479,
		0.350935, -0.893860, 0.279032,
		19.602690, 16.699699, 21.184275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015463, 17.250704, 20.733574>,  <19.357037, 17.325401, 20.988953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015463, 17.250704, 20.733574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.917103, 16.873840, 20.824675>,  <19.858088, 16.647722, 20.879335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.917103, 16.873840, 20.824675>,  <20.015463, 17.250704, 20.733574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.917103, 16.873840, 20.824675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388737, -0.311100, -0.867237,
		0.887928, -0.124719, 0.442751,
		-0.245901, -0.942158, 0.227751,
		19.843332, 16.591192, 20.893000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662468, 16.851490, 20.670710>,  <20.015463, 17.250704, 20.733574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662468, 16.851490, 20.670710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.349590, 16.604134, 20.640339>,  <20.161863, 16.455719, 20.622116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.349590, 16.604134, 20.640339>,  <20.662468, 16.851490, 20.670710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349590, 16.604134, 20.640339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404297, -0.411069, -0.817047,
		0.474043, -0.669787, 0.571549,
		-0.782194, -0.618391, -0.075929,
		20.114931, 16.418617, 20.617559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847237, 16.189020, 20.497675>,  <20.662468, 16.851490, 20.670710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847237, 16.189020, 20.497675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.475655, 16.190128, 20.349604>,  <20.252705, 16.190794, 20.260761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.475655, 16.190128, 20.349604>,  <20.847237, 16.189020, 20.497675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.475655, 16.190128, 20.349604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301046, -0.576283, -0.759783,
		-0.215434, -0.817246, 0.534507,
		-0.928956, 0.002772, -0.370179,
		20.196968, 16.190960, 20.238550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673555, 15.472878, 20.207359>,  <20.847237, 16.189020, 20.497675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673555, 15.472878, 20.207359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.398937, 15.711483, 20.041069>,  <20.234167, 15.854646, 19.941294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.398937, 15.711483, 20.041069>,  <20.673555, 15.472878, 20.207359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.398937, 15.711483, 20.041069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092708, -0.495286, -0.863769,
		-0.721152, -0.631558, 0.284734,
		-0.686545, 0.596512, -0.415727,
		20.192974, 15.890436, 19.916351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.287840, 14.964850, 19.956078>,  <20.673555, 15.472878, 20.207359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.287840, 14.964850, 19.956078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.154415, 15.299557, 19.782383>,  <20.074360, 15.500381, 19.678167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.154415, 15.299557, 19.782383>,  <20.287840, 14.964850, 19.956078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154415, 15.299557, 19.782383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104109, -0.425101, -0.899139,
		-0.936962, -0.345125, 0.054682,
		-0.333561, 0.836766, -0.434234,
		20.054346, 15.550587, 19.652113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728537, 14.841913, 19.539345>,  <20.287840, 14.964850, 19.956078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728537, 14.841913, 19.539345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.843510, 15.186512, 19.371914>,  <19.912493, 15.393271, 19.271456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.843510, 15.186512, 19.371914>,  <19.728537, 14.841913, 19.539345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843510, 15.186512, 19.371914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092452, -0.410023, -0.907378,
		-0.953329, 0.299507, -0.038206,
		0.287431, 0.861497, -0.418576,
		19.929739, 15.444962, 19.246342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.505009, 14.591105, 14.557975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.726727, 14.915920, 14.484925>,  <16.859756, 15.110809, 14.441095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.726727, 14.915920, 14.484925>,  <16.505009, 14.591105, 14.557975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726727, 14.915920, 14.484925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102173, -0.151370, -0.983183,
		-0.826025, 0.563632, -0.000935,
		0.554295, 0.812038, -0.182624,
		16.893015, 15.159532, 14.430139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145708, 14.970101, 13.994453>,  <16.505009, 14.591105, 14.557975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145708, 14.970101, 13.994453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.520176, 15.110680, 13.997783>,  <16.744858, 15.195026, 13.999781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.520176, 15.110680, 13.997783>,  <16.145708, 14.970101, 13.994453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520176, 15.110680, 13.997783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009812, -0.002453, -0.999949,
		-0.351407, 0.936205, -0.005744,
		0.936171, 0.351445, 0.008324,
		16.801027, 15.216113, 14.000280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197550, 15.603094, 13.551052>,  <16.145708, 14.970101, 13.994453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197550, 15.603094, 13.551052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.563347, 15.445553, 13.588113>,  <16.782825, 15.351028, 13.610350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.563347, 15.445553, 13.588113>,  <16.197550, 15.603094, 13.551052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563347, 15.445553, 13.588113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081935, -0.043980, -0.995667,
		0.396220, 0.918121, -0.007949,
		0.914492, -0.393852, 0.092652,
		16.837694, 15.327397, 13.615909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624674, 16.017595, 13.143254>,  <16.197550, 15.603094, 13.551052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.624674, 16.017595, 13.143254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.781246, 15.651257, 13.179050>,  <16.875191, 15.431454, 13.200528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.781246, 15.651257, 13.179050>,  <16.624674, 16.017595, 13.143254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.781246, 15.651257, 13.179050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237445, 0.006568, -0.971379,
		0.889045, 0.401478, 0.220034,
		0.391433, -0.915845, 0.089489,
		16.898676, 15.376503, 13.205897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178293, 16.024780, 12.657516>,  <16.624674, 16.017595, 13.143254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178293, 16.024780, 12.657516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.125710, 15.636375, 12.737370>,  <17.094160, 15.403333, 12.785282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.125710, 15.636375, 12.737370>,  <17.178293, 16.024780, 12.657516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125710, 15.636375, 12.737370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362535, -0.234523, -0.901980,
		0.922652, -0.046198, 0.382856,
		-0.131458, -0.971012, 0.199635,
		17.086271, 15.345072, 12.797260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746849, 15.773108, 12.502850>,  <17.178293, 16.024780, 12.657516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746849, 15.773108, 12.502850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.518768, 15.445148, 12.482306>,  <17.381920, 15.248373, 12.469979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.518768, 15.445148, 12.482306>,  <17.746849, 15.773108, 12.502850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518768, 15.445148, 12.482306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318427, -0.162954, -0.933836,
		0.757280, -0.548830, 0.353994,
		-0.570203, -0.819897, -0.051360,
		17.347708, 15.199180, 12.466897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034809, 15.393752, 12.017107>,  <17.746849, 15.773108, 12.502850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034809, 15.393752, 12.017107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.692268, 15.189342, 12.046807>,  <17.486744, 15.066697, 12.064628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.692268, 15.189342, 12.046807>,  <18.034809, 15.393752, 12.017107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692268, 15.189342, 12.046807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081316, -0.275443, -0.957872,
		0.509948, -0.814239, 0.277431,
		-0.856353, -0.511024, 0.074251,
		17.435362, 15.036036, 12.069082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177519, 14.792208, 11.603123>,  <18.034809, 15.393752, 12.017107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177519, 14.792208, 11.603123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.779472, 14.827374, 11.621060>,  <17.540644, 14.848474, 11.631824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.779472, 14.827374, 11.621060>,  <18.177519, 14.792208, 11.603123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.779472, 14.827374, 11.621060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044114, 0.010246, -0.998974,
		-0.088287, -0.996075, -0.006318,
		-0.995118, 0.087918, 0.044845,
		17.480936, 14.853748, 11.634514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886044, 14.369891, 11.116680>,  <18.177519, 14.792208, 11.603123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886044, 14.369891, 11.116680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.567177, 14.601406, 11.185416>,  <17.375856, 14.740315, 11.226658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.567177, 14.601406, 11.185416>,  <17.886044, 14.369891, 11.116680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.567177, 14.601406, 11.185416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184121, 0.038011, -0.982168,
		-0.574998, -0.814592, 0.076266,
		-0.797168, 0.578787, 0.171840,
		17.328026, 14.775043, 11.236968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.254261, 14.155308, 10.662034>,  <17.886044, 14.369891, 11.116680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.254261, 14.155308, 10.662034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.224182, 14.540096, 10.767071>,  <17.206135, 14.770969, 10.830092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.224182, 14.540096, 10.767071>,  <17.254261, 14.155308, 10.662034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224182, 14.540096, 10.767071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289051, 0.231003, -0.929025,
		-0.954356, -0.145762, 0.260689,
		-0.075197, 0.961972, 0.262592,
		17.201624, 14.828688, 10.845848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701942, 14.258112, 10.344473>,  <17.254261, 14.155308, 10.662034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701942, 14.258112, 10.344473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.850388, 14.622292, 10.417532>,  <16.939455, 14.840799, 10.461368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.850388, 14.622292, 10.417532>,  <16.701942, 14.258112, 10.344473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850388, 14.622292, 10.417532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205913, 0.272482, -0.939869,
		-0.905470, 0.311187, 0.288594,
		0.371111, 0.910449, 0.182647,
		16.961721, 14.895426, 10.472326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163761, 14.745402, 10.052978>,  <16.701942, 14.258112, 10.344473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163761, 14.745402, 10.052978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.518211, 14.928455, 10.082248>,  <16.730881, 15.038287, 10.099810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.518211, 14.928455, 10.082248>,  <16.163761, 14.745402, 10.052978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518211, 14.928455, 10.082248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190303, 0.503271, -0.842913,
		-0.422571, 0.733002, 0.533050,
		0.886126, 0.457632, 0.073176,
		16.784050, 15.065744, 10.104200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071175, 15.470176, 10.018125>,  <16.163761, 14.745402, 10.052978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071175, 15.470176, 10.018125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.428276, 15.342583, 9.890850>,  <16.642536, 15.266026, 9.814486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.428276, 15.342583, 9.890850>,  <16.071175, 15.470176, 10.018125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428276, 15.342583, 9.890850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200852, 0.350394, -0.914813,
		0.403301, 0.880610, 0.248747,
		0.892752, -0.318983, -0.318186,
		16.696102, 15.246887, 9.795394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640808, 16.065458, 9.781396>,  <16.071175, 15.470176, 10.018125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640808, 16.065458, 9.781396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.679787, 15.713337, 9.595678>,  <16.703173, 15.502064, 9.484248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.679787, 15.713337, 9.595678>,  <16.640808, 16.065458, 9.781396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679787, 15.713337, 9.595678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207074, 0.438370, -0.874615,
		0.973460, 0.181370, -0.139572,
		0.097445, -0.880305, -0.464293,
		16.709021, 15.449245, 9.456390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.082792, 16.595036, 9.388014>,  <16.640808, 16.065458, 9.781396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.082792, 16.595036, 9.388014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.991885, 16.981606, 9.340064>,  <15.937341, 17.213549, 9.311294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.991885, 16.981606, 9.340064>,  <16.082792, 16.595036, 9.388014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991885, 16.981606, 9.340064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496343, 0.220861, 0.839562,
		0.837850, 0.131306, -0.529874,
		-0.227268, 0.966426, -0.119875,
		15.923705, 17.271534, 9.304101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716068, 16.989170, 9.568850>,  <16.082792, 16.595036, 9.388014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716068, 16.989170, 9.568850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.390266, 17.215275, 9.621096>,  <16.194786, 17.350939, 9.652443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.390266, 17.215275, 9.621096>,  <16.716068, 16.989170, 9.568850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390266, 17.215275, 9.621096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310318, 0.234259, 0.921317,
		0.490190, 0.790948, -0.366216,
		-0.814504, 0.565264, 0.130614,
		16.145916, 17.384853, 9.660280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999474, 17.551998, 10.137697>,  <16.716068, 16.989170, 9.568850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999474, 17.551998, 10.137697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.604645, 17.615246, 10.127194>,  <16.367748, 17.653194, 10.120893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.604645, 17.615246, 10.127194>,  <16.999474, 17.551998, 10.137697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.604645, 17.615246, 10.127194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019800, 0.282853, 0.958959,
		0.159056, 0.946041, -0.282326,
		-0.987071, 0.158118, -0.026258,
		16.308523, 17.662682, 10.119317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875671, 18.288248, 10.396079>,  <16.999474, 17.551998, 10.137697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875671, 18.288248, 10.396079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.545830, 18.064381, 10.429054>,  <16.347925, 17.930059, 10.448839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.545830, 18.064381, 10.429054>,  <16.875671, 18.288248, 10.396079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545830, 18.064381, 10.429054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028136, 0.186118, 0.982124,
		-0.565009, 0.807545, -0.169221,
		-0.824605, -0.559670, 0.082437,
		16.298449, 17.896479, 10.453786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457542, 18.777103, 10.790997>,  <16.875671, 18.288248, 10.396079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457542, 18.777103, 10.790997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.306477, 18.409382, 10.835264>,  <16.215837, 18.188749, 10.861825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.306477, 18.409382, 10.835264>,  <16.457542, 18.777103, 10.790997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306477, 18.409382, 10.835264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042989, 0.136800, 0.989665,
		-0.924945, 0.369002, -0.091185,
		-0.377662, -0.919306, 0.110669,
		16.193178, 18.133591, 10.868465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884667, 18.850395, 11.208580>,  <16.457542, 18.777103, 10.790997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884667, 18.850395, 11.208580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.025505, 18.477737, 11.244511>,  <16.110008, 18.254143, 11.266069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.025505, 18.477737, 11.244511>,  <15.884667, 18.850395, 11.208580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025505, 18.477737, 11.244511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033649, 0.108511, 0.993526,
		-0.935360, -0.346791, 0.069555,
		0.352094, -0.931644, 0.089828,
		16.131134, 18.198244, 11.271459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359630, 18.505056, 11.634604>,  <15.884667, 18.850395, 11.208580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359630, 18.505056, 11.634604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.712956, 18.319000, 11.657907>,  <15.924953, 18.207367, 11.671889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.712956, 18.319000, 11.657907>,  <15.359630, 18.505056, 11.634604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712956, 18.319000, 11.657907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080610, -0.028290, 0.996344,
		-0.461792, -0.884784, -0.062484,
		0.883317, -0.465141, 0.058259,
		15.977952, 18.179459, 11.675385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247921, 18.066925, 12.167551>,  <15.359630, 18.505056, 11.634604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247921, 18.066925, 12.167551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.645192, 18.054226, 12.122666>,  <15.883554, 18.046606, 12.095736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.645192, 18.054226, 12.122666>,  <15.247921, 18.066925, 12.167551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645192, 18.054226, 12.122666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110637, -0.047661, 0.992717,
		-0.036836, -0.998360, -0.043827,
		0.993178, -0.031719, -0.112211,
		15.943146, 18.044703, 12.089003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387676, 17.682537, 12.682266>,  <15.247921, 18.066925, 12.167551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387676, 17.682537, 12.682266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.747321, 17.835827, 12.597661>,  <15.963108, 17.927801, 12.546898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.747321, 17.835827, 12.597661>,  <15.387676, 17.682537, 12.682266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747321, 17.835827, 12.597661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222478, 0.016051, 0.974806,
		0.376963, -0.923516, -0.070826,
		0.899112, 0.383223, -0.211513,
		16.017056, 17.950794, 12.534207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.905971, 17.166985, 12.928651>,  <15.387676, 17.682537, 12.682266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.905971, 17.166985, 12.928651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.085869, 17.524220, 12.933042>,  <16.193808, 17.738562, 12.935676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.085869, 17.524220, 12.933042>,  <15.905971, 17.166985, 12.928651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085869, 17.524220, 12.933042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058093, -0.041513, 0.997448,
		0.891265, -0.447961, -0.070553,
		0.449746, 0.893089, 0.010976,
		16.220793, 17.792147, 12.936335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561613, 17.210648, 13.386043>,  <15.905971, 17.166985, 12.928651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.561613, 17.210648, 13.386043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.486710, 17.602867, 13.362509>,  <16.441767, 17.838198, 13.348389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.486710, 17.602867, 13.362509>,  <16.561613, 17.210648, 13.386043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486710, 17.602867, 13.362509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175025, 0.092240, 0.980234,
		0.966592, 0.173259, -0.188893,
		-0.187258, 0.980547, -0.058834,
		16.430532, 17.897032, 13.344858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.960693, 17.408892, 13.896138>,  <16.561613, 17.210648, 13.386043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.960693, 17.408892, 13.896138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.738995, 17.734661, 13.827409>,  <16.605974, 17.930122, 13.786171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.738995, 17.734661, 13.827409>,  <16.960693, 17.408892, 13.896138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738995, 17.734661, 13.827409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133601, 0.290802, 0.947410,
		0.821559, 0.502144, -0.269984,
		-0.554248, 0.814423, -0.171824,
		16.572720, 17.978989, 13.775862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305721, 17.841227, 14.244600>,  <16.960693, 17.408892, 13.896138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305721, 17.841227, 14.244600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.955048, 18.026638, 14.193112>,  <16.744644, 18.137884, 14.162220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.955048, 18.026638, 14.193112>,  <17.305721, 17.841227, 14.244600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955048, 18.026638, 14.193112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040283, 0.337365, 0.940511,
		0.479377, 0.819346, -0.314435,
		-0.876684, 0.463526, -0.128720,
		16.692043, 18.165695, 14.154496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367111, 18.672335, 14.376738>,  <17.305721, 17.841227, 14.244600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367111, 18.672335, 14.376738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.001446, 18.525070, 14.444577>,  <16.782047, 18.436712, 14.485281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.001446, 18.525070, 14.444577>,  <17.367111, 18.672335, 14.376738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001446, 18.525070, 14.444577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000218, 0.418852, 0.908055,
		-0.405346, 0.830073, -0.382979,
		-0.914163, -0.368160, 0.169599,
		16.727198, 18.414621, 14.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169868, 19.333954, 14.161268>,  <17.367111, 18.672335, 14.376738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169868, 19.333954, 14.161268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.368183, 19.681175, 14.171657>,  <17.487173, 19.889509, 14.177890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.368183, 19.681175, 14.171657>,  <17.169868, 19.333954, 14.161268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368183, 19.681175, 14.171657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389601, -0.195593, -0.899975,
		-0.776147, 0.456316, -0.435168,
		0.495789, 0.868055, 0.025972,
		17.516920, 19.941591, 14.179448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224245, 19.390919, 13.521148>,  <17.169868, 19.333954, 14.161268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224245, 19.390919, 13.521148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.466255, 19.684589, 13.644389>,  <17.611462, 19.860792, 13.718334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.466255, 19.684589, 13.644389>,  <17.224245, 19.390919, 13.521148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466255, 19.684589, 13.644389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591613, -0.155558, -0.791072,
		-0.532859, 0.660897, -0.528466,
		0.605024, 0.734178, 0.308105,
		17.647762, 19.904842, 13.736820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322725, 19.735413, 12.929353>,  <17.224245, 19.390919, 13.521148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322725, 19.735413, 12.929353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.618568, 19.852951, 13.171554>,  <17.796074, 19.923473, 13.316875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.618568, 19.852951, 13.171554>,  <17.322725, 19.735413, 12.929353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618568, 19.852951, 13.171554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661190, -0.149174, -0.735238,
		-0.125722, 0.944141, -0.304618,
		0.739609, 0.293846, 0.605502,
		17.840452, 19.941105, 13.353204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713804, 20.158474, 12.514630>,  <17.322725, 19.735413, 12.929353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713804, 20.158474, 12.514630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.972996, 20.034466, 12.792914>,  <18.128511, 19.960062, 12.959885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.972996, 20.034466, 12.792914>,  <17.713804, 20.158474, 12.514630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972996, 20.034466, 12.792914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666208, -0.212038, -0.714988,
		0.369176, 0.926784, 0.069141,
		0.647979, -0.310018, 0.695710,
		18.167389, 19.941460, 13.001627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432602, 20.415545, 12.347067>,  <17.713804, 20.158474, 12.514630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432602, 20.415545, 12.347067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.464539, 20.089497, 12.576571>,  <18.483700, 19.893867, 12.714274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.464539, 20.089497, 12.576571>,  <18.432602, 20.415545, 12.347067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464539, 20.089497, 12.576571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707941, -0.358849, -0.608314,
		0.701744, 0.454757, 0.548409,
		0.079839, -0.815122, 0.573761,
		18.488491, 19.844959, 12.748700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223406, 20.373766, 12.457189>,  <18.432602, 20.415545, 12.347067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.223406, 20.373766, 12.457189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.045280, 20.023861, 12.533593>,  <18.938406, 19.813917, 12.579435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.045280, 20.023861, 12.533593>,  <19.223406, 20.373766, 12.457189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045280, 20.023861, 12.533593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602373, -0.450528, -0.658917,
		0.662452, -0.178365, 0.727560,
		-0.445314, -0.874763, 0.191011,
		18.911686, 19.761433, 12.590897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722284, 19.953026, 12.427493>,  <19.223406, 20.373766, 12.457189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722284, 19.953026, 12.427493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.425282, 19.687527, 12.391438>,  <19.247080, 19.528227, 12.369804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.425282, 19.687527, 12.391438>,  <19.722284, 19.953026, 12.427493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425282, 19.687527, 12.391438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481270, -0.435031, -0.761004,
		0.465902, -0.608430, 0.642455,
		-0.742506, -0.663747, -0.090138,
		19.202530, 19.488403, 12.364396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051846, 19.389036, 12.378091>,  <19.722284, 19.953026, 12.427493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051846, 19.389036, 12.378091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.693707, 19.308144, 12.219368>,  <19.478823, 19.259607, 12.124134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.693707, 19.308144, 12.219368>,  <20.051846, 19.389036, 12.378091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693707, 19.308144, 12.219368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431764, -0.612669, -0.661979,
		-0.109238, -0.764028, 0.635868,
		-0.895347, -0.202231, -0.396807,
		19.425102, 19.247475, 12.100326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088434, 18.688124, 12.222280>,  <20.051846, 19.389036, 12.378091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088434, 18.688124, 12.222280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.768112, 18.805481, 12.013423>,  <19.575920, 18.875895, 11.888109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.768112, 18.805481, 12.013423>,  <20.088434, 18.688124, 12.222280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768112, 18.805481, 12.013423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241711, -0.639331, -0.729953,
		-0.547985, -0.710757, 0.441063,
		-0.800805, 0.293393, -0.522142,
		19.527870, 18.893499, 11.856780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760546, 18.103151, 12.031847>,  <20.088434, 18.688124, 12.222280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760546, 18.103151, 12.031847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.642262, 18.375969, 11.764303>,  <19.571291, 18.539660, 11.603777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.642262, 18.375969, 11.764303>,  <19.760546, 18.103151, 12.031847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.642262, 18.375969, 11.764303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256845, -0.617624, -0.743351,
		-0.920101, -0.391609, 0.007458,
		-0.295710, 0.682043, -0.668860,
		19.553549, 18.580582, 11.563645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281525, 17.676208, 11.637527>,  <19.760546, 18.103151, 12.031847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281525, 17.676208, 11.637527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.397114, 17.992161, 11.421164>,  <19.466467, 18.181732, 11.291346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.397114, 17.992161, 11.421164>,  <19.281525, 17.676208, 11.637527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397114, 17.992161, 11.421164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231328, -0.605882, -0.761180,
		-0.928969, 0.094833, -0.357804,
		0.288971, 0.789883, -0.540908,
		19.483805, 18.229126, 11.258891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761505, 17.807337, 11.077266>,  <19.281525, 17.676208, 11.637527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761505, 17.807337, 11.077266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.150227, 17.874104, 11.010645>,  <19.383459, 17.914164, 10.970673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.150227, 17.874104, 11.010645>,  <18.761505, 17.807337, 11.077266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150227, 17.874104, 11.010645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074052, -0.454552, -0.887637,
		-0.223869, 0.874940, -0.429374,
		0.971802, 0.166919, -0.166551,
		19.441767, 17.924179, 10.960680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.013775, 19.878124, 17.638664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387959, 20.009602, 17.690630>,  <16.612469, 20.088488, 17.721809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387959, 20.009602, 17.690630>,  <16.013775, 19.878124, 17.638664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.387959, 20.009602, 17.690630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021170, 0.314804, -0.948921,
		-0.352801, 0.890427, 0.287527,
		0.935459, 0.328693, 0.129913,
		16.668596, 20.108210, 17.729605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.926347, 20.638031, 17.442142>,  <16.013775, 19.878124, 17.638664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.926347, 20.638031, 17.442142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314541, 20.545551, 17.414703>,  <16.547457, 20.490063, 17.398239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314541, 20.545551, 17.414703>,  <15.926347, 20.638031, 17.442142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314541, 20.545551, 17.414703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014799, 0.341004, -0.939946,
		0.240707, 0.911188, 0.334360,
		0.970485, -0.231200, -0.068598,
		16.605686, 20.476191, 17.394125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260031, 21.174227, 17.061672>,  <15.926347, 20.638031, 17.442142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260031, 21.174227, 17.061672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561550, 20.916645, 17.009350>,  <16.742462, 20.762096, 16.977957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561550, 20.916645, 17.009350>,  <16.260031, 21.174227, 17.061672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561550, 20.916645, 17.009350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063329, 0.269328, -0.960964,
		0.654047, 0.716090, 0.243800,
		0.753799, -0.643955, -0.130804,
		16.787689, 20.723459, 16.970108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789585, 21.519142, 16.550892>,  <16.260031, 21.174227, 17.061672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789585, 21.519142, 16.550892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847538, 21.123402, 16.545330>,  <16.882309, 20.885958, 16.541994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847538, 21.123402, 16.545330>,  <16.789585, 21.519142, 16.550892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847538, 21.123402, 16.545330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233746, 0.047877, -0.971118,
		0.961443, 0.137448, 0.238194,
		0.144882, -0.989351, -0.013903,
		16.891003, 20.826595, 16.541159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439123, 21.476730, 16.305599>,  <16.789585, 21.519142, 16.550892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439123, 21.476730, 16.305599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277962, 21.116108, 16.242517>,  <17.181265, 20.899734, 16.204668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277962, 21.116108, 16.242517>,  <17.439123, 21.476730, 16.305599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277962, 21.116108, 16.242517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362252, 0.001156, -0.932079,
		0.840502, -0.432666, 0.326124,
		-0.402902, -0.901554, -0.157706,
		17.157091, 20.845642, 16.195206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921801, 21.061043, 15.879021>,  <17.439123, 21.476730, 16.305599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.921801, 21.061043, 15.879021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585995, 20.845634, 15.850150>,  <17.384512, 20.716389, 15.832828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585995, 20.845634, 15.850150>,  <17.921801, 21.061043, 15.879021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.585995, 20.845634, 15.850150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257311, -0.277051, -0.925761,
		0.478546, -0.795762, 0.371156,
		-0.839514, -0.538521, -0.072177,
		17.334141, 20.684078, 15.828497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128866, 20.398848, 15.663674>,  <17.921801, 21.061043, 15.879021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128866, 20.398848, 15.663674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747295, 20.447388, 15.553910>,  <17.518353, 20.476511, 15.488052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747295, 20.447388, 15.553910>,  <18.128866, 20.398848, 15.663674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.747295, 20.447388, 15.553910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236036, -0.261123, -0.936003,
		-0.185236, -0.957648, 0.220450,
		-0.953926, 0.121348, -0.274409,
		17.461119, 20.483793, 15.471587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.905415, 19.768753, 15.396469>,  <18.128866, 20.398848, 15.663674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.905415, 19.768753, 15.396469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667171, 20.033943, 15.215045>,  <17.524225, 20.193058, 15.106191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667171, 20.033943, 15.215045>,  <17.905415, 19.768753, 15.396469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667171, 20.033943, 15.215045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327880, -0.314807, -0.890725,
		-0.733312, -0.679235, -0.029876,
		-0.595607, 0.662975, -0.453559,
		17.488489, 20.232836, 15.078978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525160, 19.402327, 14.857097>,  <17.905415, 19.768753, 15.396469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525160, 19.402327, 14.857097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525326, 19.784943, 14.740455>,  <17.525425, 20.014511, 14.670469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525326, 19.784943, 14.740455>,  <17.525160, 19.402327, 14.857097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525326, 19.784943, 14.740455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189531, -0.286394, -0.939178,
		-0.981875, -0.054877, -0.181413,
		0.000416, 0.956539, -0.291604,
		17.525450, 20.071905, 14.652973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811617, 19.352049, 15.012195>,  <17.525160, 19.402327, 14.857097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811617, 19.352049, 15.012195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592449, 19.020687, 14.965669>,  <16.460949, 18.821871, 14.937754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592449, 19.020687, 14.965669>,  <16.811617, 19.352049, 15.012195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592449, 19.020687, 14.965669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380467, 0.122952, 0.916585,
		-0.745002, 0.546469, -0.382549,
		-0.547920, -0.828405, -0.116314,
		16.428074, 18.772165, 14.930775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110434, 19.468996, 15.237684>,  <16.811617, 19.352049, 15.012195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110434, 19.468996, 15.237684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201988, 19.081444, 15.275386>,  <16.256922, 18.848913, 15.298007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201988, 19.081444, 15.275386>,  <16.110434, 19.468996, 15.237684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.201988, 19.081444, 15.275386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334379, 0.012679, 0.942353,
		-0.914221, -0.247211, -0.321071,
		0.228889, -0.968879, 0.094253,
		16.270655, 18.790781, 15.303662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515108, 19.234688, 15.603403>,  <16.110434, 19.468996, 15.237684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515108, 19.234688, 15.603403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776626, 18.936214, 15.653628>,  <15.933536, 18.757130, 15.683764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776626, 18.936214, 15.653628>,  <15.515108, 19.234688, 15.603403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776626, 18.936214, 15.653628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553233, -0.358176, 0.752093,
		-0.516225, -0.561179, -0.646986,
		0.653793, -0.746183, 0.125563,
		15.972764, 18.712360, 15.691298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113117, 18.715342, 15.689254>,  <15.515108, 19.234688, 15.603403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113117, 18.715342, 15.689254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463773, 18.592930, 15.837766>,  <15.674167, 18.519484, 15.926873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463773, 18.592930, 15.837766>,  <15.113117, 18.715342, 15.689254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463773, 18.592930, 15.837766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479335, -0.488575, 0.729062,
		-0.041716, -0.817093, -0.574995,
		0.876640, -0.306029, 0.371280,
		15.726765, 18.501122, 15.949149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981185, 18.048058, 15.962265>,  <15.113117, 18.715342, 15.689254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981185, 18.048058, 15.962265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321176, 18.159584, 16.141062>,  <15.525170, 18.226500, 16.248341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321176, 18.159584, 16.141062>,  <14.981185, 18.048058, 15.962265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.321176, 18.159584, 16.141062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335787, -0.367063, 0.867474,
		0.405941, -0.887426, -0.218372,
		0.849976, 0.278817, 0.446992,
		15.576168, 18.243229, 16.275160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296103, 17.503262, 16.202362>,  <14.981185, 18.048058, 15.962265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296103, 17.503262, 16.202362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423470, 17.802494, 16.435251>,  <15.499891, 17.982035, 16.574984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423470, 17.802494, 16.435251>,  <15.296103, 17.503262, 16.202362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423470, 17.802494, 16.435251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128615, -0.574417, 0.808396,
		0.939184, -0.332291, -0.086690,
		0.318419, 0.748083, 0.582221,
		15.518996, 18.026918, 16.609917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532948, 17.142176, 16.789751>,  <15.296103, 17.503262, 16.202362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532948, 17.142176, 16.789751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524091, 17.513268, 16.938789>,  <15.518776, 17.735922, 17.028214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524091, 17.513268, 16.938789>,  <15.532948, 17.142176, 16.789751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524091, 17.513268, 16.938789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124287, -0.372352, 0.919732,
		0.991999, -0.025941, 0.123550,
		-0.022145, 0.927729, 0.372597,
		15.517447, 17.791586, 17.050568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974193, 17.189369, 17.412279>,  <15.532948, 17.142176, 16.789751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974193, 17.189369, 17.412279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705638, 17.484165, 17.443481>,  <15.544505, 17.661043, 17.462202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705638, 17.484165, 17.443481>,  <15.974193, 17.189369, 17.412279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705638, 17.484165, 17.443481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205164, -0.285974, 0.936016,
		0.712142, 0.612426, 0.343203,
		-0.671388, 0.736990, 0.078006,
		15.504222, 17.705261, 17.466883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097401, 17.592014, 18.023302>,  <15.974193, 17.189369, 17.412279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097401, 17.592014, 18.023302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719811, 17.704990, 17.955013>,  <15.493258, 17.772776, 17.914040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719811, 17.704990, 17.955013>,  <16.097401, 17.592014, 18.023302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719811, 17.704990, 17.955013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284203, -0.432729, 0.855555,
		0.167767, 0.856139, 0.488754,
		-0.943972, 0.282440, -0.170720,
		15.436620, 17.789722, 17.903797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863017, 18.043650, 18.542774>,  <16.097401, 17.592014, 18.023302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863017, 18.043650, 18.542774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521340, 17.902458, 18.390059>,  <15.316335, 17.817743, 18.298429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521340, 17.902458, 18.390059>,  <15.863017, 18.043650, 18.542774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521340, 17.902458, 18.390059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314775, -0.233379, 0.920028,
		-0.413853, 0.906057, 0.088241,
		-0.854191, -0.352980, -0.381789,
		15.265083, 17.796564, 18.275522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.417594, 18.356070, 18.938648>,  <15.863017, 18.043650, 18.542774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.417594, 18.356070, 18.938648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229373, 18.044880, 18.772116>,  <15.116440, 17.858166, 18.672195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229373, 18.044880, 18.772116>,  <15.417594, 18.356070, 18.938648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229373, 18.044880, 18.772116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317026, -0.291266, 0.902584,
		-0.823453, 0.556702, -0.109583,
		-0.470553, -0.777976, -0.416333,
		15.088207, 17.811487, 18.647217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.940018, 18.353880, 19.366079>,  <15.417594, 18.356070, 18.938648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.940018, 18.353880, 19.366079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905608, 17.994068, 19.194759>,  <14.884962, 17.778181, 19.091967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905608, 17.994068, 19.194759>,  <14.940018, 18.353880, 19.366079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.905608, 17.994068, 19.194759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436666, -0.352363, 0.827746,
		-0.895501, 0.258232, -0.362483,
		-0.086025, -0.899531, -0.428302,
		14.879801, 17.724209, 19.066269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.160523, 18.099648, 19.473337>,  <14.940018, 18.353880, 19.366079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.160523, 18.099648, 19.473337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401921, 17.786182, 19.414459>,  <14.546760, 17.598103, 19.379133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401921, 17.786182, 19.414459>,  <14.160523, 18.099648, 19.473337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.401921, 17.786182, 19.414459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390083, -0.451165, 0.802674,
		-0.695435, -0.426991, -0.577970,
		0.603494, -0.783664, -0.147194,
		14.582970, 17.551083, 19.370300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724142, 17.437777, 19.581755>,  <14.160523, 18.099648, 19.473337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724142, 17.437777, 19.581755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106683, 17.328777, 19.623968>,  <14.336207, 17.263378, 19.649296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106683, 17.328777, 19.623968>,  <13.724142, 17.437777, 19.581755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106683, 17.328777, 19.623968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220892, -0.437684, 0.871573,
		-0.191311, -0.856842, -0.478772,
		0.956350, -0.272498, 0.105536,
		14.393588, 17.247028, 19.655628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.693859, 18.021881, 20.454445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.371120, 18.252239, 20.401764>,  <21.177477, 18.390453, 20.370155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.371120, 18.252239, 20.401764>,  <21.693859, 18.021881, 20.454445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.371120, 18.252239, 20.401764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050514, -0.154866, -0.986643,
		-0.588598, -0.802722, 0.095863,
		-0.806846, 0.575894, -0.131702,
		21.129066, 18.425007, 20.362253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232706, 17.594584, 20.190880>,  <21.693859, 18.021881, 20.454445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232706, 17.594584, 20.190880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.106941, 17.965008, 20.107403>,  <21.031483, 18.187263, 20.057316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.106941, 17.965008, 20.107403>,  <21.232706, 17.594584, 20.190880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.106941, 17.965008, 20.107403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067475, -0.197486, -0.977981,
		-0.946885, -0.321571, -0.000394,
		-0.314413, 0.926062, -0.208694,
		21.012617, 18.242826, 20.044794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.572187, 17.482912, 19.861044>,  <21.232706, 17.594584, 20.190880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.572187, 17.482912, 19.861044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.737030, 17.836166, 19.771391>,  <20.835936, 18.048119, 19.717600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.737030, 17.836166, 19.771391>,  <20.572187, 17.482912, 19.861044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.737030, 17.836166, 19.771391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222839, -0.140829, -0.964629,
		-0.883465, 0.447476, 0.138761,
		0.412107, 0.883138, -0.224133,
		20.860662, 18.101109, 19.704151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127430, 17.744343, 19.307852>,  <20.572187, 17.482912, 19.861044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127430, 17.744343, 19.307852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.463219, 17.959736, 19.278671>,  <20.664692, 18.088972, 19.261162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.463219, 17.959736, 19.278671>,  <20.127430, 17.744343, 19.307852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463219, 17.959736, 19.278671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156479, 0.110981, -0.981426,
		-0.520384, 0.835297, 0.177427,
		0.839473, 0.538482, -0.072954,
		20.715061, 18.121281, 19.256784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978596, 18.314085, 18.858486>,  <20.127430, 17.744343, 19.307852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978596, 18.314085, 18.858486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.373589, 18.251137, 18.854147>,  <20.610584, 18.213367, 18.851543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.373589, 18.251137, 18.854147>,  <19.978596, 18.314085, 18.858486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373589, 18.251137, 18.854147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014892, -0.024545, -0.999588,
		0.157039, 0.987235, -0.026582,
		0.987480, -0.157370, -0.010847,
		20.669832, 18.203926, 18.850893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129578, 18.612839, 18.252035>,  <19.978596, 18.314085, 18.858486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129578, 18.612839, 18.252035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.465046, 18.418518, 18.350523>,  <20.666327, 18.301926, 18.409616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.465046, 18.418518, 18.350523>,  <20.129578, 18.612839, 18.252035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465046, 18.418518, 18.350523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263998, -0.032809, -0.963965,
		0.476376, 0.873452, 0.100735,
		0.838672, -0.485803, 0.246219,
		20.716648, 18.272778, 18.424389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.594255, 18.848686, 17.798059>,  <20.129578, 18.612839, 18.252035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.594255, 18.848686, 17.798059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.763081, 18.496117, 17.882870>,  <20.864376, 18.284575, 17.933756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.763081, 18.496117, 17.882870>,  <20.594255, 18.848686, 17.798059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763081, 18.496117, 17.882870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124694, -0.175214, -0.976602,
		0.897951, 0.438625, 0.035957,
		0.422062, -0.881424, 0.212027,
		20.889700, 18.231689, 17.946478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191004, 18.828064, 17.356548>,  <20.594255, 18.848686, 17.798059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191004, 18.828064, 17.356548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.133289, 18.451897, 17.479702>,  <21.098661, 18.226196, 17.553595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.133289, 18.451897, 17.479702>,  <21.191004, 18.828064, 17.356548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133289, 18.451897, 17.479702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264749, -0.336483, -0.903707,
		0.953462, -0.048879, 0.297525,
		-0.144284, -0.940420, 0.307883,
		21.090004, 18.169771, 17.572067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861315, 18.422379, 17.272747>,  <21.191004, 18.828064, 17.356548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861315, 18.422379, 17.272747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.554211, 18.166225, 17.264181>,  <21.369949, 18.012533, 17.259041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.554211, 18.166225, 17.264181>,  <21.861315, 18.422379, 17.272747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.554211, 18.166225, 17.264181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279816, -0.305032, -0.910307,
		0.576411, -0.704888, 0.413380,
		-0.767758, -0.640381, -0.021416,
		21.323883, 17.974112, 17.257757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185585, 17.841894, 17.018923>,  <21.861315, 18.422379, 17.272747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185585, 17.841894, 17.018923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.791798, 17.793663, 16.967876>,  <21.555525, 17.764725, 16.937248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.791798, 17.793663, 16.967876>,  <22.185585, 17.841894, 17.018923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.791798, 17.793663, 16.967876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164751, -0.383236, -0.908838,
		0.060677, -0.915746, 0.397149,
		-0.984467, -0.120577, -0.127617,
		21.496458, 17.757490, 16.929592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120371, 17.228291, 16.713331>,  <22.185585, 17.841894, 17.018923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120371, 17.228291, 16.713331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.779671, 17.423271, 16.636482>,  <21.575251, 17.540258, 16.590372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.779671, 17.423271, 16.636482>,  <22.120371, 17.228291, 16.713331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.779671, 17.423271, 16.636482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090813, -0.498482, -0.862130,
		-0.516021, -0.716871, 0.468848,
		-0.851749, 0.487455, -0.192126,
		21.524145, 17.569506, 16.578846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.674150, 16.768639, 16.501781>,  <22.120371, 17.228291, 16.713331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.674150, 16.768639, 16.501781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.557201, 17.112362, 16.333921>,  <21.487032, 17.318596, 16.233206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.557201, 17.112362, 16.333921>,  <21.674150, 16.768639, 16.501781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.557201, 17.112362, 16.333921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066220, -0.455963, -0.887531,
		-0.954009, -0.231699, 0.190214,
		-0.292371, 0.859309, -0.419650,
		21.469490, 17.370155, 16.208027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250252, 16.485909, 16.047798>,  <21.674150, 16.768639, 16.501781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250252, 16.485909, 16.047798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.310371, 16.865067, 15.935441>,  <21.346443, 17.092562, 15.868026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.310371, 16.865067, 15.935441>,  <21.250252, 16.485909, 16.047798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.310371, 16.865067, 15.935441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122683, -0.264044, -0.956677,
		-0.980999, 0.178249, 0.076605,
		0.150300, 0.947897, -0.280895,
		21.355461, 17.149435, 15.851172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.739912, 16.658810, 15.506402>,  <21.250252, 16.485909, 16.047798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.739912, 16.658810, 15.506402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.086155, 16.858593, 15.492169>,  <21.293901, 16.978462, 15.483629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.086155, 16.858593, 15.492169>,  <20.739912, 16.658810, 15.506402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.086155, 16.858593, 15.492169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160998, -0.344904, -0.924727,
		-0.474135, 0.794722, -0.378964,
		0.865607, 0.499458, -0.035583,
		21.345837, 17.008430, 15.481495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095600, 16.274601, 15.243590>,  <20.739912, 16.658810, 15.506402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095600, 16.274601, 15.243590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.947563, 15.903358, 15.227324>,  <19.858742, 15.680614, 15.217566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.947563, 15.903358, 15.227324>,  <20.095600, 16.274601, 15.243590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947563, 15.903358, 15.227324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207222, 0.039804, 0.977484,
		-0.905589, 0.370186, -0.207055,
		-0.370092, -0.928105, -0.040664,
		19.836536, 15.624928, 15.215125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.493017, 16.264462, 15.751227>,  <20.095600, 16.274601, 15.243590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.493017, 16.264462, 15.751227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.623745, 15.892193, 15.685458>,  <19.702183, 15.668831, 15.645996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.623745, 15.892193, 15.685458>,  <19.493017, 16.264462, 15.751227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623745, 15.892193, 15.685458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017042, -0.168145, 0.985615,
		-0.944933, -0.324922, -0.039093,
		0.326821, -0.930673, -0.164423,
		19.721792, 15.612991, 15.636131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117016, 15.862595, 16.209915>,  <19.493017, 16.264462, 15.751227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117016, 15.862595, 16.209915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.432297, 15.639732, 16.105366>,  <19.621466, 15.506015, 16.042637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.432297, 15.639732, 16.105366>,  <19.117016, 15.862595, 16.209915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432297, 15.639732, 16.105366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125536, -0.270219, 0.954580,
		-0.602478, -0.785213, -0.143044,
		0.788201, -0.557156, -0.261374,
		19.668756, 15.472586, 16.026953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.022070, 15.185737, 16.610891>,  <19.117016, 15.862595, 16.209915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.022070, 15.185737, 16.610891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.406170, 15.241463, 16.514135>,  <19.636629, 15.274899, 16.456081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.406170, 15.241463, 16.514135>,  <19.022070, 15.185737, 16.610891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406170, 15.241463, 16.514135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254379, -0.079920, 0.963797,
		0.114940, -0.987018, -0.112183,
		0.960250, 0.139315, -0.241890,
		19.694244, 15.283257, 16.441568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.292225, 14.718886, 16.924681>,  <19.022070, 15.185737, 16.610891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.292225, 14.718886, 16.924681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.578747, 14.992626, 16.870163>,  <19.750660, 15.156870, 16.837452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.578747, 14.992626, 16.870163>,  <19.292225, 14.718886, 16.924681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.578747, 14.992626, 16.870163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171691, 0.016468, 0.985013,
		0.676338, -0.728968, -0.105700,
		0.716302, 0.684350, -0.136295,
		19.793638, 15.197931, 16.829275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882757, 14.420607, 17.208138>,  <19.292225, 14.718886, 16.924681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882757, 14.420607, 17.208138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.948532, 14.815155, 17.205954>,  <19.987997, 15.051885, 17.204643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.948532, 14.815155, 17.205954>,  <19.882757, 14.420607, 17.208138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948532, 14.815155, 17.205954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183322, -0.025124, 0.982732,
		0.969202, -0.162600, -0.184955,
		0.164439, 0.986372, -0.005457,
		19.997864, 15.111067, 17.204317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395288, 14.535376, 17.632803>,  <19.882757, 14.420607, 17.208138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395288, 14.535376, 17.632803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.270935, 14.915432, 17.623138>,  <20.196323, 15.143466, 17.617340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.270935, 14.915432, 17.623138>,  <20.395288, 14.535376, 17.632803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270935, 14.915432, 17.623138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134555, 0.069163, 0.988490,
		0.940875, 0.304053, -0.149348,
		-0.310883, 0.950141, -0.024162,
		20.177670, 15.200475, 17.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.942268, 14.916716, 17.950266>,  <20.395288, 14.535376, 17.632803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.942268, 14.916716, 17.950266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.611824, 15.141983, 17.958115>,  <20.413557, 15.277143, 17.962824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.611824, 15.141983, 17.958115>,  <20.942268, 14.916716, 17.950266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.611824, 15.141983, 17.958115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129718, 0.156167, 0.979176,
		0.548376, 0.811452, -0.202064,
		-0.826109, 0.563168, 0.019622,
		20.363991, 15.310933, 17.964001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118305, 15.523464, 18.345932>,  <20.942268, 14.916716, 17.950266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118305, 15.523464, 18.345932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.719624, 15.494896, 18.361317>,  <20.480415, 15.477756, 18.370548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.719624, 15.494896, 18.361317>,  <21.118305, 15.523464, 18.345932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.719624, 15.494896, 18.361317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019894, 0.244477, 0.969451,
		-0.078641, 0.967022, -0.242250,
		-0.996705, -0.071420, 0.038464,
		20.420612, 15.473470, 18.372856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.997103, 16.049055, 18.741644>,  <21.118305, 15.523464, 18.345932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.997103, 16.049055, 18.741644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.649384, 15.852322, 18.761322>,  <20.440752, 15.734282, 18.773129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.649384, 15.852322, 18.761322>,  <20.997103, 16.049055, 18.741644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649384, 15.852322, 18.761322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174614, 0.398674, 0.900316,
		-0.462419, 0.774053, -0.432447,
		-0.869298, -0.491834, 0.049194,
		20.388594, 15.704771, 18.776079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344162, 16.537903, 18.702202>,  <20.997103, 16.049055, 18.741644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344162, 16.537903, 18.702202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.217773, 16.207535, 18.888971>,  <20.141941, 16.009314, 19.001034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.217773, 16.207535, 18.888971>,  <20.344162, 16.537903, 18.702202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217773, 16.207535, 18.888971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258890, 0.548515, 0.795052,
		-0.912765, 0.130331, -0.387137,
		-0.315970, -0.825921, 0.466924,
		20.122982, 15.959759, 19.029049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750618, 16.735104, 19.023758>,  <20.344162, 16.537903, 18.702202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750618, 16.735104, 19.023758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.838802, 16.392056, 19.209610>,  <19.891712, 16.186226, 19.321121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.838802, 16.392056, 19.209610>,  <19.750618, 16.735104, 19.023758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.838802, 16.392056, 19.209610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115263, 0.450108, 0.885504,
		-0.968562, -0.248772, 0.000378,
		0.220458, -0.857622, 0.464631,
		19.904940, 16.134769, 19.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149475, 16.522047, 19.493092>,  <19.750618, 16.735104, 19.023758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149475, 16.522047, 19.493092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487160, 16.345509, 19.614761>,  <19.689770, 16.239586, 19.687763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.487160, 16.345509, 19.614761>,  <19.149475, 16.522047, 19.493092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487160, 16.345509, 19.614761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150564, 0.349376, 0.924806,
		-0.514433, -0.826528, 0.228496,
		0.844209, -0.441348, 0.304176,
		19.740423, 16.213104, 19.706015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935242, 16.121086, 20.114731>,  <19.149475, 16.522047, 19.493092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935242, 16.121086, 20.114731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.331982, 16.172031, 20.116228>,  <19.570026, 16.202599, 20.117126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.331982, 16.172031, 20.116228>,  <18.935242, 16.121086, 20.114731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331982, 16.172031, 20.116228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049346, 0.356861, 0.932853,
		0.117474, -0.925435, 0.360237,
		0.991849, 0.127362, 0.003745,
		19.629536, 16.210241, 20.117352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776585, 15.337120, 20.000280>,  <18.935242, 16.121086, 20.114731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776585, 15.337120, 20.000280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.380466, 15.287426, 19.975357>,  <18.142796, 15.257609, 19.960403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.380466, 15.287426, 19.975357>,  <18.776585, 15.337120, 20.000280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380466, 15.287426, 19.975357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027505, 0.264251, -0.964062,
		0.136234, -0.956419, -0.258269,
		-0.990295, -0.124234, -0.062306,
		18.083378, 15.250155, 19.956665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643166, 14.984810, 19.310404>,  <18.776585, 15.337120, 20.000280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.643166, 14.984810, 19.310404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281105, 15.106781, 19.428875>,  <18.063869, 15.179963, 19.499958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281105, 15.106781, 19.428875>,  <18.643166, 14.984810, 19.310404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281105, 15.106781, 19.428875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182641, 0.350185, -0.918701,
		-0.383854, -0.885658, -0.261278,
		-0.905151, 0.304927, 0.296178,
		18.009560, 15.198259, 19.517729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.215557, 14.581009, 18.825191>,  <18.643166, 14.984810, 19.310404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.215557, 14.581009, 18.825191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.032764, 14.902786, 18.977001>,  <17.923088, 15.095853, 19.068087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.032764, 14.902786, 18.977001>,  <18.215557, 14.581009, 18.825191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032764, 14.902786, 18.977001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311845, 0.254702, -0.915358,
		-0.833019, -0.536655, 0.134467,
		-0.456982, 0.804443, 0.379525,
		17.895670, 15.144119, 19.090858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502001, 14.592620, 18.556965>,  <18.215557, 14.581009, 18.825191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502001, 14.592620, 18.556965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.543526, 14.973022, 18.673452>,  <17.568441, 15.201264, 18.743345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.543526, 14.973022, 18.673452>,  <17.502001, 14.592620, 18.556965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.543526, 14.973022, 18.673452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295744, 0.309074, -0.903885,
		-0.949609, 0.007710, 0.313341,
		0.103814, 0.951007, 0.291219,
		17.574671, 15.258325, 18.760818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839735, 14.974072, 18.392385>,  <17.502001, 14.592620, 18.556965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839735, 14.974072, 18.392385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.114254, 15.259823, 18.447029>,  <17.278965, 15.431273, 18.479815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.114254, 15.259823, 18.447029>,  <16.839735, 14.974072, 18.392385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.114254, 15.259823, 18.447029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172750, 0.342552, -0.923480,
		-0.706509, 0.610182, 0.358500,
		0.686296, 0.714378, 0.136607,
		17.320143, 15.474136, 18.488010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503370, 15.534419, 18.160818>,  <16.839735, 14.974072, 18.392385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503370, 15.534419, 18.160818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.900921, 15.549252, 18.119184>,  <17.139452, 15.558151, 18.094204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.900921, 15.549252, 18.119184>,  <16.503370, 15.534419, 18.160818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900921, 15.549252, 18.119184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110412, 0.297782, -0.948227,
		-0.004168, 0.953913, 0.300053,
		0.993877, 0.037082, -0.104083,
		17.199083, 15.560376, 18.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647537, 16.154493, 17.758718>,  <16.503370, 15.534419, 18.160818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647537, 16.154493, 17.758718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.978630, 15.933445, 17.719790>,  <17.177286, 15.800816, 17.696432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.978630, 15.933445, 17.719790>,  <16.647537, 16.154493, 17.758718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978630, 15.933445, 17.719790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012719, 0.191878, -0.981336,
		0.560982, 0.811044, 0.165852,
		0.827730, -0.552622, -0.097324,
		17.226950, 15.767658, 17.690592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791515, 16.440203, 17.091139>,  <16.647537, 16.154493, 17.758718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791515, 16.440203, 17.091139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.066044, 16.153465, 17.140287>,  <17.230761, 15.981422, 17.169777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.066044, 16.153465, 17.140287>,  <16.791515, 16.440203, 17.091139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066044, 16.153465, 17.140287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074222, -0.099027, -0.992313,
		0.723500, 0.690166, -0.014759,
		0.686322, -0.716843, 0.122872,
		17.271940, 15.938413, 17.177149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434017, 16.729101, 16.867445>,  <16.791515, 16.440203, 17.091139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434017, 16.729101, 16.867445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.438591, 16.330170, 16.838591>,  <17.441336, 16.090811, 16.821278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.438591, 16.330170, 16.838591>,  <17.434017, 16.729101, 16.867445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438591, 16.330170, 16.838591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072164, 0.072775, -0.994734,
		0.997327, 0.006170, 0.072803,
		0.011436, -0.997329, -0.072135,
		17.442022, 16.030972, 16.816950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915514, 16.606226, 16.349482>,  <17.434017, 16.729101, 16.867445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915514, 16.606226, 16.349482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.664700, 16.295338, 16.370480>,  <17.514210, 16.108805, 16.383078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.664700, 16.295338, 16.370480>,  <17.915514, 16.606226, 16.349482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664700, 16.295338, 16.370480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003859, -0.070487, -0.997505,
		0.778980, -0.625270, 0.047197,
		-0.627037, -0.777219, 0.052495,
		17.476589, 16.062172, 16.386229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237181, 16.097788, 15.879124>,  <17.915514, 16.606226, 16.349482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237181, 16.097788, 15.879124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.862686, 15.964252, 15.922961>,  <17.637989, 15.884131, 15.949264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.862686, 15.964252, 15.922961>,  <18.237181, 16.097788, 15.879124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862686, 15.964252, 15.922961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146469, 0.087288, -0.985356,
		0.319383, -0.938580, -0.130619,
		-0.936238, -0.333838, 0.109595,
		17.581814, 15.864101, 15.955840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145935, 15.388151, 15.477346>,  <18.237181, 16.097788, 15.879124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.145935, 15.388151, 15.477346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.766293, 15.507656, 15.517232>,  <17.538507, 15.579359, 15.541163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.766293, 15.507656, 15.517232>,  <18.145935, 15.388151, 15.477346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766293, 15.507656, 15.517232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163309, -0.196090, -0.966891,
		-0.269320, -0.933964, 0.234900,
		-0.949103, 0.298765, 0.099714,
		17.481562, 15.597284, 15.547146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697279, 14.816904, 15.247714>,  <18.145935, 15.388151, 15.477346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697279, 14.816904, 15.247714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.466110, 15.142681, 15.226970>,  <17.327410, 15.338147, 15.214523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.466110, 15.142681, 15.226970>,  <17.697279, 14.816904, 15.247714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466110, 15.142681, 15.226970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270840, -0.251355, -0.929229,
		-0.769840, -0.522975, 0.365847,
		-0.577921, 0.814443, -0.051861,
		17.292734, 15.387014, 15.211411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071533, 14.527739, 15.041026>,  <17.697279, 14.816904, 15.247714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071533, 14.527739, 15.041026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.066750, 14.917950, 14.953208>,  <17.063879, 15.152077, 14.900517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.066750, 14.917950, 14.953208>,  <17.071533, 14.527739, 15.041026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.066750, 14.917950, 14.953208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177079, -0.218157, -0.959714,
		-0.984124, 0.027400, 0.175354,
		-0.011959, 0.975529, -0.219546,
		17.063162, 15.210608, 14.887344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.754628, 16.630941, 19.785273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.105792, 16.789917, 19.892092>,  <14.316490, 16.885303, 19.956182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.105792, 16.789917, 19.892092>,  <13.754628, 16.630941, 19.785273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105792, 16.789917, 19.892092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178443, -0.245978, 0.952708,
		0.444333, -0.884045, -0.145027,
		0.877910, 0.397441, 0.267048,
		14.369165, 16.909149, 19.972206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873975, 16.152695, 20.384066>,  <13.754628, 16.630941, 19.785273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873975, 16.152695, 20.384066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.123563, 16.463070, 20.421118>,  <14.273315, 16.649296, 20.443348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.123563, 16.463070, 20.421118>,  <13.873975, 16.152695, 20.384066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123563, 16.463070, 20.421118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216388, -0.285465, 0.933641,
		0.750890, -0.562521, -0.346025,
		0.623971, 0.775938, 0.092629,
		14.310754, 16.695850, 20.448906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452044, 15.911037, 20.794724>,  <13.873975, 16.152695, 20.384066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452044, 15.911037, 20.794724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.442742, 16.309845, 20.824158>,  <14.437161, 16.549129, 20.841818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.442742, 16.309845, 20.824158>,  <14.452044, 15.911037, 20.794724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442742, 16.309845, 20.824158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224965, -0.066501, 0.972095,
		0.974089, 0.039158, -0.222748,
		-0.023252, 0.997018, 0.073587,
		14.435766, 16.608950, 20.846233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100819, 16.087725, 21.196077>,  <14.452044, 15.911037, 20.794724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100819, 16.087725, 21.196077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.869361, 16.412045, 21.231340>,  <14.730486, 16.606636, 21.252499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.869361, 16.412045, 21.231340>,  <15.100819, 16.087725, 21.196077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869361, 16.412045, 21.231340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129746, -0.015203, 0.991431,
		0.805193, 0.585124, -0.096400,
		-0.578645, 0.810801, 0.088159,
		14.695767, 16.655285, 21.257788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441955, 16.462616, 21.656826>,  <15.100819, 16.087725, 21.196077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441955, 16.462616, 21.656826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.061215, 16.585217, 21.659512>,  <14.832772, 16.658777, 21.661123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.061215, 16.585217, 21.659512>,  <15.441955, 16.462616, 21.656826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061215, 16.585217, 21.659512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000925, -0.019031, 0.999819,
		0.306572, 0.951680, 0.017832,
		-0.951847, 0.306500, 0.006714,
		14.775661, 16.677166, 21.661526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420077, 17.099575, 21.981148>,  <15.441955, 16.462616, 21.656826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420077, 17.099575, 21.981148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.051011, 16.948784, 22.013582>,  <14.829572, 16.858309, 22.033043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.051011, 16.948784, 22.013582>,  <15.420077, 17.099575, 21.981148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.051011, 16.948784, 22.013582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044459, 0.104882, 0.993490,
		-0.383030, 0.920264, -0.080011,
		-0.922665, -0.376979, 0.081088,
		14.774212, 16.835690, 22.037909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.108289, 17.480137, 22.489223>,  <15.420077, 17.099575, 21.981148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.108289, 17.480137, 22.489223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.836596, 17.188732, 22.453627>,  <14.673581, 17.013889, 22.432268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.836596, 17.188732, 22.453627>,  <15.108289, 17.480137, 22.489223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836596, 17.188732, 22.453627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059491, -0.066206, 0.996031,
		-0.731510, 0.681829, 0.001629,
		-0.679230, -0.728510, -0.088993,
		14.632828, 16.970179, 22.426929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562112, 17.727642, 22.940233>,  <15.108289, 17.480137, 22.489223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562112, 17.727642, 22.940233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.520383, 17.333424, 22.886848>,  <14.495345, 17.096891, 22.854818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.520383, 17.333424, 22.886848>,  <14.562112, 17.727642, 22.940233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520383, 17.333424, 22.886848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150488, -0.117006, 0.981663,
		-0.983092, 0.122495, -0.136107,
		-0.104323, -0.985548, -0.133461,
		14.489086, 17.037760, 22.846809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963984, 17.459600, 23.281912>,  <14.562112, 17.727642, 22.940233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963984, 17.459600, 23.281912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.209226, 17.147423, 23.232910>,  <14.356371, 16.960115, 23.203508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.209226, 17.147423, 23.232910>,  <13.963984, 17.459600, 23.281912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209226, 17.147423, 23.232910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019497, -0.140073, 0.989949,
		-0.789762, -0.609330, -0.070663,
		0.613104, -0.780446, -0.122504,
		14.393157, 16.913288, 23.196159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.677319, 16.981844, 23.733665>,  <13.963984, 17.459600, 23.281912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.677319, 16.981844, 23.733665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.038587, 16.833172, 23.647747>,  <14.255348, 16.743969, 23.596197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.038587, 16.833172, 23.647747>,  <13.677319, 16.981844, 23.733665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038587, 16.833172, 23.647747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169436, -0.151088, 0.973891,
		-0.394428, -0.915984, -0.073483,
		0.903171, -0.371680, -0.214794,
		14.309538, 16.721668, 23.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693407, 16.430586, 24.118011>,  <13.677319, 16.981844, 23.733665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693407, 16.430586, 24.118011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.078940, 16.519947, 24.059889>,  <14.310261, 16.573565, 24.025015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.078940, 16.519947, 24.059889>,  <13.693407, 16.430586, 24.118011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078940, 16.519947, 24.059889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146208, 0.012590, 0.989174,
		0.222816, -0.974644, -0.020529,
		0.963834, 0.223406, -0.145306,
		14.368091, 16.586969, 24.016296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123974, 15.904514, 24.529823>,  <13.693407, 16.430586, 24.118011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123974, 15.904514, 24.529823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.322917, 16.246544, 24.471195>,  <14.442283, 16.451761, 24.436018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.322917, 16.246544, 24.471195>,  <14.123974, 15.904514, 24.529823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322917, 16.246544, 24.471195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279846, 0.001790, 0.960043,
		0.821171, -0.518502, -0.238398,
		0.497358, 0.855074, -0.146571,
		14.472124, 16.503067, 24.427223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708956, 15.786274, 24.923592>,  <14.123974, 15.904514, 24.529823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708956, 15.786274, 24.923592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.706500, 16.177864, 24.842035>,  <14.705027, 16.412817, 24.793100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.706500, 16.177864, 24.842035>,  <14.708956, 15.786274, 24.923592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706500, 16.177864, 24.842035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299807, 0.196318, 0.933582,
		0.953980, -0.055395, -0.294709,
		-0.006140, 0.978974, -0.203892,
		14.704658, 16.471556, 24.780869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388930, 16.141376, 24.846327>,  <14.708956, 15.786274, 24.923592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388930, 16.141376, 24.846327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.110835, 16.366917, 25.024637>,  <14.943977, 16.502241, 25.131624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.110835, 16.366917, 25.024637>,  <15.388930, 16.141376, 24.846327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.110835, 16.366917, 25.024637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622200, 0.161592, 0.765999,
		0.359875, 0.809914, -0.463172,
		-0.695239, 0.563850, 0.445776,
		14.902264, 16.536072, 25.158371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643034, 15.459940, 24.826061>,  <15.388930, 16.141376, 24.846327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643034, 15.459940, 24.826061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.970237, 15.276836, 24.965387>,  <16.166557, 15.166974, 25.048983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.970237, 15.276836, 24.965387>,  <15.643034, 15.459940, 24.826061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970237, 15.276836, 24.965387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394122, 0.004976, -0.919045,
		0.418968, 0.889062, 0.184484,
		0.818006, -0.457759, 0.348314,
		16.215639, 15.139508, 25.069881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030167, 15.666026, 24.395290>,  <15.643034, 15.459940, 24.826061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030167, 15.666026, 24.395290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.239914, 15.364044, 24.552813>,  <16.365763, 15.182856, 24.647326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.239914, 15.364044, 24.552813>,  <16.030167, 15.666026, 24.395290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239914, 15.364044, 24.552813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354994, -0.226551, -0.907003,
		0.773962, 0.615401, 0.149208,
		0.524368, -0.754954, 0.393806,
		16.397224, 15.137558, 24.670954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714483, 15.762941, 24.158236>,  <16.030167, 15.666026, 24.395290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714483, 15.762941, 24.158236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.668980, 15.377522, 24.255091>,  <16.641678, 15.146270, 24.313204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.668980, 15.377522, 24.255091>,  <16.714483, 15.762941, 24.158236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668980, 15.377522, 24.255091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314304, -0.266106, -0.911263,
		0.942482, -0.027559, 0.333120,
		-0.113759, -0.963550, 0.242138,
		16.634851, 15.088456, 24.327732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340593, 15.460920, 24.009480>,  <16.714483, 15.762941, 24.158236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340593, 15.460920, 24.009480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.111580, 15.133213, 24.022137>,  <16.974171, 14.936588, 24.029732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.111580, 15.133213, 24.022137>,  <17.340593, 15.460920, 24.009480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111580, 15.133213, 24.022137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331206, -0.266422, -0.905164,
		0.750004, -0.507757, 0.423883,
		-0.572535, -0.819269, 0.031645,
		16.939819, 14.887432, 24.031630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854658, 14.893144, 23.954193>,  <17.340593, 15.460920, 24.009480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854658, 14.893144, 23.954193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.499573, 14.757271, 23.829882>,  <17.286522, 14.675747, 23.755295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.499573, 14.757271, 23.829882>,  <17.854658, 14.893144, 23.954193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.499573, 14.757271, 23.829882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395358, -0.216530, -0.892640,
		0.235921, -0.915277, 0.326512,
		-0.887712, -0.339681, -0.310778,
		17.233259, 14.655366, 23.736649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019779, 14.100277, 23.624989>,  <17.854658, 14.893144, 23.954193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019779, 14.100277, 23.624989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.654205, 14.208275, 23.503778>,  <17.434860, 14.273073, 23.431053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.654205, 14.208275, 23.503778>,  <18.019779, 14.100277, 23.624989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.654205, 14.208275, 23.503778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261261, -0.179983, -0.948340,
		-0.310587, -0.945890, 0.093954,
		-0.913936, 0.269995, -0.303025,
		17.380024, 14.289273, 23.412870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861662, 13.573491, 23.144295>,  <18.019779, 14.100277, 23.624989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861662, 13.573491, 23.144295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.625626, 13.888046, 23.071205>,  <17.484003, 14.076779, 23.027351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.625626, 13.888046, 23.071205>,  <17.861662, 13.573491, 23.144295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.625626, 13.888046, 23.071205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230674, -0.052666, -0.971605,
		-0.773682, -0.615484, -0.150321,
		-0.590090, 0.786388, -0.182723,
		17.448599, 14.123962, 23.016388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.418274, 13.350567, 22.504755>,  <17.861662, 13.573491, 23.144295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.418274, 13.350567, 22.504755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.413593, 13.748844, 22.541546>,  <17.410786, 13.987810, 22.563620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.413593, 13.748844, 22.541546>,  <17.418274, 13.350567, 22.504755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413593, 13.748844, 22.541546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194144, 0.092494, -0.976603,
		-0.980903, 0.006429, -0.194390,
		-0.011702, 0.995692, 0.091976,
		17.410082, 14.047552, 22.569139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969366, 13.607555, 21.929525>,  <17.418274, 13.350567, 22.504755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969366, 13.607555, 21.929525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.198669, 13.917675, 22.035570>,  <17.336252, 14.103746, 22.099197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.198669, 13.917675, 22.035570>,  <16.969366, 13.607555, 21.929525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198669, 13.917675, 22.035570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021634, 0.309123, -0.950776,
		-0.819089, 0.550776, 0.160435,
		0.573259, 0.775299, 0.265114,
		17.370647, 14.150265, 22.115105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714386, 14.128726, 21.585209>,  <16.969366, 13.607555, 21.929525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714386, 14.128726, 21.585209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.068115, 14.279335, 21.695629>,  <17.280354, 14.369700, 21.761881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.068115, 14.279335, 21.695629>,  <16.714386, 14.128726, 21.585209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068115, 14.279335, 21.695629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104810, 0.416079, -0.903268,
		-0.454960, 0.827713, 0.328485,
		0.884322, 0.376522, 0.276052,
		17.333412, 14.392292, 21.778444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.696281, 14.906200, 21.444538>,  <16.714386, 14.128726, 21.585209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.696281, 14.906200, 21.444538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.074902, 14.778244, 21.427982>,  <17.302074, 14.701470, 21.418049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.074902, 14.778244, 21.427982>,  <16.696281, 14.906200, 21.444538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074902, 14.778244, 21.427982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133933, 0.506512, -0.851768,
		0.293436, 0.800697, 0.522283,
		0.946550, -0.319890, -0.041389,
		17.358866, 14.682277, 21.415565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.117949, 15.488498, 21.208138>,  <16.696281, 14.906200, 21.444538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.117949, 15.488498, 21.208138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.330849, 15.157284, 21.137632>,  <17.458588, 14.958555, 21.095329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.330849, 15.157284, 21.137632>,  <17.117949, 15.488498, 21.208138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330849, 15.157284, 21.137632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289274, 0.373555, -0.881350,
		0.795632, 0.418109, 0.438353,
		0.532250, -0.828035, -0.176264,
		17.490524, 14.908874, 21.084753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823011, 15.715512, 21.048409>,  <17.117949, 15.488498, 21.208138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823011, 15.715512, 21.048409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.793880, 15.343048, 20.905504>,  <17.776402, 15.119570, 20.819761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.793880, 15.343048, 20.905504>,  <17.823011, 15.715512, 21.048409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793880, 15.343048, 20.905504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390470, 0.302997, -0.869325,
		0.917730, -0.202810, 0.341524,
		-0.072827, -0.931161, -0.357261,
		17.772032, 15.063700, 20.798326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390388, 15.699612, 20.650501>,  <17.823011, 15.715512, 21.048409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390388, 15.699612, 20.650501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.153164, 15.411209, 20.507154>,  <18.010830, 15.238168, 20.421146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.153164, 15.411209, 20.507154>,  <18.390388, 15.699612, 20.650501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153164, 15.411209, 20.507154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286693, 0.226819, -0.930785,
		0.752386, -0.654755, 0.072189,
		-0.593062, -0.721006, -0.358369,
		17.975245, 15.194907, 20.399643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145313, 15.597787, 20.627361>,  <18.390388, 15.699612, 20.650501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145313, 15.597787, 20.627361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.459637, 15.844429, 20.608171>,  <19.648232, 15.992414, 20.596657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.459637, 15.844429, 20.608171>,  <19.145313, 15.597787, 20.627361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.459637, 15.844429, 20.608171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063514, 0.157617, 0.985456,
		0.615198, -0.771333, 0.163020,
		0.785810, 0.616605, -0.047975,
		19.695379, 16.029409, 20.593779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481348, 15.402596, 21.213770>,  <19.145313, 15.597787, 20.627361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481348, 15.402596, 21.213770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.607418, 15.767834, 21.110289>,  <19.683060, 15.986976, 21.048201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.607418, 15.767834, 21.110289>,  <19.481348, 15.402596, 21.213770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607418, 15.767834, 21.110289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019890, 0.278890, 0.960117,
		0.948825, -0.297460, 0.106060,
		0.315176, 0.913092, -0.258702,
		19.701971, 16.041761, 21.032679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070271, 15.637597, 21.645653>,  <19.481348, 15.402596, 21.213770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070271, 15.637597, 21.645653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.903679, 15.972431, 21.503759>,  <19.803724, 16.173332, 21.418623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.903679, 15.972431, 21.503759>,  <20.070271, 15.637597, 21.645653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903679, 15.972431, 21.503759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014896, 0.396414, 0.917951,
		0.909024, 0.377021, -0.177567,
		-0.416477, 0.837085, -0.354734,
		19.778736, 16.223557, 21.397339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.388639, 16.051279, 22.118599>,  <20.070271, 15.637597, 21.645653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.388639, 16.051279, 22.118599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.083694, 16.248249, 21.950638>,  <19.900726, 16.366432, 21.849861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.083694, 16.248249, 21.950638>,  <20.388639, 16.051279, 22.118599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083694, 16.248249, 21.950638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107171, 0.543823, 0.832329,
		0.638213, 0.679538, -0.361817,
		-0.762364, 0.492427, -0.419902,
		19.854986, 16.395977, 21.824667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530926, 16.716619, 22.268387>,  <20.388639, 16.051279, 22.118599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530926, 16.716619, 22.268387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.140884, 16.671879, 22.191801>,  <19.906858, 16.645035, 22.145849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.140884, 16.671879, 22.191801>,  <20.530926, 16.716619, 22.268387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140884, 16.671879, 22.191801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219678, 0.369714, 0.902803,
		-0.030194, 0.922388, -0.385082,
		-0.975105, -0.111854, -0.191465,
		19.848352, 16.638323, 22.134361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302177, 17.307537, 22.557940>,  <20.530926, 16.716619, 22.268387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302177, 17.307537, 22.557940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.991440, 17.062477, 22.499743>,  <19.804996, 16.915440, 22.464825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.991440, 17.062477, 22.499743>,  <20.302177, 17.307537, 22.557940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991440, 17.062477, 22.499743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340708, 0.214641, 0.915340,
		-0.529556, 0.760649, -0.375478,
		-0.776845, -0.612652, -0.145494,
		19.758387, 16.878681, 22.456095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757261, 17.754311, 22.655321>,  <20.302177, 17.307537, 22.557940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757261, 17.754311, 22.655321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.703518, 17.370781, 22.755407>,  <19.671272, 17.140663, 22.815458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.703518, 17.370781, 22.755407>,  <19.757261, 17.754311, 22.655321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.703518, 17.370781, 22.755407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267118, 0.278203, 0.922633,
		-0.954251, 0.057127, -0.293498,
		-0.134359, -0.958822, 0.250216,
		19.663210, 17.083134, 22.830473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628843, 18.426693, 22.914717>,  <19.757261, 17.754311, 22.655321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628843, 18.426693, 22.914717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.960880, 18.627312, 23.012205>,  <20.160103, 18.747683, 23.070698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.960880, 18.627312, 23.012205>,  <19.628843, 18.426693, 22.914717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960880, 18.627312, 23.012205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192924, 0.151773, -0.969405,
		-0.523190, 0.851715, 0.029226,
		0.830092, 0.501545, 0.243722,
		20.209908, 18.777775, 23.085321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564777, 19.152842, 22.663002>,  <19.628843, 18.426693, 22.914717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564777, 19.152842, 22.663002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.936840, 19.006454, 22.674812>,  <20.160078, 18.918621, 22.681898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.936840, 19.006454, 22.674812>,  <19.564777, 19.152842, 22.663002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936840, 19.006454, 22.674812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084510, 0.135150, -0.987215,
		0.357300, 0.920761, 0.156639,
		0.930158, -0.365970, 0.029524,
		20.215887, 18.896664, 22.683670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994673, 19.649984, 22.379232>,  <19.564777, 19.152842, 22.663002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994673, 19.649984, 22.379232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.239288, 19.334129, 22.359240>,  <20.386057, 19.144617, 22.347244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.239288, 19.334129, 22.359240>,  <19.994673, 19.649984, 22.379232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239288, 19.334129, 22.359240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192923, 0.210081, -0.958461,
		0.767336, 0.576491, 0.280811,
		0.611537, -0.789636, -0.049984,
		20.422749, 19.097239, 22.344244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370375, 19.850559, 21.746017>,  <19.994673, 19.649984, 22.379232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370375, 19.850559, 21.746017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.496559, 19.483326, 21.842022>,  <20.572269, 19.262985, 21.899624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.496559, 19.483326, 21.842022>,  <20.370375, 19.850559, 21.746017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496559, 19.483326, 21.842022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359586, -0.118411, -0.925568,
		0.878169, 0.378288, 0.292776,
		0.315463, -0.918084, 0.240012,
		20.591198, 19.207901, 21.914026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968105, 19.837831, 21.449415>,  <20.370375, 19.850559, 21.746017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968105, 19.837831, 21.449415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.859383, 19.455162, 21.491165>,  <20.794149, 19.225561, 21.516216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.859383, 19.455162, 21.491165>,  <20.968105, 19.837831, 21.449415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859383, 19.455162, 21.491165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515743, -0.236377, -0.823489,
		0.812483, -0.170000, 0.557648,
		-0.271808, -0.956674, 0.104376,
		20.777840, 19.168159, 21.522478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.543491, 19.444412, 21.350821>,  <20.968105, 19.837831, 21.449415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.543491, 19.444412, 21.350821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.229473, 19.209385, 21.272369>,  <21.041061, 19.068369, 21.225298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.229473, 19.209385, 21.272369>,  <21.543491, 19.444412, 21.350821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.229473, 19.209385, 21.272369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371400, -0.193080, -0.908175,
		0.495746, -0.785802, 0.369799,
		-0.785047, -0.587568, -0.196128,
		20.993959, 19.033115, 21.213531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875038, 18.865263, 21.008837>,  <21.543491, 19.444412, 21.350821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875038, 18.865263, 21.008837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.495407, 18.852127, 20.883509>,  <21.267628, 18.844246, 20.808311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.495407, 18.852127, 20.883509>,  <21.875038, 18.865263, 21.008837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.495407, 18.852127, 20.883509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314538, -0.154753, -0.936545,
		-0.017729, -0.987407, 0.157203,
		-0.949080, -0.032843, -0.313321,
		21.210684, 18.842274, 20.789513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.940255, 19.784151, 24.450506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.923472, 19.411907, 24.305065>,  <15.913403, 19.188560, 24.217800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.923472, 19.411907, 24.305065>,  <15.940255, 19.784151, 24.450506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923472, 19.411907, 24.305065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628184, 0.258421, -0.733896,
		0.776933, -0.259199, 0.573752,
		-0.041956, -0.930610, -0.363601,
		15.910886, 19.132725, 24.195984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591503, 19.699366, 24.054028>,  <15.940255, 19.784151, 24.450506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591503, 19.699366, 24.054028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.340557, 19.404675, 23.953115>,  <16.189989, 19.227859, 23.892569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.340557, 19.404675, 23.953115>,  <16.591503, 19.699366, 24.054028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340557, 19.404675, 23.953115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443170, -0.071387, -0.893591,
		0.640323, -0.672412, 0.371281,
		-0.627365, -0.736727, -0.252282,
		16.152348, 19.183657, 23.877432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978251, 18.949173, 23.928675>,  <16.591503, 19.699366, 24.054028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978251, 18.949173, 23.928675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.633091, 18.961845, 23.726921>,  <16.425995, 18.969448, 23.605869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.633091, 18.961845, 23.726921>,  <16.978251, 18.949173, 23.928675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633091, 18.961845, 23.726921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505215, 0.028785, -0.862513,
		-0.012807, -0.999084, -0.040845,
		-0.862898, 0.031682, -0.504384,
		16.374222, 18.971350, 23.575605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160679, 18.511105, 23.475481>,  <16.978251, 18.949173, 23.928675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160679, 18.511105, 23.475481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.854927, 18.725826, 23.332619>,  <16.671476, 18.854660, 23.246901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.854927, 18.725826, 23.332619>,  <17.160679, 18.511105, 23.475481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854927, 18.725826, 23.332619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334469, -0.143447, -0.931425,
		-0.551228, -0.831422, -0.069897,
		-0.764381, 0.536806, -0.357157,
		16.625612, 18.886868, 23.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016138, 18.178566, 22.813688>,  <17.160679, 18.511105, 23.475481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016138, 18.178566, 22.813688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.825699, 18.530140, 22.802366>,  <16.711435, 18.741085, 22.795572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.825699, 18.530140, 22.802366>,  <17.016138, 18.178566, 22.813688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825699, 18.530140, 22.802366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105762, 0.025273, -0.994070,
		-0.873009, -0.476269, -0.104991,
		-0.476098, 0.878937, -0.028307,
		16.682869, 18.793821, 22.793875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511072, 18.073177, 22.316292>,  <17.016138, 18.178566, 22.813688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511072, 18.073177, 22.316292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.577980, 18.465149, 22.359671>,  <16.618124, 18.700333, 22.385698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.577980, 18.465149, 22.359671>,  <16.511072, 18.073177, 22.316292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577980, 18.465149, 22.359671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007153, 0.111201, -0.993772,
		-0.985885, 0.165453, 0.025610,
		0.167270, 0.979928, 0.108448,
		16.628160, 18.759127, 22.392204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970524, 18.461813, 21.978640>,  <16.511072, 18.073177, 22.316292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970524, 18.461813, 21.978640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.282101, 18.712601, 21.983622>,  <16.469048, 18.863073, 21.986610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.282101, 18.712601, 21.983622>,  <15.970524, 18.461813, 21.978640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282101, 18.712601, 21.983622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170145, 0.230421, -0.958101,
		-0.603571, 0.744187, 0.286160,
		0.778943, 0.626971, 0.012456,
		16.515783, 18.900692, 21.987358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788696, 19.140598, 21.705080>,  <15.970524, 18.461813, 21.978640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788696, 19.140598, 21.705080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.185665, 19.112381, 21.664839>,  <16.423847, 19.095451, 21.640694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.185665, 19.112381, 21.664839>,  <15.788696, 19.140598, 21.705080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.185665, 19.112381, 21.664839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065457, 0.389370, -0.918753,
		0.103983, 0.918376, 0.381802,
		0.992423, -0.070543, -0.100602,
		16.483393, 19.091219, 21.634659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936356, 19.743093, 21.330410>,  <15.788696, 19.140598, 21.705080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936356, 19.743093, 21.330410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.283211, 19.545170, 21.307646>,  <16.491323, 19.426416, 21.293987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.283211, 19.545170, 21.307646>,  <15.936356, 19.743093, 21.330410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283211, 19.545170, 21.307646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198780, 0.448576, -0.871359,
		0.456684, 0.744275, 0.487335,
		0.867137, -0.494808, -0.056910,
		16.543352, 19.396727, 21.290573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425262, 20.276300, 21.154497>,  <15.936356, 19.743093, 21.330410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425262, 20.276300, 21.154497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.594475, 19.935837, 21.030193>,  <16.696003, 19.731558, 20.955610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.594475, 19.935837, 21.030193>,  <16.425262, 20.276300, 21.154497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594475, 19.935837, 21.030193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280672, 0.449178, -0.848211,
		0.861550, 0.271599, 0.428913,
		0.423031, -0.851160, -0.310759,
		16.721384, 19.680489, 20.936966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034405, 20.497005, 20.783461>,  <16.425262, 20.276300, 21.154497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034405, 20.497005, 20.783461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.982784, 20.114914, 20.676964>,  <16.951811, 19.885658, 20.613066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.982784, 20.114914, 20.676964>,  <17.034405, 20.497005, 20.783461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982784, 20.114914, 20.676964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345923, 0.208255, -0.914859,
		0.929345, -0.210165, 0.303560,
		-0.129053, -0.955228, -0.266242,
		16.944069, 19.828346, 20.597092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447176, 20.478012, 20.290119>,  <17.034405, 20.497005, 20.783461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447176, 20.478012, 20.290119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.213833, 20.161514, 20.216770>,  <17.073826, 19.971617, 20.172760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.213833, 20.161514, 20.216770>,  <17.447176, 20.478012, 20.290119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213833, 20.161514, 20.216770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224667, 0.059764, -0.972601,
		0.780523, -0.608575, 0.142902,
		-0.583360, -0.791243, -0.183374,
		17.038824, 19.924141, 20.161758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196939, 20.342684, 20.334951>,  <17.447176, 20.478012, 20.290119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196939, 20.342684, 20.334951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.450516, 20.649342, 20.294212>,  <18.602661, 20.833336, 20.269770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.450516, 20.649342, 20.294212>,  <18.196939, 20.342684, 20.334951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450516, 20.649342, 20.294212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036458, 0.161168, 0.986253,
		0.772522, -0.621513, 0.130121,
		0.633941, 0.766646, -0.101847,
		18.640697, 20.879335, 20.263659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602188, 20.211094, 20.837828>,  <18.196939, 20.342684, 20.334951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602188, 20.211094, 20.837828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.654987, 20.595585, 20.740986>,  <18.686666, 20.826281, 20.682880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.654987, 20.595585, 20.740986>,  <18.602188, 20.211094, 20.837828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.654987, 20.595585, 20.740986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041736, 0.238637, 0.970212,
		0.990371, -0.138170, -0.008619,
		0.131997, 0.961229, -0.242106,
		18.694586, 20.883953, 20.668354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266998, 20.464422, 21.103252>,  <18.602188, 20.211094, 20.837828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266998, 20.464422, 21.103252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.013210, 20.771687, 21.068901>,  <18.860937, 20.956045, 21.048290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.013210, 20.771687, 21.068901>,  <19.266998, 20.464422, 21.103252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013210, 20.771687, 21.068901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031475, 0.136692, 0.990113,
		0.772307, 0.625494, -0.110905,
		-0.634469, 0.768162, -0.085880,
		18.822870, 21.002134, 21.043137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619297, 20.922129, 21.600266>,  <19.266998, 20.464422, 21.103252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619297, 20.922129, 21.600266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.250057, 21.061054, 21.534227>,  <19.028513, 21.144409, 21.494604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.250057, 21.061054, 21.534227>,  <19.619297, 20.922129, 21.600266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250057, 21.061054, 21.534227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177426, -0.003759, 0.984127,
		0.341182, 0.937741, 0.065093,
		-0.923101, 0.347316, -0.165097,
		18.973127, 21.165249, 21.484697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586130, 21.610855, 21.947741>,  <19.619297, 20.922129, 21.600266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586130, 21.610855, 21.947741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.205833, 21.496628, 21.899498>,  <18.977655, 21.428091, 21.870552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.205833, 21.496628, 21.899498>,  <19.586130, 21.610855, 21.947741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205833, 21.496628, 21.899498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204622, 0.285877, 0.936165,
		-0.232859, 0.914727, -0.330228,
		-0.950740, -0.285567, -0.120605,
		18.920612, 21.410957, 21.863317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301331, 22.197018, 22.162075>,  <19.586130, 21.610855, 21.947741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301331, 22.197018, 22.162075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.036320, 21.899212, 22.194956>,  <18.877314, 21.720528, 22.214685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.036320, 21.899212, 22.194956>,  <19.301331, 22.197018, 22.162075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036320, 21.899212, 22.194956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111766, 0.206778, 0.971983,
		-0.740653, 0.634777, -0.220208,
		-0.662527, -0.744514, 0.082204,
		18.837563, 21.675858, 22.219618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731594, 22.421244, 22.639790>,  <19.301331, 22.197018, 22.162075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731594, 22.421244, 22.639790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.700386, 22.022476, 22.643042>,  <18.681662, 21.783216, 22.644993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.700386, 22.022476, 22.643042>,  <18.731594, 22.421244, 22.639790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700386, 22.022476, 22.643042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211737, 0.024538, 0.977019,
		-0.974208, 0.074506, -0.212999,
		-0.078020, -0.996919, 0.008129,
		18.676979, 21.723400, 22.645481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066656, 22.254076, 22.970034>,  <18.731594, 22.421244, 22.639790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066656, 22.254076, 22.970034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.312859, 21.940002, 22.997276>,  <18.460581, 21.751558, 23.013622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.312859, 21.940002, 22.997276>,  <18.066656, 22.254076, 22.970034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312859, 21.940002, 22.997276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107491, 0.001972, 0.994204,
		-0.780768, -0.619259, -0.083187,
		0.615506, -0.785185, 0.068104,
		18.497511, 21.704447, 23.017708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894718, 21.895330, 23.572586>,  <18.066656, 22.254076, 22.970034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.894718, 21.895330, 23.572586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.244637, 21.707264, 23.525812>,  <18.454588, 21.594423, 23.497747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.244637, 21.707264, 23.525812>,  <17.894718, 21.895330, 23.572586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.244637, 21.707264, 23.525812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039642, -0.171085, 0.984459,
		-0.482867, -0.865836, -0.131026,
		0.874796, -0.470168, -0.116935,
		18.507076, 21.566214, 23.490732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851389, 21.261543, 24.019875>,  <17.894718, 21.895330, 23.572586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851389, 21.261543, 24.019875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.242760, 21.297379, 23.945408>,  <18.477581, 21.318880, 23.900728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.242760, 21.297379, 23.945408>,  <17.851389, 21.261543, 24.019875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242760, 21.297379, 23.945408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195778, -0.114215, 0.973974,
		0.065995, -0.989408, -0.129290,
		0.978425, 0.089590, -0.186167,
		18.536287, 21.324255, 23.889559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064743, 20.657495, 24.342354>,  <17.851389, 21.261543, 24.019875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064743, 20.657495, 24.342354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.369835, 20.914467, 24.312624>,  <18.552891, 21.068649, 24.294786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.369835, 20.914467, 24.312624>,  <18.064743, 20.657495, 24.342354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369835, 20.914467, 24.312624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180223, -0.100769, 0.978450,
		0.621097, -0.759690, -0.192640,
		0.762731, 0.642430, -0.074327,
		18.598654, 21.107197, 24.290325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658770, 20.354523, 24.669655>,  <18.064743, 20.657495, 24.342354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658770, 20.354523, 24.669655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.738316, 20.746441, 24.661167>,  <18.786043, 20.981592, 24.656075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.738316, 20.746441, 24.661167>,  <18.658770, 20.354523, 24.669655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738316, 20.746441, 24.661167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176009, -0.014409, 0.984283,
		0.964092, -0.199472, -0.175319,
		0.198863, 0.979798, -0.021217,
		18.797974, 21.040380, 24.654802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369146, 20.333776, 24.887327>,  <18.658770, 20.354523, 24.669655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369146, 20.333776, 24.887327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.211964, 20.692547, 24.968424>,  <19.117653, 20.907810, 25.017082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.211964, 20.692547, 24.968424>,  <19.369146, 20.333776, 24.887327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211964, 20.692547, 24.968424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385504, -0.039480, 0.921861,
		0.834847, 0.440410, -0.330255,
		-0.392959, 0.896928, 0.202739,
		19.094076, 20.961626, 25.029245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863123, 20.594477, 25.316179>,  <19.369146, 20.333776, 24.887327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863123, 20.594477, 25.316179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.527550, 20.805878, 25.368143>,  <19.326206, 20.932718, 25.399323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.527550, 20.805878, 25.368143>,  <19.863123, 20.594477, 25.316179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527550, 20.805878, 25.368143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103151, -0.079967, 0.991446,
		0.534369, 0.845158, 0.012572,
		-0.838933, 0.528502, 0.129910,
		19.275869, 20.964428, 25.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061068, 20.337578, 25.944609>,  <19.863123, 20.594477, 25.316179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061068, 20.337578, 25.944609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.113922, 19.941135, 25.950968>,  <20.145636, 19.703270, 25.954782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.113922, 19.941135, 25.950968>,  <20.061068, 20.337578, 25.944609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113922, 19.941135, 25.950968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093677, -0.003480, -0.995596,
		0.986795, 0.133043, 0.092384,
		0.132136, -0.991104, 0.015897,
		20.153563, 19.643805, 25.955736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.593697, 20.195536, 25.504484>,  <20.061068, 20.337578, 25.944609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.593697, 20.195536, 25.504484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.353077, 19.876080, 25.511501>,  <20.208704, 19.684406, 25.515713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.353077, 19.876080, 25.511501>,  <20.593697, 20.195536, 25.504484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353077, 19.876080, 25.511501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128907, -0.118723, -0.984524,
		0.788365, -0.589980, 0.174368,
		-0.601551, -0.798642, 0.017544,
		20.172611, 19.636488, 25.516764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970045, 19.679716, 25.139601>,  <20.593697, 20.195536, 25.504484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970045, 19.679716, 25.139601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.613895, 19.497623, 25.139414>,  <20.400206, 19.388369, 25.139301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.613895, 19.497623, 25.139414>,  <20.970045, 19.679716, 25.139601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613895, 19.497623, 25.139414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153865, -0.299976, -0.941456,
		0.428441, -0.838319, 0.337134,
		-0.890373, -0.455231, -0.000466,
		20.346783, 19.361053, 25.139275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099937, 18.939180, 24.981548>,  <20.970045, 19.679716, 25.139601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099937, 18.939180, 24.981548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.724636, 19.030342, 24.877438>,  <20.499456, 19.085039, 24.814972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.724636, 19.030342, 24.877438>,  <21.099937, 18.939180, 24.981548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.724636, 19.030342, 24.877438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112077, -0.511535, -0.851922,
		-0.327295, -0.828488, 0.454406,
		-0.938252, 0.227901, -0.260277,
		20.443161, 19.098713, 24.799355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846878, 18.399563, 24.661871>,  <21.099937, 18.939180, 24.981548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846878, 18.399563, 24.661871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.584370, 18.677731, 24.544773>,  <20.426865, 18.844631, 24.474514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.584370, 18.677731, 24.544773>,  <20.846878, 18.399563, 24.661871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584370, 18.677731, 24.544773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137024, -0.271689, -0.952581,
		-0.741981, -0.665262, 0.083011,
		-0.656269, 0.695422, -0.292745,
		20.387489, 18.886356, 24.456949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545771, 18.082409, 24.019840>,  <20.846878, 18.399563, 24.661871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545771, 18.082409, 24.019840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.414082, 18.459572, 23.999699>,  <20.335068, 18.685869, 23.987614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.414082, 18.459572, 23.999699>,  <20.545771, 18.082409, 24.019840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414082, 18.459572, 23.999699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076960, -0.079945, -0.993824,
		-0.941111, -0.323315, 0.098886,
		-0.329224, 0.942909, -0.050355,
		20.315315, 18.742445, 23.984592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901659, 18.036442, 23.605595>,  <20.545771, 18.082409, 24.019840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901659, 18.036442, 23.605595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.065018, 18.400127, 23.573236>,  <20.163033, 18.618340, 23.553822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.065018, 18.400127, 23.573236>,  <19.901659, 18.036442, 23.605595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065018, 18.400127, 23.573236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147424, -0.021763, -0.988834,
		-0.900821, 0.415761, 0.125152,
		0.408395, 0.909213, -0.080898,
		20.187536, 18.672892, 23.548967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346933, 17.820927, 23.308966>,  <19.901659, 18.036442, 23.605595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346933, 17.820927, 23.308966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.397366, 17.425064, 23.281593>,  <19.427626, 17.187546, 23.265171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.397366, 17.425064, 23.281593>,  <19.346933, 17.820927, 23.308966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397366, 17.425064, 23.281593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283737, -0.102074, 0.953454,
		-0.950577, -0.100798, -0.293672,
		0.126082, -0.989657, -0.068429,
		19.435190, 17.128166, 23.261065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689020, 17.492031, 23.539452>,  <19.346933, 17.820927, 23.308966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689020, 17.492031, 23.539452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.975613, 17.213802, 23.560764>,  <19.147568, 17.046865, 23.573551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.975613, 17.213802, 23.560764>,  <18.689020, 17.492031, 23.539452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975613, 17.213802, 23.560764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390198, -0.336272, 0.857127,
		-0.578275, -0.634904, -0.512342,
		0.716480, -0.695570, 0.053280,
		19.190557, 17.005131, 23.576748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417902, 16.936876, 23.838552>,  <18.689020, 17.492031, 23.539452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417902, 16.936876, 23.838552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.804356, 16.851063, 23.895901>,  <19.036228, 16.799574, 23.930309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.804356, 16.851063, 23.895901>,  <18.417902, 16.936876, 23.838552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804356, 16.851063, 23.895901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172065, -0.121594, 0.977552,
		-0.192289, -0.969117, -0.154390,
		0.966136, -0.214538, 0.143370,
		19.094196, 16.786703, 23.938911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.499910, 16.140556, 23.906349>,  <18.417902, 16.936876, 23.838552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.499910, 16.140556, 23.906349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.800037, 16.344868, 24.074221>,  <18.980114, 16.467455, 24.174944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.800037, 16.344868, 24.074221>,  <18.499910, 16.140556, 23.906349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800037, 16.344868, 24.074221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311305, -0.287049, 0.905921,
		0.583194, -0.810375, -0.056369,
		0.750316, 0.510780, 0.419679,
		19.025133, 16.498102, 24.200125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581814, 15.798047, 24.429466>,  <18.499910, 16.140556, 23.906349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581814, 15.798047, 24.429466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.801647, 16.109066, 24.551697>,  <18.933546, 16.295677, 24.625036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.801647, 16.109066, 24.551697>,  <18.581814, 15.798047, 24.429466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801647, 16.109066, 24.551697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329989, -0.133991, 0.934427,
		0.767507, -0.614382, 0.182944,
		0.549582, 0.777548, 0.305578,
		18.966522, 16.342331, 24.643370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015261, 15.543986, 25.005024>,  <18.581814, 15.798047, 24.429466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015261, 15.543986, 25.005024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.982044, 15.941502, 25.034655>,  <18.962114, 16.180012, 25.052433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.982044, 15.941502, 25.034655>,  <19.015261, 15.543986, 25.005024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.982044, 15.941502, 25.034655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373134, -0.099935, 0.922379,
		0.924054, 0.048954, 0.379116,
		-0.083041, 0.993789, 0.074079,
		18.957132, 16.239639, 25.056879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131298, 15.758162, 25.624002>,  <19.015261, 15.543986, 25.005024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131298, 15.758162, 25.624002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.963097, 16.107922, 25.527170>,  <18.862177, 16.317778, 25.469070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.963097, 16.107922, 25.527170>,  <19.131298, 15.758162, 25.624002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963097, 16.107922, 25.527170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441058, 0.036161, 0.896750,
		0.792872, 0.483856, 0.370455,
		-0.420502, 0.874400, -0.242079,
		18.836946, 16.370241, 25.454546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.228601, 16.205843, 26.168007>,  <19.131298, 15.758162, 25.624002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.228601, 16.205843, 26.168007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.911900, 16.356415, 25.975578>,  <18.721878, 16.446758, 25.860121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.911900, 16.356415, 25.975578>,  <19.228601, 16.205843, 26.168007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.911900, 16.356415, 25.975578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455566, 0.160760, 0.875566,
		0.406924, 0.912392, 0.044205,
		-0.791753, 0.376427, -0.481072,
		18.674374, 16.469343, 25.831257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130299, 16.814529, 26.448174>,  <19.228601, 16.205843, 26.168007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130299, 16.814529, 26.448174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.784718, 16.751728, 26.256783>,  <18.577370, 16.714046, 26.141949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.784718, 16.751728, 26.256783>,  <19.130299, 16.814529, 26.448174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.784718, 16.751728, 26.256783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503507, 0.285016, 0.815626,
		0.008317, 0.945577, -0.325292,
		-0.863951, -0.157003, -0.478475,
		18.525532, 16.704628, 26.113239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.297964, 16.039999, 10.140109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.962315, 15.908199, 10.313222>,  <19.760925, 15.829120, 10.417089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.962315, 15.908199, 10.313222>,  <20.297964, 16.039999, 10.140109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962315, 15.908199, 10.313222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444123, 0.044332, 0.894868,
		-0.314043, 0.943115, 0.109137,
		-0.839126, -0.329497, 0.432781,
		19.710577, 15.809350, 10.443056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.292503, 16.339268, 10.760235>,  <20.297964, 16.039999, 10.140109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.292503, 16.339268, 10.760235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.997093, 16.078037, 10.827253>,  <19.819847, 15.921299, 10.867465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.997093, 16.078037, 10.827253>,  <20.292503, 16.339268, 10.760235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997093, 16.078037, 10.827253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249260, -0.033570, 0.967854,
		-0.626457, 0.756549, 0.187578,
		-0.738526, -0.653075, 0.167547,
		19.775536, 15.882114, 10.877518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044767, 16.470814, 11.417726>,  <20.292503, 16.339268, 10.760235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.044767, 16.470814, 11.417726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.903019, 16.100979, 11.361780>,  <19.817970, 15.879078, 11.328213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.903019, 16.100979, 11.361780>,  <20.044767, 16.470814, 11.417726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903019, 16.100979, 11.361780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150125, -0.203882, 0.967416,
		-0.922976, 0.321826, 0.211054,
		-0.354370, -0.924586, -0.139864,
		19.796707, 15.823603, 11.319821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557783, 16.347647, 11.910647>,  <20.044767, 16.470814, 11.417726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.557783, 16.347647, 11.910647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.665047, 15.976044, 11.808640>,  <19.729404, 15.753082, 11.747435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.665047, 15.976044, 11.808640>,  <19.557783, 16.347647, 11.910647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.665047, 15.976044, 11.808640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028962, -0.272369, 0.961757,
		-0.962939, -0.250520, -0.099945,
		0.268161, -0.929008, -0.255019,
		19.745495, 15.697342, 11.732134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058062, 15.933120, 12.222352>,  <19.557783, 16.347647, 11.910647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058062, 15.933120, 12.222352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.383003, 15.706348, 12.167692>,  <19.577969, 15.570286, 12.134896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.383003, 15.706348, 12.167692>,  <19.058062, 15.933120, 12.222352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383003, 15.706348, 12.167692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068812, -0.325874, 0.942905,
		-0.579092, -0.756569, -0.303737,
		0.812353, -0.566930, -0.136650,
		19.626709, 15.536269, 12.126698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924490, 15.308772, 12.642200>,  <19.058062, 15.933120, 12.222352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924490, 15.308772, 12.642200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.318489, 15.308193, 12.573171>,  <19.554888, 15.307846, 12.531754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.318489, 15.308193, 12.573171>,  <18.924490, 15.308772, 12.642200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318489, 15.308193, 12.573171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165486, -0.275798, 0.946863,
		-0.048965, -0.961214, -0.271421,
		0.984996, -0.001447, -0.172572,
		19.613987, 15.307759, 12.521399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186386, 14.685443, 12.864495>,  <18.924490, 15.308772, 12.642200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186386, 14.685443, 12.864495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489464, 14.944160, 12.899266>,  <19.671310, 15.099391, 12.920129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489464, 14.944160, 12.899266>,  <19.186386, 14.685443, 12.864495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489464, 14.944160, 12.899266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124733, -0.274272, 0.953529,
		0.640578, -0.711641, -0.288491,
		0.757694, 0.646794, 0.086927,
		19.716772, 15.138199, 12.925344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652920, 14.399283, 13.298125>,  <19.186386, 14.685443, 12.864495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652920, 14.399283, 13.298125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.794636, 14.773289, 13.292078>,  <19.879665, 14.997692, 13.288449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.794636, 14.773289, 13.292078>,  <19.652920, 14.399283, 13.298125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794636, 14.773289, 13.292078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099121, -0.021472, 0.994844,
		0.929868, -0.353961, -0.100287,
		0.354289, 0.935014, -0.015119,
		19.900923, 15.053793, 13.287542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.355553, 14.415455, 13.515094>,  <19.652920, 14.399283, 13.298125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.355553, 14.415455, 13.515094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.208790, 14.783161, 13.572124>,  <20.120731, 15.003785, 13.606341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.208790, 14.783161, 13.572124>,  <20.355553, 14.415455, 13.515094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208790, 14.783161, 13.572124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262843, -0.044574, 0.963809,
		0.892352, 0.391105, -0.225268,
		-0.366909, 0.919266, 0.142575,
		20.098717, 15.058941, 13.614896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.776762, 14.772204, 13.933250>,  <20.355553, 14.415455, 13.515094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.776762, 14.772204, 13.933250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.432510, 14.964901, 13.999270>,  <20.225960, 15.080519, 14.038882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.432510, 14.964901, 13.999270>,  <20.776762, 14.772204, 13.933250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432510, 14.964901, 13.999270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228766, 0.076186, 0.970496,
		0.454953, 0.872995, -0.175774,
		-0.860630, 0.481741, 0.165051,
		20.174322, 15.109424, 14.048785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893385, 15.251991, 14.538669>,  <20.776762, 14.772204, 13.933250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893385, 15.251991, 14.538669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.495262, 15.255268, 14.500100>,  <20.256388, 15.257235, 14.476959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.495262, 15.255268, 14.500100>,  <20.893385, 15.251991, 14.538669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.495262, 15.255268, 14.500100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093971, 0.155971, 0.983281,
		0.023095, 0.987728, -0.154469,
		-0.995307, 0.008193, -0.096420,
		20.196671, 15.257726, 14.471174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625757, 15.957359, 14.906487>,  <20.893385, 15.251991, 14.538669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625757, 15.957359, 14.906487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.312958, 15.708408, 14.893077>,  <20.125278, 15.559038, 14.885031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.312958, 15.708408, 14.893077>,  <20.625757, 15.957359, 14.906487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312958, 15.708408, 14.893077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139581, 0.122449, 0.982611,
		-0.607448, 0.773081, -0.182627,
		-0.782000, -0.622376, -0.033526,
		20.078358, 15.521695, 14.883019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.716864, 16.742788, 14.761720>,  <20.625757, 15.957359, 14.906487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.716864, 16.742788, 14.761720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.067142, 16.898647, 14.875794>,  <21.277309, 16.992163, 14.944240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.067142, 16.898647, 14.875794>,  <20.716864, 16.742788, 14.761720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067142, 16.898647, 14.875794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306662, 0.007431, -0.951790,
		-0.372979, 0.920935, -0.112982,
		0.875697, 0.389645, 0.285187,
		21.329851, 17.015541, 14.961350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.867893, 17.493233, 14.439551>,  <20.716864, 16.742788, 14.761720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.867893, 17.493233, 14.439551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.229591, 17.342503, 14.519893>,  <21.446609, 17.252064, 14.568097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.229591, 17.342503, 14.519893>,  <20.867893, 17.493233, 14.439551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.229591, 17.342503, 14.519893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267995, 0.134611, -0.953970,
		0.332444, 0.916451, 0.222709,
		0.904246, -0.376826, 0.200853,
		21.500866, 17.229454, 14.580149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.240204, 17.911968, 14.136773>,  <20.867893, 17.493233, 14.439551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.240204, 17.911968, 14.136773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.493359, 17.602371, 14.144654>,  <21.645252, 17.416613, 14.149383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.493359, 17.602371, 14.144654>,  <21.240204, 17.911968, 14.136773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493359, 17.602371, 14.144654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270905, 0.197534, -0.942120,
		0.725302, 0.601595, 0.334695,
		0.632888, -0.773992, 0.019703,
		21.683226, 17.370174, 14.150565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824100, 18.159443, 13.777517>,  <21.240204, 17.911968, 14.136773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824100, 18.159443, 13.777517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.886669, 17.764378, 13.780307>,  <21.924212, 17.527338, 13.781981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.886669, 17.764378, 13.780307>,  <21.824100, 18.159443, 13.777517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.886669, 17.764378, 13.780307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326364, 0.045022, -0.944171,
		0.932212, 0.149966, 0.329381,
		0.156423, -0.987665, 0.006973,
		21.933596, 17.468079, 13.782399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.535147, 18.067280, 13.533180>,  <21.824100, 18.159443, 13.777517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.535147, 18.067280, 13.533180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.328625, 17.727779, 13.487487>,  <22.204712, 17.524078, 13.460071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.328625, 17.727779, 13.487487>,  <22.535147, 18.067280, 13.533180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328625, 17.727779, 13.487487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403367, -0.123340, -0.906688,
		0.755463, -0.514206, 0.406040,
		-0.516305, -0.848752, -0.114234,
		22.173733, 17.473154, 13.453217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094404, 17.629499, 13.305137>,  <22.535147, 18.067280, 13.533180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094404, 17.629499, 13.305137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.754665, 17.449257, 13.195184>,  <22.550821, 17.341110, 13.129212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.754665, 17.449257, 13.195184>,  <23.094404, 17.629499, 13.305137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.754665, 17.449257, 13.195184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340561, -0.069953, -0.937616,
		0.403269, -0.889977, 0.212874,
		-0.849348, -0.450608, -0.274882,
		22.499861, 17.314075, 13.112720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269567, 16.963787, 12.928105>,  <23.094404, 17.629499, 13.305137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269567, 16.963787, 12.928105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.905380, 17.077457, 12.807909>,  <22.686869, 17.145660, 12.735791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.905380, 17.077457, 12.807909>,  <23.269567, 16.963787, 12.928105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.905380, 17.077457, 12.807909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303594, -0.034178, -0.952188,
		-0.280860, -0.958163, -0.055156,
		-0.910466, 0.284177, -0.300492,
		22.632240, 17.162710, 12.717761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.279898, 16.683826, 12.294285>,  <23.269567, 16.963787, 12.928105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.279898, 16.683826, 12.294285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.966961, 16.932781, 12.303920>,  <22.779200, 17.082153, 12.309701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.966961, 16.932781, 12.303920>,  <23.279898, 16.683826, 12.294285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.966961, 16.932781, 12.303920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035214, 0.082810, -0.995943,
		-0.621856, -0.778317, -0.086702,
		-0.782340, 0.622386, 0.024088,
		22.732260, 17.119497, 12.311146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.692863, 16.435423, 11.812058>,  <23.279898, 16.683826, 12.294285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.692863, 16.435423, 11.812058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.689842, 16.831692, 11.866476>,  <22.688030, 17.069454, 11.899127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.689842, 16.831692, 11.866476>,  <22.692863, 16.435423, 11.812058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689842, 16.831692, 11.866476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113018, 0.136021, -0.984238,
		-0.993564, 0.007944, -0.112991,
		-0.007551, 0.990674, 0.136044,
		22.687576, 17.128895, 11.907290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261015, 16.752365, 11.323379>,  <22.692863, 16.435423, 11.812058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261015, 16.752365, 11.323379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.478569, 17.067429, 11.439160>,  <22.609102, 17.256466, 11.508630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.478569, 17.067429, 11.439160>,  <22.261015, 16.752365, 11.323379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478569, 17.067429, 11.439160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031492, 0.325532, -0.945006,
		-0.838567, 0.523092, 0.152247,
		0.543887, 0.787657, 0.289454,
		22.641735, 17.303726, 11.525996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060314, 17.224625, 10.884306>,  <22.261015, 16.752365, 11.323379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060314, 17.224625, 10.884306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.407211, 17.376080, 11.013626>,  <22.615351, 17.466951, 11.091218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.407211, 17.376080, 11.013626>,  <22.060314, 17.224625, 10.884306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407211, 17.376080, 11.013626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076746, 0.539926, -0.838207,
		-0.491933, 0.751742, 0.439189,
		0.867244, 0.378635, 0.323300,
		22.667385, 17.489670, 11.110616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022020, 17.953695, 10.805969>,  <22.060314, 17.224625, 10.884306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022020, 17.953695, 10.805969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.414131, 17.884972, 10.845029>,  <22.649399, 17.843737, 10.868464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.414131, 17.884972, 10.845029>,  <22.022020, 17.953695, 10.805969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.414131, 17.884972, 10.845029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167614, 0.461083, -0.871383,
		0.104690, 0.870565, 0.480788,
		0.980278, -0.171811, 0.097648,
		22.708214, 17.833427, 10.874323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367134, 18.641523, 10.957453>,  <22.022020, 17.953695, 10.805969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367134, 18.641523, 10.957453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.633503, 18.403946, 10.776885>,  <22.793324, 18.261398, 10.668545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.633503, 18.403946, 10.776885>,  <22.367134, 18.641523, 10.957453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.633503, 18.403946, 10.776885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202928, 0.726498, -0.656522,
		0.717893, 0.345585, 0.604318,
		0.665920, -0.593946, -0.451419,
		22.833279, 18.225761, 10.641459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.011972, 19.040422, 10.784309>,  <22.367134, 18.641523, 10.957453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.011972, 19.040422, 10.784309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.021111, 18.714565, 10.552505>,  <23.026594, 18.519051, 10.413422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.021111, 18.714565, 10.552505>,  <23.011972, 19.040422, 10.784309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.021111, 18.714565, 10.552505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239453, 0.567250, -0.787966,
		0.970639, -0.120764, 0.208028,
		0.022846, -0.814643, -0.579512,
		23.027964, 18.470173, 10.378651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309633, 19.260460, 10.556242>,  <23.011972, 19.040422, 10.784309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309633, 19.260460, 10.556242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.161911, 19.468735, 10.248345>,  <22.073278, 19.593700, 10.063607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.161911, 19.468735, 10.248345>,  <22.309633, 19.260460, 10.556242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.161911, 19.468735, 10.248345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067059, 0.811203, 0.580907,
		0.926886, 0.266149, -0.264664,
		-0.369304, 0.520686, -0.769740,
		22.051121, 19.624941, 10.017424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643217, 20.015133, 10.349443>,  <22.309633, 19.260460, 10.556242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643217, 20.015133, 10.349443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.251717, 19.945084, 10.306772>,  <22.016817, 19.903055, 10.281170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.251717, 19.945084, 10.306772>,  <22.643217, 20.015133, 10.349443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251717, 19.945084, 10.306772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204354, 0.790039, 0.577995,
		-0.016940, 0.587513, -0.809038,
		-0.978751, -0.175122, -0.106677,
		21.958092, 19.892548, 10.274769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278294, 20.715822, 10.329573>,  <22.643217, 20.015133, 10.349443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278294, 20.715822, 10.329573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.988636, 20.455372, 10.420479>,  <21.814842, 20.299101, 10.475022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.988636, 20.455372, 10.420479>,  <22.278294, 20.715822, 10.329573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988636, 20.455372, 10.420479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460030, 0.701568, 0.544220,
		-0.513799, 0.289545, -0.807573,
		-0.724143, -0.651127, 0.227265,
		21.771393, 20.260035, 10.488659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.574291, 21.036713, 10.296194>,  <22.278294, 20.715822, 10.329573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.574291, 21.036713, 10.296194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.538895, 20.724525, 10.543755>,  <21.517656, 20.537212, 10.692291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.538895, 20.724525, 10.543755>,  <21.574291, 21.036713, 10.296194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.538895, 20.724525, 10.543755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480850, 0.577618, 0.659652,
		-0.872326, -0.239226, -0.426402,
		-0.088492, -0.780467, 0.618902,
		21.512346, 20.490385, 10.729425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.903114, 20.934738, 10.425482>,  <21.574291, 21.036713, 10.296194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.903114, 20.934738, 10.425482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.087917, 20.776825, 10.743147>,  <21.198799, 20.682077, 10.933745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.087917, 20.776825, 10.743147>,  <20.903114, 20.934738, 10.425482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.087917, 20.776825, 10.743147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524755, 0.600203, 0.603646,
		-0.714969, -0.695630, 0.070134,
		0.462009, -0.394785, 0.794162,
		21.226521, 20.658390, 10.981396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451242, 21.146013, 11.114663>,  <20.903114, 20.934738, 10.425482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451242, 21.146013, 11.114663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.783539, 20.990246, 11.273770>,  <20.982918, 20.896786, 11.369235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.783539, 20.990246, 11.273770>,  <20.451242, 21.146013, 11.114663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783539, 20.990246, 11.273770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294567, 0.298788, 0.907720,
		-0.472332, -0.871252, 0.133506,
		0.830743, -0.389418, 0.397769,
		21.032763, 20.873421, 11.393101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217266, 20.821810, 11.737646>,  <20.451242, 21.146013, 11.114663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217266, 20.821810, 11.737646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.607376, 20.884274, 11.800197>,  <20.841442, 20.921751, 11.837728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.607376, 20.884274, 11.800197>,  <20.217266, 20.821810, 11.737646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607376, 20.884274, 11.800197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197693, 0.300203, 0.933164,
		0.098776, -0.941006, 0.323651,
		0.975275, 0.156158, 0.156378,
		20.899958, 20.931122, 11.847110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447435, 20.332634, 12.197209>,  <20.217266, 20.821810, 11.737646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.447435, 20.332634, 12.197209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.706318, 20.635632, 12.231443>,  <20.861649, 20.817430, 12.251984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.706318, 20.635632, 12.231443>,  <20.447435, 20.332634, 12.197209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.706318, 20.635632, 12.231443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231459, 0.088297, 0.968829,
		0.726325, -0.646844, 0.232475,
		0.647208, 0.757493, 0.085586,
		20.900480, 20.862879, 12.257119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501678, 20.414373, 12.842054>,  <20.447435, 20.332634, 12.197209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501678, 20.414373, 12.842054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.695446, 20.757282, 12.772287>,  <20.811707, 20.963028, 12.730427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.695446, 20.757282, 12.772287>,  <20.501678, 20.414373, 12.842054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695446, 20.757282, 12.772287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344260, 0.370086, 0.862857,
		0.804253, -0.357940, 0.474401,
		0.484420, 0.857272, -0.174418,
		20.840773, 21.014463, 12.719962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957287, 20.496180, 13.404854>,  <20.501678, 20.414373, 12.842054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957287, 20.496180, 13.404854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.914391, 20.857716, 13.239170>,  <20.888653, 21.074638, 13.139760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.914391, 20.857716, 13.239170>,  <20.957287, 20.496180, 13.404854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914391, 20.857716, 13.239170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097390, 0.405058, 0.909089,
		0.989451, 0.137833, 0.044586,
		-0.107243, 0.903842, -0.414209,
		20.882217, 21.128868, 13.114907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479548, 20.937204, 13.701912>,  <20.957287, 20.496180, 13.404854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479548, 20.937204, 13.701912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.205120, 21.183193, 13.546416>,  <21.040462, 21.330786, 13.453118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.205120, 21.183193, 13.546416>,  <21.479548, 20.937204, 13.701912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205120, 21.183193, 13.546416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098205, 0.451155, 0.887026,
		0.720877, 0.646738, -0.249131,
		-0.686070, 0.614970, -0.388740,
		20.999298, 21.367683, 13.429794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588919, 21.649349, 14.069812>,  <21.479548, 20.937204, 13.701912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588919, 21.649349, 14.069812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.220039, 21.653606, 13.915185>,  <20.998711, 21.656160, 13.822409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.220039, 21.653606, 13.915185>,  <21.588919, 21.649349, 14.069812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.220039, 21.653606, 13.915185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345659, 0.425545, 0.836320,
		0.173401, 0.904875, -0.388759,
		-0.922200, 0.010641, -0.386568,
		20.943380, 21.656799, 13.799214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.269512, 22.215937, 14.367935>,  <21.588919, 21.649349, 14.069812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.269512, 22.215937, 14.367935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.970901, 21.974304, 14.256377>,  <20.791735, 21.829325, 14.189443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.970901, 21.974304, 14.256377>,  <21.269512, 22.215937, 14.367935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.970901, 21.974304, 14.256377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347739, -0.003130, 0.937586,
		-0.567251, 0.796917, -0.207726,
		-0.746528, -0.604081, -0.278895,
		20.746943, 21.793079, 14.172709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587141, 22.458599, 14.648797>,  <21.269512, 22.215937, 14.367935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587141, 22.458599, 14.648797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.480556, 22.084789, 14.554425>,  <20.416607, 21.860504, 14.497803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.480556, 22.084789, 14.554425>,  <20.587141, 22.458599, 14.648797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480556, 22.084789, 14.554425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517321, -0.067868, 0.853096,
		-0.813252, 0.349366, -0.465365,
		-0.266460, -0.934525, -0.235929,
		20.400620, 21.804432, 14.483646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952543, 22.406029, 14.851622>,  <20.587141, 22.458599, 14.648797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952543, 22.406029, 14.851622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031170, 22.015064, 14.820565>,  <20.078346, 21.780485, 14.801931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031170, 22.015064, 14.820565>,  <19.952543, 22.406029, 14.851622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031170, 22.015064, 14.820565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413776, -0.154481, 0.897176,
		-0.888905, -0.144229, -0.434795,
		0.196566, -0.977412, -0.077640,
		20.090139, 21.721840, 14.797273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320118, 22.030048, 14.957455>,  <19.952543, 22.406029, 14.851622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320118, 22.030048, 14.957455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.592865, 21.762146, 15.075088>,  <19.756514, 21.601404, 15.145667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.592865, 21.762146, 15.075088>,  <19.320118, 22.030048, 14.957455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592865, 21.762146, 15.075088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411901, -0.019330, 0.911023,
		-0.604481, -0.742327, -0.289055,
		0.681865, -0.669758, 0.294081,
		19.797424, 21.561218, 15.163312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968586, 21.476063, 15.301042>,  <19.320118, 22.030048, 14.957455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968586, 21.476063, 15.301042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.342419, 21.447468, 15.440436>,  <19.566719, 21.430311, 15.524073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.342419, 21.447468, 15.440436>,  <18.968586, 21.476063, 15.301042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342419, 21.447468, 15.440436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352578, -0.055756, 0.934120,
		-0.047324, -0.995884, -0.077304,
		0.934585, -0.071462, 0.348488,
		19.622793, 21.426022, 15.544982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.904135, 20.937958, 15.718033>,  <18.968586, 21.476063, 15.301042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.904135, 20.937958, 15.718033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.248451, 21.104420, 15.835238>,  <19.455040, 21.204296, 15.905561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.248451, 21.104420, 15.835238>,  <18.904135, 20.937958, 15.718033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248451, 21.104420, 15.835238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179569, -0.290366, 0.939916,
		0.476232, -0.861686, -0.175215,
		0.860789, 0.416155, 0.293014,
		19.506687, 21.229267, 15.923142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229727, 20.363234, 16.154678>,  <18.904135, 20.937958, 15.718033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229727, 20.363234, 16.154678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369087, 20.730816, 16.228580>,  <19.452703, 20.951366, 16.272921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369087, 20.730816, 16.228580>,  <19.229727, 20.363234, 16.154678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369087, 20.730816, 16.228580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265449, -0.092304, 0.959696,
		0.898973, -0.383403, 0.211777,
		0.348402, 0.918957, 0.184753,
		19.473608, 21.006502, 16.284006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759836, 20.319874, 16.717405>,  <19.229727, 20.363234, 16.154678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759836, 20.319874, 16.717405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.636894, 20.700489, 16.713343>,  <19.563129, 20.928860, 16.710905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.636894, 20.700489, 16.713343>,  <19.759836, 20.319874, 16.717405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636894, 20.700489, 16.713343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065872, -0.010626, 0.997772,
		0.949312, 0.307340, 0.065945,
		-0.307356, 0.951540, -0.010158,
		19.544687, 20.985950, 16.710295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058155, 20.556276, 17.283373>,  <19.759836, 20.319874, 16.717405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058155, 20.556276, 17.283373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.788372, 20.836842, 17.191174>,  <19.626503, 21.005180, 17.135855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.788372, 20.836842, 17.191174>,  <20.058155, 20.556276, 17.283373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788372, 20.836842, 17.191174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107711, 0.215379, 0.970572,
		0.730417, 0.679435, -0.069714,
		-0.674455, 0.701413, -0.230499,
		19.586035, 21.047266, 17.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.268341, 21.136889, 17.737101>,  <20.058155, 20.556276, 17.283373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.268341, 21.136889, 17.737101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.895405, 21.245598, 17.641703>,  <19.671642, 21.310823, 17.584465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.895405, 21.245598, 17.641703>,  <20.268341, 21.136889, 17.737101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895405, 21.245598, 17.641703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203976, 0.149292, 0.967526,
		0.298554, 0.950711, -0.083756,
		-0.932341, 0.271774, -0.238494,
		19.615702, 21.327129, 17.570154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158960, 21.628218, 18.190149>,  <20.268341, 21.136889, 17.737101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158960, 21.628218, 18.190149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.792347, 21.532688, 18.061819>,  <19.572378, 21.475370, 17.984821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.792347, 21.532688, 18.061819>,  <20.158960, 21.628218, 18.190149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792347, 21.532688, 18.061819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344389, 0.063371, 0.936686,
		-0.203370, 0.968994, -0.140329,
		-0.916535, -0.238822, -0.320823,
		19.517385, 21.461042, 17.965572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589825, 22.130072, 18.434643>,  <20.158960, 21.628218, 18.190149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589825, 22.130072, 18.434643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.413090, 21.780369, 18.354185>,  <19.307049, 21.570547, 18.305910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.413090, 21.780369, 18.354185>,  <19.589825, 22.130072, 18.434643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.413090, 21.780369, 18.354185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409734, -0.002801, 0.912201,
		-0.798060, 0.485458, -0.356975,
		-0.441835, -0.874255, -0.201144,
		19.280539, 21.518091, 18.293842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967157, 22.192827, 18.794863>,  <19.589825, 22.130072, 18.434643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967157, 22.192827, 18.794863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.004570, 21.802837, 18.714186>,  <19.027018, 21.568844, 18.665779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.004570, 21.802837, 18.714186>,  <18.967157, 22.192827, 18.794863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.004570, 21.802837, 18.714186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266280, -0.219699, 0.938524,
		-0.959347, -0.034074, -0.280164,
		0.093531, -0.974972, -0.201694,
		19.032629, 21.510345, 18.653677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310488, 21.937666, 18.884300>,  <18.967157, 22.192827, 18.794863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310488, 21.937666, 18.884300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.565372, 21.630905, 18.914816>,  <18.718304, 21.446848, 18.933125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.565372, 21.630905, 18.914816>,  <18.310488, 21.937666, 18.884300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565372, 21.630905, 18.914816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327625, -0.179956, 0.927512,
		-0.697583, -0.616015, -0.365927,
		0.637212, -0.766904, 0.076288,
		18.756536, 21.400833, 18.937702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016190, 21.640854, 19.493717>,  <18.310488, 21.937666, 18.884300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016190, 21.640854, 19.493717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.366947, 21.451580, 19.459879>,  <18.577402, 21.338017, 19.439577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.366947, 21.451580, 19.459879>,  <18.016190, 21.640854, 19.493717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366947, 21.451580, 19.459879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044531, -0.255195, 0.965864,
		-0.478621, -0.843191, -0.244850,
		0.876891, -0.473186, -0.084594,
		18.630014, 21.309624, 19.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.912289, 20.849197, 19.667048>,  <18.016190, 21.640854, 19.493717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.912289, 20.849197, 19.667048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.289600, 20.966614, 19.729086>,  <18.515987, 21.037064, 19.766310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.289600, 20.966614, 19.729086>,  <17.912289, 20.849197, 19.667048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289600, 20.966614, 19.729086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080272, -0.251652, 0.964483,
		0.322145, -0.922229, -0.213815,
		0.943281, 0.293540, 0.155097,
		18.572584, 21.054676, 19.775616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846094, 20.089106, 19.733166>,  <17.912289, 20.849197, 19.667048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846094, 20.089106, 19.733166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.476463, 19.936237, 19.731209>,  <17.254684, 19.844517, 19.730034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.476463, 19.936237, 19.731209>,  <17.846094, 20.089106, 19.733166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.476463, 19.936237, 19.731209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021429, 0.064585, -0.997682,
		0.381602, -0.921832, -0.067871,
		-0.924078, -0.382172, -0.004892,
		17.199240, 19.821587, 19.729742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791199, 19.486259, 19.300627>,  <17.846094, 20.089106, 19.733166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791199, 19.486259, 19.300627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.407875, 19.600540, 19.302349>,  <17.177881, 19.669109, 19.303383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.407875, 19.600540, 19.302349>,  <17.791199, 19.486259, 19.300627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.407875, 19.600540, 19.302349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058785, 0.211879, -0.975526,
		-0.279621, -0.934603, -0.219840,
		-0.958309, 0.285701, 0.004305,
		17.120382, 19.686251, 19.303640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446939, 19.100351, 18.837725>,  <17.791199, 19.486259, 19.300627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446939, 19.100351, 18.837725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211514, 19.422016, 18.870983>,  <17.070259, 19.615015, 18.890938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211514, 19.422016, 18.870983>,  <17.446939, 19.100351, 18.837725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211514, 19.422016, 18.870983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074978, 0.048106, -0.996024,
		-0.804967, -0.592458, 0.031981,
		-0.588564, 0.804164, 0.083145,
		17.034945, 19.663265, 18.895927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925318, 18.960869, 18.279755>,  <17.446939, 19.100351, 18.837725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925318, 18.960869, 18.279755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.918472, 19.343906, 18.394798>,  <16.914366, 19.573729, 18.463825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.918472, 19.343906, 18.394798>,  <16.925318, 18.960869, 18.279755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.918472, 19.343906, 18.394798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151114, 0.281871, -0.947477,
		-0.988368, -0.059677, 0.139882,
		-0.017114, 0.957595, 0.287611,
		16.913338, 19.631186, 18.481081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325502, 19.287792, 17.971561>,  <16.925318, 18.960869, 18.279755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325502, 19.287792, 17.971561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.581741, 19.587402, 18.039204>,  <16.735485, 19.767168, 18.079790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.581741, 19.587402, 18.039204>,  <16.325502, 19.287792, 17.971561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581741, 19.587402, 18.039204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143012, 0.332752, -0.932107,
		-0.754441, 0.572922, 0.320280,
		0.640598, 0.749024, 0.169107,
		16.773920, 19.812109, 18.089935>
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
