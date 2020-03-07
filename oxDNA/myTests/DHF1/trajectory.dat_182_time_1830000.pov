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
	<2.595206, 3.928491, 2.299011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.414886, 4.277740, 2.373238>,  <2.306695, 4.487290, 2.417773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.414886, 4.277740, 2.373238>,  <2.595206, 3.928491, 2.299011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.414886, 4.277740, 2.373238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808534, 0.487496, -0.329577,
		-0.378224, 0.001464, -0.925713,
		-0.450799, 0.873124, 0.185567,
		2.279647, 4.539678, 2.428908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.004923, 4.367347, 2.011657>,  <2.595206, 3.928491, 2.299011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.004923, 4.367347, 2.011657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.760239, 4.636360, 2.178276>,  <2.613428, 4.797768, 2.278247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.760239, 4.636360, 2.178276>,  <3.004923, 4.367347, 2.011657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.760239, 4.636360, 2.178276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665185, 0.722282, -0.189311,
		-0.428182, 0.161276, -0.889185,
		-0.611711, 0.672532, 0.416546,
		2.576725, 4.838120, 2.303240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.701654, 4.893092, 1.623029>,  <3.004923, 4.367347, 2.011657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.701654, 4.893092, 1.623029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.774399, 5.017853, 1.996048>,  <2.818045, 5.092709, 2.219859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.774399, 5.017853, 1.996048>,  <2.701654, 4.893092, 1.623029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.774399, 5.017853, 1.996048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715431, 0.608645, -0.343088,
		-0.674600, 0.729567, -0.112455,
		0.181861, 0.311902, 0.932547,
		2.828957, 5.111423, 2.275812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.977944, 5.136266, 0.855524>,  <2.701654, 4.893092, 1.623029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.977944, 5.136266, 0.855524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.682213, 4.894127, 0.973473>,  <2.504774, 4.748843, 1.044242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.682213, 4.894127, 0.973473>,  <2.977944, 5.136266, 0.855524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.682213, 4.894127, 0.973473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186784, -0.605110, -0.773921,
		0.646922, -0.517103, 0.560443,
		-0.739327, -0.605348, 0.294872,
		2.460415, 4.712523, 1.061934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.178151, 4.380922, 0.922868>,  <2.977944, 5.136266, 0.855524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.178151, 4.380922, 0.922868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801476, 4.442719, 0.803299>,  <2.575470, 4.479796, 0.731557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801476, 4.442719, 0.803299>,  <3.178151, 4.380922, 0.922868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.801476, 4.442719, 0.803299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136418, -0.636798, -0.758867,
		-0.307592, -0.755395, 0.578590,
		-0.941689, 0.154491, -0.298923,
		2.518969, 4.489066, 0.713622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.773332, 3.708609, 0.813323>,  <3.178151, 4.380922, 0.922868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.773332, 3.708609, 0.813323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577187, 3.978531, 0.592712>,  <2.459499, 4.140484, 0.460346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577187, 3.978531, 0.592712>,  <2.773332, 3.708609, 0.813323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577187, 3.978531, 0.592712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032954, -0.618027, -0.785466,
		-0.870895, -0.403339, 0.280821,
		-0.490364, 0.674804, -0.551528,
		2.430077, 4.180972, 0.427254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.153627, 3.468147, 0.727041>,  <2.773332, 3.708609, 0.813323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.153627, 3.468147, 0.727041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.184845, 3.720764, 0.418480>,  <2.203576, 3.872334, 0.233343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.184845, 3.720764, 0.418480>,  <2.153627, 3.468147, 0.727041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.184845, 3.720764, 0.418480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132616, -0.760310, -0.635879,
		-0.988090, 0.151928, 0.024415,
		0.078045, 0.631543, -0.771403,
		2.208258, 3.910227, 0.187059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.651018, 3.160248, 0.249542>,  <2.153627, 3.468147, 0.727041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.651018, 3.160248, 0.249542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.880753, 3.407684, 0.035072>,  <2.018594, 3.556146, -0.093610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.880753, 3.407684, 0.035072>,  <1.651018, 3.160248, 0.249542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.880753, 3.407684, 0.035072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162423, -0.555842, -0.815265,
		-0.802343, 0.555324, -0.218768,
		0.574337, 0.618590, -0.536174,
		2.053054, 3.593261, -0.125780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.108027, 2.640013, 3.871164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.502335, 2.698349, 3.837715>,  <2.738919, 2.733351, 3.817646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.502335, 2.698349, 3.837715>,  <2.108027, 2.640013, 3.871164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.502335, 2.698349, 3.837715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120603, 0.960024, 0.252603,
		0.117119, -0.238923, 0.963950,
		0.985768, 0.145840, -0.083622,
		2.798065, 2.742101, 3.812629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.505515, 2.629867, 4.586308>,  <2.108027, 2.640013, 3.871164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.505515, 2.629867, 4.586308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616013, 2.834091, 4.260605>,  <2.682311, 2.956626, 4.065183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616013, 2.834091, 4.260605>,  <2.505515, 2.629867, 4.586308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616013, 2.834091, 4.260605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044003, 0.853056, 0.519961,
		0.960079, -0.107807, 0.258118,
		0.276245, 0.510562, -0.814258,
		2.698886, 2.987260, 4.016327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.243068, 3.113135, 4.434274>,  <2.505515, 2.629867, 4.586308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.243068, 3.113135, 4.434274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.877991, 3.209381, 4.302155>,  <2.658945, 3.267129, 4.222883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.877991, 3.209381, 4.302155>,  <3.243068, 3.113135, 4.434274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.877991, 3.209381, 4.302155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033636, 0.849762, 0.526092,
		0.407261, 0.469050, -0.783665,
		-0.912692, 0.240616, -0.330298,
		2.604183, 3.281566, 4.203065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.237247, 3.800337, 4.149820>,  <3.243068, 3.113135, 4.434274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.237247, 3.800337, 4.149820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.860439, 3.720062, 4.257393>,  <2.634355, 3.671897, 4.321937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.860439, 3.720062, 4.257393>,  <3.237247, 3.800337, 4.149820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.860439, 3.720062, 4.257393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092606, 0.925803, 0.366487,
		-0.322527, 0.320333, -0.890709,
		-0.942019, -0.200687, 0.268932,
		2.577833, 3.659856, 4.338072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.750020, 4.380701, 4.079455>,  <3.237247, 3.800337, 4.149820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.750020, 4.380701, 4.079455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.535240, 4.153763, 4.329193>,  <2.406373, 4.017600, 4.479036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.535240, 4.153763, 4.329193>,  <2.750020, 4.380701, 4.079455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.535240, 4.153763, 4.329193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096835, 0.776640, 0.622458,
		-0.838039, 0.273770, -0.471954,
		-0.536949, -0.567345, 0.624344,
		2.374156, 3.983559, 4.516496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.127896, 4.737984, 4.212679>,  <2.750020, 4.380701, 4.079455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.127896, 4.737984, 4.212679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.144608, 4.490326, 4.526344>,  <2.154634, 4.341731, 4.714543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.144608, 4.490326, 4.526344>,  <2.127896, 4.737984, 4.212679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.144608, 4.490326, 4.526344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267288, 0.749317, 0.605873,
		-0.962711, -0.234910, -0.134184,
		0.041779, -0.619146, 0.784164,
		2.157141, 4.304582, 4.761593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.720459, 5.043406, 4.823013>,  <2.127896, 4.737984, 4.212679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.720459, 5.043406, 4.823013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.903904, 4.739441, 5.007278>,  <2.013971, 4.557062, 5.117837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.903904, 4.739441, 5.007278>,  <1.720459, 5.043406, 4.823013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.903904, 4.739441, 5.007278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029680, 0.505005, 0.862606,
		-0.888141, -0.409273, 0.209047,
		0.458611, -0.759912, 0.460663,
		2.041487, 4.511467, 5.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.349053, 4.970422, 5.421334>,  <1.720459, 5.043406, 4.823013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.349053, 4.970422, 5.421334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.696918, 4.798050, 5.517654>,  <1.905638, 4.694626, 5.575447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.696918, 4.798050, 5.517654>,  <1.349053, 4.970422, 5.421334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.696918, 4.798050, 5.517654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014742, 0.510254, 0.859897,
		-0.493426, -0.744271, 0.450101,
		0.869663, -0.430931, 0.240801,
		1.957817, 4.668771, 5.589895>
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
