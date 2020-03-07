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
	<4.492637, 3.030493, 0.073540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179962, 3.031649, -0.175926>,  <3.992357, 3.032342, -0.325606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179962, 3.031649, -0.175926>,  <4.492637, 3.030493, 0.073540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.179962, 3.031649, -0.175926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611495, 0.193092, 0.767326,
		0.122642, 0.981176, -0.149171,
		-0.781686, 0.002889, -0.623665,
		3.945456, 3.032516, -0.363026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.042655, 3.673669, 0.203111>,  <4.492637, 3.030493, 0.073540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.042655, 3.673669, 0.203111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816349, 3.374277, 0.064728>,  <3.680566, 3.194641, -0.018302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816349, 3.374277, 0.064728>,  <4.042655, 3.673669, 0.203111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816349, 3.374277, 0.064728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681213, 0.187868, 0.707569,
		-0.464608, 0.635988, -0.616164,
		-0.565763, -0.748482, -0.345958,
		3.646620, 3.149732, -0.039060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.333439, 3.853281, 0.050340>,  <4.042655, 3.673669, 0.203111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.333439, 3.853281, 0.050340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.303612, 4.238205, -0.054270>,  <3.285715, 4.469160, -0.117036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.303612, 4.238205, -0.054270>,  <3.333439, 3.853281, 0.050340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.303612, 4.238205, -0.054270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465630, 0.198311, 0.862474,
		0.881832, 0.186088, 0.433293,
		-0.074569, 0.962312, -0.261525,
		3.281241, 4.526899, -0.132727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.474789, 4.247999, 0.675402>,  <3.333439, 3.853281, 0.050340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.474789, 4.247999, 0.675402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280575, 4.496779, 0.429659>,  <3.164047, 4.646047, 0.282213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280575, 4.496779, 0.429659>,  <3.474789, 4.247999, 0.675402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.280575, 4.496779, 0.429659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623975, 0.245656, 0.741828,
		0.612300, 0.743526, 0.268807,
		-0.485535, 0.621950, -0.614357,
		3.134914, 4.683364, 0.245352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.468399, 4.929004, 1.010783>,  <3.474789, 4.247999, 0.675402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.468399, 4.929004, 1.010783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.159019, 4.892690, 0.759853>,  <2.973392, 4.870902, 0.609296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.159019, 4.892690, 0.759853>,  <3.468399, 4.929004, 1.010783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.159019, 4.892690, 0.759853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633195, 0.155919, 0.758125,
		0.028985, 0.983589, -0.178080,
		-0.773449, -0.090785, -0.627323,
		2.926985, 4.865455, 0.571656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.032679, 5.569195, 1.120380>,  <3.468399, 4.929004, 1.010783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.032679, 5.569195, 1.120380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811295, 5.276390, 0.961466>,  <2.678464, 5.100706, 0.866117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811295, 5.276390, 0.961466>,  <3.032679, 5.569195, 1.120380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.811295, 5.276390, 0.961466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772478, 0.272830, 0.573446,
		-0.311380, 0.624275, -0.716466,
		-0.553462, -0.732014, -0.397285,
		2.645256, 5.056785, 0.842280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.400642, 5.867446, 0.939590>,  <3.032679, 5.569195, 1.120380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.400642, 5.867446, 0.939590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.325737, 5.474677, 0.950609>,  <2.280794, 5.239016, 0.957221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.325737, 5.474677, 0.950609>,  <2.400642, 5.867446, 0.939590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.325737, 5.474677, 0.950609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830042, 0.173170, 0.530135,
		-0.525322, 0.076407, -0.847466,
		-0.187262, -0.981924, 0.027549,
		2.269558, 5.180100, 0.958874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660244, 5.831637, 0.921180>,  <2.400642, 5.867446, 0.939590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660244, 5.831637, 0.921180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.767658, 5.467781, 1.047951>,  <1.832107, 5.249467, 1.124013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.767658, 5.467781, 1.047951>,  <1.660244, 5.831637, 0.921180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.767658, 5.467781, 1.047951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783887, -0.015149, 0.620718,
		-0.559830, -0.415120, -0.717123,
		0.268536, -0.909640, 0.316927,
		1.848219, 5.194889, 1.143029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.509869, 5.620630, 2.548868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.297714, 5.326969, 2.379299>,  <1.170422, 5.150773, 2.277558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.297714, 5.326969, 2.379299>,  <1.509869, 5.620630, 2.548868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.297714, 5.326969, 2.379299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675242, -0.063495, -0.734859,
		0.512582, -0.676009, 0.529407,
		-0.530385, -0.734153, -0.423923,
		1.138599, 5.106723, 2.252122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.998779, 5.118340, 2.312464>,  <1.509869, 5.620630, 2.548868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.998779, 5.118340, 2.312464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.667755, 4.991356, 2.127266>,  <1.469141, 4.915165, 2.016147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.667755, 4.991356, 2.127266>,  <1.998779, 5.118340, 2.312464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.667755, 4.991356, 2.127266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540589, -0.228284, -0.809722,
		0.151360, -0.920383, 0.360534,
		-0.827559, -0.317460, -0.462996,
		1.419487, 4.896118, 1.988367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.119422, 4.431808, 2.129842>,  <1.998779, 5.118340, 2.312464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.119422, 4.431808, 2.129842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.859825, 4.614733, 1.886639>,  <1.704067, 4.724488, 1.740717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.859825, 4.614733, 1.886639>,  <2.119422, 4.431808, 2.129842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.859825, 4.614733, 1.886639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624276, -0.136674, -0.769155,
		-0.434843, -0.878741, -0.196788,
		-0.648993, 0.457312, -0.608009,
		1.665127, 4.751926, 1.704236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088703, 4.021137, 1.548999>,  <2.119422, 4.431808, 2.129842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088703, 4.021137, 1.548999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.984795, 4.379168, 1.404026>,  <1.922450, 4.593986, 1.317042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.984795, 4.379168, 1.404026>,  <2.088703, 4.021137, 1.548999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.984795, 4.379168, 1.404026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675200, -0.099968, -0.730829,
		-0.690380, -0.434561, -0.578387,
		-0.259770, 0.895077, -0.362432,
		1.906864, 4.647691, 1.295297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.726010, 3.991855, 0.832068>,  <2.088703, 4.021137, 1.548999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.726010, 3.991855, 0.832068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.906372, 4.345867, 0.878380>,  <2.014589, 4.558274, 0.906167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.906372, 4.345867, 0.878380>,  <1.726010, 3.991855, 0.832068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.906372, 4.345867, 0.878380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522536, -0.156579, -0.838116,
		-0.723630, 0.438411, -0.533063,
		0.450906, 0.885031, 0.115780,
		2.041644, 4.611376, 0.913114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.943332, 4.069173, 0.247869>,  <1.726010, 3.991855, 0.832068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.943332, 4.069173, 0.247869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.107452, 4.392677, 0.416420>,  <2.205925, 4.586780, 0.517550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.107452, 4.392677, 0.416420>,  <1.943332, 4.069173, 0.247869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.107452, 4.392677, 0.416420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659853, 0.055656, -0.749331,
		-0.629482, 0.585497, -0.510828,
		0.410300, 0.808762, 0.421377,
		2.230542, 4.635306, 0.542833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012265, 4.631302, -0.230767>,  <1.943332, 4.069173, 0.247869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012265, 4.631302, -0.230767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.307587, 4.712729, 0.026440>,  <2.484779, 4.761585, 0.180763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.307587, 4.712729, 0.026440>,  <2.012265, 4.631302, -0.230767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.307587, 4.712729, 0.026440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580420, 0.293840, -0.759455,
		-0.343543, 0.933927, 0.098788,
		0.738303, 0.203567, 0.643016,
		2.529078, 4.773798, 0.219344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.349977, 5.226548, -0.553682>,  <2.012265, 4.631302, -0.230767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.349977, 5.226548, -0.553682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.599297, 5.011147, -0.326874>,  <2.748888, 4.881906, -0.190789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.599297, 5.011147, -0.326874>,  <2.349977, 5.226548, -0.553682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.599297, 5.011147, -0.326874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737238, 0.162901, -0.655701,
		0.260729, 0.826727, 0.498541,
		0.623298, -0.538504, 0.567021,
		2.786286, 4.849596, -0.156767>
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
