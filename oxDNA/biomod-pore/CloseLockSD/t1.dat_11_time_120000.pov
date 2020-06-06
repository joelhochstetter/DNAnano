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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.868314, 15.002444, 15.474648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.573888, 15.164225, 15.257528>,  <4.397233, 15.261292, 15.127256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.573888, 15.164225, 15.257528>,  <4.868314, 15.002444, 15.474648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.573888, 15.164225, 15.257528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189515, -0.646677, -0.738846,
		-0.649885, -0.646682, 0.399314,
		-0.736026, 0.404489, -0.542821,
		4.353069, 15.285560, 15.094688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.243431, 14.608877, 15.266283>,  <4.868314, 15.002444, 15.474648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.243431, 14.608877, 15.266283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326912, 14.848095, 14.956758>,  <4.377002, 14.991626, 14.771044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.326912, 14.848095, 14.956758>,  <4.243431, 14.608877, 15.266283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.326912, 14.848095, 14.956758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072663, -0.798531, -0.597551,
		-0.975276, 0.068485, -0.210113,
		0.208705, 0.598045, -0.773812,
		4.389524, 15.027509, 14.724615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.754130, 14.415743, 14.807430>,  <4.243431, 14.608877, 15.266283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.754130, 14.415743, 14.807430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089538, 14.555689, 14.640347>,  <4.290782, 14.639657, 14.540098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089538, 14.555689, 14.640347>,  <3.754130, 14.415743, 14.807430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089538, 14.555689, 14.640347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006304, -0.772793, -0.634627,
		-0.544835, 0.529514, -0.650208,
		0.838520, 0.349866, -0.417706,
		4.341094, 14.660648, 14.515036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.742907, 14.319388, 14.058549>,  <3.754130, 14.415743, 14.807430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.742907, 14.319388, 14.058549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.130520, 14.362070, 14.147623>,  <4.363088, 14.387679, 14.201068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.130520, 14.362070, 14.147623>,  <3.742907, 14.319388, 14.058549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.130520, 14.362070, 14.147623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216489, -0.800892, -0.558306,
		0.118775, 0.589226, -0.799191,
		0.969033, 0.106703, 0.222686,
		4.421230, 14.394081, 14.214429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.177983, 14.535755, 13.552611>,  <3.742907, 14.319388, 14.058549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.177983, 14.535755, 13.552611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.281512, 14.257802, 13.820983>,  <4.343630, 14.091030, 13.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.281512, 14.257802, 13.820983>,  <4.177983, 14.535755, 13.552611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.281512, 14.257802, 13.820983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129252, -0.663437, -0.736984,
		0.957238, 0.277467, -0.081897,
		0.258823, -0.694884, 0.670930,
		4.359159, 14.049336, 14.022262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.768876, 14.130194, 13.293107>,  <4.177983, 14.535755, 13.552611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.768876, 14.130194, 13.293107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.547102, 13.915022, 13.547111>,  <4.414039, 13.785919, 13.699512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.547102, 13.915022, 13.547111>,  <4.768876, 14.130194, 13.293107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.547102, 13.915022, 13.547111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015976, -0.769761, -0.638132,
		0.832075, -0.343656, 0.435374,
		-0.554432, -0.537930, 0.635009,
		4.380773, 13.753643, 13.737614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.983594, 13.431102, 13.274858>,  <4.768876, 14.130194, 13.293107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.983594, 13.431102, 13.274858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.625888, 13.389709, 13.449022>,  <4.411264, 13.364873, 13.553521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.625888, 13.389709, 13.449022>,  <4.983594, 13.431102, 13.274858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.625888, 13.389709, 13.449022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116316, -0.885723, -0.449404,
		0.432159, -0.452532, 0.780034,
		-0.894264, -0.103483, 0.435410,
		4.357608, 13.358664, 13.579645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.987800, 12.729764, 13.444887>,  <4.983594, 13.431102, 13.274858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.987800, 12.729764, 13.444887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.602301, 12.836067, 13.454403>,  <4.371002, 12.899849, 13.460113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.602301, 12.836067, 13.454403>,  <4.987800, 12.729764, 13.444887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.602301, 12.836067, 13.454403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233319, -0.796132, -0.558333,
		-0.129442, -0.543642, 0.829276,
		-0.963747, 0.265757, 0.023789,
		4.313177, 12.915794, 13.461539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.701015, 12.191507, 13.570410>,  <4.987800, 12.729764, 13.444887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.701015, 12.191507, 13.570410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.384429, 12.386735, 13.423238>,  <4.194477, 12.503871, 13.334934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.384429, 12.386735, 13.423238>,  <4.701015, 12.191507, 13.570410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.384429, 12.386735, 13.423238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256384, -0.811550, -0.525028,
		-0.554842, -0.321210, 0.767446,
		-0.791466, 0.488068, -0.367929,
		4.146989, 12.533155, 13.312859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.992801, 11.744374, 13.703675>,  <4.701015, 12.191507, 13.570410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.992801, 11.744374, 13.703675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963179, 11.986735, 13.386842>,  <3.945406, 12.132152, 13.196741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963179, 11.986735, 13.386842>,  <3.992801, 11.744374, 13.703675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.963179, 11.986735, 13.386842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307124, -0.769518, -0.559926,
		-0.948784, 0.201803, 0.243074,
		-0.074055, 0.605902, -0.792085,
		3.940963, 12.168506, 13.149217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.270955, 11.661802, 13.532411>,  <3.992801, 11.744374, 13.703675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.270955, 11.661802, 13.532411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.426629, 11.825388, 13.202251>,  <3.520034, 11.923539, 13.004156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.426629, 11.825388, 13.202251>,  <3.270955, 11.661802, 13.532411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.426629, 11.825388, 13.202251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497653, -0.660680, -0.561999,
		-0.775162, 0.629484, -0.053606,
		0.389186, 0.408963, -0.825399,
		3.543385, 11.948077, 12.954632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.654160, 11.633406, 12.974507>,  <3.270955, 11.661802, 13.532411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.654160, 11.633406, 12.974507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.989374, 11.688516, 12.763332>,  <3.190502, 11.721581, 12.636627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.989374, 11.688516, 12.763332>,  <2.654160, 11.633406, 12.974507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.989374, 11.688516, 12.763332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275893, -0.727779, -0.627871,
		-0.470727, 0.671830, -0.571891,
		0.838033, 0.137775, -0.527938,
		3.240784, 11.729848, 12.604951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.415850, 11.562572, 12.167832>,  <2.654160, 11.633406, 12.974507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.415850, 11.562572, 12.167832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815566, 11.547928, 12.164296>,  <3.055396, 11.539142, 12.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815566, 11.547928, 12.164296>,  <2.415850, 11.562572, 12.167832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.815566, 11.547928, 12.164296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030499, -0.648906, -0.760257,
		0.022097, 0.759988, -0.649562,
		0.999291, -0.036611, -0.008840,
		3.115353, 11.536944, 12.161644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.702411, 11.864386, 11.511207>,  <2.415850, 11.562572, 12.167832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.702411, 11.864386, 11.511207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945919, 11.600462, 11.687412>,  <3.092023, 11.442108, 11.793136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945919, 11.600462, 11.687412>,  <2.702411, 11.864386, 11.511207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.945919, 11.600462, 11.687412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072537, -0.599226, -0.797287,
		0.790024, 0.453411, -0.412651,
		0.608770, -0.659808, 0.440514,
		3.128550, 11.402519, 11.819567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.283319, 11.747396, 10.999684>,  <2.702411, 11.864386, 11.511207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.283319, 11.747396, 10.999684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.312778, 11.430546, 11.242043>,  <3.330453, 11.240436, 11.387459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.312778, 11.430546, 11.242043>,  <3.283319, 11.747396, 10.999684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.312778, 11.430546, 11.242043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359406, -0.545642, -0.757035,
		0.930271, 0.273517, 0.244509,
		0.073648, -0.792125, 0.605899,
		3.334872, 11.192908, 11.423813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891427, 11.374028, 10.762774>,  <3.283319, 11.747396, 10.999684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891427, 11.374028, 10.762774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.699146, 11.103497, 10.986024>,  <3.583777, 10.941177, 11.119974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.699146, 11.103497, 10.986024>,  <3.891427, 11.374028, 10.762774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.699146, 11.103497, 10.986024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190015, -0.701705, -0.686662,
		0.856049, -0.224028, 0.465824,
		-0.480702, -0.676330, 0.558124,
		3.554935, 10.900598, 11.153461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.354261, 10.764211, 10.770417>,  <3.891427, 11.374028, 10.762774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.354261, 10.764211, 10.770417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.983131, 10.649013, 10.865243>,  <3.760453, 10.579894, 10.922138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.983131, 10.649013, 10.865243>,  <4.354261, 10.764211, 10.770417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.983131, 10.649013, 10.865243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079144, -0.773053, -0.629385,
		0.364523, -0.565197, 0.740051,
		-0.927825, -0.287996, 0.237064,
		3.704784, 10.562613, 10.936362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.417221, 10.002896, 10.990958>,  <4.354261, 10.764211, 10.770417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.417221, 10.002896, 10.990958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.037205, 10.062336, 10.881162>,  <3.809196, 10.098000, 10.815284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.037205, 10.062336, 10.881162>,  <4.417221, 10.002896, 10.990958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.037205, 10.062336, 10.881162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089223, -0.713424, -0.695029,
		-0.299108, -0.684795, 0.664522,
		-0.950039, 0.148598, -0.274490,
		3.752194, 10.106915, 10.798815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.177385, 9.307923, 10.984607>,  <4.417221, 10.002896, 10.990958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.177385, 9.307923, 10.984607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.913201, 9.522818, 10.774780>,  <3.754691, 9.651754, 10.648885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.913201, 9.522818, 10.774780>,  <4.177385, 9.307923, 10.984607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.913201, 9.522818, 10.774780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034750, -0.676001, -0.736081,
		-0.750056, -0.504382, 0.427803,
		-0.660461, 0.537235, -0.524566,
		3.715063, 9.683989, 10.617411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737669, 8.767011, 10.621439>,  <4.177385, 9.307923, 10.984607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737669, 8.767011, 10.621439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.695689, 9.106246, 10.413695>,  <3.670502, 9.309787, 10.289049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.695689, 9.106246, 10.413695>,  <3.737669, 8.767011, 10.621439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.695689, 9.106246, 10.413695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071232, -0.514490, -0.854532,
		-0.991923, -0.126677, -0.006416,
		-0.104949, 0.848088, -0.519358,
		3.664205, 9.360672, 10.257888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.143409, 8.730894, 10.240462>,  <3.737669, 8.767011, 10.621439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.143409, 8.730894, 10.240462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.361693, 8.998761, 10.038970>,  <3.492664, 9.159481, 9.918075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.361693, 8.998761, 10.038970>,  <3.143409, 8.730894, 10.240462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.361693, 8.998761, 10.038970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101925, -0.543622, -0.833119,
		-0.831752, 0.505984, -0.228405,
		0.545711, 0.669668, -0.503731,
		3.525407, 9.199661, 9.887851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.773353, 8.914068, 9.624847>,  <3.143409, 8.730894, 10.240462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.773353, 8.914068, 9.624847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158848, 8.984753, 9.544865>,  <3.390145, 9.027164, 9.496875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158848, 8.984753, 9.544865>,  <2.773353, 8.914068, 9.624847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158848, 8.984753, 9.544865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053814, -0.605224, -0.794234,
		-0.261369, 0.776194, -0.573768,
		0.963738, 0.176711, -0.199957,
		3.447969, 9.037766, 9.484878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.678483, 8.998438, 9.012546>,  <2.773353, 8.914068, 9.624847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.678483, 8.998438, 9.012546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072518, 8.935616, 9.040652>,  <3.308939, 8.897923, 9.057516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072518, 8.935616, 9.040652>,  <2.678483, 8.998438, 9.012546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072518, 8.935616, 9.040652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024213, -0.530864, -0.847111,
		0.170344, 0.832777, -0.526750,
		0.985087, -0.157055, 0.070266,
		3.368044, 8.888500, 9.061732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.879914, 9.018235, 8.365673>,  <2.678483, 8.998438, 9.012546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.879914, 9.018235, 8.365673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.191632, 8.831927, 8.533367>,  <3.378663, 8.720142, 8.633984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.191632, 8.831927, 8.533367>,  <2.879914, 9.018235, 8.365673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.191632, 8.831927, 8.533367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127725, -0.773016, -0.621396,
		0.613503, 0.430704, -0.661898,
		0.779295, -0.465769, 0.419235,
		3.425421, 8.692197, 8.659138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.293901, 8.784915, 7.826797>,  <2.879914, 9.018235, 8.365673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.293901, 8.784915, 7.826797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.382261, 8.570303, 8.152580>,  <3.435277, 8.441536, 8.348050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.382261, 8.570303, 8.152580>,  <3.293901, 8.784915, 7.826797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.382261, 8.570303, 8.152580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024075, -0.837831, -0.545398,
		0.974999, 0.100870, -0.197994,
		0.220900, -0.536530, 0.814457,
		3.448530, 8.409344, 8.396917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.956169, 8.370015, 7.736070>,  <3.293901, 8.784915, 7.826797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.956169, 8.370015, 7.736070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.663480, 8.201489, 7.950388>,  <3.487867, 8.100374, 8.078979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.663480, 8.201489, 7.950388>,  <3.956169, 8.370015, 7.736070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.663480, 8.201489, 7.950388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054414, -0.819680, -0.570232,
		0.679429, -0.388096, 0.622702,
		-0.731721, -0.421315, 0.535796,
		3.443964, 8.075095, 8.111127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.194709, 7.754860, 8.000535>,  <3.956169, 8.370015, 7.736070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.194709, 7.754860, 8.000535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794979, 7.749833, 7.986736>,  <3.555141, 7.746817, 7.978456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.794979, 7.749833, 7.986736>,  <4.194709, 7.754860, 8.000535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.794979, 7.749833, 7.986736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028870, -0.849510, -0.526782,
		-0.022686, -0.527423, 0.849300,
		-0.999326, -0.012568, -0.034499,
		3.495181, 7.746063, 7.976386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.851515, 8.007411, 7.715015>,  <4.194709, 7.754860, 8.000535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.851515, 8.007411, 7.715015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138653, 7.745862, 7.619390>,  <5.310935, 7.588933, 7.562016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138653, 7.745862, 7.619390>,  <4.851515, 8.007411, 7.715015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.138653, 7.745862, 7.619390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273146, 0.580359, -0.767186,
		0.640383, 0.485422, 0.595210,
		0.717845, -0.653872, -0.239061,
		5.354006, 7.549700, 7.547672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.270324, 8.300555, 7.078647>,  <4.851515, 8.007411, 7.715015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.270324, 8.300555, 7.078647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.191833, 8.420917, 7.451946>,  <5.144738, 8.493134, 7.675926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.191833, 8.420917, 7.451946>,  <5.270324, 8.300555, 7.078647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.191833, 8.420917, 7.451946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958936, -0.139880, 0.246730,
		0.204785, 0.943340, -0.261098,
		-0.196228, 0.300903, 0.933248,
		5.132964, 8.511188, 7.731921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.902360, 8.716371, 7.253138>,  <5.270324, 8.300555, 7.078647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.902360, 8.716371, 7.253138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.704626, 8.567350, 7.567295>,  <5.585985, 8.477939, 7.755788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.704626, 8.567350, 7.567295>,  <5.902360, 8.716371, 7.253138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.704626, 8.567350, 7.567295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853475, -0.036550, 0.519851,
		-0.164964, 0.927292, 0.336030,
		-0.494336, -0.372550, 0.785391,
		5.556325, 8.455585, 7.802912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.112051, 9.025524, 8.006056>,  <5.902360, 8.716371, 7.253138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.112051, 9.025524, 8.006056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.968631, 8.652193, 7.998696>,  <5.882578, 8.428194, 7.994280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.968631, 8.652193, 7.998696>,  <6.112051, 9.025524, 8.006056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.968631, 8.652193, 7.998696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854955, -0.336230, 0.394969,
		-0.374823, 0.125885, 0.918510,
		-0.358551, -0.933329, -0.018400,
		5.861065, 8.372194, 7.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.715448, 8.799957, 7.625003>,  <6.112051, 9.025524, 8.006056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.715448, 8.799957, 7.625003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.073039, 8.623757, 7.657905>,  <7.287593, 8.518038, 7.677647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.073039, 8.623757, 7.657905>,  <6.715448, 8.799957, 7.625003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.073039, 8.623757, 7.657905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078209, 0.027369, 0.996561,
		-0.441237, -0.897335, -0.009984,
		0.893976, -0.440500, 0.082256,
		7.341231, 8.491608, 7.682582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.514592, 8.317008, 8.104318>,  <6.715448, 8.799957, 7.625003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.514592, 8.317008, 8.104318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.902204, 8.415175, 8.115279>,  <7.134771, 8.474075, 8.121856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.902204, 8.415175, 8.115279>,  <6.514592, 8.317008, 8.104318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.902204, 8.415175, 8.115279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064537, 0.144568, 0.987388,
		0.238360, -0.958577, 0.155929,
		0.969030, 0.245417, 0.027404,
		7.192913, 8.488801, 8.123501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.767630, 8.135734, 8.767626>,  <6.514592, 8.317008, 8.104318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.767630, 8.135734, 8.767626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.058075, 8.383699, 8.648651>,  <7.232342, 8.532478, 8.577266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.058075, 8.383699, 8.648651>,  <6.767630, 8.135734, 8.767626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.058075, 8.383699, 8.648651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110095, 0.322183, 0.940254,
		0.678706, -0.715475, 0.165691,
		0.726111, 0.619914, -0.297438,
		7.275908, 8.569674, 8.559420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.445953, 8.038222, 9.241529>,  <6.767630, 8.135734, 8.767626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.445953, 8.038222, 9.241529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.391608, 8.405134, 9.091788>,  <7.359001, 8.625281, 9.001944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.391608, 8.405134, 9.091788>,  <7.445953, 8.038222, 9.241529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.391608, 8.405134, 9.091788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123234, 0.359276, 0.925059,
		0.983033, 0.171814, 0.064228,
		-0.135862, 0.917279, -0.374354,
		7.350850, 8.680318, 8.979482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.863651, 8.597499, 9.681571>,  <7.445953, 8.038222, 9.241529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.863651, 8.597499, 9.681571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.576167, 8.783621, 9.474904>,  <7.403677, 8.895294, 9.350904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.576167, 8.783621, 9.474904>,  <7.863651, 8.597499, 9.681571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.576167, 8.783621, 9.474904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144321, 0.627062, 0.765483,
		0.680167, 0.624727, -0.383523,
		-0.718710, 0.465306, -0.516668,
		7.360554, 8.923213, 9.319903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.029070, 9.297745, 9.629340>,  <7.863651, 8.597499, 9.681571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.029070, 9.297745, 9.629340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.631183, 9.301848, 9.588490>,  <7.392450, 9.304311, 9.563979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.631183, 9.301848, 9.588490>,  <8.029070, 9.297745, 9.629340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.631183, 9.301848, 9.588490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066138, 0.696831, 0.714179,
		0.078493, 0.717162, -0.692472,
		-0.994718, 0.010260, -0.102128,
		7.332767, 9.304926, 9.557851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.753809, 10.024281, 9.569285>,  <8.029070, 9.297745, 9.629340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.753809, 10.024281, 9.569285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.412881, 9.843552, 9.674668>,  <7.208325, 9.735114, 9.737898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.412881, 9.843552, 9.674668>,  <7.753809, 10.024281, 9.569285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.412881, 9.843552, 9.674668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125968, 0.666225, 0.735035,
		-0.507626, 0.593297, -0.624752,
		-0.852319, -0.451821, 0.263456,
		7.157186, 9.708005, 9.753705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.212986, 10.572911, 9.697993>,  <7.753809, 10.024281, 9.569285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.212986, 10.572911, 9.697993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.044240, 10.261524, 9.883904>,  <6.942992, 10.074692, 9.995451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.044240, 10.261524, 9.883904>,  <7.212986, 10.572911, 9.697993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.044240, 10.261524, 9.883904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026949, 0.523166, 0.851804,
		-0.906258, 0.346822, -0.241685,
		-0.421866, -0.778468, 0.464777,
		6.917680, 10.027984, 10.023337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.583807, 10.735637, 9.929689>,  <7.212986, 10.572911, 9.697993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.583807, 10.735637, 9.929689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.675020, 10.432954, 10.174768>,  <6.729747, 10.251345, 10.321815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.675020, 10.432954, 10.174768>,  <6.583807, 10.735637, 9.929689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.675020, 10.432954, 10.174768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166179, 0.589795, 0.790270,
		-0.959368, -0.282024, 0.008743,
		0.228031, -0.756707, 0.612697,
		6.743429, 10.205942, 10.358578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.060606, 10.764266, 10.456452>,  <6.583807, 10.735637, 9.929689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.060606, 10.764266, 10.456452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.338759, 10.526842, 10.618504>,  <6.505651, 10.384388, 10.715734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.338759, 10.526842, 10.618504>,  <6.060606, 10.764266, 10.456452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.338759, 10.526842, 10.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228341, 0.352032, 0.907708,
		-0.681397, -0.723712, 0.109263,
		0.695383, -0.593560, 0.405127,
		6.547375, 10.348774, 10.740042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.728966, 10.422717, 10.984267>,  <6.060606, 10.764266, 10.456452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.728966, 10.422717, 10.984267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.122902, 10.391088, 11.046025>,  <6.359264, 10.372111, 11.083080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.122902, 10.391088, 11.046025>,  <5.728966, 10.422717, 10.984267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.122902, 10.391088, 11.046025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146217, 0.100483, 0.984136,
		-0.093330, -0.991792, 0.087398,
		0.984840, -0.079070, 0.154395,
		6.418355, 10.367368, 11.092343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.907931, 9.868279, 11.534760>,  <5.728966, 10.422717, 10.984267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.907931, 9.868279, 11.534760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.224883, 10.111747, 11.518493>,  <6.415054, 10.257828, 11.508732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.224883, 10.111747, 11.518493>,  <5.907931, 9.868279, 11.534760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.224883, 10.111747, 11.518493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039693, 0.117970, 0.992224,
		0.608736, -0.784604, 0.117637,
		0.792380, 0.608671, -0.040669,
		6.462596, 10.294348, 11.506292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.398353, 9.650085, 12.101300>,  <5.907931, 9.868279, 11.534760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.398353, 9.650085, 12.101300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.468193, 10.033362, 12.010628>,  <6.510097, 10.263329, 11.956224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.468193, 10.033362, 12.010628>,  <6.398353, 9.650085, 12.101300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.468193, 10.033362, 12.010628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044478, 0.237658, 0.970330,
		0.983634, -0.159337, 0.084114,
		0.174600, 0.958191, -0.226682,
		6.520573, 10.320820, 11.942623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.950785, 9.893781, 12.585809>,  <6.398353, 9.650085, 12.101300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.950785, 9.893781, 12.585809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.780336, 10.227434, 12.445727>,  <6.678066, 10.427626, 12.361679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.780336, 10.227434, 12.445727>,  <6.950785, 9.893781, 12.585809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.780336, 10.227434, 12.445727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113496, 0.433341, 0.894055,
		0.897517, 0.341231, -0.279327,
		-0.426123, 0.834132, -0.350203,
		6.652499, 10.477674, 12.340667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.376781, 10.391212, 12.912419>,  <6.950785, 9.893781, 12.585809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.376781, 10.391212, 12.912419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.063176, 10.618920, 12.813422>,  <6.875012, 10.755546, 12.754025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.063176, 10.618920, 12.813422>,  <7.376781, 10.391212, 12.912419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.063176, 10.618920, 12.813422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089513, 0.498219, 0.862418,
		0.614254, 0.653995, -0.441568,
		-0.784015, 0.569270, -0.247492,
		6.827971, 10.789701, 12.739175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.596003, 11.094845, 12.981175>,  <7.376781, 10.391212, 12.912419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.596003, 11.094845, 12.981175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.198864, 11.051385, 13.000972>,  <6.960580, 11.025310, 13.012850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.198864, 11.051385, 13.000972>,  <7.596003, 11.094845, 12.981175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.198864, 11.051385, 13.000972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004295, 0.446773, 0.894637,
		-0.119313, 0.888026, -0.444044,
		-0.992848, -0.108649, 0.049491,
		6.901009, 11.018790, 13.015820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.376288, 11.873633, 13.203658>,  <7.596003, 11.094845, 12.981175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.376288, 11.873633, 13.203658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.065862, 11.623838, 13.238837>,  <6.879606, 11.473961, 13.259945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.065862, 11.623838, 13.238837>,  <7.376288, 11.873633, 13.203658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.065862, 11.623838, 13.238837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278314, 0.464283, 0.840823,
		-0.565917, 0.628057, -0.534118,
		-0.776067, -0.624488, 0.087948,
		6.833042, 11.436492, 13.265222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.819819, 12.338335, 13.297851>,  <7.376288, 11.873633, 13.203658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.819819, 12.338335, 13.297851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.714467, 11.987533, 13.458594>,  <6.651255, 11.777051, 13.555040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.714467, 11.987533, 13.458594>,  <6.819819, 12.338335, 13.297851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.714467, 11.987533, 13.458594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294556, 0.469786, 0.832188,
		-0.918622, 0.100814, -0.382061,
		-0.263383, -0.877005, 0.401860,
		6.635452, 11.724431, 13.579152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.165442, 12.442574, 13.492101>,  <6.819819, 12.338335, 13.297851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.165442, 12.442574, 13.492101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.332980, 12.152715, 13.710991>,  <6.433503, 11.978800, 13.842325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.332980, 12.152715, 13.710991>,  <6.165442, 12.442574, 13.492101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.332980, 12.152715, 13.710991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366710, 0.416325, 0.831984,
		-0.830718, -0.549146, -0.091359,
		0.418845, -0.724646, 0.547226,
		6.458634, 11.935321, 13.875159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.684699, 12.272334, 13.946013>,  <6.165442, 12.442574, 13.492101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.684699, 12.272334, 13.946013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.018272, 12.128731, 14.113664>,  <6.218417, 12.042569, 14.214253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.018272, 12.128731, 14.113664>,  <5.684699, 12.272334, 13.946013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.018272, 12.128731, 14.113664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369362, 0.201184, 0.907247,
		-0.410030, -0.911393, 0.035170,
		0.833934, -0.359008, 0.419126,
		6.268453, 12.021029, 14.239402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425678, 11.745472, 14.449677>,  <5.684699, 12.272334, 13.946013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425678, 11.745472, 14.449677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.794907, 11.839584, 14.571383>,  <6.016445, 11.896051, 14.644407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.794907, 11.839584, 14.571383>,  <5.425678, 11.745472, 14.449677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.794907, 11.839584, 14.571383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343803, 0.150071, 0.926973,
		0.172450, -0.960269, 0.219421,
		0.923071, 0.235294, 0.304264,
		6.071829, 11.910169, 14.662663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.358222, 11.508350, 15.024282>,  <5.425678, 11.745472, 14.449677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.358222, 11.508350, 15.024282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.685355, 11.734922, 15.064896>,  <5.881634, 11.870866, 15.089264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.685355, 11.734922, 15.064896>,  <5.358222, 11.508350, 15.024282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.685355, 11.734922, 15.064896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256451, 0.200795, 0.945470,
		0.515155, -0.799274, 0.309478,
		0.817831, 0.566430, 0.101533,
		5.930704, 11.904851, 15.095356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.895493, 11.305493, 15.571447>,  <5.358222, 11.508350, 15.024282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.895493, 11.305493, 15.571447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929602, 11.698661, 15.506211>,  <5.950067, 11.934562, 15.467070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.929602, 11.698661, 15.506211>,  <5.895493, 11.305493, 15.571447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.929602, 11.698661, 15.506211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406333, 0.183763, 0.895056,
		0.909738, -0.010054, 0.415062,
		0.085272, 0.982919, -0.163091,
		5.955183, 11.993537, 15.457284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.083082, 11.636193, 16.211523>,  <5.895493, 11.305493, 15.571447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.083082, 11.636193, 16.211523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.955741, 11.953657, 16.004156>,  <5.879336, 12.144135, 15.879736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.955741, 11.953657, 16.004156>,  <6.083082, 11.636193, 16.211523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.955741, 11.953657, 16.004156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252544, 0.456100, 0.853343,
		0.913714, 0.402587, 0.055234,
		-0.318352, 0.793660, -0.518416,
		5.860235, 12.191755, 15.848631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.229749, 12.146662, 16.640881>,  <6.083082, 11.636193, 16.211523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.229749, 12.146662, 16.640881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.971456, 12.345410, 16.408966>,  <5.816480, 12.464660, 16.269817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.971456, 12.345410, 16.408966>,  <6.229749, 12.146662, 16.640881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.971456, 12.345410, 16.408966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446323, 0.370473, 0.814583,
		0.619537, 0.784773, -0.017462,
		-0.645732, 0.496870, -0.579784,
		5.777736, 12.494472, 16.235031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.774436, 12.570100, 17.051651>,  <6.229749, 12.146662, 16.640881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.774436, 12.570100, 17.051651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.972279, 12.410145, 17.360313>,  <7.090985, 12.314172, 17.545511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.972279, 12.410145, 17.360313>,  <6.774436, 12.570100, 17.051651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.972279, 12.410145, 17.360313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515692, -0.579648, -0.630928,
		0.699589, 0.709999, -0.080479,
		0.494608, -0.399888, 0.771656,
		7.120661, 12.290178, 17.591810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.460063, 12.693279, 16.990265>,  <6.774436, 12.570100, 17.051651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.460063, 12.693279, 16.990265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.393229, 12.347379, 17.179701>,  <7.353130, 12.139838, 17.293364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.393229, 12.347379, 17.179701>,  <7.460063, 12.693279, 16.990265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.393229, 12.347379, 17.179701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439761, -0.495280, -0.749205,
		0.882436, 0.083088, 0.463036,
		-0.167082, -0.864751, 0.473592,
		7.343105, 12.087954, 17.321779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.139946, 12.199961, 17.160091>,  <7.460063, 12.693279, 16.990265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.139946, 12.199961, 17.160091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.795812, 12.018597, 17.066933>,  <7.589331, 11.909778, 17.011038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.795812, 12.018597, 17.066933>,  <8.139946, 12.199961, 17.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.795812, 12.018597, 17.066933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429074, -0.397533, -0.811088,
		0.275172, -0.797738, 0.536558,
		-0.860335, -0.453412, -0.232899,
		7.537711, 11.882573, 16.997063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.871664, 11.974193, 17.190439>,  <8.139946, 12.199961, 17.160091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.871664, 11.974193, 17.190439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.706064, 12.172124, 17.496054>,  <8.606705, 12.290883, 17.679422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.706064, 12.172124, 17.496054>,  <8.871664, 11.974193, 17.190439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.706064, 12.172124, 17.496054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434364, -0.630231, 0.643535,
		0.799958, 0.598292, 0.045980,
		-0.414000, 0.494829, 0.764035,
		8.581864, 12.320573, 17.725264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334256, 12.266008, 17.681700>,  <8.871664, 11.974193, 17.190439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334256, 12.266008, 17.681700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989800, 12.173029, 17.862547>,  <8.783127, 12.117242, 17.971054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.989800, 12.173029, 17.862547>,  <9.334256, 12.266008, 17.681700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.989800, 12.173029, 17.862547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500377, -0.544647, 0.673040,
		0.089797, 0.805809, 0.585328,
		-0.861138, -0.232447, 0.452116,
		8.731459, 12.103294, 17.998182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.580093, 12.425972, 18.463291>,  <9.334256, 12.266008, 17.681700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.580093, 12.425972, 18.463291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288312, 12.483261, 18.730839>,  <9.113243, 12.517634, 18.891367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288312, 12.483261, 18.730839>,  <9.580093, 12.425972, 18.463291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.288312, 12.483261, 18.730839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683887, 0.132645, 0.717429,
		0.014030, 0.980761, -0.194706,
		-0.729453, 0.143222, 0.668869,
		9.069476, 12.526228, 18.931499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.874876, 13.030655, 18.292978>,  <9.580093, 12.425972, 18.463291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.874876, 13.030655, 18.292978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.144191, 12.863522, 18.536978>,  <10.305779, 12.763242, 18.683378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.144191, 12.863522, 18.536978>,  <9.874876, 13.030655, 18.292978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.144191, 12.863522, 18.536978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166583, 0.718080, 0.675730,
		-0.720372, -0.556576, 0.413869,
		0.673286, -0.417833, 0.610000,
		10.346177, 12.738172, 18.719978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653634, 13.283038, 18.835127>,  <9.874876, 13.030655, 18.292978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653634, 13.283038, 18.835127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030215, 13.185968, 18.928741>,  <10.256165, 13.127727, 18.984911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030215, 13.185968, 18.928741>,  <9.653634, 13.283038, 18.835127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030215, 13.185968, 18.928741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033203, 0.757545, 0.651938,
		-0.335503, -0.605999, 0.721251,
		0.941454, -0.242675, 0.234038,
		10.312652, 13.113166, 18.998953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.676919, 13.306653, 19.564314>,  <9.653634, 13.283038, 18.835127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.676919, 13.306653, 19.564314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.046787, 13.356197, 19.420290>,  <10.268708, 13.385923, 19.333876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.046787, 13.356197, 19.420290>,  <9.676919, 13.306653, 19.564314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.046787, 13.356197, 19.420290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137929, 0.772437, 0.619933,
		0.354908, -0.622897, 0.697166,
		0.924670, 0.123860, -0.360060,
		10.324188, 13.393355, 19.312271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102009, 13.347733, 20.110464>,  <9.676919, 13.306653, 19.564314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.102009, 13.347733, 20.110464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.314051, 13.526359, 19.822140>,  <10.441276, 13.633533, 19.649145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.314051, 13.526359, 19.822140>,  <10.102009, 13.347733, 20.110464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.314051, 13.526359, 19.822140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287177, 0.705293, 0.648144,
		0.797821, -0.550585, 0.245636,
		0.530104, 0.446562, -0.720813,
		10.473083, 13.660327, 19.605896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.759556, 13.549222, 20.429779>,  <10.102009, 13.347733, 20.110464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.759556, 13.549222, 20.429779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.757748, 13.764407, 20.092596>,  <10.756663, 13.893518, 19.890287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.757748, 13.764407, 20.092596>,  <10.759556, 13.549222, 20.429779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.757748, 13.764407, 20.092596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411857, 0.769150, 0.488654,
		0.911237, -0.344968, -0.225040,
		-0.004519, 0.537964, -0.842956,
		10.756392, 13.925797, 19.839710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.289464, 14.000339, 20.549854>,  <10.759556, 13.549222, 20.429779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.289464, 14.000339, 20.549854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.143839, 14.205087, 20.238613>,  <11.056464, 14.327935, 20.051868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.143839, 14.205087, 20.238613>,  <11.289464, 14.000339, 20.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.143839, 14.205087, 20.238613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470750, 0.821999, 0.320488,
		0.803649, -0.249615, -0.540222,
		-0.364063, 0.511870, -0.778105,
		11.034620, 14.358647, 20.005182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.804148, 14.456356, 20.409941>,  <11.289464, 14.000339, 20.549854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.804148, 14.456356, 20.409941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.488829, 14.617140, 20.223602>,  <11.299637, 14.713611, 20.111799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.488829, 14.617140, 20.223602>,  <11.804148, 14.456356, 20.409941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.488829, 14.617140, 20.223602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313426, 0.913850, 0.258150,
		0.529480, 0.057491, -0.846372,
		-0.788299, 0.401960, -0.465846,
		11.252339, 14.737728, 20.083849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089558, 14.805965, 19.892506>,  <11.804148, 14.456356, 20.409941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089558, 14.805965, 19.892506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.728687, 14.956769, 19.976357>,  <11.512165, 15.047251, 20.026667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.728687, 14.956769, 19.976357>,  <12.089558, 14.805965, 19.892506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.728687, 14.956769, 19.976357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428061, 0.842500, 0.327042,
		-0.053313, 0.384782, -0.921466,
		-0.902176, 0.377009, 0.209627,
		11.458035, 15.069872, 20.039244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.187542, 15.575368, 19.794891>,  <12.089558, 14.805965, 19.892506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.187542, 15.575368, 19.794891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852838, 15.529930, 20.009153>,  <11.652015, 15.502667, 20.137711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.852838, 15.529930, 20.009153>,  <12.187542, 15.575368, 19.794891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852838, 15.529930, 20.009153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186604, 0.860531, 0.473989,
		-0.514792, 0.496571, -0.698861,
		-0.836760, -0.113596, 0.535657,
		11.601810, 15.495852, 20.169851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934093, 16.333969, 19.858757>,  <12.187542, 15.575368, 19.794891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934093, 16.333969, 19.858757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.777018, 16.108507, 20.149435>,  <11.682773, 15.973229, 20.323843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.777018, 16.108507, 20.149435>,  <11.934093, 16.333969, 19.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.777018, 16.108507, 20.149435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239592, 0.700184, 0.672561,
		-0.887915, 0.438217, -0.139906,
		-0.392688, -0.563657, 0.726696,
		11.659211, 15.939410, 20.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469842, 16.763865, 20.329185>,  <11.934093, 16.333969, 19.858757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469842, 16.763865, 20.329185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.554423, 16.451797, 20.564686>,  <11.605172, 16.264557, 20.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.554423, 16.451797, 20.564686>,  <11.469842, 16.763865, 20.329185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.554423, 16.451797, 20.564686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202104, 0.624254, 0.754626,
		-0.956264, -0.040580, 0.289676,
		0.211454, -0.780167, 0.588750,
		11.617860, 16.217747, 20.741310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.227217, 16.962610, 20.983625>,  <11.469842, 16.763865, 20.329185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.227217, 16.962610, 20.983625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481209, 16.670261, 21.083725>,  <11.633604, 16.494852, 21.143784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481209, 16.670261, 21.083725>,  <11.227217, 16.962610, 20.983625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.481209, 16.670261, 21.083725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246534, 0.498709, 0.830969,
		-0.732134, -0.465955, 0.496856,
		0.634981, -0.730873, 0.250247,
		11.671703, 16.451000, 21.158800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.178885, 16.894348, 21.664732>,  <11.227217, 16.962610, 20.983625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.178885, 16.894348, 21.664732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.518894, 16.694477, 21.598061>,  <11.722900, 16.574554, 21.558058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.518894, 16.694477, 21.598061>,  <11.178885, 16.894348, 21.664732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.518894, 16.694477, 21.598061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406278, 0.420538, 0.811225,
		-0.335258, -0.757277, 0.560476,
		0.850024, -0.499678, -0.166676,
		11.773901, 16.544573, 21.548058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341673, 16.469297, 22.319288>,  <11.178885, 16.894348, 21.664732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341673, 16.469297, 22.319288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690838, 16.504465, 22.127333>,  <11.900336, 16.525566, 22.012159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690838, 16.504465, 22.127333>,  <11.341673, 16.469297, 22.319288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690838, 16.504465, 22.127333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447540, 0.247335, 0.859380,
		0.194248, -0.964933, 0.176555,
		0.872912, 0.087918, -0.479890,
		11.952711, 16.530842, 21.983366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.827106, 16.132320, 22.700640>,  <11.341673, 16.469297, 22.319288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.827106, 16.132320, 22.700640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.051374, 16.370739, 22.470728>,  <12.185936, 16.513790, 22.332781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.051374, 16.370739, 22.470728>,  <11.827106, 16.132320, 22.700640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.051374, 16.370739, 22.470728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555963, 0.243436, 0.794760,
		0.613638, -0.765157, -0.194892,
		0.560673, 0.596048, -0.574781,
		12.219576, 16.549553, 22.298294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.563498, 15.912523, 22.701069>,  <11.827106, 16.132320, 22.700640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.563498, 15.912523, 22.701069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505058, 16.301888, 22.630499>,  <12.469995, 16.535507, 22.588158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505058, 16.301888, 22.630499>,  <12.563498, 15.912523, 22.701069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505058, 16.301888, 22.630499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415006, 0.222193, 0.882270,
		0.898012, 0.055680, -0.436434,
		-0.146098, 0.973412, -0.176424,
		12.461229, 16.593910, 22.577572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129786, 16.167759, 23.024691>,  <12.563498, 15.912523, 22.701069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129786, 16.167759, 23.024691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913773, 16.502041, 22.984764>,  <12.784165, 16.702610, 22.960808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.913773, 16.502041, 22.984764>,  <13.129786, 16.167759, 23.024691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.913773, 16.502041, 22.984764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386917, 0.351829, 0.852356,
		0.747436, 0.421679, -0.513347,
		-0.540032, 0.835705, -0.099815,
		12.751763, 16.752752, 22.954819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506233, 16.657274, 23.379673>,  <13.129786, 16.167759, 23.024691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506233, 16.657274, 23.379673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139247, 16.815117, 23.359505>,  <12.919055, 16.909822, 23.347404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139247, 16.815117, 23.359505>,  <13.506233, 16.657274, 23.379673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139247, 16.815117, 23.359505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162935, 0.488369, 0.857291,
		0.362916, 0.778320, -0.512357,
		-0.917466, 0.394606, -0.050421,
		12.864007, 16.933498, 23.344378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601410, 17.290344, 23.824394>,  <13.506233, 16.657274, 23.379673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601410, 17.290344, 23.824394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209113, 17.243767, 23.761675>,  <12.973735, 17.215820, 23.724043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209113, 17.243767, 23.761675>,  <13.601410, 17.290344, 23.824394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209113, 17.243767, 23.761675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190565, 0.394711, 0.898826,
		-0.042771, 0.911397, -0.409299,
		-0.980742, -0.116442, -0.156798,
		12.914890, 17.208834, 23.714636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317349, 18.006868, 23.879099>,  <13.601410, 17.290344, 23.824394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317349, 18.006868, 23.879099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076675, 17.699051, 23.964682>,  <12.932271, 17.514360, 24.016031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076675, 17.699051, 23.964682>,  <13.317349, 18.006868, 23.879099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076675, 17.699051, 23.964682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084108, 0.327426, 0.941126,
		-0.794292, 0.548266, -0.261732,
		-0.601686, -0.769543, 0.213959,
		12.896170, 17.468187, 24.028870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850709, 18.302311, 24.375755>,  <13.317349, 18.006868, 23.879099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850709, 18.302311, 24.375755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794111, 17.907574, 24.407053>,  <12.760153, 17.670732, 24.425831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794111, 17.907574, 24.407053>,  <12.850709, 18.302311, 24.375755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794111, 17.907574, 24.407053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124834, 0.096193, 0.987504,
		-0.982037, 0.129959, -0.136802,
		-0.141494, -0.986842, 0.078242,
		12.751663, 17.611521, 24.430525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.325217, 18.210546, 24.763855>,  <12.850709, 18.302311, 24.375755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.325217, 18.210546, 24.763855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.507396, 17.855730, 24.794119>,  <12.616703, 17.642839, 24.812277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.507396, 17.855730, 24.794119>,  <12.325217, 18.210546, 24.763855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.507396, 17.855730, 24.794119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016571, 0.093419, 0.995489,
		-0.890109, -0.452137, 0.057247,
		0.455445, -0.887043, 0.075661,
		12.644030, 17.589617, 24.816816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959955, 17.878347, 25.344017>,  <12.325217, 18.210546, 24.763855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959955, 17.878347, 25.344017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.282224, 17.647497, 25.290617>,  <12.475585, 17.508987, 25.258577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.282224, 17.647497, 25.290617>,  <11.959955, 17.878347, 25.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.282224, 17.647497, 25.290617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127217, -0.051536, 0.990535,
		-0.578542, -0.815028, 0.031899,
		0.805670, -0.577125, -0.133501,
		12.523925, 17.474360, 25.250566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.910317, 17.387526, 25.873474>,  <11.959955, 17.878347, 25.344017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.910317, 17.387526, 25.873474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299016, 17.351311, 25.786283>,  <12.532235, 17.329582, 25.733969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.299016, 17.351311, 25.786283>,  <11.910317, 17.387526, 25.873474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.299016, 17.351311, 25.786283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199910, -0.175283, 0.964008,
		-0.125482, -0.980347, -0.152232,
		0.971746, -0.090533, -0.217976,
		12.590540, 17.324150, 25.720890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170276, 16.858879, 26.253252>,  <11.910317, 17.387526, 25.873474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170276, 16.858879, 26.253252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.483658, 17.092709, 26.168900>,  <12.671687, 17.233006, 26.118288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.483658, 17.092709, 26.168900>,  <12.170276, 16.858879, 26.253252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.483658, 17.092709, 26.168900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362566, -0.154364, 0.919085,
		0.504720, -0.796521, -0.332884,
		0.783456, 0.584573, -0.210881,
		12.718695, 17.268080, 26.105635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810320, 16.519279, 26.582588>,  <12.170276, 16.858879, 26.253252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.810320, 16.519279, 26.582588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.931649, 16.894321, 26.514593>,  <13.004447, 17.119347, 26.473797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.931649, 16.894321, 26.514593>,  <12.810320, 16.519279, 26.582588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.931649, 16.894321, 26.514593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211002, 0.107876, 0.971515,
		0.929233, -0.330550, -0.165115,
		0.303323, 0.937603, -0.169988,
		13.022646, 17.175602, 26.463596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457653, 16.589724, 26.905006>,  <12.810320, 16.519279, 26.582588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457653, 16.589724, 26.905006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.319807, 16.961594, 26.852940>,  <13.237100, 17.184715, 26.821699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.319807, 16.961594, 26.852940>,  <13.457653, 16.589724, 26.905006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319807, 16.961594, 26.852940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265072, 0.229387, 0.936546,
		0.900542, 0.288246, -0.325481,
		-0.344616, 0.929675, -0.130167,
		13.216422, 17.240496, 26.813890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.019247, 16.996450, 27.113174>,  <13.457653, 16.589724, 26.905006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.019247, 16.996450, 27.113174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703149, 17.239153, 27.147484>,  <13.513490, 17.384775, 27.168070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703149, 17.239153, 27.147484>,  <14.019247, 16.996450, 27.113174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703149, 17.239153, 27.147484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345633, 0.325750, 0.880014,
		0.506013, 0.725074, -0.467138,
		-0.790246, 0.606757, 0.085775,
		13.466075, 17.421181, 27.173216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282656, 17.620358, 27.337318>,  <14.019247, 16.996450, 27.113174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.282656, 17.620358, 27.337318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905592, 17.601545, 27.469490>,  <13.679354, 17.590258, 27.548792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905592, 17.601545, 27.469490>,  <14.282656, 17.620358, 27.337318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905592, 17.601545, 27.469490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308869, 0.252215, 0.917054,
		-0.126468, 0.966528, -0.223227,
		-0.942659, -0.047030, 0.330427,
		13.622794, 17.587437, 27.568619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.253119, 18.185226, 27.861313>,  <14.282656, 17.620358, 27.337318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.253119, 18.185226, 27.861313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935107, 17.946806, 27.906292>,  <13.744300, 17.803753, 27.933279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935107, 17.946806, 27.906292>,  <14.253119, 18.185226, 27.861313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935107, 17.946806, 27.906292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061126, 0.105714, 0.992516,
		-0.603480, 0.795955, -0.047612,
		-0.795032, -0.596054, 0.112449,
		13.696598, 17.767990, 27.940027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568085, 18.572006, 28.215046>,  <14.253119, 18.185226, 27.861313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568085, 18.572006, 28.215046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561451, 18.174377, 28.258032>,  <13.557470, 17.935801, 28.283823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561451, 18.174377, 28.258032>,  <13.568085, 18.572006, 28.215046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561451, 18.174377, 28.258032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065006, 0.108322, 0.991988,
		-0.997747, 0.009466, -0.066417,
		-0.016585, -0.994071, 0.107463,
		13.556476, 17.876156, 28.290270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.012516, 18.592770, 28.566893>,  <13.568085, 18.572006, 28.215046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.012516, 18.592770, 28.566893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230865, 18.261663, 28.618776>,  <13.361876, 18.063000, 28.649906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.230865, 18.261663, 28.618776>,  <13.012516, 18.592770, 28.566893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230865, 18.261663, 28.618776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045267, 0.183716, 0.981937,
		-0.836644, -0.530141, 0.137756,
		0.545873, -0.827767, 0.129707,
		13.394628, 18.013334, 28.657688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720829, 18.222673, 29.196033>,  <13.012516, 18.592770, 28.566893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720829, 18.222673, 29.196033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.089002, 18.075783, 29.142445>,  <13.309906, 17.987648, 29.110292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.089002, 18.075783, 29.142445>,  <12.720829, 18.222673, 29.196033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.089002, 18.075783, 29.142445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254046, 0.301485, 0.919003,
		-0.297093, -0.879915, 0.370789,
		0.920432, -0.367227, -0.133970,
		13.365131, 17.965614, 29.102253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.871111, 17.885147, 29.780615>,  <12.720829, 18.222673, 29.196033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.871111, 17.885147, 29.780615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247452, 17.947651, 29.660364>,  <13.473256, 17.985153, 29.588213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247452, 17.947651, 29.660364>,  <12.871111, 17.885147, 29.780615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247452, 17.947651, 29.660364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259217, 0.239390, 0.935681,
		0.218178, -0.958267, 0.184726,
		0.940853, 0.156261, -0.300629,
		13.529708, 17.994530, 29.570175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.340490, 17.705309, 30.407936>,  <12.871111, 17.885147, 29.780615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.340490, 17.705309, 30.407936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566854, 17.919268, 30.156975>,  <13.702673, 18.047642, 30.006399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566854, 17.919268, 30.156975>,  <13.340490, 17.705309, 30.407936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.566854, 17.919268, 30.156975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411657, 0.476016, 0.777140,
		0.714342, -0.698065, 0.049189,
		0.565910, 0.534896, -0.627402,
		13.736628, 18.079737, 29.968754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.976106, 17.794264, 30.726784>,  <13.340490, 17.705309, 30.407936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.976106, 17.794264, 30.726784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.036724, 18.078299, 30.451738>,  <14.073095, 18.248718, 30.286711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.036724, 18.078299, 30.451738>,  <13.976106, 17.794264, 30.726784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.036724, 18.078299, 30.451738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280440, 0.636174, 0.718774,
		0.947833, -0.301762, -0.102727,
		0.151546, 0.710086, -0.687613,
		14.082188, 18.291325, 30.245455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.685042, 17.860941, 30.740023>,  <13.976106, 17.794264, 30.726784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.685042, 17.860941, 30.740023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490151, 18.193302, 30.632534>,  <14.373217, 18.392719, 30.568041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490151, 18.193302, 30.632534>,  <14.685042, 17.860941, 30.740023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490151, 18.193302, 30.632534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453988, 0.503870, 0.734854,
		0.745992, 0.236045, -0.622719,
		-0.487228, 0.830902, -0.268721,
		14.343983, 18.442574, 30.551918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227157, 18.422686, 30.653257>,  <14.685042, 17.860941, 30.740023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227157, 18.422686, 30.653257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864924, 18.581232, 30.713682>,  <14.647585, 18.676359, 30.749937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864924, 18.581232, 30.713682>,  <15.227157, 18.422686, 30.653257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864924, 18.581232, 30.713682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364228, 0.544084, 0.755851,
		0.217402, 0.739504, -0.637079,
		-0.905580, 0.396365, 0.151063,
		14.593250, 18.700142, 30.759001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450052, 19.034977, 30.772900>,  <15.227157, 18.422686, 30.653257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.450052, 19.034977, 30.772900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080484, 19.031368, 30.925892>,  <14.858744, 19.029203, 31.017687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080484, 19.031368, 30.925892>,  <15.450052, 19.034977, 30.772900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080484, 19.031368, 30.925892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301949, 0.596733, 0.743463,
		-0.234947, 0.802389, -0.548609,
		-0.923919, -0.009023, 0.382481,
		14.803308, 19.028662, 31.040636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443811, 19.713497, 30.966881>,  <15.450052, 19.034977, 30.772900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443811, 19.713497, 30.966881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148048, 19.536522, 31.169868>,  <14.970591, 19.430336, 31.291660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.148048, 19.536522, 31.169868>,  <15.443811, 19.713497, 30.966881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.148048, 19.536522, 31.169868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145690, 0.630743, 0.762193,
		-0.657306, 0.637504, -0.401917,
		-0.739407, -0.442439, 0.507469,
		14.926227, 19.403790, 31.322109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.015112, 20.266983, 31.119427>,  <15.443811, 19.713497, 30.966881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.015112, 20.266983, 31.119427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970312, 19.971167, 31.384918>,  <14.943432, 19.793676, 31.544214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970312, 19.971167, 31.384918>,  <15.015112, 20.266983, 31.119427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970312, 19.971167, 31.384918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325686, 0.603721, 0.727633,
		-0.938821, 0.297662, 0.173241,
		-0.112000, -0.739539, 0.663731,
		14.936712, 19.749306, 31.584038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621603, 20.585842, 31.718657>,  <15.015112, 20.266983, 31.119427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621603, 20.585842, 31.718657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792747, 20.244717, 31.838419>,  <14.895432, 20.040041, 31.910276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792747, 20.244717, 31.838419>,  <14.621603, 20.585842, 31.718657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792747, 20.244717, 31.838419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134067, 0.387475, 0.912079,
		-0.893847, -0.350101, 0.280119,
		0.427859, -0.852814, 0.299407,
		14.921104, 19.988873, 31.928242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.307468, 20.214531, 32.332912>,  <14.621603, 20.585842, 31.718657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.307468, 20.214531, 32.332912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.685713, 20.084686, 32.324451>,  <14.912660, 20.006779, 32.319374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.685713, 20.084686, 32.324451>,  <14.307468, 20.214531, 32.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.685713, 20.084686, 32.324451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151845, 0.382953, 0.911202,
		-0.287687, -0.864855, 0.411415,
		0.945611, -0.324612, -0.021153,
		14.969396, 19.987303, 32.318104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489721, 20.051102, 33.055248>,  <14.307468, 20.214531, 32.332912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489721, 20.051102, 33.055248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287242, 19.777397, 33.265221>,  <14.165754, 19.613174, 33.391205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287242, 19.777397, 33.265221>,  <14.489721, 20.051102, 33.055248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287242, 19.777397, 33.265221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718216, -0.671424, -0.182633,
		0.477419, 0.284565, 0.831321,
		-0.506198, -0.684260, 0.524930,
		14.135383, 19.572119, 33.422699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759207, 20.243031, 33.700378>,  <14.489721, 20.051102, 33.055248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759207, 20.243031, 33.700378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578931, 19.997749, 33.959873>,  <14.470765, 19.850580, 34.115570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578931, 19.997749, 33.959873>,  <14.759207, 20.243031, 33.700378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578931, 19.997749, 33.959873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732281, 0.669585, 0.124177,
		-0.510532, -0.419095, -0.750810,
		-0.450689, -0.613201, 0.648740,
		14.443724, 19.813789, 34.154495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182516, 20.368137, 34.339455>,  <14.759207, 20.243031, 33.700378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182516, 20.368137, 34.339455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.395120, 20.379454, 34.678085>,  <15.522682, 20.386244, 34.881264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.395120, 20.379454, 34.678085>,  <15.182516, 20.368137, 34.339455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395120, 20.379454, 34.678085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820433, 0.231393, -0.522826,
		-0.210685, 0.972449, 0.099775,
		0.531509, 0.028293, 0.846580,
		15.554572, 20.387941, 34.932060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493390, 21.037073, 34.368015>,  <15.182516, 20.368137, 34.339455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493390, 21.037073, 34.368015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.673340, 20.750219, 34.580929>,  <15.781310, 20.578106, 34.708679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.673340, 20.750219, 34.580929>,  <15.493390, 21.037073, 34.368015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.673340, 20.750219, 34.580929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856616, 0.177896, -0.484315,
		0.252629, 0.673846, 0.694342,
		0.449874, -0.717137, 0.532286,
		15.808302, 20.535078, 34.740616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193039, 21.319111, 34.685730>,  <15.493390, 21.037073, 34.368015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193039, 21.319111, 34.685730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.164648, 20.949938, 34.534382>,  <16.147614, 20.728434, 34.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.164648, 20.949938, 34.534382>,  <16.193039, 21.319111, 34.685730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164648, 20.949938, 34.534382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796536, 0.175882, -0.578443,
		0.600410, -0.342438, 0.722664,
		-0.070977, -0.922931, -0.378366,
		16.143354, 20.673059, 34.420872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892962, 21.068356, 34.660164>,  <16.193039, 21.319111, 34.685730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892962, 21.068356, 34.660164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.655977, 20.890581, 34.391399>,  <16.513786, 20.783916, 34.230141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.655977, 20.890581, 34.391399>,  <16.892962, 21.068356, 34.660164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.655977, 20.890581, 34.391399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663500, 0.203841, -0.719873,
		0.456902, -0.872309, 0.174117,
		-0.592460, -0.444438, -0.671912,
		16.478239, 20.757250, 34.189827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240501, 20.580877, 34.268684>,  <16.892962, 21.068356, 34.660164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.240501, 20.580877, 34.268684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981884, 20.727777, 34.001221>,  <16.826714, 20.815918, 33.840740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.981884, 20.727777, 34.001221>,  <17.240501, 20.580877, 34.268684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981884, 20.727777, 34.001221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754833, 0.181009, -0.630446,
		-0.110497, -0.912340, -0.394242,
		-0.646543, 0.367249, -0.668664,
		16.787922, 20.837952, 33.800621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941031, 20.228868, 33.546879>,  <17.240501, 20.580877, 34.268684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941031, 20.228868, 33.546879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986912, 20.625881, 33.530270>,  <17.014441, 20.864088, 33.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986912, 20.625881, 33.530270>,  <16.941031, 20.228868, 33.546879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986912, 20.625881, 33.530270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848617, -0.119628, -0.515304,
		-0.516423, 0.023869, -0.856001,
		0.114701, 0.992532, -0.041523,
		17.021322, 20.923641, 33.517811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564816, 20.434635, 33.239628>,  <16.941031, 20.228868, 33.546879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.564816, 20.434635, 33.239628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560068, 20.202303, 33.565201>,  <17.557220, 20.062902, 33.760544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560068, 20.202303, 33.565201>,  <17.564816, 20.434635, 33.239628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560068, 20.202303, 33.565201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404054, -0.747364, -0.527434,
		0.914658, 0.322616, 0.243557,
		-0.011867, -0.580832, 0.813937,
		17.556507, 20.028053, 33.809383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244804, 20.136396, 33.517933>,  <17.564816, 20.434635, 33.239628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244804, 20.136396, 33.517933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.903042, 19.928734, 33.509308>,  <17.697985, 19.804136, 33.504135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.903042, 19.928734, 33.509308>,  <18.244804, 20.136396, 33.517933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.903042, 19.928734, 33.509308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438755, -0.698617, -0.565180,
		0.278354, -0.492353, 0.824686,
		-0.854408, -0.519155, -0.021560,
		17.646719, 19.772987, 33.502838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260723, 19.410385, 33.763927>,  <18.244804, 20.136396, 33.517933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260723, 19.410385, 33.763927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952181, 19.435947, 33.510654>,  <17.767056, 19.451284, 33.358688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952181, 19.435947, 33.510654>,  <18.260723, 19.410385, 33.763927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952181, 19.435947, 33.510654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382717, -0.748349, -0.541759,
		-0.508466, -0.660220, 0.552786,
		-0.771356, 0.063905, -0.633187,
		17.720774, 19.455120, 33.320698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244366, 18.895445, 33.219135>,  <18.260723, 19.410385, 33.763927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244366, 18.895445, 33.219135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.920822, 19.042612, 33.035664>,  <17.726696, 19.130913, 32.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.920822, 19.042612, 33.035664>,  <18.244366, 18.895445, 33.219135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.920822, 19.042612, 33.035664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147676, -0.627949, -0.764115,
		-0.569160, -0.685796, 0.453588,
		-0.808856, 0.367919, -0.458679,
		17.678165, 19.152988, 32.898060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839453, 18.247667, 32.909172>,  <18.244366, 18.895445, 33.219135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839453, 18.247667, 32.909172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719824, 18.577971, 32.717892>,  <17.648046, 18.776154, 32.603123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719824, 18.577971, 32.717892>,  <17.839453, 18.247667, 32.909172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719824, 18.577971, 32.717892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072344, -0.480075, -0.874240,
		-0.951484, -0.296056, 0.083839,
		-0.299073, 0.825760, -0.478201,
		17.630102, 18.825699, 32.574432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265173, 18.111555, 32.522976>,  <17.839453, 18.247667, 32.909172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265173, 18.111555, 32.522976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.447710, 18.415850, 32.338356>,  <17.557232, 18.598427, 32.227585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.447710, 18.415850, 32.338356>,  <17.265173, 18.111555, 32.522976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447710, 18.415850, 32.338356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034999, -0.502966, -0.863597,
		-0.889116, 0.410250, -0.202900,
		0.456342, 0.760737, -0.461553,
		17.584612, 18.644072, 32.199890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045328, 17.927826, 31.878199>,  <17.265173, 18.111555, 32.522976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045328, 17.927826, 31.878199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.328335, 18.205259, 31.823996>,  <17.498138, 18.371719, 31.791473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.328335, 18.205259, 31.823996>,  <17.045328, 17.927826, 31.878199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328335, 18.205259, 31.823996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215840, -0.394664, -0.893115,
		-0.672930, 0.602645, -0.428934,
		0.707516, 0.693585, -0.135506,
		17.540590, 18.413334, 31.783344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952059, 18.126699, 31.169529>,  <17.045328, 17.927826, 31.878199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952059, 18.126699, 31.169529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316099, 18.273926, 31.245678>,  <17.534523, 18.362263, 31.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.316099, 18.273926, 31.245678>,  <16.952059, 18.126699, 31.169529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316099, 18.273926, 31.245678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314380, -0.313993, -0.895865,
		-0.269962, 0.875177, -0.401478,
		0.910102, 0.368067, 0.190372,
		17.589130, 18.384346, 31.302790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.125471, 18.699532, 30.724293>,  <16.952059, 18.126699, 31.169529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.125471, 18.699532, 30.724293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475372, 18.551933, 30.849930>,  <17.685312, 18.463375, 30.925312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475372, 18.551933, 30.849930>,  <17.125471, 18.699532, 30.724293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475372, 18.551933, 30.849930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266998, -0.173888, -0.947879,
		0.404380, 0.913020, -0.053587,
		0.874751, -0.368995, 0.314091,
		17.737797, 18.441235, 30.944157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608919, 18.938730, 30.315161>,  <17.125471, 18.699532, 30.724293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608919, 18.938730, 30.315161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758732, 18.601000, 30.468439>,  <17.848619, 18.398361, 30.560406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758732, 18.601000, 30.468439>,  <17.608919, 18.938730, 30.315161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758732, 18.601000, 30.468439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409621, -0.220091, -0.885308,
		0.831827, 0.488541, 0.263423,
		0.374533, -0.844327, 0.383194,
		17.871092, 18.347702, 30.583397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412090, 18.897881, 30.031923>,  <17.608919, 18.938730, 30.315161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412090, 18.897881, 30.031923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305696, 18.531118, 30.150942>,  <18.241861, 18.311060, 30.222353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305696, 18.531118, 30.150942>,  <18.412090, 18.897881, 30.031923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305696, 18.531118, 30.150942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331932, -0.376906, -0.864733,
		0.905027, -0.131239, 0.404601,
		-0.265983, -0.916907, 0.297548,
		18.225901, 18.256046, 30.240206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891172, 18.433281, 29.717083>,  <18.412090, 18.897881, 30.031923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891172, 18.433281, 29.717083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.593369, 18.179090, 29.798933>,  <18.414686, 18.026575, 29.848043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.593369, 18.179090, 29.798933>,  <18.891172, 18.433281, 29.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.593369, 18.179090, 29.798933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127663, -0.436367, -0.890666,
		0.655291, -0.636987, 0.406007,
		-0.744511, -0.635478, 0.204628,
		18.370016, 17.988447, 29.860321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021591, 17.732473, 29.318491>,  <18.891172, 18.433281, 29.717083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021591, 17.732473, 29.318491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639242, 17.695677, 29.430092>,  <18.409832, 17.673599, 29.497053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639242, 17.695677, 29.430092>,  <19.021591, 17.732473, 29.318491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639242, 17.695677, 29.430092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141505, -0.688101, -0.711683,
		0.257451, -0.719760, 0.644721,
		-0.955874, -0.091992, 0.279002,
		18.352480, 17.668079, 29.513792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830570, 16.987083, 29.208559>,  <19.021591, 17.732473, 29.318491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830570, 16.987083, 29.208559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479389, 17.174469, 29.248034>,  <18.268681, 17.286901, 29.271717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479389, 17.174469, 29.248034>,  <18.830570, 16.987083, 29.208559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479389, 17.174469, 29.248034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407498, -0.623052, -0.667646,
		-0.251282, -0.626376, 0.737909,
		-0.877953, 0.468464, 0.098685,
		18.216003, 17.315008, 29.277639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208277, 16.524231, 29.482723>,  <18.830570, 16.987083, 29.208559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.208277, 16.524231, 29.482723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072453, 16.821085, 29.251575>,  <17.990957, 16.999197, 29.112886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072453, 16.821085, 29.251575>,  <18.208277, 16.524231, 29.482723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072453, 16.821085, 29.251575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554507, -0.654203, -0.514336,
		-0.759751, 0.145783, 0.633661,
		-0.339561, 0.742136, -0.577869,
		17.970583, 17.043726, 29.078215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516569, 16.269718, 29.283178>,  <18.208277, 16.524231, 29.482723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516569, 16.269718, 29.283178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.603807, 16.564383, 29.027126>,  <17.656151, 16.741180, 28.873495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.603807, 16.564383, 29.027126>,  <17.516569, 16.269718, 29.283178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603807, 16.564383, 29.027126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666651, -0.366584, -0.648993,
		-0.712749, 0.568286, 0.411146,
		0.218094, 0.736660, -0.640131,
		17.669235, 16.785381, 28.835087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859850, 16.747877, 29.145348>,  <17.516569, 16.269718, 29.283178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.859850, 16.747877, 29.145348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131556, 16.768085, 28.852488>,  <17.294579, 16.780210, 28.676771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131556, 16.768085, 28.852488>,  <16.859850, 16.747877, 29.145348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131556, 16.768085, 28.852488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680381, -0.330609, -0.654049,
		-0.275100, 0.942414, -0.190197,
		0.679266, 0.050522, -0.732151,
		17.335335, 16.783241, 28.632843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525671, 16.890125, 28.633654>,  <16.859850, 16.747877, 29.145348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525671, 16.890125, 28.633654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854046, 16.728634, 28.472128>,  <17.051071, 16.631739, 28.375212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854046, 16.728634, 28.472128>,  <16.525671, 16.890125, 28.633654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854046, 16.728634, 28.472128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553874, -0.391010, -0.735075,
		0.138874, 0.827113, -0.544609,
		0.820937, -0.403727, -0.403815,
		17.100327, 16.607515, 28.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463623, 17.015217, 28.039028>,  <16.525671, 16.890125, 28.633654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463623, 17.015217, 28.039028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719223, 16.707565, 28.034662>,  <16.872583, 16.522974, 28.032043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.719223, 16.707565, 28.034662>,  <16.463623, 17.015217, 28.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719223, 16.707565, 28.034662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528962, -0.429078, -0.732183,
		0.558459, 0.473640, -0.681021,
		0.639002, -0.769128, -0.010915,
		16.910923, 16.476828, 28.031387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620983, 16.930986, 27.345057>,  <16.463623, 17.015217, 28.039028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620983, 16.930986, 27.345057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728146, 16.576977, 27.497351>,  <16.792442, 16.364571, 27.588726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728146, 16.576977, 27.497351>,  <16.620983, 16.930986, 27.345057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728146, 16.576977, 27.497351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312310, -0.453617, -0.834682,
		0.911421, 0.104710, -0.397929,
		0.267907, -0.885024, 0.380734,
		16.808517, 16.311470, 27.611570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864244, 16.532957, 26.757387>,  <16.620983, 16.930986, 27.345057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864244, 16.532957, 26.757387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807369, 16.247890, 27.032164>,  <16.773245, 16.076851, 27.197029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807369, 16.247890, 27.032164>,  <16.864244, 16.532957, 26.757387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807369, 16.247890, 27.032164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242279, -0.647827, -0.722233,
		0.959731, -0.269125, -0.080550,
		-0.142189, -0.712665, 0.686943,
		16.764713, 16.034090, 27.238247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.241686, 15.932735, 26.517666>,  <16.864244, 16.532957, 26.757387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.241686, 15.932735, 26.517666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954546, 15.817769, 26.771305>,  <16.782263, 15.748789, 26.923489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954546, 15.817769, 26.771305>,  <17.241686, 15.932735, 26.517666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954546, 15.817769, 26.771305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295022, -0.699398, -0.651002,
		0.630597, -0.654396, 0.417269,
		-0.717850, -0.287417, 0.634100,
		16.739191, 15.731544, 26.961535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236423, 15.298576, 26.434494>,  <17.241686, 15.932735, 26.517666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236423, 15.298576, 26.434494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.885349, 15.361026, 26.615732>,  <16.674706, 15.398496, 26.724476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.885349, 15.361026, 26.615732>,  <17.236423, 15.298576, 26.434494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.885349, 15.361026, 26.615732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439959, -0.637361, -0.632619,
		0.190020, -0.754583, 0.628090,
		-0.877684, 0.156123, 0.453097,
		16.622044, 15.407863, 26.751661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.933758, 14.631818, 26.399635>,  <17.236423, 15.298576, 26.434494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.933758, 14.631818, 26.399635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.648392, 14.909564, 26.437365>,  <16.477173, 15.076212, 26.460001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.648392, 14.909564, 26.437365>,  <16.933758, 14.631818, 26.399635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648392, 14.909564, 26.437365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484226, -0.391202, -0.782615,
		-0.506522, -0.604002, 0.615319,
		-0.713415, 0.694365, 0.094321,
		16.434366, 15.117873, 26.465660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276350, 14.211938, 26.250208>,  <16.933758, 14.631818, 26.399635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276350, 14.211938, 26.250208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.207121, 14.601226, 26.189692>,  <16.165585, 14.834799, 26.153381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.207121, 14.601226, 26.189692>,  <16.276350, 14.211938, 26.250208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.207121, 14.601226, 26.189692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412811, -0.211144, -0.886005,
		-0.894222, -0.090887, 0.438299,
		-0.173071, 0.973220, -0.151291,
		16.155199, 14.893192, 26.144304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525434, 14.173908, 26.129681>,  <16.276350, 14.211938, 26.250208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525434, 14.173908, 26.129681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689636, 14.512908, 25.995083>,  <15.788157, 14.716308, 25.914324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689636, 14.512908, 25.995083>,  <15.525434, 14.173908, 26.129681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689636, 14.512908, 25.995083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494388, -0.103217, -0.863092,
		-0.766202, 0.520662, 0.376623,
		0.410506, 0.847500, -0.336494,
		15.812788, 14.767159, 25.894135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954120, 14.504066, 25.837385>,  <15.525434, 14.173908, 26.129681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954120, 14.504066, 25.837385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268466, 14.692730, 25.677410>,  <15.457074, 14.805929, 25.581425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268466, 14.692730, 25.677410>,  <14.954120, 14.504066, 25.837385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268466, 14.692730, 25.677410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377555, -0.146254, -0.914365,
		-0.489763, 0.869566, 0.063142,
		0.785866, 0.471662, -0.399938,
		15.504226, 14.834229, 25.557428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749127, 15.039452, 25.418734>,  <14.954120, 14.504066, 25.837385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749127, 15.039452, 25.418734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.115828, 14.993220, 25.265783>,  <15.335848, 14.965482, 25.174013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.115828, 14.993220, 25.265783>,  <14.749127, 15.039452, 25.418734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.115828, 14.993220, 25.265783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381227, 0.032778, -0.923900,
		0.119317, 0.992757, -0.014013,
		0.916750, -0.115579, -0.382376,
		15.390852, 14.958547, 25.151070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824078, 15.496242, 24.990679>,  <14.749127, 15.039452, 25.418734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824078, 15.496242, 24.990679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.100227, 15.239244, 24.857660>,  <15.265917, 15.085046, 24.777849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.100227, 15.239244, 24.857660>,  <14.824078, 15.496242, 24.990679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.100227, 15.239244, 24.857660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461634, -0.037306, -0.886286,
		0.557026, 0.765383, -0.322351,
		0.690373, -0.642493, -0.332547,
		15.307340, 15.046496, 24.757896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840442, 15.578579, 24.294016>,  <14.824078, 15.496242, 24.990679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840442, 15.578579, 24.294016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.064059, 15.246951, 24.298260>,  <15.198230, 15.047975, 24.300806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.064059, 15.246951, 24.298260>,  <14.840442, 15.578579, 24.294016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.064059, 15.246951, 24.298260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221894, -0.161928, -0.961531,
		0.798895, 0.535183, -0.274491,
		0.559043, -0.829071, 0.010610,
		15.231772, 14.998230, 24.301443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371309, 15.466872, 23.708677>,  <14.840442, 15.578579, 24.294016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.371309, 15.466872, 23.708677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300990, 15.095454, 23.839460>,  <15.258799, 14.872603, 23.917931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300990, 15.095454, 23.839460>,  <15.371309, 15.466872, 23.708677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300990, 15.095454, 23.839460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203115, -0.290769, -0.934985,
		0.963244, -0.230778, -0.137485,
		-0.175798, -0.928544, 0.326956,
		15.248251, 14.816891, 23.937548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621958, 15.069257, 23.114473>,  <15.371309, 15.466872, 23.708677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621958, 15.069257, 23.114473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.381645, 14.832475, 23.329378>,  <15.237458, 14.690406, 23.458321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.381645, 14.832475, 23.329378>,  <15.621958, 15.069257, 23.114473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381645, 14.832475, 23.329378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463534, -0.289602, -0.837417,
		0.651306, -0.752144, -0.100404,
		-0.600780, -0.591955, 0.537264,
		15.201411, 14.654888, 23.490557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554426, 14.481159, 22.748398>,  <15.621958, 15.069257, 23.114473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554426, 14.481159, 22.748398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223848, 14.506215, 22.972206>,  <15.025501, 14.521249, 23.106491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223848, 14.506215, 22.972206>,  <15.554426, 14.481159, 22.748398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223848, 14.506215, 22.972206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547262, -0.322836, -0.772193,
		0.132264, -0.944380, 0.301086,
		-0.826444, 0.062639, 0.559522,
		14.975915, 14.525007, 23.140062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183937, 13.942029, 22.566620>,  <15.554426, 14.481159, 22.748398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183937, 13.942029, 22.566620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.900776, 14.158018, 22.748743>,  <14.730880, 14.287612, 22.858017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.900776, 14.158018, 22.748743>,  <15.183937, 13.942029, 22.566620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900776, 14.158018, 22.748743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637575, -0.211136, -0.740891,
		-0.303933, -0.814768, 0.493739,
		-0.707901, 0.539976, 0.455304,
		14.688405, 14.320010, 22.885334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693287, 13.437514, 22.824781>,  <15.183937, 13.942029, 22.566620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693287, 13.437514, 22.824781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490644, 13.780487, 22.788652>,  <14.369058, 13.986271, 22.766975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490644, 13.780487, 22.788652>,  <14.693287, 13.437514, 22.824781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490644, 13.780487, 22.788652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576412, -0.414742, -0.704087,
		-0.641167, -0.304632, 0.704346,
		-0.506609, 0.857431, -0.090325,
		14.338660, 14.037717, 22.761555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914280, 13.271783, 22.727861>,  <14.693287, 13.437514, 22.824781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914280, 13.271783, 22.727861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948530, 13.650294, 22.603136>,  <13.969081, 13.877401, 22.528301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948530, 13.650294, 22.603136>,  <13.914280, 13.271783, 22.727861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948530, 13.650294, 22.603136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671755, -0.176296, -0.719490,
		-0.735808, 0.271068, 0.620571,
		0.085626, 0.946278, -0.311811,
		13.974218, 13.934177, 22.509592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192570, 13.664007, 22.695967>,  <13.914280, 13.271783, 22.727861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192570, 13.664007, 22.695967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433115, 13.851490, 22.437147>,  <13.577442, 13.963980, 22.281855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433115, 13.851490, 22.437147>,  <13.192570, 13.664007, 22.695967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433115, 13.851490, 22.437147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666712, -0.151904, -0.729671,
		-0.440293, 0.870194, 0.221144,
		0.601363, 0.468708, -0.647051,
		13.613523, 13.992103, 22.243032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794426, 14.033363, 22.263744>,  <13.192570, 13.664007, 22.695967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794426, 14.033363, 22.263744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.132462, 14.026239, 22.050013>,  <13.335283, 14.021965, 21.921774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.132462, 14.026239, 22.050013>,  <12.794426, 14.033363, 22.263744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.132462, 14.026239, 22.050013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531895, -0.128863, -0.836948,
		-0.053950, 0.991503, -0.118373,
		0.845090, -0.017809, -0.534327,
		13.385988, 14.020897, 21.889715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691256, 14.383873, 21.661690>,  <12.794426, 14.033363, 22.263744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691256, 14.383873, 21.661690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008845, 14.165691, 21.554296>,  <13.199399, 14.034782, 21.489861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008845, 14.165691, 21.554296>,  <12.691256, 14.383873, 21.661690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008845, 14.165691, 21.554296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375263, -0.092261, -0.922316,
		0.478311, 0.833047, -0.277941,
		0.793975, -0.545454, -0.268482,
		13.247038, 14.002055, 21.473751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690277, 14.465063, 20.969751>,  <12.691256, 14.383873, 21.661690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690277, 14.465063, 20.969751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.957841, 14.169198, 20.999306>,  <13.118379, 13.991679, 21.017038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.957841, 14.169198, 20.999306>,  <12.690277, 14.465063, 20.969751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957841, 14.169198, 20.999306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231751, -0.301956, -0.924724,
		0.706295, 0.601432, -0.373399,
		0.668909, -0.739663, 0.073888,
		13.158513, 13.947299, 21.021473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062296, 14.527243, 20.377634>,  <12.690277, 14.465063, 20.969751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062296, 14.527243, 20.377634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.093391, 14.155707, 20.522530>,  <13.112049, 13.932786, 20.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.093391, 14.155707, 20.522530>,  <13.062296, 14.527243, 20.377634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.093391, 14.155707, 20.522530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359062, -0.365039, -0.858965,
		0.930070, -0.063290, -0.361889,
		0.077740, -0.928838, 0.362237,
		13.116714, 13.877056, 20.631201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437498, 14.101904, 19.861858>,  <13.062296, 14.527243, 20.377634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437498, 14.101904, 19.861858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227365, 13.854527, 20.095629>,  <13.101285, 13.706100, 20.235891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227365, 13.854527, 20.095629>,  <13.437498, 14.101904, 19.861858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227365, 13.854527, 20.095629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438771, -0.391590, -0.808788,
		0.729044, -0.681312, -0.065639,
		-0.525333, -0.618442, 0.584426,
		13.069765, 13.668994, 20.270956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.187166, 14.026158, 20.074036>,  <13.437498, 14.101904, 19.861858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.187166, 14.026158, 20.074036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378453, 14.233087, 19.790152>,  <14.493226, 14.357244, 19.619822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378453, 14.233087, 19.790152>,  <14.187166, 14.026158, 20.074036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378453, 14.233087, 19.790152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493170, 0.510481, 0.704409,
		0.726698, -0.686869, -0.011005,
		0.478219, 0.517320, -0.709709,
		14.521919, 14.388283, 19.577238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850537, 14.129765, 20.291464>,  <14.187166, 14.026158, 20.074036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850537, 14.129765, 20.291464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828721, 14.404042, 20.001127>,  <14.815631, 14.568609, 19.826925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828721, 14.404042, 20.001127>,  <14.850537, 14.129765, 20.291464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.828721, 14.404042, 20.001127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643203, 0.580144, 0.499723,
		0.763750, -0.439609, -0.472683,
		-0.054542, 0.685695, -0.725843,
		14.812359, 14.609751, 19.783375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521975, 14.378709, 20.156713>,  <14.850537, 14.129765, 20.291464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.521975, 14.378709, 20.156713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295575, 14.679803, 20.022232>,  <15.159736, 14.860459, 19.941544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295575, 14.679803, 20.022232>,  <15.521975, 14.378709, 20.156713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295575, 14.679803, 20.022232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626993, 0.657833, 0.417295,
		0.535280, 0.025390, -0.844293,
		-0.565998, 0.752736, -0.336206,
		15.125775, 14.905623, 19.921370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004986, 14.992914, 19.963409>,  <15.521975, 14.378709, 20.156713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004986, 14.992914, 19.963409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.647628, 15.172594, 19.960140>,  <15.433213, 15.280402, 19.958179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.647628, 15.172594, 19.960140>,  <16.004986, 14.992914, 19.963409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647628, 15.172594, 19.960140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427617, 0.855766, 0.291218,
		0.137809, 0.256678, -0.956622,
		-0.893394, 0.449200, -0.008173,
		15.379610, 15.307354, 19.957689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148293, 15.740399, 19.822855>,  <16.004986, 14.992914, 19.963409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148293, 15.740399, 19.822855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796050, 15.734543, 20.012304>,  <15.584704, 15.731029, 20.125973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796050, 15.734543, 20.012304>,  <16.148293, 15.740399, 19.822855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796050, 15.734543, 20.012304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268204, 0.808603, 0.523668,
		-0.390639, 0.588173, -0.708134,
		-0.880607, -0.014641, 0.473622,
		15.531868, 15.730150, 20.154390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859489, 16.418276, 19.746572>,  <16.148293, 15.740399, 19.822855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859489, 16.418276, 19.746572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651996, 16.261137, 20.050306>,  <15.527499, 16.166853, 20.232546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651996, 16.261137, 20.050306>,  <15.859489, 16.418276, 19.746572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651996, 16.261137, 20.050306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282755, 0.759358, 0.586025,
		-0.806824, 0.518695, -0.282825,
		-0.518733, -0.392849, 0.759332,
		15.496376, 16.143282, 20.278107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515569, 16.984922, 19.919138>,  <15.859489, 16.418276, 19.746572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515569, 16.984922, 19.919138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.506372, 16.729780, 20.227062>,  <15.500854, 16.576694, 20.411818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.506372, 16.729780, 20.227062>,  <15.515569, 16.984922, 19.919138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506372, 16.729780, 20.227062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163983, 0.757180, 0.632288,
		-0.986195, 0.140773, 0.087189,
		-0.022991, -0.637856, 0.769812,
		15.499475, 16.538424, 20.458006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349233, 17.362726, 20.505098>,  <15.515569, 16.984922, 19.919138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349233, 17.362726, 20.505098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.506611, 17.048859, 20.696720>,  <15.601038, 16.860538, 20.811693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.506611, 17.048859, 20.696720>,  <15.349233, 17.362726, 20.505098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506611, 17.048859, 20.696720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435586, 0.617989, 0.654488,
		-0.809608, -0.048835, 0.584936,
		0.393446, -0.784668, 0.479057,
		15.624645, 16.813457, 20.840437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319036, 17.415798, 21.316866>,  <15.349233, 17.362726, 20.505098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319036, 17.415798, 21.316866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605053, 17.151575, 21.225323>,  <15.776663, 16.993040, 21.170397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.605053, 17.151575, 21.225323>,  <15.319036, 17.415798, 21.316866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605053, 17.151575, 21.225323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592279, 0.398507, 0.700284,
		-0.371378, -0.636280, 0.676185,
		0.715041, -0.660560, -0.228858,
		15.819566, 16.953407, 21.156666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356986, 17.054409, 21.935108>,  <15.319036, 17.415798, 21.316866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356986, 17.054409, 21.935108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690902, 17.011253, 21.719151>,  <15.891252, 16.985359, 21.589577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690902, 17.011253, 21.719151>,  <15.356986, 17.054409, 21.935108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690902, 17.011253, 21.719151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524782, 0.452519, 0.720993,
		0.166524, -0.885204, 0.434377,
		0.834790, -0.107890, -0.539894,
		15.941339, 16.978886, 21.557182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744885, 16.508646, 22.271931>,  <15.356986, 17.054409, 21.935108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744885, 16.508646, 22.271931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993048, 16.767046, 22.094042>,  <16.141945, 16.922087, 21.987309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.993048, 16.767046, 22.094042>,  <15.744885, 16.508646, 22.271931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993048, 16.767046, 22.094042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419240, 0.206065, 0.884181,
		0.662824, -0.734996, -0.142986,
		0.620405, 0.646002, -0.444724,
		16.179169, 16.960846, 21.960625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443504, 16.428490, 22.605932>,  <15.744885, 16.508646, 22.271931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443504, 16.428490, 22.605932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.490850, 16.764034, 22.393404>,  <16.519258, 16.965361, 22.265886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.490850, 16.764034, 22.393404>,  <16.443504, 16.428490, 22.605932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.490850, 16.764034, 22.393404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538913, 0.395150, 0.743928,
		0.834004, -0.374393, -0.405300,
		0.118367, 0.838860, -0.531321,
		16.526361, 17.015692, 22.234007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141823, 16.496820, 22.669411>,  <16.443504, 16.428490, 22.605932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141823, 16.496820, 22.669411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014887, 16.844534, 22.517809>,  <16.938726, 17.053162, 22.426847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014887, 16.844534, 22.517809>,  <17.141823, 16.496820, 22.669411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014887, 16.844534, 22.517809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599247, 0.493573, 0.630308,
		0.734982, -0.027096, -0.677545,
		-0.317339, 0.869282, -0.379005,
		16.919685, 17.105318, 22.404108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715462, 16.912945, 22.523369>,  <17.141823, 16.496820, 22.669411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715462, 16.912945, 22.523369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400360, 17.149677, 22.591694>,  <17.211298, 17.291718, 22.632689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400360, 17.149677, 22.591694>,  <17.715462, 16.912945, 22.523369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400360, 17.149677, 22.591694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492025, 0.437714, 0.752541,
		0.370610, 0.676862, -0.636007,
		-0.787756, 0.591831, 0.170812,
		17.164034, 17.327227, 22.642937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953468, 17.553566, 22.608171>,  <17.715462, 16.912945, 22.523369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953468, 17.553566, 22.608171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589512, 17.572193, 22.773060>,  <17.371138, 17.583370, 22.871992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589512, 17.572193, 22.773060>,  <17.953468, 17.553566, 22.608171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589512, 17.572193, 22.773060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372077, 0.531029, 0.761293,
		-0.183448, 0.846073, -0.500508,
		-0.909893, 0.046570, 0.412220,
		17.316544, 17.586164, 22.896727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880781, 18.215195, 22.773342>,  <17.953468, 17.553566, 22.608171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880781, 18.215195, 22.773342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623686, 18.027283, 23.015398>,  <17.469429, 17.914536, 23.160631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623686, 18.027283, 23.015398>,  <17.880781, 18.215195, 22.773342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623686, 18.027283, 23.015398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393763, 0.474994, 0.786976,
		-0.657142, 0.744102, -0.120316,
		-0.642740, -0.469779, 0.605138,
		17.430864, 17.886349, 23.196939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618368, 18.725058, 23.275057>,  <17.880781, 18.215195, 22.773342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618368, 18.725058, 23.275057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553589, 18.354967, 23.412304>,  <17.514721, 18.132914, 23.494652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553589, 18.354967, 23.412304>,  <17.618368, 18.725058, 23.275057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553589, 18.354967, 23.412304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206238, 0.308297, 0.928665,
		-0.965007, 0.221159, 0.140889,
		-0.161947, -0.925225, 0.343120,
		17.505005, 18.077400, 23.515240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266827, 18.862555, 23.820156>,  <17.618368, 18.725058, 23.275057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266827, 18.862555, 23.820156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397488, 18.492296, 23.896557>,  <17.475883, 18.270142, 23.942398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397488, 18.492296, 23.896557>,  <17.266827, 18.862555, 23.820156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397488, 18.492296, 23.896557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139263, 0.247019, 0.958951,
		-0.934828, -0.286644, 0.209597,
		0.326652, -0.925644, 0.191001,
		17.495483, 18.214603, 23.953857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.897203, 18.656837, 24.413755>,  <17.266827, 18.862555, 23.820156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.897203, 18.656837, 24.413755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214312, 18.413578, 24.397430>,  <17.404577, 18.267622, 24.387636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214312, 18.413578, 24.397430>,  <16.897203, 18.656837, 24.413755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214312, 18.413578, 24.397430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244279, 0.255663, 0.935395,
		-0.558427, -0.751525, 0.351241,
		0.792772, -0.608151, -0.040813,
		17.452143, 18.231133, 24.385187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932770, 18.346209, 25.019012>,  <16.897203, 18.656837, 24.413755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932770, 18.346209, 25.019012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302094, 18.254528, 24.895746>,  <17.523687, 18.199520, 24.821787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302094, 18.254528, 24.895746>,  <16.932770, 18.346209, 25.019012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302094, 18.254528, 24.895746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349196, 0.166969, 0.922054,
		-0.159880, -0.958952, 0.234200,
		0.923310, -0.229200, -0.308167,
		17.579086, 18.185768, 24.803297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140396, 17.900436, 25.458487>,  <16.932770, 18.346209, 25.019012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140396, 17.900436, 25.458487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491573, 18.025961, 25.313856>,  <17.702280, 18.101276, 25.227077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491573, 18.025961, 25.313856>,  <17.140396, 17.900436, 25.458487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491573, 18.025961, 25.313856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335748, 0.134836, 0.932251,
		0.341306, -0.939862, 0.013016,
		0.877943, 0.313813, -0.361577,
		17.754955, 18.120104, 25.205383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720955, 17.575031, 25.815577>,  <17.140396, 17.900436, 25.458487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720955, 17.575031, 25.815577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858561, 17.913071, 25.651886>,  <17.941124, 18.115894, 25.553671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.858561, 17.913071, 25.651886>,  <17.720955, 17.575031, 25.815577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858561, 17.913071, 25.651886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367427, 0.279916, 0.886930,
		0.864090, -0.455477, -0.214216,
		0.344014, 0.845096, -0.409227,
		17.961765, 18.166599, 25.529118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.334850, 17.601610, 26.119461>,  <17.720955, 17.575031, 25.815577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.334850, 17.601610, 26.119461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.285805, 17.969154, 25.969442>,  <18.256378, 18.189680, 25.879431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.285805, 17.969154, 25.969442>,  <18.334850, 17.601610, 26.119461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285805, 17.969154, 25.969442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349579, 0.393667, 0.850189,
		0.928849, -0.026865, -0.369483,
		-0.122613, 0.918861, -0.375048,
		18.249022, 18.244812, 25.856928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884663, 17.912680, 26.375320>,  <18.334850, 17.601610, 26.119461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884663, 17.912680, 26.375320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641537, 18.217020, 26.284393>,  <18.495661, 18.399624, 26.229837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641537, 18.217020, 26.284393>,  <18.884663, 17.912680, 26.375320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641537, 18.217020, 26.284393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161301, 0.398593, 0.902832,
		0.777525, 0.512087, -0.364995,
		-0.607813, 0.760849, -0.227316,
		18.459192, 18.445274, 26.216198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181322, 18.653042, 26.467560>,  <18.884663, 17.912680, 26.375320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181322, 18.653042, 26.467560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.785410, 18.699492, 26.500671>,  <18.547863, 18.727362, 26.520538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.785410, 18.699492, 26.500671>,  <19.181322, 18.653042, 26.467560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.785410, 18.699492, 26.500671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134579, 0.568600, 0.811531,
		0.047171, 0.814376, -0.578417,
		-0.989779, 0.116123, 0.082777,
		18.488476, 18.734329, 26.525505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086382, 19.318623, 26.726799>,  <19.181322, 18.653042, 26.467560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.086382, 19.318623, 26.726799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.722351, 19.171797, 26.803766>,  <18.503933, 19.083702, 26.849947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.722351, 19.171797, 26.803766>,  <19.086382, 19.318623, 26.726799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.722351, 19.171797, 26.803766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029426, 0.520341, 0.853451,
		-0.413392, 0.771045, -0.484352,
		-0.910078, -0.367063, 0.192416,
		18.449327, 19.061678, 26.861490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587303, 19.976807, 26.915092>,  <19.086382, 19.318623, 26.726799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587303, 19.976807, 26.915092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432426, 19.640118, 27.065605>,  <18.339500, 19.438105, 27.155912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432426, 19.640118, 27.065605>,  <18.587303, 19.976807, 26.915092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.432426, 19.640118, 27.065605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368751, 0.515428, 0.773535,
		-0.845047, 0.160752, -0.509955,
		-0.387192, -0.841720, 0.376284,
		18.316269, 19.387602, 27.178490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.859983, 20.168835, 26.982515>,  <18.587303, 19.976807, 26.915092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.859983, 20.168835, 26.982515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.947901, 19.855654, 27.215298>,  <18.000650, 19.667746, 27.354967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.947901, 19.855654, 27.215298>,  <17.859983, 20.168835, 26.982515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947901, 19.855654, 27.215298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288031, 0.517869, 0.805512,
		-0.932057, -0.344667, -0.111692,
		0.219792, -0.782954, 0.581958,
		18.013838, 19.620768, 27.389885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373056, 20.144880, 27.490210>,  <17.859983, 20.168835, 26.982515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373056, 20.144880, 27.490210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679707, 19.936348, 27.640144>,  <17.863697, 19.811228, 27.730104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679707, 19.936348, 27.640144>,  <17.373056, 20.144880, 27.490210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679707, 19.936348, 27.640144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099256, 0.480534, 0.871341,
		-0.634378, -0.705196, 0.316644,
		0.766625, -0.521330, 0.374835,
		17.909695, 19.779949, 27.752594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.171719, 19.988894, 28.115191>,  <17.373056, 20.144880, 27.490210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.171719, 19.988894, 28.115191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566338, 19.950041, 28.167788>,  <17.803108, 19.926729, 28.199347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.566338, 19.950041, 28.167788>,  <17.171719, 19.988894, 28.115191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566338, 19.950041, 28.167788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064153, 0.509801, 0.857897,
		-0.150365, -0.854791, 0.496712,
		0.986547, -0.097132, 0.131493,
		17.862301, 19.920900, 28.207235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298138, 19.760614, 28.798237>,  <17.171719, 19.988894, 28.115191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298138, 19.760614, 28.798237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.637012, 19.940704, 28.685402>,  <17.840338, 20.048759, 28.617701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.637012, 19.940704, 28.685402>,  <17.298138, 19.760614, 28.798237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637012, 19.940704, 28.685402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103166, 0.381431, 0.918623,
		0.521185, -0.807345, 0.276695,
		0.847185, 0.450227, -0.282086,
		17.891169, 20.075771, 28.600777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840433, 19.552132, 29.329027>,  <17.298138, 19.760614, 28.798237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840433, 19.552132, 29.329027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882303, 19.903719, 29.142927>,  <17.907425, 20.114672, 29.031267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882303, 19.903719, 29.142927>,  <17.840433, 19.552132, 29.329027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882303, 19.903719, 29.142927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297941, 0.418616, 0.857900,
		0.948828, -0.228417, -0.218063,
		0.104675, 0.878969, -0.465249,
		17.913706, 20.167410, 29.003353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.483706, 19.764477, 29.476992>,  <17.840433, 19.552132, 29.329027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.483706, 19.764477, 29.476992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280155, 20.099461, 29.397285>,  <18.158026, 20.300451, 29.349461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280155, 20.099461, 29.397285>,  <18.483706, 19.764477, 29.476992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.280155, 20.099461, 29.397285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311636, 0.394995, 0.864212,
		0.802452, 0.377678, -0.461985,
		-0.508875, 0.837460, -0.199266,
		18.127493, 20.350698, 29.337505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891432, 20.297045, 29.787695>,  <18.483706, 19.764477, 29.476992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891432, 20.297045, 29.787695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.531843, 20.468950, 29.753853>,  <18.316090, 20.572094, 29.733547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.531843, 20.468950, 29.753853>,  <18.891432, 20.297045, 29.787695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531843, 20.468950, 29.753853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190599, 0.557726, 0.807845,
		0.394366, 0.710103, -0.583291,
		-0.898970, 0.429761, -0.084603,
		18.262152, 20.597879, 29.728472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.016487, 20.919350, 30.071663>,  <18.891432, 20.297045, 29.787695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.016487, 20.919350, 30.071663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618217, 20.927162, 30.035324>,  <18.379255, 20.931850, 30.013521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.618217, 20.927162, 30.035324>,  <19.016487, 20.919350, 30.071663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618217, 20.927162, 30.035324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053647, 0.677432, 0.733626,
		0.075872, 0.735326, -0.673454,
		-0.995673, 0.019533, -0.090846,
		18.319515, 20.933022, 30.008070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659103, 21.615362, 29.773239>,  <19.016487, 20.919350, 30.071663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659103, 21.615362, 29.773239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476994, 21.375790, 30.036755>,  <18.367727, 21.232046, 30.194864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476994, 21.375790, 30.036755>,  <18.659103, 21.615362, 29.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476994, 21.375790, 30.036755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046726, 0.754975, 0.654087,
		-0.889125, 0.267006, -0.371706,
		-0.455273, -0.598933, 0.658791,
		18.340412, 21.196110, 30.234392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098793, 22.004524, 30.090984>,  <18.659103, 21.615362, 29.773239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098793, 22.004524, 30.090984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170349, 21.710093, 30.352116>,  <18.213284, 21.533434, 30.508795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170349, 21.710093, 30.352116>,  <18.098793, 22.004524, 30.090984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170349, 21.710093, 30.352116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058400, 0.654417, 0.753875,
		-0.982134, -0.172987, 0.074082,
		0.178891, -0.736080, 0.652827,
		18.224016, 21.489269, 30.547964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549047, 22.377224, 30.407896>,  <18.098793, 22.004524, 30.090984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549047, 22.377224, 30.407896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264608, 22.629654, 30.531885>,  <17.093945, 22.781111, 30.606277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264608, 22.629654, 30.531885>,  <17.549047, 22.377224, 30.407896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264608, 22.629654, 30.531885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496230, -0.138150, -0.857129,
		-0.498090, -0.763321, 0.411397,
		-0.711100, 0.631074, 0.309971,
		17.051279, 22.818975, 30.624876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756536, 22.125410, 30.266617>,  <17.549047, 22.377224, 30.407896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756536, 22.125410, 30.266617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.809324, 22.521660, 30.252478>,  <16.840998, 22.759409, 30.243994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.809324, 22.521660, 30.252478>,  <16.756536, 22.125410, 30.266617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809324, 22.521660, 30.252478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360027, 0.014678, -0.932826,
		-0.923561, 0.135832, 0.358588,
		0.131971, 0.990623, -0.035347,
		16.848915, 22.818848, 30.241873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144838, 22.482264, 30.063698>,  <16.756536, 22.125410, 30.266617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144838, 22.482264, 30.063698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470388, 22.681330, 29.943739>,  <16.665718, 22.800770, 29.871763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470388, 22.681330, 29.943739>,  <16.144838, 22.482264, 30.063698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470388, 22.681330, 29.943739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372268, 0.050332, -0.926759,
		-0.446121, 0.865908, 0.226228,
		0.813875, 0.497665, -0.299896,
		16.714550, 22.830629, 29.853769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883440, 22.845165, 29.502146>,  <16.144838, 22.482264, 30.063698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883440, 22.845165, 29.502146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.272091, 22.915236, 29.438580>,  <16.505281, 22.957277, 29.400440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.272091, 22.915236, 29.438580>,  <15.883440, 22.845165, 29.502146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.272091, 22.915236, 29.438580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156885, -0.025481, -0.987288,
		-0.177000, 0.984207, 0.002725,
		0.971627, 0.175178, -0.158917,
		16.563580, 22.967789, 29.390903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912420, 23.205397, 28.867556>,  <15.883440, 22.845165, 29.502146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912420, 23.205397, 28.867556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276722, 23.048914, 28.920448>,  <16.495302, 22.955025, 28.952185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276722, 23.048914, 28.920448>,  <15.912420, 23.205397, 28.867556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276722, 23.048914, 28.920448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046391, -0.221257, -0.974112,
		0.410334, 0.893311, -0.183362,
		0.910755, -0.391205, 0.132231,
		16.549948, 22.931553, 28.960117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232363, 23.403757, 28.255543>,  <15.912420, 23.205397, 28.867556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232363, 23.403757, 28.255543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444817, 23.105766, 28.416986>,  <16.572289, 22.926971, 28.513853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444817, 23.105766, 28.416986>,  <16.232363, 23.403757, 28.255543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444817, 23.105766, 28.416986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261834, -0.308725, -0.914402,
		0.805816, 0.591350, 0.031086,
		0.531135, -0.744979, 0.403611,
		16.604156, 22.882273, 28.538071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885054, 23.461880, 27.910574>,  <16.232363, 23.403757, 28.255543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885054, 23.461880, 27.910574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836306, 23.088066, 28.044317>,  <16.807056, 22.863777, 28.124563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.836306, 23.088066, 28.044317>,  <16.885054, 23.461880, 27.910574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836306, 23.088066, 28.044317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179444, -0.352063, -0.918614,
		0.976190, -0.051954, 0.210603,
		-0.121871, -0.934533, 0.334358,
		16.799744, 22.807707, 28.144625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519279, 23.004965, 27.706785>,  <16.885054, 23.461880, 27.910574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519279, 23.004965, 27.706785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201405, 22.771225, 27.772524>,  <17.010679, 22.630981, 27.811968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.201405, 22.771225, 27.772524>,  <17.519279, 23.004965, 27.706785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201405, 22.771225, 27.772524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198344, -0.505849, -0.839510,
		0.573702, -0.634549, 0.517893,
		-0.794686, -0.584350, 0.164347,
		16.962999, 22.595921, 27.821829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853683, 22.379803, 27.643288>,  <17.519279, 23.004965, 27.706785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853683, 22.379803, 27.643288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461868, 22.305143, 27.613165>,  <17.226780, 22.260347, 27.595091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461868, 22.305143, 27.613165>,  <17.853683, 22.379803, 27.643288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461868, 22.305143, 27.613165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170965, -0.574187, -0.800675,
		0.106203, -0.797165, 0.594347,
		-0.979536, -0.186647, -0.075307,
		17.168007, 22.249149, 27.590572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777691, 21.622860, 27.372509>,  <17.853683, 22.379803, 27.643288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777691, 21.622860, 27.372509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430222, 21.814186, 27.320940>,  <17.221741, 21.928982, 27.289999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.430222, 21.814186, 27.320940>,  <17.777691, 21.622860, 27.372509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430222, 21.814186, 27.320940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081690, -0.394994, -0.915044,
		-0.488609, -0.784340, 0.382194,
		-0.868671, 0.478320, -0.128925,
		17.169621, 21.957682, 27.282263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235653, 21.040222, 27.254822>,  <17.777691, 21.622860, 27.372509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235653, 21.040222, 27.254822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090555, 21.381826, 27.105644>,  <17.003496, 21.586788, 27.016138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090555, 21.381826, 27.105644>,  <17.235653, 21.040222, 27.254822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090555, 21.381826, 27.105644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340934, -0.494076, -0.799783,
		-0.867284, -0.162966, 0.470383,
		-0.362743, 0.854009, -0.372943,
		16.981733, 21.638029, 26.993761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556433, 20.868547, 27.116535>,  <17.235653, 21.040222, 27.254822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556433, 20.868547, 27.116535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637671, 21.192343, 26.896179>,  <16.686413, 21.386620, 26.763966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637671, 21.192343, 26.896179>,  <16.556433, 20.868547, 27.116535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637671, 21.192343, 26.896179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389359, -0.449458, -0.803982,
		-0.898416, 0.377780, 0.223899,
		0.203095, 0.809488, -0.550892,
		16.698599, 21.435188, 26.730911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004023, 20.991076, 26.748741>,  <16.556433, 20.868547, 27.116535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004023, 20.991076, 26.748741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271891, 21.184376, 26.523170>,  <16.432611, 21.300356, 26.387829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271891, 21.184376, 26.523170>,  <16.004023, 20.991076, 26.748741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271891, 21.184376, 26.523170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395516, -0.410623, -0.821557,
		-0.628579, 0.773212, -0.083849,
		0.669668, 0.483250, -0.563927,
		16.472792, 21.329351, 26.353992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662480, 21.330732, 26.142057>,  <16.004023, 20.991076, 26.748741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662480, 21.330732, 26.142057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043720, 21.296135, 26.026043>,  <16.272465, 21.275377, 25.956434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043720, 21.296135, 26.026043>,  <15.662480, 21.330732, 26.142057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043720, 21.296135, 26.026043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302361, -0.229720, -0.925098,
		0.013387, 0.969406, -0.245098,
		0.953099, -0.086493, -0.290035,
		16.329651, 21.270187, 25.939032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628525, 21.585522, 25.480103>,  <15.662480, 21.330732, 26.142057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628525, 21.585522, 25.480103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978908, 21.393717, 25.459068>,  <16.189137, 21.278633, 25.446447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978908, 21.393717, 25.459068>,  <15.628525, 21.585522, 25.480103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978908, 21.393717, 25.459068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215582, -0.291621, -0.931924,
		0.431536, 0.827662, -0.358822,
		0.875957, -0.479514, -0.052584,
		16.241695, 21.249863, 25.443293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900007, 21.717375, 24.827538>,  <15.628525, 21.585522, 25.480103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900007, 21.717375, 24.827538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125856, 21.409506, 24.946739>,  <16.261366, 21.224785, 25.018261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125856, 21.409506, 24.946739>,  <15.900007, 21.717375, 24.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125856, 21.409506, 24.946739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065044, -0.401436, -0.913575,
		0.822783, 0.496441, -0.276722,
		0.564622, -0.769672, 0.298004,
		16.295242, 21.178604, 25.036140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370275, 21.671968, 24.364174>,  <15.900007, 21.717375, 24.827538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370275, 21.671968, 24.364174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.378849, 21.312975, 24.540386>,  <16.383993, 21.097580, 24.646112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.378849, 21.312975, 24.540386>,  <16.370275, 21.671968, 24.364174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378849, 21.312975, 24.540386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000666, -0.440644, -0.897682,
		0.999770, 0.018948, -0.010043,
		0.021435, -0.897482, 0.440530,
		16.385279, 21.043730, 24.672544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910404, 21.261454, 24.027328>,  <16.370275, 21.671968, 24.364174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910404, 21.261454, 24.027328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674902, 20.983816, 24.193029>,  <16.533600, 20.817234, 24.292450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674902, 20.983816, 24.193029>,  <16.910404, 21.261454, 24.027328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674902, 20.983816, 24.193029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067736, -0.553052, -0.830388,
		0.805468, -0.460836, 0.372627,
		-0.588755, -0.694092, 0.414251,
		16.498276, 20.775589, 24.317305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191420, 20.608036, 23.969763>,  <16.910404, 21.261454, 24.027328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191420, 20.608036, 23.969763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807762, 20.506578, 24.019894>,  <16.577568, 20.445704, 24.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807762, 20.506578, 24.019894>,  <17.191420, 20.608036, 23.969763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807762, 20.506578, 24.019894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034419, -0.544305, -0.838181,
		0.280813, -0.799624, 0.530797,
		-0.959145, -0.253642, 0.125326,
		16.520020, 20.430487, 24.057491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100512, 19.880306, 23.765297>,  <17.191420, 20.608036, 23.969763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100512, 19.880306, 23.765297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721251, 20.005802, 23.745024>,  <16.493694, 20.081100, 23.732861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721251, 20.005802, 23.745024>,  <17.100512, 19.880306, 23.765297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721251, 20.005802, 23.745024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110168, -0.474057, -0.873575,
		-0.298102, -0.822701, 0.484043,
		-0.948155, 0.313741, -0.050682,
		16.436804, 20.099924, 23.729818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557949, 19.289520, 23.681715>,  <17.100512, 19.880306, 23.765297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557949, 19.289520, 23.681715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372660, 19.616552, 23.544901>,  <16.261486, 19.812771, 23.462812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372660, 19.616552, 23.544901>,  <16.557949, 19.289520, 23.681715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372660, 19.616552, 23.544901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310254, -0.511116, -0.801563,
		-0.830162, -0.265183, 0.490417,
		-0.463221, 0.817581, -0.342035,
		16.233694, 19.861826, 23.442291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891269, 19.071150, 23.513821>,  <16.557949, 19.289520, 23.681715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891269, 19.071150, 23.513821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968070, 19.406019, 23.308971>,  <16.014151, 19.606941, 23.186062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.968070, 19.406019, 23.308971>,  <15.891269, 19.071150, 23.513821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968070, 19.406019, 23.308971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189541, -0.480376, -0.856337,
		-0.962917, 0.261489, 0.066445,
		0.192004, 0.837176, -0.512125,
		16.025671, 19.657171, 23.155334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826665, 18.830784, 22.856747>,  <15.891269, 19.071150, 23.513821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826665, 18.830784, 22.856747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924008, 19.212835, 22.789213>,  <15.982414, 19.442066, 22.748693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924008, 19.212835, 22.789213>,  <15.826665, 18.830784, 22.856747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924008, 19.212835, 22.789213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144800, -0.207892, -0.967375,
		-0.959067, 0.210971, -0.188895,
		0.243358, 0.955129, -0.168834,
		15.997016, 19.499374, 22.738564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.480715, 18.985010, 22.245096>,  <15.826665, 18.830784, 22.856747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.480715, 18.985010, 22.245096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779228, 19.246094, 22.297297>,  <15.958336, 19.402744, 22.328617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779228, 19.246094, 22.297297>,  <15.480715, 18.985010, 22.245096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779228, 19.246094, 22.297297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305027, -0.161094, -0.938620,
		-0.591624, 0.740282, -0.319316,
		0.746284, 0.652710, 0.130499,
		16.003113, 19.441906, 22.336447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554241, 19.490845, 21.669067>,  <15.480715, 18.985010, 22.245096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554241, 19.490845, 21.669067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.918379, 19.514303, 21.832937>,  <16.136862, 19.528378, 21.931259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.918379, 19.514303, 21.832937>,  <15.554241, 19.490845, 21.669067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918379, 19.514303, 21.832937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408716, 0.028066, -0.912230,
		-0.064997, 0.997884, 0.001580,
		0.910344, 0.058646, 0.409675,
		16.191483, 19.531897, 21.955839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864370, 20.009043, 21.274755>,  <15.554241, 19.490845, 21.669067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864370, 20.009043, 21.274755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166193, 19.791405, 21.421511>,  <16.347286, 19.660822, 21.509563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166193, 19.791405, 21.421511>,  <15.864370, 20.009043, 21.274755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166193, 19.791405, 21.421511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456475, 0.033515, -0.889105,
		0.471460, 0.838355, 0.273654,
		0.754557, -0.544094, 0.366887,
		16.392561, 19.628176, 21.531576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501410, 20.314507, 21.056131>,  <15.864370, 20.009043, 21.274755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501410, 20.314507, 21.056131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.622486, 19.952513, 21.175716>,  <16.695131, 19.735315, 21.247467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.622486, 19.952513, 21.175716>,  <16.501410, 20.314507, 21.056131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622486, 19.952513, 21.175716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672852, -0.019255, -0.739527,
		0.675018, 0.425005, 0.603093,
		0.302690, -0.904986, 0.298963,
		16.713293, 19.681017, 21.265406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252361, 20.324291, 21.000343>,  <16.501410, 20.314507, 21.056131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252361, 20.324291, 21.000343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150925, 19.937370, 20.998835>,  <17.090063, 19.705217, 20.997929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150925, 19.937370, 20.998835>,  <17.252361, 20.324291, 21.000343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150925, 19.937370, 20.998835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607200, -0.156148, -0.779055,
		0.752994, -0.199853, 0.626944,
		-0.253593, -0.967304, -0.003773,
		17.074846, 19.647179, 20.997704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800877, 19.898474, 20.945864>,  <17.252361, 20.324291, 21.000343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800877, 19.898474, 20.945864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513218, 19.646416, 20.828737>,  <17.340622, 19.495180, 20.758461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513218, 19.646416, 20.828737>,  <17.800877, 19.898474, 20.945864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513218, 19.646416, 20.828737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532934, -0.229787, -0.814358,
		0.445880, -0.741695, 0.501078,
		-0.719147, -0.630147, -0.292818,
		17.297474, 19.457371, 20.740892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123960, 19.322166, 20.718700>,  <17.800877, 19.898474, 20.945864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.123960, 19.322166, 20.718700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765181, 19.259523, 20.553316>,  <17.549911, 19.221937, 20.454084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765181, 19.259523, 20.553316>,  <18.123960, 19.322166, 20.718700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765181, 19.259523, 20.553316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436718, -0.167968, -0.883778,
		0.068960, -0.973273, 0.219054,
		-0.896951, -0.156610, -0.413463,
		17.496096, 19.212540, 20.429277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092070, 18.617094, 20.398996>,  <18.123960, 19.322166, 20.718700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092070, 18.617094, 20.398996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831261, 18.854641, 20.210449>,  <17.674776, 18.997169, 20.097321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831261, 18.854641, 20.210449>,  <18.092070, 18.617094, 20.398996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.831261, 18.854641, 20.210449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289838, -0.379250, -0.878728,
		-0.700615, -0.709571, 0.075154,
		-0.652022, 0.593868, -0.471369,
		17.635654, 19.032801, 20.069038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927477, 18.174013, 19.968746>,  <18.092070, 18.617094, 20.398996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927477, 18.174013, 19.968746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.811769, 18.521772, 19.808508>,  <17.742346, 18.730427, 19.712366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.811769, 18.521772, 19.808508>,  <17.927477, 18.174013, 19.968746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811769, 18.521772, 19.808508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335590, -0.299821, -0.893021,
		-0.896496, -0.392756, -0.205032,
		-0.289266, 0.869397, -0.400594,
		17.724989, 18.782591, 19.688330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499168, 18.052822, 19.429583>,  <17.927477, 18.174013, 19.968746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499168, 18.052822, 19.429583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642464, 18.416756, 19.345804>,  <17.728441, 18.635117, 19.295536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642464, 18.416756, 19.345804>,  <17.499168, 18.052822, 19.429583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642464, 18.416756, 19.345804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239182, -0.306286, -0.921401,
		-0.902473, 0.279986, -0.327339,
		0.358239, 0.909833, -0.209447,
		17.749935, 18.689705, 19.282970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307861, 18.192392, 18.776861>,  <17.499168, 18.052822, 19.429583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307861, 18.192392, 18.776861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589806, 18.470966, 18.830753>,  <17.758972, 18.638111, 18.863089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589806, 18.470966, 18.830753>,  <17.307861, 18.192392, 18.776861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589806, 18.470966, 18.830753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275636, -0.093894, -0.956665,
		-0.653602, 0.711453, -0.258144,
		0.704861, 0.696433, 0.134733,
		17.801264, 18.679895, 18.871174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249990, 18.362890, 18.048214>,  <17.307861, 18.192392, 18.776861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249990, 18.362890, 18.048214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565926, 18.567080, 18.184196>,  <17.755487, 18.689594, 18.265785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565926, 18.567080, 18.184196>,  <17.249990, 18.362890, 18.048214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565926, 18.567080, 18.184196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347258, 0.084669, -0.933940,
		-0.505536, 0.855714, -0.110392,
		0.789839, 0.510475, 0.339957,
		17.802877, 18.720222, 18.286184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389759, 18.867018, 17.478575>,  <17.249990, 18.362890, 18.048214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.389759, 18.867018, 17.478575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.726543, 18.835211, 17.692032>,  <17.928614, 18.816128, 17.820107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.726543, 18.835211, 17.692032>,  <17.389759, 18.867018, 17.478575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.726543, 18.835211, 17.692032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538752, 0.070578, -0.839503,
		0.029090, 0.994332, 0.102264,
		0.841962, -0.079516, 0.533645,
		17.979132, 18.811356, 17.852125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946161, 19.459612, 17.317371>,  <17.389759, 18.867018, 17.478575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946161, 19.459612, 17.317371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137390, 19.141001, 17.465418>,  <18.252129, 18.949833, 17.554247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137390, 19.141001, 17.465418>,  <17.946161, 19.459612, 17.317371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137390, 19.141001, 17.465418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647633, 0.035031, -0.761146,
		0.593309, 0.603585, 0.532606,
		0.478074, -0.796529, 0.370117,
		18.280813, 18.902042, 17.576452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603157, 19.595268, 17.134502>,  <17.946161, 19.459612, 17.317371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603157, 19.595268, 17.134502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619234, 19.203913, 17.215631>,  <18.628880, 18.969099, 17.264309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.619234, 19.203913, 17.215631>,  <18.603157, 19.595268, 17.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619234, 19.203913, 17.215631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531186, -0.151003, -0.833690,
		0.846301, 0.141245, 0.513638,
		0.040193, -0.978391, 0.202821,
		18.631292, 18.910395, 17.276478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351219, 19.297527, 17.052727>,  <18.603157, 19.595268, 17.134502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.351219, 19.297527, 17.052727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077665, 19.010954, 16.997553>,  <18.913532, 18.839010, 16.964449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077665, 19.010954, 16.997553>,  <19.351219, 19.297527, 17.052727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077665, 19.010954, 16.997553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378638, -0.186914, -0.906475,
		0.623646, -0.672152, 0.399096,
		-0.683886, -0.716432, -0.137934,
		18.872499, 18.796024, 16.956173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744295, 18.820303, 16.793289>,  <19.351219, 19.297527, 17.052727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744295, 18.820303, 16.793289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.380381, 18.699183, 16.679729>,  <19.162031, 18.626511, 16.611593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.380381, 18.699183, 16.679729>,  <19.744295, 18.820303, 16.793289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.380381, 18.699183, 16.679729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334222, -0.128820, -0.933649,
		0.246138, -0.944308, 0.218401,
		-0.909787, -0.302801, -0.283901,
		19.107445, 18.608343, 16.594559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.869968, 18.194096, 16.418003>,  <19.744295, 18.820303, 16.793289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.869968, 18.194096, 16.418003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.508425, 18.326122, 16.309122>,  <19.291498, 18.405338, 16.243793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.508425, 18.326122, 16.309122>,  <19.869968, 18.194096, 16.418003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.508425, 18.326122, 16.309122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261634, -0.076969, -0.962094,
		-0.338508, -0.940814, -0.016788,
		-0.903859, 0.330068, -0.272203,
		19.237267, 18.425142, 16.227461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521738, 17.822474, 15.766484>,  <19.869968, 18.194096, 16.418003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521738, 17.822474, 15.766484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376753, 18.194443, 15.791339>,  <19.289762, 18.417625, 15.806252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376753, 18.194443, 15.791339>,  <19.521738, 17.822474, 15.766484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376753, 18.194443, 15.791339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259565, 0.164755, -0.951568,
		-0.895124, -0.328779, -0.301093,
		-0.362463, 0.929925, 0.062136,
		19.268015, 18.473421, 15.809979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.370682, 17.864492, 15.083629>,  <19.521738, 17.822474, 15.766484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.370682, 17.864492, 15.083629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440474, 18.228144, 15.234913>,  <19.482347, 18.446335, 15.325684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440474, 18.228144, 15.234913>,  <19.370682, 17.864492, 15.083629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440474, 18.228144, 15.234913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374239, 0.294053, -0.879476,
		-0.910770, 0.294990, -0.288926,
		0.174477, 0.909128, 0.378211,
		19.492817, 18.500881, 15.348376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995731, 17.299688, 15.390864>,  <19.370682, 17.864492, 15.083629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995731, 17.299688, 15.390864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.002327, 17.679813, 15.515206>,  <19.006285, 17.907888, 15.589811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.002327, 17.679813, 15.515206>,  <18.995731, 17.299688, 15.390864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002327, 17.679813, 15.515206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908215, 0.144262, -0.392852,
		-0.418178, -0.275845, 0.865469,
		0.016488, 0.950315, 0.310854,
		19.007273, 17.964909, 15.608462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294493, 17.472385, 15.295681>,  <18.995731, 17.299688, 15.390864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294493, 17.472385, 15.295681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458662, 17.825207, 15.388227>,  <18.557163, 18.036900, 15.443753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458662, 17.825207, 15.388227>,  <18.294493, 17.472385, 15.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458662, 17.825207, 15.388227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768062, 0.471145, -0.433710,
		-0.491562, 0.000304, 0.870843,
		0.410425, 0.882056, 0.231363,
		18.581789, 18.089823, 15.457636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257910, 16.845980, 15.667898>,  <18.294493, 17.472385, 15.295681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257910, 16.845980, 15.667898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.481232, 16.545649, 15.809069>,  <18.615225, 16.365450, 15.893771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.481232, 16.545649, 15.809069>,  <18.257910, 16.845980, 15.667898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481232, 16.545649, 15.809069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803243, 0.382746, -0.456406,
		0.207600, 0.538300, 0.816784,
		0.558304, -0.750826, 0.352927,
		18.648724, 16.320400, 15.914947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.720501, 17.149748, 16.050211>,  <18.257910, 16.845980, 15.667898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.720501, 17.149748, 16.050211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841814, 16.804024, 15.889718>,  <18.914602, 16.596588, 15.793423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841814, 16.804024, 15.889718>,  <18.720501, 17.149748, 16.050211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.841814, 16.804024, 15.889718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882989, 0.413210, -0.222685,
		0.358262, -0.286747, 0.888496,
		0.303281, -0.864311, -0.401231,
		18.932798, 16.544731, 15.769348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216669, 16.802019, 16.378017>,  <18.720501, 17.149748, 16.050211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216669, 16.802019, 16.378017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248400, 16.737385, 15.984551>,  <19.267439, 16.698605, 15.748472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248400, 16.737385, 15.984551>,  <19.216669, 16.802019, 16.378017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248400, 16.737385, 15.984551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879314, 0.476187, -0.007311,
		0.469590, -0.864370, 0.179861,
		0.079328, -0.161587, -0.983665,
		19.272198, 16.688910, 15.689452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.852480, 16.451864, 16.146513>,  <19.216669, 16.802019, 16.378017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.852480, 16.451864, 16.146513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.703917, 16.701218, 15.871284>,  <19.614779, 16.850830, 15.706145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.703917, 16.701218, 15.871284>,  <19.852480, 16.451864, 16.146513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.703917, 16.701218, 15.871284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875609, 0.481658, -0.036258,
		0.308814, -0.615951, -0.724733,
		-0.371407, 0.623386, -0.688075,
		19.592495, 16.888233, 15.664861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476673, 16.442352, 16.711395>,  <19.852480, 16.451864, 16.146513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476673, 16.442352, 16.711395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551260, 16.112377, 16.497963>,  <20.596012, 15.914392, 16.369904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551260, 16.112377, 16.497963>,  <20.476673, 16.442352, 16.711395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551260, 16.112377, 16.497963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278953, 0.476299, -0.833861,
		0.942027, 0.304333, -0.141304,
		0.186468, -0.824936, -0.533581,
		20.607201, 15.864896, 16.337889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694319, 16.733250, 16.115511>,  <20.476673, 16.442352, 16.711395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694319, 16.733250, 16.115511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.609144, 16.355707, 16.014484>,  <20.558039, 16.129181, 15.953869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.609144, 16.355707, 16.014484>,  <20.694319, 16.733250, 16.115511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609144, 16.355707, 16.014484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163514, 0.289273, -0.943178,
		0.963287, -0.159538, -0.215931,
		-0.212936, -0.943858, -0.252567,
		20.545263, 16.072550, 15.938714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993412, 16.664083, 15.293366>,  <20.694319, 16.733250, 16.115511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993412, 16.664083, 15.293366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.754047, 16.344728, 15.320142>,  <20.610430, 16.153114, 15.336207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.754047, 16.344728, 15.320142>,  <20.993412, 16.664083, 15.293366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754047, 16.344728, 15.320142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405591, 0.229825, -0.884690,
		0.690942, -0.556557, -0.461349,
		-0.598410, -0.798389, 0.066939,
		20.574524, 16.105211, 15.340223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251890, 16.259251, 14.769985>,  <20.993412, 16.664083, 15.293366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251890, 16.259251, 14.769985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.868774, 16.169529, 14.841906>,  <20.638905, 16.115696, 14.885057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.868774, 16.169529, 14.841906>,  <21.251890, 16.259251, 14.769985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.868774, 16.169529, 14.841906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224168, 0.191200, -0.955610,
		0.179978, -0.955577, -0.233413,
		-0.957787, -0.224312, 0.179798,
		20.581438, 16.102238, 14.895845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.017054, 15.968212, 14.078424>,  <21.251890, 16.259251, 14.769985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.017054, 15.968212, 14.078424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665136, 16.034546, 14.256620>,  <20.453985, 16.074347, 14.363539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665136, 16.034546, 14.256620>,  <21.017054, 15.968212, 14.078424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665136, 16.034546, 14.256620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418029, 0.176259, -0.891171,
		-0.226310, -0.970274, -0.085747,
		-0.879793, 0.165836, 0.445492,
		20.401199, 16.084297, 14.390268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566956, 15.542676, 13.718162>,  <21.017054, 15.968212, 14.078424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566956, 15.542676, 13.718162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357922, 15.828831, 13.903688>,  <20.232502, 16.000525, 14.015005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357922, 15.828831, 13.903688>,  <20.566956, 15.542676, 13.718162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357922, 15.828831, 13.903688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517422, 0.166264, -0.839423,
		-0.677629, -0.678658, 0.283271,
		-0.522583, 0.715388, 0.463818,
		20.201147, 16.043447, 14.042834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797657, 15.467724, 13.570017>,  <20.566956, 15.542676, 13.718162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797657, 15.467724, 13.570017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809408, 15.846188, 13.698964>,  <19.816458, 16.073265, 13.776333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809408, 15.846188, 13.698964>,  <19.797657, 15.467724, 13.570017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809408, 15.846188, 13.698964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663177, 0.259752, -0.701944,
		-0.747886, -0.193167, 0.635100,
		0.029376, 0.946158, 0.322369,
		19.818220, 16.130035, 13.795674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.079226, 15.688354, 13.669952>,  <19.797657, 15.467724, 13.570017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.079226, 15.688354, 13.669952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300467, 16.014719, 13.602580>,  <19.433210, 16.210537, 13.562157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300467, 16.014719, 13.602580>,  <19.079226, 15.688354, 13.669952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300467, 16.014719, 13.602580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596522, 0.246719, -0.763735,
		-0.581585, 0.522895, 0.623170,
		0.553101, 0.815911, -0.168430,
		19.466396, 16.259493, 13.552051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.534658, 16.310755, 13.630660>,  <19.079226, 15.688354, 13.669952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.534658, 16.310755, 13.630660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.880297, 16.431133, 13.469279>,  <19.087679, 16.503361, 13.372451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.880297, 16.431133, 13.469279>,  <18.534658, 16.310755, 13.630660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880297, 16.431133, 13.469279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494835, 0.361276, -0.790327,
		-0.092089, 0.882559, 0.461096,
		0.864093, 0.300947, -0.403452,
		19.139524, 16.521418, 13.348244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428772, 16.978746, 13.286565>,  <18.534658, 16.310755, 13.630660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428772, 16.978746, 13.286565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766006, 16.823862, 13.137291>,  <18.968348, 16.730930, 13.047727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.766006, 16.823862, 13.137291>,  <18.428772, 16.978746, 13.286565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766006, 16.823862, 13.137291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284067, 0.268572, -0.920421,
		0.456626, 0.882006, 0.116436,
		0.843089, -0.387213, -0.373186,
		19.018932, 16.707699, 13.025335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.531555, 17.368340, 12.679259>,  <18.428772, 16.978746, 13.286565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.531555, 17.368340, 12.679259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767511, 17.048922, 12.631335>,  <18.909084, 16.857271, 12.602581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767511, 17.048922, 12.631335>,  <18.531555, 17.368340, 12.679259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767511, 17.048922, 12.631335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197205, 0.001412, -0.980361,
		0.783033, 0.601932, -0.156644,
		0.589890, -0.798546, -0.119810,
		18.944479, 16.809359, 12.595392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863638, 17.444332, 12.013105>,  <18.531555, 17.368340, 12.679259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.863638, 17.444332, 12.013105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925331, 17.055277, 12.082603>,  <18.962347, 16.821844, 12.124302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925331, 17.055277, 12.082603>,  <18.863638, 17.444332, 12.013105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925331, 17.055277, 12.082603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242064, -0.207687, -0.947771,
		0.957923, 0.104121, -0.267473,
		0.154234, -0.972638, 0.173744,
		18.971601, 16.763485, 12.134727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334791, 17.260792, 11.523984>,  <18.863638, 17.444332, 12.013105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334791, 17.260792, 11.523984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.161467, 16.914446, 11.624001>,  <19.057472, 16.706638, 11.684011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.161467, 16.914446, 11.624001>,  <19.334791, 17.260792, 11.523984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161467, 16.914446, 11.624001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199589, -0.178358, -0.963510,
		0.878866, -0.467406, -0.095532,
		-0.433312, -0.865863, 0.250042,
		19.031473, 16.654686, 11.699014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.631262, 16.708260, 11.135284>,  <19.334791, 17.260792, 11.523984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.631262, 16.708260, 11.135284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262606, 16.593515, 11.239814>,  <19.041412, 16.524670, 11.302531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262606, 16.593515, 11.239814>,  <19.631262, 16.708260, 11.135284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262606, 16.593515, 11.239814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258755, -0.047543, -0.964772,
		0.289177, -0.956793, -0.030409,
		-0.921641, -0.286858, 0.261323,
		18.986113, 16.507458, 11.318211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462221, 16.184055, 10.714775>,  <19.631262, 16.708260, 11.135284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462221, 16.184055, 10.714775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.092909, 16.294127, 10.821980>,  <18.871321, 16.360168, 10.886304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.092909, 16.294127, 10.821980>,  <19.462221, 16.184055, 10.714775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.092909, 16.294127, 10.821980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293400, -0.054857, -0.954414,
		-0.247931, -0.959827, 0.131386,
		-0.923280, 0.275178, 0.268013,
		18.815926, 16.376680, 10.902385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059752, 15.631149, 10.444543>,  <19.462221, 16.184055, 10.714775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059752, 15.631149, 10.444543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803061, 15.926101, 10.528882>,  <18.649046, 16.103071, 10.579486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803061, 15.926101, 10.528882>,  <19.059752, 15.631149, 10.444543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803061, 15.926101, 10.528882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476895, -0.168355, -0.862686,
		-0.600629, -0.654163, 0.459691,
		-0.641729, 0.737379, 0.210849,
		18.610542, 16.147314, 10.592136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.491442, 15.332269, 10.235181>,  <19.059752, 15.631149, 10.444543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.491442, 15.332269, 10.235181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396383, 15.719569, 10.266204>,  <18.339348, 15.951949, 10.284818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396383, 15.719569, 10.266204>,  <18.491442, 15.332269, 10.235181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396383, 15.719569, 10.266204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552095, -0.068949, -0.830926,
		-0.799197, -0.240287, 0.550951,
		-0.237648, 0.968250, 0.077557,
		18.325089, 16.010044, 10.289471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718586, 15.418024, 10.104246>,  <18.491442, 15.332269, 10.235181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718586, 15.418024, 10.104246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.884386, 15.775260, 10.034301>,  <17.983866, 15.989602, 9.992333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.884386, 15.775260, 10.034301>,  <17.718586, 15.418024, 10.104246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884386, 15.775260, 10.034301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452406, 0.035497, -0.891106,
		-0.789631, 0.448474, 0.418753,
		0.414502, 0.893091, -0.174863,
		18.008738, 16.043188, 9.981842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.195108, 15.778308, 9.699317>,  <17.718586, 15.418024, 10.104246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.195108, 15.778308, 9.699317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.528866, 15.994368, 9.655457>,  <17.729120, 16.124002, 9.629140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.528866, 15.994368, 9.655457>,  <17.195108, 15.778308, 9.699317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528866, 15.994368, 9.655457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257971, 0.206919, -0.943735,
		-0.487068, 0.815735, 0.311994,
		0.834395, 0.540149, -0.109652,
		17.779184, 16.156412, 9.622561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968050, 16.320623, 9.351727>,  <17.195108, 15.778308, 9.699317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968050, 16.320623, 9.351727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360447, 16.281366, 9.284770>,  <17.595886, 16.257812, 9.244596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360447, 16.281366, 9.284770>,  <16.968050, 16.320623, 9.351727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360447, 16.281366, 9.284770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127430, 0.324738, -0.937180,
		0.146336, 0.940698, 0.306060,
		0.980993, -0.098142, -0.167394,
		17.654745, 16.251925, 9.234551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128338, 16.863508, 9.113599>,  <16.968050, 16.320623, 9.351727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128338, 16.863508, 9.113599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400419, 16.605392, 8.974500>,  <17.563667, 16.450523, 8.891040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400419, 16.605392, 8.974500>,  <17.128338, 16.863508, 9.113599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400419, 16.605392, 8.974500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166043, 0.326435, -0.930521,
		0.713971, 0.690684, 0.114896,
		0.680202, -0.645288, -0.347748,
		17.604481, 16.411806, 8.870175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727156, 16.961485, 8.747104>,  <17.128338, 16.863508, 9.113599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727156, 16.961485, 8.747104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.829332, 17.328421, 8.624961>,  <17.890638, 17.548582, 8.551676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.829332, 17.328421, 8.624961>,  <17.727156, 16.961485, 8.747104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.829332, 17.328421, 8.624961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948499, -0.176569, 0.263006,
		0.187349, -0.356812, -0.915197,
		0.255440, 0.917338, -0.305356,
		17.905964, 17.603622, 8.533354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277786, 16.968794, 8.237283>,  <17.727156, 16.961485, 8.747104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277786, 16.968794, 8.237283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.273977, 17.332750, 8.403178>,  <18.271692, 17.551125, 8.502715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.273977, 17.332750, 8.403178>,  <18.277786, 16.968794, 8.237283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273977, 17.332750, 8.403178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969559, -0.093085, 0.226476,
		0.244674, 0.404270, -0.881306,
		-0.009521, 0.909891, 0.414739,
		18.271120, 17.605717, 8.527600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.827242, 17.489578, 7.954854>,  <18.277786, 16.968794, 8.237283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.827242, 17.489578, 7.954854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.734520, 17.551392, 8.339018>,  <18.678886, 17.588480, 8.569516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.734520, 17.551392, 8.339018>,  <18.827242, 17.489578, 7.954854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734520, 17.551392, 8.339018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965393, -0.084749, 0.246644,
		0.119508, 0.984346, -0.129539,
		-0.231805, 0.154532, 0.960410,
		18.664978, 17.597752, 8.627141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190348, 18.066486, 8.252512>,  <18.827242, 17.489578, 7.954854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190348, 18.066486, 8.252512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.086996, 17.867088, 8.583508>,  <19.024984, 17.747450, 8.782106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.086996, 17.867088, 8.583508>,  <19.190348, 18.066486, 8.252512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.086996, 17.867088, 8.583508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963469, -0.070480, 0.258381,
		-0.070480, 0.864023, 0.498495,
		-0.258381, -0.498495, 0.827491,
		19.009481, 17.717541, 8.831756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.317553, 18.435251, 8.838465>,  <19.190348, 18.066486, 8.252512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.317553, 18.435251, 8.838465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343679, 18.052101, 8.950326>,  <19.359356, 17.822210, 9.017443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343679, 18.052101, 8.950326>,  <19.317553, 18.435251, 8.838465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343679, 18.052101, 8.950326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924791, 0.163379, 0.343610,
		-0.374826, 0.236176, 0.896508,
		0.065318, -0.957877, 0.279652,
		19.363276, 17.764738, 9.034222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836966, 18.468998, 9.148367>,  <19.317553, 18.435251, 8.838465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836966, 18.468998, 9.148367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.820568, 18.069340, 9.150418>,  <19.810730, 17.829544, 9.151649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.820568, 18.069340, 9.150418>,  <19.836966, 18.468998, 9.148367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820568, 18.069340, 9.150418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997316, -0.040606, 0.060928,
		-0.060668, 0.007611, 0.998129,
		-0.040994, -0.999146, 0.005127,
		19.808270, 17.769596, 9.151957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263622, 18.078384, 9.675455>,  <19.836966, 18.468998, 9.148367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263622, 18.078384, 9.675455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243839, 17.831053, 9.361711>,  <20.231970, 17.682653, 9.173464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243839, 17.831053, 9.361711>,  <20.263622, 18.078384, 9.675455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243839, 17.831053, 9.361711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954866, -0.259567, 0.144413,
		-0.292889, -0.741817, 0.603261,
		-0.049458, -0.618331, -0.784360,
		20.229002, 17.645554, 9.126403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.661243, 17.436150, 9.874850>,  <20.263622, 18.078384, 9.675455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.661243, 17.436150, 9.874850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.666348, 17.512245, 9.482188>,  <20.669411, 17.557903, 9.246592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.666348, 17.512245, 9.482188>,  <20.661243, 17.436150, 9.874850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666348, 17.512245, 9.482188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995443, 0.090361, 0.030453,
		0.094496, -0.977570, -0.188220,
		0.012762, 0.190240, -0.981655,
		20.670176, 17.569317, 9.187692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872478, 16.848930, 9.433369>,  <20.661243, 17.436150, 9.874850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872478, 16.848930, 9.433369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.970787, 17.222256, 9.328659>,  <21.029772, 17.446251, 9.265833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.970787, 17.222256, 9.328659>,  <20.872478, 16.848930, 9.433369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.970787, 17.222256, 9.328659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965224, -0.210811, 0.154601,
		0.089106, -0.290667, -0.952666,
		0.245770, 0.933312, -0.261774,
		21.044518, 17.502249, 9.250127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.517307, 16.942345, 8.947961>,  <20.872478, 16.848930, 9.433369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.517307, 16.942345, 8.947961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476946, 17.274731, 9.166800>,  <21.452728, 17.474163, 9.298103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476946, 17.274731, 9.166800>,  <21.517307, 16.942345, 8.947961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476946, 17.274731, 9.166800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930282, -0.116138, 0.347975,
		0.352694, 0.544067, -0.761313,
		-0.100905, 0.830965, 0.547097,
		21.446674, 17.524019, 9.330929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230188, 17.176250, 9.082079>,  <21.517307, 16.942345, 8.947961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230188, 17.176250, 9.082079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035486, 17.380215, 9.365786>,  <21.918665, 17.502594, 9.536010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035486, 17.380215, 9.365786>,  <22.230188, 17.176250, 9.082079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035486, 17.380215, 9.365786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855967, 0.116385, 0.503761,
		0.174326, 0.852317, -0.493119,
		-0.486755, 0.509913, 0.709266,
		21.889460, 17.533188, 9.578566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644228, 17.796782, 9.346941>,  <22.230188, 17.176250, 9.082079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644228, 17.796782, 9.346941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.382109, 17.689034, 9.629224>,  <22.224836, 17.624384, 9.798594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.382109, 17.689034, 9.629224>,  <22.644228, 17.796782, 9.346941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.382109, 17.689034, 9.629224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736928, -0.022792, 0.675587,
		-0.165899, 0.962767, 0.213442,
		-0.655298, -0.269371, 0.705708,
		22.185520, 17.608223, 9.840937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970484, 18.282711, 9.885188>,  <22.644228, 17.796782, 9.346941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970484, 18.282711, 9.885188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.733774, 18.019299, 10.071152>,  <22.591749, 17.861252, 10.182730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.733774, 18.019299, 10.071152>,  <22.970484, 18.282711, 9.885188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.733774, 18.019299, 10.071152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673687, -0.087316, 0.733841,
		-0.442663, 0.747471, 0.495315,
		-0.591773, -0.658531, 0.464910,
		22.556242, 17.821739, 10.210625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.786871, 18.491842, 10.581995>,  <22.970484, 18.282711, 9.885188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.786871, 18.491842, 10.581995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.741940, 18.094656, 10.596982>,  <22.714981, 17.856344, 10.605974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.741940, 18.094656, 10.596982>,  <22.786871, 18.491842, 10.581995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.741940, 18.094656, 10.596982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617449, -0.040206, 0.785583,
		-0.778550, 0.111378, 0.617621,
		-0.112328, -0.992965, 0.037468,
		22.708241, 17.796766, 10.608222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.398735, 18.363167, 11.157996>,  <22.786871, 18.491842, 10.581995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.398735, 18.363167, 11.157996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.576633, 18.011372, 11.090223>,  <22.683372, 17.800295, 11.049560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.576633, 18.011372, 11.090223>,  <22.398735, 18.363167, 11.157996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.576633, 18.011372, 11.090223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514755, 0.096181, 0.851925,
		-0.732960, -0.466105, 0.495496,
		0.444744, -0.879486, -0.169433,
		22.710056, 17.747526, 11.039393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454130, 18.019245, 11.795965>,  <22.398735, 18.363167, 11.157996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454130, 18.019245, 11.795965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727602, 17.833616, 11.570678>,  <22.891685, 17.722239, 11.435505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.727602, 17.833616, 11.570678>,  <22.454130, 18.019245, 11.795965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.727602, 17.833616, 11.570678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640144, 0.010778, 0.768180,
		-0.350422, -0.885731, 0.304443,
		0.683682, -0.464074, -0.563218,
		22.932707, 17.694393, 11.401712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699423, 17.424572, 12.186093>,  <22.454130, 18.019245, 11.795965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699423, 17.424572, 12.186093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999575, 17.481379, 11.927865>,  <23.179667, 17.515463, 11.772928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999575, 17.481379, 11.927865>,  <22.699423, 17.424572, 12.186093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999575, 17.481379, 11.927865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659258, -0.231798, 0.715297,
		-0.048056, -0.962341, -0.267564,
		0.750380, 0.142019, -0.645570,
		23.224689, 17.523985, 11.734194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.159927, 16.837973, 12.184697>,  <22.699423, 17.424572, 12.186093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.159927, 16.837973, 12.184697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389324, 17.129744, 12.035544>,  <23.526962, 17.304806, 11.946053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389324, 17.129744, 12.035544>,  <23.159927, 16.837973, 12.184697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389324, 17.129744, 12.035544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667240, -0.151832, 0.729204,
		0.475287, -0.666994, -0.573778,
		0.573492, 0.729429, -0.372881,
		23.561373, 17.348572, 11.923680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790796, 16.649351, 12.158037>,  <23.159927, 16.837973, 12.184697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790796, 16.649351, 12.158037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.883066, 17.035448, 12.108884>,  <23.938429, 17.267105, 12.079392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.883066, 17.035448, 12.108884>,  <23.790796, 16.649351, 12.158037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.883066, 17.035448, 12.108884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766648, -0.102524, 0.633829,
		0.599199, -0.240416, -0.763649,
		0.230675, 0.965240, -0.122882,
		23.952269, 17.325020, 12.072020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475500, 16.632772, 12.162544>,  <23.790796, 16.649351, 12.158037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475500, 16.632772, 12.162544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353739, 17.001280, 12.259378>,  <24.280682, 17.222383, 12.317479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353739, 17.001280, 12.259378>,  <24.475500, 16.632772, 12.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353739, 17.001280, 12.259378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674053, 0.028759, 0.738123,
		0.673046, 0.387866, -0.629738,
		-0.304403, 0.921267, 0.242086,
		24.262419, 17.277660, 12.332005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027477, 17.027905, 12.438833>,  <24.475500, 16.632772, 12.162544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027477, 17.027905, 12.438833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720005, 17.244173, 12.575539>,  <24.535521, 17.373934, 12.657562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720005, 17.244173, 12.575539>,  <25.027477, 17.027905, 12.438833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720005, 17.244173, 12.575539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471076, 0.117092, 0.874287,
		0.432684, 0.833045, -0.344704,
		-0.768682, 0.540671, 0.341763,
		24.489401, 17.406374, 12.678067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314457, 17.580233, 12.836764>,  <25.027477, 17.027905, 12.438833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314457, 17.580233, 12.836764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930782, 17.607176, 12.946616>,  <24.700577, 17.623343, 13.012527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930782, 17.607176, 12.946616>,  <25.314457, 17.580233, 12.836764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930782, 17.607176, 12.946616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282644, 0.199552, 0.938238,
		0.008396, 0.977569, -0.210446,
		-0.959188, 0.067359, 0.274629,
		24.643026, 17.627384, 13.029005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331636, 18.093206, 13.291792>,  <25.314457, 17.580233, 12.836764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331636, 18.093206, 13.291792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002457, 17.883438, 13.379186>,  <24.804949, 17.757576, 13.431623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002457, 17.883438, 13.379186>,  <25.331636, 18.093206, 13.291792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002457, 17.883438, 13.379186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268265, -0.019709, 0.963143,
		-0.500788, 0.851230, 0.156904,
		-0.822949, -0.524422, 0.218486,
		24.755571, 17.726110, 13.444732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842484, 18.475145, 13.721429>,  <25.331636, 18.093206, 13.291792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842484, 18.475145, 13.721429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798204, 18.082952, 13.786424>,  <24.771637, 17.847637, 13.825420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798204, 18.082952, 13.786424>,  <24.842484, 18.475145, 13.721429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798204, 18.082952, 13.786424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045358, 0.158336, 0.986343,
		-0.992818, 0.116558, 0.026945,
		-0.110699, -0.980481, 0.162486,
		24.764994, 17.788809, 13.835170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.270727, 18.256596, 14.275970>,  <24.842484, 18.475145, 13.721429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.270727, 18.256596, 14.275970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583124, 18.007919, 14.252145>,  <24.770563, 17.858713, 14.237849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583124, 18.007919, 14.252145>,  <24.270727, 18.256596, 14.275970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583124, 18.007919, 14.252145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209166, 0.170505, 0.962901,
		-0.588472, -0.764478, 0.263200,
		0.780994, -0.621692, -0.059565,
		24.817423, 17.821411, 14.234275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252264, 17.699690, 14.806570>,  <24.270727, 18.256596, 14.275970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252264, 17.699690, 14.806570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614985, 17.808523, 14.677774>,  <24.832617, 17.873823, 14.600497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614985, 17.808523, 14.677774>,  <24.252264, 17.699690, 14.806570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614985, 17.808523, 14.677774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261622, 0.235690, 0.935951,
		0.330549, -0.932963, 0.142541,
		0.906803, 0.272086, -0.321990,
		24.887026, 17.890148, 14.581178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786877, 17.327301, 15.146585>,  <24.252264, 17.699690, 14.806570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786877, 17.327301, 15.146585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957380, 17.675459, 15.048020>,  <25.059683, 17.884354, 14.988881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957380, 17.675459, 15.048020>,  <24.786877, 17.327301, 15.146585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957380, 17.675459, 15.048020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587902, -0.059521, 0.806739,
		0.687515, -0.488744, -0.537078,
		0.426257, 0.870394, -0.246412,
		25.085257, 17.936577, 14.974096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174181, 16.795059, 15.146462>,  <24.786877, 17.327301, 15.146585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174181, 16.795059, 15.146462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340731, 16.464554, 15.298212>,  <24.440660, 16.266251, 15.389262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340731, 16.464554, 15.298212>,  <24.174181, 16.795059, 15.146462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340731, 16.464554, 15.298212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896257, 0.302870, -0.324025,
		0.152829, 0.474932, 0.866650,
		0.416372, -0.826262, 0.379374,
		24.465643, 16.216675, 15.412024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673746, 16.252186, 14.961177>,  <24.174181, 16.795059, 15.146462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673746, 16.252186, 14.961177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832628, 16.493376, 15.237914>,  <24.927958, 16.638090, 15.403956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832628, 16.493376, 15.237914>,  <24.673746, 16.252186, 14.961177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832628, 16.493376, 15.237914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045126, -0.765785, 0.641512,
		0.916620, -0.223592, -0.331383,
		0.397205, 0.602976, 0.691844,
		24.951790, 16.674269, 15.445467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406881, 16.167406, 15.227466>,  <24.673746, 16.252186, 14.961177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406881, 16.167406, 15.227466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161253, 16.299246, 15.514319>,  <25.013876, 16.378349, 15.686432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161253, 16.299246, 15.514319>,  <25.406881, 16.167406, 15.227466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161253, 16.299246, 15.514319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075794, -0.879800, 0.469263,
		0.785605, 0.342514, 0.515276,
		-0.614069, 0.329601, 0.717135,
		24.977032, 16.398127, 15.729460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029476, 16.461725, 14.888971>,  <25.406881, 16.167406, 15.227466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029476, 16.461725, 14.888971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354300, 16.368448, 15.102955>,  <26.549194, 16.312483, 15.231345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354300, 16.368448, 15.102955>,  <26.029476, 16.461725, 14.888971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354300, 16.368448, 15.102955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228157, -0.970595, -0.076749,
		0.537125, -0.059730, -0.841385,
		0.812060, -0.233192, 0.534958,
		26.597918, 16.298491, 15.263442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757010, 16.179741, 14.589878>,  <26.029476, 16.461725, 14.888971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757010, 16.179741, 14.589878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653624, 16.034681, 14.948025>,  <26.591593, 15.947645, 15.162913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653624, 16.034681, 14.948025>,  <26.757010, 16.179741, 14.589878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653624, 16.034681, 14.948025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000496, -0.926911, -0.375281,
		0.966021, -0.096553, 0.239752,
		-0.258463, -0.362649, 0.895367,
		26.576084, 15.925887, 15.216635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175205, 15.504951, 14.830624>,  <26.757010, 16.179741, 14.589878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175205, 15.504951, 14.830624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795961, 15.531175, 14.955069>,  <26.568415, 15.546908, 15.029736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795961, 15.531175, 14.955069>,  <27.175205, 15.504951, 14.830624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795961, 15.531175, 14.955069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139455, -0.965110, -0.221619,
		0.285730, -0.253505, 0.924172,
		-0.948109, 0.065557, 0.311113,
		26.511528, 15.550842, 15.048403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011242, 14.910570, 15.220856>,  <27.175205, 15.504951, 14.830624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011242, 14.910570, 15.220856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659445, 15.063340, 15.107276>,  <26.448366, 15.155003, 15.039128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659445, 15.063340, 15.107276>,  <27.011242, 14.910570, 15.220856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659445, 15.063340, 15.107276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361712, -0.924178, -0.122714,
		-0.309287, -0.005218, 0.950955,
		-0.879492, 0.381925, -0.283949,
		26.395597, 15.177917, 15.022091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.997534, 21.112249, 24.109720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.924612, 20.754585, 24.273300>,  <12.880858, 20.539986, 24.371449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.924612, 20.754585, 24.273300>,  <12.997534, 21.112249, 24.109720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924612, 20.754585, 24.273300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028477, -0.410943, -0.911216,
		0.982830, -0.177765, 0.049454,
		-0.182305, -0.894162, 0.408949,
		12.869921, 20.486336, 24.395985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559038, 20.659975, 23.795582>,  <12.997534, 21.112249, 24.109720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559038, 20.659975, 23.795582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.228668, 20.468596, 23.914867>,  <13.030446, 20.353767, 23.986439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.228668, 20.468596, 23.914867>,  <13.559038, 20.659975, 23.795582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228668, 20.468596, 23.914867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121038, -0.366140, -0.922655,
		0.550633, -0.798139, 0.244493,
		-0.825925, -0.478452, 0.298214,
		12.980890, 20.325060, 24.004332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.651129, 20.167854, 23.319031>,  <13.559038, 20.659975, 23.795582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.651129, 20.167854, 23.319031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.285397, 20.118011, 23.473160>,  <13.065957, 20.088106, 23.565638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.285397, 20.118011, 23.473160>,  <13.651129, 20.167854, 23.319031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285397, 20.118011, 23.473160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344691, -0.260004, -0.901990,
		0.212580, -0.957534, 0.194778,
		-0.914329, -0.124607, 0.385325,
		13.011098, 20.080629, 23.588757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559383, 19.546471, 23.247356>,  <13.651129, 20.167854, 23.319031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559383, 19.546471, 23.247356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.182195, 19.677212, 23.272564>,  <12.955882, 19.755657, 23.287689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.182195, 19.677212, 23.272564>,  <13.559383, 19.546471, 23.247356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182195, 19.677212, 23.272564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176071, -0.329086, -0.927740,
		-0.282499, -0.885927, 0.367869,
		-0.942971, 0.326856, 0.063020,
		12.899303, 19.775269, 23.291470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993226, 19.004406, 23.004520>,  <13.559383, 19.546471, 23.247356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993226, 19.004406, 23.004520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.802478, 19.355494, 22.985752>,  <12.688029, 19.566147, 22.974491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.802478, 19.355494, 22.985752>,  <12.993226, 19.004406, 23.004520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802478, 19.355494, 22.985752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404571, -0.266569, -0.874793,
		-0.780331, -0.398180, 0.482219,
		-0.476870, 0.877720, -0.046920,
		12.659416, 19.618809, 22.971676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293431, 18.819519, 22.716043>,  <12.993226, 19.004406, 23.004520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293431, 18.819519, 22.716043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.360231, 19.208158, 22.648987>,  <12.400311, 19.441343, 22.608753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.360231, 19.208158, 22.648987>,  <12.293431, 18.819519, 22.716043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.360231, 19.208158, 22.648987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292128, -0.113636, -0.949604,
		-0.941686, 0.207556, 0.264854,
		0.166999, 0.971600, -0.167642,
		12.410331, 19.499640, 22.598694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620543, 19.059256, 22.510630>,  <12.293431, 18.819519, 22.716043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.620543, 19.059256, 22.510630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.913747, 19.293642, 22.372450>,  <12.089669, 19.434275, 22.289541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.913747, 19.293642, 22.372450>,  <11.620543, 19.059256, 22.510630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.913747, 19.293642, 22.372450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188397, -0.313098, -0.930847,
		-0.653607, 0.747403, -0.119110,
		0.733011, 0.585968, -0.345452,
		12.133650, 19.469433, 22.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.368035, 19.311518, 21.842703>,  <11.620543, 19.059256, 22.510630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.368035, 19.311518, 21.842703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.757333, 19.403366, 21.839306>,  <11.990911, 19.458475, 21.837269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.757333, 19.403366, 21.839306>,  <11.368035, 19.311518, 21.842703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.757333, 19.403366, 21.839306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047330, -0.236494, -0.970480,
		-0.224850, 0.944111, -0.241034,
		0.973243, 0.229620, -0.008491,
		12.049306, 19.472252, 21.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593463, 19.575949, 21.113298>,  <11.368035, 19.311518, 21.842703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593463, 19.575949, 21.113298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.938628, 19.472700, 21.287083>,  <12.145727, 19.410751, 21.391354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.938628, 19.472700, 21.287083>,  <11.593463, 19.575949, 21.113298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938628, 19.472700, 21.287083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361986, -0.284190, -0.887808,
		0.352630, 0.923369, -0.151795,
		0.862913, -0.258120, 0.434461,
		12.197502, 19.395264, 21.417421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123603, 19.853170, 20.736700>,  <11.593463, 19.575949, 21.113298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123603, 19.853170, 20.736700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.310773, 19.558262, 20.931625>,  <12.423075, 19.381317, 21.048580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.310773, 19.558262, 20.931625>,  <12.123603, 19.853170, 20.736700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310773, 19.558262, 20.931625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444354, -0.280365, -0.850850,
		0.763934, 0.614674, 0.196420,
		0.467926, -0.737273, 0.487313,
		12.451151, 19.337080, 21.077820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.674657, 19.838669, 20.342800>,  <12.123603, 19.853170, 20.736700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.674657, 19.838669, 20.342800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.662910, 19.500353, 20.555883>,  <12.655863, 19.297363, 20.683733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.662910, 19.500353, 20.555883>,  <12.674657, 19.838669, 20.342800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662910, 19.500353, 20.555883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593637, -0.443531, -0.671473,
		0.804197, 0.296517, 0.515116,
		-0.029367, -0.845789, 0.532709,
		12.654100, 19.246616, 20.715696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.402232, 19.688122, 20.600491>,  <12.674657, 19.838669, 20.342800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.402232, 19.688122, 20.600491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.202722, 19.342308, 20.575825>,  <13.083015, 19.134819, 20.561026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.202722, 19.342308, 20.575825>,  <13.402232, 19.688122, 20.600491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.202722, 19.342308, 20.575825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748246, -0.393594, -0.534052,
		0.437435, -0.312514, 0.843199,
		-0.498777, -0.864534, -0.061666,
		13.053088, 19.082949, 20.557325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992167, 19.102886, 20.646263>,  <13.402232, 19.688122, 20.600491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992167, 19.102886, 20.646263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.665821, 18.956266, 20.467375>,  <13.470014, 18.868294, 20.360043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.665821, 18.956266, 20.467375>,  <13.992167, 19.102886, 20.646263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.665821, 18.956266, 20.467375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570580, -0.384840, -0.725490,
		0.093820, -0.847077, 0.523124,
		-0.815865, -0.366550, -0.447220,
		13.421062, 18.846302, 20.333208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206773, 18.495495, 20.499250>,  <13.992167, 19.102886, 20.646263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206773, 18.495495, 20.499250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.856050, 18.487211, 20.307091>,  <13.645617, 18.482241, 20.191795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.856050, 18.487211, 20.307091>,  <14.206773, 18.495495, 20.499250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856050, 18.487211, 20.307091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430671, -0.478154, -0.765435,
		-0.213852, -0.878032, 0.428168,
		-0.876807, -0.020710, -0.480397,
		13.593008, 18.480999, 20.162971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132047, 17.869661, 20.277975>,  <14.206773, 18.495495, 20.499250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132047, 17.869661, 20.277975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.907938, 18.079796, 20.021814>,  <13.773473, 18.205877, 19.868118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.907938, 18.079796, 20.021814>,  <14.132047, 17.869661, 20.277975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907938, 18.079796, 20.021814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463871, -0.441536, -0.768029,
		-0.686236, -0.727370, 0.003692,
		-0.560272, 0.525337, -0.640404,
		13.739857, 18.237396, 19.829693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180838, 17.422174, 19.639126>,  <14.132047, 17.869661, 20.277975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180838, 17.422174, 19.639126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.017166, 17.758451, 19.497248>,  <13.918963, 17.960218, 19.412121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.017166, 17.758451, 19.497248>,  <14.180838, 17.422174, 19.639126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.017166, 17.758451, 19.497248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325049, -0.228925, -0.917571,
		-0.852594, -0.490744, -0.179595,
		-0.409179, 0.840693, -0.354695,
		13.894412, 18.010658, 19.390839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793589, 17.197939, 19.071018>,  <14.180838, 17.422174, 19.639126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793589, 17.197939, 19.071018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892335, 17.585369, 19.058878>,  <13.951583, 17.817827, 19.051594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892335, 17.585369, 19.058878>,  <13.793589, 17.197939, 19.071018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892335, 17.585369, 19.058878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360601, -0.120889, -0.924853,
		-0.899458, 0.217371, -0.379112,
		0.246867, 0.968574, -0.030351,
		13.966394, 17.875942, 19.049772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350695, 17.625628, 18.493979>,  <13.793589, 17.197939, 19.071018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350695, 17.625628, 18.493979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.715523, 17.770708, 18.570477>,  <13.934420, 17.857756, 18.616375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.715523, 17.770708, 18.570477>,  <13.350695, 17.625628, 18.493979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.715523, 17.770708, 18.570477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174611, 0.078438, -0.981508,
		-0.370996, 0.928598, 0.008210,
		0.912071, 0.362702, 0.191243,
		13.989144, 17.879519, 18.627850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481606, 17.930357, 17.879044>,  <13.350695, 17.625628, 18.493979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481606, 17.930357, 17.879044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.845909, 17.948877, 18.043179>,  <14.064491, 17.959990, 18.141659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.845909, 17.948877, 18.043179>,  <13.481606, 17.930357, 17.879044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.845909, 17.948877, 18.043179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407524, 0.059630, -0.911246,
		-0.066661, 0.997146, 0.035440,
		0.910758, 0.046302, 0.410336,
		14.119137, 17.962769, 18.166279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800318, 18.173929, 17.387667>,  <13.481606, 17.930357, 17.879044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800318, 18.173929, 17.387667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.118220, 18.065899, 17.605078>,  <14.308962, 18.001081, 17.735523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.118220, 18.065899, 17.605078>,  <13.800318, 18.173929, 17.387667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118220, 18.065899, 17.605078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591778, 0.145989, -0.792771,
		0.134759, 0.951707, 0.275850,
		0.794757, -0.270075, 0.543526,
		14.356647, 17.984877, 17.768135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.385280, 18.678122, 17.370655>,  <13.800318, 18.173929, 17.387667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.385280, 18.678122, 17.370655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.512873, 18.306866, 17.447393>,  <14.589429, 18.084112, 17.493437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.512873, 18.306866, 17.447393>,  <14.385280, 18.678122, 17.370655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512873, 18.306866, 17.447393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520398, 0.002344, -0.853920,
		0.792108, 0.372224, 0.483750,
		0.318984, -0.928140, 0.191848,
		14.608568, 18.028423, 17.504948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092230, 18.607679, 17.547241>,  <14.385280, 18.678122, 17.370655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.092230, 18.607679, 17.547241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.956491, 18.293385, 17.340376>,  <14.875047, 18.104807, 17.216257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.956491, 18.293385, 17.340376>,  <15.092230, 18.607679, 17.547241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956491, 18.293385, 17.340376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610136, 0.234589, -0.756770,
		0.715945, -0.572349, 0.399800,
		-0.339348, -0.785738, -0.517164,
		14.854686, 18.057663, 17.185226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674518, 18.539888, 17.015083>,  <15.092230, 18.607679, 17.547241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674518, 18.539888, 17.015083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.796654, 18.802069, 16.738777>,  <15.869936, 18.959377, 16.572994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.796654, 18.802069, 16.738777>,  <15.674518, 18.539888, 17.015083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796654, 18.802069, 16.738777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376511, 0.749395, 0.544652,
		0.874647, 0.093775, 0.475605,
		0.305341, 0.655449, -0.690763,
		15.888256, 18.998703, 16.531548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201494, 18.975872, 17.329699>,  <15.674518, 18.539888, 17.015083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201494, 18.975872, 17.329699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.085859, 19.191465, 17.013237>,  <16.016478, 19.320822, 16.823360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.085859, 19.191465, 17.013237>,  <16.201494, 18.975872, 17.329699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085859, 19.191465, 17.013237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188086, 0.778353, 0.598991,
		0.938644, 0.321966, -0.123637,
		-0.289088, 0.538985, -0.791153,
		15.999133, 19.353161, 16.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.468348, 19.642626, 17.398756>,  <16.201494, 18.975872, 17.329699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.468348, 19.642626, 17.398756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.180292, 19.692762, 17.125790>,  <16.007460, 19.722845, 16.962009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.180292, 19.692762, 17.125790>,  <16.468348, 19.642626, 17.398756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180292, 19.692762, 17.125790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306449, 0.824954, 0.474911,
		0.622486, 0.551127, -0.555671,
		-0.720139, 0.125341, -0.682415,
		15.964251, 19.730364, 16.921064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512440, 20.366495, 17.217100>,  <16.468348, 19.642626, 17.398756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512440, 20.366495, 17.217100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.137432, 20.270638, 17.116201>,  <15.912428, 20.213123, 17.055662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.137432, 20.270638, 17.116201>,  <16.512440, 20.366495, 17.217100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137432, 20.270638, 17.116201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343557, 0.752256, 0.562209,
		0.055025, 0.613743, -0.787585,
		-0.937518, -0.239645, -0.252249,
		15.856176, 20.198744, 17.040527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102461, 20.974695, 16.892757>,  <16.512440, 20.366495, 17.217100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102461, 20.974695, 16.892757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.826865, 20.752375, 17.078825>,  <15.661508, 20.618982, 17.190466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.826865, 20.752375, 17.078825>,  <16.102461, 20.974695, 16.892757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826865, 20.752375, 17.078825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290947, 0.799929, 0.524846,
		-0.663811, 0.226274, -0.712850,
		-0.688988, -0.555800, 0.465167,
		15.620169, 20.585634, 17.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631963, 21.459805, 17.069941>,  <16.102461, 20.974695, 16.892757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631963, 21.459805, 17.069941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.491389, 21.136442, 17.258820>,  <15.407045, 20.942425, 17.372147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.491389, 21.136442, 17.258820>,  <15.631963, 21.459805, 17.069941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491389, 21.136442, 17.258820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361329, 0.582411, 0.728175,
		-0.863676, 0.085286, -0.496780,
		-0.351433, -0.808408, 0.472198,
		15.385960, 20.893919, 17.400478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.863640, 21.546774, 17.128960>,  <15.631963, 21.459805, 17.069941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.863640, 21.546774, 17.128960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.013901, 21.326485, 17.427111>,  <15.104057, 21.194311, 17.606001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.013901, 21.326485, 17.427111>,  <14.863640, 21.546774, 17.128960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013901, 21.326485, 17.427111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455433, 0.590767, 0.666014,
		-0.807135, -0.589660, -0.028894,
		0.375652, -0.550722, 0.745379,
		15.126596, 21.161268, 17.650724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303625, 21.414978, 17.568462>,  <14.863640, 21.546774, 17.128960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303625, 21.414978, 17.568462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.596894, 21.307535, 17.818361>,  <14.772856, 21.243071, 17.968300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.596894, 21.307535, 17.818361>,  <14.303625, 21.414978, 17.568462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596894, 21.307535, 17.818361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483648, 0.439868, 0.756704,
		-0.478061, -0.856952, 0.192589,
		0.733173, -0.268606, 0.624747,
		14.816846, 21.226954, 18.005785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949421, 21.219133, 18.113724>,  <14.303625, 21.414978, 17.568462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949421, 21.219133, 18.113724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.317481, 21.306959, 18.243410>,  <14.538317, 21.359655, 18.321222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.317481, 21.306959, 18.243410>,  <13.949421, 21.219133, 18.113724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.317481, 21.306959, 18.243410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376180, 0.265854, 0.887587,
		0.108686, -0.938677, 0.327220,
		0.920150, 0.219562, 0.324216,
		14.593526, 21.372828, 18.340675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.921806, 20.889252, 18.811695>,  <13.949421, 21.219133, 18.113724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.921806, 20.889252, 18.811695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.217969, 21.158077, 18.807106>,  <14.395666, 21.319372, 18.804352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.217969, 21.158077, 18.807106>,  <13.921806, 20.889252, 18.811695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.217969, 21.158077, 18.807106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309434, 0.355955, 0.881786,
		0.596699, -0.649329, 0.471510,
		0.740406, 0.672062, -0.011474,
		14.440091, 21.359695, 18.803663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.284083, 20.742430, 19.503334>,  <13.921806, 20.889252, 18.811695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.284083, 20.742430, 19.503334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.368624, 21.108732, 19.366674>,  <14.419348, 21.328514, 19.284679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.368624, 21.108732, 19.366674>,  <14.284083, 20.742430, 19.503334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368624, 21.108732, 19.366674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105389, 0.368858, 0.923492,
		0.971712, -0.159174, 0.174468,
		0.211350, 0.915755, -0.341649,
		14.432029, 21.383459, 19.264179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788824, 21.018120, 19.980921>,  <14.284083, 20.742430, 19.503334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.788824, 21.018120, 19.980921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.643190, 21.337599, 19.789286>,  <14.555810, 21.529287, 19.674305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.643190, 21.337599, 19.789286>,  <14.788824, 21.018120, 19.980921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643190, 21.337599, 19.789286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257300, 0.408117, 0.875920,
		0.895120, 0.442177, 0.056917,
		-0.364084, 0.798698, -0.479086,
		14.533965, 21.577208, 19.645559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220465, 21.536800, 20.151081>,  <14.788824, 21.018120, 19.980921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220465, 21.536800, 20.151081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.861450, 21.680296, 20.048525>,  <14.646042, 21.766394, 19.986992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.861450, 21.680296, 20.048525>,  <15.220465, 21.536800, 20.151081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861450, 21.680296, 20.048525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039325, 0.514022, 0.856875,
		0.439184, 0.779159, -0.447245,
		-0.897536, 0.358738, -0.256391,
		14.592190, 21.787918, 19.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298806, 22.214560, 20.385073>,  <15.220465, 21.536800, 20.151081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298806, 22.214560, 20.385073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.906009, 22.148815, 20.347820>,  <14.670330, 22.109369, 20.325470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.906009, 22.148815, 20.347820>,  <15.298806, 22.214560, 20.385073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906009, 22.148815, 20.347820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147494, 0.359023, 0.921601,
		-0.118039, 0.918743, -0.376801,
		-0.981994, -0.164361, -0.093130,
		14.611410, 22.099506, 20.319881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918037, 22.900772, 20.465748>,  <15.298806, 22.214560, 20.385073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918037, 22.900772, 20.465748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.670651, 22.603018, 20.566458>,  <14.522220, 22.424366, 20.626884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.670651, 22.603018, 20.566458>,  <14.918037, 22.900772, 20.465748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670651, 22.603018, 20.566458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135780, 0.416813, 0.898794,
		-0.773992, 0.521687, -0.358857,
		-0.618466, -0.744385, 0.251775,
		14.485111, 22.379702, 20.641991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396085, 23.266609, 20.820433>,  <14.918037, 22.900772, 20.465748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396085, 23.266609, 20.820433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.347235, 22.884781, 20.929153>,  <14.317924, 22.655684, 20.994387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.347235, 22.884781, 20.929153>,  <14.396085, 23.266609, 20.820433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.347235, 22.884781, 20.929153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269411, 0.295453, 0.916583,
		-0.955250, 0.038712, -0.293255,
		-0.122126, -0.954572, 0.271802,
		14.310597, 22.598410, 21.010695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.796676, 23.352552, 21.272911>,  <14.396085, 23.266609, 20.820433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.796676, 23.352552, 21.272911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954735, 22.998404, 21.370869>,  <14.049570, 22.785913, 21.429644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.954735, 22.998404, 21.370869>,  <13.796676, 23.352552, 21.272911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954735, 22.998404, 21.370869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088327, 0.228733, 0.969474,
		-0.914361, -0.404716, 0.012182,
		0.395148, -0.885373, 0.244892,
		14.073279, 22.732792, 21.444336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.346677, 23.027613, 21.795000>,  <13.796676, 23.352552, 21.272911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.346677, 23.027613, 21.795000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.713774, 22.870438, 21.818146>,  <13.934031, 22.776133, 21.832033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.713774, 22.870438, 21.818146>,  <13.346677, 23.027613, 21.795000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713774, 22.870438, 21.818146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047625, 0.035768, 0.998225,
		-0.394312, -0.918869, 0.014112,
		0.917742, -0.392940, 0.057865,
		13.989097, 22.752556, 21.835505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.340087, 21.855007, 22.591393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.691523, 22.026251, 22.506725>,  <13.902384, 22.128996, 22.455925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.691523, 22.026251, 22.506725>,  <13.340087, 21.855007, 22.591393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691523, 22.026251, 22.506725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268819, -0.076986, 0.960109,
		0.394735, -0.900442, -0.182722,
		0.878590, 0.428108, -0.211667,
		13.955100, 22.154684, 22.443226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837660, 21.418339, 22.867092>,  <13.340087, 21.855007, 22.591393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837660, 21.418339, 22.867092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.012661, 21.777843, 22.855654>,  <14.117661, 21.993547, 22.848791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.012661, 21.777843, 22.855654>,  <13.837660, 21.418339, 22.867092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012661, 21.777843, 22.855654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094926, -0.014537, 0.995378,
		0.894193, -0.438194, -0.091676,
		0.437502, 0.898763, -0.028597,
		14.143911, 22.047472, 22.847075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.382323, 21.366230, 23.294804>,  <13.837660, 21.418339, 22.867092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.382323, 21.366230, 23.294804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.321218, 21.760185, 23.262167>,  <14.284554, 21.996559, 23.242584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.321218, 21.760185, 23.262167>,  <14.382323, 21.366230, 23.294804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321218, 21.760185, 23.262167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242293, 0.117368, 0.963078,
		0.958101, 0.127354, -0.256561,
		-0.152764, 0.984889, -0.081594,
		14.275389, 22.055653, 23.237688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831245, 21.683617, 23.761763>,  <14.382323, 21.366230, 23.294804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831245, 21.683617, 23.761763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.568638, 21.979145, 23.700930>,  <14.411074, 22.156462, 23.664431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.568638, 21.979145, 23.700930>,  <14.831245, 21.683617, 23.761763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568638, 21.979145, 23.700930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117784, 0.299553, 0.946781,
		0.745057, 0.603667, -0.283683,
		-0.656519, 0.738820, -0.152082,
		14.371682, 22.200790, 23.655306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096854, 22.219168, 24.185297>,  <14.831245, 21.683617, 23.761763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.096854, 22.219168, 24.185297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.719254, 22.335196, 24.122408>,  <14.492693, 22.404812, 24.084675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.719254, 22.335196, 24.122408>,  <15.096854, 22.219168, 24.185297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719254, 22.335196, 24.122408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151996, 0.040616, 0.987546,
		0.292843, 0.956143, 0.005748,
		-0.944002, 0.290070, -0.157224,
		14.436053, 22.422216, 24.075241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020394, 22.893322, 24.457775>,  <15.096854, 22.219168, 24.185297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020394, 22.893322, 24.457775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.670605, 22.699728, 24.444818>,  <14.460731, 22.583570, 24.437044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.670605, 22.699728, 24.444818>,  <15.020394, 22.893322, 24.457775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670605, 22.699728, 24.444818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150278, 0.206818, 0.966769,
		-0.461204, 0.850284, -0.253590,
		-0.874475, -0.483987, -0.032394,
		14.408262, 22.554531, 24.435101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.783416, 23.194496, 24.981115>,  <15.020394, 22.893322, 24.457775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.783416, 23.194496, 24.981115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.523603, 22.894081, 24.933702>,  <14.367716, 22.713831, 24.905254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.523603, 22.894081, 24.933702>,  <14.783416, 23.194496, 24.981115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.523603, 22.894081, 24.933702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288264, 0.098986, 0.952421,
		-0.703572, 0.652795, -0.280792,
		-0.649531, -0.751039, -0.118534,
		14.328744, 22.668770, 24.898142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212431, 23.348301, 25.358704>,  <14.783416, 23.194496, 24.981115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212431, 23.348301, 25.358704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.161243, 22.952467, 25.332321>,  <14.130531, 22.714968, 25.316492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.161243, 22.952467, 25.332321>,  <14.212431, 23.348301, 25.358704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161243, 22.952467, 25.332321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475691, 0.002888, 0.879608,
		-0.870254, 0.143937, -0.471105,
		-0.127968, -0.989583, -0.065956,
		14.122853, 22.655592, 25.312534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526424, 23.303808, 25.438644>,  <14.212431, 23.348301, 25.358704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526424, 23.303808, 25.438644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.723054, 22.968946, 25.534586>,  <13.841032, 22.768030, 25.592150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.723054, 22.968946, 25.534586>,  <13.526424, 23.303808, 25.438644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.723054, 22.968946, 25.534586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276845, 0.110909, 0.954492,
		-0.825659, -0.535606, -0.177242,
		0.491574, -0.837153, 0.239853,
		13.870526, 22.717800, 25.606543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078503, 23.046486, 25.934080>,  <13.526424, 23.303808, 25.438644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078503, 23.046486, 25.934080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.427208, 22.852232, 25.959967>,  <13.636431, 22.735680, 25.975498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.427208, 22.852232, 25.959967>,  <13.078503, 23.046486, 25.934080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427208, 22.852232, 25.959967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047506, 0.215261, 0.975400,
		-0.487620, -0.847243, 0.210727,
		0.871763, -0.485635, 0.064717,
		13.688737, 22.706541, 25.979382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056149, 22.712881, 26.503586>,  <13.078503, 23.046486, 25.934080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056149, 22.712881, 26.503586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.449414, 22.717396, 26.430634>,  <13.685373, 22.720104, 26.386862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.449414, 22.717396, 26.430634>,  <13.056149, 22.712881, 26.503586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449414, 22.717396, 26.430634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174041, 0.246244, 0.953454,
		0.055672, -0.969142, 0.240134,
		0.983163, 0.011288, -0.182379,
		13.744364, 22.720781, 26.375919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355629, 22.172300, 26.886356>,  <13.056149, 22.712881, 26.503586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355629, 22.172300, 26.886356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.648067, 22.441950, 26.844296>,  <13.823531, 22.603739, 26.819059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.648067, 22.441950, 26.844296>,  <13.355629, 22.172300, 26.886356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.648067, 22.441950, 26.844296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187465, -0.050294, 0.980983,
		0.656014, -0.736905, -0.163144,
		0.731097, 0.674122, -0.105151,
		13.867396, 22.644186, 26.812750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645709, 22.154346, 27.520784>,  <13.355629, 22.172300, 26.886356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645709, 22.154346, 27.520784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.876029, 22.427521, 27.340984>,  <14.014221, 22.591425, 27.233105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.876029, 22.427521, 27.340984>,  <13.645709, 22.154346, 27.520784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.876029, 22.427521, 27.340984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470114, 0.173255, 0.865434,
		0.668915, -0.709633, -0.221298,
		0.575800, 0.682937, -0.449502,
		14.048769, 22.632402, 27.206133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448687, 22.018284, 27.662807>,  <13.645709, 22.154346, 27.520784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448687, 22.018284, 27.662807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.366432, 22.403976, 27.595913>,  <14.317080, 22.635393, 27.555777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.366432, 22.403976, 27.595913>,  <14.448687, 22.018284, 27.662807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366432, 22.403976, 27.595913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264061, 0.219221, 0.939262,
		0.942330, 0.148984, -0.299696,
		-0.205635, 0.964233, -0.167238,
		14.304742, 22.693247, 27.545742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939389, 22.437319, 27.915421>,  <14.448687, 22.018284, 27.662807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939389, 22.437319, 27.915421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.632320, 22.693630, 27.911858>,  <14.448079, 22.847418, 27.909719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.632320, 22.693630, 27.911858>,  <14.939389, 22.437319, 27.915421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632320, 22.693630, 27.911858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176781, 0.225107, 0.958162,
		0.615977, 0.733980, -0.286086,
		-0.767673, 0.640780, -0.008907,
		14.402019, 22.885864, 27.909185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074401, 23.124050, 28.110569>,  <14.939389, 22.437319, 27.915421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074401, 23.124050, 28.110569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.681313, 23.120300, 28.184513>,  <14.445459, 23.118050, 28.228880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.681313, 23.120300, 28.184513>,  <15.074401, 23.124050, 28.110569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.681313, 23.120300, 28.184513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160839, 0.451017, 0.877903,
		-0.091605, 0.892466, -0.441716,
		-0.982720, -0.009375, 0.184859,
		14.386497, 23.117487, 28.239971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053151, 23.506742, 28.616337>,  <15.074401, 23.124050, 28.110569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053151, 23.506742, 28.616337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.670413, 23.390533, 28.613632>,  <14.440770, 23.320808, 28.612009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.670413, 23.390533, 28.613632>,  <15.053151, 23.506742, 28.616337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670413, 23.390533, 28.613632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139009, 0.437154, 0.888579,
		-0.255196, 0.851172, -0.458673,
		-0.956845, -0.290522, -0.006761,
		14.383360, 23.303377, 28.611605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500001, 24.114140, 28.721884>,  <15.053151, 23.506742, 28.616337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500001, 24.114140, 28.721884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.365304, 23.762051, 28.855637>,  <14.284486, 23.550797, 28.935888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.365304, 23.762051, 28.855637>,  <14.500001, 24.114140, 28.721884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.365304, 23.762051, 28.855637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166299, 0.405136, 0.899005,
		-0.926795, 0.247125, -0.282807,
		-0.336742, -0.880224, 0.334382,
		14.264281, 23.497984, 28.955952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015550, 24.319067, 29.206116>,  <14.500001, 24.114140, 28.721884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.015550, 24.319067, 29.206116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.078817, 23.932852, 29.288792>,  <14.116777, 23.701122, 29.338398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.078817, 23.932852, 29.288792>,  <14.015550, 24.319067, 29.206116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078817, 23.932852, 29.288792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216466, 0.170328, 0.961317,
		-0.963393, -0.196791, -0.182065,
		0.158168, -0.965537, 0.206692,
		14.126267, 23.643190, 29.350800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646411, 24.236483, 29.753679>,  <14.015550, 24.319067, 29.206116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646411, 24.236483, 29.753679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.887398, 23.919888, 29.794830>,  <14.031990, 23.729931, 29.819521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.887398, 23.919888, 29.794830>,  <13.646411, 24.236483, 29.753679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887398, 23.919888, 29.794830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110488, 0.210362, 0.971360,
		-0.790460, -0.573845, 0.214186,
		0.602466, -0.791486, 0.102880,
		14.068138, 23.682442, 29.825695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449183, 23.860950, 30.267250>,  <13.646411, 24.236483, 29.753679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449183, 23.860950, 30.267250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.833253, 23.749613, 30.257549>,  <14.063695, 23.682810, 30.251728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.833253, 23.749613, 30.257549>,  <13.449183, 23.860950, 30.267250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833253, 23.749613, 30.257549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084350, 0.206025, 0.974904,
		-0.266363, -0.938124, 0.221299,
		0.960175, -0.278345, -0.024254,
		14.121305, 23.666109, 30.250273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.653450, 23.522182, 30.937111>,  <13.449183, 23.860950, 30.267250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.653450, 23.522182, 30.937111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.001903, 23.629442, 30.772562>,  <14.210974, 23.693798, 30.673832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.001903, 23.629442, 30.772562>,  <13.653450, 23.522182, 30.937111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001903, 23.629442, 30.772562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384784, 0.147716, 0.911110,
		0.305079, -0.951985, 0.025501,
		0.871130, 0.268148, -0.411374,
		14.263242, 23.709887, 30.649149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110259, 23.223175, 31.336452>,  <13.653450, 23.522182, 30.937111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110259, 23.223175, 31.336452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.271781, 23.541178, 31.155388>,  <14.368694, 23.731979, 31.046749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.271781, 23.541178, 31.155388>,  <14.110259, 23.223175, 31.336452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271781, 23.541178, 31.155388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359918, 0.316840, 0.877537,
		0.841071, -0.517274, -0.158197,
		0.403805, 0.795009, -0.452661,
		14.392922, 23.779680, 31.019590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.857126, 22.899738, 31.874430>,  <14.110259, 23.223175, 31.336452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.857126, 22.899738, 31.874430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.913116, 22.553305, 32.066391>,  <13.946711, 22.345446, 32.181568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.913116, 22.553305, 32.066391>,  <13.857126, 22.899738, 31.874430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913116, 22.553305, 32.066391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235005, -0.499886, -0.833599,
		0.961863, 0.003904, -0.273506,
		0.139976, -0.866083, 0.479904,
		13.955110, 22.293480, 32.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347390, 22.392414, 31.594799>,  <13.857126, 22.899738, 31.874430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347390, 22.392414, 31.594799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.072044, 22.171745, 31.783188>,  <13.906837, 22.039343, 31.896221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.072044, 22.171745, 31.783188>,  <14.347390, 22.392414, 31.594799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.072044, 22.171745, 31.783188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159338, -0.518425, -0.840147,
		0.707649, -0.653370, 0.268963,
		-0.688364, -0.551673, 0.470970,
		13.865536, 22.006243, 31.924479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.363290, 21.803680, 31.285187>,  <14.347390, 22.392414, 31.594799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.363290, 21.803680, 31.285187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.999530, 21.803421, 31.451557>,  <13.781274, 21.803267, 31.551378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.999530, 21.803421, 31.451557>,  <14.363290, 21.803680, 31.285187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.999530, 21.803421, 31.451557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354797, -0.520652, -0.776557,
		0.217054, -0.853769, 0.473251,
		-0.909399, -0.000647, 0.415925,
		13.726710, 21.803226, 31.576334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235289, 21.182457, 31.198164>,  <14.363290, 21.803680, 31.285187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235289, 21.182457, 31.198164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.872728, 21.338274, 31.263521>,  <13.655192, 21.431765, 31.302734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.872728, 21.338274, 31.263521>,  <14.235289, 21.182457, 31.198164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.872728, 21.338274, 31.263521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366948, -0.534473, -0.761372,
		-0.209258, -0.750064, 0.627388,
		-0.906400, 0.389542, 0.163392,
		13.600808, 21.455137, 31.312538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758380, 20.641117, 31.261517>,  <14.235289, 21.182457, 31.198164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758380, 20.641117, 31.261517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.561184, 20.962194, 31.127266>,  <13.442866, 21.154840, 31.046717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.561184, 20.962194, 31.127266>,  <13.758380, 20.641117, 31.261517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561184, 20.962194, 31.127266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267636, -0.506969, -0.819362,
		-0.827848, -0.314111, 0.464760,
		-0.492990, 0.802693, -0.335625,
		13.413287, 21.203003, 31.026579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062057, 20.430878, 30.997997>,  <13.758380, 20.641117, 31.261517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062057, 20.430878, 30.997997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.072689, 20.796949, 30.837132>,  <13.079069, 21.016592, 30.740612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.072689, 20.796949, 30.837132>,  <13.062057, 20.430878, 30.997997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072689, 20.796949, 30.837132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333681, -0.371109, -0.866565,
		-0.942311, 0.157230, 0.295514,
		0.026582, 0.915181, -0.402165,
		13.080664, 21.071505, 30.716482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496587, 20.466572, 30.501839>,  <13.062057, 20.430878, 30.997997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.496587, 20.466572, 30.501839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.738617, 20.762756, 30.384811>,  <12.883835, 20.940468, 30.314594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.738617, 20.762756, 30.384811>,  <12.496587, 20.466572, 30.501839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.738617, 20.762756, 30.384811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182868, -0.228396, -0.956240,
		-0.774883, 0.632099, -0.002789,
		0.605075, 0.740464, -0.292570,
		12.920139, 20.984896, 30.297041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129970, 20.945038, 29.961744>,  <12.496587, 20.466572, 30.501839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129970, 20.945038, 29.961744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.526424, 20.982000, 29.923565>,  <12.764297, 21.004177, 29.900658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.526424, 20.982000, 29.923565>,  <12.129970, 20.945038, 29.961744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.526424, 20.982000, 29.923565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086009, -0.101249, -0.991136,
		-0.101249, 0.990561, -0.092404,
		0.991136, 0.092404, -0.095448,
		12.823766, 21.009722, 29.894930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.175193, 21.123617, 29.316711>,  <12.129970, 20.945038, 29.961744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.175193, 21.123617, 29.316711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.561103, 21.039181, 29.379511>,  <12.792649, 20.988520, 29.417191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.561103, 21.039181, 29.379511>,  <12.175193, 21.123617, 29.316711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561103, 21.039181, 29.379511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120051, -0.177757, -0.976724,
		0.234084, 0.961168, -0.146154,
		0.964776, -0.211089, 0.156999,
		12.850535, 20.975855, 29.426611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685197, 21.430195, 28.666061>,  <12.175193, 21.123617, 29.316711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685197, 21.430195, 28.666061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.893132, 21.140911, 28.847933>,  <13.017894, 20.967340, 28.957056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.893132, 21.140911, 28.847933>,  <12.685197, 21.430195, 28.666061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.893132, 21.140911, 28.847933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290511, -0.350862, -0.890224,
		0.803350, 0.594863, 0.027709,
		0.519839, -0.723211, 0.454679,
		13.049084, 20.923948, 28.984337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349267, 21.411119, 28.440706>,  <12.685197, 21.430195, 28.666061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349267, 21.411119, 28.440706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.324448, 21.035713, 28.576553>,  <13.309556, 20.810471, 28.658062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.324448, 21.035713, 28.576553>,  <13.349267, 21.411119, 28.440706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.324448, 21.035713, 28.576553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268482, -0.343428, -0.899986,
		0.961284, 0.035338, 0.273283,
		-0.062049, -0.938514, 0.339619,
		13.305833, 20.754158, 28.678438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.962803, 21.065649, 28.157759>,  <13.349267, 21.411119, 28.440706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.962803, 21.065649, 28.157759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.724767, 20.768721, 28.280935>,  <13.581945, 20.590565, 28.354841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.724767, 20.768721, 28.280935>,  <13.962803, 21.065649, 28.157759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724767, 20.768721, 28.280935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058291, -0.422036, -0.904703,
		0.801542, -0.520429, 0.294420,
		-0.595090, -0.742320, 0.307943,
		13.546240, 20.546024, 28.373318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.275893, 20.542616, 27.968763>,  <13.962803, 21.065649, 28.157759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.275893, 20.542616, 27.968763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.903940, 20.397871, 27.995214>,  <13.680768, 20.311024, 28.011086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.903940, 20.397871, 27.995214>,  <14.275893, 20.542616, 27.968763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.903940, 20.397871, 27.995214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108804, -0.442283, -0.890251,
		0.351395, -0.820635, 0.450643,
		-0.929883, -0.361862, 0.066127,
		13.624975, 20.289312, 28.015053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324373, 19.948545, 27.615431>,  <14.275893, 20.542616, 27.968763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324373, 19.948545, 27.615431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.933363, 20.032803, 27.611944>,  <13.698757, 20.083357, 27.609852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.933363, 20.032803, 27.611944>,  <14.324373, 19.948545, 27.615431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933363, 20.032803, 27.611944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050402, -0.273642, -0.960510,
		-0.204706, -0.938484, 0.278108,
		-0.977525, 0.210639, -0.008715,
		13.640105, 20.095995, 27.609329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010839, 19.445702, 27.155502>,  <14.324373, 19.948545, 27.615431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.010839, 19.445702, 27.155502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.738955, 19.736776, 27.192308>,  <13.575824, 19.911421, 27.214392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.738955, 19.736776, 27.192308>,  <14.010839, 19.445702, 27.155502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738955, 19.736776, 27.192308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159869, -0.024543, -0.986833,
		-0.715845, -0.685472, 0.133016,
		-0.679711, 0.727685, 0.092017,
		13.535041, 19.955082, 27.219913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513494, 19.258150, 26.645811>,  <14.010839, 19.445702, 27.155502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513494, 19.258150, 26.645811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.450208, 19.641880, 26.739330>,  <13.412235, 19.872118, 26.795443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.450208, 19.641880, 26.739330>,  <13.513494, 19.258150, 26.645811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450208, 19.641880, 26.739330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149579, 0.210761, -0.966026,
		-0.976009, -0.187813, 0.110149,
		-0.158217, 0.959326, 0.233797,
		13.402742, 19.929678, 26.809469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831047, 19.362532, 26.422474>,  <13.513494, 19.258150, 26.645811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831047, 19.362532, 26.422474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.997193, 19.726229, 26.433430>,  <13.096881, 19.944447, 26.440004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.997193, 19.726229, 26.433430>,  <12.831047, 19.362532, 26.422474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.997193, 19.726229, 26.433430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255619, 0.145566, -0.955756,
		-0.873001, 0.389986, 0.292882,
		0.415365, 0.909242, 0.027391,
		13.121803, 19.999001, 26.441647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.319327, 19.850338, 26.169474>,  <12.831047, 19.362532, 26.422474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.319327, 19.850338, 26.169474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.680414, 20.011496, 26.109106>,  <12.897066, 20.108191, 26.072886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.680414, 20.011496, 26.109106>,  <12.319327, 19.850338, 26.169474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680414, 20.011496, 26.109106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229886, 0.155187, -0.960765,
		-0.363667, 0.901994, 0.232710,
		0.902717, 0.402895, -0.150919,
		12.951229, 20.132364, 26.063829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150160, 20.417690, 25.849220>,  <12.319327, 19.850338, 26.169474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150160, 20.417690, 25.849220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.537079, 20.377974, 25.755861>,  <12.769231, 20.354143, 25.699846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.537079, 20.377974, 25.755861>,  <12.150160, 20.417690, 25.849220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.537079, 20.377974, 25.755861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227713, 0.065337, -0.971534,
		0.111714, 0.992911, 0.040590,
		0.967299, -0.099291, -0.233398,
		12.827269, 20.348186, 25.685843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326987, 20.892603, 25.361336>,  <12.150160, 20.417690, 25.849220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326987, 20.892603, 25.361336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.618496, 20.623795, 25.308754>,  <12.793401, 20.462509, 25.277205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.618496, 20.623795, 25.308754>,  <12.326987, 20.892603, 25.361336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618496, 20.623795, 25.308754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081601, 0.105375, -0.991079,
		0.679878, 0.732996, 0.021957,
		0.728771, -0.672021, -0.131456,
		12.837127, 20.422188, 25.269318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.621165, 21.154308, 24.817591>,  <12.326987, 20.892603, 25.361336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.621165, 21.154308, 24.817591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.734022, 20.770775, 24.830481>,  <12.801736, 20.540655, 24.838215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.734022, 20.770775, 24.830481>,  <12.621165, 21.154308, 24.817591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734022, 20.770775, 24.830481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204138, 0.027179, -0.978565,
		0.937403, 0.282672, 0.203402,
		0.282141, -0.958831, 0.032227,
		12.818665, 20.483126, 24.840149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.413664, 14.390827, 6.078808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.126804, 14.321835, 6.348903>,  <16.954689, 14.280439, 6.510960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.126804, 14.321835, 6.348903>,  <17.413664, 14.390827, 6.078808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126804, 14.321835, 6.348903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250873, -0.840046, -0.481025,
		0.650198, -0.514366, 0.559169,
		-0.717151, -0.172482, 0.675237,
		16.911659, 14.270090, 6.551474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749355, 14.713766, 6.257008>,  <17.413664, 14.390827, 6.078808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749355, 14.713766, 6.257008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.526205, 15.036616, 6.334281>,  <16.392315, 15.230327, 6.380646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.526205, 15.036616, 6.334281>,  <16.749355, 14.713766, 6.257008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526205, 15.036616, 6.334281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710203, 0.343850, 0.614312,
		0.429401, 0.479911, -0.765049,
		-0.557877, 0.807126, 0.193185,
		16.358841, 15.278754, 6.392237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028263, 15.354829, 5.898013>,  <16.749355, 14.713766, 6.257008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028263, 15.354829, 5.898013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.864527, 15.377300, 6.262273>,  <16.766285, 15.390783, 6.480830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.864527, 15.377300, 6.262273>,  <17.028263, 15.354829, 5.898013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864527, 15.377300, 6.262273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857613, 0.364298, 0.363024,
		-0.311355, 0.929586, -0.197301,
		-0.409339, 0.056179, 0.910651,
		16.741726, 15.394154, 6.535469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326696, 16.048807, 5.638620>,  <17.028263, 15.354829, 5.898013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326696, 16.048807, 5.638620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.017534, 16.203823, 5.839590>,  <16.832037, 16.296833, 5.960172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.017534, 16.203823, 5.839590>,  <17.326696, 16.048807, 5.638620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.017534, 16.203823, 5.839590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434654, -0.253500, 0.864184,
		0.462269, 0.886313, 0.027486,
		-0.772905, 0.387539, 0.502425,
		16.785664, 16.320086, 5.990318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518654, 16.683548, 6.018062>,  <17.326696, 16.048807, 5.638620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518654, 16.683548, 6.018062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245049, 16.431255, 6.164653>,  <17.080885, 16.279881, 6.252607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245049, 16.431255, 6.164653>,  <17.518654, 16.683548, 6.018062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245049, 16.431255, 6.164653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602197, -0.204711, 0.771656,
		-0.411684, 0.748514, 0.519849,
		-0.684014, -0.630729, 0.366476,
		17.039845, 16.242037, 6.274596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609533, 16.559973, 6.616127>,  <17.518654, 16.683548, 6.018062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609533, 16.559973, 6.616127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.349485, 16.257532, 6.586048>,  <17.193457, 16.076067, 6.568000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.349485, 16.257532, 6.586048>,  <17.609533, 16.559973, 6.616127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349485, 16.257532, 6.586048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442998, -0.457579, 0.770956,
		-0.617331, 0.467900, 0.632433,
		-0.650119, -0.756102, -0.075199,
		17.154449, 16.030701, 6.563488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368063, 16.371128, 7.324275>,  <17.609533, 16.559973, 6.616127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368063, 16.371128, 7.324275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.298166, 16.049721, 7.096653>,  <17.256227, 15.856876, 6.960080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.298166, 16.049721, 7.096653>,  <17.368063, 16.371128, 7.324275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.298166, 16.049721, 7.096653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443719, -0.580198, 0.682996,
		-0.878964, -0.133151, 0.457923,
		-0.174744, -0.803518, -0.569055,
		17.245743, 15.808665, 6.925937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.455084, 15.805322, 7.769380>,  <17.368063, 16.371128, 7.324275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.455084, 15.805322, 7.769380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.716114, 16.097155, 7.851214>,  <17.872732, 16.272255, 7.900314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.716114, 16.097155, 7.851214>,  <17.455084, 15.805322, 7.769380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.716114, 16.097155, 7.851214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087863, -0.195317, 0.976796,
		0.752612, -0.655409, -0.063356,
		0.652576, 0.729583, 0.204584,
		17.911886, 16.316029, 7.912589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753038, 15.715521, 8.433892>,  <17.455084, 15.805322, 7.769380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753038, 15.715521, 8.433892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.846191, 16.100025, 8.374912>,  <17.902082, 16.330729, 8.339524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.846191, 16.100025, 8.374912>,  <17.753038, 15.715521, 8.433892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846191, 16.100025, 8.374912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229370, 0.093051, 0.968881,
		0.945069, -0.259455, -0.198815,
		0.232882, 0.961262, -0.147451,
		17.916056, 16.388403, 8.330677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.495255, 15.780415, 8.760387>,  <17.753038, 15.715521, 8.433892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.495255, 15.780415, 8.760387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.319384, 16.139076, 8.739618>,  <18.213861, 16.354273, 8.727157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.319384, 16.139076, 8.739618>,  <18.495255, 15.780415, 8.760387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319384, 16.139076, 8.739618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234216, 0.170274, 0.957157,
		0.867080, 0.408677, -0.284877,
		-0.439675, 0.896655, -0.051923,
		18.187481, 16.408073, 8.724041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947178, 16.271624, 9.073769>,  <18.495255, 15.780415, 8.760387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947178, 16.271624, 9.073769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.564772, 16.387581, 9.091641>,  <18.335327, 16.457155, 9.102365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.564772, 16.387581, 9.091641>,  <18.947178, 16.271624, 9.073769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564772, 16.387581, 9.091641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097863, 0.171640, 0.980287,
		0.276509, 0.941542, -0.192460,
		-0.956016, 0.289893, 0.044682,
		18.277967, 16.474548, 9.105046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795172, 16.943459, 9.346286>,  <18.947178, 16.271624, 9.073769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795172, 16.943459, 9.346286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.498793, 16.692106, 9.441057>,  <18.320965, 16.541294, 9.497920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.498793, 16.692106, 9.441057>,  <18.795172, 16.943459, 9.346286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498793, 16.692106, 9.441057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146836, 0.192676, 0.970214,
		-0.655314, 0.753667, -0.050494,
		-0.740948, -0.628380, 0.236929,
		18.276508, 16.503592, 9.512136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578260, 17.215919, 9.957499>,  <18.795172, 16.943459, 9.346286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578260, 17.215919, 9.957499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.422041, 16.847778, 9.949304>,  <18.328310, 16.626894, 9.944386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.422041, 16.847778, 9.949304>,  <18.578260, 17.215919, 9.957499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.422041, 16.847778, 9.949304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020097, -0.013724, 0.999704,
		-0.920363, 0.390845, -0.013137,
		-0.390549, -0.920354, -0.020486,
		18.304876, 16.571672, 9.943158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107639, 17.278069, 10.507041>,  <18.578260, 17.215919, 9.957499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107639, 17.278069, 10.507041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.138571, 16.883844, 10.446790>,  <18.157129, 16.647310, 10.410639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.138571, 16.883844, 10.446790>,  <18.107639, 17.278069, 10.507041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.138571, 16.883844, 10.446790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051526, -0.146927, 0.987805,
		-0.995673, -0.084147, 0.039421,
		0.077329, -0.985562, -0.150627,
		18.161770, 16.588177, 10.401602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636225, 16.926819, 10.964514>,  <18.107639, 17.278069, 10.507041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636225, 16.926819, 10.964514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.934774, 16.683918, 10.855578>,  <18.113905, 16.538177, 10.790217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.934774, 16.683918, 10.855578>,  <17.636225, 16.926819, 10.964514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.934774, 16.683918, 10.855578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202154, -0.183011, 0.962102,
		-0.634080, -0.773144, -0.013836,
		0.746375, -0.607253, -0.272337,
		18.158688, 16.501741, 10.773877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598549, 16.389742, 11.336404>,  <17.636225, 16.926819, 10.964514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598549, 16.389742, 11.336404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.978752, 16.377321, 11.212746>,  <18.206875, 16.369869, 11.138551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.978752, 16.377321, 11.212746>,  <17.598549, 16.389742, 11.336404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978752, 16.377321, 11.212746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308580, 0.210398, 0.927637,
		0.036239, -0.977122, 0.209566,
		0.950508, -0.031051, -0.309146,
		18.263905, 16.368006, 11.120002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.969339, 15.827458, 11.675370>,  <17.598549, 16.389742, 11.336404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.969339, 15.827458, 11.675370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268589, 16.073084, 11.574785>,  <18.448139, 16.220459, 11.514434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268589, 16.073084, 11.574785>,  <17.969339, 15.827458, 11.675370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268589, 16.073084, 11.574785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340260, -0.029665, 0.939863,
		0.569677, -0.788698, -0.231135,
		0.748125, 0.614065, -0.251463,
		18.493027, 16.257303, 11.499347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542023, 15.497973, 11.985568>,  <17.969339, 15.827458, 11.675370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542023, 15.497973, 11.985568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.677462, 15.863815, 11.897161>,  <18.758724, 16.083321, 11.844117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.677462, 15.863815, 11.897161>,  <18.542023, 15.497973, 11.985568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677462, 15.863815, 11.897161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398672, 0.073316, 0.914159,
		0.852298, -0.397645, -0.339803,
		0.338598, 0.914606, -0.221017,
		18.779041, 16.138197, 11.830856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.159019, 15.489918, 12.359656>,  <18.542023, 15.497973, 11.985568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.159019, 15.489918, 12.359656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.100677, 15.878533, 12.284996>,  <19.065672, 16.111702, 12.240200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.100677, 15.878533, 12.284996>,  <19.159019, 15.489918, 12.359656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.100677, 15.878533, 12.284996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223149, 0.216114, 0.950526,
		0.963811, 0.096988, -0.248319,
		-0.145855, 0.971539, -0.186650,
		19.056921, 16.169994, 12.229001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812481, 15.893550, 12.415844>,  <19.159019, 15.489918, 12.359656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812481, 15.893550, 12.415844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.522398, 16.163244, 12.471675>,  <19.348349, 16.325060, 12.505174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.522398, 16.163244, 12.471675>,  <19.812481, 15.893550, 12.415844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.522398, 16.163244, 12.471675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355396, 0.192930, 0.914588,
		0.589719, 0.712871, -0.379535,
		-0.725207, 0.674235, 0.139578,
		19.304836, 16.365515, 12.513548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194233, 16.501785, 12.515858>,  <19.812481, 15.893550, 12.415844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194233, 16.501785, 12.515858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822714, 16.551249, 12.655598>,  <19.599802, 16.580927, 12.739442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822714, 16.551249, 12.655598>,  <20.194233, 16.501785, 12.515858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822714, 16.551249, 12.655598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367039, 0.176775, 0.913254,
		0.051175, 0.976452, -0.209575,
		-0.928797, 0.123658, 0.349350,
		19.544075, 16.588346, 12.760403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274542, 17.149317, 12.880140>,  <20.194233, 16.501785, 12.515858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274542, 17.149317, 12.880140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.967783, 16.924887, 13.004760>,  <19.783728, 16.790228, 13.079532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.967783, 16.924887, 13.004760>,  <20.274542, 17.149317, 12.880140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967783, 16.924887, 13.004760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345542, 0.048083, 0.937171,
		-0.540804, 0.826367, 0.157000,
		-0.766898, -0.561075, 0.311548,
		19.737713, 16.756563, 13.098224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109163, 17.392111, 13.514349>,  <20.274542, 17.149317, 12.880140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.109163, 17.392111, 13.514349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.928404, 17.035421, 13.504415>,  <19.819948, 16.821407, 13.498454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.928404, 17.035421, 13.504415>,  <20.109163, 17.392111, 13.514349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928404, 17.035421, 13.504415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297752, -0.177018, 0.938088,
		-0.840912, 0.416524, 0.345506,
		-0.451896, -0.891725, -0.024836,
		19.792835, 16.767904, 13.496964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746841, 17.326162, 14.139607>,  <20.109163, 17.392111, 13.514349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746841, 17.326162, 14.139607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.774637, 16.949776, 14.007094>,  <19.791315, 16.723944, 13.927587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.774637, 16.949776, 14.007094>,  <19.746841, 17.326162, 14.139607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774637, 16.949776, 14.007094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284543, -0.299594, 0.910648,
		-0.956141, -0.157546, 0.246927,
		0.069491, -0.940969, -0.331283,
		19.795485, 16.667484, 13.907709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364491, 16.890612, 14.545739>,  <19.746841, 17.326162, 14.139607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364491, 16.890612, 14.545739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.625481, 16.624231, 14.401083>,  <19.782074, 16.464403, 14.314289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.625481, 16.624231, 14.401083>,  <19.364491, 16.890612, 14.545739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625481, 16.624231, 14.401083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315527, -0.195147, 0.928634,
		-0.688999, -0.720018, 0.082797,
		0.652475, -0.665952, -0.361641,
		19.821224, 16.424446, 14.292590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.247192, 16.286150, 15.006976>,  <19.364491, 16.890612, 14.545739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.247192, 16.286150, 15.006976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.602985, 16.224161, 14.835023>,  <19.816462, 16.186968, 14.731851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.602985, 16.224161, 14.835023>,  <19.247192, 16.286150, 15.006976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.602985, 16.224161, 14.835023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327900, -0.438762, 0.836642,
		-0.318276, -0.885139, -0.339455,
		0.889484, -0.154975, -0.429884,
		19.869831, 16.177670, 14.706058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378941, 15.604195, 15.137759>,  <19.247192, 16.286150, 15.006976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378941, 15.604195, 15.137759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.731211, 15.777402, 15.060914>,  <19.942574, 15.881326, 15.014807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.731211, 15.777402, 15.060914>,  <19.378941, 15.604195, 15.137759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731211, 15.777402, 15.060914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344924, -0.308160, 0.886603,
		0.324713, -0.847073, -0.420747,
		0.880675, 0.433017, -0.192113,
		19.995413, 15.907307, 15.003280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788519, 15.097658, 15.197920>,  <19.378941, 15.604195, 15.137759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788519, 15.097658, 15.197920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.022671, 15.412786, 15.274513>,  <20.163162, 15.601864, 15.320469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.022671, 15.412786, 15.274513>,  <19.788519, 15.097658, 15.197920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022671, 15.412786, 15.274513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458183, -0.516305, 0.723531,
		0.668878, -0.335808, -0.663202,
		0.585382, 0.787821, 0.191484,
		20.198286, 15.649133, 15.331959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.441889, 14.888625, 15.432772>,  <19.788519, 15.097658, 15.197920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.441889, 14.888625, 15.432772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.432455, 15.243083, 15.617896>,  <20.426794, 15.455757, 15.728971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.432455, 15.243083, 15.617896>,  <20.441889, 14.888625, 15.432772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432455, 15.243083, 15.617896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631443, -0.345702, 0.694096,
		0.775064, 0.308609, -0.551396,
		-0.023585, 0.886144, 0.462810,
		20.425379, 15.508926, 15.756739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102312, 14.893141, 15.617087>,  <20.441889, 14.888625, 15.432772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102312, 14.893141, 15.617087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.924124, 15.172833, 15.840741>,  <20.817211, 15.340649, 15.974934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.924124, 15.172833, 15.840741>,  <21.102312, 14.893141, 15.617087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.924124, 15.172833, 15.840741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563064, -0.266744, 0.782181,
		0.696071, 0.663267, -0.274885,
		-0.445471, 0.699232, 0.559134,
		20.790483, 15.382603, 16.008482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658808, 15.300265, 15.981257>,  <21.102312, 14.893141, 15.617087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658808, 15.300265, 15.981257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.324171, 15.338448, 16.197037>,  <21.123390, 15.361357, 16.326504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.324171, 15.338448, 16.197037>,  <21.658808, 15.300265, 15.981257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324171, 15.338448, 16.197037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468670, -0.385168, 0.794981,
		0.283663, 0.917897, 0.277491,
		-0.836591, 0.095455, 0.539448,
		21.073195, 15.367084, 16.358871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748457, 15.657028, 16.611675>,  <21.658808, 15.300265, 15.981257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748457, 15.657028, 16.611675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455446, 15.385021, 16.624197>,  <21.279640, 15.221817, 16.631710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455446, 15.385021, 16.624197>,  <21.748457, 15.657028, 16.611675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455446, 15.385021, 16.624197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559809, -0.575596, 0.596073,
		-0.387323, 0.454163, 0.802320,
		-0.732526, -0.680019, 0.031303,
		21.235689, 15.181016, 16.633587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406048, 15.287010, 16.389574>,  <21.748457, 15.657028, 16.611675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406048, 15.287010, 16.389574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.371952, 14.888511, 16.383631>,  <22.351494, 14.649411, 16.380066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.371952, 14.888511, 16.383631>,  <22.406048, 15.287010, 16.389574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371952, 14.888511, 16.383631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805826, 0.077701, -0.587033,
		0.585986, -0.038067, -0.809427,
		-0.085240, -0.996250, -0.014856,
		22.346380, 14.589636, 16.379173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.152452, 15.087568, 16.157846>,  <22.406048, 15.287010, 16.389574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.152452, 15.087568, 16.157846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.213184, 15.478098, 16.219475>,  <23.249622, 15.712416, 16.256451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.213184, 15.478098, 16.219475>,  <23.152452, 15.087568, 16.157846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.213184, 15.478098, 16.219475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319357, 0.099059, -0.942443,
		-0.935392, 0.192293, -0.296756,
		0.151829, 0.976325, 0.154069,
		23.258734, 15.770995, 16.265696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.113041, 15.358442, 15.514351>,  <23.152452, 15.087568, 16.157846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.113041, 15.358442, 15.514351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.307970, 15.626076, 15.738795>,  <23.424927, 15.786656, 15.873462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.307970, 15.626076, 15.738795>,  <23.113041, 15.358442, 15.514351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.307970, 15.626076, 15.738795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501571, 0.311523, -0.807081,
		-0.714804, 0.674744, -0.183782,
		0.487321, 0.669085, 0.561110,
		23.454166, 15.826801, 15.907128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076897, 15.987616, 15.188983>,  <23.113041, 15.358442, 15.514351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076897, 15.987616, 15.188983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.398716, 15.977689, 15.426331>,  <23.591808, 15.971732, 15.568739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.398716, 15.977689, 15.426331>,  <23.076897, 15.987616, 15.188983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.398716, 15.977689, 15.426331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558391, 0.371857, -0.741567,
		-0.202245, 0.927958, 0.313035,
		0.804548, -0.024818, 0.593369,
		23.640079, 15.970243, 15.604342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.603331, 16.424118, 14.902565>,  <23.076897, 15.987616, 15.188983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.603331, 16.424118, 14.902565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.821739, 16.259144, 15.194252>,  <23.952784, 16.160160, 15.369265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.821739, 16.259144, 15.194252>,  <23.603331, 16.424118, 14.902565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.821739, 16.259144, 15.194252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837552, 0.288621, -0.463901,
		-0.019139, 0.864058, 0.503029,
		0.546022, -0.412434, 0.729217,
		23.985546, 16.135414, 15.413017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.338112, 16.902664, 14.375921>,  <23.603331, 16.424118, 14.902565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.338112, 16.902664, 14.375921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.547495, 17.213242, 14.516280>,  <23.673124, 17.399588, 14.600495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.547495, 17.213242, 14.516280>,  <23.338112, 16.902664, 14.375921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.547495, 17.213242, 14.516280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686900, 0.140880, 0.712966,
		0.504143, -0.614239, 0.607083,
		0.523458, 0.776442, 0.350897,
		23.704533, 17.446175, 14.621550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.721668, 16.962664, 13.658813>,  <23.338112, 16.902664, 14.375921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.721668, 16.962664, 13.658813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.013256, 17.233963, 13.621758>,  <24.188210, 17.396742, 13.599525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.013256, 17.233963, 13.621758>,  <23.721668, 16.962664, 13.658813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.013256, 17.233963, 13.621758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334769, 0.235176, -0.912481,
		-0.597101, 0.696185, 0.398493,
		0.728972, 0.678247, -0.092637,
		24.231947, 17.437437, 13.593967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.417503, 17.592533, 13.514057>,  <23.721668, 16.962664, 13.658813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.417503, 17.592533, 13.514057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.781248, 17.586315, 13.347771>,  <23.999495, 17.582584, 13.247998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.781248, 17.586315, 13.347771>,  <23.417503, 17.592533, 13.514057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.781248, 17.586315, 13.347771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410507, 0.128440, -0.902767,
		0.067430, 0.991595, 0.110416,
		0.909361, -0.015547, -0.415717,
		24.054056, 17.581652, 13.223056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410589, 18.037640, 13.022026>,  <23.417503, 17.592533, 13.514057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410589, 18.037640, 13.022026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.753801, 17.856306, 12.925470>,  <23.959728, 17.747505, 12.867537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.753801, 17.856306, 12.925470>,  <23.410589, 18.037640, 13.022026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.753801, 17.856306, 12.925470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187297, 0.161443, -0.968946,
		0.478229, 0.876597, 0.053615,
		0.858031, -0.453336, -0.241390,
		24.011211, 17.720304, 12.853053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.829483, 18.509754, 12.610046>,  <23.410589, 18.037640, 13.022026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.829483, 18.509754, 12.610046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.957096, 18.141813, 12.518754>,  <24.033665, 17.921049, 12.463979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.957096, 18.141813, 12.518754>,  <23.829483, 18.509754, 12.610046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.957096, 18.141813, 12.518754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369910, 0.100859, -0.923577,
		0.872573, 0.379078, -0.308085,
		0.319034, -0.919852, -0.228232,
		24.052807, 17.865858, 12.450285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.233162, 18.551350, 12.018734>,  <23.829483, 18.509754, 12.610046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.233162, 18.551350, 12.018734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.130119, 18.165554, 12.042053>,  <24.068295, 17.934076, 12.056045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.130119, 18.165554, 12.042053>,  <24.233162, 18.551350, 12.018734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130119, 18.165554, 12.042053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298300, 0.021995, -0.954219,
		0.919052, -0.263202, -0.293373,
		-0.257605, -0.964490, 0.058299,
		24.052837, 17.876207, 12.059543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286552, 18.279436, 11.385953>,  <24.233162, 18.551350, 12.018734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286552, 18.279436, 11.385953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.077080, 17.982700, 11.553491>,  <23.951397, 17.804659, 11.654014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.077080, 17.982700, 11.553491>,  <24.286552, 18.279436, 11.385953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.077080, 17.982700, 11.553491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436504, -0.188556, -0.879722,
		0.731589, -0.643521, -0.225073,
		-0.523680, -0.741840, 0.418845,
		23.919975, 17.760149, 11.679144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116095, 17.754175, 10.807396>,  <24.286552, 18.279436, 11.385953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116095, 17.754175, 10.807396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.847076, 17.684212, 11.095032>,  <23.685665, 17.642233, 11.267613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.847076, 17.684212, 11.095032>,  <24.116095, 17.754175, 10.807396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847076, 17.684212, 11.095032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686956, -0.213877, -0.694513,
		0.275273, -0.961074, 0.023687,
		-0.672545, -0.174909, 0.719090,
		23.645313, 17.631739, 11.310759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.831699, 17.170135, 10.660454>,  <24.116095, 17.754175, 10.807396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.831699, 17.170135, 10.660454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.553877, 17.333963, 10.897044>,  <23.387184, 17.432261, 11.038999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.553877, 17.333963, 10.897044>,  <23.831699, 17.170135, 10.660454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.553877, 17.333963, 10.897044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712365, -0.276518, -0.645038,
		-0.100635, -0.869362, 0.483821,
		-0.694557, 0.409570, 0.591476,
		23.345510, 17.456835, 11.074487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.270094, 16.765276, 10.479412>,  <23.831699, 17.170135, 10.660454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.270094, 16.765276, 10.479412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.110735, 17.073971, 10.677685>,  <23.015120, 17.259188, 10.796648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.110735, 17.073971, 10.677685>,  <23.270094, 16.765276, 10.479412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.110735, 17.073971, 10.677685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783857, -0.005847, -0.620914,
		-0.476285, -0.635915, 0.607261,
		-0.398399, 0.771737, 0.495681,
		22.991215, 17.305492, 10.826389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.577019, 16.532654, 10.550547>,  <23.270094, 16.765276, 10.479412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.577019, 16.532654, 10.550547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.621544, 16.929688, 10.570104>,  <22.648258, 17.167908, 10.581838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.621544, 16.929688, 10.570104>,  <22.577019, 16.532654, 10.550547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621544, 16.929688, 10.570104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822775, 0.119639, -0.555633,
		-0.557360, 0.021622, 0.829989,
		0.111313, 0.992582, 0.048892,
		22.654938, 17.227463, 10.584771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976627, 16.855062, 10.879520>,  <22.577019, 16.532654, 10.550547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976627, 16.855062, 10.879520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.144180, 17.119946, 10.631000>,  <22.244713, 17.278875, 10.481887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.144180, 17.119946, 10.631000>,  <21.976627, 16.855062, 10.879520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144180, 17.119946, 10.631000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907877, 0.292447, -0.300390,
		-0.017224, 0.689893, 0.723706,
		0.418883, 0.662210, -0.621301,
		22.269846, 17.318609, 10.444610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401093, 17.319891, 10.810695>,  <21.976627, 16.855062, 10.879520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401093, 17.319891, 10.810695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.651518, 17.441519, 10.523478>,  <21.801773, 17.514496, 10.351147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.651518, 17.441519, 10.523478>,  <21.401093, 17.319891, 10.810695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651518, 17.441519, 10.523478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771508, 0.375256, -0.513768,
		0.113228, 0.875627, 0.469527,
		0.626062, 0.304071, -0.718044,
		21.839336, 17.532740, 10.308064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173458, 18.017828, 10.559832>,  <21.401093, 17.319891, 10.810695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173458, 18.017828, 10.559832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.385870, 17.878508, 10.250848>,  <21.513317, 17.794916, 10.065457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.385870, 17.878508, 10.250848>,  <21.173458, 18.017828, 10.559832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385870, 17.878508, 10.250848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702653, 0.328501, -0.631162,
		0.473587, 0.877937, -0.070289,
		0.531031, -0.348300, -0.772459,
		21.545179, 17.774017, 10.019110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.400612, 18.579918, 10.105834>,  <21.173458, 18.017828, 10.559832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.400612, 18.579918, 10.105834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401432, 18.259525, 9.866361>,  <21.401924, 18.067289, 9.722676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401432, 18.259525, 9.866361>,  <21.400612, 18.579918, 10.105834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401432, 18.259525, 9.866361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686898, 0.433967, -0.582962,
		0.726751, 0.412431, -0.549303,
		0.002052, -0.800983, -0.598684,
		21.402048, 18.019230, 9.686756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.174725, 22.668617, 19.119740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298902, 22.329304, 19.291340>,  <14.373407, 22.125715, 19.394300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298902, 22.329304, 19.291340>,  <14.174725, 22.668617, 19.119740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.298902, 22.329304, 19.291340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259517, -0.358524, -0.896723,
		0.914482, 0.389714, 0.108843,
		0.310443, -0.848283, 0.429001,
		14.392035, 22.074820, 19.420040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848614, 22.638014, 18.860140>,  <14.174725, 22.668617, 19.119740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848614, 22.638014, 18.860140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.721005, 22.273544, 18.964436>,  <14.644441, 22.054863, 19.027012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.721005, 22.273544, 18.964436>,  <14.848614, 22.638014, 18.860140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721005, 22.273544, 18.964436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423877, -0.383241, -0.820643,
		0.847675, -0.151282, 0.508488,
		-0.319022, -0.911175, 0.260739,
		14.625299, 22.000193, 19.042658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.430189, 22.220108, 18.843351>,  <14.848614, 22.638014, 18.860140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.430189, 22.220108, 18.843351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142044, 21.942715, 18.838333>,  <14.969157, 21.776278, 18.835323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.142044, 21.942715, 18.838333>,  <15.430189, 22.220108, 18.843351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142044, 21.942715, 18.838333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533386, -0.542315, -0.649149,
		0.443373, -0.474312, 0.760558,
		-0.720361, -0.693485, -0.012544,
		14.925936, 21.734669, 18.834570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826870, 21.596912, 18.733236>,  <15.430189, 22.220108, 18.843351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826870, 21.596912, 18.733236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449890, 21.497202, 18.644106>,  <15.223702, 21.437376, 18.590628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449890, 21.497202, 18.644106>,  <15.826870, 21.596912, 18.733236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449890, 21.497202, 18.644106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334219, -0.683726, -0.648704,
		0.009353, -0.685843, 0.727689,
		-0.942449, -0.249275, -0.222827,
		15.167155, 21.422419, 18.577257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846298, 20.931206, 18.737461>,  <15.826870, 21.596912, 18.733236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846298, 20.931206, 18.737461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519747, 21.008150, 18.519646>,  <15.323816, 21.054317, 18.388956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519747, 21.008150, 18.519646>,  <15.846298, 20.931206, 18.737461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519747, 21.008150, 18.519646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278718, -0.694587, -0.663223,
		-0.505808, -0.693214, 0.513432,
		-0.816379, 0.192360, -0.544539,
		15.274834, 21.065859, 18.356283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568828, 20.373051, 18.510666>,  <15.846298, 20.931206, 18.737461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568828, 20.373051, 18.510666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439942, 20.639393, 18.241501>,  <15.362612, 20.799198, 18.080002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439942, 20.639393, 18.241501>,  <15.568828, 20.373051, 18.510666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.439942, 20.639393, 18.241501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199245, -0.647203, -0.735820,
		-0.925462, -0.371165, 0.075868,
		-0.322212, 0.665857, -0.672914,
		15.343279, 20.839149, 18.039627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087199, 19.923752, 18.155529>,  <15.568828, 20.373051, 18.510666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087199, 19.923752, 18.155529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.143415, 20.238556, 17.915241>,  <15.177145, 20.427439, 17.771069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.143415, 20.238556, 17.915241>,  <15.087199, 19.923752, 18.155529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.143415, 20.238556, 17.915241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119286, -0.615783, -0.778834,
		-0.982863, 0.037801, -0.180422,
		0.140542, 0.787009, -0.600721,
		15.185578, 20.474659, 17.735025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.660537, 19.768780, 17.584011>,  <15.087199, 19.923752, 18.155529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.660537, 19.768780, 17.584011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.959280, 20.015142, 17.483725>,  <15.138526, 20.162960, 17.423552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.959280, 20.015142, 17.483725>,  <14.660537, 19.768780, 17.584011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.959280, 20.015142, 17.483725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255558, -0.613916, -0.746858,
		-0.613916, 0.493725, -0.615908,
		0.746858, 0.615908, -0.250718,
		15.183337, 20.199915, 17.408510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606623, 19.919643, 16.834223>,  <14.660537, 19.768780, 17.584011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606623, 19.919643, 16.834223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994207, 19.988911, 16.904793>,  <15.226758, 20.030472, 16.947134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994207, 19.988911, 16.904793>,  <14.606623, 19.919643, 16.834223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994207, 19.988911, 16.904793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241051, -0.503537, -0.829666,
		-0.054836, 0.846442, -0.529650,
		0.968962, 0.173168, 0.176424,
		15.284896, 20.040861, 16.957720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935894, 19.851675, 16.212317>,  <14.606623, 19.919643, 16.834223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935894, 19.851675, 16.212317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280849, 19.844538, 16.414690>,  <15.487823, 19.840256, 16.536114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280849, 19.844538, 16.414690>,  <14.935894, 19.851675, 16.212317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280849, 19.844538, 16.414690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426243, -0.513598, -0.744671,
		0.273133, 0.857846, -0.435315,
		0.862389, -0.017844, 0.505931,
		15.539566, 19.839184, 16.566469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529961, 20.073229, 15.754324>,  <14.935894, 19.851675, 16.212317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529961, 20.073229, 15.754324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648499, 19.840887, 16.057583>,  <15.719623, 19.701483, 16.239538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648499, 19.840887, 16.057583>,  <15.529961, 20.073229, 15.754324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648499, 19.840887, 16.057583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508446, -0.576023, -0.640063,
		0.808493, 0.575158, 0.124629,
		0.296347, -0.580853, 0.758147,
		15.737404, 19.666632, 16.285027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232891, 19.791857, 15.494863>,  <15.529961, 20.073229, 15.754324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232891, 19.791857, 15.494863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115559, 19.568899, 15.805545>,  <16.045160, 19.435125, 15.991954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115559, 19.568899, 15.805545>,  <16.232891, 19.791857, 15.494863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115559, 19.568899, 15.805545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422991, -0.804262, -0.417423,
		0.857343, 0.206097, 0.471686,
		-0.293330, -0.557393, 0.776705,
		16.027559, 19.401682, 16.038557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810106, 19.452991, 15.973994>,  <16.232891, 19.791857, 15.494863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810106, 19.452991, 15.973994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475084, 19.236673, 15.942897>,  <16.274071, 19.106882, 15.924238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475084, 19.236673, 15.942897>,  <16.810106, 19.452991, 15.973994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475084, 19.236673, 15.942897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521338, -0.748502, -0.409819,
		0.163438, -0.383776, 0.908848,
		-0.837553, -0.540797, -0.077743,
		16.223818, 19.074434, 15.919574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271965, 18.958097, 15.709033>,  <16.810106, 19.452991, 15.973994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271965, 18.958097, 15.709033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156551, 18.981295, 16.091318>,  <17.087303, 18.995213, 16.320688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156551, 18.981295, 16.091318>,  <17.271965, 18.958097, 15.709033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156551, 18.981295, 16.091318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946503, -0.133373, 0.293845,
		0.144507, 0.989368, -0.016407,
		-0.288532, 0.057992, 0.955712,
		17.069992, 18.998692, 16.378033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970058, 18.664501, 15.837902>,  <17.271965, 18.958097, 15.709033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970058, 18.664501, 15.837902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344137, 18.613743, 15.970144>,  <18.568584, 18.583288, 16.049490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344137, 18.613743, 15.970144>,  <17.970058, 18.664501, 15.837902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344137, 18.613743, 15.970144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349873, -0.186891, 0.917966,
		-0.054698, -0.974151, -0.219177,
		0.935199, -0.126895, 0.330606,
		18.624697, 18.575674, 16.069326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884705, 18.190283, 16.367294>,  <17.970058, 18.664501, 15.837902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.884705, 18.190283, 16.367294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263433, 18.308113, 16.419062>,  <18.490671, 18.378811, 16.450123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263433, 18.308113, 16.419062>,  <17.884705, 18.190283, 16.367294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263433, 18.308113, 16.419062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088734, -0.147568, 0.985063,
		0.309273, -0.944166, -0.113582,
		0.946824, 0.294575, 0.129419,
		18.547482, 18.396486, 16.457888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285309, 17.678844, 16.754948>,  <17.884705, 18.190283, 16.367294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285309, 17.678844, 16.754948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464830, 18.030504, 16.819036>,  <18.572542, 18.241501, 16.857489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464830, 18.030504, 16.819036>,  <18.285309, 17.678844, 16.754948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464830, 18.030504, 16.819036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205550, -0.072926, 0.975926,
		0.869670, -0.470930, 0.147980,
		0.448801, 0.879151, 0.160221,
		18.599470, 18.294249, 16.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.631292, 17.607185, 17.436062>,  <18.285309, 17.678844, 16.754948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.631292, 17.607185, 17.436062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629534, 18.005518, 17.399626>,  <18.628479, 18.244518, 17.377764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629534, 18.005518, 17.399626>,  <18.631292, 17.607185, 17.436062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629534, 18.005518, 17.399626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252295, 0.087040, 0.963728,
		0.967641, 0.027220, 0.250861,
		-0.004398, 0.995833, -0.091091,
		18.628214, 18.304268, 17.372299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888775, 17.880913, 18.072676>,  <18.631292, 17.607185, 17.436062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.888775, 17.880913, 18.072676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706318, 18.203671, 17.922554>,  <18.596844, 18.397326, 17.832481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.706318, 18.203671, 17.922554>,  <18.888775, 17.880913, 18.072676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.706318, 18.203671, 17.922554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344406, 0.228805, 0.910512,
		0.820560, 0.544581, 0.173532,
		-0.456143, 0.806895, -0.375305,
		18.569475, 18.445740, 17.809963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167210, 18.565407, 18.428579>,  <18.888775, 17.880913, 18.072676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167210, 18.565407, 18.428579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800234, 18.619602, 18.278942>,  <18.580048, 18.652119, 18.189159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800234, 18.619602, 18.278942>,  <19.167210, 18.565407, 18.428579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800234, 18.619602, 18.278942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339120, 0.225459, 0.913327,
		0.208086, 0.964786, -0.160899,
		-0.917441, 0.135486, -0.374093,
		18.525002, 18.660248, 18.166714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947376, 19.251583, 18.677971>,  <19.167210, 18.565407, 18.428579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947376, 19.251583, 18.677971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600956, 19.081167, 18.573322>,  <18.393105, 18.978918, 18.510532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600956, 19.081167, 18.573322>,  <18.947376, 19.251583, 18.677971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600956, 19.081167, 18.573322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370721, 0.196144, 0.907796,
		-0.335442, 0.883186, -0.327813,
		-0.866051, -0.426040, -0.261621,
		18.341141, 18.953356, 18.494837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578125, 19.637726, 19.060925>,  <18.947376, 19.251583, 18.677971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578125, 19.637726, 19.060925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327637, 19.336838, 18.978937>,  <18.177343, 19.156305, 18.929745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.327637, 19.336838, 18.978937>,  <18.578125, 19.637726, 19.060925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.327637, 19.336838, 18.978937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548979, 0.238760, 0.801009,
		-0.553597, 0.614133, -0.562469,
		-0.626221, -0.752219, -0.204969,
		18.139771, 19.111172, 18.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956007, 19.919792, 19.127558>,  <18.578125, 19.637726, 19.060925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956007, 19.919792, 19.127558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.865883, 19.531113, 19.155935>,  <17.811808, 19.297905, 19.172962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.865883, 19.531113, 19.155935>,  <17.956007, 19.919792, 19.127558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.865883, 19.531113, 19.155935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629316, 0.200736, 0.750777,
		-0.743771, 0.124513, -0.656735,
		-0.225312, -0.971701, 0.070943,
		17.798290, 19.239603, 19.177217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304365, 19.905769, 19.270807>,  <17.956007, 19.919792, 19.127558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304365, 19.905769, 19.270807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419853, 19.539289, 19.381960>,  <17.489145, 19.319401, 19.448650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419853, 19.539289, 19.381960>,  <17.304365, 19.905769, 19.270807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419853, 19.539289, 19.381960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508166, 0.099336, 0.855512,
		-0.811424, -0.388211, -0.436902,
		0.288718, -0.916201, 0.277879,
		17.506470, 19.264429, 19.465324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677080, 19.591757, 19.419733>,  <17.304365, 19.905769, 19.270807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677080, 19.591757, 19.419733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976698, 19.417759, 19.619617>,  <17.156469, 19.313360, 19.739548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976698, 19.417759, 19.619617>,  <16.677080, 19.591757, 19.419733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976698, 19.417759, 19.619617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587884, -0.088610, 0.804078,
		-0.305491, -0.896062, -0.322100,
		0.749045, -0.434996, 0.499711,
		17.201412, 19.287260, 19.769531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387304, 19.038357, 19.838015>,  <16.677080, 19.591757, 19.419733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387304, 19.038357, 19.838015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734776, 19.087990, 20.029850>,  <16.943258, 19.117769, 20.144951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734776, 19.087990, 20.029850>,  <16.387304, 19.038357, 19.838015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734776, 19.087990, 20.029850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481783, -0.013646, 0.876184,
		0.115262, -0.992178, 0.047926,
		0.868677, 0.124080, 0.479588,
		16.995378, 19.125214, 20.173727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303814, 18.736403, 20.385489>,  <16.387304, 19.038357, 19.838015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.303814, 18.736403, 20.385489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616371, 18.962507, 20.491249>,  <16.803905, 19.098169, 20.554705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616371, 18.962507, 20.491249>,  <16.303814, 18.736403, 20.385489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616371, 18.962507, 20.491249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281630, -0.058666, 0.957728,
		0.556878, -0.822823, 0.113354,
		0.781390, 0.565261, 0.264402,
		16.850788, 19.132086, 20.570570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729990, 18.405502, 20.830757>,  <16.303814, 18.736403, 20.385489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729990, 18.405502, 20.830757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825516, 18.788782, 20.893776>,  <16.882832, 19.018749, 20.931587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825516, 18.788782, 20.893776>,  <16.729990, 18.405502, 20.830757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825516, 18.788782, 20.893776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243518, -0.097963, 0.964936,
		0.940035, -0.268808, 0.209944,
		0.238816, 0.958199, 0.157549,
		16.897161, 19.076242, 20.941040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912340, 17.856308, 21.316694>,  <16.729990, 18.405502, 20.830757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912340, 17.856308, 21.316694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784470, 17.611408, 21.605959>,  <16.707748, 17.464468, 21.779518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784470, 17.611408, 21.605959>,  <16.912340, 17.856308, 21.316694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.784470, 17.611408, 21.605959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269061, -0.673137, -0.688834,
		0.908523, -0.414777, 0.050453,
		-0.319674, -0.612247, 0.723161,
		16.688568, 17.427734, 21.822906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300571, 17.282173, 21.055693>,  <16.912340, 17.856308, 21.316694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.300571, 17.282173, 21.055693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019817, 17.165371, 21.315565>,  <16.851364, 17.095289, 21.471489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019817, 17.165371, 21.315565>,  <17.300571, 17.282173, 21.055693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019817, 17.165371, 21.315565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418366, -0.569187, -0.707811,
		0.576476, -0.768608, 0.277339,
		-0.701887, -0.292007, 0.649682,
		16.809252, 17.077768, 21.510469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956867, 16.793062, 20.732960>,  <17.300571, 17.282173, 21.055693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956867, 16.793062, 20.732960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691980, 16.835581, 21.029654>,  <16.533049, 16.861092, 21.207670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691980, 16.835581, 21.029654>,  <16.956867, 16.793062, 20.732960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691980, 16.835581, 21.029654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671784, -0.522712, -0.524861,
		0.331922, -0.845857, 0.417558,
		-0.662219, 0.106296, 0.741732,
		16.493315, 16.867470, 21.252172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724640, 16.108728, 20.918694>,  <16.956867, 16.793062, 20.732960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724640, 16.108728, 20.918694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.438498, 16.371525, 21.013884>,  <16.266813, 16.529203, 21.070997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.438498, 16.371525, 21.013884>,  <16.724640, 16.108728, 20.918694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.438498, 16.371525, 21.013884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683040, -0.585623, -0.436465,
		-0.147391, -0.474772, 0.867679,
		-0.715355, 0.656991, 0.237973,
		16.223892, 16.568623, 21.085276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.101217, 15.697783, 21.308496>,  <16.724640, 16.108728, 20.918694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.101217, 15.697783, 21.308496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951016, 16.042530, 21.172157>,  <15.860896, 16.249378, 21.090353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951016, 16.042530, 21.172157>,  <16.101217, 15.697783, 21.308496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951016, 16.042530, 21.172157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678152, -0.506177, -0.532818,
		-0.631750, 0.031074, 0.774549,
		-0.375502, 0.861870, -0.340850,
		15.838366, 16.301090, 21.069902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439180, 15.728158, 21.470119>,  <16.101217, 15.697783, 21.308496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439180, 15.728158, 21.470119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477308, 15.958430, 21.145279>,  <15.500185, 16.096594, 20.950375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477308, 15.958430, 21.145279>,  <15.439180, 15.728158, 21.470119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477308, 15.958430, 21.145279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680946, -0.557367, -0.475031,
		-0.726104, 0.598276, 0.338878,
		0.095320, 0.575680, -0.812100,
		15.505904, 16.131134, 20.901649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874409, 15.555042, 21.239735>,  <15.439180, 15.728158, 21.470119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874409, 15.555042, 21.239735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054111, 15.764216, 20.949987>,  <15.161932, 15.889721, 20.776140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054111, 15.764216, 20.949987>,  <14.874409, 15.555042, 21.239735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054111, 15.764216, 20.949987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509044, -0.516478, -0.688567,
		-0.734196, 0.678078, 0.034167,
		0.449255, 0.522936, -0.724367,
		15.188887, 15.921097, 20.732677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350130, 15.630433, 20.689165>,  <14.874409, 15.555042, 21.239735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350130, 15.630433, 20.689165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698030, 15.693851, 20.502234>,  <14.906771, 15.731902, 20.390074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698030, 15.693851, 20.502234>,  <14.350130, 15.630433, 20.689165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698030, 15.693851, 20.502234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323025, -0.533019, -0.782014,
		-0.373081, 0.831116, -0.412379,
		0.869750, 0.158545, -0.467331,
		14.958956, 15.741415, 20.362034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222331, 15.924970, 20.006403>,  <14.350130, 15.630433, 20.689165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222331, 15.924970, 20.006403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581539, 15.749040, 20.010675>,  <14.797064, 15.643482, 20.013239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581539, 15.749040, 20.010675>,  <14.222331, 15.924970, 20.006403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581539, 15.749040, 20.010675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285081, -0.600218, -0.747307,
		0.335095, 0.668052, -0.664393,
		0.898020, -0.439825, 0.010682,
		14.850945, 15.617092, 20.013880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437601, 15.847722, 19.389082>,  <14.222331, 15.924970, 20.006403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437601, 15.847722, 19.389082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649552, 15.552320, 19.555859>,  <14.776723, 15.375079, 19.655924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649552, 15.552320, 19.555859>,  <14.437601, 15.847722, 19.389082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649552, 15.552320, 19.555859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281670, -0.616976, -0.734849,
		0.799932, 0.271941, -0.534936,
		0.529878, -0.738505, 0.416941,
		14.808516, 15.330769, 19.680941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.834948, 15.534636, 18.864635>,  <14.437601, 15.847722, 19.389082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.834948, 15.534636, 18.864635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820151, 15.240825, 19.135662>,  <14.811274, 15.064537, 19.298279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820151, 15.240825, 19.135662>,  <14.834948, 15.534636, 18.864635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820151, 15.240825, 19.135662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317846, -0.634172, -0.704840,
		0.947421, -0.241434, -0.210009,
		-0.036990, -0.734530, 0.677567,
		14.809054, 15.020466, 19.338932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112266, 14.975883, 18.574909>,  <14.834948, 15.534636, 18.864635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112266, 14.975883, 18.574909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885956, 14.811826, 18.861038>,  <14.750170, 14.713391, 19.032715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885956, 14.811826, 18.861038>,  <15.112266, 14.975883, 18.574909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.885956, 14.811826, 18.861038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368264, -0.650501, -0.664251,
		0.737754, -0.639243, 0.216996,
		-0.565774, -0.410142, 0.715320,
		14.716224, 14.688784, 19.075634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.273752, 18.646290, 27.174408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.619728, 18.804918, 27.051374>,  <17.827314, 18.900095, 26.977554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.619728, 18.804918, 27.051374>,  <17.273752, 18.646290, 27.174408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619728, 18.804918, 27.051374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114437, -0.440886, -0.890238,
		-0.488652, 0.805203, -0.335958,
		0.864941, 0.396571, -0.307585,
		17.879210, 18.923889, 26.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238874, 19.025063, 26.561268>,  <17.273752, 18.646290, 27.174408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238874, 19.025063, 26.561268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.625597, 18.922894, 26.558558>,  <17.857630, 18.861593, 26.556932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.625597, 18.922894, 26.558558>,  <17.238874, 19.025063, 26.561268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.625597, 18.922894, 26.558558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080331, -0.278685, -0.957017,
		0.242554, 0.925794, -0.289952,
		0.966806, -0.255420, -0.006773,
		17.915638, 18.846268, 26.556526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544086, 19.455444, 26.047640>,  <17.238874, 19.025063, 26.561268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544086, 19.455444, 26.047640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.808802, 19.158594, 26.090128>,  <17.967630, 18.980484, 26.115622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.808802, 19.158594, 26.090128>,  <17.544086, 19.455444, 26.047640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808802, 19.158594, 26.090128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019797, -0.158936, -0.987090,
		0.749428, 0.651143, -0.119874,
		0.661790, -0.742126, 0.106220,
		18.007339, 18.935957, 26.121994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926168, 19.463091, 25.446081>,  <17.544086, 19.455444, 26.047640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926168, 19.463091, 25.446081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.020796, 19.094891, 25.570477>,  <18.077572, 18.873970, 25.645113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.020796, 19.094891, 25.570477>,  <17.926168, 19.463091, 25.446081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020796, 19.094891, 25.570477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055568, -0.332365, -0.941512,
		0.970025, 0.205451, -0.129777,
		0.236568, -0.920502, 0.310986,
		18.091766, 18.818741, 25.663773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553844, 19.247116, 25.078659>,  <17.926168, 19.463091, 25.446081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553844, 19.247116, 25.078659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.365723, 18.924019, 25.220850>,  <18.252850, 18.730160, 25.306166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.365723, 18.924019, 25.220850>,  <18.553844, 19.247116, 25.078659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365723, 18.924019, 25.220850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077594, -0.363398, -0.928397,
		0.879087, -0.464212, 0.108231,
		-0.470304, -0.807743, 0.355478,
		18.224632, 18.681696, 25.327494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786753, 18.718107, 24.603642>,  <18.553844, 19.247116, 25.078659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.786753, 18.718107, 24.603642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.483130, 18.535267, 24.789064>,  <18.300955, 18.425562, 24.900318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.483130, 18.535267, 24.789064>,  <18.786753, 18.718107, 24.603642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483130, 18.535267, 24.789064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164584, -0.554181, -0.815963,
		0.629874, -0.695658, 0.345425,
		-0.759059, -0.457102, 0.463559,
		18.255411, 18.398136, 24.928131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798975, 18.008497, 24.462212>,  <18.786753, 18.718107, 24.603642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798975, 18.008497, 24.462212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.419428, 18.084402, 24.563118>,  <18.191700, 18.129946, 24.623661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.419428, 18.084402, 24.563118>,  <18.798975, 18.008497, 24.462212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419428, 18.084402, 24.563118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314322, -0.494188, -0.810543,
		-0.029145, -0.848391, 0.528567,
		-0.948869, 0.189763, 0.252265,
		18.134768, 18.141331, 24.638798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456543, 17.414711, 24.256157>,  <18.798975, 18.008497, 24.462212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456543, 17.414711, 24.256157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.161388, 17.682009, 24.294044>,  <17.984295, 17.842388, 24.316776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.161388, 17.682009, 24.294044>,  <18.456543, 17.414711, 24.256157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161388, 17.682009, 24.294044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457825, -0.392469, -0.797724,
		-0.495902, -0.631994, 0.595537,
		-0.737887, 0.668245, 0.094716,
		17.940022, 17.882483, 24.322460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813808, 17.059654, 24.244442>,  <18.456543, 17.414711, 24.256157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813808, 17.059654, 24.244442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.709335, 17.433336, 24.147245>,  <17.646650, 17.657545, 24.088928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.709335, 17.433336, 24.147245>,  <17.813808, 17.059654, 24.244442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709335, 17.433336, 24.147245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586473, -0.353515, -0.728750,
		-0.766703, -0.047831, 0.640218,
		-0.261183, 0.934205, -0.242990,
		17.630980, 17.713598, 24.074348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069944, 17.011347, 24.114586>,  <17.813808, 17.059654, 24.244442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069944, 17.011347, 24.114586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.222315, 17.330221, 23.927231>,  <17.313738, 17.521545, 23.814817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.222315, 17.330221, 23.927231>,  <17.069944, 17.011347, 24.114586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.222315, 17.330221, 23.927231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520358, -0.233905, -0.821289,
		-0.764279, 0.556581, 0.325722,
		0.380926, 0.797186, -0.468390,
		17.336592, 17.569378, 23.786715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556948, 17.314936, 23.943365>,  <17.069944, 17.011347, 24.114586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556948, 17.314936, 23.943365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.845760, 17.461241, 23.708456>,  <17.019049, 17.549025, 23.567511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.845760, 17.461241, 23.708456>,  <16.556948, 17.314936, 23.943365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845760, 17.461241, 23.708456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572816, -0.160008, -0.803915,
		-0.388011, 0.916850, 0.093985,
		0.722031, 0.365764, -0.587271,
		17.062370, 17.570971, 23.532274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125717, 17.590519, 23.345493>,  <16.556948, 17.314936, 23.943365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125717, 17.590519, 23.345493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.510965, 17.562799, 23.241497>,  <16.742115, 17.546167, 23.179100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.510965, 17.562799, 23.241497>,  <16.125717, 17.590519, 23.345493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.510965, 17.562799, 23.241497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268949, -0.219369, -0.937840,
		0.007956, 0.973178, -0.229916,
		0.963122, -0.069297, -0.259990,
		16.799902, 17.542009, 23.163500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210684, 18.178827, 22.837685>,  <16.125717, 17.590519, 23.345493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.210684, 18.178827, 22.837685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.487583, 17.893715, 22.792549>,  <16.653723, 17.722647, 22.765469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.487583, 17.893715, 22.792549>,  <16.210684, 18.178827, 22.837685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487583, 17.893715, 22.792549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259644, -0.100112, -0.960501,
		0.673332, 0.694204, -0.254372,
		0.692250, -0.712782, -0.112837,
		16.695257, 17.679880, 22.758698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.527815, 18.343567, 22.121828>,  <16.210684, 18.178827, 22.837685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.527815, 18.343567, 22.121828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.583406, 17.956442, 22.205759>,  <16.616760, 17.724167, 22.256117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.583406, 17.956442, 22.205759>,  <16.527815, 18.343567, 22.121828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583406, 17.956442, 22.205759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231664, -0.237778, -0.943288,
		0.962817, 0.082487, -0.257253,
		0.138978, -0.967810, 0.209828,
		16.625099, 17.666100, 22.268707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.062967, 18.490967, 21.601665>,  <16.527815, 18.343567, 22.121828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.062967, 18.490967, 21.601665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.946070, 18.859568, 21.499348>,  <16.875931, 19.080729, 21.437958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.946070, 18.859568, 21.499348>,  <17.062967, 18.490967, 21.601665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946070, 18.859568, 21.499348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209974, 0.199116, 0.957217,
		0.933008, 0.333451, 0.135301,
		-0.292244, 0.921501, -0.255793,
		16.858397, 19.136019, 21.422609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323421, 18.869574, 22.091352>,  <17.062967, 18.490967, 21.601665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323421, 18.869574, 22.091352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.069828, 19.130581, 21.925325>,  <16.917671, 19.287186, 21.825708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.069828, 19.130581, 21.925325>,  <17.323421, 18.869574, 22.091352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069828, 19.130581, 21.925325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303494, 0.283730, 0.909609,
		0.711305, 0.702649, 0.018156,
		-0.633984, 0.652520, -0.415068,
		16.879633, 19.326338, 21.800804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381168, 19.597374, 22.409492>,  <17.323421, 18.869574, 22.091352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381168, 19.597374, 22.409492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.008427, 19.566345, 22.267714>,  <16.784782, 19.547728, 22.182646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.008427, 19.566345, 22.267714>,  <17.381168, 19.597374, 22.409492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008427, 19.566345, 22.267714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361477, 0.283046, 0.888380,
		0.031411, 0.955964, -0.291798,
		-0.931852, -0.077573, -0.354449,
		16.728870, 19.543074, 22.161379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970787, 20.211510, 22.703785>,  <17.381168, 19.597374, 22.409492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970787, 20.211510, 22.703785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.675920, 19.976103, 22.570980>,  <16.499001, 19.834860, 22.491297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.675920, 19.976103, 22.570980>,  <16.970787, 20.211510, 22.703785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675920, 19.976103, 22.570980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587633, 0.315793, 0.744957,
		-0.333571, 0.744261, -0.578624,
		-0.737168, -0.588515, -0.332013,
		16.454769, 19.799549, 22.471376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502193, 20.609516, 22.476339>,  <16.970787, 20.211510, 22.703785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502193, 20.609516, 22.476339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.327297, 20.265459, 22.581394>,  <16.222361, 20.059025, 22.644426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.327297, 20.265459, 22.581394>,  <16.502193, 20.609516, 22.476339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327297, 20.265459, 22.581394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600484, 0.496615, 0.626732,
		-0.669508, 0.116322, -0.733641,
		-0.437240, -0.860141, 0.262638,
		16.196125, 20.007416, 22.660185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775032, 20.811403, 22.597757>,  <16.502193, 20.609516, 22.476339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.775032, 20.811403, 22.597757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.899958, 20.484081, 22.790771>,  <15.974913, 20.287689, 22.906580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.899958, 20.484081, 22.790771>,  <15.775032, 20.811403, 22.597757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899958, 20.484081, 22.790771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424255, 0.334331, 0.841564,
		-0.849982, -0.467549, -0.242753,
		0.312313, -0.818304, 0.482535,
		15.993651, 20.238590, 22.935532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379424, 20.809689, 23.156046>,  <15.775032, 20.811403, 22.597757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379424, 20.809689, 23.156046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.657551, 20.531662, 23.229164>,  <15.824427, 20.364845, 23.273035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.657551, 20.531662, 23.229164>,  <15.379424, 20.809689, 23.156046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657551, 20.531662, 23.229164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008510, 0.262286, 0.964953,
		-0.718653, -0.669392, 0.188287,
		0.695317, -0.695068, 0.182796,
		15.866146, 20.323141, 23.284002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213655, 20.605719, 23.757023>,  <15.379424, 20.809689, 23.156046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213655, 20.605719, 23.757023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.581611, 20.449484, 23.742914>,  <15.802384, 20.355743, 23.734449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.581611, 20.449484, 23.742914>,  <15.213655, 20.605719, 23.757023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581611, 20.449484, 23.742914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091540, 0.126394, 0.987747,
		-0.381344, -0.911847, 0.152023,
		0.919890, -0.390588, -0.035270,
		15.857577, 20.332308, 23.732332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295095, 20.145239, 24.278015>,  <15.213655, 20.605719, 23.757023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295095, 20.145239, 24.278015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.682364, 20.214909, 24.206114>,  <15.914724, 20.256710, 24.162973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.682364, 20.214909, 24.206114>,  <15.295095, 20.145239, 24.278015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682364, 20.214909, 24.206114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143932, 0.200117, 0.969142,
		0.204814, -0.964159, 0.168670,
		0.968161, 0.174217, -0.179760,
		15.972815, 20.267160, 24.152187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672506, 19.914921, 24.856192>,  <15.295095, 20.145239, 24.278015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672506, 19.914921, 24.856192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.932168, 20.169556, 24.689646>,  <16.087965, 20.322336, 24.589718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.932168, 20.169556, 24.689646>,  <15.672506, 19.914921, 24.856192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932168, 20.169556, 24.689646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264085, 0.324713, 0.908196,
		0.713344, -0.699513, 0.042676,
		0.649153, 0.636587, -0.416363,
		16.126915, 20.360531, 24.564737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292370, 19.853779, 25.207062>,  <15.672506, 19.914921, 24.856192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.292370, 19.853779, 25.207062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.314402, 20.215532, 25.037800>,  <16.327620, 20.432585, 24.936243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.314402, 20.215532, 25.037800>,  <16.292370, 19.853779, 25.207062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314402, 20.215532, 25.037800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459402, 0.353324, 0.814931,
		0.886519, -0.239283, -0.396015,
		0.055078, 0.904381, -0.423156,
		16.330925, 20.486847, 24.910852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982288, 20.109102, 25.387514>,  <16.292370, 19.853779, 25.207062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982288, 20.109102, 25.387514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.783522, 20.438303, 25.277428>,  <16.664261, 20.635822, 25.211376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.783522, 20.438303, 25.277428>,  <16.982288, 20.109102, 25.387514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783522, 20.438303, 25.277428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424027, 0.506977, 0.750450,
		0.757148, 0.256213, -0.600900,
		-0.496918, 0.823000, -0.275216,
		16.634447, 20.685204, 25.194862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404430, 20.655334, 25.532034>,  <16.982288, 20.109102, 25.387514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404430, 20.655334, 25.532034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059725, 20.853386, 25.487823>,  <16.852901, 20.972216, 25.461298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059725, 20.853386, 25.487823>,  <17.404430, 20.655334, 25.532034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059725, 20.853386, 25.487823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248073, 0.601314, 0.759527,
		0.442521, 0.627114, -0.641017,
		-0.861762, 0.495126, -0.110524,
		16.801197, 21.001925, 25.454666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560879, 21.354155, 25.479309>,  <17.404430, 20.655334, 25.532034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560879, 21.354155, 25.479309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.194702, 21.309332, 25.633926>,  <16.974997, 21.282438, 25.726696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.194702, 21.309332, 25.633926>,  <17.560879, 21.354155, 25.479309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194702, 21.309332, 25.633926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231528, 0.638971, 0.733560,
		-0.329190, 0.761025, -0.558995,
		-0.915439, -0.112058, 0.386541,
		16.920071, 21.275715, 25.749889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.471916, 17.860899, 28.044788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.818516, 17.739582, 27.886200>,  <13.026476, 17.666792, 27.791046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.818516, 17.739582, 27.886200>,  <12.471916, 17.860899, 28.044788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818516, 17.739582, 27.886200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421280, -0.018262, -0.906747,
		0.267770, 0.952722, -0.143596,
		0.866500, -0.303294, -0.396472,
		13.078465, 17.648594, 27.767258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.425695, 18.173508, 27.374590>,  <12.471916, 17.860899, 28.044788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.425695, 18.173508, 27.374590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.757901, 17.961048, 27.307507>,  <12.957225, 17.833572, 27.267256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.757901, 17.961048, 27.307507>,  <12.425695, 18.173508, 27.374590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.757901, 17.961048, 27.307507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189995, 0.012888, -0.981700,
		0.523591, 0.847180, -0.090212,
		0.830514, -0.531149, -0.167708,
		13.007055, 17.801702, 27.257195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.677718, 18.368763, 26.751053>,  <12.425695, 18.173508, 27.374590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.677718, 18.368763, 26.751053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.864409, 18.016003, 26.777620>,  <12.976424, 17.804346, 26.793560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.864409, 18.016003, 26.777620>,  <12.677718, 18.368763, 26.751053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.864409, 18.016003, 26.777620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039546, -0.095836, -0.994611,
		0.883516, 0.461587, -0.079605,
		0.466729, -0.881903, 0.066419,
		13.004428, 17.751432, 26.797546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210939, 18.468920, 26.302589>,  <12.677718, 18.368763, 26.751053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210939, 18.468920, 26.302589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.144389, 18.076372, 26.341032>,  <13.104459, 17.840843, 26.364098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.144389, 18.076372, 26.341032>,  <13.210939, 18.468920, 26.302589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.144389, 18.076372, 26.341032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051216, -0.088734, -0.994738,
		0.984732, -0.170421, -0.035499,
		-0.166375, -0.981368, 0.096107,
		13.094477, 17.781961, 26.369864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658064, 18.068554, 25.824383>,  <13.210939, 18.468920, 26.302589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.658064, 18.068554, 25.824383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.391796, 17.785362, 25.918745>,  <13.232036, 17.615448, 25.975363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.391796, 17.785362, 25.918745>,  <13.658064, 18.068554, 25.824383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391796, 17.785362, 25.918745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058745, -0.265425, -0.962340,
		0.743932, -0.654457, 0.135095,
		-0.665668, -0.707979, 0.235904,
		13.192096, 17.572968, 25.989515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832884, 17.461411, 25.432417>,  <13.658064, 18.068554, 25.824383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832884, 17.461411, 25.432417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.444776, 17.397249, 25.504911>,  <13.211910, 17.358753, 25.548409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.444776, 17.397249, 25.504911>,  <13.832884, 17.461411, 25.432417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444776, 17.397249, 25.504911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143812, -0.220182, -0.964799,
		0.194661, -0.962180, 0.190568,
		-0.970271, -0.160402, 0.181234,
		13.153694, 17.349129, 25.559282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671721, 16.814386, 25.157112>,  <13.832884, 17.461411, 25.432417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.671721, 16.814386, 25.157112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319722, 16.998102, 25.205544>,  <13.108523, 17.108332, 25.234602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319722, 16.998102, 25.205544>,  <13.671721, 16.814386, 25.157112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319722, 16.998102, 25.205544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277070, -0.289319, -0.916257,
		-0.385799, -0.839849, 0.381855,
		-0.879995, 0.459291, 0.121078,
		13.055723, 17.135889, 25.241867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116245, 16.377743, 24.897831>,  <13.671721, 16.814386, 25.157112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116245, 16.377743, 24.897831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.996649, 16.758760, 24.874969>,  <12.924891, 16.987371, 24.861252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.996649, 16.758760, 24.874969>,  <13.116245, 16.377743, 24.897831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996649, 16.758760, 24.874969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231595, -0.130539, -0.964014,
		-0.925726, -0.274993, 0.259634,
		-0.298990, 0.952543, -0.057156,
		12.906952, 17.044523, 24.857822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525363, 16.333061, 24.490135>,  <13.116245, 16.377743, 24.897831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525363, 16.333061, 24.490135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.620231, 16.721346, 24.474802>,  <12.677152, 16.954317, 24.465603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.620231, 16.721346, 24.474802>,  <12.525363, 16.333061, 24.490135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.620231, 16.721346, 24.474802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265686, 0.026860, -0.963686,
		-0.934431, 0.238741, 0.264275,
		0.237170, 0.970712, -0.038331,
		12.691381, 17.012560, 24.463303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.944527, 16.599653, 24.221851>,  <12.525363, 16.333061, 24.490135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.944527, 16.599653, 24.221851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.257590, 16.843004, 24.169205>,  <12.445429, 16.989016, 24.137617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.257590, 16.843004, 24.169205>,  <11.944527, 16.599653, 24.221851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.257590, 16.843004, 24.169205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151189, -0.019311, -0.988316,
		-0.603810, 0.793413, 0.076866,
		0.782659, 0.608377, -0.131615,
		12.492388, 17.025517, 24.129721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.650137, 17.043324, 23.652039>,  <11.944527, 16.599653, 24.221851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.650137, 17.043324, 23.652039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.046158, 17.099571, 23.653864>,  <12.283771, 17.133320, 23.654959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.046158, 17.099571, 23.653864>,  <11.650137, 17.043324, 23.652039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.046158, 17.099571, 23.653864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013613, -0.063470, -0.997891,
		-0.140035, 0.988027, -0.064752,
		0.990053, 0.140621, 0.004562,
		12.343174, 17.141758, 23.655231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720863, 17.478548, 23.166729>,  <11.650137, 17.043324, 23.652039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720863, 17.478548, 23.166729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.068716, 17.288637, 23.220877>,  <12.277428, 17.174690, 23.253365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.068716, 17.288637, 23.220877>,  <11.720863, 17.478548, 23.166729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.068716, 17.288637, 23.220877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011646, -0.293843, -0.955783,
		0.493562, 0.829604, -0.261065,
		0.869633, -0.474778, 0.135368,
		12.329606, 17.146204, 23.261488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.145863, 17.875288, 22.741920>,  <11.720863, 17.478548, 23.166729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.145863, 17.875288, 22.741920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.305634, 17.517876, 22.823952>,  <12.401496, 17.303429, 22.873171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.305634, 17.517876, 22.823952>,  <12.145863, 17.875288, 22.741920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.305634, 17.517876, 22.823952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063250, -0.196304, -0.978501,
		0.914580, 0.403812, -0.021893,
		0.399428, -0.893533, 0.205077,
		12.425462, 17.249815, 22.885475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604402, 17.841871, 22.258463>,  <12.145863, 17.875288, 22.741920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604402, 17.841871, 22.258463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.532175, 17.462076, 22.361122>,  <12.488839, 17.234200, 22.422718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.532175, 17.462076, 22.361122>,  <12.604402, 17.841871, 22.258463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532175, 17.462076, 22.361122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065540, -0.248743, -0.966350,
		0.981377, -0.191311, -0.017315,
		-0.180566, -0.949488, 0.256649,
		12.478005, 17.177229, 22.438116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.960737, 18.391209, 21.806120>,  <12.604402, 17.841871, 22.258463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.960737, 18.391209, 21.806120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.816428, 18.689718, 21.582363>,  <12.729843, 18.868824, 21.448109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.816428, 18.689718, 21.582363>,  <12.960737, 18.391209, 21.806120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.816428, 18.689718, 21.582363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025669, 0.591611, 0.805815,
		0.932301, 0.305075, -0.194281,
		-0.360772, 0.746274, -0.559391,
		12.708197, 18.913601, 21.414545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347781, 19.026382, 21.958853>,  <12.960737, 18.391209, 21.806120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347781, 19.026382, 21.958853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.994556, 19.135958, 21.806454>,  <12.782621, 19.201704, 21.715014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.994556, 19.135958, 21.806454>,  <13.347781, 19.026382, 21.958853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994556, 19.135958, 21.806454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108080, 0.671356, 0.733212,
		0.456642, 0.688649, -0.563241,
		-0.883061, 0.273940, -0.380999,
		12.729638, 19.218140, 21.692154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354501, 19.703213, 21.793810>,  <13.347781, 19.026382, 21.958853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354501, 19.703213, 21.793810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.960466, 19.635786, 21.807621>,  <12.724046, 19.595329, 21.815907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.960466, 19.635786, 21.807621>,  <13.354501, 19.703213, 21.793810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960466, 19.635786, 21.807621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111902, 0.780041, 0.615640,
		-0.130708, 0.602595, -0.787270,
		-0.985085, -0.168566, 0.034526,
		12.664941, 19.585217, 21.817978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.000560, 20.381657, 21.892879>,  <13.354501, 19.703213, 21.793810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.000560, 20.381657, 21.892879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.755162, 20.084776, 22.000778>,  <12.607924, 19.906649, 22.065517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.755162, 20.084776, 22.000778>,  <13.000560, 20.381657, 21.892879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.755162, 20.084776, 22.000778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308744, 0.539822, 0.783115,
		-0.726844, 0.397153, -0.560327,
		-0.613494, -0.742200, 0.269748,
		12.571114, 19.862116, 22.081703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562422, 20.768698, 22.317686>,  <13.000560, 20.381657, 21.892879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562422, 20.768698, 22.317686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.476609, 20.386997, 22.400997>,  <12.425121, 20.157976, 22.450983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.476609, 20.386997, 22.400997>,  <12.562422, 20.768698, 22.317686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.476609, 20.386997, 22.400997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132554, 0.239714, 0.961752,
		-0.967681, 0.178718, -0.177916,
		-0.214531, -0.954252, 0.208276,
		12.412250, 20.100721, 22.463480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070021, 20.758896, 22.850506>,  <12.562422, 20.768698, 22.317686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070021, 20.758896, 22.850506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.239087, 20.399170, 22.895374>,  <12.340528, 20.183334, 22.922295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.239087, 20.399170, 22.895374>,  <12.070021, 20.758896, 22.850506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239087, 20.399170, 22.895374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021752, 0.133800, 0.990770,
		-0.906024, -0.416325, 0.076115,
		0.422667, -0.899317, 0.112169,
		12.365887, 20.129375, 22.929026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.692944, 20.383949, 23.328232>,  <12.070021, 20.758896, 22.850506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.692944, 20.383949, 23.328232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.057908, 20.220343, 23.322407>,  <12.276887, 20.122179, 23.318913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.057908, 20.220343, 23.322407>,  <11.692944, 20.383949, 23.328232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.057908, 20.220343, 23.322407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100447, 0.189297, 0.976769,
		-0.396757, -0.892677, 0.213802,
		0.912411, -0.409016, -0.014562,
		12.331632, 20.097637, 23.318039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802194, 20.018213, 24.009296>,  <11.692944, 20.383949, 23.328232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802194, 20.018213, 24.009296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.182802, 20.009829, 23.886549>,  <12.411167, 20.004797, 23.812901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.182802, 20.009829, 23.886549>,  <11.802194, 20.018213, 24.009296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182802, 20.009829, 23.886549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307447, 0.094367, 0.946874,
		0.009108, -0.995317, 0.096238,
		0.951521, -0.020964, -0.306867,
		12.468259, 20.003540, 23.794489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133744, 19.458988, 24.368822>,  <11.802194, 20.018213, 24.009296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133744, 19.458988, 24.368822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.394990, 19.744459, 24.267546>,  <12.551738, 19.915741, 24.206779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.394990, 19.744459, 24.267546>,  <12.133744, 19.458988, 24.368822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.394990, 19.744459, 24.267546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262208, 0.100538, 0.959760,
		0.710415, -0.693222, -0.121469,
		0.653115, 0.713677, -0.253192,
		12.590924, 19.958563, 24.191587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633525, 19.260380, 24.735842>,  <12.133744, 19.458988, 24.368822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633525, 19.260380, 24.735842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.699602, 19.641914, 24.635519>,  <12.739248, 19.870836, 24.575325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.699602, 19.641914, 24.635519>,  <12.633525, 19.260380, 24.735842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.699602, 19.641914, 24.635519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257355, 0.203803, 0.944581,
		0.952092, -0.220585, -0.211808,
		0.165194, 0.953838, -0.250808,
		12.749160, 19.928066, 24.560276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374010, 19.308784, 24.847700>,  <12.633525, 19.260380, 24.735842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374010, 19.308784, 24.847700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.187457, 19.662413, 24.859758>,  <13.075525, 19.874590, 24.866993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.187457, 19.662413, 24.859758>,  <13.374010, 19.308784, 24.847700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187457, 19.662413, 24.859758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258119, 0.103417, 0.960562,
		0.846086, 0.455771, -0.276427,
		-0.466383, 0.884069, 0.030144,
		13.047543, 19.927633, 24.868801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823669, 19.584318, 25.174036>,  <13.374010, 19.308784, 24.847700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823669, 19.584318, 25.174036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.513278, 19.835733, 25.195198>,  <13.327043, 19.986582, 25.207895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.513278, 19.835733, 25.195198>,  <13.823669, 19.584318, 25.174036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513278, 19.835733, 25.195198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296649, 0.289644, 0.910003,
		0.556647, 0.721837, -0.411213,
		-0.775979, 0.628536, 0.052903,
		13.280484, 20.024294, 25.211069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.074656, 20.256189, 25.363649>,  <13.823669, 19.584318, 25.174036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.074656, 20.256189, 25.363649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.689099, 20.260284, 25.470085>,  <13.457765, 20.262741, 25.533947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.689099, 20.260284, 25.470085>,  <14.074656, 20.256189, 25.363649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689099, 20.260284, 25.470085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263589, 0.178607, 0.947956,
		-0.037819, 0.983867, -0.174857,
		-0.963893, 0.010239, 0.266092,
		13.399931, 20.263355, 25.549913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.964524, 20.838678, 25.811533>,  <14.074656, 20.256189, 25.363649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.964524, 20.838678, 25.811533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.671719, 20.577772, 25.890230>,  <13.496036, 20.421228, 25.937449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.671719, 20.577772, 25.890230>,  <13.964524, 20.838678, 25.811533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671719, 20.577772, 25.890230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220443, 0.046478, 0.974292,
		-0.644640, 0.756565, 0.109765,
		-0.732014, -0.652264, 0.196741,
		13.452114, 20.382093, 25.949253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970996, 21.376152, 25.229435>,  <13.964524, 20.838678, 25.811533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970996, 21.376152, 25.229435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.005718, 21.774355, 25.244576>,  <14.026551, 22.013277, 25.253660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.005718, 21.774355, 25.244576>,  <13.970996, 21.376152, 25.229435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005718, 21.774355, 25.244576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103104, 0.028815, -0.994253,
		-0.990875, 0.090210, -0.100140,
		0.086806, 0.995506, 0.037853,
		14.031760, 22.073008, 25.255932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525219, 21.646420, 24.765594>,  <13.970996, 21.376152, 25.229435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525219, 21.646420, 24.765594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.754812, 21.972174, 24.799816>,  <13.892569, 22.167625, 24.820349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.754812, 21.972174, 24.799816>,  <13.525219, 21.646420, 24.765594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.754812, 21.972174, 24.799816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013125, 0.113613, -0.993438,
		-0.818761, 0.569095, 0.075901,
		0.573984, 0.814385, 0.085553,
		13.927008, 22.216490, 24.825481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.155824, 22.218061, 24.514071>,  <13.525219, 21.646420, 24.765594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.155824, 22.218061, 24.514071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.550110, 22.275127, 24.478268>,  <13.786682, 22.309366, 24.456787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.550110, 22.275127, 24.478268>,  <13.155824, 22.218061, 24.514071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550110, 22.275127, 24.478268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121064, 0.230767, -0.965448,
		-0.117080, 0.962494, 0.244742,
		0.985716, 0.142664, -0.089506,
		13.845824, 22.317926, 24.451416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161641, 22.580580, 23.933598>,  <13.155824, 22.218061, 24.514071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161641, 22.580580, 23.933598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.554927, 22.511166, 23.956141>,  <13.790898, 22.469517, 23.969667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.554927, 22.511166, 23.956141>,  <13.161641, 22.580580, 23.933598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554927, 22.511166, 23.956141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084867, 0.161519, -0.983214,
		0.161519, 0.971492, 0.173535,
		0.983214, -0.173535, 0.056359,
		13.849891, 22.459105, 23.973049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506996, 23.172020, 23.599701>,  <13.161641, 22.580580, 23.933598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506996, 23.172020, 23.599701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.771680, 22.872118, 23.600677>,  <13.930490, 22.692177, 23.601263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.771680, 22.872118, 23.600677>,  <13.506996, 23.172020, 23.599701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771680, 22.872118, 23.600677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089320, 0.075596, -0.993130,
		0.744422, 0.657381, 0.116991,
		0.661709, -0.749757, 0.002442,
		13.970193, 22.647190, 23.601410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052816, 23.344564, 23.229408>,  <13.506996, 23.172020, 23.599701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052816, 23.344564, 23.229408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.117533, 22.949888, 23.222942>,  <14.156363, 22.713081, 23.219063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.117533, 22.949888, 23.222942>,  <14.052816, 23.344564, 23.229408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.117533, 22.949888, 23.222942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197791, 0.048470, -0.979045,
		0.966800, 0.155203, 0.203001,
		0.161790, -0.986693, -0.016163,
		14.166070, 22.653881, 23.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659490, 23.215050, 22.867062>,  <14.052816, 23.344564, 23.229408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659490, 23.215050, 22.867062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.483424, 22.855946, 22.873760>,  <14.377785, 22.640482, 22.877779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.483424, 22.855946, 22.873760>,  <14.659490, 23.215050, 22.867062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.483424, 22.855946, 22.873760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119065, -0.076844, -0.989908,
		0.889989, -0.433727, 0.140716,
		-0.440163, -0.897762, 0.016748,
		14.351376, 22.586617, 22.878784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.044076, 22.857918, 22.364031>,  <14.659490, 23.215050, 22.867062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.044076, 22.857918, 22.364031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.700651, 22.655722, 22.398323>,  <14.494596, 22.534405, 22.418900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.700651, 22.655722, 22.398323>,  <15.044076, 22.857918, 22.364031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700651, 22.655722, 22.398323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021346, -0.202309, -0.979089,
		0.512265, -0.838779, 0.184485,
		-0.858562, -0.505491, 0.085731,
		14.443083, 22.504074, 22.424042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030706, 22.077215, 22.096804>,  <15.044076, 22.857918, 22.364031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030706, 22.077215, 22.096804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.699017, 22.285872, 22.016525>,  <14.500003, 22.411064, 21.968359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.699017, 22.285872, 22.016525>,  <15.030706, 22.077215, 22.096804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699017, 22.285872, 22.016525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007328, -0.348905, -0.937130,
		-0.558868, -0.778561, 0.285498,
		-0.829224, 0.521640, -0.200697,
		14.450249, 22.442364, 21.956316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.617065, 21.549576, 21.651255>,  <15.030706, 22.077215, 22.096804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.617065, 21.549576, 21.651255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.434513, 21.901220, 21.596294>,  <14.324982, 22.112207, 21.563318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.434513, 21.901220, 21.596294>,  <14.617065, 21.549576, 21.651255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434513, 21.901220, 21.596294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070217, -0.189523, -0.979362,
		-0.887009, -0.437315, 0.148223,
		-0.456382, 0.879111, -0.137402,
		14.297599, 22.164953, 21.555075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.097085, 21.310431, 21.210060>,  <14.617065, 21.549576, 21.651255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.097085, 21.310431, 21.210060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.140313, 21.705698, 21.166523>,  <14.166250, 21.942858, 21.140402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.140313, 21.705698, 21.166523>,  <14.097085, 21.310431, 21.210060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140313, 21.705698, 21.166523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078049, -0.100710, -0.991850,
		-0.991075, 0.115685, 0.066242,
		0.108070, 0.988167, -0.108841,
		14.172734, 22.002148, 21.133871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511458, 21.513784, 20.764856>,  <14.097085, 21.310431, 21.210060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511458, 21.513784, 20.764856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.805647, 21.783594, 20.739239>,  <13.982160, 21.945480, 20.723869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.805647, 21.783594, 20.739239>,  <13.511458, 21.513784, 20.764856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805647, 21.783594, 20.739239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224550, -0.331830, -0.916224,
		-0.639265, 0.659475, -0.395515,
		0.735471, 0.674523, -0.064042,
		14.026288, 21.985950, 20.720026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371107, 21.936680, 20.144112>,  <13.511458, 21.513784, 20.764856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371107, 21.936680, 20.144112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.764793, 21.964025, 20.209408>,  <14.001005, 21.980433, 20.248587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.764793, 21.964025, 20.209408>,  <13.371107, 21.936680, 20.144112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.764793, 21.964025, 20.209408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170875, -0.126931, -0.977082,
		-0.046075, 0.989553, -0.136609,
		0.984215, 0.068362, 0.163242,
		14.060058, 21.984533, 20.258381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.517521, 22.361675, 19.595139>,  <13.371107, 21.936680, 20.144112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.517521, 22.361675, 19.595139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.869742, 22.213369, 19.713228>,  <14.081076, 22.124386, 19.784082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.869742, 22.213369, 19.713228>,  <13.517521, 22.361675, 19.595139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869742, 22.213369, 19.713228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218580, -0.235011, -0.947097,
		0.420533, 0.898500, -0.125898,
		0.880554, -0.370767, 0.295223,
		14.133908, 22.102139, 19.801796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.128161, 4.623825, 6.343521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.314066, 4.708099, 6.687522>,  <4.425610, 4.758664, 6.893923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.314066, 4.708099, 6.687522>,  <4.128161, 4.623825, 6.343521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.314066, 4.708099, 6.687522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545425, 0.833246, 0.090626,
		-0.697501, -0.511187, 0.502176,
		0.464763, 0.210687, 0.860004,
		4.453496, 4.771306, 6.945523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536937, 4.961802, 6.664891>,  <4.128161, 4.623825, 6.343521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536937, 4.961802, 6.664891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.895201, 5.103158, 6.772897>,  <4.110159, 5.187972, 6.837701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.895201, 5.103158, 6.772897>,  <3.536937, 4.961802, 6.664891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.895201, 5.103158, 6.772897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409375, 0.892356, 0.190034,
		-0.173794, -0.280744, 0.943917,
		0.895660, 0.353389, 0.270015,
		4.163899, 5.209175, 6.853902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.530128, 5.172253, 7.404030>,  <3.536937, 4.961802, 6.664891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.530128, 5.172253, 7.404030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.782214, 5.372530, 7.166666>,  <3.933465, 5.492696, 7.024247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.782214, 5.372530, 7.166666>,  <3.530128, 5.172253, 7.404030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.782214, 5.372530, 7.166666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305523, 0.862552, 0.403310,
		0.713782, -0.072872, 0.696566,
		0.630215, 0.500693, -0.593411,
		3.971278, 5.522738, 6.988642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.214808, 5.592585, 7.658380>,  <3.530128, 5.172253, 7.404030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.214808, 5.592585, 7.658380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.002764, 5.742345, 7.354062>,  <3.875538, 5.832201, 7.171471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.002764, 5.742345, 7.354062>,  <4.214808, 5.592585, 7.658380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.002764, 5.742345, 7.354062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384109, 0.693867, 0.609105,
		0.755939, 0.615120, -0.224015,
		-0.530109, 0.374400, -0.760795,
		3.843731, 5.854665, 7.125823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.476551, 6.264996, 7.470930>,  <4.214808, 5.592585, 7.658380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.476551, 6.264996, 7.470930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.085532, 6.187731, 7.437242>,  <3.850921, 6.141372, 7.417029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.085532, 6.187731, 7.437242>,  <4.476551, 6.264996, 7.470930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.085532, 6.187731, 7.437242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200133, 0.725928, 0.658009,
		-0.065965, 0.660089, -0.748286,
		-0.977546, -0.193162, -0.084219,
		3.792269, 6.129782, 7.411976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.962031, 6.838921, 7.152584>,  <4.476551, 6.264996, 7.470930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.962031, 6.838921, 7.152584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.748920, 6.620041, 7.410800>,  <3.621054, 6.488714, 7.565731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.748920, 6.620041, 7.410800>,  <3.962031, 6.838921, 7.152584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.748920, 6.620041, 7.410800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372817, 0.836574, 0.401436,
		-0.759708, -0.026794, -0.649712,
		-0.532776, -0.547198, 0.645542,
		3.589087, 6.455882, 7.604463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.410432, 7.281147, 7.238951>,  <3.962031, 6.838921, 7.152584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.410432, 7.281147, 7.238951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.477123, 7.033048, 7.545544>,  <3.517137, 6.884188, 7.729499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.477123, 7.033048, 7.545544>,  <3.410432, 7.281147, 7.238951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.477123, 7.033048, 7.545544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212344, 0.736534, 0.642205,
		-0.962867, -0.269830, -0.008906,
		0.166726, -0.620249, 0.766481,
		3.527140, 6.846973, 7.775488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.842666, 7.247152, 7.773764>,  <3.410432, 7.281147, 7.238951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.842666, 7.247152, 7.773764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.214280, 7.238665, 7.921518>,  <3.437248, 7.233572, 8.010170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.214280, 7.238665, 7.921518>,  <2.842666, 7.247152, 7.773764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.214280, 7.238665, 7.921518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214709, 0.782139, 0.584943,
		-0.301322, -0.622742, 0.722078,
		0.929034, -0.021219, 0.369384,
		3.492990, 7.232299, 8.032333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.844661, 7.398003, 8.534774>,  <2.842666, 7.247152, 7.773764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.844661, 7.398003, 8.534774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.211369, 7.488199, 8.402902>,  <3.431393, 7.542317, 8.323778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.211369, 7.488199, 8.402902>,  <2.844661, 7.398003, 8.534774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.211369, 7.488199, 8.402902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085928, 0.694731, 0.714119,
		0.390067, -0.683010, 0.617531,
		0.916768, 0.225491, -0.329681,
		3.486399, 7.555847, 8.303997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.408001, 7.388661, 9.120301>,  <2.844661, 7.398003, 8.534774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.408001, 7.388661, 9.120301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.546469, 7.608755, 8.816352>,  <3.629550, 7.740812, 8.633983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.546469, 7.608755, 8.816352>,  <3.408001, 7.388661, 9.120301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.546469, 7.608755, 8.816352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310793, 0.696959, 0.646263,
		0.885198, -0.459880, 0.070256,
		0.346169, 0.550236, -0.759874,
		3.650320, 7.773826, 8.588389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.968225, 7.710546, 9.385233>,  <3.408001, 7.388661, 9.120301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.968225, 7.710546, 9.385233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.826787, 7.934206, 9.085280>,  <3.741924, 8.068401, 8.905309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.826787, 7.934206, 9.085280>,  <3.968225, 7.710546, 9.385233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826787, 7.934206, 9.085280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148862, 0.825091, 0.545037,
		0.923477, 0.081094, -0.374984,
		-0.353595, 0.559150, -0.749881,
		3.720708, 8.101951, 8.860316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.458284, 8.154472, 9.243991>,  <3.968225, 7.710546, 9.385233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.458284, 8.154472, 9.243991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.120827, 8.311903, 9.097916>,  <3.918352, 8.406362, 9.010270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.120827, 8.311903, 9.097916>,  <4.458284, 8.154472, 9.243991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.120827, 8.311903, 9.097916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155031, 0.829777, 0.536130,
		0.514033, 0.395688, -0.761053,
		-0.843644, 0.393576, -0.365189,
		3.867733, 8.429976, 8.988359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.653005, 8.812653, 9.204021>,  <4.458284, 8.154472, 9.243991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.653005, 8.812653, 9.204021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.259901, 8.843534, 9.136823>,  <4.024038, 8.862062, 9.096503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.259901, 8.843534, 9.136823>,  <4.653005, 8.812653, 9.204021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.259901, 8.843534, 9.136823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037068, 0.807925, 0.588118,
		0.181134, 0.584206, -0.791134,
		-0.982760, 0.077202, -0.167998,
		3.965073, 8.866694, 9.086423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.501218, 9.526523, 8.995770>,  <4.653005, 8.812653, 9.204021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.501218, 9.526523, 8.995770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.187666, 9.349470, 9.169946>,  <3.999535, 9.243238, 9.274451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.187666, 9.349470, 9.169946>,  <4.501218, 9.526523, 8.995770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.187666, 9.349470, 9.169946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018462, 0.717598, 0.696213,
		-0.620638, 0.537708, -0.570682,
		-0.783880, -0.442632, 0.435442,
		3.952502, 9.216681, 9.300578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.112926, 10.143120, 9.260576>,  <4.501218, 9.526523, 8.995770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.112926, 10.143120, 9.260576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.930858, 9.836960, 9.442558>,  <3.821618, 9.653264, 9.551747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.930858, 9.836960, 9.442558>,  <4.112926, 10.143120, 9.260576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.930858, 9.836960, 9.442558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262813, 0.603676, 0.752665,
		-0.850736, 0.223020, -0.475931,
		-0.455168, -0.765400, 0.454956,
		3.794308, 9.607340, 9.579045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.677141, 10.463145, 9.603697>,  <4.112926, 10.143120, 9.260576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.677141, 10.463145, 9.603697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.670879, 10.117375, 9.804705>,  <3.667122, 9.909914, 9.925309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.670879, 10.117375, 9.804705>,  <3.677141, 10.463145, 9.603697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.670879, 10.117375, 9.804705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371507, 0.471631, 0.799716,
		-0.928298, -0.174169, -0.328523,
		-0.015656, -0.864424, 0.502520,
		3.666183, 9.858048, 9.955461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.916361, 10.435941, 9.877016>,  <3.677141, 10.463145, 9.603697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.916361, 10.435941, 9.877016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.155528, 10.208516, 10.103019>,  <3.299029, 10.072062, 10.238621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.155528, 10.208516, 10.103019>,  <2.916361, 10.435941, 9.877016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.155528, 10.208516, 10.103019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266166, 0.524057, 0.809024,
		-0.756076, -0.634115, 0.162012,
		0.597918, -0.568561, 0.565006,
		3.334904, 10.037948, 10.272521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.492590, 10.433455, 10.553790>,  <2.916361, 10.435941, 9.877016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.492590, 10.433455, 10.553790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.868944, 10.318290, 10.625166>,  <3.094757, 10.249190, 10.667992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.868944, 10.318290, 10.625166>,  <2.492590, 10.433455, 10.553790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.868944, 10.318290, 10.625166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028974, 0.456457, 0.889273,
		-0.337483, -0.841875, 0.421132,
		0.940886, -0.287913, 0.178439,
		3.151210, 10.231915, 10.678698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508300, 10.116153, 11.267380>,  <2.492590, 10.433455, 10.553790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508300, 10.116153, 11.267380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.882562, 10.217835, 11.169461>,  <3.107120, 10.278845, 11.110710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<2.882562, 10.217835, 11.169461>,  <2.508300, 10.116153, 11.267380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<2.882562, 10.217835, 11.169461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094589, 0.487629, 0.867912,
		0.339998, -0.835223, 0.432209,
		0.935657, 0.254206, -0.244796,
		3.163260, 10.294098, 11.096023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023788, 9.895606, 11.839172>,  <2.508300, 10.116153, 11.267380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023788, 9.895606, 11.839172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.165460, 10.209022, 11.634967>,  <3.250463, 10.397071, 11.512444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.165460, 10.209022, 11.634967>,  <3.023788, 9.895606, 11.839172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.165460, 10.209022, 11.634967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072706, 0.521176, 0.850346,
		0.932347, -0.338292, 0.127622,
		0.354179, 0.783539, -0.510513,
		3.271714, 10.444083, 11.481812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.573597, 10.158991, 12.213200>,  <3.023788, 9.895606, 11.839172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.573597, 10.158991, 12.213200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.489401, 10.451859, 11.954087>,  <3.438883, 10.627581, 11.798620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.489401, 10.451859, 11.954087>,  <3.573597, 10.158991, 12.213200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.489401, 10.451859, 11.954087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105313, 0.641787, 0.759618,
		0.971907, 0.228112, -0.057983,
		-0.210491, 0.732171, -0.647780,
		3.426254, 10.671511, 11.759753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016523, 10.658819, 12.402720>,  <3.573597, 10.158991, 12.213200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016523, 10.658819, 12.402720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.751341, 10.879542, 12.200334>,  <3.592232, 11.011976, 12.078901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.751341, 10.879542, 12.200334>,  <4.016523, 10.658819, 12.402720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.751341, 10.879542, 12.200334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118934, 0.744872, 0.656522,
		0.739153, 0.375067, -0.559444,
		-0.662954, 0.551807, -0.505966,
		3.552455, 11.045085, 12.048544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.335697, 11.278870, 12.330248>,  <4.016523, 10.658819, 12.402720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.335697, 11.278870, 12.330248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.954078, 11.373985, 12.257309>,  <3.725107, 11.431055, 12.213546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.954078, 11.373985, 12.257309>,  <4.335697, 11.278870, 12.330248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.954078, 11.373985, 12.257309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145781, 0.899964, 0.410867,
		0.261807, 0.365404, -0.893273,
		-0.954047, 0.237790, -0.182348,
		3.667864, 11.445322, 12.202604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.351772, 11.909474, 11.918197>,  <4.335697, 11.278870, 12.330248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.351772, 11.909474, 11.918197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.022883, 11.841990, 12.135631>,  <3.825549, 11.801498, 12.266091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.022883, 11.841990, 12.135631>,  <4.351772, 11.909474, 11.918197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.022883, 11.841990, 12.135631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092609, 0.902675, 0.420240,
		-0.561580, 0.395872, -0.726577,
		-0.822224, -0.168711, 0.543585,
		3.776216, 11.791376, 12.298706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.999983, 12.519887, 11.903860>,  <4.351772, 11.909474, 11.918197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.999983, 12.519887, 11.903860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.850550, 12.338566, 12.227577>,  <3.760891, 12.229774, 12.421807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.850550, 12.338566, 12.227577>,  <3.999983, 12.519887, 11.903860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.850550, 12.338566, 12.227577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025233, 0.867172, 0.497369,
		-0.927254, 0.206229, -0.312521,
		-0.373582, -0.453302, 0.809293,
		3.738476, 12.202576, 12.470365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.513010, 12.961342, 12.205717>,  <3.999983, 12.519887, 11.903860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.513010, 12.961342, 12.205717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.636337, 12.725266, 12.504145>,  <3.710333, 12.583621, 12.683201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.636337, 12.725266, 12.504145>,  <3.513010, 12.961342, 12.205717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.636337, 12.725266, 12.504145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133314, 0.803342, 0.580404,
		-0.941896, -0.079486, 0.326364,
		0.308316, -0.590189, 0.746068,
		3.728832, 12.548210, 12.727965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175183, 13.223536, 12.843386>,  <3.513010, 12.961342, 12.205717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175183, 13.223536, 12.843386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.485006, 13.013295, 12.984129>,  <3.670900, 12.887151, 13.068575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.485006, 13.013295, 12.984129>,  <3.175183, 13.223536, 12.843386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.485006, 13.013295, 12.984129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158422, 0.699776, 0.696574,
		-0.612343, -0.483794, 0.625283,
		0.774557, -0.525601, 0.351859,
		3.717374, 12.855615, 13.089686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.082316, 13.223063, 13.528263>,  <3.175183, 13.223536, 12.843386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.082316, 13.223063, 13.528263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.468945, 13.122159, 13.509918>,  <3.700922, 13.061616, 13.498911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.468945, 13.122159, 13.509918>,  <3.082316, 13.223063, 13.528263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.468945, 13.122159, 13.509918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182375, 0.550704, 0.814533,
		-0.180219, -0.795669, 0.578301,
		0.966572, -0.252262, -0.045863,
		3.758916, 13.046480, 13.496160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.293910, 13.121407, 14.238334>,  <3.082316, 13.223063, 13.528263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.293910, 13.121407, 14.238334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.624262, 13.190612, 14.023676>,  <3.822473, 13.232135, 13.894881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.624262, 13.190612, 14.023676>,  <3.293910, 13.121407, 14.238334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.624262, 13.190612, 14.023676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376250, 0.539763, 0.753055,
		0.419947, -0.823847, 0.380685,
		0.825881, 0.173010, -0.536644,
		3.872026, 13.242516, 13.862682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.854215, 13.108281, 14.706095>,  <3.293910, 13.121407, 14.238334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.854215, 13.108281, 14.706095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.020507, 13.284289, 14.387712>,  <4.120283, 13.389894, 14.196682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.020507, 13.284289, 14.387712>,  <3.854215, 13.108281, 14.706095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.020507, 13.284289, 14.387712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402248, 0.695964, 0.594837,
		0.815699, -0.567464, 0.112336,
		0.415731, 0.440021, -0.795958,
		4.145226, 13.416296, 14.148924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.466074, 13.159400, 14.908408>,  <3.854215, 13.108281, 14.706095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.466074, 13.159400, 14.908408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.403983, 13.435727, 14.625940>,  <4.366728, 13.601523, 14.456459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.403983, 13.435727, 14.625940>,  <4.466074, 13.159400, 14.908408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403983, 13.435727, 14.625940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510766, 0.667998, 0.541199,
		0.845590, -0.276678, -0.456538,
		-0.155228, 0.690817, -0.706170,
		4.357415, 13.642972, 14.414089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.078176, 13.106244, 15.366882>,  <4.466074, 13.159400, 14.908408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.078176, 13.106244, 15.366882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.301968, 12.937909, 15.652506>,  <5.436242, 12.836908, 15.823880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.301968, 12.937909, 15.652506>,  <5.078176, 13.106244, 15.366882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.301968, 12.937909, 15.652506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764739, -0.070121, -0.640513,
		0.319623, 0.904422, 0.282600,
		0.559478, -0.420838, 0.714059,
		5.469811, 12.811658, 15.866723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.742016, 13.349909, 15.306649>,  <5.078176, 13.106244, 15.366882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.742016, 13.349909, 15.306649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.761064, 12.984992, 15.469355>,  <5.772493, 12.766042, 15.566978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.761064, 12.984992, 15.469355>,  <5.742016, 13.349909, 15.306649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.761064, 12.984992, 15.469355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779559, -0.220663, -0.586170,
		0.624515, 0.345010, 0.700677,
		0.047621, -0.912291, 0.406764,
		5.775351, 12.711305, 15.591384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.464509, 13.224420, 15.224525>,  <5.742016, 13.349909, 15.306649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.464509, 13.224420, 15.224525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.311484, 12.871992, 15.335782>,  <6.219669, 12.660536, 15.402536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.311484, 12.871992, 15.335782>,  <6.464509, 13.224420, 15.224525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.311484, 12.871992, 15.335782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597003, -0.465485, -0.653384,
		0.705147, -0.083908, 0.704078,
		-0.382562, -0.881069, 0.278142,
		6.196715, 12.607672, 15.419225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.947515, 12.738413, 15.216762>,  <6.464509, 13.224420, 15.224525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.947515, 12.738413, 15.216762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.650201, 12.471918, 15.192576>,  <6.471812, 12.312021, 15.178065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.650201, 12.471918, 15.192576>,  <6.947515, 12.738413, 15.216762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.650201, 12.471918, 15.192576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431101, -0.407916, -0.804834,
		0.511545, -0.624287, 0.590413,
		-0.743286, -0.666236, -0.060463,
		6.427215, 12.272047, 15.174438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.345294, 12.156778, 14.974295>,  <6.947515, 12.738413, 15.216762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.345294, 12.156778, 14.974295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961215, 12.097704, 14.879457>,  <6.730768, 12.062260, 14.822556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961215, 12.097704, 14.879457>,  <7.345294, 12.156778, 14.974295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.961215, 12.097704, 14.879457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279207, -0.532478, -0.799069,
		-0.008236, -0.833460, 0.552518,
		-0.960196, -0.147686, -0.237093,
		6.673156, 12.053398, 14.808330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.321382, 11.500849, 14.782816>,  <7.345294, 12.156778, 14.974295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.321382, 11.500849, 14.782816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.988898, 11.654783, 14.622319>,  <6.789408, 11.747144, 14.526021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.988898, 11.654783, 14.622319>,  <7.321382, 11.500849, 14.782816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.988898, 11.654783, 14.622319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156578, -0.530456, -0.833126,
		-0.533498, -0.755309, 0.380643,
		-0.831182, 0.384870, -0.401262,
		6.739536, 11.770234, 14.501946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.848626, 10.907789, 14.555810>,  <7.321382, 11.500849, 14.782816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.848626, 10.907789, 14.555810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.719085, 11.228843, 14.355452>,  <6.641360, 11.421475, 14.235236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.719085, 11.228843, 14.355452>,  <6.848626, 10.907789, 14.555810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.719085, 11.228843, 14.355452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024144, -0.536268, -0.843702,
		-0.945799, -0.261141, 0.193051,
		-0.323852, 0.802634, -0.500897,
		6.621929, 11.469633, 14.205182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.241279, 10.650027, 14.179388>,  <6.848626, 10.907789, 14.555810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.241279, 10.650027, 14.179388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.357425, 10.975963, 13.978699>,  <6.427113, 11.171524, 13.858285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.357425, 10.975963, 13.978699>,  <6.241279, 10.650027, 14.179388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.357425, 10.975963, 13.978699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023577, -0.518061, -0.855019,
		-0.956625, 0.260098, -0.131216,
		0.290366, 0.814839, -0.501722,
		6.444535, 11.220414, 13.828182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.839562, 10.630605, 13.570518>,  <6.241279, 10.650027, 14.179388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.839562, 10.630605, 13.570518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.137326, 10.875531, 13.463992>,  <6.315985, 11.022487, 13.400076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.137326, 10.875531, 13.463992>,  <5.839562, 10.630605, 13.570518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.137326, 10.875531, 13.463992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074070, -0.320655, -0.944296,
		-0.663602, 0.722669, -0.193344,
		0.744410, 0.612315, -0.266316,
		6.360649, 11.059226, 13.384097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.625058, 11.007361, 13.045883>,  <5.839562, 10.630605, 13.570518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.625058, 11.007361, 13.045883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.024038, 11.016280, 13.018776>,  <6.263427, 11.021631, 13.002511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.024038, 11.016280, 13.018776>,  <5.625058, 11.007361, 13.045883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.024038, 11.016280, 13.018776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061034, -0.225166, -0.972407,
		-0.036942, 0.974065, -0.223231,
		0.997452, 0.022298, -0.067769,
		6.323274, 11.022969, 12.998446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.715948, 11.339950, 12.432347>,  <5.625058, 11.007361, 13.045883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.715948, 11.339950, 12.432347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.067208, 11.168285, 12.516892>,  <6.277964, 11.065287, 12.567619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.067208, 11.168285, 12.516892>,  <5.715948, 11.339950, 12.432347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.067208, 11.168285, 12.516892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070515, -0.320879, -0.944492,
		0.473161, 0.844309, -0.251517,
		0.878149, -0.429161, 0.211364,
		6.330653, 11.039537, 12.580301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.151631, 11.528742, 11.846363>,  <5.715948, 11.339950, 12.432347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.151631, 11.528742, 11.846363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.341753, 11.216410, 12.008544>,  <6.455825, 11.029011, 12.105852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.341753, 11.216410, 12.008544>,  <6.151631, 11.528742, 11.846363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.341753, 11.216410, 12.008544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355455, -0.251129, -0.900326,
		0.804822, 0.572047, 0.158188,
		0.475303, -0.780831, 0.405451,
		6.484344, 10.982161, 12.130179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.969150, 11.499881, 11.671162>,  <6.151631, 11.528742, 11.846363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.969150, 11.499881, 11.671162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.820565, 11.136792, 11.749196>,  <6.731414, 10.918940, 11.796017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.820565, 11.136792, 11.749196>,  <6.969150, 11.499881, 11.671162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.820565, 11.136792, 11.749196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524840, -0.378623, -0.762356,
		0.765871, -0.180797, 0.617053,
		-0.371462, -0.907721, 0.195087,
		6.709126, 10.864476, 11.807722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.519870, 11.079914, 11.485185>,  <6.969150, 11.499881, 11.671162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.519870, 11.079914, 11.485185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.192560, 10.850010, 11.481706>,  <6.996174, 10.712068, 11.479618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.192560, 10.850010, 11.481706>,  <7.519870, 11.079914, 11.485185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.192560, 10.850010, 11.481706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241495, -0.330002, -0.912567,
		0.521638, -0.748831, 0.408834,
		-0.818275, -0.574761, -0.008697,
		6.947077, 10.677582, 11.479096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.703657, 10.472738, 11.315932>,  <7.519870, 11.079914, 11.485185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.703657, 10.472738, 11.315932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.308117, 10.441990, 11.264920>,  <7.070793, 10.423541, 11.234313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.308117, 10.441990, 11.264920>,  <7.703657, 10.472738, 11.315932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.308117, 10.441990, 11.264920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148779, -0.545635, -0.824711,
		-0.006188, -0.834490, 0.550988,
		-0.988851, -0.076872, -0.127531,
		7.011462, 10.418928, 11.226661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.548070, 9.713482, 11.342680>,  <7.703657, 10.472738, 11.315932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.548070, 9.713482, 11.342680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250831, 9.901953, 11.152607>,  <7.072487, 10.015036, 11.038564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250831, 9.901953, 11.152607>,  <7.548070, 9.713482, 11.342680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.250831, 9.901953, 11.152607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103902, -0.620241, -0.777499,
		-0.661066, -0.627131, 0.411945,
		-0.743099, 0.471176, -0.475181,
		7.027901, 10.043306, 11.010053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.020681, 9.209232, 11.089705>,  <7.548070, 9.713482, 11.342680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.020681, 9.209232, 11.089705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.936637, 9.517051, 10.848491>,  <6.886211, 9.701742, 10.703762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.936637, 9.517051, 10.848491>,  <7.020681, 9.209232, 11.089705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.936637, 9.517051, 10.848491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015361, -0.614131, -0.789055,
		-0.977557, -0.175050, 0.117213,
		-0.210109, 0.769546, -0.603037,
		6.873605, 9.747914, 10.667580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.578501, 8.909378, 10.625771>,  <7.020681, 9.209232, 11.089705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.578501, 8.909378, 10.625771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.658946, 9.250273, 10.432588>,  <6.707212, 9.454809, 10.316678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.658946, 9.250273, 10.432588>,  <6.578501, 8.909378, 10.625771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.658946, 9.250273, 10.432588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114458, -0.469209, -0.875638,
		-0.972859, 0.231379, 0.003182,
		0.201111, 0.852236, -0.482957,
		6.719279, 9.505943, 10.287701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.101225, 9.125995, 10.117005>,  <6.578501, 8.909378, 10.625771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.101225, 9.125995, 10.117005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.438089, 9.304195, 9.995485>,  <6.640208, 9.411116, 9.922573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.438089, 9.304195, 9.995485>,  <6.101225, 9.125995, 10.117005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.438089, 9.304195, 9.995485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153707, -0.341690, -0.927158,
		-0.516857, 0.827512, -0.219281,
		0.842160, 0.445503, -0.303799,
		6.690737, 9.437846, 9.904346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.058199, 9.063774, 9.484936>,  <6.101225, 9.125995, 10.117005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.058199, 9.063774, 9.484936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444104, 9.168474, 9.495686>,  <6.675647, 9.231294, 9.502135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444104, 9.168474, 9.495686>,  <6.058199, 9.063774, 9.484936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.444104, 9.168474, 9.495686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138942, -0.420041, -0.896806,
		-0.223450, 0.868938, -0.441607,
		0.964762, 0.261749, 0.026874,
		6.733532, 9.246999, 9.503748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.293521, 9.571434, 8.854288>,  <6.058199, 9.063774, 9.484936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.293521, 9.571434, 8.854288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.589924, 9.340465, 8.991395>,  <6.767766, 9.201882, 9.073659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.589924, 9.340465, 8.991395>,  <6.293521, 9.571434, 8.854288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.589924, 9.340465, 8.991395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062628, -0.448799, -0.891436,
		0.668570, 0.682027, -0.296400,
		0.741007, -0.577425, 0.342767,
		6.812226, 9.167237, 9.094225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.373232, 22.003908, 25.736246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.094429, 21.787579, 25.924583>,  <16.927147, 21.657782, 26.037586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.094429, 21.787579, 25.924583>,  <17.373232, 22.003908, 25.736246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094429, 21.787579, 25.924583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043472, 0.623547, 0.780576,
		-0.715745, 0.564536, -0.411106,
		-0.697007, -0.540822, 0.470843,
		16.885326, 21.625332, 26.065836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023663, 22.512259, 26.052250>,  <17.373232, 22.003908, 25.736246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023663, 22.512259, 26.052250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.910677, 22.175701, 26.236542>,  <16.842886, 21.973766, 26.347116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.910677, 22.175701, 26.236542>,  <17.023663, 22.512259, 26.052250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910677, 22.175701, 26.236542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170341, 0.428663, 0.887261,
		-0.944032, 0.329103, 0.022240,
		-0.282466, -0.841391, 0.460732,
		16.825937, 21.923285, 26.374762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509398, 22.727190, 26.577518>,  <17.023663, 22.512259, 26.052250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509398, 22.727190, 26.577518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.634418, 22.370119, 26.707405>,  <16.709431, 22.155876, 26.785337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.634418, 22.370119, 26.707405>,  <16.509398, 22.727190, 26.577518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634418, 22.370119, 26.707405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064293, 0.321177, 0.944834,
		-0.947723, -0.316186, 0.042991,
		0.312551, -0.892677, 0.324715,
		16.728184, 22.102316, 26.804819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991358, 22.540882, 27.049442>,  <16.509398, 22.727190, 26.577518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991358, 22.540882, 27.049442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.340744, 22.360968, 27.124004>,  <16.550377, 22.253019, 27.168741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.340744, 22.360968, 27.124004>,  <15.991358, 22.540882, 27.049442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340744, 22.360968, 27.124004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050023, 0.297925, 0.953278,
		-0.484308, -0.841981, 0.237728,
		0.873466, -0.449788, 0.186406,
		16.602783, 22.226030, 27.179926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861109, 22.153811, 27.719000>,  <15.991358, 22.540882, 27.049442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861109, 22.153811, 27.719000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.254566, 22.198248, 27.662283>,  <16.490641, 22.224911, 27.628254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.254566, 22.198248, 27.662283>,  <15.861109, 22.153811, 27.719000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254566, 22.198248, 27.662283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108595, 0.262290, 0.958859,
		0.143711, -0.958573, 0.245935,
		0.983643, 0.111091, -0.141790,
		16.549660, 22.231575, 27.619745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120371, 21.715422, 28.197956>,  <15.861109, 22.153811, 27.719000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120371, 21.715422, 28.197956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.382862, 22.000620, 28.099163>,  <16.540358, 22.171740, 28.039886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.382862, 22.000620, 28.099163>,  <16.120371, 21.715422, 28.197956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382862, 22.000620, 28.099163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042060, 0.292246, 0.955418,
		0.753388, -0.637362, 0.161792,
		0.656230, 0.712995, -0.246982,
		16.579731, 22.214518, 28.025068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716879, 21.571550, 28.673540>,  <16.120371, 21.715422, 28.197956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716879, 21.571550, 28.673540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.751497, 21.944960, 28.534376>,  <16.772268, 22.169006, 28.450878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.751497, 21.944960, 28.534376>,  <16.716879, 21.571550, 28.673540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751497, 21.944960, 28.534376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270655, 0.314053, 0.910009,
		0.958778, -0.172921, -0.225483,
		0.086546, 0.933525, -0.347909,
		16.777462, 22.225018, 28.430004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326548, 21.835571, 28.920275>,  <16.716879, 21.571550, 28.673540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326548, 21.835571, 28.920275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.092785, 22.147440, 28.830313>,  <16.952528, 22.334560, 28.776337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.092785, 22.147440, 28.830313>,  <17.326548, 21.835571, 28.920275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092785, 22.147440, 28.830313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158063, 0.381225, 0.910870,
		0.795919, 0.496768, -0.346027,
		-0.584405, 0.779672, -0.224904,
		16.917463, 22.381342, 28.762842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.675957, 22.403280, 29.077488>,  <17.326548, 21.835571, 28.920275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.675957, 22.403280, 29.077488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.315134, 22.573555, 29.048956>,  <17.098640, 22.675720, 29.031837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.315134, 22.573555, 29.048956>,  <17.675957, 22.403280, 29.077488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315134, 22.573555, 29.048956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116264, 0.398792, 0.909641,
		0.415667, 0.812254, -0.409225,
		-0.902055, 0.425686, -0.071329,
		17.044518, 22.701262, 29.027557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802757, 23.176731, 29.325846>,  <17.675957, 22.403280, 29.077488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802757, 23.176731, 29.325846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.409107, 23.110933, 29.352510>,  <17.172918, 23.071455, 29.368509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.409107, 23.110933, 29.352510>,  <17.802757, 23.176731, 29.325846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409107, 23.110933, 29.352510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018388, 0.279083, 0.960091,
		-0.176533, 0.946073, -0.271628,
		-0.984123, -0.164493, 0.066664,
		17.113871, 23.061584, 29.372509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575779, 23.734951, 29.575815>,  <17.802757, 23.176731, 29.325846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575779, 23.734951, 29.575815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.300339, 23.453348, 29.645329>,  <17.135075, 23.284386, 29.687037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.300339, 23.453348, 29.645329>,  <17.575779, 23.734951, 29.575815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300339, 23.453348, 29.645329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004288, 0.243605, 0.969865,
		-0.725127, 0.667106, -0.170765,
		-0.688602, -0.704007, 0.173784,
		17.093758, 23.242146, 29.697464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959501, 24.087341, 30.050636>,  <17.575779, 23.734951, 29.575815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959501, 24.087341, 30.050636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.914869, 23.693281, 30.102831>,  <16.888090, 23.456844, 30.134148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.914869, 23.693281, 30.102831>,  <16.959501, 24.087341, 30.050636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914869, 23.693281, 30.102831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053258, 0.137045, 0.989132,
		-0.992327, 0.103420, -0.067759,
		-0.111582, -0.985151, 0.130486,
		16.881395, 23.397736, 30.141977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383240, 23.998886, 30.182352>,  <16.959501, 24.087341, 30.050636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383240, 23.998886, 30.182352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.584621, 23.690561, 30.338495>,  <16.705450, 23.505566, 30.432180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.584621, 23.690561, 30.338495>,  <16.383240, 23.998886, 30.182352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584621, 23.690561, 30.338495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237595, 0.310865, 0.920278,
		-0.830712, -0.556065, -0.026635,
		0.503454, -0.770814, 0.390358,
		16.735659, 23.459316, 30.455603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863579, 24.252859, 30.746016>,  <16.383240, 23.998886, 30.182352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863579, 24.252859, 30.746016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.543743, 24.041512, 30.860197>,  <15.351842, 23.914703, 30.928705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.543743, 24.041512, 30.860197>,  <15.863579, 24.252859, 30.746016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543743, 24.041512, 30.860197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082349, 0.374365, 0.923618,
		-0.594875, 0.762021, -0.255827,
		-0.799589, -0.528370, 0.285452,
		15.303866, 23.883001, 30.945833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432961, 23.839811, 30.320116>,  <15.863579, 24.252859, 30.746016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432961, 23.839811, 30.320116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.058076, 23.752113, 30.428608>,  <14.833145, 23.699493, 30.493704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.058076, 23.752113, 30.428608>,  <15.432961, 23.839811, 30.320116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058076, 23.752113, 30.428608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158640, -0.424592, -0.891378,
		0.310594, -0.878437, 0.363151,
		-0.937211, -0.219247, 0.271231,
		14.776913, 23.686338, 30.509977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271011, 23.205933, 30.095490>,  <15.432961, 23.839811, 30.320116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271011, 23.205933, 30.095490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.893368, 23.326170, 30.149607>,  <14.666781, 23.398312, 30.182077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.893368, 23.326170, 30.149607>,  <15.271011, 23.205933, 30.095490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.893368, 23.326170, 30.149607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225729, -0.290441, -0.929887,
		-0.240217, -0.908455, 0.342060,
		-0.944109, 0.300587, 0.135295,
		14.610135, 23.416348, 30.190195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841145, 22.641138, 29.940960>,  <15.271011, 23.205933, 30.095490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841145, 22.641138, 29.940960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.611111, 22.964867, 29.893158>,  <14.473090, 23.159103, 29.864477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.611111, 22.964867, 29.893158>,  <14.841145, 22.641138, 29.940960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611111, 22.964867, 29.893158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320787, -0.357457, -0.877109,
		-0.752579, -0.466076, 0.465187,
		-0.575083, 0.809319, -0.119504,
		14.438585, 23.207663, 29.857307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358640, 22.388739, 29.529785>,  <14.841145, 22.641138, 29.940960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358640, 22.388739, 29.529785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.272461, 22.776812, 29.485365>,  <14.220754, 23.009655, 29.458714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.272461, 22.776812, 29.485365>,  <14.358640, 22.388739, 29.529785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.272461, 22.776812, 29.485365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392679, -0.190195, -0.899794,
		-0.894084, -0.150249, 0.421947,
		-0.215446, 0.970181, -0.111051,
		14.207828, 23.067865, 29.452049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.546733, 22.459049, 29.324701>,  <14.358640, 22.388739, 29.529785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.546733, 22.459049, 29.324701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.787222, 22.761190, 29.220415>,  <13.931516, 22.942474, 29.157843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.787222, 22.761190, 29.220415>,  <13.546733, 22.459049, 29.324701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.787222, 22.761190, 29.220415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358032, -0.037046, -0.932974,
		-0.714383, 0.654270, 0.248168,
		0.601224, 0.755353, -0.260715,
		13.967589, 22.987797, 29.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268247, 22.690489, 28.734053>,  <13.546733, 22.459049, 29.324701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268247, 22.690489, 28.734053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.608792, 22.893839, 28.682308>,  <13.813120, 23.015850, 28.651262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.608792, 22.893839, 28.682308>,  <13.268247, 22.690489, 28.734053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608792, 22.893839, 28.682308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234524, 0.148287, -0.960734,
		-0.469232, 0.848271, 0.245473,
		0.851363, 0.508376, -0.129359,
		13.864202, 23.046352, 28.643501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.081357, 23.204102, 28.339878>,  <13.268247, 22.690489, 28.734053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.081357, 23.204102, 28.339878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.475430, 23.143869, 28.307035>,  <13.711873, 23.107729, 28.287329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.475430, 23.143869, 28.307035>,  <13.081357, 23.204102, 28.339878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475430, 23.143869, 28.307035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081086, 0.012928, -0.996623,
		0.151135, 0.988513, 0.000526,
		0.985182, -0.150582, -0.082109,
		13.770984, 23.098696, 28.282402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.369576, 23.631584, 27.856087>,  <13.081357, 23.204102, 28.339878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.369576, 23.631584, 27.856087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.691972, 23.395252, 27.870516>,  <13.885409, 23.253452, 27.879173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.691972, 23.395252, 27.870516>,  <13.369576, 23.631584, 27.856087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691972, 23.395252, 27.870516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063493, 0.025708, -0.997651,
		0.588516, 0.806385, 0.058234,
		0.805988, -0.590831, 0.036070,
		13.933768, 23.218002, 27.881336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.922233, 23.959803, 27.417694>,  <13.369576, 23.631584, 27.856087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.922233, 23.959803, 27.417694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.008137, 23.571182, 27.457630>,  <14.059679, 23.338011, 27.481592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.008137, 23.571182, 27.457630>,  <13.922233, 23.959803, 27.417694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008137, 23.571182, 27.457630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205595, -0.054962, -0.977093,
		0.954782, 0.230366, 0.187942,
		0.214760, -0.971551, 0.099839,
		14.072564, 23.279716, 27.487581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.435031, 23.804106, 26.861607>,  <13.922233, 23.959803, 27.417694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.435031, 23.804106, 26.861607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.335616, 23.431053, 26.966244>,  <14.275968, 23.207222, 27.029026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.335616, 23.431053, 26.966244>,  <14.435031, 23.804106, 26.861607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335616, 23.431053, 26.966244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140951, -0.302012, -0.942826,
		0.958312, -0.197455, 0.206516,
		-0.248536, -0.932631, 0.261590,
		14.261055, 23.151264, 27.044722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.863358, 23.384007, 26.501909>,  <14.435031, 23.804106, 26.861607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.863358, 23.384007, 26.501909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.575047, 23.129581, 26.612114>,  <14.402061, 22.976927, 26.678236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.575047, 23.129581, 26.612114>,  <14.863358, 23.384007, 26.501909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575047, 23.129581, 26.612114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103790, -0.293952, -0.950168,
		0.685356, -0.713452, 0.145856,
		-0.720774, -0.636065, 0.275511,
		14.358815, 22.938763, 26.694767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033300, 22.653641, 26.293245>,  <14.863358, 23.384007, 26.501909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033300, 22.653641, 26.293245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.635791, 22.672598, 26.333582>,  <14.397285, 22.683973, 26.357784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.635791, 22.672598, 26.333582>,  <15.033300, 22.653641, 26.293245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635791, 22.672598, 26.333582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111083, -0.350689, -0.929880,
		-0.008706, -0.935292, 0.353770,
		-0.993773, 0.047394, 0.100842,
		14.337659, 22.686817, 26.363834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839733, 21.992231, 26.071577>,  <15.033300, 22.653641, 26.293245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839733, 21.992231, 26.071577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.520792, 22.231760, 26.041538>,  <14.329428, 22.375477, 26.023516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.520792, 22.231760, 26.041538>,  <14.839733, 21.992231, 26.071577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520792, 22.231760, 26.041538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170854, -0.343318, -0.923548,
		-0.578824, -0.723563, 0.376057,
		-0.797352, 0.598823, -0.075097,
		14.281586, 22.411407, 26.019009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.174614, 21.600807, 26.023113>,  <14.839733, 21.992231, 26.071577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.174614, 21.600807, 26.023113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.162105, 21.952570, 25.833097>,  <14.154599, 22.163628, 25.719088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.162105, 21.952570, 25.833097>,  <14.174614, 21.600807, 26.023113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162105, 21.952570, 25.833097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305719, -0.460911, -0.833125,
		-0.951608, 0.119175, 0.283265,
		-0.031272, 0.879408, -0.475041,
		14.152723, 22.216393, 25.690586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636130, 21.160963, 26.461714>,  <14.174614, 21.600807, 26.023113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636130, 21.160963, 26.461714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.515874, 20.779680, 26.448969>,  <13.443720, 20.550911, 26.441322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.515874, 20.779680, 26.448969>,  <13.636130, 21.160963, 26.461714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.515874, 20.779680, 26.448969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180215, -0.089581, 0.979540,
		-0.936556, 0.288748, 0.198714,
		-0.300641, -0.953205, -0.031861,
		13.425681, 20.493719, 26.439411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.241265, 21.236477, 27.000654>,  <13.636130, 21.160963, 26.461714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.241265, 21.236477, 27.000654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.290913, 20.845604, 26.931711>,  <13.320701, 20.611080, 26.890347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.290913, 20.845604, 26.931711>,  <13.241265, 21.236477, 27.000654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.290913, 20.845604, 26.931711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104301, -0.185585, 0.977077,
		-0.986771, -0.103295, -0.124955,
		0.124117, -0.977184, -0.172356,
		13.328148, 20.552448, 26.880005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697235, 20.925999, 27.371523>,  <13.241265, 21.236477, 27.000654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697235, 20.925999, 27.371523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.932169, 20.606283, 27.320648>,  <13.073130, 20.414454, 27.290123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.932169, 20.606283, 27.320648>,  <12.697235, 20.925999, 27.371523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.932169, 20.606283, 27.320648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007429, -0.151819, 0.988380,
		-0.809310, -0.581455, -0.083231,
		0.587335, -0.799288, -0.127188,
		13.108370, 20.366497, 27.282492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326876, 20.258858, 27.619175>,  <12.697235, 20.925999, 27.371523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326876, 20.258858, 27.619175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.726434, 20.245640, 27.632545>,  <12.966168, 20.237709, 27.640568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.726434, 20.245640, 27.632545>,  <12.326876, 20.258858, 27.619175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.726434, 20.245640, 27.632545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044298, -0.424077, 0.904542,
		-0.015714, -0.905023, -0.425073,
		0.998895, -0.033044, 0.033427,
		13.026102, 20.235727, 27.642574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442373, 19.772444, 28.127920>,  <12.326876, 20.258858, 27.619175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442373, 19.772444, 28.127920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.798699, 19.951124, 28.094677>,  <13.012495, 20.058332, 28.074730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.798699, 19.951124, 28.094677>,  <12.442373, 19.772444, 28.127920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798699, 19.951124, 28.094677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093947, -0.002123, 0.995575,
		0.444548, -0.894681, -0.043858,
		0.890815, 0.446701, -0.083109,
		13.065944, 20.085135, 28.069744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805903, 19.497723, 28.665716>,  <12.442373, 19.772444, 28.127920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.805903, 19.497723, 28.665716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.011010, 19.825603, 28.563614>,  <13.134074, 20.022333, 28.502352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.011010, 19.825603, 28.563614>,  <12.805903, 19.497723, 28.665716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011010, 19.825603, 28.563614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099899, 0.238333, 0.966032,
		0.852696, -0.520849, 0.040322,
		0.512767, 0.819703, -0.255257,
		13.164841, 20.071514, 28.487036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.274598, 19.533627, 29.124746>,  <12.805903, 19.497723, 28.665716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.274598, 19.533627, 29.124746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.266536, 19.911686, 28.994339>,  <13.261699, 20.138521, 28.916094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.266536, 19.911686, 28.994339>,  <13.274598, 19.533627, 29.124746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266536, 19.911686, 28.994339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068061, 0.326626, 0.942700,
		0.997478, -0.003189, -0.070911,
		-0.020155, 0.945149, -0.326019,
		13.260489, 20.195230, 28.896534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979252, 19.205101, 29.466572>,  <13.274598, 19.533627, 29.124746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979252, 19.205101, 29.466572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.079745, 18.898716, 29.703276>,  <14.140041, 18.714884, 29.845299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.079745, 18.898716, 29.703276>,  <13.979252, 19.205101, 29.466572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079745, 18.898716, 29.703276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166808, -0.636484, -0.753036,
		0.953445, 0.090479, -0.287675,
		0.251234, -0.765965, 0.591760,
		14.155115, 18.668926, 29.880804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403561, 18.804600, 29.193073>,  <13.979252, 19.205101, 29.466572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.403561, 18.804600, 29.193073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.180381, 18.578064, 29.435711>,  <14.046473, 18.442142, 29.581293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.180381, 18.578064, 29.435711>,  <14.403561, 18.804600, 29.193073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180381, 18.578064, 29.435711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129207, -0.662747, -0.737612,
		0.819755, -0.489927, 0.296604,
		-0.557950, -0.566338, 0.606592,
		14.012996, 18.408163, 29.617689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733270, 18.176872, 29.174971>,  <14.403561, 18.804600, 29.193073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733270, 18.176872, 29.174971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.352374, 18.130116, 29.287809>,  <14.123837, 18.102062, 29.355513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.352374, 18.130116, 29.287809>,  <14.733270, 18.176872, 29.174971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352374, 18.130116, 29.287809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158634, -0.600013, -0.784104,
		0.260918, -0.791404, 0.552813,
		-0.952238, -0.116892, 0.282098,
		14.066703, 18.095047, 29.372438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601818, 17.494328, 29.033995>,  <14.733270, 18.176872, 29.174971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601818, 17.494328, 29.033995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.233220, 17.649611, 29.038748>,  <14.012061, 17.742781, 29.041599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.233220, 17.649611, 29.038748>,  <14.601818, 17.494328, 29.033995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233220, 17.649611, 29.038748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228886, -0.518085, -0.824135,
		-0.313780, -0.762156, 0.566268,
		-0.921495, 0.388208, 0.011882,
		13.956772, 17.766073, 29.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164836, 16.992157, 28.886488>,  <14.601818, 17.494328, 29.033995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164836, 16.992157, 28.886488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.929272, 17.304876, 28.804533>,  <13.787933, 17.492508, 28.755360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.929272, 17.304876, 28.804533>,  <14.164836, 16.992157, 28.886488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929272, 17.304876, 28.804533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364656, -0.483274, -0.795909,
		-0.721256, -0.394006, 0.569692,
		-0.588910, 0.781796, -0.204888,
		13.752599, 17.539415, 28.743067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.455995, 16.702583, 28.711939>,  <14.164836, 16.992157, 28.886488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.455995, 16.702583, 28.711939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.503533, 17.061335, 28.541536>,  <13.532057, 17.276587, 28.439295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.503533, 17.061335, 28.541536>,  <13.455995, 16.702583, 28.711939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503533, 17.061335, 28.541536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309667, -0.374166, -0.874131,
		-0.943388, 0.235808, 0.233266,
		0.118847, 0.896880, -0.426006,
		13.539187, 17.330399, 28.413734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.818529, 16.830976, 28.253216>,  <13.455995, 16.702583, 28.711939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.818529, 16.830976, 28.253216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.072471, 17.120733, 28.145723>,  <13.224835, 17.294588, 28.081228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.072471, 17.120733, 28.145723>,  <12.818529, 16.830976, 28.253216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072471, 17.120733, 28.145723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300453, -0.088979, -0.949637,
		-0.711821, 0.683622, 0.161157,
		0.634853, 0.724392, -0.268733,
		13.262927, 17.338051, 28.065104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<21.339952, 20.634583, 25.297663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.989555, 20.680912, 25.484947>,  <20.779318, 20.708710, 25.597319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.989555, 20.680912, 25.484947>,  <21.339952, 20.634583, 25.297663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989555, 20.680912, 25.484947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478675, -0.089569, -0.873412,
		-0.059218, -0.989224, 0.133900,
		-0.875993, 0.115816, 0.468212,
		20.726757, 20.715660, 25.625410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.955263, 20.014877, 25.216787>,  <21.339952, 20.634583, 25.297663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.955263, 20.014877, 25.216787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.715277, 20.331125, 25.265705>,  <20.571285, 20.520874, 25.295055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.715277, 20.331125, 25.265705>,  <20.955263, 20.014877, 25.216787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715277, 20.331125, 25.265705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550305, -0.296888, -0.780398,
		-0.580692, -0.535513, 0.613207,
		-0.599967, 0.790622, 0.122295,
		20.535286, 20.568312, 25.302393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082109, 19.990105, 26.046885>,  <20.955263, 20.014877, 25.216787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082109, 19.990105, 26.046885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.877174, 20.306454, 26.180765>,  <20.754213, 20.496264, 26.261093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.877174, 20.306454, 26.180765>,  <21.082109, 19.990105, 26.046885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877174, 20.306454, 26.180765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647788, -0.611775, 0.453985,
		0.563808, 0.015777, 0.825755,
		-0.512339, 0.790875, 0.334703,
		20.723473, 20.543716, 26.281176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.717825, 20.038513, 26.750740>,  <21.082109, 19.990105, 26.046885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.717825, 20.038513, 26.750740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.809517, 20.400724, 26.893553>,  <20.864532, 20.618052, 26.979240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.809517, 20.400724, 26.893553>,  <20.717825, 20.038513, 26.750740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809517, 20.400724, 26.893553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947333, 0.123271, 0.295577,
		0.223641, -0.405984, 0.886093,
		0.229229, 0.905528, 0.357034,
		20.878286, 20.672382, 27.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515448, 20.032375, 27.427757>,  <20.717825, 20.038513, 26.750740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515448, 20.032375, 27.427757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.484137, 20.412455, 27.307093>,  <20.465349, 20.640501, 27.234694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.484137, 20.412455, 27.307093>,  <20.515448, 20.032375, 27.427757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484137, 20.412455, 27.307093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969573, -0.002161, 0.244795,
		0.231951, 0.311644, 0.921453,
		-0.078280, 0.950196, -0.301661,
		20.460653, 20.697514, 27.216595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.225815, 20.398611, 27.971962>,  <20.515448, 20.032375, 27.427757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.225815, 20.398611, 27.971962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.131638, 20.567734, 27.621922>,  <20.075130, 20.669209, 27.411898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.131638, 20.567734, 27.621922>,  <20.225815, 20.398611, 27.971962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131638, 20.567734, 27.621922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971539, -0.078257, 0.223580,
		0.026048, 0.902834, 0.429199,
		-0.235444, 0.422808, -0.875100,
		20.061005, 20.694576, 27.359392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733957, 20.757071, 28.227602>,  <20.225815, 20.398611, 27.971962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733957, 20.757071, 28.227602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.667542, 20.759758, 27.833164>,  <19.627691, 20.761372, 27.596500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.667542, 20.759758, 27.833164>,  <19.733957, 20.757071, 28.227602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667542, 20.759758, 27.833164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986116, 0.001294, 0.166053,
		0.002392, 0.999977, 0.006411,
		-0.166041, 0.006720, -0.986096,
		19.617729, 20.761774, 27.537334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034740, 20.612892, 28.515577>,  <19.733957, 20.757071, 28.227602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034740, 20.612892, 28.515577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.659784, 20.474232, 28.502098>,  <18.434811, 20.391035, 28.494011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.659784, 20.474232, 28.502098>,  <19.034740, 20.612892, 28.515577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659784, 20.474232, 28.502098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300920, -0.757400, -0.579476,
		0.175353, -0.553335, 0.814292,
		-0.937389, -0.346650, -0.033697,
		18.378567, 20.370237, 28.491989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.139330, 19.899149, 28.292444>,  <19.034740, 20.612892, 28.515577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.139330, 19.899149, 28.292444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.740189, 19.907372, 28.267572>,  <18.500704, 19.912306, 28.252649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.740189, 19.907372, 28.267572>,  <19.139330, 19.899149, 28.292444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740189, 19.907372, 28.267572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026534, -0.741134, -0.670832,
		-0.059873, -0.671042, 0.738998,
		-0.997853, 0.020556, -0.062179,
		18.440832, 19.913538, 28.248919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882568, 19.170578, 28.273565>,  <19.139330, 19.899149, 28.292444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882568, 19.170578, 28.273565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.559010, 19.349594, 28.121044>,  <18.364874, 19.457005, 28.029531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.559010, 19.349594, 28.121044>,  <18.882568, 19.170578, 28.273565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559010, 19.349594, 28.121044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076155, -0.722821, -0.686827,
		-0.582996, -0.526535, 0.618771,
		-0.808898, 0.447540, -0.381303,
		18.316339, 19.483856, 28.006653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265293, 18.614695, 28.170404>,  <18.882568, 19.170578, 28.273565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265293, 18.614695, 28.170404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.188337, 18.936510, 27.945654>,  <18.142164, 19.129599, 27.810804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.188337, 18.936510, 27.945654>,  <18.265293, 18.614695, 28.170404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.188337, 18.936510, 27.945654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043274, -0.565059, -0.823915,
		-0.980364, -0.182828, 0.073897,
		-0.192391, 0.804539, -0.561875,
		18.130621, 19.177872, 27.777092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708559, 18.473076, 27.790312>,  <18.265293, 18.614695, 28.170404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708559, 18.473076, 27.790312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.929775, 18.752029, 27.607971>,  <18.062506, 18.919401, 27.498568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.929775, 18.752029, 27.607971>,  <17.708559, 18.473076, 27.790312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929775, 18.752029, 27.607971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013246, -0.554429, -0.832125,
		-0.833049, 0.454161, -0.315860,
		0.553041, 0.697385, -0.455851,
		18.095688, 18.961245, 27.471216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882948, 17.738625, 28.021448>,  <17.708559, 18.473076, 27.790312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882948, 17.738625, 28.021448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.793734, 17.436766, 28.268272>,  <17.740204, 17.255650, 28.416367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.793734, 17.436766, 28.268272>,  <17.882948, 17.738625, 28.021448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793734, 17.436766, 28.268272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307814, 0.546095, 0.779122,
		-0.924935, 0.363712, 0.110492,
		-0.223037, -0.754648, 0.617059,
		17.726822, 17.210371, 28.453390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.383629, 17.957346, 28.492279>,  <17.882948, 17.738625, 28.021448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.383629, 17.957346, 28.492279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.563906, 17.663099, 28.694565>,  <17.672071, 17.486551, 28.815935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.563906, 17.663099, 28.694565>,  <17.383629, 17.957346, 28.492279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563906, 17.663099, 28.694565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002513, 0.565462, 0.824770,
		-0.892677, -0.372987, 0.253000,
		0.450690, -0.735618, 0.505712,
		17.699114, 17.442413, 28.846279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114929, 17.970909, 29.167278>,  <17.383629, 17.957346, 28.492279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.114929, 17.970909, 29.167278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.444027, 17.748646, 29.215174>,  <17.641485, 17.615288, 29.243912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.444027, 17.748646, 29.215174>,  <17.114929, 17.970909, 29.167278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444027, 17.748646, 29.215174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153941, 0.420603, 0.894089,
		-0.547169, -0.717174, 0.431587,
		0.822744, -0.555657, 0.119739,
		17.690851, 17.581949, 29.251095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107059, 17.700203, 29.887238>,  <17.114929, 17.970909, 29.167278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107059, 17.700203, 29.887238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.487453, 17.676775, 29.765779>,  <17.715689, 17.662718, 29.692905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.487453, 17.676775, 29.765779>,  <17.107059, 17.700203, 29.887238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487453, 17.676775, 29.765779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307224, 0.290938, 0.906073,
		0.035274, -0.954947, 0.294671,
		0.950983, -0.058569, -0.303645,
		17.772749, 17.659204, 29.674686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372353, 17.270142, 30.345690>,  <17.107059, 17.700203, 29.887238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372353, 17.270142, 30.345690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.675430, 17.481588, 30.192606>,  <17.857277, 17.608456, 30.100756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.675430, 17.481588, 30.192606>,  <17.372353, 17.270142, 30.345690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675430, 17.481588, 30.192606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178670, 0.395999, 0.900701,
		0.627678, -0.750833, 0.205598,
		0.757692, 0.528616, -0.382711,
		17.902739, 17.640173, 30.077793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.958727, 17.103247, 30.746738>,  <17.372353, 17.270142, 30.345690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.958727, 17.103247, 30.746738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.026949, 17.465654, 30.591799>,  <18.067883, 17.683100, 30.498835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.026949, 17.465654, 30.591799>,  <17.958727, 17.103247, 30.746738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026949, 17.465654, 30.591799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008652, 0.391717, 0.920045,
		0.985310, -0.160270, 0.058970,
		0.170555, 0.906019, -0.387349,
		18.078115, 17.737461, 30.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433216, 17.423529, 31.239828>,  <17.958727, 17.103247, 30.746738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433216, 17.423529, 31.239828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.285553, 17.718529, 31.013620>,  <18.196955, 17.895529, 30.877895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.285553, 17.718529, 31.013620>,  <18.433216, 17.423529, 31.239828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285553, 17.718529, 31.013620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006194, 0.606536, 0.795032,
		0.929345, 0.296997, -0.219341,
		-0.369160, 0.737500, -0.565521,
		18.174805, 17.939779, 30.843964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866405, 18.026388, 31.349306>,  <18.433216, 17.423529, 31.239828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866405, 18.026388, 31.349306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.531679, 18.195669, 31.210371>,  <18.330843, 18.297237, 31.127010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.531679, 18.195669, 31.210371>,  <18.866405, 18.026388, 31.349306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531679, 18.195669, 31.210371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069131, 0.547669, 0.833834,
		0.543106, 0.721776, -0.429041,
		-0.836813, 0.423201, -0.347339,
		18.280636, 18.322630, 31.106169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820576, 18.702625, 31.647188>,  <18.866405, 18.026388, 31.349306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820576, 18.702625, 31.647188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.448116, 18.595881, 31.547791>,  <18.224642, 18.531834, 31.488152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.448116, 18.595881, 31.547791>,  <18.820576, 18.702625, 31.647188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448116, 18.595881, 31.547791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358898, 0.550219, 0.753957,
		-0.064474, 0.791230, -0.608111,
		-0.931147, -0.266861, -0.248496,
		18.168772, 18.515821, 31.473242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418011, 19.319468, 31.564013>,  <18.820576, 18.702625, 31.647188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418011, 19.319468, 31.564013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.144304, 19.038563, 31.642609>,  <17.980082, 18.870020, 31.689766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.144304, 19.038563, 31.642609>,  <18.418011, 19.319468, 31.564013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.144304, 19.038563, 31.642609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391842, 0.581326, 0.713106,
		-0.615014, 0.410959, -0.672956,
		-0.684264, -0.702263, 0.196492,
		17.939026, 18.827885, 31.701557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871778, 19.677130, 31.549770>,  <18.418011, 19.319468, 31.564013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871778, 19.677130, 31.549770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.774534, 19.357210, 31.769304>,  <17.716187, 19.165258, 31.901026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.774534, 19.357210, 31.769304>,  <17.871778, 19.677130, 31.549770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774534, 19.357210, 31.769304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389320, 0.598693, 0.699998,
		-0.888440, -0.043495, -0.456927,
		-0.243113, -0.799797, 0.548836,
		17.701601, 19.117271, 31.933954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233406, 19.770464, 31.782303>,  <17.871778, 19.677130, 31.549770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233406, 19.770464, 31.782303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.341831, 19.485180, 32.040871>,  <17.406885, 19.314011, 32.196011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.341831, 19.485180, 32.040871>,  <17.233406, 19.770464, 31.782303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341831, 19.485180, 32.040871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485372, 0.478658, 0.731642,
		-0.831228, -0.512074, -0.216426,
		0.271062, -0.713208, 0.646420,
		17.423149, 19.271217, 32.234798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711414, 19.840225, 32.297783>,  <17.233406, 19.770464, 31.782303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711414, 19.840225, 32.297783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.981113, 19.614273, 32.488068>,  <17.142933, 19.478703, 32.602238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.981113, 19.614273, 32.488068>,  <16.711414, 19.840225, 32.297783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981113, 19.614273, 32.488068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334502, 0.340697, 0.878655,
		-0.658408, -0.751557, 0.040761,
		0.674246, -0.564879, 0.475715,
		17.183388, 19.444809, 32.630783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454641, 19.328979, 32.810158>,  <16.711414, 19.840225, 32.297783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454641, 19.328979, 32.810158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.826801, 19.421305, 32.924057>,  <17.050097, 19.476700, 32.992397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.826801, 19.421305, 32.924057>,  <16.454641, 19.328979, 32.810158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826801, 19.421305, 32.924057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351967, 0.345627, 0.869863,
		0.102357, -0.909542, 0.402810,
		0.930399, 0.230812, 0.284751,
		17.105921, 19.490549, 33.009483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871171, 19.211662, 32.358002>,  <16.454641, 19.328979, 32.810158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871171, 19.211662, 32.358002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.536969, 19.417053, 32.436253>,  <15.336448, 19.540287, 32.483204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.536969, 19.417053, 32.436253>,  <15.871171, 19.211662, 32.358002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536969, 19.417053, 32.436253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388944, -0.301162, -0.870646,
		-0.388142, -0.803518, 0.451337,
		-0.835505, 0.513479, 0.195630,
		15.286318, 19.571096, 32.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313741, 18.751093, 32.278748>,  <15.871171, 19.211662, 32.358002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.313741, 18.751093, 32.278748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.156487, 19.116037, 32.233067>,  <15.062134, 19.335005, 32.205658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.156487, 19.116037, 32.233067>,  <15.313741, 18.751093, 32.278748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156487, 19.116037, 32.233067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453180, -0.300332, -0.839303,
		-0.800045, -0.278206, 0.531535,
		-0.393136, 0.912361, -0.114202,
		15.038546, 19.389746, 32.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.548987, 18.755146, 32.368668>,  <15.313741, 18.751093, 32.278748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.548987, 18.755146, 32.368668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.679425, 19.051073, 32.133266>,  <14.757688, 19.228628, 31.992025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.679425, 19.051073, 32.133266>,  <14.548987, 18.755146, 32.368668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.679425, 19.051073, 32.133266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505076, -0.389881, -0.769994,
		-0.799100, 0.548328, 0.246526,
		0.326094, 0.739817, -0.588501,
		14.777253, 19.273018, 31.956717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966817, 18.761654, 31.963682>,  <14.548987, 18.755146, 32.368668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966817, 18.761654, 31.963682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.212313, 18.995768, 31.751734>,  <14.359611, 19.136236, 31.624565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.212313, 18.995768, 31.751734>,  <13.966817, 18.761654, 31.963682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.212313, 18.995768, 31.751734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485716, -0.249189, -0.837845,
		-0.622417, 0.771587, 0.131345,
		0.613741, 0.585285, -0.529872,
		14.396435, 19.171352, 31.592772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.594012, 19.031559, 31.422983>,  <13.966817, 18.761654, 31.963682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.594012, 19.031559, 31.422983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.973145, 19.054928, 31.297632>,  <14.200624, 19.068949, 31.222422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.973145, 19.054928, 31.297632>,  <13.594012, 19.031559, 31.422983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.973145, 19.054928, 31.297632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260651, -0.423920, -0.867383,
		-0.183521, 0.903814, -0.386576,
		0.947830, 0.058421, -0.313378,
		14.257493, 19.072454, 31.203619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587808, 19.512768, 30.860809>,  <13.594012, 19.031559, 31.422983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587808, 19.512768, 30.860809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.886626, 19.248522, 30.831108>,  <14.065917, 19.089975, 30.813288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.886626, 19.248522, 30.831108>,  <13.587808, 19.512768, 30.860809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886626, 19.248522, 30.831108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315935, -0.254535, -0.914000,
		0.584900, 0.706260, -0.398860,
		0.747046, -0.660613, -0.074255,
		14.110740, 19.050339, 30.808832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727052, 19.558619, 30.180120>,  <13.587808, 19.512768, 30.860809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727052, 19.558619, 30.180120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.916090, 19.220942, 30.281309>,  <14.029513, 19.018335, 30.342022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.916090, 19.220942, 30.281309>,  <13.727052, 19.558619, 30.180120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.916090, 19.220942, 30.281309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284994, -0.418025, -0.862574,
		0.833925, 0.335554, -0.438147,
		0.472596, -0.844191, 0.252970,
		14.057869, 18.967684, 30.357201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708244, 19.999964, 29.580980>,  <13.727052, 19.558619, 30.180120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708244, 19.999964, 29.580980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.482122, 20.281775, 29.409367>,  <13.346450, 20.450861, 29.306398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.482122, 20.281775, 29.409367>,  <13.708244, 19.999964, 29.580980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482122, 20.281775, 29.409367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036131, 0.540766, 0.840397,
		0.824091, 0.459578, -0.331152,
		-0.565304, 0.704528, -0.429035,
		13.312531, 20.493134, 29.280657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054009, 20.614347, 29.774178>,  <13.708244, 19.999964, 29.580980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054009, 20.614347, 29.774178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.685957, 20.730892, 29.669514>,  <13.465126, 20.800819, 29.606714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.685957, 20.730892, 29.669514>,  <14.054009, 20.614347, 29.774178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685957, 20.730892, 29.669514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012901, 0.645250, 0.763863,
		0.391399, 0.706229, -0.589955,
		-0.920131, 0.291364, -0.261661,
		13.409918, 20.818302, 29.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.035038, 21.317751, 29.640295>,  <14.054009, 20.614347, 29.774178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.035038, 21.317751, 29.640295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.663447, 21.227495, 29.757658>,  <13.440493, 21.173342, 29.828075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.663447, 21.227495, 29.757658>,  <14.035038, 21.317751, 29.640295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.663447, 21.227495, 29.757658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068194, 0.674789, 0.734854,
		-0.363800, 0.702671, -0.611476,
		-0.928978, -0.225640, 0.293406,
		13.384754, 21.159803, 29.845680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691490, 21.928232, 29.861738>,  <14.035038, 21.317751, 29.640295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691490, 21.928232, 29.861738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.418681, 21.662254, 29.983521>,  <13.254996, 21.502666, 30.056591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.418681, 21.662254, 29.983521>,  <13.691490, 21.928232, 29.861738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418681, 21.662254, 29.983521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160072, 0.541938, 0.825033,
		-0.713599, 0.513956, -0.476053,
		-0.682022, -0.664945, 0.304457,
		13.214074, 21.462770, 30.074858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160380, 22.267591, 30.181437>,  <13.691490, 21.928232, 29.861738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160380, 22.267591, 30.181437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.127170, 21.899784, 30.335108>,  <13.107243, 21.679100, 30.427311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.127170, 21.899784, 30.335108>,  <13.160380, 22.267591, 30.181437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127170, 21.899784, 30.335108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114682, 0.391763, 0.912891,
		-0.989926, 0.031737, -0.137980,
		-0.083028, -0.919519, 0.384177,
		13.102262, 21.623928, 30.450361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.727496, 22.277353, 30.788776>,  <13.160380, 22.267591, 30.181437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.727496, 22.277353, 30.788776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.929338, 21.936077, 30.841600>,  <13.050442, 21.731312, 30.873295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.929338, 21.936077, 30.841600>,  <12.727496, 22.277353, 30.788776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929338, 21.936077, 30.841600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106631, 0.090202, 0.990199,
		-0.856742, -0.513738, -0.045461,
		0.504602, -0.853192, 0.132060,
		13.080718, 21.680119, 30.881218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431396, 22.060106, 31.367302>,  <12.727496, 22.277353, 30.788776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431396, 22.060106, 31.367302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.789509, 21.885496, 31.331715>,  <13.004376, 21.780729, 31.310362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.789509, 21.885496, 31.331715>,  <12.431396, 22.060106, 31.367302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789509, 21.885496, 31.331715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229487, 0.280718, 0.931951,
		-0.381845, -0.854776, 0.351499,
		0.895282, -0.436526, -0.088969,
		13.058093, 21.754538, 31.305023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538625, 21.856396, 32.015991>,  <12.431396, 22.060106, 31.367302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538625, 21.856396, 32.015991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.910024, 21.856157, 31.867455>,  <13.132863, 21.856014, 31.778334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.910024, 21.856157, 31.867455>,  <12.538625, 21.856396, 32.015991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.910024, 21.856157, 31.867455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328728, 0.466431, 0.821207,
		0.172715, -0.884558, 0.433275,
		0.928497, -0.000595, -0.371338,
		13.188573, 21.855980, 31.756054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.849223, 21.449501, 32.492001>,  <12.538625, 21.856396, 32.015991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.849223, 21.449501, 32.492001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.154616, 21.642662, 32.320465>,  <13.337852, 21.758558, 32.217545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.154616, 21.642662, 32.320465>,  <12.849223, 21.449501, 32.492001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154616, 21.642662, 32.320465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339640, 0.264550, 0.902584,
		0.549308, -0.834757, 0.037966,
		0.763482, 0.482902, -0.428836,
		13.383661, 21.787533, 32.191814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.456333, 16.825743, 17.431047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704037, 17.138693, 17.404484>,  <14.852658, 17.326462, 17.388546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.704037, 17.138693, 17.404484>,  <14.456333, 16.825743, 17.431047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704037, 17.138693, 17.404484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090991, 0.155512, 0.983634,
		0.779897, -0.603081, 0.167491,
		0.619258, 0.782374, -0.066409,
		14.889814, 17.373405, 17.384562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115956, 16.910851, 17.869593>,  <14.456333, 16.825743, 17.431047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115956, 16.910851, 17.869593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.976421, 17.271976, 17.769005>,  <14.892700, 17.488651, 17.708652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.976421, 17.271976, 17.769005>,  <15.115956, 16.910851, 17.869593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976421, 17.271976, 17.769005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244936, 0.171174, 0.954309,
		0.904610, 0.394494, 0.161419,
		-0.348838, 0.902815, -0.251471,
		14.871770, 17.542820, 17.693563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254737, 17.330847, 18.498842>,  <15.115956, 16.910851, 17.869593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254737, 17.330847, 18.498842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.015511, 17.561312, 18.276005>,  <14.871975, 17.699591, 18.142302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.015511, 17.561312, 18.276005>,  <15.254737, 17.330847, 18.498842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015511, 17.561312, 18.276005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347945, 0.439525, 0.828102,
		0.721978, 0.689097, -0.062392,
		-0.598065, 0.576163, -0.557095,
		14.836091, 17.734161, 18.108877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338248, 18.081606, 18.800140>,  <15.254737, 17.330847, 18.498842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338248, 18.081606, 18.800140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985617, 18.041523, 18.615629>,  <14.774038, 18.017473, 18.504923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985617, 18.041523, 18.615629>,  <15.338248, 18.081606, 18.800140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985617, 18.041523, 18.615629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450434, 0.470831, 0.758570,
		0.141171, 0.876514, -0.460211,
		-0.881578, -0.100207, -0.461279,
		14.721143, 18.011461, 18.477245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969204, 18.651825, 19.056906>,  <15.338248, 18.081606, 18.800140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969204, 18.651825, 19.056906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674048, 18.446278, 18.881882>,  <14.496955, 18.322950, 18.776867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674048, 18.446278, 18.881882>,  <14.969204, 18.651825, 19.056906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674048, 18.446278, 18.881882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622191, 0.266693, 0.736039,
		-0.261531, 0.815362, -0.516514,
		-0.737889, -0.513867, -0.437562,
		14.452682, 18.292118, 18.750612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.457613, 19.107807, 19.034046>,  <14.969204, 18.651825, 19.056906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.457613, 19.107807, 19.034046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296004, 18.741907, 19.034582>,  <14.199039, 18.522367, 19.034903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296004, 18.741907, 19.034582>,  <14.457613, 19.107807, 19.034046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296004, 18.741907, 19.034582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748460, 0.331417, 0.574431,
		-0.525904, 0.231080, -0.818552,
		-0.404022, -0.914748, 0.001339,
		14.174798, 18.467484, 19.034985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.720188, 19.204754, 19.064318>,  <14.457613, 19.107807, 19.034046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.720188, 19.204754, 19.064318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777938, 18.823336, 19.170074>,  <13.812588, 18.594484, 19.233528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.777938, 18.823336, 19.170074>,  <13.720188, 19.204754, 19.064318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.777938, 18.823336, 19.170074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749574, 0.069039, 0.658310,
		-0.645983, -0.293224, -0.704787,
		0.144374, -0.953547, 0.264391,
		13.821250, 18.537271, 19.249392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.156918, 18.814642, 18.935335>,  <13.720188, 19.204754, 19.064318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.156918, 18.814642, 18.935335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326610, 18.583092, 19.213882>,  <13.428425, 18.444160, 19.381010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326610, 18.583092, 19.213882>,  <13.156918, 18.814642, 18.935335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326610, 18.583092, 19.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809641, 0.101967, 0.578000,
		-0.405598, -0.809014, -0.425425,
		0.424231, -0.578877, 0.696369,
		13.453879, 18.409430, 19.422792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623114, 18.399521, 19.296738>,  <13.156918, 18.814642, 18.935335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623114, 18.399521, 19.296738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921206, 18.426336, 19.562109>,  <13.100060, 18.442427, 19.721333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921206, 18.426336, 19.562109>,  <12.623114, 18.399521, 19.296738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921206, 18.426336, 19.562109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663965, 0.166372, 0.729021,
		-0.061503, -0.983782, 0.168497,
		0.745230, 0.067039, 0.663429,
		13.144774, 18.446449, 19.761137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337523, 18.248545, 19.871784>,  <12.623114, 18.399521, 19.296738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337523, 18.248545, 19.871784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666234, 18.420612, 20.021255>,  <12.863461, 18.523853, 20.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666234, 18.420612, 20.021255>,  <12.337523, 18.248545, 19.871784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.666234, 18.420612, 20.021255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474649, 0.153946, 0.866608,
		0.315262, -0.889525, 0.330689,
		0.821778, 0.430170, 0.373679,
		12.912767, 18.549664, 20.133360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441553, 17.925491, 20.611759>,  <12.337523, 18.248545, 19.871784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441553, 17.925491, 20.611759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617957, 18.283455, 20.584482>,  <12.723800, 18.498232, 20.568117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.617957, 18.283455, 20.584482>,  <12.441553, 17.925491, 20.611759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.617957, 18.283455, 20.584482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528948, 0.320541, 0.785791,
		0.725068, -0.310472, 0.614722,
		0.441010, 0.894908, -0.068191,
		12.750260, 18.551928, 20.564026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529804, 18.108770, 21.306616>,  <12.441553, 17.925491, 20.611759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529804, 18.108770, 21.306616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.577880, 18.462496, 21.126152>,  <12.606725, 18.674730, 21.017874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.577880, 18.462496, 21.126152>,  <12.529804, 18.108770, 21.306616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.577880, 18.462496, 21.126152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342328, 0.463498, 0.817302,
		0.931862, 0.056214, 0.358432,
		0.120188, 0.884313, -0.451160,
		12.613936, 18.727789, 20.990805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.871392, 17.468973, 21.659346>,  <12.529804, 18.108770, 21.306616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.871392, 17.468973, 21.659346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669783, 17.183176, 21.853443>,  <12.548817, 17.011698, 21.969902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669783, 17.183176, 21.853443>,  <12.871392, 17.468973, 21.659346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669783, 17.183176, 21.853443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320287, -0.367144, -0.873282,
		0.802107, -0.595573, -0.043793,
		-0.504024, -0.714492, 0.485243,
		12.518576, 16.968828, 21.999016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060732, 16.826029, 21.332954>,  <12.871392, 17.468973, 21.659346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060732, 16.826029, 21.332954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721689, 16.717428, 21.515316>,  <12.518264, 16.652267, 21.624733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721689, 16.717428, 21.515316>,  <13.060732, 16.826029, 21.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721689, 16.717428, 21.515316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265101, -0.527597, -0.807070,
		0.459656, -0.804939, 0.375219,
		-0.847607, -0.271504, 0.455903,
		12.467407, 16.635977, 21.652086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.953619, 16.119930, 21.269243>,  <13.060732, 16.826029, 21.332954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.953619, 16.119930, 21.269243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583595, 16.236027, 21.367245>,  <12.361581, 16.305685, 21.426044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.583595, 16.236027, 21.367245>,  <12.953619, 16.119930, 21.269243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.583595, 16.236027, 21.367245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367296, -0.519252, -0.771667,
		-0.096753, -0.803826, 0.586944,
		-0.925058, 0.290243, 0.245002,
		12.306078, 16.323099, 21.440746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467384, 15.474050, 21.217733>,  <12.953619, 16.119930, 21.269243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467384, 15.474050, 21.217733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.233224, 15.796594, 21.184059>,  <12.092728, 15.990120, 21.163855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.233224, 15.796594, 21.184059>,  <12.467384, 15.474050, 21.217733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.233224, 15.796594, 21.184059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545659, -0.468664, -0.694702,
		-0.599635, -0.360744, 0.714355,
		-0.585402, 0.806361, -0.084184,
		12.057603, 16.038502, 21.158804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.909853, 15.126100, 21.285149>,  <12.467384, 15.474050, 21.217733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.909853, 15.126100, 21.285149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.766928, 15.472028, 21.144058>,  <11.681172, 15.679585, 21.059404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.766928, 15.472028, 21.144058>,  <11.909853, 15.126100, 21.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.766928, 15.472028, 21.144058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639365, -0.501783, -0.582603,
		-0.680838, 0.017349, 0.732229,
		-0.357313, 0.864820, -0.352725,
		11.659734, 15.731474, 21.038240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.137695, 15.198354, 21.414385>,  <11.909853, 15.126100, 21.285149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.137695, 15.198354, 21.414385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292574, 15.387516, 21.097794>,  <11.385501, 15.501013, 20.907839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292574, 15.387516, 21.097794>,  <11.137695, 15.198354, 21.414385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292574, 15.387516, 21.097794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614745, -0.507361, -0.603881,
		-0.687145, 0.720379, 0.094268,
		0.387195, 0.472905, -0.791480,
		11.408732, 15.529387, 20.860350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.599816, 15.348300, 21.009186>,  <11.137695, 15.198354, 21.414385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.599816, 15.348300, 21.009186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905101, 15.401052, 20.756166>,  <11.088271, 15.432704, 20.604355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905101, 15.401052, 20.756166>,  <10.599816, 15.348300, 21.009186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905101, 15.401052, 20.756166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438576, -0.613176, -0.657013,
		-0.474510, 0.778860, -0.410142,
		0.763211, 0.131881, -0.632548,
		11.134064, 15.440617, 20.566402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.217968, 15.440469, 20.398012>,  <10.599816, 15.348300, 21.009186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.217968, 15.440469, 20.398012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589625, 15.318561, 20.314293>,  <10.812620, 15.245416, 20.264061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589625, 15.318561, 20.314293>,  <10.217968, 15.440469, 20.398012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.589625, 15.318561, 20.314293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369713, -0.768548, -0.522155,
		-0.001718, 0.562538, -0.826770,
		0.929145, -0.304771, -0.209298,
		10.868369, 15.227129, 20.251503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.118456, 15.306928, 19.731112>,  <10.217968, 15.440469, 20.398012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.118456, 15.306928, 19.731112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.460524, 15.117732, 19.815935>,  <10.665764, 15.004214, 19.866829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.460524, 15.117732, 19.815935>,  <10.118456, 15.306928, 19.731112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.460524, 15.117732, 19.815935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263680, -0.749163, -0.607642,
		0.446274, 0.463721, -0.765378,
		0.855168, -0.472989, 0.212058,
		10.717074, 14.975836, 19.879553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.203225, 14.824514, 19.140812>,  <10.118456, 15.306928, 19.731112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.203225, 14.824514, 19.140812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.464213, 14.692949, 19.413898>,  <10.620806, 14.614011, 19.577749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.464213, 14.692949, 19.413898>,  <10.203225, 14.824514, 19.140812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.464213, 14.692949, 19.413898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118686, -0.845430, -0.520732,
		0.748463, 0.420790, -0.512580,
		0.652470, -0.328912, 0.682715,
		10.659954, 14.594275, 19.618713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.750497, 14.598647, 18.715534>,  <10.203225, 14.824514, 19.140812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.750497, 14.598647, 18.715534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762283, 14.401701, 19.063490>,  <10.769355, 14.283533, 19.272263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762283, 14.401701, 19.063490>,  <10.750497, 14.598647, 18.715534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.762283, 14.401701, 19.063490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066009, -0.869326, -0.489811,
		0.997384, -0.042988, -0.058116,
		0.029466, -0.492365, 0.869890,
		10.771123, 14.253991, 19.324457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.254977, 14.006680, 18.642122>,  <10.750497, 14.598647, 18.715534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.254977, 14.006680, 18.642122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.071408, 13.895112, 18.979546>,  <10.961267, 13.828171, 19.181999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.071408, 13.895112, 18.979546>,  <11.254977, 14.006680, 18.642122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.071408, 13.895112, 18.979546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075071, -0.933877, -0.349625,
		0.885299, -0.223778, 0.407638,
		-0.458922, -0.278921, 0.843560,
		10.933732, 13.811436, 19.232615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.617736, 13.500936, 19.020330>,  <11.254977, 14.006680, 18.642122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.617736, 13.500936, 19.020330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238177, 13.448315, 19.135077>,  <11.010443, 13.416742, 19.203924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238177, 13.448315, 19.135077>,  <11.617736, 13.500936, 19.020330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238177, 13.448315, 19.135077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050582, -0.960623, -0.273213,
		0.311511, -0.244740, 0.918185,
		-0.948895, -0.131552, 0.286865,
		10.953508, 13.408849, 19.221136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.621340, 12.833429, 19.276588>,  <11.617736, 13.500936, 19.020330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.621340, 12.833429, 19.276588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239359, 12.920492, 19.195900>,  <11.010170, 12.972730, 19.147488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239359, 12.920492, 19.195900>,  <11.621340, 12.833429, 19.276588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.239359, 12.920492, 19.195900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133950, -0.922709, -0.361478,
		-0.264808, -0.318174, 0.910298,
		-0.954953, 0.217656, -0.201721,
		10.952873, 12.985789, 19.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.955836, 13.227740, 19.809294>,  <11.621340, 12.833429, 19.276588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.955836, 13.227740, 19.809294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344211, 13.132056, 19.806170>,  <12.577235, 13.074646, 19.804295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344211, 13.132056, 19.806170>,  <11.955836, 13.227740, 19.809294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344211, 13.132056, 19.806170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137517, 0.530871, 0.836221,
		-0.195887, -0.812991, 0.548338,
		0.970936, -0.239211, -0.007809,
		12.635491, 13.060293, 19.803827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.012599, 13.206713, 20.527718>,  <11.955836, 13.227740, 19.809294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.012599, 13.206713, 20.527718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371356, 13.183747, 20.352314>,  <12.586610, 13.169968, 20.247072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371356, 13.183747, 20.352314>,  <12.012599, 13.206713, 20.527718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371356, 13.183747, 20.352314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424007, 0.393478, 0.815716,
		0.125710, -0.917540, 0.377251,
		0.896892, -0.057414, -0.438508,
		12.640424, 13.166523, 20.220762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440639, 12.792966, 21.008854>,  <12.012599, 13.206713, 20.527718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440639, 12.792966, 21.008854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658613, 13.034346, 20.775995>,  <12.789398, 13.179173, 20.636280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658613, 13.034346, 20.775995>,  <12.440639, 12.792966, 21.008854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658613, 13.034346, 20.775995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574841, 0.236569, 0.783322,
		0.610412, -0.761501, -0.217973,
		0.544935, 0.603449, -0.582147,
		12.822094, 13.215380, 20.601351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164529, 12.688981, 21.232313>,  <12.440639, 12.792966, 21.008854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164529, 12.688981, 21.232313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134058, 13.026940, 21.020523>,  <13.115776, 13.229715, 20.893448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134058, 13.026940, 21.020523>,  <13.164529, 12.688981, 21.232313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134058, 13.026940, 21.020523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556685, 0.476590, 0.680415,
		0.827224, -0.242920, -0.506646,
		-0.076177, 0.844897, -0.529477,
		13.111205, 13.280410, 20.861681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822100, 12.823998, 21.158257>,  <13.164529, 12.688981, 21.232313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.822100, 12.823998, 21.158257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623117, 13.167263, 21.107506>,  <13.503728, 13.373221, 21.077055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.623117, 13.167263, 21.107506>,  <13.822100, 12.823998, 21.158257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623117, 13.167263, 21.107506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532751, 0.417644, 0.736036,
		0.684627, 0.298552, -0.664946,
		-0.497456, 0.858161, -0.126876,
		13.473881, 13.424711, 21.069443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321223, 13.428494, 21.059397>,  <13.822100, 12.823998, 21.158257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321223, 13.428494, 21.059397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968663, 13.587593, 21.161322>,  <13.757127, 13.683052, 21.222477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968663, 13.587593, 21.161322>,  <14.321223, 13.428494, 21.059397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968663, 13.587593, 21.161322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459490, 0.596820, 0.657780,
		0.109552, 0.696852, -0.708799,
		-0.881401, 0.397747, 0.254814,
		13.704243, 13.706917, 21.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531386, 14.058435, 21.300409>,  <14.321223, 13.428494, 21.059397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531386, 14.058435, 21.300409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166148, 14.062973, 21.463444>,  <13.947005, 14.065696, 21.561264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166148, 14.062973, 21.463444>,  <14.531386, 14.058435, 21.300409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166148, 14.062973, 21.463444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349630, 0.536110, 0.768339,
		-0.209794, 0.844072, -0.493487,
		-0.913096, 0.011345, 0.407586,
		13.892220, 14.066377, 21.585720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.465885, 14.722595, 21.611353>,  <14.531386, 14.058435, 21.300409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.465885, 14.722595, 21.611353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202585, 14.485455, 21.796926>,  <14.044605, 14.343170, 21.908270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202585, 14.485455, 21.796926>,  <14.465885, 14.722595, 21.611353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202585, 14.485455, 21.796926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250091, 0.409058, 0.877568,
		-0.710044, 0.693684, -0.120996,
		-0.658250, -0.592852, 0.463933,
		14.005111, 14.307599, 21.936106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018081, 15.141281, 22.039179>,  <14.465885, 14.722595, 21.611353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018081, 15.141281, 22.039179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016288, 14.760592, 22.161949>,  <14.015212, 14.532178, 22.235611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.016288, 14.760592, 22.161949>,  <14.018081, 15.141281, 22.039179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.016288, 14.760592, 22.161949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232697, 0.297509, 0.925927,
		-0.972539, 0.075570, 0.220130,
		-0.004481, -0.951723, 0.306924,
		14.014943, 14.475075, 22.254026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714597, 15.175416, 22.667009>,  <14.018081, 15.141281, 22.039179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.714597, 15.175416, 22.667009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.904333, 14.825223, 22.703959>,  <14.018175, 14.615108, 22.726128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.904333, 14.825223, 22.703959>,  <13.714597, 15.175416, 22.667009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904333, 14.825223, 22.703959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355116, 0.286297, 0.889903,
		-0.805540, -0.389314, 0.446700,
		0.474340, -0.875482, 0.092372,
		14.046635, 14.562578, 22.731670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638647, 14.946677, 23.367592>,  <13.714597, 15.175416, 22.667009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.638647, 14.946677, 23.367592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961252, 14.755667, 23.228163>,  <14.154816, 14.641061, 23.144505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961252, 14.755667, 23.228163>,  <13.638647, 14.946677, 23.367592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961252, 14.755667, 23.228163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455640, 0.126344, 0.881152,
		-0.376732, -0.869486, 0.319478,
		0.806514, -0.477526, -0.348575,
		14.203206, 14.612409, 23.123590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919840, 14.499042, 23.850380>,  <13.638647, 14.946677, 23.367592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919840, 14.499042, 23.850380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.256687, 14.491417, 23.634798>,  <14.458796, 14.486842, 23.505449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.256687, 14.491417, 23.634798>,  <13.919840, 14.499042, 23.850380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.256687, 14.491417, 23.634798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536655, -0.069133, 0.840965,
		-0.053283, -0.997426, -0.047994,
		0.842118, -0.019053, -0.538957,
		14.509322, 14.485699, 23.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358226, 13.930067, 24.138521>,  <13.919840, 14.499042, 23.850380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358226, 13.930067, 24.138521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.616562, 14.171000, 23.950869>,  <14.771564, 14.315560, 23.838278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.616562, 14.171000, 23.950869>,  <14.358226, 13.930067, 24.138521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.616562, 14.171000, 23.950869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620152, -0.055477, 0.782518,
		0.445311, -0.796314, -0.409367,
		0.645840, 0.602334, -0.469131,
		14.810314, 14.351701, 23.810129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033706, 13.643728, 24.220722>,  <14.358226, 13.930067, 24.138521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033706, 13.643728, 24.220722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059337, 14.036098, 24.147310>,  <15.074716, 14.271520, 24.103264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059337, 14.036098, 24.147310>,  <15.033706, 13.643728, 24.220722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059337, 14.036098, 24.147310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594387, 0.110213, 0.796591,
		0.801622, -0.160131, -0.575986,
		0.064077, 0.980924, -0.183529,
		15.078560, 14.330375, 24.092251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.778936, 13.835427, 24.496117>,  <15.033706, 13.643728, 24.220722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.778936, 13.835427, 24.496117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587409, 14.179514, 24.425961>,  <15.472492, 14.385965, 24.383867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587409, 14.179514, 24.425961>,  <15.778936, 13.835427, 24.496117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587409, 14.179514, 24.425961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575977, 0.458581, 0.676724,
		0.662558, 0.223008, -0.715041,
		-0.478819, 0.860216, -0.175389,
		15.443764, 14.437578, 24.373344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262920, 14.232955, 24.410921>,  <15.778936, 13.835427, 24.496117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262920, 14.232955, 24.410921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.957810, 14.467636, 24.519699>,  <15.774744, 14.608445, 24.584965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.957810, 14.467636, 24.519699>,  <16.262920, 14.232955, 24.410921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.957810, 14.467636, 24.519699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579117, 0.432635, 0.690978,
		0.287747, 0.684548, -0.669773,
		-0.762775, 0.586704, 0.271944,
		15.728978, 14.643647, 24.601282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.576714, 14.780730, 24.643049>,  <16.262920, 14.232955, 24.410921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.576714, 14.780730, 24.643049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211231, 14.839796, 24.794489>,  <15.991942, 14.875236, 24.885353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211231, 14.839796, 24.794489>,  <16.576714, 14.780730, 24.643049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211231, 14.839796, 24.794489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405963, 0.289580, 0.866797,
		0.018360, 0.945695, -0.324537,
		-0.913705, 0.147664, 0.378601,
		15.937119, 14.884095, 24.908070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396545, 15.474871, 24.875151>,  <16.576714, 14.780730, 24.643049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396545, 15.474871, 24.875151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159031, 15.231104, 25.085304>,  <16.016521, 15.084844, 25.211397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159031, 15.231104, 25.085304>,  <16.396545, 15.474871, 24.875151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159031, 15.231104, 25.085304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401498, 0.341447, 0.849831,
		-0.697292, 0.715559, 0.041933,
		-0.593787, -0.609417, 0.525384,
		15.980895, 15.048279, 25.242920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307432, 15.924283, 25.458128>,  <16.396545, 15.474871, 24.875151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307432, 15.924283, 25.458128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145838, 15.576646, 25.572302>,  <16.048882, 15.368064, 25.640806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.145838, 15.576646, 25.572302>,  <16.307432, 15.924283, 25.458128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145838, 15.576646, 25.572302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351734, 0.140465, 0.925501,
		-0.844440, 0.474287, 0.248944,
		-0.403985, -0.869092, 0.285437,
		16.024643, 15.315918, 25.657932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864836, 16.157528, 26.004940>,  <16.307432, 15.924283, 25.458128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864836, 16.157528, 26.004940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925631, 15.765325, 26.054747>,  <15.962108, 15.530003, 26.084631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925631, 15.765325, 26.054747>,  <15.864836, 16.157528, 26.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925631, 15.765325, 26.054747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248667, 0.159863, 0.955306,
		-0.956590, -0.114231, 0.268117,
		0.151987, -0.980508, 0.124518,
		15.971227, 15.471172, 26.092102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494551, 16.030067, 26.531919>,  <15.864836, 16.157528, 26.004940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.494551, 16.030067, 26.531919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763848, 15.735213, 26.508690>,  <15.925426, 15.558300, 26.494751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763848, 15.735213, 26.508690>,  <15.494551, 16.030067, 26.531919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763848, 15.735213, 26.508690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270245, 0.172190, 0.947269,
		-0.688267, -0.653437, 0.315134,
		0.673243, -0.737137, -0.058075,
		15.965821, 15.514072, 26.491268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398566, 15.631790, 27.161304>,  <15.494551, 16.030067, 26.531919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398566, 15.631790, 27.161304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779492, 15.586215, 27.048088>,  <16.008049, 15.558869, 26.980158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779492, 15.586215, 27.048088>,  <15.398566, 15.631790, 27.161304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779492, 15.586215, 27.048088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295454, 0.112805, 0.948674,
		-0.076162, -0.987063, 0.141089,
		0.952316, -0.113939, -0.283040,
		16.065187, 15.552033, 26.963177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.751740, 15.289874, 27.694880>,  <15.398566, 15.631790, 27.161304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.751740, 15.289874, 27.694880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.052845, 15.435195, 27.475294>,  <16.233507, 15.522388, 27.343544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.052845, 15.435195, 27.475294>,  <15.751740, 15.289874, 27.694880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052845, 15.435195, 27.475294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486919, 0.253913, 0.835726,
		0.443011, -0.896403, 0.014236,
		0.752762, 0.363304, -0.548962,
		16.278673, 15.544186, 27.310606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.347948, 15.102341, 28.039967>,  <15.751740, 15.289874, 27.694880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.347948, 15.102341, 28.039967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468122, 15.394394, 27.794481>,  <16.540226, 15.569626, 27.647190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468122, 15.394394, 27.794481>,  <16.347948, 15.102341, 28.039967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468122, 15.394394, 27.794481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665792, 0.300205, 0.683079,
		0.682979, -0.613827, -0.395925,
		0.300434, 0.730133, -0.613715,
		16.558252, 15.613434, 27.610367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053421, 15.207159, 28.170303>,  <16.347948, 15.102341, 28.039967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053421, 15.207159, 28.170303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.952362, 15.557464, 28.005764>,  <16.891726, 15.767647, 27.907040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.952362, 15.557464, 28.005764>,  <17.053421, 15.207159, 28.170303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952362, 15.557464, 28.005764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679844, 0.463187, 0.568568,
		0.688463, -0.136006, -0.712405,
		-0.252649, 0.875762, -0.411350,
		16.876568, 15.820192, 27.882359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676493, 15.456431, 28.032894>,  <17.053421, 15.207159, 28.170303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676493, 15.456431, 28.032894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431793, 15.772587, 28.045858>,  <17.284973, 15.962280, 28.053637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.431793, 15.772587, 28.045858>,  <17.676493, 15.456431, 28.032894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431793, 15.772587, 28.045858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740368, 0.557641, 0.375356,
		0.278605, 0.253617, -0.926314,
		-0.611747, 0.790389, 0.032409,
		17.248270, 16.009705, 28.055580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088991, 16.010557, 27.768290>,  <17.676493, 15.456431, 28.032894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088991, 16.010557, 27.768290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795040, 16.208218, 27.954094>,  <17.618670, 16.326813, 28.065577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795040, 16.208218, 27.954094>,  <18.088991, 16.010557, 27.768290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795040, 16.208218, 27.954094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645785, 0.719071, 0.256707,
		-0.207166, 0.488624, -0.847543,
		-0.734876, 0.494150, 0.464513,
		17.574577, 16.356462, 28.093449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234108, 16.663363, 27.653795>,  <18.088991, 16.010557, 27.768290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234108, 16.663363, 27.653795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.955917, 16.698803, 27.939020>,  <17.789003, 16.720068, 28.110155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.955917, 16.698803, 27.939020>,  <18.234108, 16.663363, 27.653795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.955917, 16.698803, 27.939020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510261, 0.759598, 0.403292,
		-0.505910, 0.644329, -0.573494,
		-0.695478, 0.088602, 0.713064,
		17.747274, 16.725384, 28.152939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
