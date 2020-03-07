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
	<2.187640, 2.622535, 1.741396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.248804, 2.999130, 1.621251>,  <2.285503, 3.225087, 1.549164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.248804, 2.999130, 1.621251>,  <2.187640, 2.622535, 1.741396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.248804, 2.999130, 1.621251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348256, 0.335776, 0.875198,
		0.924844, -0.029223, 0.379223,
		0.152910, 0.941488, -0.300363,
		2.294677, 3.281577, 1.531142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.668742, 3.043719, 2.248740>,  <2.187640, 2.622535, 1.741396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.668742, 3.043719, 2.248740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.404507, 3.264645, 2.045341>,  <2.245965, 3.397200, 1.923301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.404507, 3.264645, 2.045341>,  <2.668742, 3.043719, 2.248740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.404507, 3.264645, 2.045341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372810, 0.346576, 0.860755,
		0.651640, 0.758178, -0.023036,
		-0.660589, 0.552314, -0.508499,
		2.206330, 3.430339, 1.892791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.424934, 3.609029, 2.595138>,  <2.668742, 3.043719, 2.248740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.424934, 3.609029, 2.595138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.206694, 3.842617, 2.835571>,  <2.075750, 3.982770, 2.979831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.206694, 3.842617, 2.835571>,  <2.424934, 3.609029, 2.595138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.206694, 3.842617, 2.835571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276518, -0.802520, 0.528678,
		0.791112, 0.122237, 0.599333,
		-0.545600, 0.583969, 0.601082,
		2.043014, 4.017808, 3.015895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.606202, 3.423657, 3.264238>,  <2.424934, 3.609029, 2.595138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.606202, 3.423657, 3.264238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.238037, 3.579086, 3.281456>,  <2.017138, 3.672344, 3.291787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.238037, 3.579086, 3.281456>,  <2.606202, 3.423657, 3.264238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.238037, 3.579086, 3.281456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338294, -0.846790, 0.410492,
		0.195957, 0.363259, 0.910848,
		-0.920412, 0.388573, 0.043046,
		1.961914, 3.695658, 3.294370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.512041, 4.092740, 3.608747>,  <2.606202, 3.423657, 3.264238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.512041, 4.092740, 3.608747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.497366, 4.302582, 3.948969>,  <2.488561, 4.428487, 4.153102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.497366, 4.302582, 3.948969>,  <2.512041, 4.092740, 3.608747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.497366, 4.302582, 3.948969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241937, 0.830471, -0.501782,
		-0.969598, 0.187372, -0.157389,
		-0.036688, 0.524605, 0.850555,
		2.486360, 4.459963, 4.204136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.073983, 4.769342, 3.602305>,  <2.512041, 4.092740, 3.608747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.073983, 4.769342, 3.602305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.395039, 4.764011, 3.840832>,  <2.587672, 4.760813, 3.983948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.395039, 4.764011, 3.840832>,  <2.073983, 4.769342, 3.602305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.395039, 4.764011, 3.840832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396076, 0.759421, -0.516144,
		-0.445977, 0.650463, 0.614819,
		0.802639, -0.013327, 0.596317,
		2.635830, 4.760014, 4.019727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338494, 5.437177, 3.675774>,  <2.073983, 4.769342, 3.602305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338494, 5.437177, 3.675774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.666763, 5.224098, 3.758458>,  <2.863725, 5.096251, 3.808068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.666763, 5.224098, 3.758458>,  <2.338494, 5.437177, 3.675774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.666763, 5.224098, 3.758458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553094, 0.649757, -0.521443,
		0.143460, 0.542264, 0.827870,
		0.820674, -0.532696, 0.206709,
		2.912966, 5.064289, 3.820471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.820344, 5.899906, 4.064674>,  <2.338494, 5.437177, 3.675774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.820344, 5.899906, 4.064674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974482, 5.621082, 3.822809>,  <3.066964, 5.453788, 3.677690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974482, 5.621082, 3.822809>,  <2.820344, 5.899906, 4.064674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974482, 5.621082, 3.822809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400896, 0.716660, -0.570685,
		0.831139, -0.022497, 0.555609,
		0.385344, -0.697060, -0.604663,
		3.090085, 5.411964, 3.641410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.772369, 4.206457, -0.869376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.522101, 3.972908, -0.662444>,  <1.371940, 3.832779, -0.538284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.522101, 3.972908, -0.662444>,  <1.772369, 4.206457, -0.869376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.522101, 3.972908, -0.662444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330350, 0.799082, 0.502332,
		-0.706687, 0.143394, -0.692844,
		-0.625670, -0.583872, 0.517330,
		1.334400, 3.797746, -0.507245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.075072, 4.544764, -0.887725>,  <1.772369, 4.206457, -0.869376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.075072, 4.544764, -0.887725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.152691, 4.344513, -0.550272>,  <1.199262, 4.224363, -0.347799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.152691, 4.344513, -0.550272>,  <1.075072, 4.544764, -0.887725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.152691, 4.344513, -0.550272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360155, 0.763570, 0.535956,
		-0.912488, -0.407840, -0.032134,
		0.194048, -0.500626, 0.843634,
		1.210905, 4.194325, -0.297181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.462841, 4.485009, -0.413443>,  <1.075072, 4.544764, -0.887725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.462841, 4.485009, -0.413443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.785448, 4.462719, -0.178012>,  <0.979013, 4.449345, -0.036754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.785448, 4.462719, -0.178012>,  <0.462841, 4.485009, -0.413443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.785448, 4.462719, -0.178012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402418, 0.677585, 0.615580,
		-0.433114, -0.733331, 0.524060,
		0.806519, -0.055725, 0.588577,
		1.027404, 4.446002, -0.001439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330175, 4.444359, 0.374925>,  <0.462841, 4.485009, -0.413443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330175, 4.444359, 0.374925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.704101, 4.586384, 0.377771>,  <0.928457, 4.671598, 0.379479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.704101, 4.586384, 0.377771>,  <0.330175, 4.444359, 0.374925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.704101, 4.586384, 0.377771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222699, 0.570486, 0.790539,
		0.276630, -0.740593, 0.612371,
		0.934816, 0.355061, 0.007116,
		0.984546, 4.692903, 0.379906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.767052, 4.408377, 1.065506>,  <0.330175, 4.444359, 0.374925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.767052, 4.408377, 1.065506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.797059, 4.721897, 0.818921>,  <0.815063, 4.910009, 0.670969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.797059, 4.721897, 0.818921>,  <0.767052, 4.408377, 1.065506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.797059, 4.721897, 0.818921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520906, 0.557955, 0.646021,
		0.850311, 0.272657, 0.450144,
		0.075018, 0.783801, -0.616464,
		0.819565, 4.957037, 0.633981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.959594, 4.986538, 1.599490>,  <0.767052, 4.408377, 1.065506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.959594, 4.986538, 1.599490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765375, 5.081566, 1.262966>,  <0.648843, 5.138582, 1.061051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765375, 5.081566, 1.262966>,  <0.959594, 4.986538, 1.599490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.765375, 5.081566, 1.262966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673958, 0.511222, 0.533322,
		0.556798, 0.825962, -0.088111,
		-0.485548, 0.237569, -0.841311,
		0.619710, 5.152837, 1.010573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.907762, 5.698080, 1.567340>,  <0.959594, 4.986538, 1.599490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.907762, 5.698080, 1.567340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.626099, 5.561684, 1.318218>,  <0.457101, 5.479846, 1.168744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.626099, 5.561684, 1.318218>,  <0.907762, 5.698080, 1.567340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.626099, 5.561684, 1.318218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599704, 0.755230, 0.264543,
		0.380155, 0.559780, -0.736294,
		-0.704157, -0.340991, -0.622806,
		0.414852, 5.459386, 1.131376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.540243, 6.233824, 1.109599>,  <0.907762, 5.698080, 1.567340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.540243, 6.233824, 1.109599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.326084, 5.911972, 1.212300>,  <0.197589, 5.718861, 1.273921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.326084, 5.911972, 1.212300>,  <0.540243, 6.233824, 1.109599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.326084, 5.911972, 1.212300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715996, 0.593638, 0.367346,
		-0.447996, 0.012841, -0.893943,
		-0.535396, -0.804629, 0.256753,
		0.165465, 5.670583, 1.289326>
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
