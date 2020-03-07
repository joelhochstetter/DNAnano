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
	<2.271260, 2.686997, 3.476064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560547, 2.432777, 3.367964>,  <2.734119, 2.280246, 3.303103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560547, 2.432777, 3.367964>,  <2.271260, 2.686997, 3.476064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560547, 2.432777, 3.367964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529357, -0.258812, -0.807959,
		0.443554, 0.727388, -0.523609,
		0.723216, -0.635549, -0.270251,
		2.777512, 2.242113, 3.286888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.419558, 2.797691, 2.677079>,  <2.271260, 2.686997, 3.476064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.419558, 2.797691, 2.677079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.479847, 2.429314, 2.820827>,  <2.516021, 2.208287, 2.907076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.479847, 2.429314, 2.820827>,  <2.419558, 2.797691, 2.677079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.479847, 2.429314, 2.820827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596206, -0.374653, -0.710052,
		0.788556, -0.107238, -0.605541,
		0.150723, -0.920943, 0.359371,
		2.525064, 2.153031, 2.928639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.648519, 2.463689, 2.107038>,  <2.419558, 2.797691, 2.677079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.648519, 2.463689, 2.107038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527523, 2.171642, 2.352127>,  <2.454925, 1.996414, 2.499181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.527523, 2.171642, 2.352127>,  <2.648519, 2.463689, 2.107038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527523, 2.171642, 2.352127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295474, -0.539342, -0.788547,
		0.906198, -0.419571, -0.052585,
		-0.302490, -0.730117, 0.612723,
		2.436776, 1.952607, 2.535944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.827071, 1.883561, 1.690705>,  <2.648519, 2.463689, 2.107038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.827071, 1.883561, 1.690705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.552916, 1.768517, 1.958294>,  <2.388422, 1.699490, 2.118847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.552916, 1.768517, 1.958294>,  <2.827071, 1.883561, 1.690705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.552916, 1.768517, 1.958294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380235, -0.642140, -0.665641,
		0.621018, -0.710589, 0.330756,
		-0.685389, -0.287610, 0.668971,
		2.347299, 1.682233, 2.158985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.498558, 2.119786, 1.790347>,  <2.827071, 1.883561, 1.690705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.498558, 2.119786, 1.790347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.435589, 1.755890, 1.944018>,  <3.397808, 1.537553, 2.036221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.435589, 1.755890, 1.944018>,  <3.498558, 2.119786, 1.790347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.435589, 1.755890, 1.944018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254065, -0.338624, -0.905972,
		0.954290, -0.240226, -0.177826,
		-0.157422, -0.909739, 0.384179,
		3.388362, 1.482968, 2.059272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.966810, 1.547804, 1.469223>,  <3.498558, 2.119786, 1.790347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.966810, 1.547804, 1.469223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595535, 1.486794, 1.604989>,  <3.372770, 1.450187, 1.686449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595535, 1.486794, 1.604989>,  <3.966810, 1.547804, 1.469223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.595535, 1.486794, 1.604989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350983, 0.055867, -0.934714,
		0.123613, -0.986718, -0.105391,
		-0.928187, -0.152533, 0.339415,
		3.317079, 1.441035, 1.706814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.651547, 1.002414, 1.036034>,  <3.966810, 1.547804, 1.469223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.651547, 1.002414, 1.036034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377522, 1.239464, 1.205495>,  <3.213106, 1.381694, 1.307172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377522, 1.239464, 1.205495>,  <3.651547, 1.002414, 1.036034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.377522, 1.239464, 1.205495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441514, 0.124806, -0.888532,
		-0.579441, -0.795750, 0.176152,
		-0.685064, 0.592626, 0.423653,
		3.172002, 1.417251, 1.332591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.885949, 0.785158, 0.936314>,  <3.651547, 1.002414, 1.036034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.885949, 0.785158, 0.936314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974552, 1.174412, 0.961437>,  <3.027714, 1.407964, 0.976511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.974552, 1.174412, 0.961437>,  <2.885949, 0.785158, 0.936314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974552, 1.174412, 0.961437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387791, 0.147000, -0.909950,
		-0.894736, 0.177205, 0.409934,
		0.221508, 0.973134, 0.062808,
		3.041004, 1.466352, 0.980279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.164383, 1.977536, 2.706412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.820754, 1.920876, 2.903156>,  <0.614576, 1.886879, 3.021203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.820754, 1.920876, 2.903156>,  <1.164383, 1.977536, 2.706412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.820754, 1.920876, 2.903156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408161, 0.390275, 0.825282,
		-0.308863, 0.909737, -0.277458,
		-0.859074, -0.141652, 0.491861,
		0.563031, 1.878380, 3.050714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.884289, 2.560686, 2.947976>,  <1.164383, 1.977536, 2.706412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.884289, 2.560686, 2.947976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787183, 2.259233, 3.192305>,  <0.728919, 2.078362, 3.338902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787183, 2.259233, 3.192305>,  <0.884289, 2.560686, 2.947976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.787183, 2.259233, 3.192305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373799, 0.508365, 0.775783,
		-0.895176, 0.416658, 0.158294,
		-0.242765, -0.753632, 0.610822,
		0.714354, 2.033144, 3.375551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.943055, 2.860212, 3.584820>,  <0.884289, 2.560686, 2.947976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.943055, 2.860212, 3.584820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.850882, 2.487137, 3.695812>,  <0.795578, 2.263292, 3.762407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.850882, 2.487137, 3.695812>,  <0.943055, 2.860212, 3.584820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.850882, 2.487137, 3.695812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235034, 0.223363, 0.945975,
		-0.944277, 0.283201, 0.167744,
		-0.230433, -0.932688, 0.277478,
		0.781752, 2.207330, 3.779055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.386831, 2.861496, 4.220477>,  <0.943055, 2.860212, 3.584820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.386831, 2.861496, 4.220477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670172, 2.581701, 4.182632>,  <0.840178, 2.413824, 4.159925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670172, 2.581701, 4.182632>,  <0.386831, 2.861496, 4.220477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.670172, 2.581701, 4.182632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515299, 0.420853, 0.746558,
		-0.482390, -0.577582, 0.658559,
		0.708355, -0.699487, -0.094612,
		0.882679, 2.371855, 4.154249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.407703, 2.562835, 4.885351>,  <0.386831, 2.861496, 4.220477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.407703, 2.562835, 4.885351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.739029, 2.529200, 4.663784>,  <0.937824, 2.509018, 4.530844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.739029, 2.529200, 4.663784>,  <0.407703, 2.562835, 4.885351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.739029, 2.529200, 4.663784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522985, 0.470661, 0.710609,
		0.200953, -0.878298, 0.433833,
		0.828315, -0.084089, -0.553917,
		0.987523, 2.503973, 4.497609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.993947, 2.155839, 5.195601>,  <0.407703, 2.562835, 4.885351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.993947, 2.155839, 5.195601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.148571, 2.437439, 4.957288>,  <1.241345, 2.606399, 4.814300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.148571, 2.437439, 4.957288>,  <0.993947, 2.155839, 5.195601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.148571, 2.437439, 4.957288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553110, 0.339965, 0.760588,
		0.737998, -0.623545, -0.257973,
		0.386559, 0.703999, -0.595782,
		1.264539, 2.648639, 4.778553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.708434, 2.284745, 5.219054>,  <0.993947, 2.155839, 5.195601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.708434, 2.284745, 5.219054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.559946, 2.642748, 5.120134>,  <1.470853, 2.857550, 5.060782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.559946, 2.642748, 5.120134>,  <1.708434, 2.284745, 5.219054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.559946, 2.642748, 5.120134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675906, 0.443072, 0.588930,
		0.636668, 0.051472, -0.769418,
		-0.371221, 0.895007, -0.247300,
		1.448579, 2.911250, 5.045944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.257562, 2.733010, 5.268644>,  <1.708434, 2.284745, 5.219054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.257562, 2.733010, 5.268644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.937203, 2.971849, 5.286691>,  <1.744987, 3.115153, 5.297519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.937203, 2.971849, 5.286691>,  <2.257562, 2.733010, 5.268644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.937203, 2.971849, 5.286691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474586, 0.587011, 0.655886,
		0.365145, 0.546710, -0.753510,
		-0.800898, 0.597099, 0.045116,
		1.696934, 3.150979, 5.300226>
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
