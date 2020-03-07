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
	<2.526658, 0.447460, 2.367843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442665, 0.392647, 2.755064>,  <2.392269, 0.359759, 2.987397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.442665, 0.392647, 2.755064>,  <2.526658, 0.447460, 2.367843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.442665, 0.392647, 2.755064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976434, -0.021071, -0.214783,
		0.049832, -0.990341, -0.129386,
		-0.209983, -0.137040, 0.968053,
		2.379670, 0.351537, 3.045481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.114601, -0.205531, 2.542418>,  <2.526658, 0.447460, 2.367843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.114601, -0.205531, 2.542418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.021103, 0.111061, 2.768312>,  <1.965004, 0.301016, 2.903847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.021103, 0.111061, 2.768312>,  <2.114601, -0.205531, 2.542418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.021103, 0.111061, 2.768312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939576, -0.034457, -0.340602,
		-0.250121, -0.610224, 0.751709,
		-0.233745, 0.791479, 0.564733,
		1.950979, 0.348505, 2.937732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.836970, -0.035396, 1.709746>,  <2.114601, -0.205531, 2.542418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.836970, -0.035396, 1.709746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.126869, 0.227005, 1.625460>,  <2.300809, 0.384446, 1.574888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.126869, 0.227005, 1.625460>,  <1.836970, -0.035396, 1.709746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.126869, 0.227005, 1.625460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676120, 0.736000, -0.034163,
		0.132676, 0.167229, 0.976950,
		0.724748, 0.656003, -0.210716,
		2.344294, 0.423806, 1.562245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.695420, 0.607604, 2.106893>,  <1.836970, -0.035396, 1.709746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.695420, 0.607604, 2.106893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.907700, 0.693092, 1.778824>,  <2.035067, 0.744386, 1.581982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.907700, 0.693092, 1.778824>,  <1.695420, 0.607604, 2.106893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.907700, 0.693092, 1.778824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466185, 0.881762, -0.071877,
		0.707835, 0.420497, 0.567584,
		0.530698, 0.213722, -0.820172,
		2.066909, 0.757209, 1.532772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.069963, 1.328554, 2.184790>,  <1.695420, 0.607604, 2.106893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.069963, 1.328554, 2.184790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.020889, 1.255363, 1.794617>,  <1.991445, 1.211449, 1.560513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.020889, 1.255363, 1.794617>,  <2.069963, 1.328554, 2.184790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.020889, 1.255363, 1.794617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536475, 0.839111, -0.089930,
		0.834951, 0.512262, -0.201108,
		-0.122685, -0.182977, -0.975432,
		1.984084, 1.200471, 1.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.243283, 1.971969, 1.902104>,  <2.069963, 1.328554, 2.184790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.243283, 1.971969, 1.902104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.032921, 1.754951, 1.640090>,  <1.906703, 1.624741, 1.482882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.032921, 1.754951, 1.640090>,  <2.243283, 1.971969, 1.902104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.032921, 1.754951, 1.640090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604817, 0.780026, -0.160483,
		0.598013, 0.311777, -0.738360,
		-0.525906, -0.542544, -0.655034,
		1.875149, 1.592188, 1.443580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.105919, 2.505731, 1.472717>,  <2.243283, 1.971969, 1.902104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.105919, 2.505731, 1.472717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857468, 2.207306, 1.376725>,  <1.708397, 2.028251, 1.319130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857468, 2.207306, 1.376725>,  <2.105919, 2.505731, 1.472717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.857468, 2.207306, 1.376725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726429, 0.662990, -0.180958,
		0.294110, 0.061930, -0.953763,
		-0.621128, -0.746063, -0.239979,
		1.671129, 1.983487, 1.304731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.727784, 2.707234, 0.861195>,  <2.105919, 2.505731, 1.472717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.727784, 2.707234, 0.861195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493011, 2.461365, 1.071979>,  <1.352148, 2.313843, 1.198449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493011, 2.461365, 1.071979>,  <1.727784, 2.707234, 0.861195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493011, 2.461365, 1.071979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772889, 0.619233, -0.138544,
		-0.241151, -0.488597, -0.838522,
		-0.586932, -0.614674, 0.526960,
		1.316932, 2.276963, 1.230067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.443871, 0.956046, 2.870778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.630363, 0.978867, 3.223907>,  <0.742259, 0.992559, 3.435784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.630363, 0.978867, 3.223907>,  <0.443871, 0.956046, 2.870778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.630363, 0.978867, 3.223907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852227, -0.296711, -0.430898,
		0.237359, 0.953262, -0.186956,
		0.466230, 0.057052, 0.882822,
		0.770232, 0.995982, 3.488753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973665, 1.427633, 2.863505>,  <0.443871, 0.956046, 2.870778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973665, 1.427633, 2.863505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.017303, 1.113426, 3.107164>,  <1.043487, 0.924902, 3.253359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.017303, 1.113426, 3.107164>,  <0.973665, 1.427633, 2.863505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.017303, 1.113426, 3.107164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733656, -0.349851, -0.582540,
		0.670706, 0.510458, 0.538132,
		0.109096, -0.785517, 0.609147,
		1.050032, 0.877771, 3.289908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.882690, 1.924541, 2.366681>,  <0.973665, 1.427633, 2.863505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.882690, 1.924541, 2.366681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.799408, 2.067833, 2.002633>,  <0.749439, 2.153808, 1.784203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.799408, 2.067833, 2.002633>,  <0.882690, 1.924541, 2.366681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.799408, 2.067833, 2.002633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606663, -0.682597, -0.407458,
		-0.767210, -0.636972, -0.075204,
		-0.208205, 0.358230, -0.910122,
		0.736946, 2.175302, 1.729596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.478292, 1.535983, 1.848229>,  <0.882690, 1.924541, 2.366681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.478292, 1.535983, 1.848229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.739464, 1.751671, 1.635466>,  <0.896167, 1.881084, 1.507808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.739464, 1.751671, 1.635466>,  <0.478292, 1.535983, 1.848229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.739464, 1.751671, 1.635466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488164, -0.836536, -0.248804,
		-0.579120, -0.097207, -0.809427,
		0.652929, 0.539220, -0.531907,
		0.935343, 1.913437, 1.475894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.730692, 1.059702, 1.350956>,  <0.478292, 1.535983, 1.848229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.730692, 1.059702, 1.350956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.003975, 1.351097, 1.330823>,  <1.167945, 1.525934, 1.318744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.003975, 1.351097, 1.330823>,  <0.730692, 1.059702, 1.350956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.003975, 1.351097, 1.330823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703194, -0.674933, -0.223568,
		-0.196837, 0.117350, -0.973388,
		0.683208, 0.728487, -0.050332,
		1.208937, 1.569643, 1.315724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.989855, 1.005513, 0.685741>,  <0.730692, 1.059702, 1.350956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.989855, 1.005513, 0.685741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.266068, 1.186157, 0.911737>,  <1.431795, 1.294544, 1.047335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.266068, 1.186157, 0.911737>,  <0.989855, 1.005513, 0.685741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.266068, 1.186157, 0.911737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634151, -0.753696, -0.172612,
		0.347879, 0.477484, -0.806839,
		0.690531, 0.451609, 0.564992,
		1.473227, 1.321640, 1.081235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.610405, 0.953158, 0.278572>,  <0.989855, 1.005513, 0.685741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.610405, 0.953158, 0.278572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.737389, 1.006607, 0.654096>,  <1.813579, 1.038677, 0.879410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.737389, 1.006607, 0.654096>,  <1.610405, 0.953158, 0.278572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.737389, 1.006607, 0.654096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722259, -0.675586, -0.148075,
		0.614461, 0.725071, -0.310981,
		0.317459, 0.133622, 0.938810,
		1.832626, 1.046694, 0.935739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.399925, 1.068972, 0.310853>,  <1.610405, 0.953158, 0.278572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.399925, 1.068972, 0.310853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.287628, 0.945206, 0.674270>,  <2.220250, 0.870946, 0.892320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.287628, 0.945206, 0.674270>,  <2.399925, 1.068972, 0.310853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287628, 0.945206, 0.674270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792108, -0.609241, 0.037279,
		0.541986, 0.730129, 0.416129,
		-0.280741, -0.309415, 0.908541,
		2.203406, 0.852381, 0.946832>
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
