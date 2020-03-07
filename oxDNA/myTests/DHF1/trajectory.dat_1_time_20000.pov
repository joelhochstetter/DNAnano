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
	<3.144239, -0.671708, 5.452016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.443624, -0.411780, 5.399041>,  <3.623254, -0.255823, 5.367256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.443624, -0.411780, 5.399041>,  <3.144239, -0.671708, 5.452016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.443624, -0.411780, 5.399041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595626, 0.570869, -0.565100,
		-0.291608, 0.501839, 0.814323,
		0.748461, 0.649820, -0.132438,
		3.668162, -0.216834, 5.359309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.815115, -0.000024, 5.487615>,  <3.144239, -0.671708, 5.452016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.815115, -0.000024, 5.487615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.139443, 0.054103, 5.259840>,  <3.334040, 0.086579, 5.123175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.139443, 0.054103, 5.259840>,  <2.815115, -0.000024, 5.487615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.139443, 0.054103, 5.259840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538053, 0.555253, -0.634186,
		0.230366, 0.820599, 0.523019,
		0.810821, 0.135317, -0.569437,
		3.382690, 0.094698, 5.089009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.872681, 0.685012, 5.292838>,  <2.815115, -0.000024, 5.487615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.872681, 0.685012, 5.292838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.074273, 0.498023, 5.002328>,  <3.195228, 0.385830, 4.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.074273, 0.498023, 5.002328>,  <2.872681, 0.685012, 5.292838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.074273, 0.498023, 5.002328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571127, 0.450431, -0.686240,
		0.647934, 0.760646, -0.039977,
		0.503979, -0.467471, -0.726275,
		3.225467, 0.357782, 4.784445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.096603, 1.193287, 4.860916>,  <2.872681, 0.685012, 5.292838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.096603, 1.193287, 4.860916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.060807, 0.849714, 4.659232>,  <3.039330, 0.643571, 4.538221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.060807, 0.849714, 4.659232>,  <3.096603, 1.193287, 4.860916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.060807, 0.849714, 4.659232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623703, 0.443019, -0.643994,
		0.776522, 0.256848, -0.575363,
		-0.089488, -0.858931, -0.504211,
		3.033961, 0.592035, 4.507968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.356437, 1.153050, 4.137028>,  <3.096603, 1.193287, 4.860916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.356437, 1.153050, 4.137028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.026444, 0.939106, 4.210052>,  <2.828449, 0.810739, 4.253865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.026444, 0.939106, 4.210052>,  <3.356437, 1.153050, 4.137028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.026444, 0.939106, 4.210052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484230, 0.502392, -0.716326,
		0.291419, -0.679356, -0.673461,
		-0.824982, -0.534861, 0.182558,
		2.778950, 0.778647, 4.264819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.990179, 0.960364, 3.386261>,  <3.356437, 1.153050, 4.137028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.990179, 0.960364, 3.386261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.737760, 0.974473, 3.696237>,  <2.586308, 0.982939, 3.882223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.737760, 0.974473, 3.696237>,  <2.990179, 0.960364, 3.386261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.737760, 0.974473, 3.696237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731655, 0.304915, -0.609678,
		-0.257797, -0.951726, -0.166608,
		-0.631048, 0.035273, 0.774942,
		2.548445, 0.985055, 3.928720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301106, 0.548121, 3.447883>,  <2.990179, 0.960364, 3.386261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301106, 0.548121, 3.447883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.264436, 0.913919, 3.605512>,  <2.242433, 1.133398, 3.700090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.264436, 0.913919, 3.605512>,  <2.301106, 0.548121, 3.447883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.264436, 0.913919, 3.605512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447990, 0.315554, -0.836499,
		-0.889326, -0.253229, 0.380756,
		-0.091677, 0.914495, 0.394074,
		2.236933, 1.188267, 3.723735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.559731, 0.790346, 3.539902>,  <2.301106, 0.548121, 3.447883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.559731, 0.790346, 3.539902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.846868, 1.051943, 3.444406>,  <2.019150, 1.208902, 3.387108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.846868, 1.051943, 3.444406>,  <1.559731, 0.790346, 3.539902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846868, 1.051943, 3.444406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465488, 0.195853, -0.863112,
		-0.517711, 0.730709, 0.445017,
		0.717842, 0.653993, -0.238740,
		2.062220, 1.248141, 3.372784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.390654, 2.272988, 3.862952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.661926, 2.501653, 3.678227>,  <3.824690, 2.638853, 3.567392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.661926, 2.501653, 3.678227>,  <3.390654, 2.272988, 3.862952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.661926, 2.501653, 3.678227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676541, 0.731061, -0.088557,
		0.286988, 0.372492, 0.882546,
		0.678182, 0.571664, -0.461811,
		3.865381, 2.673152, 3.539683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.438560, 3.015605, 4.158506>,  <3.390654, 2.272988, 3.862952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.438560, 3.015605, 4.158506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.558717, 3.007993, 3.777056>,  <3.630810, 3.003426, 3.548185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.558717, 3.007993, 3.777056>,  <3.438560, 3.015605, 4.158506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.558717, 3.007993, 3.777056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664875, 0.712684, -0.223657,
		0.683891, 0.701227, 0.201431,
		0.300391, -0.019031, -0.953626,
		3.648834, 3.002284, 3.490968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.755569, 3.770252, 3.939425>,  <3.438560, 3.015605, 4.158506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.755569, 3.770252, 3.939425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.569494, 3.558894, 3.655341>,  <3.457850, 3.432079, 3.484890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.569494, 3.558894, 3.655341>,  <3.755569, 3.770252, 3.939425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.569494, 3.558894, 3.655341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581600, 0.787277, -0.204785,
		0.667340, 0.317796, -0.673545,
		-0.465187, -0.528395, -0.710211,
		3.429938, 3.400375, 3.442277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.846660, 4.063286, 3.247719>,  <3.755569, 3.770252, 3.939425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.846660, 4.063286, 3.247719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.481831, 3.911795, 3.310564>,  <3.262933, 3.820900, 3.348271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.481831, 3.911795, 3.310564>,  <3.846660, 4.063286, 3.247719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.481831, 3.911795, 3.310564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406447, 0.885616, -0.224689,
		-0.054045, -0.268791, -0.961681,
		-0.912075, -0.378729, 0.157112,
		3.208208, 3.798176, 3.357698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.469691, 4.244593, 2.583514>,  <3.846660, 4.063286, 3.247719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.469691, 4.244593, 2.583514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.254533, 4.221383, 2.919919>,  <3.125438, 4.207457, 3.121762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.254533, 4.221383, 2.919919>,  <3.469691, 4.244593, 2.583514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.254533, 4.221383, 2.919919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446630, 0.865725, -0.225925,
		-0.714976, -0.497145, -0.491584,
		-0.537894, -0.058025, 0.841013,
		3.093164, 4.203975, 3.172223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792951, 4.270567, 2.470357>,  <3.469691, 4.244593, 2.583514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792951, 4.270567, 2.470357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.805780, 4.386808, 2.852879>,  <2.813478, 4.456553, 3.082392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.805780, 4.386808, 2.852879>,  <2.792951, 4.270567, 2.470357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.805780, 4.386808, 2.852879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647475, 0.734933, -0.201616,
		-0.761411, -0.612717, 0.211731,
		0.032075, 0.290603, 0.956306,
		2.815403, 4.473989, 3.139771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.173376, 4.249231, 2.749372>,  <2.792951, 4.270567, 2.470357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.173376, 4.249231, 2.749372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.347048, 4.511312, 2.996661>,  <2.451251, 4.668561, 3.145034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.347048, 4.511312, 2.996661>,  <2.173376, 4.249231, 2.749372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.347048, 4.511312, 2.996661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778902, 0.617821, -0.107749,
		-0.452548, -0.434751, 0.778583,
		0.434181, 0.655202, 0.618222,
		2.477302, 4.707872, 3.182127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.679258, 4.453909, 3.258307>,  <2.173376, 4.249231, 2.749372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.679258, 4.453909, 3.258307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.941416, 4.747030, 3.185141>,  <2.098711, 4.922903, 3.141242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.941416, 4.747030, 3.185141>,  <1.679258, 4.453909, 3.258307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.941416, 4.747030, 3.185141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754070, 0.621123, -0.213507,
		-0.042846, 0.277862, 0.959665,
		0.655395, 0.732802, -0.182914,
		2.138034, 4.966870, 3.130267>
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
