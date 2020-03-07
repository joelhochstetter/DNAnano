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
	<2.477411, 1.341983, 2.386717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.172523, 1.207001, 2.607677>,  <1.989591, 1.126012, 2.740254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.172523, 1.207001, 2.607677>,  <2.477411, 1.341983, 2.386717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.172523, 1.207001, 2.607677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071903, -0.803949, -0.590336,
		0.643313, -0.489685, 0.588521,
		-0.762219, -0.337455, 0.552401,
		1.943858, 1.105764, 2.773398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.617758, 0.712403, 2.748789>,  <2.477411, 1.341983, 2.386717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.617758, 0.712403, 2.748789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.242058, 0.763283, 2.621273>,  <2.016638, 0.793811, 2.544763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.242058, 0.763283, 2.621273>,  <2.617758, 0.712403, 2.748789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.242058, 0.763283, 2.621273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124676, -0.738914, -0.662165,
		-0.319786, -0.661684, 0.678167,
		-0.939251, 0.127200, -0.318790,
		1.960282, 0.801443, 2.525636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.312291, 0.101558, 2.800881>,  <2.617758, 0.712403, 2.748789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.312291, 0.101558, 2.800881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166687, 0.325123, 2.502857>,  <2.079325, 0.459262, 2.324043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166687, 0.325123, 2.502857>,  <2.312291, 0.101558, 2.800881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166687, 0.325123, 2.502857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405180, -0.625256, -0.666996,
		-0.838646, -0.544676, 0.001140,
		-0.364010, 0.558912, -0.745060,
		2.057484, 0.492796, 2.279339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.823523, -0.265538, 2.247360>,  <2.312291, 0.101558, 2.800881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.823523, -0.265538, 2.247360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.067352, 0.016758, 2.102943>,  <2.213650, 0.186135, 2.016294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.067352, 0.016758, 2.102943>,  <1.823523, -0.265538, 2.247360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.067352, 0.016758, 2.102943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304189, -0.628816, -0.715583,
		-0.732044, 0.326377, -0.597988,
		0.609574, 0.705740, -0.361041,
		2.250225, 0.228480, 1.994631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.632975, -0.038015, 1.584202>,  <1.823523, -0.265538, 2.247360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.632975, -0.038015, 1.584202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028137, -0.001865, 1.634602>,  <2.265234, 0.019824, 1.664842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028137, -0.001865, 1.634602>,  <1.632975, -0.038015, 1.584202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028137, -0.001865, 1.634602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151284, -0.383526, -0.911055,
		-0.034012, 0.919098, -0.392559,
		0.987905, 0.090374, 0.126000,
		2.324509, 0.025247, 1.672402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.792242, 0.394112, 0.998520>,  <1.632975, -0.038015, 1.584202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.792242, 0.394112, 0.998520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.084900, 0.154800, 1.129215>,  <2.260495, 0.011213, 1.207632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.084900, 0.154800, 1.129215>,  <1.792242, 0.394112, 0.998520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.084900, 0.154800, 1.129215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288444, -0.162582, -0.943593,
		0.617654, 0.784620, 0.053617,
		0.731645, -0.598279, 0.326738,
		2.304393, -0.024683, 1.227237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.428973, 0.686341, 0.824767>,  <1.792242, 0.394112, 0.998520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.428973, 0.686341, 0.824767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514648, 0.299755, 0.881432>,  <2.566054, 0.067803, 0.915431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514648, 0.299755, 0.881432>,  <2.428973, 0.686341, 0.824767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.514648, 0.299755, 0.881432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346703, -0.060365, -0.936031,
		0.913193, 0.249601, 0.322147,
		0.214188, -0.966465, 0.141662,
		2.578905, 0.009815, 0.923930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.177688, 0.462954, 0.565135>,  <2.428973, 0.686341, 0.824767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.177688, 0.462954, 0.565135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900330, 0.174850, 0.556858>,  <2.733915, 0.001988, 0.551892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900330, 0.174850, 0.556858>,  <3.177688, 0.462954, 0.565135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900330, 0.174850, 0.556858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247021, -0.210635, -0.945840,
		0.676892, -0.660953, 0.323973,
		-0.693396, -0.720260, -0.020692,
		2.692311, -0.041227, 0.550650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.218285, 4.520795, 0.334378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.856827, 4.516460, 0.163120>,  <0.639952, 4.513860, 0.060366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.856827, 4.516460, 0.163120>,  <1.218285, 4.520795, 0.334378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.856827, 4.516460, 0.163120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380976, 0.436356, -0.815138,
		0.195657, -0.899709, -0.390183,
		-0.903646, -0.010837, -0.428144,
		0.585733, 4.513209, 0.034677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.362547, 4.134696, -0.287766>,  <1.218285, 4.520795, 0.334378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.362547, 4.134696, -0.287766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.070480, 4.407997, -0.285965>,  <0.895240, 4.571978, -0.284885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.070480, 4.407997, -0.285965>,  <1.362547, 4.134696, -0.287766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.070480, 4.407997, -0.285965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463739, 0.500397, -0.731129,
		-0.501799, -0.531759, -0.682225,
		-0.730167, 0.683253, 0.004502,
		0.851430, 4.612973, -0.284615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.032053, 4.382987, 0.028905>,  <1.362547, 4.134696, -0.287766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.032053, 4.382987, 0.028905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.426880, 4.361511, 0.089321>,  <2.663776, 4.348625, 0.125571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.426880, 4.361511, 0.089321>,  <2.032053, 4.382987, 0.028905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.426880, 4.361511, 0.089321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154507, -0.067670, 0.985671,
		-0.042707, -0.996262, -0.075092,
		0.987068, -0.053697, 0.151039,
		2.723001, 4.345404, 0.134633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.188692, 3.799466, 0.588626>,  <2.032053, 4.382987, 0.028905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.188692, 3.799466, 0.588626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431625, 4.117245, 0.588497>,  <2.577386, 4.307912, 0.588420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431625, 4.117245, 0.588497>,  <2.188692, 3.799466, 0.588626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431625, 4.117245, 0.588497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084084, 0.064685, 0.994357,
		0.789984, -0.603880, 0.106085,
		0.607334, 0.794446, -0.000323,
		2.613826, 4.355578, 0.588400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.786014, 3.733360, 1.035657>,  <2.188692, 3.799466, 0.588626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.786014, 3.733360, 1.035657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.729568, 4.127472, 0.997063>,  <2.695701, 4.363939, 0.973906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.729568, 4.127472, 0.997063>,  <2.786014, 3.733360, 1.035657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.729568, 4.127472, 0.997063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231654, 0.061893, 0.970827,
		0.962509, 0.159348, 0.219510,
		-0.141114, 0.985281, -0.096486,
		2.687234, 4.423056, 0.968117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.180063, 4.018270, 1.571113>,  <2.786014, 3.733360, 1.035657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.180063, 4.018270, 1.571113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.912735, 4.299286, 1.473309>,  <2.752338, 4.467896, 1.414626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.912735, 4.299286, 1.473309>,  <3.180063, 4.018270, 1.571113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.912735, 4.299286, 1.473309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046979, 0.288182, 0.956423,
		0.742390, 0.650682, -0.159593,
		-0.668319, 0.702541, -0.244511,
		2.712239, 4.510048, 1.399955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435321, 4.664858, 1.786177>,  <3.180063, 4.018270, 1.571113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435321, 4.664858, 1.786177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.036423, 4.676983, 1.759094>,  <2.797084, 4.684258, 1.742845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.036423, 4.676983, 1.759094>,  <3.435321, 4.664858, 1.786177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.036423, 4.676983, 1.759094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058932, 0.230614, 0.971259,
		0.045055, 0.972573, -0.228192,
		-0.997245, 0.030313, -0.067706,
		2.737249, 4.686077, 1.738782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.186558, 5.351573, 1.946635>,  <3.435321, 4.664858, 1.786177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.186558, 5.351573, 1.946635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.942322, 5.053173, 2.052967>,  <2.795780, 4.874134, 2.116766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.942322, 5.053173, 2.052967>,  <3.186558, 5.351573, 1.946635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.942322, 5.053173, 2.052967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041211, 0.305282, 0.951370,
		-0.790873, 0.591852, -0.155658,
		-0.610590, -0.745998, 0.265830,
		2.759145, 4.829373, 2.132716>
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
