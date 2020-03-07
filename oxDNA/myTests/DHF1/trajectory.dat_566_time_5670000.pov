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
	<0.229767, 4.047331, 1.297842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.166519, 4.053093, 0.902916>,  <0.128571, 4.056550, 0.665960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.166519, 4.053093, 0.902916>,  <0.229767, 4.047331, 1.297842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.166519, 4.053093, 0.902916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986474, 0.046057, -0.157312,
		0.043207, -0.998835, -0.021495,
		-0.158119, 0.014407, -0.987315,
		0.119084, 4.057415, 0.606721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.118081, 3.444205, 0.838601>,  <0.229767, 4.047331, 1.297842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.118081, 3.444205, 0.838601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.313347, 3.719631, 0.624098>,  <0.430507, 3.884887, 0.495396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.313347, 3.719631, 0.624098>,  <0.118081, 3.444205, 0.838601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.313347, 3.719631, 0.624098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869384, -0.437579, 0.229557,
		-0.076590, -0.578276, -0.812238,
		0.488166, 0.688565, -0.536258,
		0.459796, 3.926201, 0.463220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.484176, 3.118005, 0.310422>,  <0.118081, 3.444205, 0.838601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.484176, 3.118005, 0.310422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.686825, 3.457008, 0.373747>,  <0.808414, 3.660410, 0.411742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.686825, 3.457008, 0.373747>,  <0.484176, 3.118005, 0.310422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.686825, 3.457008, 0.373747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860335, -0.484983, -0.156892,
		-0.056189, 0.215686, -0.974845,
		0.506622, 0.847509, 0.158312,
		0.838811, 3.711261, 0.421240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.919097, 3.355094, -0.296849>,  <0.484176, 3.118005, 0.310422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.919097, 3.355094, -0.296849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084538, 3.459213, 0.052134>,  <1.183802, 3.521684, 0.261523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.084538, 3.459213, 0.052134>,  <0.919097, 3.355094, -0.296849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.084538, 3.459213, 0.052134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745489, -0.646930, -0.160400,
		0.522666, 0.716747, -0.461620,
		0.413602, 0.260297, 0.872455,
		1.208618, 3.537302, 0.313870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.630325, 3.584004, -0.428093>,  <0.919097, 3.355094, -0.296849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.630325, 3.584004, -0.428093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.577042, 3.464539, -0.050087>,  <1.545072, 3.392859, 0.176717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.577042, 3.464539, -0.050087>,  <1.630325, 3.584004, -0.428093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.577042, 3.464539, -0.050087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636164, -0.756923, -0.149546,
		0.759968, 0.581264, 0.290827,
		-0.133208, -0.298664, 0.945016,
		1.537079, 3.374939, 0.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.298518, 3.476964, -0.161509>,  <1.630325, 3.584004, -0.428093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.298518, 3.476964, -0.161509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031944, 3.269821, 0.053038>,  <1.872000, 3.145535, 0.181766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.031944, 3.269821, 0.053038>,  <2.298518, 3.476964, -0.161509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.031944, 3.269821, 0.053038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557608, -0.823752, -0.102498,
		0.494913, 0.230774, 0.837738,
		-0.666434, -0.517857, 0.536367,
		1.832014, 3.114464, 0.213948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703663, 3.038251, 0.155919>,  <2.298518, 3.476964, -0.161509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703663, 3.038251, 0.155919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353268, 2.855186, 0.216831>,  <2.143030, 2.745347, 0.253379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.353268, 2.855186, 0.216831>,  <2.703663, 3.038251, 0.155919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.353268, 2.855186, 0.216831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413518, -0.875121, -0.251329,
		0.248288, -0.157190, 0.955847,
		-0.875988, -0.457662, 0.152281,
		2.090471, 2.717888, 0.262515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.905956, 2.630054, 0.636745>,  <2.703663, 3.038251, 0.155919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.905956, 2.630054, 0.636745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.593639, 2.466312, 0.447941>,  <2.406250, 2.368067, 0.334658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.593639, 2.466312, 0.447941>,  <2.905956, 2.630054, 0.636745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.593639, 2.466312, 0.447941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550511, -0.808011, -0.209893,
		-0.295468, -0.423729, 0.856243,
		-0.780792, -0.409355, -0.472010,
		2.359402, 2.343506, 0.306338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.029580, 1.433573, -0.373357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.723465, 1.252861, -0.189953>,  <2.539796, 1.144434, -0.079910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.723465, 1.252861, -0.189953>,  <3.029580, 1.433573, -0.373357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.723465, 1.252861, -0.189953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322742, 0.885620, 0.333938,
		-0.556932, 0.107578, -0.823562,
		-0.765287, -0.451779, 0.458510,
		2.493879, 1.117327, -0.052400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.388945, 1.684588, -0.669155>,  <3.029580, 1.433573, -0.373357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.388945, 1.684588, -0.669155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.332962, 1.573212, -0.289074>,  <2.299372, 1.506386, -0.061026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.332962, 1.573212, -0.289074>,  <2.388945, 1.684588, -0.669155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.332962, 1.573212, -0.289074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369051, 0.905168, 0.210885,
		-0.918811, -0.321158, -0.229443,
		-0.139957, -0.278440, 0.950202,
		2.290975, 1.489680, -0.004013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.658052, 1.770167, -0.635452>,  <2.388945, 1.684588, -0.669155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.658052, 1.770167, -0.635452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.872742, 1.793385, -0.298748>,  <2.001555, 1.807315, -0.096726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.872742, 1.793385, -0.298748>,  <1.658052, 1.770167, -0.635452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.872742, 1.793385, -0.298748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506607, 0.819961, 0.266482,
		-0.674742, -0.569468, 0.469498,
		0.536724, 0.058044, 0.841759,
		2.033759, 1.810798, -0.046220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.186409, 1.987745, -0.218105>,  <1.658052, 1.770167, -0.635452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.186409, 1.987745, -0.218105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.531105, 2.068344, -0.031857>,  <1.737923, 2.116704, 0.079893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.531105, 2.068344, -0.031857>,  <1.186409, 1.987745, -0.218105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.531105, 2.068344, -0.031857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364892, 0.883793, 0.292853,
		-0.352504, -0.422265, 0.835125,
		0.861740, 0.201499, 0.465621,
		1.789627, 2.128794, 0.107830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.984552, 2.150694, 0.459096>,  <1.186409, 1.987745, -0.218105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.984552, 2.150694, 0.459096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.326416, 2.347404, 0.392506>,  <1.531534, 2.465431, 0.352552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.326416, 2.347404, 0.392506>,  <0.984552, 2.150694, 0.459096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.326416, 2.347404, 0.392506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400566, 0.828566, 0.391184,
		0.330310, -0.267645, 0.905130,
		0.854659, 0.491776, -0.166474,
		1.582814, 2.494937, 0.342563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230114, 2.395036, 1.148726>,  <0.984552, 2.150694, 0.459095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230114, 2.395036, 1.148726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.347481, 2.626247, 0.844151>,  <1.417901, 2.764974, 0.661405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.347481, 2.626247, 0.844151>,  <1.230114, 2.395036, 1.148726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.347481, 2.626247, 0.844151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387085, 0.800118, 0.458231,
		0.874112, 0.160290, 0.458513,
		0.293415, 0.578029, -0.761440,
		1.435506, 2.799656, 0.615719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.429443, 2.976774, 1.433295>,  <1.230114, 2.395036, 1.148726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.429443, 2.976774, 1.433295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.431602, 3.102303, 1.053509>,  <1.432898, 3.177620, 0.825637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.431602, 3.102303, 1.053509>,  <1.429443, 2.976774, 1.433295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.431602, 3.102303, 1.053509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280235, 0.911909, 0.299815,
		0.959916, 0.264456, 0.092867,
		0.005398, 0.313822, -0.949466,
		1.433222, 3.196449, 0.768669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.553137, 3.604184, 1.581380>,  <1.429443, 2.976774, 1.433295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.553137, 3.604184, 1.581380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388779, 3.575104, 1.217869>,  <1.290163, 3.557656, 0.999762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388779, 3.575104, 1.217869>,  <1.553137, 3.604184, 1.581380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388779, 3.575104, 1.217869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514530, 0.841383, 0.165331,
		0.752610, 0.535527, -0.383128,
		-0.410897, -0.072701, -0.908778,
		1.265510, 3.553293, 0.945235>
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
