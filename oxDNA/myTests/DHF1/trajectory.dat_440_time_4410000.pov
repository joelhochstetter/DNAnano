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
	<0.719431, 1.916012, 3.488872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889767, 2.155334, 3.760368>,  <0.991968, 2.298928, 3.923266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889767, 2.155334, 3.760368>,  <0.719431, 1.916012, 3.488872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889767, 2.155334, 3.760368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514516, 0.777190, -0.362283,
		-0.744268, -0.194949, 0.638796,
		0.425839, 0.598306, 0.678742,
		1.017519, 2.334826, 3.963991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.233434, 2.340081, 3.882015>,  <0.719431, 1.916012, 3.488872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.233434, 2.340081, 3.882015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.551682, 2.576065, 3.826965>,  <0.742630, 2.717655, 3.793936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.551682, 2.576065, 3.826965>,  <0.233434, 2.340081, 3.882015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.551682, 2.576065, 3.826965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605246, 0.764405, -0.222174,
		-0.025874, 0.260062, 0.965245,
		0.795618, 0.589960, -0.137623,
		0.790367, 2.753053, 3.785678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.255631, 2.915199, 4.390751>,  <0.233434, 2.340081, 3.882015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.255631, 2.915199, 4.390751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.414215, 2.998306, 4.033058>,  <0.509365, 3.048171, 3.818442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.414215, 2.998306, 4.033058>,  <0.255631, 2.915199, 4.390751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.414215, 2.998306, 4.033058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573375, 0.816755, -0.064439,
		0.716980, 0.538278, 0.442940,
		0.396459, 0.207769, -0.894233,
		0.533153, 3.060637, 3.764788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.352271, 3.655769, 4.237875>,  <0.255631, 2.915199, 4.390751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.352271, 3.655769, 4.237875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361668, 3.487183, 3.875259>,  <0.367306, 3.386031, 3.657690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.361668, 3.487183, 3.875259>,  <0.352271, 3.655769, 4.237875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.361668, 3.487183, 3.875259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470242, 0.795555, -0.382054,
		0.882225, 0.435269, -0.179502,
		0.023493, -0.421467, -0.906539,
		0.368715, 3.360743, 3.603297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.543810, 4.160690, 3.759039>,  <0.352271, 3.655769, 4.237875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.543810, 4.160690, 3.759039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.353745, 3.887352, 3.537315>,  <0.239705, 3.723349, 3.404281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.353745, 3.887352, 3.537315>,  <0.543810, 4.160690, 3.759039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.353745, 3.887352, 3.537315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489871, 0.728753, -0.478482,
		0.730952, 0.044224, -0.680995,
		-0.475117, -0.683347, -0.554347,
		0.211195, 3.682348, 3.371023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.530641, 4.373973, 3.032352>,  <0.543810, 4.160690, 3.759039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.530641, 4.373973, 3.032352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.231205, 4.109718, 3.054886>,  <0.051543, 3.951166, 3.068406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.231205, 4.109718, 3.054886>,  <0.530641, 4.373973, 3.032352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.231205, 4.109718, 3.054886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608970, 0.651459, -0.452501,
		0.262238, -0.373044, -0.889983,
		-0.748590, -0.660636, 0.056335,
		0.006628, 3.911527, 3.071786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.252200, 4.291381, 2.353202>,  <0.530641, 4.373973, 3.032352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.252200, 4.291381, 2.353202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.048309, 4.174065, 2.589699>,  <-0.228615, 4.103674, 2.731597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.048309, 4.174065, 2.589699>,  <0.252200, 4.291381, 2.353202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.048309, 4.174065, 2.589699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638129, 0.551456, -0.537296,
		-0.168460, -0.780946, -0.601453,
		-0.751274, -0.293292, 0.591242,
		-0.273692, 4.086077, 2.767071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.231920, 4.168500, 1.996087>,  <0.252200, 4.291381, 2.353202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.231920, 4.168500, 1.996087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.426495, 4.195801, 2.344505>,  <-0.543239, 4.212181, 2.553556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.426495, 4.195801, 2.344505>,  <-0.231920, 4.168500, 1.996087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.426495, 4.195801, 2.344505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661303, 0.622789, -0.418104,
		-0.571014, -0.779407, -0.257813,
		-0.486437, 0.068251, 0.871046,
		-0.572426, 4.216276, 2.605819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.774403, 5.250018, 2.073776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538134, 5.176392, 2.388031>,  <3.396373, 5.132216, 2.576584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538134, 5.176392, 2.388031>,  <3.774403, 5.250018, 2.073776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.538134, 5.176392, 2.388031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626641, -0.718030, 0.302908,
		0.508357, 0.671232, 0.539463,
		-0.590673, -0.184065, 0.785637,
		3.360932, 5.121172, 2.623722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.163167, 5.236301, 2.757200>,  <3.774403, 5.250018, 2.073776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.163167, 5.236301, 2.757200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.854326, 4.985962, 2.801331>,  <3.669021, 4.835759, 2.827809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.854326, 4.985962, 2.801331>,  <4.163167, 5.236301, 2.757200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.854326, 4.985962, 2.801331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620248, -0.704328, 0.345274,
		-0.138382, 0.335018, 0.931994,
		-0.772103, -0.625848, 0.110328,
		3.622695, 4.798208, 2.834429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.025140, 5.076757, 3.555453>,  <4.163167, 5.236301, 2.757200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.025140, 5.076757, 3.555453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.918406, 4.817467, 3.270187>,  <3.854365, 4.661892, 3.099028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.918406, 4.817467, 3.270187>,  <4.025140, 5.076757, 3.555453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.918406, 4.817467, 3.270187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677575, -0.652411, 0.339487,
		-0.685340, -0.392635, 0.613308,
		-0.266835, -0.648227, -0.713163,
		3.838355, 4.622999, 3.056238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.867580, 4.327349, 3.800983>,  <4.025140, 5.076757, 3.555453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.867580, 4.327349, 3.800983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.003370, 4.295334, 3.426102>,  <4.084845, 4.276124, 3.201173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.003370, 4.295334, 3.426102>,  <3.867580, 4.327349, 3.800983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.003370, 4.295334, 3.426102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609158, -0.740495, 0.283890,
		-0.716716, -0.667279, -0.202626,
		0.339477, -0.080037, -0.937203,
		4.105213, 4.271322, 3.144941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.927622, 3.610115, 3.670791>,  <3.867580, 4.327349, 3.800983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.927622, 3.610115, 3.670791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154781, 3.769119, 3.382492>,  <4.291077, 3.864522, 3.209513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154781, 3.769119, 3.382492>,  <3.927622, 3.610115, 3.670791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154781, 3.769119, 3.382492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665119, -0.737460, 0.117340,
		-0.484878, -0.546020, -0.683195,
		0.567899, 0.397511, -0.720747,
		4.325151, 3.888372, 3.166268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.984082, 3.118580, 3.166800>,  <3.927622, 3.610115, 3.670791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.984082, 3.118580, 3.166800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.311109, 3.347130, 3.138199>,  <4.507325, 3.484260, 3.121038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.311109, 3.347130, 3.138199>,  <3.984082, 3.118580, 3.166800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.311109, 3.347130, 3.138199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571528, -0.790023, 0.221853,
		0.070272, -0.222246, -0.972455,
		0.817568, 0.571376, -0.071503,
		4.556379, 3.518543, 3.116748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.519267, 2.722536, 2.858777>,  <3.984082, 3.118580, 3.166800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.519267, 2.722536, 2.858777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.742575, 3.021706, 3.002411>,  <4.876560, 3.201208, 3.088591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.742575, 3.021706, 3.002411>,  <4.519267, 2.722536, 2.858777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.742575, 3.021706, 3.002411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792883, -0.608396, 0.034506,
		0.244273, 0.265448, -0.932667,
		0.558272, 0.747924, 0.359084,
		4.910057, 3.246083, 3.110136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.187357, 2.845565, 2.368765>,  <4.519267, 2.722536, 2.858777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.187357, 2.845565, 2.368765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.219332, 2.960205, 2.750648>,  <5.238517, 3.028989, 2.979779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.219332, 2.960205, 2.750648>,  <5.187357, 2.845565, 2.368765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.219332, 2.960205, 2.750648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773302, -0.622184, 0.122030,
		0.628979, 0.728524, -0.271363,
		0.079937, 0.286600, 0.954710,
		5.243313, 3.046185, 3.037061>
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
