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
	<3.627217, 0.007241, 3.342147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.608547, 0.322010, 3.588261>,  <3.597345, 0.510872, 3.735929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.608547, 0.322010, 3.588261>,  <3.627217, 0.007241, 3.342147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.608547, 0.322010, 3.588261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934490, -0.183220, 0.305221,
		0.352917, 0.589222, -0.726820,
		-0.046675, 0.786923, 0.615283,
		3.594545, 0.558087, 3.772846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.359897, 0.331412, 3.360499>,  <3.627217, 0.007241, 3.342147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.359897, 0.331412, 3.360499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.165310, 0.427618, 3.696476>,  <4.048558, 0.485341, 3.898062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.165310, 0.427618, 3.696476>,  <4.359897, 0.331412, 3.360499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.165310, 0.427618, 3.696476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819730, -0.207001, 0.534036,
		0.302312, 0.948316, -0.096457,
		-0.486468, 0.240514, 0.839942,
		4.019370, 0.499772, 3.948458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.582140, 0.988669, 3.699633>,  <4.359897, 0.331412, 3.360499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.582140, 0.988669, 3.699633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498329, 0.717730, 3.981710>,  <4.448042, 0.555166, 4.150957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498329, 0.717730, 3.981710>,  <4.582140, 0.988669, 3.699633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498329, 0.717730, 3.981710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954082, 0.016268, 0.299104,
		-0.214069, 0.735483, 0.642836,
		-0.209528, -0.677348, 0.705194,
		4.435471, 0.514525, 4.193269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.721154, 1.225401, 4.369764>,  <4.582140, 0.988669, 3.699633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.721154, 1.225401, 4.369764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736790, 0.825779, 4.362175>,  <4.746171, 0.586006, 4.357622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736790, 0.825779, 4.362175>,  <4.721154, 1.225401, 4.369764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.736790, 0.825779, 4.362175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807121, 0.020375, 0.590033,
		-0.589090, -0.038377, 0.807156,
		0.039090, -0.999056, -0.018972,
		4.748517, 0.526062, 4.356483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.111898, 1.084964, 4.985651>,  <4.721154, 1.225401, 4.369764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.111898, 1.084964, 4.985651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085613, 0.713520, 4.839575>,  <5.069842, 0.490653, 4.751929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085613, 0.713520, 4.839575>,  <5.111898, 1.084964, 4.985651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085613, 0.713520, 4.839575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758909, -0.284132, 0.585940,
		-0.647873, -0.238643, 0.723402,
		-0.065711, -0.928611, -0.365190,
		5.065900, 0.434937, 4.730018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038851, 0.578763, 5.603088>,  <5.111898, 1.084964, 4.985651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038851, 0.578763, 5.603088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.184082, 0.383236, 5.285791>,  <5.271220, 0.265920, 5.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.184082, 0.383236, 5.285791>,  <5.038851, 0.578763, 5.603088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.184082, 0.383236, 5.285791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770708, -0.320877, 0.550497,
		-0.523626, -0.811230, 0.260234,
		0.363076, -0.488819, -0.793241,
		5.293005, 0.236590, 5.047819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.132991, -0.056438, 5.823802>,  <5.038851, 0.578763, 5.603088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.132991, -0.056438, 5.823802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.366409, -0.011246, 5.502129>,  <5.506460, 0.015870, 5.309124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.366409, -0.011246, 5.502129>,  <5.132991, -0.056438, 5.823802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.366409, -0.011246, 5.502129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730946, -0.504543, 0.459516,
		-0.353828, -0.855963, -0.377006,
		0.583544, 0.112981, -0.804184,
		5.541472, 0.022649, 5.260873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.355901, -0.773079, 5.740164>,  <5.132991, -0.056438, 5.823802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.355901, -0.773079, 5.740164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.589668, -0.494196, 5.574100>,  <5.729928, -0.326866, 5.474463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.589668, -0.494196, 5.574100>,  <5.355901, -0.773079, 5.740164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.589668, -0.494196, 5.574100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796570, -0.395387, 0.457324,
		0.154702, -0.597971, -0.786446,
		0.584418, 0.697208, -0.415159,
		5.764994, -0.285033, 5.449553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.264370, 5.031481, 1.647204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932434, 4.850910, 1.778402>,  <0.733273, 4.742568, 1.857121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932434, 4.850910, 1.778402>,  <1.264370, 5.031481, 1.647204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.932434, 4.850910, 1.778402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079440, 0.486239, 0.870208,
		-0.552319, 0.748188, -0.367638,
		-0.829839, -0.451427, 0.327995,
		0.683482, 4.715482, 1.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.345654, 5.516429, 1.058526>,  <1.264370, 5.031481, 1.647204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.345654, 5.516429, 1.058526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.574409, 5.288391, 0.822582>,  <1.711663, 5.151568, 0.681016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.574409, 5.288391, 0.822582>,  <1.345654, 5.516429, 1.058526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.574409, 5.288391, 0.822582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668974, 0.092054, -0.737563,
		0.474781, 0.816404, -0.328735,
		0.571888, -0.570096, -0.589859,
		1.745976, 5.117362, 0.645624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.251707, 5.738280, 0.497955>,  <1.345654, 5.516429, 1.058526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.251707, 5.738280, 0.497955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.396019, 5.382504, 0.385719>,  <1.482606, 5.169037, 0.318378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.396019, 5.382504, 0.385719>,  <1.251707, 5.738280, 0.497955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.396019, 5.382504, 0.385719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749123, -0.097147, -0.655270,
		0.555566, 0.446604, -0.701350,
		0.360780, -0.889442, -0.280590,
		1.504253, 5.115671, 0.301542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.624321, 5.561776, -0.186671>,  <1.251707, 5.738280, 0.497955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.624321, 5.561776, -0.186671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.371262, 5.316273, 0.002245>,  <1.219426, 5.168971, 0.115595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.371262, 5.316273, 0.002245>,  <1.624321, 5.561776, -0.186671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.371262, 5.316273, 0.002245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704990, 0.204009, -0.679242,
		0.320541, -0.762678, -0.561761,
		-0.632647, -0.613761, 0.472287,
		1.181467, 5.132145, 0.143932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.290773, 5.128676, -0.797988>,  <1.624321, 5.561776, -0.186671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.290773, 5.128676, -0.797988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069939, 5.106873, -0.465187>,  <0.937438, 5.093791, -0.265506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069939, 5.106873, -0.465187>,  <1.290773, 5.128676, -0.797988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.069939, 5.106873, -0.465187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833172, -0.002254, -0.553009,
		0.032019, -0.998511, -0.044172,
		-0.552086, -0.054510, 0.832003,
		0.904313, 5.090520, -0.215586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.819728, 4.591640, -0.953664>,  <1.290773, 5.128676, -0.797988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.819728, 4.591640, -0.953664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669571, 4.793945, -0.642979>,  <0.579477, 4.915329, -0.456567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669571, 4.793945, -0.642979>,  <0.819728, 4.591640, -0.953664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669571, 4.793945, -0.642979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911279, -0.048356, -0.408941,
		-0.169269, -0.861315, 0.479046,
		-0.375392, 0.505765, 0.776713,
		0.556953, 4.945674, -0.409965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.181558, 4.270615, -0.831459>,  <0.819728, 4.591640, -0.953664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.181558, 4.270615, -0.831459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.143501, 4.630917, -0.661947>,  <0.120667, 4.847098, -0.560240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.143501, 4.630917, -0.661947>,  <0.181558, 4.270615, -0.831459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.143501, 4.630917, -0.661947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924683, 0.077687, -0.372728,
		-0.368659, -0.427323, 0.825522,
		-0.095142, 0.900755, 0.423778,
		0.114959, 4.901143, -0.534814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.469177, 4.204148, -0.564987>,  <0.181558, 4.270615, -0.831459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.469177, 4.204148, -0.564987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.404243, 4.597416, -0.598509>,  <-0.365283, 4.833377, -0.618622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.404243, 4.597416, -0.598509>,  <-0.469177, 4.204148, -0.564987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.404243, 4.597416, -0.598509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953544, 0.134463, -0.269579,
		-0.253773, 0.123673, 0.959325,
		0.162334, 0.983171, -0.083805,
		-0.355543, 4.892367, -0.623650>
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
