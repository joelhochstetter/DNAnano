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
	<1.712633, 1.456936, 1.121591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.727646, 1.704891, 1.435108>,  <1.736653, 1.853665, 1.623218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.727646, 1.704891, 1.435108>,  <1.712633, 1.456936, 1.121591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.727646, 1.704891, 1.435108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663658, -0.570930, 0.483319,
		0.747094, -0.538309, 0.389966,
		0.037531, 0.619889, 0.783792,
		1.738905, 1.890858, 1.670246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.863626, 1.059076, 1.804082>,  <1.712633, 1.456936, 1.121591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.863626, 1.059076, 1.804082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.633053, 1.378727, 1.872339>,  <1.494709, 1.570518, 1.913294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.633053, 1.378727, 1.872339>,  <1.863626, 1.059076, 1.804082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.633053, 1.378727, 1.872339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696521, -0.589710, 0.408779,
		0.427296, 0.116777, 0.896538,
		-0.576434, 0.799127, 0.170643,
		1.460123, 1.618465, 1.923532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.677105, 0.912221, 2.458215>,  <1.863626, 1.059076, 1.804082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.677105, 0.912221, 2.458215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.403130, 1.097702, 2.233417>,  <1.238744, 1.208991, 2.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.403130, 1.097702, 2.233417>,  <1.677105, 0.912221, 2.458215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.403130, 1.097702, 2.233417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670689, -0.702632, 0.237666,
		-0.284670, 0.539711, 0.792259,
		-0.684938, 0.463703, -0.561997,
		1.197648, 1.236813, 2.064818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.005441, 1.048030, 2.890498>,  <1.677105, 0.912221, 2.458215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.005441, 1.048030, 2.890498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.931156, 1.054180, 2.497504>,  <0.886585, 1.057870, 2.261708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.931156, 1.054180, 2.497504>,  <1.005441, 1.048030, 2.890498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.931156, 1.054180, 2.497504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718781, -0.683877, 0.125164,
		-0.669973, 0.729436, 0.138057,
		-0.185713, 0.015376, -0.982484,
		0.875442, 1.058793, 2.202759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.223234, 1.193542, 2.805298>,  <1.005441, 1.048030, 2.890498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.223234, 1.193542, 2.805298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344952, 1.009014, 2.471931>,  <0.417982, 0.898297, 2.271910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344952, 1.009014, 2.471931>,  <0.223234, 1.193542, 2.805298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.344952, 1.009014, 2.471931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781032, -0.621701, 0.058960,
		-0.545338, 0.632986, -0.549486,
		0.304295, -0.461320, -0.833419,
		0.436240, 0.870618, 2.221905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.371402, 1.206715, 2.280866>,  <0.223234, 1.193542, 2.805298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.371402, 1.206715, 2.280866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.121719, 0.901646, 2.213107>,  <0.028090, 0.718604, 2.172452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.121719, 0.901646, 2.213107>,  <-0.371402, 1.206715, 2.280866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.121719, 0.901646, 2.213107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756551, -0.644184, 0.112507,
		-0.194929, 0.057931, -0.979105,
		0.624206, -0.762674, -0.169398,
		0.065543, 0.672844, 2.162288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.712835, 0.752339, 1.768350>,  <-0.371402, 1.206715, 2.280866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.712835, 0.752339, 1.768350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.426838, 0.535683, 1.945171>,  <-0.255240, 0.405689, 2.051264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.426838, 0.535683, 1.945171>,  <-0.712835, 0.752339, 1.768350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.426838, 0.535683, 1.945171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598454, -0.801042, -0.013545,
		0.361439, -0.254864, -0.896887,
		0.714992, -0.541642, 0.442053,
		-0.212340, 0.373190, 2.077787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.641931, 0.102495, 1.396070>,  <-0.712835, 0.752339, 1.768350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.641931, 0.102495, 1.396070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.480583, -0.002098, 1.746822>,  <-0.383774, -0.064854, 1.957274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.480583, -0.002098, 1.746822>,  <-0.641931, 0.102495, 1.396070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.480583, -0.002098, 1.746822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613373, -0.788390, 0.047060,
		0.679019, -0.556837, -0.478399,
		0.403370, -0.261482, 0.876881,
		-0.359572, -0.080543, 2.009887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.428233, 4.401189, 2.357345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.132332, 4.204481, 2.541053>,  <-0.954791, 4.086456, 2.651277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.132332, 4.204481, 2.541053>,  <-1.428233, 4.401189, 2.357345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.132332, 4.204481, 2.541053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600958, 0.789885, -0.122191,
		-0.302680, 0.366392, 0.879853,
		0.739753, -0.491770, 0.459269,
		-0.910406, 4.056950, 2.678833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.056934, 4.822132, 2.912633>,  <-1.428233, 4.401189, 2.357345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.056934, 4.822132, 2.912633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.820801, 4.530519, 2.774056>,  <-0.679121, 4.355552, 2.690910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.820801, 4.530519, 2.774056>,  <-1.056934, 4.822132, 2.912633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.820801, 4.530519, 2.774056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643500, 0.684180, -0.343229,
		0.487253, -0.020316, 0.873024,
		0.590333, -0.729030, -0.346442,
		-0.643701, 4.311810, 2.670123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.368212, 4.785842, 3.194486>,  <-1.056934, 4.822132, 2.912633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.368212, 4.785842, 3.194486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.385864, 4.665234, 2.813511>,  <-0.396456, 4.592869, 2.584926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.385864, 4.665234, 2.813511>,  <-0.368212, 4.785842, 3.194486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.385864, 4.665234, 2.813511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632501, 0.729526, -0.260258,
		0.773301, -0.613903, 0.158518,
		-0.044130, -0.301521, -0.952438,
		-0.399103, 4.574777, 2.527780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.357783, 4.596333, 3.023572>,  <-0.368212, 4.785842, 3.194486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.357783, 4.596333, 3.023572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.123520, 4.699977, 2.716361>,  <-0.017038, 4.762164, 2.532034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.123520, 4.699977, 2.716361>,  <0.357783, 4.596333, 3.023572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.123520, 4.699977, 2.716361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637313, 0.732671, -0.238798,
		0.500837, -0.629328, -0.594229,
		-0.585657, 0.259111, -0.768028,
		-0.052177, 4.777710, 2.485953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.776894, 4.586353, 2.454818>,  <0.357783, 4.596333, 3.023572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.776894, 4.586353, 2.454818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.472664, 4.826856, 2.356827>,  <0.290126, 4.971158, 2.298033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.472664, 4.826856, 2.356827>,  <0.776894, 4.586353, 2.454818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.472664, 4.826856, 2.356827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642342, 0.751753, -0.149211,
		0.094448, -0.270845, -0.957978,
		-0.760576, 0.601257, -0.244976,
		0.244491, 5.007233, 2.283334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.921670, 4.738094, 1.776041>,  <0.776894, 4.586353, 2.454818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.921670, 4.738094, 1.776041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670876, 5.009554, 1.929051>,  <0.520399, 5.172430, 2.020857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670876, 5.009554, 1.929051>,  <0.921670, 4.738094, 1.776041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.670876, 5.009554, 1.929051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661839, 0.723036, -0.197959,
		-0.410924, 0.129052, -0.902489,
		-0.626985, 0.678649, 0.382525,
		0.482780, 5.213149, 2.043808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.858430, 5.247678, 1.122141>,  <0.921670, 4.738094, 1.776041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.858430, 5.247678, 1.122141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.721764, 5.439190, 1.445631>,  <0.639764, 5.554097, 1.639725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.721764, 5.439190, 1.445631>,  <0.858430, 5.247678, 1.122141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.721764, 5.439190, 1.445631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584153, 0.782281, -0.216336,
		-0.736227, 0.398505, -0.546959,
		-0.341665, 0.478780, 0.808724,
		0.619264, 5.582824, 1.688248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.686510, 5.933045, 0.936743>,  <0.858430, 5.247678, 1.122141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.686510, 5.933045, 0.936743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769524, 5.946503, 1.327803>,  <0.819332, 5.954577, 1.562438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.769524, 5.946503, 1.327803>,  <0.686510, 5.933045, 0.936743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.769524, 5.946503, 1.327803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740583, 0.647548, -0.179494,
		-0.639114, 0.761281, 0.109473,
		0.207534, 0.033643, 0.977649,
		0.831784, 5.956596, 1.621097>
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
