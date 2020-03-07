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
	<1.149717, 6.073025, 3.412019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.211838, 5.728424, 3.218651>,  <1.249110, 5.521663, 3.102630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.211838, 5.728424, 3.218651>,  <1.149717, 6.073025, 3.412019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.211838, 5.728424, 3.218651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503769, -0.351879, 0.788922,
		-0.849764, -0.366052, 0.379351,
		0.155301, -0.861503, -0.483419,
		1.258428, 5.469973, 3.073625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.740867, 5.486393, 3.723193>,  <1.149717, 6.073025, 3.412019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.740867, 5.486393, 3.723193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.063881, 5.358803, 3.524742>,  <1.257689, 5.282248, 3.405672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.063881, 5.358803, 3.524742>,  <0.740867, 5.486393, 3.723193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.063881, 5.358803, 3.524742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247737, -0.579926, 0.776088,
		-0.535269, -0.749628, -0.389289,
		0.807536, -0.318975, -0.496126,
		1.306141, 5.263110, 3.375904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.776971, 4.837983, 3.644199>,  <0.740867, 5.486393, 3.723193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.776971, 4.837983, 3.644199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162659, 4.943169, 3.657654>,  <1.394071, 5.006280, 3.665727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162659, 4.943169, 3.657654>,  <0.776971, 4.837983, 3.644199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.162659, 4.943169, 3.657654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154058, -0.659058, 0.736145,
		0.215749, -0.704623, -0.675988,
		0.964219, 0.262964, 0.033638,
		1.451924, 5.022058, 3.667745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.192446, 4.183666, 3.621785>,  <0.776971, 4.837983, 3.644199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.192446, 4.183666, 3.621785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.416809, 4.486839, 3.755005>,  <1.551427, 4.668743, 3.834937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.416809, 4.486839, 3.755005>,  <1.192446, 4.183666, 3.621785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.416809, 4.486839, 3.755005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335364, -0.575826, 0.745624,
		0.756911, -0.306533, -0.577168,
		0.560907, 0.757932, 0.333049,
		1.585081, 4.714219, 3.854920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.776593, 3.812843, 3.797090>,  <1.192446, 4.183666, 3.621785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.776593, 3.812843, 3.797090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.810013, 4.170547, 3.972961>,  <1.830065, 4.385170, 4.078485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.810013, 4.170547, 3.972961>,  <1.776593, 3.812843, 3.797090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.810013, 4.170547, 3.972961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617979, -0.392628, 0.681135,
		0.781743, 0.214804, -0.585438,
		0.083549, 0.894261, 0.439679,
		1.835078, 4.438826, 4.104865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.461670, 3.980855, 3.787083>,  <1.776593, 3.812843, 3.797090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.461670, 3.980855, 3.787083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.310760, 4.207832, 4.079842>,  <2.220215, 4.344019, 4.255497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.310760, 4.207832, 4.079842>,  <2.461670, 3.980855, 3.787083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.310760, 4.207832, 4.079842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704657, -0.336925, 0.624452,
		0.600936, 0.751325, -0.272741,
		-0.377273, 0.567444, 0.731896,
		2.197578, 4.378066, 4.299410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.020943, 4.384390, 4.147577>,  <2.461670, 3.980855, 3.787083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.020943, 4.384390, 4.147577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722610, 4.316841, 4.405327>,  <2.543611, 4.276312, 4.559977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722610, 4.316841, 4.405327>,  <3.020943, 4.384390, 4.147577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.722610, 4.316841, 4.405327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654407, -0.366472, 0.661400,
		0.124453, 0.914975, 0.383838,
		-0.745830, -0.168873, 0.644375,
		2.498861, 4.266180, 4.598639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.212440, 4.705124, 4.788668>,  <3.020943, 4.384390, 4.147577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.212440, 4.705124, 4.788668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.965698, 4.404404, 4.881866>,  <2.817653, 4.223972, 4.937786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.965698, 4.404404, 4.881866>,  <3.212440, 4.705124, 4.788668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.965698, 4.404404, 4.881866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630258, -0.294494, 0.718365,
		-0.471451, 0.589974, 0.655488,
		-0.616854, -0.751800, 0.232996,
		2.780642, 4.178864, 4.951766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.484123, 2.816573, 1.104477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.143044, 2.679398, 0.946846>,  <2.938396, 2.597092, 0.852267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.143044, 2.679398, 0.946846>,  <3.484123, 2.816573, 1.104477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.143044, 2.679398, 0.946846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325170, 0.938832, -0.113402,
		0.408862, 0.031445, -0.912054,
		-0.852699, -0.342938, -0.394078,
		2.887234, 2.576516, 0.828623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.337399, 3.070066, 0.312174>,  <3.484123, 2.816573, 1.104477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.337399, 3.070066, 0.312174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.013416, 3.014336, 0.540054>,  <2.819026, 2.980897, 0.676782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.013416, 3.014336, 0.540054>,  <3.337399, 3.070066, 0.312174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.013416, 3.014336, 0.540054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355554, 0.889163, -0.288047,
		-0.466423, -0.435865, -0.769721,
		-0.809957, -0.139326, 0.569700,
		2.770429, 2.972538, 0.710964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.834707, 3.043671, -0.138617>,  <3.337399, 3.070066, 0.312174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.834707, 3.043671, -0.138617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.737720, 3.190819, 0.220467>,  <2.679528, 3.279107, 0.435917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.737720, 3.190819, 0.220467>,  <2.834707, 3.043671, -0.138617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.737720, 3.190819, 0.220467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423352, 0.792453, -0.439081,
		-0.872916, -0.486510, -0.036405,
		-0.242466, 0.367868, 0.897710,
		2.664980, 3.301179, 0.489780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.117585, 3.307499, -0.173117>,  <2.834707, 3.043671, -0.138617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.117585, 3.307499, -0.173117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324802, 3.484589, 0.119629>,  <2.449133, 3.590842, 0.295277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324802, 3.484589, 0.119629>,  <2.117585, 3.307499, -0.173117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.324802, 3.484589, 0.119629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297606, 0.895461, -0.331030,
		-0.801911, -0.046319, 0.595645,
		0.518044, 0.442724, 0.731865,
		2.480216, 3.617406, 0.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.629871, 3.707938, 0.282327>,  <2.117585, 3.307499, -0.173117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.629871, 3.707938, 0.282327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.006184, 3.841164, 0.257027>,  <2.231971, 3.921099, 0.241846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.006184, 3.841164, 0.257027>,  <1.629871, 3.707938, 0.282327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.006184, 3.841164, 0.257027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320093, 0.811209, -0.489367,
		-0.111681, 0.480633, 0.869781,
		0.940780, 0.333063, -0.063251,
		2.288418, 3.941083, 0.238051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.535747, 4.321372, 0.513680>,  <1.629871, 3.707938, 0.282327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.535747, 4.321372, 0.513680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.853416, 4.339363, 0.271271>,  <2.044018, 4.350158, 0.125825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.853416, 4.339363, 0.271271>,  <1.535747, 4.321372, 0.513680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.853416, 4.339363, 0.271271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452456, 0.709502, -0.540269,
		0.405674, 0.703266, 0.583819,
		0.794174, 0.044979, -0.606024,
		2.091669, 4.352857, 0.089464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.691032, 5.068292, 0.292919>,  <1.535747, 4.321372, 0.513680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.691032, 5.068292, 0.292919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.831131, 4.832062, 0.002113>,  <1.915190, 4.690324, -0.172370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.831131, 4.832062, 0.002113>,  <1.691032, 5.068292, 0.292919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.831131, 4.832062, 0.002113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358864, 0.632342, -0.686557,
		0.865184, 0.501364, 0.009540,
		0.350248, -0.590575, -0.727013,
		1.936205, 4.654889, -0.215991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.904851, 5.525781, -0.213526>,  <1.691032, 5.068292, 0.292919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.904851, 5.525781, -0.213526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.853882, 5.176476, -0.401642>,  <1.823300, 4.966892, -0.514512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.853882, 5.176476, -0.401642>,  <1.904851, 5.525781, -0.213526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.853882, 5.176476, -0.401642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536354, 0.459515, -0.707934,
		0.834319, 0.162036, -0.526931,
		-0.127422, -0.873264, -0.470291,
		1.815655, 4.914496, -0.542729>
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
