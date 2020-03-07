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
	<3.543949, 2.327425, 2.084255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350603, 1.988224, 2.171204>,  <3.234596, 1.784703, 2.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350603, 1.988224, 2.171204>,  <3.543949, 2.327425, 2.084255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350603, 1.988224, 2.171204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870892, 0.440584, -0.217793,
		0.088918, -0.294582, -0.951480,
		-0.483365, -0.848002, 0.217373,
		3.205594, 1.733823, 2.236415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.174868, 2.138539, 1.560783>,  <3.543949, 2.327425, 2.084255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.174868, 2.138539, 1.560783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.988252, 1.996387, 1.884769>,  <2.876282, 1.911096, 2.079161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.988252, 1.996387, 1.884769>,  <3.174868, 2.138539, 1.560783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.988252, 1.996387, 1.884769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804962, 0.550111, -0.222292,
		-0.366573, -0.755701, -0.542716,
		-0.466540, -0.355379, 0.809966,
		2.848289, 1.889774, 2.127759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.572579, 1.820995, 1.395841>,  <3.174868, 2.138539, 1.560783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.572579, 1.820995, 1.395841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.493004, 1.957626, 1.763264>,  <2.445258, 2.039605, 1.983717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.493004, 1.957626, 1.763264>,  <2.572579, 1.820995, 1.395841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.493004, 1.957626, 1.763264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797780, 0.487927, -0.354224,
		-0.569184, -0.803275, 0.175436,
		-0.198939, 0.341578, 0.918557,
		2.433322, 2.060100, 2.038831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.908771, 1.583003, 1.561596>,  <2.572579, 1.820995, 1.395841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.908771, 1.583003, 1.561596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.016909, 1.913303, 1.759605>,  <2.081791, 2.111484, 1.878411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.016909, 1.913303, 1.759605>,  <1.908771, 1.583003, 1.561596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.016909, 1.913303, 1.759605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849018, 0.446919, -0.281839,
		-0.453964, -0.344090, 0.821900,
		0.270344, 0.825752, 0.495023,
		2.098012, 2.161029, 1.908112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.290897, 1.826559, 1.923056>,  <1.908771, 1.583003, 1.561596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.290897, 1.826559, 1.923056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551692, 2.120396, 1.847916>,  <1.708169, 2.296698, 1.802831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.551692, 2.120396, 1.847916>,  <1.290897, 1.826559, 1.923056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.551692, 2.120396, 1.847916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750413, 0.589665, -0.298621,
		-0.108595, 0.335663, 0.935701,
		0.651987, 0.734592, -0.187852,
		1.747288, 2.340773, 1.791560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.031506, 2.489046, 2.150985>,  <1.290897, 1.826559, 1.923056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.031506, 2.489046, 2.150985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.299393, 2.575111, 1.866680>,  <1.460125, 2.626750, 1.696097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.299393, 2.575111, 1.866680>,  <1.031506, 2.489046, 2.150985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.299393, 2.575111, 1.866680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615758, 0.695907, -0.369533,
		0.415115, 0.685141, 0.598550,
		0.669718, 0.215163, -0.710762,
		1.500308, 2.639660, 1.653451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.306469, 3.168904, 2.140502>,  <1.031506, 2.489046, 2.150985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.306469, 3.168904, 2.140502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339585, 3.052097, 1.759373>,  <1.359455, 2.982013, 1.530695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339585, 3.052097, 1.759373>,  <1.306469, 3.168904, 2.140502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.339585, 3.052097, 1.759373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469947, 0.831683, -0.295725,
		0.878803, 0.472260, -0.068376,
		0.082792, -0.292017, -0.952823,
		1.364423, 2.964492, 1.473526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.619807, 3.731018, 1.752704>,  <1.306469, 3.168904, 2.140502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.619807, 3.731018, 1.752704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.363735, 3.513306, 1.535843>,  <1.210092, 3.382678, 1.405726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.363735, 3.513306, 1.535843>,  <1.619807, 3.731018, 1.752704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.363735, 3.513306, 1.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595964, 0.797180, -0.096591,
		0.484767, 0.261268, -0.834710,
		-0.640178, -0.544281, -0.542153,
		1.171682, 3.350021, 1.373197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.053392, 4.251849, 0.462687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.083710, 3.998718, 0.154457>,  <0.101900, 3.846840, -0.030481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.083710, 3.998718, 0.154457>,  <0.053392, 4.251849, 0.462687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.083710, 3.998718, 0.154457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919539, -0.254505, 0.299456,
		-0.385619, -0.731271, 0.562619,
		0.075794, -0.632827, -0.770575,
		0.106448, 3.808870, -0.076715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.092664, 3.587127, 0.681877>,  <0.053392, 4.251849, 0.462687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.092664, 3.587127, 0.681877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.179686, 3.597237, 0.389091>,  <0.343095, 3.603302, 0.213420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.179686, 3.597237, 0.389091>,  <-0.092664, 3.587127, 0.681877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.179686, 3.597237, 0.389091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705781, -0.289636, 0.646518,
		-0.195663, -0.956803, -0.215043,
		0.680874, 0.025274, -0.731964,
		0.383948, 3.604819, 0.169502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.361825, 3.258755, 1.029539>,  <-0.092664, 3.587127, 0.681877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.361825, 3.258755, 1.029539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.541088, 3.306648, 0.675179>,  <0.648646, 3.335384, 0.462563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.541088, 3.306648, 0.675179>,  <0.361825, 3.258755, 1.029539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.541088, 3.306648, 0.675179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838331, -0.400395, 0.369979,
		-0.310411, -0.908487, -0.279815,
		0.448158, 0.119732, -0.885900,
		0.675535, 3.342568, 0.409408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.669272, 2.631564, 0.958702>,  <0.361825, 3.258755, 1.029539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.669272, 2.631564, 0.958702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.864017, 2.927750, 0.773369>,  <0.980865, 3.105461, 0.662169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.864017, 2.927750, 0.773369>,  <0.669272, 2.631564, 0.958702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.864017, 2.927750, 0.773369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839542, -0.250268, 0.482219,
		0.241108, -0.623763, -0.743496,
		0.486863, 0.740463, -0.463334,
		1.010077, 3.149889, 0.634369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.205092, 2.387650, 0.659999>,  <0.669272, 2.631564, 0.958702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.205092, 2.387650, 0.659999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.242336, 2.765915, 0.784615>,  <1.264683, 2.992873, 0.859384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.242336, 2.765915, 0.784615>,  <1.205092, 2.387650, 0.659999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.242336, 2.765915, 0.784615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793666, -0.259425, 0.550266,
		0.601185, 0.196021, -0.774695,
		0.093111, 0.945661, 0.311538,
		1.270270, 3.049613, 0.878076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.815118, 2.741056, 0.340554>,  <1.205092, 2.387650, 0.659999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.815118, 2.741056, 0.340554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.685093, 2.823456, 0.709747>,  <1.607078, 2.872896, 0.931263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.685093, 2.823456, 0.709747>,  <1.815118, 2.741056, 0.340554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.685093, 2.823456, 0.709747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783796, -0.487413, 0.384827,
		0.529149, 0.848524, -0.003023,
		-0.325062, 0.206000, 0.922984,
		1.587574, 2.885256, 0.986642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.416664, 2.851997, 0.722647>,  <1.815118, 2.741056, 0.340554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.416664, 2.851997, 0.722647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.147926, 2.799500, 1.014236>,  <1.986684, 2.768001, 1.189190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.147926, 2.799500, 1.014236>,  <2.416664, 2.851997, 0.722647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.147926, 2.799500, 1.014236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687543, -0.476592, 0.547855,
		0.275520, 0.869272, 0.410432,
		-0.671844, -0.131244, 0.728973,
		1.946373, 2.760126, 1.232928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.767629, 3.085571, 1.377687>,  <2.416664, 2.851997, 0.722647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.767629, 3.085571, 1.377687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.475163, 2.826744, 1.464127>,  <2.299683, 2.671448, 1.515990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.475163, 2.826744, 1.464127>,  <2.767629, 3.085571, 1.377687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.475163, 2.826744, 1.464127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677997, -0.654138, 0.335297,
		-0.075601, 0.391672, 0.916994,
		-0.731167, -0.647068, 0.216098,
		2.255812, 2.632624, 1.528956>
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
