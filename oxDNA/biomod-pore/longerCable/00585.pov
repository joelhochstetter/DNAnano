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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.313898, 35.248631, 34.597702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188765, 35.025257, 34.905022>,  <24.113686, 34.891232, 35.089413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188765, 35.025257, 34.905022>,  <24.313898, 35.248631, 34.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188765, 35.025257, 34.905022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817343, -0.570325, -0.081736,
		0.483825, 0.602395, 0.634850,
		-0.312833, -0.558436, 0.768300,
		24.094915, 34.857727, 35.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.848503, 35.103214, 35.100105>,  <24.313898, 35.248631, 34.597702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.848503, 35.103214, 35.100105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615938, 34.781593, 35.149845>,  <24.476398, 34.588623, 35.179688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.615938, 34.781593, 35.149845>,  <24.848503, 35.103214, 35.100105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.615938, 34.781593, 35.149845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813333, -0.578359, 0.063169,
		0.021127, 0.137864, 0.990226,
		-0.581414, -0.804049, 0.124349,
		24.441513, 34.540379, 35.187149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026749, 34.603569, 35.771088>,  <24.848503, 35.103214, 35.100105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026749, 34.603569, 35.771088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897232, 34.445194, 35.427368>,  <24.819523, 34.350170, 35.221138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897232, 34.445194, 35.427368>,  <25.026749, 34.603569, 35.771088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897232, 34.445194, 35.427368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754116, -0.656484, 0.018332,
		-0.571372, -0.642074, 0.511150,
		-0.323792, -0.395941, -0.859296,
		24.800095, 34.326412, 35.169579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887865, 33.862202, 35.922440>,  <25.026749, 34.603569, 35.771088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887865, 33.862202, 35.922440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082190, 34.023262, 35.612122>,  <25.198784, 34.119896, 35.425930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082190, 34.023262, 35.612122>,  <24.887865, 33.862202, 35.922440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082190, 34.023262, 35.612122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543723, -0.834157, -0.092454,
		-0.684365, -0.376905, -0.624169,
		0.485809, 0.402647, -0.775800,
		25.227932, 34.144054, 35.379383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764975, 33.629700, 35.232040>,  <24.887865, 33.862202, 35.922440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764975, 33.629700, 35.232040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143986, 33.740967, 35.169033>,  <25.371393, 33.807728, 35.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143986, 33.740967, 35.169033>,  <24.764975, 33.629700, 35.232040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143986, 33.740967, 35.169033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249842, -0.951799, -0.177925,
		-0.199419, 0.129234, -0.971355,
		0.947529, 0.278167, -0.157519,
		25.428244, 33.824417, 35.121777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031733, 33.374950, 34.572330>,  <24.764975, 33.629700, 35.232040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031733, 33.374950, 34.572330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337530, 33.440277, 34.821770>,  <25.521009, 33.479473, 34.971436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337530, 33.440277, 34.821770>,  <25.031733, 33.374950, 34.572330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337530, 33.440277, 34.821770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330405, -0.929916, -0.161518,
		0.553518, 0.329520, -0.764875,
		0.764493, 0.163316, 0.623600,
		25.566877, 33.489273, 35.008850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672930, 33.090023, 34.235882>,  <25.031733, 33.374950, 34.572330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672930, 33.090023, 34.235882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739511, 33.109005, 34.629845>,  <25.779461, 33.120396, 34.866222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739511, 33.109005, 34.629845>,  <25.672930, 33.090023, 34.235882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739511, 33.109005, 34.629845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399842, -0.916285, -0.023426,
		0.901343, 0.397706, -0.171496,
		0.166456, 0.047456, 0.984906,
		25.789448, 33.123241, 34.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436022, 33.189655, 34.343887>,  <25.672930, 33.090023, 34.235882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436022, 33.189655, 34.343887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205856, 33.003597, 34.612968>,  <26.067757, 32.891960, 34.774418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205856, 33.003597, 34.612968>,  <26.436022, 33.189655, 34.343887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205856, 33.003597, 34.612968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526693, -0.840008, -0.130314,
		0.625694, 0.279325, 0.728344,
		-0.575414, -0.465150, 0.672706,
		26.033232, 32.864052, 34.814781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856878, 32.937447, 34.920666>,  <26.436022, 33.189655, 34.343887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856878, 32.937447, 34.920666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522860, 32.718266, 34.900917>,  <26.322449, 32.586758, 34.889069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522860, 32.718266, 34.900917>,  <26.856878, 32.937447, 34.920666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522860, 32.718266, 34.900917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549926, -0.834007, -0.044868,
		-0.016590, -0.064617, 0.997772,
		-0.835048, -0.547957, -0.049371,
		26.272345, 32.553879, 34.886105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043934, 32.331322, 35.290112>,  <26.856878, 32.937447, 34.920666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043934, 32.331322, 35.290112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727951, 32.253242, 35.057606>,  <26.538361, 32.206394, 34.918102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727951, 32.253242, 35.057606>,  <27.043934, 32.331322, 35.290112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727951, 32.253242, 35.057606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302939, -0.948442, -0.093195,
		-0.533100, -0.249707, 0.808363,
		-0.789957, -0.195202, -0.581261,
		26.490965, 32.194683, 34.883228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538820, 31.945028, 35.586082>,  <27.043934, 32.331322, 35.290112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538820, 31.945028, 35.586082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544926, 31.868362, 35.193546>,  <26.548590, 31.822363, 34.958023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544926, 31.868362, 35.193546>,  <26.538820, 31.945028, 35.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544926, 31.868362, 35.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288436, -0.938890, 0.187859,
		-0.957378, -0.285922, 0.040952,
		0.015264, -0.191663, -0.981342,
		26.549505, 31.810863, 34.899143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350878, 31.863274, 36.327385>,  <26.538820, 31.945028, 35.586082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350878, 31.863274, 36.327385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107285, 32.122803, 36.144882>,  <25.961128, 32.278519, 36.035381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107285, 32.122803, 36.144882>,  <26.350878, 31.863274, 36.327385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107285, 32.122803, 36.144882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757566, -0.305349, 0.576936,
		0.235012, 0.696988, 0.677479,
		-0.608985, 0.648822, -0.456254,
		25.924589, 32.317448, 36.008007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106800, 32.370083, 36.858940>,  <26.350878, 31.863274, 36.327385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106800, 32.370083, 36.858940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858997, 32.316288, 36.549587>,  <25.710316, 32.284012, 36.363976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858997, 32.316288, 36.549587>,  <26.106800, 32.370083, 36.858940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858997, 32.316288, 36.549587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754729, -0.168871, 0.633930,
		-0.215858, 0.976420, 0.003115,
		-0.619507, -0.134488, -0.773385,
		25.673145, 32.275940, 36.317574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411558, 32.064983, 37.083904>,  <26.106800, 32.370083, 36.858940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411558, 32.064983, 37.083904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247725, 31.908985, 36.754021>,  <25.149424, 31.815388, 36.556091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247725, 31.908985, 36.754021>,  <25.411558, 32.064983, 37.083904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247725, 31.908985, 36.754021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082144, -0.884579, 0.459100,
		-0.908566, 0.255786, 0.330275,
		-0.409585, -0.389993, -0.824709,
		25.124849, 31.791986, 36.506607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649288, 31.757856, 37.162502>,  <25.411558, 32.064983, 37.083904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649288, 31.757856, 37.162502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843758, 31.564213, 36.871498>,  <24.960440, 31.448027, 36.696896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843758, 31.564213, 36.871498>,  <24.649288, 31.757856, 37.162502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843758, 31.564213, 36.871498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142454, -0.865296, 0.480594,
		-0.862172, -0.130016, -0.489648,
		0.486176, -0.484107, -0.727512,
		24.989611, 31.418982, 36.653244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.222883, 31.207968, 36.827641>,  <24.649288, 31.757856, 37.162502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.222883, 31.207968, 36.827641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604164, 31.114679, 36.750687>,  <24.832933, 31.058706, 36.704514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604164, 31.114679, 36.750687>,  <24.222883, 31.207968, 36.827641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604164, 31.114679, 36.750687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069997, -0.789285, 0.610025,
		-0.294114, -0.568012, -0.768674,
		0.953204, -0.233222, -0.192380,
		24.890125, 31.044712, 36.692974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366827, 30.480928, 36.485371>,  <24.222883, 31.207968, 36.827641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366827, 30.480928, 36.485371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664461, 30.604284, 36.722431>,  <24.843042, 30.678299, 36.864666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664461, 30.604284, 36.722431>,  <24.366827, 30.480928, 36.485371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664461, 30.604284, 36.722431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080762, -0.839059, 0.538012,
		0.663185, -0.448190, -0.599425,
		0.744085, 0.308391, 0.592648,
		24.887686, 30.696802, 36.900227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941801, 30.013531, 36.560837>,  <24.366827, 30.480928, 36.485371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941801, 30.013531, 36.560837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968071, 30.222391, 36.900967>,  <24.983833, 30.347708, 37.105045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968071, 30.222391, 36.900967>,  <24.941801, 30.013531, 36.560837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968071, 30.222391, 36.900967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076527, -0.852286, 0.517448,
		0.994902, 0.031090, -0.095932,
		0.065674, 0.522151, 0.850321,
		24.987774, 30.379036, 37.156063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199322, 29.547333, 37.058266>,  <24.941801, 30.013531, 36.560837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199322, 29.547333, 37.058266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067591, 29.815006, 37.324718>,  <24.988552, 29.975611, 37.484592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067591, 29.815006, 37.324718>,  <25.199322, 29.547333, 37.058266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067591, 29.815006, 37.324718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255225, -0.742318, 0.619536,
		0.909067, 0.034016, 0.415258,
		-0.329328, 0.669184, 0.666135,
		24.968792, 30.015762, 37.524559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429321, 29.434921, 37.734909>,  <25.199322, 29.547333, 37.058266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429321, 29.434921, 37.734909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093132, 29.644382, 37.790611>,  <24.891418, 29.770060, 37.824032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093132, 29.644382, 37.790611>,  <25.429321, 29.434921, 37.734909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093132, 29.644382, 37.790611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343411, -0.713566, 0.610649,
		0.419136, 0.465412, 0.779562,
		-0.840472, 0.523655, 0.139253,
		24.840990, 29.801479, 37.832386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854916, 29.179794, 38.263390>,  <25.429321, 29.434921, 37.734909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854916, 29.179794, 38.263390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581671, 29.463598, 38.194157>,  <24.417725, 29.633881, 38.152618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581671, 29.463598, 38.194157>,  <24.854916, 29.179794, 38.263390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.581671, 29.463598, 38.194157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234643, 0.437651, 0.867989,
		0.691593, 0.552322, -0.465446,
		-0.683112, 0.709508, -0.173078,
		24.376738, 29.676451, 38.142235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255068, 29.928293, 38.284863>,  <24.854916, 29.179794, 38.263390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255068, 29.928293, 38.284863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865486, 29.890944, 38.367516>,  <24.631737, 29.868534, 38.417107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865486, 29.890944, 38.367516>,  <25.255068, 29.928293, 38.284863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865486, 29.890944, 38.367516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160046, 0.362456, 0.918156,
		-0.160630, 0.927311, -0.338070,
		-0.973952, -0.093377, 0.206634,
		24.573301, 29.862930, 38.429504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962507, 29.603937, 38.904293>,  <25.255068, 29.928293, 38.284863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962507, 29.603937, 38.904293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160061, 29.542400, 39.246616>,  <25.278593, 29.505478, 39.452011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160061, 29.542400, 39.246616>,  <24.962507, 29.603937, 38.904293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160061, 29.542400, 39.246616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367946, 0.928739, -0.045389,
		-0.787842, 0.337309, 0.515294,
		0.493883, -0.153841, 0.855811,
		25.308226, 29.496248, 39.503361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660845, 30.034491, 39.539143>,  <24.962507, 29.603937, 38.904293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660845, 30.034491, 39.539143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056894, 29.979010, 39.547268>,  <25.294525, 29.945721, 39.552143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056894, 29.979010, 39.547268>,  <24.660845, 30.034491, 39.539143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056894, 29.979010, 39.547268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140167, 0.977508, -0.157580,
		0.002002, 0.158871, 0.987297,
		0.990126, -0.138702, 0.020312,
		25.353931, 29.937399, 39.553360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027466, 30.066998, 40.149765>,  <24.660845, 30.034491, 39.539143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027466, 30.066998, 40.149765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913883, 29.700806, 40.035736>,  <24.845734, 29.481091, 39.967319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913883, 29.700806, 40.035736>,  <25.027466, 30.066998, 40.149765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913883, 29.700806, 40.035736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727720, -0.399359, 0.557616,
		-0.624332, -0.049115, 0.779613,
		-0.283958, -0.915478, -0.285075,
		24.828695, 29.426163, 39.950214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896454, 29.703949, 40.699020>,  <25.027466, 30.066998, 40.149765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896454, 29.703949, 40.699020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930580, 29.417427, 40.422001>,  <24.951056, 29.245514, 40.255787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930580, 29.417427, 40.422001>,  <24.896454, 29.703949, 40.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930580, 29.417427, 40.422001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660627, -0.479660, 0.577494,
		-0.745851, -0.506786, 0.432289,
		0.085314, -0.716306, -0.692551,
		24.956175, 29.202536, 40.214237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005085, 29.058659, 41.047421>,  <24.896454, 29.703949, 40.699020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005085, 29.058659, 41.047421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146038, 28.999043, 40.677856>,  <25.230610, 28.963274, 40.456116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146038, 28.999043, 40.677856>,  <25.005085, 29.058659, 41.047421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146038, 28.999043, 40.677856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790751, -0.480601, 0.379123,
		-0.500537, -0.864181, -0.051503,
		0.352384, -0.149040, -0.923912,
		25.251753, 28.954330, 40.400684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190462, 28.330275, 40.937054>,  <25.005085, 29.058659, 41.047421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190462, 28.330275, 40.937054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390507, 28.613413, 40.737518>,  <25.510534, 28.783297, 40.617798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390507, 28.613413, 40.737518>,  <25.190462, 28.330275, 40.937054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390507, 28.613413, 40.737518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864418, -0.373695, 0.336354,
		0.051672, -0.599422, -0.798764,
		0.500112, 0.707846, -0.498841,
		25.540541, 28.825766, 40.587868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812235, 28.000271, 40.891853>,  <25.190462, 28.330275, 40.937054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812235, 28.000271, 40.891853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874966, 28.384289, 40.799145>,  <25.912603, 28.614700, 40.743519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874966, 28.384289, 40.799145>,  <25.812235, 28.000271, 40.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874966, 28.384289, 40.799145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884059, -0.031844, 0.466289,
		0.440278, -0.278023, -0.853732,
		0.156825, 0.960046, -0.231768,
		25.922014, 28.672302, 40.729614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597908, 28.157251, 40.616741>,  <25.812235, 28.000271, 40.891853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597908, 28.157251, 40.616741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419407, 28.460966, 40.806202>,  <26.312305, 28.643194, 40.919876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419407, 28.460966, 40.806202>,  <26.597908, 28.157251, 40.616741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419407, 28.460966, 40.806202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724659, -0.003962, 0.689096,
		0.525098, 0.650744, -0.548456,
		-0.446252, 0.759287, 0.473648,
		26.285532, 28.688751, 40.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103546, 28.126770, 41.334557>,  <26.597908, 28.157251, 40.616741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103546, 28.126770, 41.334557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117678, 28.515903, 41.243038>,  <27.126158, 28.749384, 41.188126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117678, 28.515903, 41.243038>,  <27.103546, 28.126770, 41.334557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117678, 28.515903, 41.243038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980368, -0.078178, -0.181016,
		-0.193985, -0.217911, -0.956496,
		0.035331, 0.972833, -0.228798,
		27.128277, 28.807753, 41.174400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380793, 28.117050, 40.746376>,  <27.103546, 28.126770, 41.334557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380793, 28.117050, 40.746376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482861, 28.465849, 40.913471>,  <27.544102, 28.675129, 41.013729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482861, 28.465849, 40.913471>,  <27.380793, 28.117050, 40.746376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482861, 28.465849, 40.913471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962379, -0.187335, -0.196804,
		-0.093355, 0.452244, -0.886995,
		0.255169, 0.871998, 0.417741,
		27.559412, 28.727448, 41.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773058, 28.356361, 40.201210>,  <27.380793, 28.117050, 40.746376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773058, 28.356361, 40.201210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844627, 28.485119, 40.573097>,  <27.887569, 28.562374, 40.796230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844627, 28.485119, 40.573097>,  <27.773058, 28.356361, 40.201210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844627, 28.485119, 40.573097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973155, -0.196939, -0.119098,
		0.144760, 0.926066, -0.348491,
		0.178924, 0.321895, 0.929715,
		27.898304, 28.581688, 40.852013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437637, 28.759232, 40.293617>,  <27.773058, 28.356361, 40.201210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437637, 28.759232, 40.293617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405172, 28.566961, 40.642872>,  <28.385695, 28.451599, 40.852425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405172, 28.566961, 40.642872>,  <28.437637, 28.759232, 40.293617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405172, 28.566961, 40.642872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940161, -0.327777, -0.093055,
		0.330923, 0.813335, 0.478515,
		-0.081161, -0.480675, 0.873135,
		28.380823, 28.422758, 40.904812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161133, 28.578489, 40.361328>,  <28.437637, 28.759232, 40.293617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161133, 28.578489, 40.361328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356438, 28.668533, 40.024063>,  <29.473619, 28.722561, 39.821705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356438, 28.668533, 40.024063>,  <29.161133, 28.578489, 40.361328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356438, 28.668533, 40.024063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869964, -0.201971, 0.449857,
		-0.069026, -0.953169, -0.294454,
		0.488261, 0.225113, -0.843164,
		29.502916, 28.736067, 39.771114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789804, 28.197784, 40.203972>,  <29.161133, 28.578489, 40.361328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789804, 28.197784, 40.203972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883738, 28.519745, 39.985985>,  <29.940098, 28.712921, 39.855194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883738, 28.519745, 39.985985>,  <29.789804, 28.197784, 40.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883738, 28.519745, 39.985985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956121, -0.090235, 0.278731,
		0.175176, -0.586507, -0.790773,
		0.234834, 0.804902, -0.544965,
		29.954187, 28.761215, 39.822495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719267, 28.415676, 40.875240>,  <29.789804, 28.197784, 40.203972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719267, 28.415676, 40.875240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328094, 28.342701, 40.915977>,  <29.093391, 28.298916, 40.940418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328094, 28.342701, 40.915977>,  <29.719267, 28.415676, 40.875240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328094, 28.342701, 40.915977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011976, 0.437671, 0.899055,
		-0.208595, 0.880432, -0.425826,
		-0.977929, -0.182439, 0.101840,
		29.034716, 28.287970, 40.946529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183556, 28.581387, 41.492447>,  <29.719267, 28.415676, 40.875240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183556, 28.581387, 41.492447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457813, 28.871744, 41.514267>,  <30.622368, 29.045958, 41.527359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457813, 28.871744, 41.514267>,  <30.183556, 28.581387, 41.492447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457813, 28.871744, 41.514267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699675, -0.636487, -0.324560,
		-0.200873, 0.260702, -0.944291,
		0.685642, 0.725892, 0.054553,
		30.663506, 29.089512, 41.530632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574085, 28.800941, 40.811893>,  <30.183556, 28.581387, 41.492447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574085, 28.800941, 40.811893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810686, 28.837944, 41.132286>,  <30.952646, 28.860146, 41.324520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810686, 28.837944, 41.132286>,  <30.574085, 28.800941, 40.811893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810686, 28.837944, 41.132286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697793, -0.556463, -0.451036,
		0.403991, 0.825706, -0.393701,
		0.591504, 0.092508, 0.800978,
		30.988138, 28.865696, 41.372578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190905, 28.906109, 40.381004>,  <30.574085, 28.800941, 40.811893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190905, 28.906109, 40.381004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254759, 28.753899, 40.745358>,  <31.293072, 28.662573, 40.963970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254759, 28.753899, 40.745358>,  <31.190905, 28.906109, 40.381004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254759, 28.753899, 40.745358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557745, -0.726567, -0.401275,
		0.814516, 0.572101, 0.096251,
		0.159637, -0.380528, 0.910887,
		31.302650, 28.639740, 41.018623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946154, 28.786592, 40.556881>,  <31.190905, 28.906109, 40.381004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946154, 28.786592, 40.556881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703302, 28.514202, 40.720673>,  <31.557592, 28.350769, 40.818947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703302, 28.514202, 40.720673>,  <31.946154, 28.786592, 40.556881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703302, 28.514202, 40.720673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476439, -0.724385, -0.498269,
		0.635927, -0.107421, 0.764237,
		-0.607126, -0.680975, 0.409476,
		31.521164, 28.309910, 40.843517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034710, 28.070229, 40.895248>,  <31.946154, 28.786592, 40.556881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034710, 28.070229, 40.895248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891542, 27.817455, 40.620277>,  <31.805643, 27.665791, 40.455296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891542, 27.817455, 40.620277>,  <32.034710, 28.070229, 40.895248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891542, 27.817455, 40.620277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086723, 0.755512, -0.649369,
		0.929717, -0.172805, -0.325215,
		-0.357918, -0.631933, -0.687426,
		31.784166, 27.627876, 40.414051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500214, 28.024551, 40.344387>,  <32.034710, 28.070229, 40.895248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500214, 28.024551, 40.344387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128201, 27.939384, 40.224586>,  <31.904991, 27.888285, 40.152706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128201, 27.939384, 40.224586>,  <32.500214, 28.024551, 40.344387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128201, 27.939384, 40.224586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046572, 0.740169, -0.670806,
		0.364506, -0.637822, -0.678468,
		-0.930035, -0.212915, -0.299501,
		31.849190, 27.875509, 40.134735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508560, 27.993525, 39.663231>,  <32.500214, 28.024551, 40.344387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508560, 27.993525, 39.663231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132927, 28.084358, 39.766430>,  <31.907547, 28.138859, 39.828350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132927, 28.084358, 39.766430>,  <32.508560, 27.993525, 39.663231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132927, 28.084358, 39.766430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023130, 0.707189, -0.706646,
		-0.342921, -0.669564, -0.658854,
		-0.939079, 0.227085, 0.257997,
		31.851204, 28.152483, 39.843830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813358, 27.891893, 39.224777>,  <32.508560, 27.993525, 39.663231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813358, 27.891893, 39.224777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846340, 28.222387, 39.447681>,  <31.866129, 28.420685, 39.581425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846340, 28.222387, 39.447681>,  <31.813358, 27.891893, 39.224777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846340, 28.222387, 39.447681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000138, 0.559152, -0.829065,
		-0.996595, 0.068436, 0.045990,
		0.082453, 0.826236, 0.557257,
		31.871077, 28.470259, 39.614861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245178, 28.371281, 39.082272>,  <31.813358, 27.891893, 39.224777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245178, 28.371281, 39.082272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580431, 28.550196, 39.207153>,  <31.781582, 28.657545, 39.282082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580431, 28.550196, 39.207153>,  <31.245178, 28.371281, 39.082272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580431, 28.550196, 39.207153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097624, 0.686121, -0.720907,
		-0.536664, 0.573735, 0.618724,
		0.838130, 0.447287, 0.312206,
		31.831869, 28.684381, 39.300816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178238, 29.115885, 39.002811>,  <31.245178, 28.371281, 39.082272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178238, 29.115885, 39.002811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566681, 29.020647, 38.996376>,  <31.799747, 28.963505, 38.992516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566681, 29.020647, 38.996376>,  <31.178238, 29.115885, 39.002811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566681, 29.020647, 38.996376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126092, 0.569191, -0.812479,
		0.202607, 0.786976, 0.582768,
		0.971108, -0.238096, -0.016090,
		31.858013, 28.949219, 38.991550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662943, 29.625248, 39.143539>,  <31.178238, 29.115885, 39.002811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662943, 29.625248, 39.143539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775156, 29.365051, 38.861217>,  <31.842484, 29.208933, 38.691826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775156, 29.365051, 38.861217>,  <31.662943, 29.625248, 39.143539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775156, 29.365051, 38.861217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043653, 0.743217, -0.667624,
		0.958851, 0.156480, 0.236893,
		0.280533, -0.650494, -0.705804,
		31.859316, 29.169903, 38.649475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216400, 29.947746, 38.678764>,  <31.662943, 29.625248, 39.143539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216400, 29.947746, 38.678764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969549, 29.679674, 38.513836>,  <31.821438, 29.518831, 38.414879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969549, 29.679674, 38.513836>,  <32.216400, 29.947746, 38.678764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969549, 29.679674, 38.513836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229380, 0.654471, -0.720453,
		0.752686, -0.350035, -0.557619,
		-0.617130, -0.670182, -0.412320,
		31.784410, 29.478621, 38.390141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395508, 29.829332, 37.902252>,  <32.216400, 29.947746, 38.678764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395508, 29.829332, 37.902252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012577, 29.752134, 37.988293>,  <31.782818, 29.705816, 38.039917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012577, 29.752134, 37.988293>,  <32.395508, 29.829332, 37.902252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012577, 29.752134, 37.988293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284735, 0.502618, -0.816273,
		0.049421, -0.842691, -0.536124,
		-0.957331, -0.192994, 0.215103,
		31.725378, 29.694237, 38.052822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932291, 29.403780, 37.414841>,  <32.395508, 29.829332, 37.902252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932291, 29.403780, 37.414841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737196, 29.714184, 37.574802>,  <31.620140, 29.900427, 37.670780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737196, 29.714184, 37.574802>,  <31.932291, 29.403780, 37.414841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737196, 29.714184, 37.574802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255139, 0.311377, -0.915395,
		-0.834876, -0.548502, 0.046121,
		-0.487735, 0.776009, 0.399906,
		31.590876, 29.946987, 37.694775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379370, 29.228045, 37.128471>,  <31.932291, 29.403780, 37.414841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379370, 29.228045, 37.128471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461647, 29.611624, 37.206558>,  <31.511013, 29.841772, 37.253410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461647, 29.611624, 37.206558>,  <31.379370, 29.228045, 37.128471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461647, 29.611624, 37.206558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140217, 0.226299, -0.963913,
		-0.968519, 0.170897, 0.181009,
		0.205692, 0.958949, 0.195213,
		31.523355, 29.899309, 37.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856667, 29.548521, 36.737259>,  <31.379370, 29.228045, 37.128471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856667, 29.548521, 36.737259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154383, 29.804964, 36.812107>,  <31.333012, 29.958830, 36.857018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154383, 29.804964, 36.812107>,  <30.856667, 29.548521, 36.737259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154383, 29.804964, 36.812107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090912, 0.374830, -0.922625,
		-0.661639, 0.669690, 0.337267,
		0.744291, 0.641107, 0.187120,
		31.377670, 29.997295, 36.868244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614653, 30.120335, 36.455181>,  <30.856667, 29.548521, 36.737259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614653, 30.120335, 36.455181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012922, 30.153624, 36.438675>,  <31.251884, 30.173597, 36.428772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012922, 30.153624, 36.438675>,  <30.614653, 30.120335, 36.455181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012922, 30.153624, 36.438675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072016, 0.410916, -0.908825,
		-0.058676, 0.907867, 0.415132,
		0.995676, 0.083222, -0.041270,
		31.311625, 30.178591, 36.426292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801937, 30.736145, 36.231724>,  <30.614653, 30.120335, 36.455181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801937, 30.736145, 36.231724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137753, 30.528555, 36.167431>,  <31.339243, 30.404001, 36.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137753, 30.528555, 36.167431>,  <30.801937, 30.736145, 36.231724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137753, 30.528555, 36.167431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144603, 0.498621, -0.854673,
		0.523700, 0.694291, 0.493659,
		0.839540, -0.518977, -0.160731,
		31.389614, 30.372862, 36.119213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210386, 31.266434, 35.952038>,  <30.801937, 30.736145, 36.231724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210386, 31.266434, 35.952038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355486, 30.903931, 35.865219>,  <31.442545, 30.686428, 35.813126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355486, 30.903931, 35.865219>,  <31.210386, 31.266434, 35.952038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355486, 30.903931, 35.865219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116921, 0.275335, -0.954212,
		0.924523, 0.320762, 0.205839,
		0.362750, -0.906257, -0.217050,
		31.464312, 30.632053, 35.800102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742941, 31.408529, 35.532085>,  <31.210386, 31.266434, 35.952038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742941, 31.408529, 35.532085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661207, 31.029400, 35.434200>,  <31.612167, 30.801922, 35.375469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661207, 31.029400, 35.434200>,  <31.742941, 31.408529, 35.532085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661207, 31.029400, 35.434200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248205, 0.191650, -0.949560,
		0.946912, -0.254764, 0.196094,
		-0.204332, -0.947821, -0.244710,
		31.599907, 30.745054, 35.360786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204178, 31.194361, 35.119328>,  <31.742941, 31.408529, 35.532085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204178, 31.194361, 35.119328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915537, 30.932543, 35.029118>,  <31.742352, 30.775452, 34.974991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915537, 30.932543, 35.029118>,  <32.204178, 31.194361, 35.119328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915537, 30.932543, 35.029118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279532, 0.022563, -0.959871,
		0.633365, -0.755688, 0.166684,
		-0.721602, -0.654543, -0.225529,
		31.699057, 30.736179, 34.961460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558811, 30.785038, 34.710796>,  <32.204178, 31.194361, 35.119328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558811, 30.785038, 34.710796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173519, 30.713202, 34.630852>,  <31.942345, 30.670099, 34.582886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173519, 30.713202, 34.630852>,  <32.558811, 30.785038, 34.710796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173519, 30.713202, 34.630852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194004, 0.049775, -0.979737,
		0.185900, -0.982481, -0.013103,
		-0.963225, -0.179591, -0.199859,
		31.884552, 30.659325, 34.570892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520206, 30.288710, 34.164822>,  <32.558811, 30.785038, 34.710796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520206, 30.288710, 34.164822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164295, 30.469372, 34.138603>,  <31.950748, 30.577770, 34.122871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164295, 30.469372, 34.138603>,  <32.520206, 30.288710, 34.164822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164295, 30.469372, 34.138603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083802, 0.020517, -0.996271,
		-0.448629, -0.891955, -0.056105,
		-0.889781, 0.451658, -0.065543,
		31.897362, 30.604870, 34.118938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109760, 29.960800, 33.680836>,  <32.520206, 30.288710, 34.164822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109760, 29.960800, 33.680836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956596, 30.327204, 33.728687>,  <31.864698, 30.547045, 33.757397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956596, 30.327204, 33.728687>,  <32.109760, 29.960800, 33.680836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956596, 30.327204, 33.728687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140280, 0.070336, -0.987610,
		-0.913073, -0.394946, 0.101566,
		-0.382909, 0.916008, 0.119625,
		31.841724, 30.602007, 33.764576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478954, 30.062344, 33.239956>,  <32.109760, 29.960800, 33.680836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478954, 30.062344, 33.239956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666580, 30.414770, 33.264271>,  <31.779156, 30.626226, 33.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666580, 30.414770, 33.264271>,  <31.478954, 30.062344, 33.239956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666580, 30.414770, 33.264271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062166, 0.101595, -0.992882,
		-0.880972, 0.461949, 0.102427,
		0.469067, 0.881069, 0.060785,
		31.807301, 30.679090, 33.282505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088182, 30.573719, 32.843765>,  <31.478954, 30.062344, 33.239956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088182, 30.573719, 32.843765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471617, 30.687613, 32.846306>,  <31.701677, 30.755949, 32.847832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471617, 30.687613, 32.846306>,  <31.088182, 30.573719, 32.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471617, 30.687613, 32.846306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023878, 0.102583, -0.994438,
		-0.283802, 0.953102, 0.105134,
		0.958586, 0.284734, 0.006355,
		31.759192, 30.773033, 32.848213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202183, 31.308117, 32.446350>,  <31.088182, 30.573719, 32.843765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202183, 31.308117, 32.446350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461187, 31.007154, 32.397995>,  <31.616590, 30.826578, 32.368980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461187, 31.007154, 32.397995>,  <31.202183, 31.308117, 32.446350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461187, 31.007154, 32.397995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268685, -0.076960, -0.960149,
		0.713117, 0.654189, -0.251992,
		0.647513, -0.752405, -0.120889,
		31.655441, 30.781433, 32.361729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837809, 31.410852, 32.071720>,  <31.202183, 31.308117, 32.446350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837809, 31.410852, 32.071720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796087, 31.016365, 32.020355>,  <31.771053, 30.779673, 31.989536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796087, 31.016365, 32.020355>,  <31.837809, 31.410852, 32.071720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796087, 31.016365, 32.020355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058250, 0.122839, -0.990716,
		0.992838, -0.110817, 0.044635,
		-0.104305, -0.986220, -0.128414,
		31.764795, 30.720499, 31.981831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355328, 31.273916, 31.588856>,  <31.837809, 31.410852, 32.071720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355328, 31.273916, 31.588856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064419, 30.999445, 31.582666>,  <31.889874, 30.834763, 31.578953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064419, 30.999445, 31.582666>,  <32.355328, 31.273916, 31.588856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064419, 30.999445, 31.582666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001575, 0.020879, -0.999781,
		0.686351, -0.727133, -0.014104,
		-0.727268, -0.686179, -0.015476,
		31.846239, 30.793591, 31.578024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433311, 30.481390, 31.253138>,  <32.355328, 31.273916, 31.588856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433311, 30.481390, 31.253138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120991, 30.729662, 31.224564>,  <31.933598, 30.878626, 31.207418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120991, 30.729662, 31.224564>,  <32.433311, 30.481390, 31.253138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120991, 30.729662, 31.224564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227659, 0.176168, -0.957672,
		-0.581824, -0.764016, -0.278856,
		-0.780802, 0.620681, -0.071436,
		31.886749, 30.915867, 31.203133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002750, 30.219147, 30.707069>,  <32.433311, 30.481390, 31.253138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002750, 30.219147, 30.707069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994375, 30.614933, 30.764374>,  <31.989351, 30.852404, 30.798758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994375, 30.614933, 30.764374>,  <32.002750, 30.219147, 30.707069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994375, 30.614933, 30.764374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118635, 0.144739, -0.982332,
		-0.992717, -0.003568, -0.120415,
		-0.020934, 0.989463, 0.143262,
		31.988094, 30.911772, 30.807352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439873, 30.581589, 30.285885>,  <32.002750, 30.219147, 30.707069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439873, 30.581589, 30.285885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752207, 30.819302, 30.362951>,  <31.939608, 30.961929, 30.409191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752207, 30.819302, 30.362951>,  <31.439873, 30.581589, 30.285885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752207, 30.819302, 30.362951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242343, -0.003887, -0.970183,
		-0.575815, 0.804246, -0.147056,
		0.780837, 0.594284, 0.192665,
		31.986458, 30.997587, 30.420752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412846, 30.993887, 29.775023>,  <31.439873, 30.581589, 30.285885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412846, 30.993887, 29.775023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786098, 31.031029, 29.913954>,  <32.010052, 31.053314, 29.997313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786098, 31.031029, 29.913954>,  <31.412846, 30.993887, 29.775023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786098, 31.031029, 29.913954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353729, -0.064310, -0.933134,
		-0.064310, 0.993600, -0.092856,
		0.933134, 0.092856, 0.347330,
		32.066040, 31.058886, 30.018152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791948, 31.369659, 29.275719>,  <31.412846, 30.993887, 29.775023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791948, 31.369659, 29.275719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064781, 31.166254, 29.485929>,  <32.228481, 31.044210, 29.612057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064781, 31.166254, 29.485929>,  <31.791948, 31.369659, 29.275719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064781, 31.166254, 29.485929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545835, -0.124217, -0.828634,
		0.486652, 0.852046, 0.192839,
		0.682081, -0.508515, 0.525527,
		32.269405, 31.013699, 29.643587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314793, 31.640371, 28.982988>,  <31.791948, 31.369659, 29.275719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314793, 31.640371, 28.982988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422966, 31.302790, 29.168293>,  <32.487869, 31.100241, 29.279476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422966, 31.302790, 29.168293>,  <32.314793, 31.640371, 28.982988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422966, 31.302790, 29.168293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581972, -0.240014, -0.776982,
		0.766926, 0.479725, 0.426250,
		0.270432, -0.843953, 0.463259,
		32.504097, 31.049604, 29.307270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009224, 31.818726, 29.139288>,  <32.314793, 31.640371, 28.982988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009224, 31.818726, 29.139288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948940, 31.423628, 29.123077>,  <32.912769, 31.186569, 29.113352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948940, 31.423628, 29.123077>,  <33.009224, 31.818726, 29.139288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948940, 31.423628, 29.123077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647253, -0.067608, -0.759271,
		0.747227, -0.140663, 0.649512,
		-0.150713, -0.987747, -0.040526,
		32.903725, 31.127304, 29.110920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643238, 31.525339, 29.102591>,  <33.009224, 31.818726, 29.139288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643238, 31.525339, 29.102591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388931, 31.250666, 28.961588>,  <33.236347, 31.085861, 28.876987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388931, 31.250666, 28.961588>,  <33.643238, 31.525339, 29.102591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388931, 31.250666, 28.961588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599192, -0.151174, -0.786203,
		0.486584, -0.711063, 0.507568,
		-0.635771, -0.686685, -0.352504,
		33.198200, 31.044661, 28.855837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091515, 31.089560, 28.878492>,  <33.643238, 31.525339, 29.102591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091515, 31.089560, 28.878492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758492, 30.967033, 28.693876>,  <33.558678, 30.893517, 28.583107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758492, 30.967033, 28.693876>,  <34.091515, 31.089560, 28.878492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758492, 30.967033, 28.693876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511897, -0.107050, -0.852351,
		0.211683, -0.945891, 0.245928,
		-0.832557, -0.306318, -0.461538,
		33.508724, 30.875137, 28.555414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290272, 30.484129, 28.563948>,  <34.091515, 31.089560, 28.878492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290272, 30.484129, 28.563948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964279, 30.601046, 28.363796>,  <33.768684, 30.671196, 28.243706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964279, 30.601046, 28.363796>,  <34.290272, 30.484129, 28.563948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964279, 30.601046, 28.363796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510728, -0.045692, -0.858527,
		-0.273804, -0.955237, -0.112044,
		-0.814977, 0.292292, -0.500377,
		33.719788, 30.688732, 28.213682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161259, 29.936007, 27.956711>,  <34.290272, 30.484129, 28.563948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161259, 29.936007, 27.956711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948586, 30.261154, 27.861584>,  <33.820980, 30.456242, 27.804508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948586, 30.261154, 27.861584>,  <34.161259, 29.936007, 27.956711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948586, 30.261154, 27.861584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410407, 0.001650, -0.911901,
		-0.740863, -0.582446, -0.334484,
		-0.531685, 0.812868, -0.237818,
		33.789082, 30.505014, 27.790239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897873, 29.820580, 27.287506>,  <34.161259, 29.936007, 27.956711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897873, 29.820580, 27.287506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843319, 30.216497, 27.304031>,  <33.810585, 30.454048, 27.313946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843319, 30.216497, 27.304031>,  <33.897873, 29.820580, 27.287506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843319, 30.216497, 27.304031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262885, 0.076366, -0.961800,
		-0.955139, -0.120316, -0.270617,
		-0.136386, 0.989794, 0.041311,
		33.802402, 30.513435, 27.316425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568340, 30.016483, 26.646860>,  <33.897873, 29.820580, 27.287506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568340, 30.016483, 26.646860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752003, 30.345976, 26.779915>,  <33.862198, 30.543671, 26.859747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752003, 30.345976, 26.779915>,  <33.568340, 30.016483, 26.646860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752003, 30.345976, 26.779915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339899, 0.183048, -0.922476,
		-0.820760, 0.536621, -0.195937,
		0.459154, 0.823730, 0.332636,
		33.889748, 30.593096, 26.879705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482327, 30.474543, 26.077869>,  <33.568340, 30.016483, 26.646860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482327, 30.474543, 26.077869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764595, 30.631508, 26.313848>,  <33.933956, 30.725687, 26.455435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764595, 30.631508, 26.313848>,  <33.482327, 30.474543, 26.077869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764595, 30.631508, 26.313848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531277, 0.257846, -0.807007,
		-0.468796, 0.882908, -0.026525,
		0.705673, 0.392414, 0.589946,
		33.976295, 30.749231, 26.490833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602058, 31.090275, 25.684824>,  <33.482327, 30.474543, 26.077869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602058, 31.090275, 25.684824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907185, 31.041645, 25.938856>,  <34.090260, 31.012468, 26.091276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907185, 31.041645, 25.938856>,  <33.602058, 31.090275, 25.684824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907185, 31.041645, 25.938856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620290, 0.414960, -0.665619,
		-0.182611, 0.901681, 0.391950,
		0.762820, -0.121573, 0.635080,
		34.136032, 31.005173, 26.129379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857441, 31.787399, 25.928802>,  <33.602058, 31.090275, 25.684824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857441, 31.787399, 25.928802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142578, 31.506882, 25.926502>,  <34.313660, 31.338572, 25.925123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142578, 31.506882, 25.926502>,  <33.857441, 31.787399, 25.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142578, 31.506882, 25.926502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441236, 0.454845, -0.773581,
		0.545124, 0.548908, 0.633672,
		0.712847, -0.701296, -0.005749,
		34.356434, 31.296494, 25.924778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430935, 32.199192, 25.796850>,  <33.857441, 31.787399, 25.928802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430935, 32.199192, 25.796850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555492, 31.831198, 25.701630>,  <34.630226, 31.610401, 25.644497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555492, 31.831198, 25.701630>,  <34.430935, 32.199192, 25.796850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555492, 31.831198, 25.701630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554792, 0.379382, -0.740456,
		0.771519, 0.098501, 0.628535,
		0.311390, -0.919982, -0.238053,
		34.648911, 31.555202, 25.630213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177418, 32.169060, 25.765032>,  <34.430935, 32.199192, 25.796850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177418, 32.169060, 25.765032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059624, 31.860899, 25.538841>,  <34.988949, 31.676003, 25.403128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059624, 31.860899, 25.538841>,  <35.177418, 32.169060, 25.765032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059624, 31.860899, 25.538841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468204, 0.399527, -0.788139,
		0.833105, -0.496853, 0.243050,
		-0.294485, -0.770399, -0.565476,
		34.971279, 31.629780, 25.369198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804413, 31.945086, 25.386883>,  <35.177418, 32.169060, 25.765032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804413, 31.945086, 25.386883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494946, 31.787254, 25.188591>,  <35.309265, 31.692556, 25.069616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494946, 31.787254, 25.188591>,  <35.804413, 31.945086, 25.386883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494946, 31.787254, 25.188591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367626, 0.357684, -0.858437,
		0.516037, -0.846386, -0.131669,
		-0.773665, -0.394580, -0.495732,
		35.262844, 31.668880, 25.039871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187641, 31.619722, 24.889584>,  <35.804413, 31.945086, 25.386883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187641, 31.619722, 24.889584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812153, 31.700802, 24.778076>,  <35.586861, 31.749451, 24.711172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812153, 31.700802, 24.778076>,  <36.187641, 31.619722, 24.889584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812153, 31.700802, 24.778076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341486, 0.437200, -0.832012,
		-0.046770, -0.876224, -0.479628,
		-0.938722, 0.202700, -0.278770,
		35.530537, 31.761612, 24.694445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224514, 31.547623, 24.129978>,  <36.187641, 31.619722, 24.889584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224514, 31.547623, 24.129978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894447, 31.754961, 24.219801>,  <35.696407, 31.879364, 24.273695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894447, 31.754961, 24.219801>,  <36.224514, 31.547623, 24.129978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894447, 31.754961, 24.219801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123234, 0.553121, -0.823936,
		-0.551290, -0.652208, -0.520292,
		-0.825162, 0.518346, 0.224556,
		35.646900, 31.910465, 24.287169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735546, 31.512081, 23.571373>,  <36.224514, 31.547623, 24.129978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735546, 31.512081, 23.571373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594429, 31.831585, 23.766319>,  <35.509758, 32.023289, 23.883287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594429, 31.831585, 23.766319>,  <35.735546, 31.512081, 23.571373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594429, 31.831585, 23.766319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088281, 0.490118, -0.867174,
		-0.931529, -0.348954, -0.102393,
		-0.352788, 0.798759, 0.487365,
		35.488594, 32.071213, 23.912529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053246, 31.853758, 23.232782>,  <35.735546, 31.512081, 23.571373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053246, 31.853758, 23.232782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217136, 32.154976, 23.438713>,  <35.315472, 32.335705, 23.562271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217136, 32.154976, 23.438713>,  <35.053246, 31.853758, 23.232782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217136, 32.154976, 23.438713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002775, 0.565402, -0.824811,
		-0.912202, 0.336523, 0.233753,
		0.409732, 0.753043, 0.514827,
		35.340057, 32.380890, 23.593161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746971, 32.380798, 22.938963>,  <35.053246, 31.853758, 23.232782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746971, 32.380798, 22.938963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056908, 32.544815, 23.131418>,  <35.242870, 32.643223, 23.246891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056908, 32.544815, 23.131418>,  <34.746971, 32.380798, 22.938963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056908, 32.544815, 23.131418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135292, 0.635906, -0.759815,
		-0.617514, 0.653828, 0.437249,
		0.774838, 0.410040, 0.481138,
		35.289360, 32.667828, 23.275761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761749, 33.002491, 22.695311>,  <34.746971, 32.380798, 22.938963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761749, 33.002491, 22.695311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130249, 33.002960, 22.850901>,  <35.351349, 33.003242, 22.944254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130249, 33.002960, 22.850901>,  <34.761749, 33.002491, 22.695311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130249, 33.002960, 22.850901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259119, 0.743965, -0.615933,
		-0.290105, 0.668218, 0.685072,
		0.921247, 0.001170, 0.388976,
		35.406624, 33.003311, 22.967594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908779, 33.728043, 22.609867>,  <34.761749, 33.002491, 22.695311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908779, 33.728043, 22.609867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238323, 33.510445, 22.673521>,  <35.436050, 33.379887, 22.711714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238323, 33.510445, 22.673521>,  <34.908779, 33.728043, 22.609867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238323, 33.510445, 22.673521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515118, 0.601499, -0.610616,
		0.236452, 0.585035, 0.775773,
		0.823859, -0.543997, 0.159136,
		35.485481, 33.347244, 22.721262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351959, 34.262436, 22.699526>,  <34.908779, 33.728043, 22.609867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351959, 34.262436, 22.699526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605251, 33.963345, 22.619593>,  <35.757225, 33.783890, 22.571632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605251, 33.963345, 22.619593>,  <35.351959, 34.262436, 22.699526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605251, 33.963345, 22.619593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506208, 0.595427, -0.623876,
		0.585473, 0.293897, 0.755543,
		0.633226, -0.747724, -0.199833,
		35.795219, 33.739029, 22.559643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122791, 34.475330, 22.754038>,  <35.351959, 34.262436, 22.699526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122791, 34.475330, 22.754038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092209, 34.165169, 22.503311>,  <36.073860, 33.979073, 22.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092209, 34.165169, 22.503311>,  <36.122791, 34.475330, 22.754038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092209, 34.165169, 22.503311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629576, 0.449940, -0.633394,
		0.773168, -0.443053, 0.453779,
		-0.076454, -0.775408, -0.626815,
		36.069271, 33.932545, 22.315268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747448, 34.286850, 22.587002>,  <36.122791, 34.475330, 22.754038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747448, 34.286850, 22.587002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544777, 34.112801, 22.289291>,  <36.423176, 34.008373, 22.110664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544777, 34.112801, 22.289291>,  <36.747448, 34.286850, 22.587002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544777, 34.112801, 22.289291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629064, 0.403742, -0.664283,
		0.589539, -0.804774, 0.069151,
		-0.506679, -0.435121, -0.744276,
		36.392773, 33.982265, 22.066010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287735, 34.058392, 22.076992>,  <36.747448, 34.286850, 22.587002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287735, 34.058392, 22.076992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961628, 34.066540, 21.845503>,  <36.765965, 34.071430, 21.706610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961628, 34.066540, 21.845503>,  <37.287735, 34.058392, 22.076992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961628, 34.066540, 21.845503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513107, 0.488678, -0.705631,
		0.268436, -0.872227, -0.408856,
		-0.815269, 0.020370, -0.578724,
		36.717049, 34.072651, 21.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464939, 33.727787, 21.450457>,  <37.287735, 34.058392, 22.076992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464939, 33.727787, 21.450457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133747, 33.936935, 21.369421>,  <36.935032, 34.062424, 21.320799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133747, 33.936935, 21.369421>,  <37.464939, 33.727787, 21.450457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133747, 33.936935, 21.369421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366752, 0.231658, -0.901015,
		-0.424187, -0.820326, -0.383575,
		-0.827984, 0.522876, -0.202590,
		36.885353, 34.093800, 21.308643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245361, 33.636082, 20.757866>,  <37.464939, 33.727787, 21.450457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245361, 33.636082, 20.757866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044487, 33.976696, 20.818134>,  <36.923962, 34.181065, 20.854296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044487, 33.976696, 20.818134>,  <37.245361, 33.636082, 20.757866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044487, 33.976696, 20.818134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281086, 0.325510, -0.902792,
		-0.817802, -0.411019, -0.402821,
		-0.502186, 0.851532, 0.150671,
		36.893829, 34.232155, 20.863335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860329, 33.845936, 20.173653>,  <37.245361, 33.636082, 20.757866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860329, 33.845936, 20.173653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906826, 34.191391, 20.369864>,  <36.934723, 34.398666, 20.487589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906826, 34.191391, 20.369864>,  <36.860329, 33.845936, 20.173653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906826, 34.191391, 20.369864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207059, 0.461950, -0.862397,
		-0.971398, 0.201814, -0.125127,
		0.116242, 0.863640, 0.490525,
		36.941700, 34.450481, 20.517021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385525, 34.378204, 19.873859>,  <36.860329, 33.845936, 20.173653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385525, 34.378204, 19.873859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694561, 34.563889, 20.047119>,  <36.879982, 34.675301, 20.151075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694561, 34.563889, 20.047119>,  <36.385525, 34.378204, 19.873859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694561, 34.563889, 20.047119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109666, 0.574398, -0.811197,
		-0.625366, 0.674221, 0.392865,
		0.772587, 0.464211, 0.433148,
		36.926338, 34.703152, 20.177063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548141, 35.035355, 19.388325>,  <36.385525, 34.378204, 19.873859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548141, 35.035355, 19.388325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872974, 35.050663, 19.621243>,  <37.067875, 35.059849, 19.760992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872974, 35.050663, 19.621243>,  <36.548141, 35.035355, 19.388325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872974, 35.050663, 19.621243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457478, 0.577725, -0.675979,
		-0.362275, 0.815333, 0.451650,
		0.812078, 0.038270, 0.582293,
		37.116596, 35.062145, 19.795931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712639, 35.733940, 19.381790>,  <36.548141, 35.035355, 19.388325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712639, 35.733940, 19.381790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024605, 35.503677, 19.480055>,  <37.211784, 35.365520, 19.539013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024605, 35.503677, 19.480055>,  <36.712639, 35.733940, 19.381790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024605, 35.503677, 19.480055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518172, 0.373736, -0.769298,
		0.351040, 0.727283, 0.589772,
		0.779916, -0.575657, 0.245661,
		37.258579, 35.330978, 19.553753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290150, 36.121922, 19.401251>,  <36.712639, 35.733940, 19.381790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290150, 36.121922, 19.401251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401871, 35.746044, 19.322287>,  <37.468903, 35.520519, 19.274908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401871, 35.746044, 19.322287>,  <37.290150, 36.121922, 19.401251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401871, 35.746044, 19.322287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696625, 0.339802, -0.631861,
		0.660834, 0.038960, 0.749520,
		0.279306, -0.939690, -0.197412,
		37.485661, 35.464138, 19.263063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986885, 36.101940, 19.406780>,  <37.290150, 36.121922, 19.401251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986885, 36.101940, 19.406780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960964, 35.744843, 19.228430>,  <37.945412, 35.530582, 19.121420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960964, 35.744843, 19.228430>,  <37.986885, 36.101940, 19.406780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960964, 35.744843, 19.228430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609278, 0.318464, -0.726197,
		0.790304, -0.318724, 0.523292,
		-0.064806, -0.892746, -0.445875,
		37.941521, 35.477020, 19.094667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654514, 35.924580, 19.211523>,  <37.986885, 36.101940, 19.406780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654514, 35.924580, 19.211523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428814, 35.694347, 18.974770>,  <38.293392, 35.556210, 18.832718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428814, 35.694347, 18.974770>,  <38.654514, 35.924580, 19.211523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428814, 35.694347, 18.974770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592529, 0.216905, -0.775798,
		0.574914, -0.788456, 0.218657,
		-0.564255, -0.575577, -0.591885,
		38.259537, 35.521675, 18.797205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141052, 35.652611, 18.747383>,  <38.654514, 35.924580, 19.211523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141052, 35.652611, 18.747383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779861, 35.634399, 18.576477>,  <38.563145, 35.623474, 18.473934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779861, 35.634399, 18.576477>,  <39.141052, 35.652611, 18.747383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779861, 35.634399, 18.576477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411725, 0.192794, -0.890681,
		0.122926, -0.980182, -0.155343,
		-0.902979, -0.045529, -0.427265,
		38.508968, 35.620739, 18.448298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207054, 35.179848, 18.189291>,  <39.141052, 35.652611, 18.747383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207054, 35.179848, 18.189291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906273, 35.428982, 18.102900>,  <38.725803, 35.578461, 18.051065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906273, 35.428982, 18.102900>,  <39.207054, 35.179848, 18.189291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906273, 35.428982, 18.102900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391036, 0.157668, -0.906770,
		-0.530712, -0.766305, -0.362108,
		-0.751955, 0.622831, -0.215977,
		38.680687, 35.615829, 18.038107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952732, 34.946308, 17.500080>,  <39.207054, 35.179848, 18.189291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952732, 34.946308, 17.500080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816940, 35.316872, 17.565216>,  <38.735466, 35.539211, 17.604298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816940, 35.316872, 17.565216>,  <38.952732, 34.946308, 17.500080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816940, 35.316872, 17.565216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435502, 0.308252, -0.845765,
		-0.833722, -0.216204, -0.508099,
		-0.339480, 0.926410, 0.162840,
		38.715096, 35.594795, 17.614067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768948, 35.156879, 16.867981>,  <38.952732, 34.946308, 17.500080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768948, 35.156879, 16.867981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758282, 35.509640, 17.056250>,  <38.751881, 35.721298, 17.169210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758282, 35.509640, 17.056250>,  <38.768948, 35.156879, 16.867981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758282, 35.509640, 17.056250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284171, 0.458104, -0.842251,
		-0.958403, 0.111292, -0.262828,
		-0.026666, 0.881904, 0.470674,
		38.750282, 35.774212, 17.197453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239319, 35.723709, 16.578012>,  <38.768948, 35.156879, 16.867981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239319, 35.723709, 16.578012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567081, 35.881207, 16.744644>,  <38.763741, 35.975704, 16.844624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567081, 35.881207, 16.744644>,  <38.239319, 35.723709, 16.578012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567081, 35.881207, 16.744644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140555, 0.566543, -0.811957,
		-0.555712, 0.723876, 0.408887,
		0.819408, 0.393743, 0.416579,
		38.812904, 35.999329, 16.869617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264755, 36.485394, 16.636045>,  <38.239319, 35.723709, 16.578012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264755, 36.485394, 16.636045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625420, 36.314590, 16.608713>,  <38.841820, 36.212109, 16.592314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625420, 36.314590, 16.608713>,  <38.264755, 36.485394, 16.636045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625420, 36.314590, 16.608713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212133, 0.574448, -0.790575,
		0.376832, 0.698337, 0.608541,
		0.901664, -0.427006, -0.068330,
		38.895920, 36.186489, 16.588215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818562, 36.936390, 16.801409>,  <38.264755, 36.485394, 16.636045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818562, 36.936390, 16.801409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831520, 36.665203, 16.507658>,  <38.839294, 36.502491, 16.331408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831520, 36.665203, 16.507658>,  <38.818562, 36.936390, 16.801409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831520, 36.665203, 16.507658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087582, 0.733864, -0.673627,
		0.995630, -0.042492, 0.083155,
		0.032401, -0.677966, -0.734378,
		38.841240, 36.461815, 16.287344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449818, 36.865414, 16.346033>,  <38.818562, 36.936390, 16.801409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449818, 36.865414, 16.346033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082867, 36.797493, 16.202038>,  <38.862698, 36.756741, 16.115641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082867, 36.797493, 16.202038>,  <39.449818, 36.865414, 16.346033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082867, 36.797493, 16.202038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032724, 0.869196, -0.493384,
		0.396678, -0.464398, -0.791821,
		-0.917374, -0.169803, -0.359988,
		38.807655, 36.746552, 16.094042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474014, 36.985500, 15.660251>,  <39.449818, 36.865414, 16.346033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474014, 36.985500, 15.660251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090958, 37.039059, 15.762229>,  <38.861126, 37.071194, 15.823416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090958, 37.039059, 15.762229>,  <39.474014, 36.985500, 15.660251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090958, 37.039059, 15.762229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001483, 0.887603, -0.460607,
		-0.287965, -0.440718, -0.850202,
		-0.957640, 0.133899, 0.254945,
		38.803665, 37.079227, 15.838713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836834, 36.381371, 15.595163>,  <39.474014, 36.985500, 15.660251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836834, 36.381371, 15.595163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447189, 36.411961, 15.510064>,  <39.213402, 36.430313, 15.459004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447189, 36.411961, 15.510064>,  <39.836834, 36.381371, 15.595163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447189, 36.411961, 15.510064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057420, -0.826502, -0.559998,
		-0.218660, -0.557716, 0.800712,
		-0.974110, 0.076472, -0.212747,
		39.154957, 36.434902, 15.446239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587791, 36.567127, 15.861217>,  <39.836834, 36.381371, 15.595163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587791, 36.567127, 15.861217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784222, 36.824554, 16.096050>,  <40.902081, 36.979012, 16.236950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784222, 36.824554, 16.096050>,  <40.587791, 36.567127, 15.861217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784222, 36.824554, 16.096050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502554, -0.341178, 0.794378,
		0.711534, -0.685143, 0.155881,
		0.491080, 0.643566, 0.587081,
		40.931545, 37.017624, 16.272175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692593, 36.278835, 16.551176>,  <40.587791, 36.567127, 15.861217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692593, 36.278835, 16.551176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739315, 36.670818, 16.615734>,  <40.767349, 36.906006, 16.654469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739315, 36.670818, 16.615734>,  <40.692593, 36.278835, 16.551176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739315, 36.670818, 16.615734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465956, -0.089442, 0.880276,
		0.877065, -0.178023, 0.446168,
		0.116803, 0.979953, 0.161397,
		40.774357, 36.964806, 16.664154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636120, 36.227783, 17.273888>,  <40.692593, 36.278835, 16.551176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636120, 36.227783, 17.273888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632504, 36.614296, 17.170958>,  <40.630333, 36.846203, 17.109200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632504, 36.614296, 17.170958>,  <40.636120, 36.227783, 17.273888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632504, 36.614296, 17.170958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413085, 0.230743, 0.880976,
		0.910648, 0.114266, 0.397069,
		-0.009045, 0.966282, -0.257328,
		40.629791, 36.904182, 17.093760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051750, 36.663021, 17.746700>,  <40.636120, 36.227783, 17.273888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051750, 36.663021, 17.746700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732166, 36.828369, 17.571983>,  <40.540417, 36.927578, 17.467154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732166, 36.828369, 17.571983>,  <41.051750, 36.663021, 17.746700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732166, 36.828369, 17.571983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324850, 0.314586, 0.891912,
		0.506098, 0.854495, -0.117059,
		-0.798960, 0.413368, -0.436795,
		40.492477, 36.952381, 17.440945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003029, 37.423748, 17.917517>,  <41.051750, 36.663021, 17.746700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003029, 37.423748, 17.917517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652920, 37.251011, 17.830416>,  <40.442856, 37.147369, 17.778154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652920, 37.251011, 17.830416>,  <41.003029, 37.423748, 17.917517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652920, 37.251011, 17.830416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394817, 0.377965, 0.837414,
		-0.279325, 0.818936, -0.501319,
		-0.875270, -0.431840, -0.217754,
		40.390339, 37.121460, 17.765089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430908, 37.949039, 17.988544>,  <41.003029, 37.423748, 17.917517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430908, 37.949039, 17.988544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265911, 37.585651, 18.015488>,  <40.166912, 37.367619, 18.031654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265911, 37.585651, 18.015488>,  <40.430908, 37.949039, 17.988544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265911, 37.585651, 18.015488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429326, 0.259086, 0.865190,
		-0.803450, 0.327962, -0.496899,
		-0.412489, -0.908469, 0.067360,
		40.142166, 37.313110, 18.035696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720570, 38.106934, 18.057617>,  <40.430908, 37.949039, 17.988544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720570, 38.106934, 18.057617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793655, 37.742767, 18.206079>,  <39.837505, 37.524265, 18.295156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793655, 37.742767, 18.206079>,  <39.720570, 38.106934, 18.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793655, 37.742767, 18.206079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480724, 0.246578, 0.841489,
		-0.857625, -0.332171, -0.392608,
		0.182710, -0.910418, 0.371154,
		39.848469, 37.469643, 18.317427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016319, 37.800659, 18.423180>,  <39.720570, 38.106934, 18.057617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016319, 37.800659, 18.423180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313843, 37.576046, 18.568197>,  <39.492355, 37.441280, 18.655209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313843, 37.576046, 18.568197>,  <39.016319, 37.800659, 18.423180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313843, 37.576046, 18.568197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408280, 0.047758, 0.911607,
		-0.529209, -0.826077, -0.193739,
		0.743805, -0.561530, 0.362544,
		39.536983, 37.407585, 18.676960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675808, 37.291779, 18.861023>,  <39.016319, 37.800659, 18.423180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675808, 37.291779, 18.861023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051468, 37.289459, 18.998407>,  <39.276863, 37.288067, 19.080837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051468, 37.289459, 18.998407>,  <38.675808, 37.291779, 18.861023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051468, 37.289459, 18.998407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343385, 0.011154, 0.939129,
		-0.009294, -0.999921, 0.008478,
		0.939149, -0.005817, 0.343461,
		39.333214, 37.287720, 19.101446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660439, 36.741901, 19.357725>,  <38.675808, 37.291779, 18.861023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660439, 36.741901, 19.357725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980762, 36.966667, 19.440630>,  <39.172958, 37.101528, 19.490374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980762, 36.966667, 19.440630>,  <38.660439, 36.741901, 19.357725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980762, 36.966667, 19.440630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188193, -0.092453, 0.977771,
		0.568586, -0.822012, 0.031711,
		0.800808, 0.561915, 0.207264,
		39.221004, 37.135242, 19.502810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943542, 36.409721, 19.971584>,  <38.660439, 36.741901, 19.357725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943542, 36.409721, 19.971584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094521, 36.777641, 19.928686>,  <39.185108, 36.998394, 19.902946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094521, 36.777641, 19.928686>,  <38.943542, 36.409721, 19.971584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094521, 36.777641, 19.928686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039045, 0.131516, 0.990545,
		0.925209, -0.369688, 0.085554,
		0.377444, 0.919801, -0.107246,
		39.207752, 37.053581, 19.896513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463943, 36.466156, 20.532881>,  <38.943542, 36.409721, 19.971584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463943, 36.466156, 20.532881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361156, 36.829308, 20.400379>,  <39.299484, 37.047199, 20.320879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361156, 36.829308, 20.400379>,  <39.463943, 36.466156, 20.532881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361156, 36.829308, 20.400379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197490, 0.286198, 0.937597,
		0.946025, 0.306354, 0.105752,
		-0.256970, 0.907876, -0.331252,
		39.284065, 37.101669, 20.301004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858212, 36.991333, 20.986984>,  <39.463943, 36.466156, 20.532881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858212, 36.991333, 20.986984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549126, 37.191303, 20.830530>,  <39.363674, 37.311287, 20.736658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549126, 37.191303, 20.830530>,  <39.858212, 36.991333, 20.986984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549126, 37.191303, 20.830530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327890, 0.213251, 0.920332,
		0.543510, 0.839402, -0.000860,
		-0.772713, 0.499928, -0.391136,
		39.317310, 37.341282, 20.713190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756241, 37.606014, 21.427368>,  <39.858212, 36.991333, 20.986984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756241, 37.606014, 21.427368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414043, 37.564377, 21.224468>,  <39.208725, 37.539394, 21.102728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414043, 37.564377, 21.224468>,  <39.756241, 37.606014, 21.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414043, 37.564377, 21.224468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508611, -0.015023, 0.860865,
		-0.097229, 0.994454, -0.040089,
		-0.855489, -0.104091, -0.507251,
		39.157398, 37.533150, 21.072292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319336, 38.167690, 21.625957>,  <39.756241, 37.606014, 21.427368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319336, 38.167690, 21.625957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096821, 37.859631, 21.501114>,  <38.963310, 37.674793, 21.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096821, 37.859631, 21.501114>,  <39.319336, 38.167690, 21.625957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096821, 37.859631, 21.501114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446111, -0.040101, 0.894079,
		-0.701091, 0.636601, -0.321265,
		-0.556288, -0.770150, -0.312109,
		38.929935, 37.628586, 21.407482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768963, 38.241280, 21.964092>,  <39.319336, 38.167690, 21.625957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768963, 38.241280, 21.964092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720749, 37.861012, 21.849764>,  <38.691822, 37.632851, 21.781166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720749, 37.861012, 21.849764>,  <38.768963, 38.241280, 21.964092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720749, 37.861012, 21.849764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370750, -0.223977, 0.901321,
		-0.920878, 0.214608, -0.325465,
		-0.120534, -0.950672, -0.285822,
		38.684589, 37.575809, 21.764017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996349, 38.113415, 21.974426>,  <38.768963, 38.241280, 21.964092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996349, 38.113415, 21.974426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181774, 37.759758, 21.997784>,  <38.293030, 37.547565, 22.011797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181774, 37.759758, 21.997784>,  <37.996349, 38.113415, 21.974426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181774, 37.759758, 21.997784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594998, -0.261773, 0.759902,
		-0.656575, -0.387002, -0.647409,
		0.463558, -0.884140, 0.058391,
		38.320843, 37.494514, 22.015301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489632, 37.586567, 22.178308>,  <37.996349, 38.113415, 21.974426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489632, 37.586567, 22.178308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833569, 37.396858, 22.253920>,  <38.039932, 37.283031, 22.299286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833569, 37.396858, 22.253920>,  <37.489632, 37.586567, 22.178308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833569, 37.396858, 22.253920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367115, -0.317031, 0.874481,
		-0.354823, -0.821309, -0.446712,
		0.859841, -0.474281, 0.189025,
		38.091522, 37.254574, 22.310629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290184, 36.948940, 22.535906>,  <37.489632, 37.586567, 22.178308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290184, 36.948940, 22.535906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678955, 36.997414, 22.616583>,  <37.912216, 37.026497, 22.664989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678955, 36.997414, 22.616583>,  <37.290184, 36.948940, 22.535906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678955, 36.997414, 22.616583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151709, -0.332474, 0.930831,
		0.179859, -0.935294, -0.304754,
		0.971923, 0.121184, 0.201690,
		37.970531, 37.033768, 22.677090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554874, 36.278461, 22.781610>,  <37.290184, 36.948940, 22.535906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554874, 36.278461, 22.781610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783249, 36.571663, 22.929522>,  <37.920273, 36.747581, 23.018269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783249, 36.571663, 22.929522>,  <37.554874, 36.278461, 22.781610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783249, 36.571663, 22.929522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260891, -0.265070, 0.928264,
		0.778436, -0.626455, 0.039894,
		0.570941, 0.733002, 0.369776,
		37.954533, 36.791565, 23.040455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030380, 35.971485, 23.185028>,  <37.554874, 36.278461, 22.781610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030380, 35.971485, 23.185028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026623, 36.348072, 23.319815>,  <38.024368, 36.574024, 23.400686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026623, 36.348072, 23.319815>,  <38.030380, 35.971485, 23.185028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026623, 36.348072, 23.319815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372202, -0.316060, 0.872681,
		0.928104, -0.117223, 0.353385,
		-0.009393, 0.941470, 0.336967,
		38.023804, 36.630512, 23.420904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354515, 36.001949, 23.843298>,  <38.030380, 35.971485, 23.185028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354515, 36.001949, 23.843298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129681, 36.332687, 23.851151>,  <37.994778, 36.531132, 23.855862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129681, 36.332687, 23.851151>,  <38.354515, 36.001949, 23.843298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129681, 36.332687, 23.851151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243425, -0.188070, 0.951511,
		0.790443, 0.530055, 0.306986,
		-0.562089, 0.826844, 0.019630,
		37.961056, 36.580742, 23.857040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338348, 36.024139, 24.533621>,  <38.354515, 36.001949, 23.843298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338348, 36.024139, 24.533621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095276, 36.317043, 24.410645>,  <37.949432, 36.492786, 24.336859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095276, 36.317043, 24.410645>,  <38.338348, 36.024139, 24.533621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095276, 36.317043, 24.410645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456352, -0.005136, 0.889784,
		0.649974, 0.681007, 0.337290,
		-0.607682, 0.732259, -0.307441,
		37.912971, 36.536720, 24.318413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217419, 36.323349, 25.200150>,  <38.338348, 36.024139, 24.533621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217419, 36.323349, 25.200150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934288, 36.439396, 24.942526>,  <37.764408, 36.509026, 24.787951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934288, 36.439396, 24.942526>,  <38.217419, 36.323349, 25.200150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934288, 36.439396, 24.942526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684186, -0.054781, 0.727248,
		0.175704, 0.955422, 0.237269,
		-0.707826, 0.290116, -0.644061,
		37.721939, 36.526432, 24.749308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862541, 36.866837, 25.476202>,  <38.217419, 36.323349, 25.200150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862541, 36.866837, 25.476202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605129, 36.695026, 25.222784>,  <37.450684, 36.591942, 25.070734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605129, 36.695026, 25.222784>,  <37.862541, 36.866837, 25.476202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605129, 36.695026, 25.222784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579788, -0.266839, 0.769833,
		-0.499714, 0.862733, -0.077312,
		-0.643531, -0.429521, -0.633545,
		37.412071, 36.566170, 25.032721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252567, 37.026672, 25.734785>,  <37.862541, 36.866837, 25.476202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252567, 37.026672, 25.734785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162647, 36.723576, 25.489738>,  <37.108696, 36.541718, 25.342710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162647, 36.723576, 25.489738>,  <37.252567, 37.026672, 25.734785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162647, 36.723576, 25.489738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614488, -0.377688, 0.692644,
		-0.756221, 0.532150, -0.380718,
		-0.224798, -0.757739, -0.612616,
		37.095207, 36.496254, 25.305954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558010, 36.930698, 25.791040>,  <37.252567, 37.026672, 25.734785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558010, 36.930698, 25.791040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718884, 36.593822, 25.647396>,  <36.815407, 36.391697, 25.561209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718884, 36.593822, 25.647396>,  <36.558010, 36.930698, 25.791040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718884, 36.593822, 25.647396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617219, -0.539106, 0.573067,
		-0.676232, -0.008826, -0.736636,
		0.402183, -0.842191, -0.359113,
		36.839539, 36.341164, 25.539661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960274, 36.429279, 25.613085>,  <36.558010, 36.930698, 25.791040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960274, 36.429279, 25.613085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298111, 36.228554, 25.687756>,  <36.500813, 36.108120, 25.732559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298111, 36.228554, 25.687756>,  <35.960274, 36.429279, 25.613085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298111, 36.228554, 25.687756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493815, -0.595346, 0.633807,
		-0.206914, -0.627492, -0.750626,
		0.844591, -0.501814, 0.186679,
		36.551487, 36.078011, 25.743759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834831, 35.755100, 25.609543>,  <35.960274, 36.429279, 25.613085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834831, 35.755100, 25.609543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176704, 35.713375, 25.812965>,  <36.381828, 35.688339, 25.935019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176704, 35.713375, 25.812965>,  <35.834831, 35.755100, 25.609543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176704, 35.713375, 25.812965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474842, -0.553065, 0.684576,
		0.209854, -0.826582, -0.522229,
		0.854685, -0.104315, 0.508558,
		36.433109, 35.682079, 25.965532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939350, 35.011669, 25.780396>,  <35.834831, 35.755100, 25.609543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939350, 35.011669, 25.780396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167759, 35.220646, 26.033689>,  <36.304806, 35.346031, 26.185665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167759, 35.220646, 26.033689>,  <35.939350, 35.011669, 25.780396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167759, 35.220646, 26.033689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358442, -0.535277, 0.764852,
		0.738549, -0.663724, -0.118388,
		0.571021, 0.522445, 0.633235,
		36.339066, 35.377380, 26.223660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137375, 34.555344, 26.284204>,  <35.939350, 35.011669, 25.780396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137375, 34.555344, 26.284204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245510, 34.903217, 26.449402>,  <36.310390, 35.111942, 26.548521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245510, 34.903217, 26.449402>,  <36.137375, 34.555344, 26.284204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245510, 34.903217, 26.449402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088779, -0.404622, 0.910164,
		0.958663, -0.282719, -0.032175,
		0.270339, 0.869684, 0.412996,
		36.326611, 35.164124, 26.573301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568344, 34.397369, 26.805750>,  <36.137375, 34.555344, 26.284204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568344, 34.397369, 26.805750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424740, 34.757515, 26.904108>,  <36.338577, 34.973602, 26.963123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424740, 34.757515, 26.904108>,  <36.568344, 34.397369, 26.805750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424740, 34.757515, 26.904108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247836, -0.345963, 0.904923,
		0.899827, 0.263935, 0.347346,
		-0.359010, 0.900360, 0.245895,
		36.317036, 35.027622, 26.977877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725002, 34.502323, 27.613018>,  <36.568344, 34.397369, 26.805750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725002, 34.502323, 27.613018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436604, 34.764698, 27.523657>,  <36.263565, 34.922123, 27.470041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436604, 34.764698, 27.523657>,  <36.725002, 34.502323, 27.613018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436604, 34.764698, 27.523657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407197, -0.140207, 0.902515,
		0.560668, 0.741682, 0.368183,
		-0.721001, 0.655935, -0.223401,
		36.220303, 34.961479, 27.456636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628582, 34.878979, 28.218222>,  <36.725002, 34.502323, 27.613018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628582, 34.878979, 28.218222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297386, 34.901516, 27.995060>,  <36.098667, 34.915039, 27.861164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297386, 34.901516, 27.995060>,  <36.628582, 34.878979, 28.218222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297386, 34.901516, 27.995060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556346, -0.206861, 0.804790,
		-0.070067, 0.976747, 0.202624,
		-0.827992, 0.056340, -0.557903,
		36.048988, 34.918419, 27.827688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153889, 35.253860, 28.620798>,  <36.628582, 34.878979, 28.218222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153889, 35.253860, 28.620798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928818, 35.053043, 28.358091>,  <35.793774, 34.932552, 28.200468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928818, 35.053043, 28.358091>,  <36.153889, 35.253860, 28.620798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928818, 35.053043, 28.358091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560025, -0.352895, 0.749558,
		-0.608082, 0.789567, -0.082591,
		-0.562680, -0.502046, -0.656766,
		35.760014, 34.902431, 28.161062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409870, 35.393288, 28.868301>,  <36.153889, 35.253860, 28.620798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409870, 35.393288, 28.868301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346024, 35.076492, 28.632582>,  <35.307716, 34.886414, 28.491150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346024, 35.076492, 28.632582>,  <35.409870, 35.393288, 28.868301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346024, 35.076492, 28.632582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696428, -0.332743, 0.635822,
		-0.699650, 0.511894, -0.498452,
		-0.159618, -0.791989, -0.589301,
		35.298138, 34.838894, 28.455791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672581, 35.235291, 28.751884>,  <35.409870, 35.393288, 28.868301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672581, 35.235291, 28.751884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861763, 34.888599, 28.688507>,  <34.975273, 34.680584, 28.650480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861763, 34.888599, 28.688507>,  <34.672581, 35.235291, 28.751884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861763, 34.888599, 28.688507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588662, -0.444635, 0.675113,
		-0.655587, -0.226027, -0.720499,
		0.472952, -0.866725, -0.158443,
		35.003651, 34.628582, 28.640974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146065, 34.762589, 28.835148>,  <34.672581, 35.235291, 28.751884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146065, 34.762589, 28.835148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489914, 34.558697, 28.849199>,  <34.696224, 34.436363, 28.857630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489914, 34.558697, 28.849199>,  <34.146065, 34.762589, 28.835148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489914, 34.558697, 28.849199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294116, -0.437445, 0.849787,
		-0.417782, -0.740831, -0.525954,
		0.859624, -0.509717, 0.035133,
		34.747799, 34.405781, 28.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897480, 34.084042, 28.953785>,  <34.146065, 34.762589, 28.835148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897480, 34.084042, 28.953785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274902, 34.084633, 29.086264>,  <34.501358, 34.084988, 29.165751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274902, 34.084633, 29.086264>,  <33.897480, 34.084042, 28.953785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274902, 34.084633, 29.086264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302707, -0.401923, 0.864191,
		0.134398, -0.915672, -0.378790,
		0.943560, 0.001483, 0.331198,
		34.557972, 34.085079, 29.185623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815788, 33.554501, 29.263922>,  <33.897480, 34.084042, 28.953785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815788, 33.554501, 29.263922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157013, 33.706177, 29.407309>,  <34.361748, 33.797184, 29.493341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157013, 33.706177, 29.407309>,  <33.815788, 33.554501, 29.263922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157013, 33.706177, 29.407309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250853, -0.304369, 0.918930,
		0.457558, -0.873827, -0.164524,
		0.853061, 0.379192, 0.358468,
		34.412930, 33.819935, 29.514849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260559, 32.998333, 29.711390>,  <33.815788, 33.554501, 29.263922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260559, 32.998333, 29.711390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355297, 33.367771, 29.831976>,  <34.412140, 33.589432, 29.904327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355297, 33.367771, 29.831976>,  <34.260559, 32.998333, 29.711390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355297, 33.367771, 29.831976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261784, -0.238152, 0.935282,
		0.935615, -0.300434, 0.185377,
		0.236842, 0.923592, 0.301467,
		34.426350, 33.644848, 29.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614929, 32.786362, 30.324858>,  <34.260559, 32.998333, 29.711390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614929, 32.786362, 30.324858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511143, 33.170956, 30.361134>,  <34.448872, 33.401711, 30.382898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511143, 33.170956, 30.361134>,  <34.614929, 32.786362, 30.324858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511143, 33.170956, 30.361134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326351, -0.175672, 0.928781,
		0.908940, 0.211391, 0.359363,
		-0.259466, 0.961485, 0.090688,
		34.433304, 33.459400, 30.388340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014469, 33.089142, 30.833704>,  <34.614929, 32.786362, 30.324858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014469, 33.089142, 30.833704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669750, 33.287506, 30.791033>,  <34.462917, 33.406525, 30.765430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669750, 33.287506, 30.791033>,  <35.014469, 33.089142, 30.833704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669750, 33.287506, 30.791033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310356, -0.349141, 0.884183,
		0.401226, 0.795096, 0.454797,
		-0.861799, 0.495906, -0.106679,
		34.411209, 33.436279, 30.759029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877163, 33.393414, 31.421926>,  <35.014469, 33.089142, 30.833704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877163, 33.393414, 31.421926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512554, 33.362431, 31.260372>,  <34.293789, 33.343842, 31.163439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512554, 33.362431, 31.260372>,  <34.877163, 33.393414, 31.421926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512554, 33.362431, 31.260372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352868, -0.357074, 0.864860,
		-0.211207, 0.930859, 0.298149,
		-0.911524, -0.077457, -0.403887,
		34.239098, 33.339195, 31.139206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541084, 33.699497, 31.173931>,  <34.877163, 33.393414, 31.421926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541084, 33.699497, 31.173931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772217, 33.697563, 31.500389>,  <35.910896, 33.696404, 31.696264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772217, 33.697563, 31.500389>,  <35.541084, 33.699497, 31.173931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772217, 33.697563, 31.500389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691610, 0.533854, -0.486493,
		-0.433349, 0.845563, 0.311820,
		0.577827, -0.004836, 0.816145,
		35.945564, 33.696114, 31.745232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705296, 34.397636, 31.406267>,  <35.541084, 33.699497, 31.173931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705296, 34.397636, 31.406267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995064, 34.169598, 31.561291>,  <36.168926, 34.032776, 31.654305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995064, 34.169598, 31.561291>,  <35.705296, 34.397636, 31.406267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995064, 34.169598, 31.561291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674166, 0.468525, -0.570951,
		0.143916, 0.674888, 0.723750,
		0.724423, -0.570097, 0.387558,
		36.212391, 33.998569, 31.677559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306950, 34.830933, 31.571318>,  <35.705296, 34.397636, 31.406267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306950, 34.830933, 31.571318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467709, 34.464664, 31.569117>,  <36.564163, 34.244904, 31.567795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467709, 34.464664, 31.569117>,  <36.306950, 34.830933, 31.571318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467709, 34.464664, 31.569117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800145, 0.354108, -0.484123,
		0.445245, 0.190165, 0.874982,
		0.401902, -0.915666, -0.005505,
		36.588280, 34.189964, 31.567465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046375, 34.880943, 31.701075>,  <36.306950, 34.830933, 31.571318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046375, 34.880943, 31.701075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008015, 34.531933, 31.509451>,  <36.985001, 34.322525, 31.394476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008015, 34.531933, 31.509451>,  <37.046375, 34.880943, 31.701075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008015, 34.531933, 31.509451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791790, 0.224793, -0.567923,
		0.603218, -0.433780, 0.669301,
		-0.095900, -0.872527, -0.479061,
		36.979244, 34.270176, 31.365732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709316, 34.794949, 31.506237>,  <37.046375, 34.880943, 31.701075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709316, 34.794949, 31.506237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535580, 34.515358, 31.278982>,  <37.431339, 34.347603, 31.142630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535580, 34.515358, 31.278982>,  <37.709316, 34.794949, 31.506237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535580, 34.515358, 31.278982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683107, 0.155522, -0.713566,
		0.587125, -0.698028, 0.409928,
		-0.434337, -0.698978, -0.568139,
		37.405277, 34.305664, 31.108540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277142, 34.361904, 31.293802>,  <37.709316, 34.794949, 31.506237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277142, 34.361904, 31.293802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959293, 34.317299, 31.055094>,  <37.768585, 34.290535, 30.911869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959293, 34.317299, 31.055094>,  <38.277142, 34.361904, 31.293802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959293, 34.317299, 31.055094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598083, 0.025021, -0.801044,
		0.104261, -0.993448, 0.046814,
		-0.794624, -0.111516, -0.596773,
		37.720905, 34.283844, 30.876062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548229, 33.843594, 30.731117>,  <38.277142, 34.361904, 31.293802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548229, 33.843594, 30.731117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223312, 34.042648, 30.609430>,  <38.028362, 34.162079, 30.536419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223312, 34.042648, 30.609430>,  <38.548229, 33.843594, 30.731117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223312, 34.042648, 30.609430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444456, 0.190366, -0.875340,
		-0.377685, -0.846240, -0.375808,
		-0.812289, 0.497633, -0.304218,
		37.979626, 34.191936, 30.518166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497654, 33.543251, 30.079653>,  <38.548229, 33.843594, 30.731117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497654, 33.543251, 30.079653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237778, 33.845070, 30.042658>,  <38.081852, 34.026161, 30.020460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237778, 33.845070, 30.042658>,  <38.497654, 33.543251, 30.079653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237778, 33.845070, 30.042658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420784, 0.255619, -0.870402,
		-0.633121, -0.604410, -0.483577,
		-0.649691, 0.754551, -0.092488,
		38.042870, 34.071434, 30.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098370, 33.516384, 29.468561>,  <38.497654, 33.543251, 30.079653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098370, 33.516384, 29.468561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113022, 33.901630, 29.575193>,  <38.121815, 34.132778, 29.639172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113022, 33.901630, 29.575193>,  <38.098370, 33.516384, 29.468561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113022, 33.901630, 29.575193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387028, 0.232267, -0.892335,
		-0.921340, 0.135863, -0.364244,
		0.036634, 0.963117, 0.266579,
		38.124012, 34.190567, 29.655167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767303, 33.852871, 28.933178>,  <38.098370, 33.516384, 29.468561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767303, 33.852871, 28.933178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972637, 34.149765, 29.105494>,  <38.095837, 34.327900, 29.208883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972637, 34.149765, 29.105494>,  <37.767303, 33.852871, 28.933178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972637, 34.149765, 29.105494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336689, 0.287545, -0.896637,
		-0.789384, 0.605317, -0.102294,
		0.513336, 0.742232, 0.430787,
		38.126637, 34.372437, 29.234730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655918, 34.436565, 28.529938>,  <37.767303, 33.852871, 28.933178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655918, 34.436565, 28.529938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983921, 34.548283, 28.729773>,  <38.180721, 34.615314, 28.849674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983921, 34.548283, 28.729773>,  <37.655918, 34.436565, 28.529938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983921, 34.548283, 28.729773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397421, 0.350298, -0.848143,
		-0.411888, 0.894028, 0.176248,
		0.820003, 0.279295, 0.499589,
		38.229923, 34.632072, 28.879650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724682, 35.210102, 28.448456>,  <37.655918, 34.436565, 28.529938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724682, 35.210102, 28.448456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084724, 35.049873, 28.516989>,  <38.300751, 34.953735, 28.558107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084724, 35.049873, 28.516989>,  <37.724682, 35.210102, 28.448456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084724, 35.049873, 28.516989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370292, 0.496171, -0.785301,
		0.229563, 0.770294, 0.594935,
		0.900103, -0.400576, 0.171331,
		38.354755, 34.929699, 28.568388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079044, 35.758789, 28.243944>,  <37.724682, 35.210102, 28.448456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079044, 35.758789, 28.243944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337696, 35.453678, 28.246382>,  <38.492886, 35.270611, 28.247845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337696, 35.453678, 28.246382>,  <38.079044, 35.758789, 28.243944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337696, 35.453678, 28.246382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596474, 0.500633, -0.627364,
		0.475490, 0.409306, 0.778703,
		0.646628, -0.762781, 0.006095,
		38.531685, 35.224842, 28.248211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707516, 36.075436, 28.301212>,  <38.079044, 35.758789, 28.243944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707516, 36.075436, 28.301212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782318, 35.712196, 28.151337>,  <38.827198, 35.494255, 28.061411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782318, 35.712196, 28.151337>,  <38.707516, 36.075436, 28.301212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782318, 35.712196, 28.151337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728509, 0.384071, -0.567242,
		0.659017, -0.166887, 0.733379,
		0.187005, -0.908096, -0.374688,
		38.838421, 35.439766, 28.038931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387470, 36.210564, 28.058496>,  <38.707516, 36.075436, 28.301212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387470, 36.210564, 28.058496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307838, 35.864296, 27.874763>,  <39.260059, 35.656536, 27.764524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307838, 35.864296, 27.874763>,  <39.387470, 36.210564, 28.058496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307838, 35.864296, 27.874763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756789, 0.161976, -0.633272,
		0.622604, -0.473692, 0.622881,
		-0.199084, -0.865667, -0.459332,
		39.248112, 35.604595, 27.736963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996403, 35.762115, 28.050989>,  <39.387470, 36.210564, 28.058496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996403, 35.762115, 28.050989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755249, 35.681355, 27.742247>,  <39.610558, 35.632896, 27.557001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755249, 35.681355, 27.742247>,  <39.996403, 35.762115, 28.050989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755249, 35.681355, 27.742247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693934, 0.344673, -0.632183,
		0.393680, -0.916752, -0.067689,
		-0.602886, -0.201906, -0.771857,
		39.574383, 35.620785, 27.510689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519249, 35.628609, 27.494295>,  <39.996403, 35.762115, 28.050989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519249, 35.628609, 27.494295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172375, 35.653542, 27.296671>,  <39.964249, 35.668503, 27.178097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172375, 35.653542, 27.296671>,  <40.519249, 35.628609, 27.494295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172375, 35.653542, 27.296671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483843, 0.340173, -0.806337,
		0.117805, -0.938295, -0.325154,
		-0.867190, 0.062332, -0.494061,
		39.912216, 35.672241, 27.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684685, 35.457367, 26.780005>,  <40.519249, 35.628609, 27.494295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684685, 35.457367, 26.780005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338955, 35.651463, 26.727121>,  <40.131516, 35.767921, 26.695393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338955, 35.651463, 26.727121>,  <40.684685, 35.457367, 26.780005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338955, 35.651463, 26.727121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353421, 0.399004, -0.846102,
		-0.357811, -0.778035, -0.516365,
		-0.864329, 0.485239, -0.132206,
		40.079655, 35.797035, 26.687460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484619, 35.390686, 26.031738>,  <40.684685, 35.457367, 26.780005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484619, 35.390686, 26.031738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291550, 35.722481, 26.144150>,  <40.175709, 35.921558, 26.211597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291550, 35.722481, 26.144150>,  <40.484619, 35.390686, 26.031738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291550, 35.722481, 26.144150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201295, 0.417363, -0.886165,
		-0.852354, -0.371158, -0.368421,
		-0.482672, 0.829488, 0.281029,
		40.146748, 35.971329, 26.228458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042435, 35.578926, 25.428078>,  <40.484619, 35.390686, 26.031738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042435, 35.578926, 25.428078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055721, 35.912132, 25.648977>,  <40.063694, 36.112057, 25.781517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055721, 35.912132, 25.648977>,  <40.042435, 35.578926, 25.428078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055721, 35.912132, 25.648977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128915, 0.544365, -0.828883,
		-0.991099, 0.098726, -0.089307,
		0.033216, 0.833018, 0.552247,
		40.065685, 36.162037, 25.814651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548470, 35.948425, 25.134502>,  <40.042435, 35.578926, 25.428078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548470, 35.948425, 25.134502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836319, 36.170193, 25.301723>,  <40.009029, 36.303253, 25.402056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836319, 36.170193, 25.301723>,  <39.548470, 35.948425, 25.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836319, 36.170193, 25.301723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100436, 0.512620, -0.852721,
		-0.687062, 0.655625, 0.313210,
		0.719624, 0.554415, 0.418050,
		40.052208, 36.336517, 25.427139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439823, 36.595741, 24.878880>,  <39.548470, 35.948425, 25.134502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439823, 36.595741, 24.878880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810322, 36.630081, 25.025686>,  <40.032619, 36.650684, 25.113770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810322, 36.630081, 25.025686>,  <39.439823, 36.595741, 24.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810322, 36.630081, 25.025686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277690, 0.502984, -0.818471,
		-0.254870, 0.860021, 0.442046,
		0.926245, 0.085852, 0.367015,
		40.088196, 36.655838, 25.135790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632538, 37.353477, 24.810303>,  <39.439823, 36.595741, 24.878880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632538, 37.353477, 24.810303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965218, 37.131603, 24.820133>,  <40.164825, 36.998478, 24.826031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965218, 37.131603, 24.820133>,  <39.632538, 37.353477, 24.810303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965218, 37.131603, 24.820133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297527, 0.407869, -0.863204,
		0.468781, 0.725237, 0.504257,
		0.831698, -0.554684, 0.024577,
		40.214725, 36.965199, 24.827507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163754, 37.827217, 24.657667>,  <39.632538, 37.353477, 24.810303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163754, 37.827217, 24.657667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295212, 37.457546, 24.579807>,  <40.374088, 37.235744, 24.533091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295212, 37.457546, 24.579807>,  <40.163754, 37.827217, 24.657667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295212, 37.457546, 24.579807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204801, 0.270932, -0.940560,
		0.921980, 0.269247, 0.278314,
		0.328647, -0.924176, -0.194652,
		40.393806, 37.180294, 24.521412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771053, 37.957420, 24.245314>,  <40.163754, 37.827217, 24.657667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771053, 37.957420, 24.245314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684879, 37.582397, 24.136078>,  <40.633175, 37.357384, 24.070536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684879, 37.582397, 24.136078>,  <40.771053, 37.957420, 24.245314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684879, 37.582397, 24.136078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303778, 0.201438, -0.931204,
		0.928067, -0.283572, 0.241412,
		-0.215434, -0.937555, -0.273091,
		40.620251, 37.301132, 24.054152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358681, 37.598614, 23.988527>,  <40.771053, 37.957420, 24.245314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358681, 37.598614, 23.988527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054638, 37.405792, 23.814236>,  <40.872211, 37.290100, 23.709660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054638, 37.405792, 23.814236>,  <41.358681, 37.598614, 23.988527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054638, 37.405792, 23.814236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409669, 0.165002, -0.897188,
		0.504389, -0.860464, 0.072063,
		-0.760108, -0.482054, -0.435731,
		40.826607, 37.261177, 23.683516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680706, 37.056873, 23.474033>,  <41.358681, 37.598614, 23.988527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680706, 37.056873, 23.474033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303501, 37.047695, 23.341249>,  <41.077179, 37.042187, 23.261580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303501, 37.047695, 23.341249>,  <41.680706, 37.056873, 23.474033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303501, 37.047695, 23.341249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332749, -0.069254, -0.940469,
		-0.001406, -0.997335, 0.072944,
		-0.943015, -0.022949, -0.331959,
		41.020596, 37.040810, 23.241661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674816, 36.509480, 23.003262>,  <41.680706, 37.056873, 23.474033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674816, 36.509480, 23.003262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367001, 36.750038, 22.917358>,  <41.182312, 36.894375, 22.865816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367001, 36.750038, 22.917358>,  <41.674816, 36.509480, 23.003262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367001, 36.750038, 22.917358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272853, 0.005596, -0.962039,
		-0.577368, -0.798929, -0.168400,
		-0.769543, 0.601399, -0.214760,
		41.136139, 36.930458, 22.852930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198246, 36.273796, 22.423315>,  <41.674816, 36.509480, 23.003262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198246, 36.273796, 22.423315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156212, 36.671535, 22.429298>,  <41.130993, 36.910179, 22.432888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156212, 36.671535, 22.429298>,  <41.198246, 36.273796, 22.423315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156212, 36.671535, 22.429298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193867, 0.035235, -0.980395,
		-0.975383, -0.100126, -0.196474,
		-0.105086, 0.994351, 0.014957,
		41.124687, 36.969841, 22.433784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991062, 36.465515, 21.731194>,  <41.198246, 36.273796, 22.423315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991062, 36.465515, 21.731194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055706, 36.838688, 21.859892>,  <41.094490, 37.062592, 21.937111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055706, 36.838688, 21.859892>,  <40.991062, 36.465515, 21.731194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055706, 36.838688, 21.859892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159631, 0.297025, -0.941432,
		-0.973859, 0.203502, -0.100924,
		0.161606, 0.932933, 0.321745,
		41.104187, 37.118568, 21.956415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629459, 36.948334, 21.264242>,  <40.991062, 36.465515, 21.731194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629459, 36.948334, 21.264242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938103, 37.138187, 21.433638>,  <41.123287, 37.252102, 21.535275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938103, 37.138187, 21.433638>,  <40.629459, 36.948334, 21.264242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938103, 37.138187, 21.433638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260735, 0.371266, -0.891167,
		-0.580209, 0.798048, 0.162716,
		0.771606, 0.474637, 0.423491,
		41.169586, 37.280579, 21.560684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684101, 37.507660, 20.802979>,  <40.629459, 36.948334, 21.264242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684101, 37.507660, 20.802979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001377, 37.505032, 21.046555>,  <41.191742, 37.503456, 21.192701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001377, 37.505032, 21.046555>,  <40.684101, 37.507660, 20.802979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001377, 37.505032, 21.046555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590704, 0.251419, -0.766719,
		-0.148061, 0.967856, 0.203304,
		0.793188, -0.006571, 0.608941,
		41.239334, 37.503059, 21.229237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076431, 38.099400, 20.551750>,  <40.684101, 37.507660, 20.802979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076431, 38.099400, 20.551750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343369, 37.899857, 20.772945>,  <41.503529, 37.780132, 20.905663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343369, 37.899857, 20.772945>,  <41.076431, 38.099400, 20.551750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343369, 37.899857, 20.772945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737074, 0.336054, -0.586336,
		0.106665, 0.798879, 0.591959,
		0.667341, -0.498859, 0.552988,
		41.543571, 37.750198, 20.938841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619987, 38.563953, 20.718790>,  <41.076431, 38.099400, 20.551750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619987, 38.563953, 20.718790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755085, 38.187767, 20.703510>,  <41.836143, 37.962055, 20.694342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755085, 38.187767, 20.703510>,  <41.619987, 38.563953, 20.718790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755085, 38.187767, 20.703510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613898, 0.250866, -0.748462,
		0.713483, 0.229338, 0.662077,
		0.337743, -0.940463, -0.038199,
		41.856407, 37.905628, 20.692051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358173, 38.634281, 20.564587>,  <41.619987, 38.563953, 20.718790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358173, 38.634281, 20.564587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304577, 38.244804, 20.490870>,  <42.272419, 38.011116, 20.446638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304577, 38.244804, 20.490870>,  <42.358173, 38.634281, 20.564587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304577, 38.244804, 20.490870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753761, 0.020596, -0.656826,
		0.643345, -0.226921, 0.731174,
		-0.133988, -0.973695, -0.184294,
		42.264381, 37.952694, 20.435581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964268, 38.271790, 20.515614>,  <42.358173, 38.634281, 20.564587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964268, 38.271790, 20.515614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720600, 38.023010, 20.318798>,  <42.574402, 37.873745, 20.200708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720600, 38.023010, 20.318798>,  <42.964268, 38.271790, 20.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720600, 38.023010, 20.318798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741300, -0.226129, -0.631934,
		0.281764, -0.749700, 0.598798,
		-0.609167, -0.621945, -0.492038,
		42.537849, 37.836426, 20.171186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322655, 37.683361, 20.500683>,  <42.964268, 38.271790, 20.515614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322655, 37.683361, 20.500683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068871, 37.652473, 20.193047>,  <42.916599, 37.633942, 20.008465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068871, 37.652473, 20.193047>,  <43.322655, 37.683361, 20.500683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068871, 37.652473, 20.193047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744723, -0.327536, -0.581470,
		-0.207001, -0.941678, 0.265318,
		-0.634458, -0.077224, -0.769090,
		42.878532, 37.629307, 19.962320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473995, 37.022243, 20.281164>,  <43.322655, 37.683361, 20.500683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473995, 37.022243, 20.281164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299473, 37.218349, 19.979362>,  <43.194759, 37.336014, 19.798281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299473, 37.218349, 19.979362>,  <43.473995, 37.022243, 20.281164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299473, 37.218349, 19.979362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779935, -0.212095, -0.588827,
		-0.448706, -0.845375, -0.289833,
		-0.436308, 0.490261, -0.754506,
		43.168579, 37.365429, 19.753010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740585, 36.823311, 19.616035>,  <43.473995, 37.022243, 20.281164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740585, 36.823311, 19.616035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806774, 36.429298, 19.596701>,  <43.846489, 36.192890, 19.585100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806774, 36.429298, 19.596701>,  <43.740585, 36.823311, 19.616035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806774, 36.429298, 19.596701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618490, -0.141824, 0.772888,
		-0.768173, -0.097997, -0.632699,
		0.165473, -0.985029, -0.048335,
		43.856415, 36.133789, 19.582201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085518, 36.474644, 19.659775>,  <43.740585, 36.823311, 19.616035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085518, 36.474644, 19.659775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363720, 36.217632, 19.788422>,  <43.530640, 36.063427, 19.865610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363720, 36.217632, 19.788422>,  <43.085518, 36.474644, 19.659775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363720, 36.217632, 19.788422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516683, -0.136183, 0.845277,
		-0.499314, -0.754065, -0.426698,
		0.695503, -0.642526, 0.321615,
		43.572372, 36.024876, 19.884907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764648, 35.965229, 20.011885>,  <43.085518, 36.474644, 19.659775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764648, 35.965229, 20.011885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130196, 35.870094, 20.143507>,  <43.349525, 35.813015, 20.222481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130196, 35.870094, 20.143507>,  <42.764648, 35.965229, 20.011885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130196, 35.870094, 20.143507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377515, -0.199521, 0.904253,
		-0.149401, -0.950595, -0.272119,
		0.913872, -0.237825, 0.329055,
		43.404358, 35.798744, 20.242224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604744, 35.429028, 20.379654>,  <42.764648, 35.965229, 20.011885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604744, 35.429028, 20.379654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974957, 35.526390, 20.495689>,  <43.197083, 35.584808, 20.565311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974957, 35.526390, 20.495689>,  <42.604744, 35.429028, 20.379654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974957, 35.526390, 20.495689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204280, -0.324105, 0.923702,
		0.318854, -0.914171, -0.250245,
		0.925528, 0.243406, 0.290089,
		43.252613, 35.599411, 20.582716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942345, 34.820553, 20.760715>,  <42.604744, 35.429028, 20.379654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942345, 34.820553, 20.760715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118618, 35.159122, 20.880295>,  <43.224380, 35.362263, 20.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118618, 35.159122, 20.880295>,  <42.942345, 34.820553, 20.760715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118618, 35.159122, 20.880295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088981, -0.290199, 0.952820,
		0.893243, -0.446490, -0.052570,
		0.440680, 0.846423, 0.298948,
		43.250824, 35.413048, 20.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454735, 34.648277, 21.261467>,  <42.942345, 34.820553, 20.760715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454735, 34.648277, 21.261467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385971, 35.033192, 21.345808>,  <43.344711, 35.264141, 21.396412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385971, 35.033192, 21.345808>,  <43.454735, 34.648277, 21.261467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385971, 35.033192, 21.345808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108068, -0.194325, 0.974966,
		0.979167, 0.190392, -0.070586,
		-0.171909, 0.962283, 0.210852,
		43.334400, 35.321877, 21.409063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845070, 34.750610, 21.893740>,  <43.454735, 34.648277, 21.261467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845070, 34.750610, 21.893740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570763, 35.041561, 21.883512>,  <43.406178, 35.216129, 21.877377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570763, 35.041561, 21.883512>,  <43.845070, 34.750610, 21.893740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570763, 35.041561, 21.883512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174729, -0.130431, 0.975939,
		0.706537, 0.673733, 0.216538,
		-0.685766, 0.727373, -0.025566,
		43.365032, 35.259773, 21.875843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964924, 35.248894, 22.471315>,  <43.845070, 34.750610, 21.893740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964924, 35.248894, 22.471315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578735, 35.303837, 22.382776>,  <43.347023, 35.336803, 22.329653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578735, 35.303837, 22.382776>,  <43.964924, 35.248894, 22.471315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578735, 35.303837, 22.382776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242980, -0.168478, 0.955288,
		0.093928, 0.976088, 0.196037,
		-0.965473, 0.137361, -0.221345,
		43.289093, 35.345047, 22.316372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614563, 35.719692, 22.959341>,  <43.964924, 35.248894, 22.471315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614563, 35.719692, 22.959341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305309, 35.525055, 22.796618>,  <43.119759, 35.408272, 22.698982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305309, 35.525055, 22.796618>,  <43.614563, 35.719692, 22.959341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305309, 35.525055, 22.796618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317759, -0.257936, 0.912414,
		-0.548907, 0.834682, 0.044798,
		-0.773130, -0.486595, -0.406811,
		43.073372, 35.379078, 22.674574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023529, 36.095200, 23.283903>,  <43.614563, 35.719692, 22.959341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023529, 36.095200, 23.283903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914120, 35.734406, 23.150274>,  <42.848473, 35.517929, 23.070097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914120, 35.734406, 23.150274>,  <43.023529, 36.095200, 23.283903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914120, 35.734406, 23.150274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457115, -0.183694, 0.870232,
		-0.846304, 0.390740, -0.362066,
		-0.273525, -0.901986, -0.334074,
		42.832062, 35.463810, 23.050053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297543, 35.957298, 23.280989>,  <43.023529, 36.095200, 23.283903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297543, 35.957298, 23.280989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428326, 35.580647, 23.248903>,  <42.506798, 35.354656, 23.229652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428326, 35.580647, 23.248903>,  <42.297543, 35.957298, 23.280989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428326, 35.580647, 23.248903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713048, -0.301511, 0.632973,
		-0.620210, -0.149762, -0.770007,
		0.326961, -0.941628, -0.080213,
		42.526413, 35.298157, 23.224840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640736, 35.461823, 23.139051>,  <42.297543, 35.957298, 23.280989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640736, 35.461823, 23.139051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943920, 35.233925, 23.266104>,  <42.125832, 35.097187, 23.342335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943920, 35.233925, 23.266104>,  <41.640736, 35.461823, 23.139051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943920, 35.233925, 23.266104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602806, -0.425731, 0.674817,
		-0.249248, -0.702954, -0.666132,
		0.757958, -0.569745, 0.317633,
		42.171307, 35.063000, 23.361393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334126, 34.826500, 23.051216>,  <41.640736, 35.461823, 23.139051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334126, 34.826500, 23.051216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624706, 34.813324, 23.325787>,  <41.799053, 34.805420, 23.490530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624706, 34.813324, 23.325787>,  <41.334126, 34.826500, 23.051216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624706, 34.813324, 23.325787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648394, -0.363828, 0.668741,
		0.227715, -0.930884, -0.285659,
		0.726451, -0.032937, 0.686429,
		41.842640, 34.803444, 23.531715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244598, 34.191849, 23.417807>,  <41.334126, 34.826500, 23.051216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244598, 34.191849, 23.417807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478409, 34.402328, 23.664850>,  <41.618694, 34.528618, 23.813076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478409, 34.402328, 23.664850>,  <41.244598, 34.191849, 23.417807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478409, 34.402328, 23.664850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505780, -0.358891, 0.784464,
		0.634440, -0.770915, 0.056361,
		0.584528, 0.526201, 0.617608,
		41.653767, 34.560188, 23.850132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723427, 33.790623, 23.843683>,  <41.244598, 34.191849, 23.417807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723427, 33.790623, 23.843683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706242, 34.125168, 24.062279>,  <41.695930, 34.325893, 24.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706242, 34.125168, 24.062279>,  <41.723427, 33.790623, 23.843683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706242, 34.125168, 24.062279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398334, -0.515979, 0.758351,
		0.916234, -0.185105, 0.355319,
		-0.042963, 0.836362, 0.546491,
		41.693352, 34.376076, 24.226227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968941, 33.573315, 24.476574>,  <41.723427, 33.790623, 23.843683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968941, 33.573315, 24.476574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816494, 33.925110, 24.590591>,  <41.725025, 34.136189, 24.659002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816494, 33.925110, 24.590591>,  <41.968941, 33.573315, 24.476574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816494, 33.925110, 24.590591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191350, -0.376678, 0.906366,
		0.904507, 0.290891, 0.311850,
		-0.381120, 0.879487, 0.285045,
		41.702156, 34.188957, 24.676105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322460, 33.738190, 25.126345>,  <41.968941, 33.573315, 24.476574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322460, 33.738190, 25.126345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972950, 33.931450, 25.104113>,  <41.763245, 34.047405, 25.090773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972950, 33.931450, 25.104113>,  <42.322460, 33.738190, 25.126345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972950, 33.931450, 25.104113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220700, -0.292084, 0.930580,
		0.433375, 0.825381, 0.361846,
		-0.873772, 0.483149, -0.055579,
		41.710819, 34.076393, 25.087439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126987, 34.177635, 25.713402>,  <42.322460, 33.738190, 25.126345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126987, 34.177635, 25.713402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756493, 34.161434, 25.563496>,  <41.534195, 34.151714, 25.473553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756493, 34.161434, 25.563496>,  <42.126987, 34.177635, 25.713402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756493, 34.161434, 25.563496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356468, -0.229119, 0.905779,
		-0.122548, 0.972556, 0.197781,
		-0.926235, -0.040499, -0.374763,
		41.478622, 34.149284, 25.451067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813225, 34.572849, 26.202997>,  <42.126987, 34.177635, 25.713402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813225, 34.572849, 26.202997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542297, 34.342403, 26.019985>,  <41.379742, 34.204136, 25.910179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542297, 34.342403, 26.019985>,  <41.813225, 34.572849, 26.202997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542297, 34.342403, 26.019985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417395, -0.211195, 0.883843,
		-0.605819, 0.789615, -0.097419,
		-0.677321, -0.576111, -0.457528,
		41.339100, 34.169571, 25.882727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116409, 34.820457, 26.423029>,  <41.813225, 34.572849, 26.202997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116409, 34.820457, 26.423029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054245, 34.444000, 26.302959>,  <41.016945, 34.218128, 26.230919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054245, 34.444000, 26.302959>,  <41.116409, 34.820457, 26.423029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054245, 34.444000, 26.302959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488791, -0.190797, 0.851281,
		-0.858447, 0.279020, -0.430369,
		-0.155411, -0.941140, -0.300172,
		41.007622, 34.161659, 26.212908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455048, 34.571350, 26.737885>,  <41.116409, 34.820457, 26.423029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455048, 34.571350, 26.737885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580021, 34.213165, 26.611053>,  <40.655006, 33.998257, 26.534956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580021, 34.213165, 26.611053>,  <40.455048, 34.571350, 26.737885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580021, 34.213165, 26.611053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337874, -0.416713, 0.843914,
		-0.887820, -0.156538, -0.432748,
		0.312437, -0.895459, -0.317077,
		40.673752, 33.944527, 26.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826813, 33.994926, 26.693340>,  <40.455048, 34.571350, 26.737885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826813, 33.994926, 26.693340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182674, 33.826511, 26.764051>,  <40.396191, 33.725464, 26.806479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182674, 33.826511, 26.764051>,  <39.826813, 33.994926, 26.693340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182674, 33.826511, 26.764051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355358, -0.395221, 0.847066,
		-0.286778, -0.816412, -0.501227,
		0.889651, -0.421036, 0.176778,
		40.449570, 33.700199, 26.817085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594246, 33.495335, 27.103373>,  <39.826813, 33.994926, 26.693340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594246, 33.495335, 27.103373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992027, 33.490295, 27.145153>,  <40.230694, 33.487274, 27.170221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992027, 33.490295, 27.145153>,  <39.594246, 33.495335, 27.103373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992027, 33.490295, 27.145153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102436, -0.342260, 0.934005,
		0.023986, -0.939521, -0.341651,
		0.994450, -0.012595, 0.104450,
		40.290363, 33.486515, 27.176489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754559, 32.893833, 27.395674>,  <39.594246, 33.495335, 27.103373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754559, 32.893833, 27.395674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082321, 33.107002, 27.480110>,  <40.278980, 33.234905, 27.530771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082321, 33.107002, 27.480110>,  <39.754559, 32.893833, 27.395674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082321, 33.107002, 27.480110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013098, -0.350754, 0.936376,
		0.573058, -0.770041, -0.280431,
		0.819410, 0.532925, 0.211089,
		40.328144, 33.266880, 27.543436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196362, 32.439556, 27.505901>,  <39.754559, 32.893833, 27.395674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196362, 32.439556, 27.505901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287270, 32.781532, 27.692419>,  <40.341816, 32.986717, 27.804331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287270, 32.781532, 27.692419>,  <40.196362, 32.439556, 27.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287270, 32.781532, 27.692419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006776, -0.480202, 0.877132,
		0.973808, -0.196186, -0.114928,
		0.227270, 0.854937, 0.466296,
		40.355450, 33.038013, 27.832308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602951, 32.242050, 28.131962>,  <40.196362, 32.439556, 27.505901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602951, 32.242050, 28.131962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489666, 32.615669, 28.219006>,  <40.421696, 32.839840, 28.271233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489666, 32.615669, 28.219006>,  <40.602951, 32.242050, 28.131962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489666, 32.615669, 28.219006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009434, -0.229603, 0.973238,
		0.959012, 0.273576, 0.073837,
		-0.283208, 0.934044, 0.217611,
		40.404705, 32.895882, 28.284288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934242, 32.396027, 28.700199>,  <40.602951, 32.242050, 28.131962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934242, 32.396027, 28.700199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641575, 32.668037, 28.719074>,  <40.465973, 32.831242, 28.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641575, 32.668037, 28.719074>,  <40.934242, 32.396027, 28.700199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641575, 32.668037, 28.719074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137842, -0.215394, 0.966750,
		0.667577, 0.700837, 0.251333,
		-0.731670, 0.680024, 0.047188,
		40.422073, 32.872044, 28.733231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040306, 32.737774, 29.322243>,  <40.934242, 32.396027, 28.700199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040306, 32.737774, 29.322243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658321, 32.796307, 29.218996>,  <40.429131, 32.831429, 29.157047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658321, 32.796307, 29.218996>,  <41.040306, 32.737774, 29.322243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658321, 32.796307, 29.218996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293882, -0.346546, 0.890809,
		0.040908, 0.926549, 0.373945,
		-0.954966, 0.146336, -0.258119,
		40.371830, 32.840206, 29.141560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861431, 32.966316, 29.836508>,  <41.040306, 32.737774, 29.322243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861431, 32.966316, 29.836508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508579, 32.875160, 29.671629>,  <40.296867, 32.820465, 29.572701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508579, 32.875160, 29.671629>,  <40.861431, 32.966316, 29.836508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508579, 32.875160, 29.671629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328521, -0.329427, 0.885184,
		-0.337514, 0.916266, 0.215732,
		-0.882133, -0.227890, -0.412199,
		40.243938, 32.806793, 29.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418583, 33.190098, 30.351078>,  <40.861431, 32.966316, 29.836508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418583, 33.190098, 30.351078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208179, 32.921543, 30.142250>,  <40.081940, 32.760410, 30.016954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208179, 32.921543, 30.142250>,  <40.418583, 33.190098, 30.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208179, 32.921543, 30.142250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381898, -0.362025, 0.850349,
		-0.759916, 0.646665, -0.065975,
		-0.526006, -0.671389, -0.522068,
		40.050377, 32.720127, 29.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753269, 33.140949, 30.630690>,  <40.418583, 33.190098, 30.351078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753269, 33.140949, 30.630690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775688, 32.796371, 30.428787>,  <39.789139, 32.589626, 30.307646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775688, 32.796371, 30.428787>,  <39.753269, 33.140949, 30.630690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775688, 32.796371, 30.428787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553213, -0.447646, 0.702545,
		-0.831152, 0.239859, -0.501650,
		0.056050, -0.861441, -0.504755,
		39.792503, 32.537941, 30.277361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027634, 32.751167, 30.630688>,  <39.753269, 33.140949, 30.630690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027634, 32.751167, 30.630688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330570, 32.497902, 30.566769>,  <39.512333, 32.345943, 30.528418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330570, 32.497902, 30.566769>,  <39.027634, 32.751167, 30.630688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330570, 32.497902, 30.566769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373414, -0.620657, 0.689454,
		-0.535714, -0.462485, -0.706483,
		0.757345, -0.633161, -0.159797,
		39.557774, 32.307953, 30.518829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699547, 32.103519, 30.585751>,  <39.027634, 32.751167, 30.630688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699547, 32.103519, 30.585751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087673, 32.028111, 30.646339>,  <39.320549, 31.982866, 30.682692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087673, 32.028111, 30.646339>,  <38.699547, 32.103519, 30.585751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087673, 32.028111, 30.646339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234256, -0.577164, 0.782308,
		-0.060057, -0.794570, -0.604195,
		0.970318, -0.188519, 0.151470,
		39.378769, 31.971554, 30.691780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808723, 31.369095, 30.560524>,  <38.699547, 32.103519, 30.585751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808723, 31.369095, 30.560524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117924, 31.505421, 30.774561>,  <39.303444, 31.587215, 30.902983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117924, 31.505421, 30.774561>,  <38.808723, 31.369095, 30.560524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117924, 31.505421, 30.774561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243207, -0.619810, 0.746114,
		0.585941, -0.706881, -0.396222,
		0.772996, 0.340815, 0.535091,
		39.349823, 31.607666, 30.935087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043060, 30.805771, 30.763969>,  <38.808723, 31.369095, 30.560524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043060, 30.805771, 30.763969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205460, 31.073704, 31.012644>,  <39.302898, 31.234465, 31.161848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205460, 31.073704, 31.012644>,  <39.043060, 30.805771, 30.763969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205460, 31.073704, 31.012644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125187, -0.633096, 0.763883,
		0.905261, -0.387959, -0.173179,
		0.405995, 0.669834, 0.621684,
		39.327259, 31.274654, 31.199148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307690, 30.351763, 31.314907>,  <39.043060, 30.805771, 30.763969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307690, 30.351763, 31.314907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326580, 30.722765, 31.463234>,  <39.337914, 30.945366, 31.552231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326580, 30.722765, 31.463234>,  <39.307690, 30.351763, 31.314907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326580, 30.722765, 31.463234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343875, -0.333444, 0.877818,
		0.937827, -0.168975, 0.303197,
		0.047230, 0.927504, 0.370819,
		39.340748, 31.001017, 31.574480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690910, 30.345947, 32.028370>,  <39.307690, 30.351763, 31.314907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690910, 30.345947, 32.028370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438309, 30.655802, 32.014824>,  <39.286747, 30.841715, 32.006699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438309, 30.655802, 32.014824>,  <39.690910, 30.345947, 32.028370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438309, 30.655802, 32.014824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529868, -0.399253, 0.748223,
		0.566081, 0.490445, 0.662583,
		-0.631500, 0.774636, -0.033861,
		39.248859, 30.888193, 32.004665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489891, 30.337990, 32.666481>,  <39.690910, 30.345947, 32.028370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489891, 30.337990, 32.666481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219860, 30.596766, 32.524639>,  <39.057842, 30.752031, 32.439533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219860, 30.596766, 32.524639>,  <39.489891, 30.337990, 32.666481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219860, 30.596766, 32.524639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633569, -0.262127, 0.727929,
		0.377976, 0.716070, 0.586837,
		-0.675074, 0.646941, -0.354602,
		39.017338, 30.790848, 32.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520508, 30.929787, 33.098541>,  <39.489891, 30.337990, 32.666481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520508, 30.929787, 33.098541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158638, 30.895708, 32.931541>,  <38.941517, 30.875261, 32.831341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158638, 30.895708, 32.931541>,  <39.520508, 30.929787, 33.098541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158638, 30.895708, 32.931541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410989, -0.084149, 0.907748,
		-0.112470, 0.992804, 0.041112,
		-0.904676, -0.085198, -0.417496,
		38.887234, 30.870148, 32.806293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049110, 31.292799, 33.558350>,  <39.520508, 30.929787, 33.098541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049110, 31.292799, 33.558350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810059, 31.061008, 33.336700>,  <38.666630, 30.921934, 33.203712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810059, 31.061008, 33.336700>,  <39.049110, 31.292799, 33.558350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810059, 31.061008, 33.336700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493090, -0.279326, 0.823916,
		-0.632222, 0.765625, -0.118802,
		-0.597627, -0.579478, -0.554119,
		38.630772, 30.887165, 33.170464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399731, 31.320181, 33.807320>,  <39.049110, 31.292799, 33.558350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399731, 31.320181, 33.807320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408600, 30.963329, 33.626823>,  <38.413921, 30.749218, 33.518528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408600, 30.963329, 33.626823>,  <38.399731, 31.320181, 33.807320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408600, 30.963329, 33.626823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389362, -0.423418, 0.817994,
		-0.920818, 0.157555, -0.356750,
		0.022175, -0.892129, -0.451237,
		38.415253, 30.695690, 33.491451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754227, 30.985529, 33.895245>,  <38.399731, 31.320181, 33.807320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754227, 30.985529, 33.895245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076118, 30.750595, 33.860710>,  <38.269253, 30.609634, 33.839989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076118, 30.750595, 33.860710>,  <37.754227, 30.985529, 33.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076118, 30.750595, 33.860710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265857, -0.486590, 0.832196,
		-0.530790, -0.646735, -0.547718,
		0.804724, -0.587336, -0.086338,
		38.317535, 30.574394, 33.834808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480694, 30.296457, 33.826591>,  <37.754227, 30.985529, 33.895245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480694, 30.296457, 33.826591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864391, 30.296385, 33.939625>,  <38.094608, 30.296341, 34.007442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864391, 30.296385, 33.939625>,  <37.480694, 30.296457, 33.826591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864391, 30.296385, 33.939625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215381, -0.647820, 0.730712,
		0.182927, -0.761793, -0.621457,
		0.959244, -0.000183, 0.282580,
		38.152164, 30.296329, 34.024399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390427, 29.949896, 34.419777>,  <37.480694, 30.296457, 33.826591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390427, 29.949896, 34.419777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323303, 30.272375, 34.646717>,  <37.283028, 30.465862, 34.782879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323303, 30.272375, 34.646717>,  <37.390427, 29.949896, 34.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323303, 30.272375, 34.646717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641469, 0.347708, -0.683825,
		-0.748570, -0.478689, 0.458803,
		-0.167810, 0.806199, 0.567348,
		37.272961, 30.514235, 34.816921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639606, 30.157791, 34.624680>,  <37.390427, 29.949896, 34.419777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639606, 30.157791, 34.624680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863194, 30.484934, 34.570034>,  <36.997345, 30.681219, 34.537247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863194, 30.484934, 34.570034>,  <36.639606, 30.157791, 34.624680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863194, 30.484934, 34.570034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631108, 0.312765, -0.709846,
		-0.537824, 0.483001, 0.690982,
		0.558971, 0.817855, -0.136613,
		37.030884, 30.730291, 34.529049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196087, 30.621668, 34.604424>,  <36.639606, 30.157791, 34.624680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196087, 30.621668, 34.604424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512035, 30.751308, 34.396168>,  <36.701603, 30.829092, 34.271214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512035, 30.751308, 34.396168>,  <36.196087, 30.621668, 34.604424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512035, 30.751308, 34.396168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613119, 0.436344, -0.658550,
		0.013739, 0.839382, 0.543369,
		0.789871, 0.324102, -0.520636,
		36.748997, 30.848539, 34.239979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299191, 31.385048, 34.697594>,  <36.196087, 30.621668, 34.604424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299191, 31.385048, 34.697594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431129, 31.248192, 34.345654>,  <36.510292, 31.166079, 34.134487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431129, 31.248192, 34.345654>,  <36.299191, 31.385048, 34.697594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431129, 31.248192, 34.345654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634080, 0.610190, -0.474985,
		0.699389, 0.714570, -0.015675,
		0.329845, -0.342138, -0.879854,
		36.530083, 31.145550, 34.081696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601883, 31.923605, 34.198486>,  <36.299191, 31.385048, 34.697594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601883, 31.923605, 34.198486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429291, 31.621216, 34.001579>,  <36.325737, 31.439781, 33.883434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429291, 31.621216, 34.001579>,  <36.601883, 31.923605, 34.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429291, 31.621216, 34.001579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578724, 0.650553, -0.491792,
		0.692029, 0.072690, -0.718200,
		-0.431479, -0.755974, -0.492269,
		36.299847, 31.394423, 33.853897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587269, 32.099258, 33.449017>,  <36.601883, 31.923605, 34.198486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587269, 32.099258, 33.449017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289310, 31.838955, 33.507866>,  <36.110535, 31.682772, 33.543175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289310, 31.838955, 33.507866>,  <36.587269, 32.099258, 33.449017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289310, 31.838955, 33.507866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665610, 0.709704, -0.230834,
		0.045804, -0.269873, -0.961806,
		-0.744893, -0.650760, 0.147122,
		36.065842, 31.643726, 33.552002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205215, 32.198753, 32.898769>,  <36.587269, 32.099258, 33.449017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205215, 32.198753, 32.898769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943523, 32.050377, 33.162403>,  <35.786510, 31.961351, 33.320583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943523, 32.050377, 33.162403>,  <36.205215, 32.198753, 32.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943523, 32.050377, 33.162403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700113, 0.626653, -0.342268,
		-0.286058, -0.685356, -0.669670,
		-0.654226, -0.370937, 0.659086,
		35.747257, 31.939096, 33.360130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609886, 31.958628, 32.645500>,  <36.205215, 32.198753, 32.898769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609886, 31.958628, 32.645500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501278, 32.065228, 33.015419>,  <35.436115, 32.129189, 33.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501278, 32.065228, 33.015419>,  <35.609886, 31.958628, 32.645500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501278, 32.065228, 33.015419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808319, 0.458420, -0.369421,
		-0.522398, -0.847838, 0.090947,
		-0.271517, 0.266499, 0.924801,
		35.419823, 32.145176, 33.292858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925072, 31.764027, 32.677002>,  <35.609886, 31.958628, 32.645500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925072, 31.764027, 32.677002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997372, 32.063271, 32.932396>,  <35.040752, 32.242817, 33.085632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997372, 32.063271, 32.932396>,  <34.925072, 31.764027, 32.677002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997372, 32.063271, 32.932396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672283, 0.567816, -0.474995,
		-0.717890, -0.343387, 0.605574,
		0.180747, 0.748111, 0.638483,
		35.051598, 32.287704, 33.123940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348007, 32.071754, 32.797062>,  <34.925072, 31.764027, 32.677002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348007, 32.071754, 32.797062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605515, 32.358078, 32.905270>,  <34.760017, 32.529873, 32.970196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605515, 32.358078, 32.905270>,  <34.348007, 32.071754, 32.797062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605515, 32.358078, 32.905270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432949, 0.632206, -0.642550,
		-0.630968, 0.296530, 0.716902,
		0.643765, 0.715811, 0.270519,
		34.798645, 32.572823, 32.986423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036064, 31.765686, 32.146614>,  <34.348007, 32.071754, 32.797062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036064, 31.765686, 32.146614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098774, 31.674143, 31.762314>,  <34.136398, 31.619217, 31.531733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098774, 31.674143, 31.762314>,  <34.036064, 31.765686, 32.146614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098774, 31.674143, 31.762314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345189, -0.898734, 0.270409,
		-0.925347, -0.374034, -0.061897,
		0.156771, -0.228856, -0.960754,
		34.145805, 31.605486, 31.474087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869385, 31.046461, 32.195366>,  <34.036064, 31.765686, 32.146614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869385, 31.046461, 32.195366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060844, 31.017174, 31.845385>,  <34.175720, 30.999601, 31.635397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060844, 31.017174, 31.845385>,  <33.869385, 31.046461, 32.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060844, 31.017174, 31.845385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049394, -0.992693, 0.110092,
		-0.876616, -0.095913, -0.471534,
		0.478648, -0.073217, -0.874949,
		34.204437, 30.995209, 31.582899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540665, 30.648363, 31.712730>,  <33.869385, 31.046461, 32.195366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540665, 30.648363, 31.712730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938450, 30.623188, 31.679062>,  <34.177120, 30.608084, 31.658861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938450, 30.623188, 31.679062>,  <33.540665, 30.648363, 31.712730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938450, 30.623188, 31.679062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048938, -0.986047, 0.159114,
		-0.093011, -0.154113, -0.983666,
		0.994462, -0.062938, -0.084172,
		34.236790, 30.604307, 31.653811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134140, 30.689993, 32.436775>,  <33.540665, 30.648363, 31.712730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134140, 30.689993, 32.436775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193207, 30.320934, 32.294273>,  <33.228649, 30.099499, 32.208771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193207, 30.320934, 32.294273>,  <33.134140, 30.689993, 32.436775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193207, 30.320934, 32.294273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821379, -0.315053, 0.475477,
		-0.550936, 0.222408, -0.804366,
		0.147668, -0.922647, -0.356255,
		33.237507, 30.044140, 32.187397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815380, 31.157667, 32.929276>,  <33.134140, 30.689993, 32.436775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815380, 31.157667, 32.929276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441212, 31.279276, 32.857101>,  <32.216709, 31.352242, 32.813797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441212, 31.279276, 32.857101>,  <32.815380, 31.157667, 32.929276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441212, 31.279276, 32.857101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283936, -0.341964, 0.895791,
		0.210639, 0.889174, 0.406203,
		-0.935421, 0.304024, -0.180438,
		32.160587, 31.370483, 32.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435677, 31.538122, 33.365795>,  <32.815380, 31.157667, 32.929276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435677, 31.538122, 33.365795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089001, 31.400782, 33.221043>,  <31.880995, 31.318378, 33.134193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089001, 31.400782, 33.221043>,  <32.435677, 31.538122, 33.365795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089001, 31.400782, 33.221043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294148, -0.234144, 0.926635,
		-0.402891, 0.909554, 0.101935,
		-0.866692, -0.343349, -0.361878,
		31.828993, 31.297777, 33.112480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886791, 31.812586, 33.774715>,  <32.435677, 31.538122, 33.365795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886791, 31.812586, 33.774715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778778, 31.471724, 33.595421>,  <31.713970, 31.267206, 33.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778778, 31.471724, 33.595421>,  <31.886791, 31.812586, 33.774715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778778, 31.471724, 33.595421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321586, -0.358975, 0.876196,
		-0.907560, 0.380748, -0.177106,
		-0.270033, -0.852155, -0.448234,
		31.697767, 31.216078, 33.460949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174221, 31.640951, 33.853111>,  <31.886791, 31.812586, 33.774715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174221, 31.640951, 33.853111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358784, 31.290691, 33.796059>,  <31.469521, 31.080536, 33.761826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358784, 31.290691, 33.796059>,  <31.174221, 31.640951, 33.853111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358784, 31.290691, 33.796059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329633, -0.318466, 0.888775,
		-0.823678, -0.363070, -0.435585,
		0.461407, -0.875648, -0.142634,
		31.497206, 31.027996, 33.753269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694164, 31.112509, 34.005428>,  <31.174221, 31.640951, 33.853111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694164, 31.112509, 34.005428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067360, 30.978674, 34.058464>,  <31.291277, 30.898373, 34.090286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067360, 30.978674, 34.058464>,  <30.694164, 31.112509, 34.005428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067360, 30.978674, 34.058464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235968, -0.290499, 0.927324,
		-0.271736, -0.896478, -0.349982,
		0.932994, -0.334572, 0.132601,
		31.347258, 30.878298, 34.098244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652002, 30.481863, 34.275211>,  <30.694164, 31.112509, 34.005428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652002, 30.481863, 34.275211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029217, 30.569134, 34.375675>,  <31.255545, 30.621496, 34.435955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029217, 30.569134, 34.375675>,  <30.652002, 30.481863, 34.275211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029217, 30.569134, 34.375675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162821, -0.355683, 0.920314,
		0.290124, -0.908784, -0.299899,
		0.943036, 0.218176, 0.251162,
		31.312128, 30.634586, 34.451023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093693, 29.847542, 34.529335>,  <30.652002, 30.481863, 34.275211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093693, 29.847542, 34.529335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112152, 30.197485, 34.722206>,  <31.123228, 30.407452, 34.837929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112152, 30.197485, 34.722206>,  <31.093693, 29.847542, 34.529335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112152, 30.197485, 34.722206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172301, -0.468483, 0.866508,
		0.983963, -0.123067, 0.129119,
		0.046148, 0.874859, 0.482174,
		31.125996, 30.459942, 34.866859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076847, 29.527931, 35.246151>,  <31.093693, 29.847542, 34.529335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076847, 29.527931, 35.246151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231871, 29.895681, 35.273129>,  <31.324884, 30.116331, 35.289314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231871, 29.895681, 35.273129>,  <31.076847, 29.527931, 35.246151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231871, 29.895681, 35.273129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385977, -0.228274, 0.893819,
		0.837150, -0.320376, -0.443327,
		0.387558, 0.919375, 0.067442,
		31.348139, 30.171494, 35.293362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806377, 29.427919, 35.447613>,  <31.076847, 29.527931, 35.246151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806377, 29.427919, 35.447613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709038, 29.808517, 35.522907>,  <31.650633, 30.036877, 35.568085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709038, 29.808517, 35.522907>,  <31.806377, 29.427919, 35.447613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709038, 29.808517, 35.522907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279162, -0.117154, 0.953071,
		0.928897, 0.284480, -0.237112,
		-0.243350, 0.951497, 0.188240,
		31.636032, 30.093967, 35.579380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394680, 29.714783, 35.851612>,  <31.806377, 29.427919, 35.447613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394680, 29.714783, 35.851612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087280, 29.953417, 35.944122>,  <31.902840, 30.096598, 35.999630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087280, 29.953417, 35.944122>,  <32.394680, 29.714783, 35.851612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087280, 29.953417, 35.944122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225622, -0.085576, 0.970449,
		0.598749, 0.797973, -0.068838,
		-0.768502, 0.596586, 0.231278,
		31.856730, 30.132393, 36.013504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618073, 30.152826, 36.424007>,  <32.394680, 29.714783, 35.851612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618073, 30.152826, 36.424007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218521, 30.147200, 36.442066>,  <31.978790, 30.143824, 36.452900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218521, 30.147200, 36.442066>,  <32.618073, 30.152826, 36.424007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218521, 30.147200, 36.442066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047225, -0.248346, 0.967519,
		-0.002397, 0.968569, 0.248733,
		-0.998881, -0.014066, 0.045146,
		31.918858, 30.142981, 36.455608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109692, 30.709249, 36.571167>,  <32.618073, 30.152826, 36.424007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109692, 30.709249, 36.571167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470570, 30.817822, 36.705250>,  <33.687096, 30.882965, 36.785702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470570, 30.817822, 36.705250>,  <33.109692, 30.709249, 36.571167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470570, 30.817822, 36.705250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316190, 0.944792, 0.085977,
		-0.293367, -0.183558, 0.938212,
		0.902197, 0.271431, 0.335210,
		33.741230, 30.899250, 36.805813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945572, 31.271107, 36.984398>,  <33.109692, 30.709249, 36.571167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945572, 31.271107, 36.984398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342079, 31.266537, 36.931854>,  <33.579983, 31.263794, 36.900326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342079, 31.266537, 36.931854>,  <32.945572, 31.271107, 36.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342079, 31.266537, 36.931854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017870, 0.975409, -0.219677,
		0.130640, 0.220107, 0.966688,
		0.991269, -0.011424, -0.131361,
		33.639462, 31.263109, 36.892445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373463, 31.760042, 37.501957>,  <32.945572, 31.271107, 36.984398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373463, 31.760042, 37.501957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524200, 31.705242, 37.135521>,  <33.614643, 31.672363, 36.915661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524200, 31.705242, 37.135521>,  <33.373463, 31.760042, 37.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524200, 31.705242, 37.135521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024695, 0.987164, -0.157786,
		0.925947, 0.082083, 0.368623,
		0.376844, -0.136999, -0.916090,
		33.637253, 31.664143, 36.860695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032501, 31.345577, 37.507622>,  <33.373463, 31.760042, 37.501957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032501, 31.345577, 37.507622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978928, 30.958727, 37.421158>,  <33.946785, 30.726616, 37.369278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978928, 30.958727, 37.421158>,  <34.032501, 31.345577, 37.507622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978928, 30.958727, 37.421158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525827, -0.115531, 0.842709,
		-0.839981, 0.226532, -0.493068,
		-0.133935, -0.967128, -0.216160,
		33.938747, 30.668589, 37.356308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577339, 31.862049, 37.337143>,  <34.032501, 31.345577, 37.507622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577339, 31.862049, 37.337143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763130, 31.702236, 37.653278>,  <34.874603, 31.606348, 37.842960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763130, 31.702236, 37.653278>,  <34.577339, 31.862049, 37.337143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763130, 31.702236, 37.653278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379256, 0.896208, 0.230166,
		-0.800267, 0.192834, 0.567793,
		0.464477, -0.399532, 0.790339,
		34.902473, 31.582376, 37.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796974, 32.458458, 37.628159>,  <34.577339, 31.862049, 37.337143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796974, 32.458458, 37.628159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957176, 32.178513, 37.864731>,  <35.053299, 32.010548, 38.006672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957176, 32.178513, 37.864731>,  <34.796974, 32.458458, 37.628159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957176, 32.178513, 37.864731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566740, 0.696391, 0.440278,
		-0.719999, 0.158851, 0.675550,
		0.400508, -0.699862, 0.591428,
		35.077328, 31.968554, 38.042160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824734, 32.811852, 38.249832>,  <34.796974, 32.458458, 37.628159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824734, 32.811852, 38.249832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071339, 32.496998, 38.242584>,  <35.219303, 32.308086, 38.238235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071339, 32.496998, 38.242584>,  <34.824734, 32.811852, 38.249832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071339, 32.496998, 38.242584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710369, 0.546165, 0.443937,
		-0.339541, -0.286566, 0.895875,
		0.616513, -0.787136, -0.018122,
		35.256294, 32.260857, 38.237148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277172, 32.921234, 38.901566>,  <34.824734, 32.811852, 38.249832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277172, 32.921234, 38.901566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474880, 32.683212, 38.648075>,  <35.593506, 32.540401, 38.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474880, 32.683212, 38.648075>,  <35.277172, 32.921234, 38.901566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474880, 32.683212, 38.648075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869076, 0.355148, 0.344348,
		0.020163, -0.720960, 0.692683,
		0.494267, -0.595051, -0.633730,
		35.623161, 32.504696, 38.457954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773186, 32.670387, 39.225254>,  <35.277172, 32.921234, 38.901566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773186, 32.670387, 39.225254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909149, 32.603012, 38.855152>,  <35.990726, 32.562588, 38.633091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909149, 32.603012, 38.855152>,  <35.773186, 32.670387, 39.225254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909149, 32.603012, 38.855152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914656, 0.288083, 0.283572,
		0.218786, -0.942676, 0.251980,
		0.339908, -0.168434, -0.925253,
		36.011120, 32.552483, 38.577576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380955, 32.152840, 39.186554>,  <35.773186, 32.670387, 39.225254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380955, 32.152840, 39.186554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407421, 32.404419, 38.876701>,  <36.423302, 32.555367, 38.690792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407421, 32.404419, 38.876701>,  <36.380955, 32.152840, 39.186554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407421, 32.404419, 38.876701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913251, 0.274588, 0.300954,
		0.401987, -0.727342, -0.556219,
		0.066166, 0.628948, -0.774627,
		36.427269, 32.593102, 38.644314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015457, 32.067348, 38.864491>,  <36.380955, 32.152840, 39.186554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015457, 32.067348, 38.864491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883869, 32.439335, 38.798836>,  <36.804916, 32.662525, 38.759445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883869, 32.439335, 38.798836>,  <37.015457, 32.067348, 38.864491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883869, 32.439335, 38.798836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916233, 0.356412, 0.182995,
		0.228679, -0.090184, -0.969316,
		-0.328972, 0.929966, -0.164133,
		36.785179, 32.718327, 38.749596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440395, 32.280991, 38.389927>,  <37.015457, 32.067348, 38.864491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440395, 32.280991, 38.389927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307831, 32.604782, 38.583797>,  <37.228291, 32.799057, 38.700119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307831, 32.604782, 38.583797>,  <37.440395, 32.280991, 38.389927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307831, 32.604782, 38.583797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897550, 0.428837, -0.102484,
		-0.290806, 0.401058, -0.868668,
		-0.331415, 0.809476, 0.484677,
		37.208405, 32.847626, 38.729202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377846, 32.893414, 38.077599>,  <37.440395, 32.280991, 38.389927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377846, 32.893414, 38.077599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489670, 33.009846, 38.443577>,  <37.556767, 33.079704, 38.663162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489670, 33.009846, 38.443577>,  <37.377846, 32.893414, 38.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489670, 33.009846, 38.443577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891844, 0.274219, -0.359746,
		-0.355609, 0.916557, -0.182934,
		0.279564, 0.291077, 0.914941,
		37.573540, 33.097168, 38.718060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683357, 33.401234, 37.864143>,  <37.377846, 32.893414, 38.077599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683357, 33.401234, 37.864143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864735, 33.280445, 38.199574>,  <37.973560, 33.207973, 38.400829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864735, 33.280445, 38.199574>,  <37.683357, 33.401234, 37.864143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864735, 33.280445, 38.199574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891265, 0.147761, -0.428734,
		0.005555, 0.941797, 0.336135,
		0.453448, -0.301968, 0.838571,
		38.000771, 33.189854, 38.451145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413826, 33.554642, 37.665203>,  <37.683357, 33.401234, 37.864143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413826, 33.554642, 37.665203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438004, 33.371841, 38.020168>,  <38.452511, 33.262161, 38.233147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438004, 33.371841, 38.020168>,  <38.413826, 33.554642, 37.665203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438004, 33.371841, 38.020168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998102, 0.038181, -0.048318,
		-0.011801, 0.888648, 0.458439,
		0.060442, -0.456999, 0.887411,
		38.456135, 33.234741, 38.286392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852722, 33.921688, 38.328053>,  <38.413826, 33.554642, 37.665203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852722, 33.921688, 38.328053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839355, 33.523304, 38.294716>,  <38.831337, 33.284275, 38.274712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839355, 33.523304, 38.294716>,  <38.852722, 33.921688, 38.328053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839355, 33.523304, 38.294716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975161, -0.014220, -0.221040,
		0.218962, -0.088659, 0.971697,
		-0.033415, -0.995960, -0.083343,
		38.829330, 33.224514, 38.269714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305260, 33.583141, 38.778095>,  <38.852722, 33.921688, 38.328053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305260, 33.583141, 38.778095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254524, 33.324680, 38.477058>,  <39.224083, 33.169601, 38.296436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254524, 33.324680, 38.477058>,  <39.305260, 33.583141, 38.778095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254524, 33.324680, 38.477058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988421, -0.018624, -0.150590,
		0.083288, -0.762979, 0.641035,
		-0.126836, -0.646154, -0.752594,
		39.216473, 33.130833, 38.251282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864628, 33.152977, 38.747917>,  <39.305260, 33.583141, 38.778095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864628, 33.152977, 38.747917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730480, 33.128002, 38.371910>,  <39.649990, 33.113018, 38.146305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730480, 33.128002, 38.371910>,  <39.864628, 33.152977, 38.747917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730480, 33.128002, 38.371910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909861, 0.237272, -0.340375,
		0.244291, -0.969435, -0.022767,
		-0.335373, -0.062435, -0.940014,
		39.629868, 33.109272, 38.089905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234810, 32.663860, 38.383617>,  <39.864628, 33.152977, 38.747917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234810, 32.663860, 38.383617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099323, 32.925106, 38.112705>,  <40.018032, 33.081856, 37.950157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099323, 32.925106, 38.112705>,  <40.234810, 32.663860, 38.383617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099323, 32.925106, 38.112705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930568, 0.126216, -0.343677,
		-0.138978, -0.746664, -0.650521,
		-0.338717, 0.653118, -0.677280,
		39.997707, 33.121040, 37.909523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527691, 32.549976, 37.804749>,  <40.234810, 32.663860, 38.383617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527691, 32.549976, 37.804749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457233, 32.935982, 37.882431>,  <40.414959, 33.167587, 37.929039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457233, 32.935982, 37.882431>,  <40.527691, 32.549976, 37.804749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457233, 32.935982, 37.882431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956672, 0.214287, -0.197127,
		-0.231847, 0.151070, -0.960950,
		-0.176139, 0.965018, 0.194207,
		40.404392, 33.225487, 37.940693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707951, 33.037071, 37.185680>,  <40.527691, 32.549976, 37.804749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707951, 33.037071, 37.185680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750870, 33.179726, 37.556904>,  <40.776623, 33.265316, 37.779640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750870, 33.179726, 37.556904>,  <40.707951, 33.037071, 37.185680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750870, 33.179726, 37.556904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983640, 0.097780, -0.151300,
		-0.144705, 0.929113, -0.340307,
		0.107300, 0.356633, 0.928062,
		40.783058, 33.286716, 37.835323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962006, 33.724121, 37.115993>,  <40.707951, 33.037071, 37.185680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962006, 33.724121, 37.115993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083336, 33.519978, 37.437870>,  <41.156132, 33.397491, 37.630997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083336, 33.519978, 37.437870>,  <40.962006, 33.724121, 37.115993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083336, 33.519978, 37.437870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938186, 0.307724, -0.158473,
		-0.166746, 0.803019, 0.572150,
		0.303321, -0.510358, 0.804693,
		41.174332, 33.366871, 37.679279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364048, 34.081444, 37.760792>,  <40.962006, 33.724121, 37.115993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364048, 34.081444, 37.760792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498585, 33.705009, 37.774830>,  <41.579308, 33.479149, 37.783253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498585, 33.705009, 37.774830>,  <41.364048, 34.081444, 37.760792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498585, 33.705009, 37.774830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940759, 0.334052, -0.058151,
		0.043002, 0.052571, 0.997691,
		0.336338, -0.941087, 0.035092,
		41.599487, 33.422684, 37.785358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882095, 34.078190, 38.139072>,  <41.364048, 34.081444, 37.760792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882095, 34.078190, 38.139072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919228, 33.744118, 37.922237>,  <41.941509, 33.543674, 37.792137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919228, 33.744118, 37.922237>,  <41.882095, 34.078190, 38.139072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919228, 33.744118, 37.922237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990432, 0.133292, -0.035745,
		0.102109, -0.533579, 0.839564,
		0.092835, -0.835181, -0.542084,
		41.947079, 33.493565, 37.759613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932102, 34.694420, 38.523521>,  <41.882095, 34.078190, 38.139072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932102, 34.694420, 38.523521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297958, 34.578110, 38.635860>,  <42.517471, 34.508324, 38.703262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297958, 34.578110, 38.635860>,  <41.932102, 34.694420, 38.523521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297958, 34.578110, 38.635860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349822, 0.221106, -0.910350,
		0.202612, 0.930892, 0.303953,
		0.914644, -0.290777, 0.280848,
		42.572353, 34.490875, 38.720116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499073, 35.089542, 38.195198>,  <41.932102, 34.694420, 38.523521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499073, 35.089542, 38.195198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642372, 34.723347, 38.268459>,  <42.728352, 34.503632, 38.312416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642372, 34.723347, 38.268459>,  <42.499073, 35.089542, 38.195198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642372, 34.723347, 38.268459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349431, -0.050438, -0.935604,
		0.865769, 0.399178, 0.301829,
		0.358249, -0.915485, 0.183152,
		42.749847, 34.448700, 38.323406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155262, 35.072746, 37.840675>,  <42.499073, 35.089542, 38.195198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155262, 35.072746, 37.840675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994743, 34.709694, 37.889938>,  <42.898434, 34.491863, 37.919498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994743, 34.709694, 37.889938>,  <43.155262, 35.072746, 37.840675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994743, 34.709694, 37.889938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259774, -0.241721, -0.934927,
		0.878338, -0.343189, 0.332781,
		-0.401297, -0.907630, 0.123161,
		42.874355, 34.437405, 37.926888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642677, 34.546654, 37.721401>,  <43.155262, 35.072746, 37.840675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642677, 34.546654, 37.721401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305683, 34.345184, 37.644951>,  <43.103485, 34.224300, 37.599083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305683, 34.345184, 37.644951>,  <43.642677, 34.546654, 37.721401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305683, 34.345184, 37.644951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368367, -0.279737, -0.886596,
		0.393094, -0.817348, 0.421212,
		-0.842486, -0.503676, -0.191121,
		43.052937, 34.194080, 37.587616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212185, 34.357727, 37.277157>,  <43.642677, 34.546654, 37.721401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212185, 34.357727, 37.277157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580727, 34.432354, 37.413567>,  <44.801853, 34.477131, 37.495411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580727, 34.432354, 37.413567>,  <44.212185, 34.357727, 37.277157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580727, 34.432354, 37.413567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388720, -0.438241, -0.810458,
		-0.001758, 0.879281, -0.476299,
		0.921354, 0.186572, 0.341024,
		44.857132, 34.488327, 37.515873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571976, 34.691185, 36.751534>,  <44.212185, 34.357727, 37.277157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571976, 34.691185, 36.751534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825596, 34.500988, 36.995464>,  <44.977768, 34.386871, 37.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825596, 34.500988, 36.995464>,  <44.571976, 34.691185, 36.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825596, 34.500988, 36.995464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328368, -0.548433, -0.769023,
		0.700113, 0.687846, -0.191598,
		0.634048, -0.475488, 0.609832,
		45.015812, 34.358341, 37.178413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106983, 34.512745, 36.369385>,  <44.571976, 34.691185, 36.751534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106983, 34.512745, 36.369385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190590, 34.291447, 36.691933>,  <45.240753, 34.158669, 36.885460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190590, 34.291447, 36.691933>,  <45.106983, 34.512745, 36.369385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190590, 34.291447, 36.691933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307365, -0.745628, -0.591241,
		0.928353, 0.371430, 0.014199,
		0.209017, -0.553244, 0.806370,
		45.253296, 34.125473, 36.933846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899483, 34.442215, 36.607224>,  <45.106983, 34.512745, 36.369385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899483, 34.442215, 36.607224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620113, 34.156120, 36.617317>,  <45.452492, 33.984463, 36.623371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620113, 34.156120, 36.617317>,  <45.899483, 34.442215, 36.607224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620113, 34.156120, 36.617317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276721, -0.302395, -0.912131,
		0.660019, -0.630075, 0.409122,
		-0.698427, -0.715236, 0.025232,
		45.410583, 33.941551, 36.624886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151592, 33.749203, 36.701408>,  <45.899483, 34.442215, 36.607224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151592, 33.749203, 36.701408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825466, 33.730839, 36.470528>,  <45.629791, 33.719822, 36.332001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825466, 33.730839, 36.470528>,  <46.151592, 33.749203, 36.701408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825466, 33.730839, 36.470528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546917, -0.388389, -0.741644,
		-0.190128, -0.920351, 0.341768,
		-0.815312, -0.045911, -0.577199,
		45.580872, 33.717064, 36.297367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131588, 33.098289, 36.317932>,  <46.151592, 33.749203, 36.701408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131588, 33.098289, 36.317932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962521, 33.386002, 36.097393>,  <45.861080, 33.558628, 35.965069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962521, 33.386002, 36.097393>,  <46.131588, 33.098289, 36.317932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962521, 33.386002, 36.097393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539954, -0.288739, -0.790619,
		-0.727875, -0.631871, -0.266340,
		-0.422667, 0.719283, -0.551348,
		45.835720, 33.601788, 35.931988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713638, 33.142159, 35.907959>,  <46.131588, 33.098289, 36.317932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713638, 33.142159, 35.907959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079491, 33.199352, 35.756699>,  <47.299004, 33.233669, 35.665943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079491, 33.199352, 35.756699>,  <46.713638, 33.142159, 35.907959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079491, 33.199352, 35.756699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101684, 0.986660, 0.127129,
		0.391282, -0.077824, 0.916974,
		0.914635, 0.142985, -0.378149,
		47.353882, 33.242249, 35.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008286, 33.595551, 36.402687>,  <46.713638, 33.142159, 35.907959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008286, 33.595551, 36.402687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121853, 33.602520, 36.019211>,  <47.189995, 33.606701, 35.789127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121853, 33.602520, 36.019211>,  <47.008286, 33.595551, 36.402687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121853, 33.602520, 36.019211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189886, 0.981055, -0.038402,
		0.939857, 0.192945, 0.281853,
		0.283923, 0.017427, -0.958689,
		47.207031, 33.607750, 35.731606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360126, 34.120815, 36.432308>,  <47.008286, 33.595551, 36.402687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360126, 34.120815, 36.432308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177582, 34.081657, 36.078552>,  <47.068054, 34.058163, 35.866299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177582, 34.081657, 36.078552>,  <47.360126, 34.120815, 36.432308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177582, 34.081657, 36.078552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177953, 0.983891, -0.017081,
		0.871820, 0.149586, -0.466428,
		-0.456359, -0.097894, -0.884394,
		47.040672, 34.052288, 35.813232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644970, 34.606354, 35.993366>,  <47.360126, 34.120815, 36.432308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644970, 34.606354, 35.993366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265053, 34.564911, 35.875271>,  <47.037102, 34.540047, 35.804413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.265053, 34.564911, 35.875271>,  <47.644970, 34.606354, 35.993366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.265053, 34.564911, 35.875271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078917, 0.992403, -0.094383,
		0.302771, -0.066345, -0.950751,
		-0.949790, -0.103607, -0.295235,
		46.980114, 34.533829, 35.786701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.590271, 34.581760, 35.232483>,  <47.644970, 34.606354, 35.993366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.590271, 34.581760, 35.232483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673061, 34.871056, 34.968941>,  <47.722736, 35.044632, 34.810814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673061, 34.871056, 34.968941>,  <47.590271, 34.581760, 35.232483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673061, 34.871056, 34.968941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970171, -0.064855, 0.233587,
		0.126208, -0.687549, -0.715086,
		0.206979, 0.723236, -0.658855,
		47.735157, 35.088028, 34.771286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.297195, 30.025028, 23.523188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973785, 30.229115, 23.405907>,  <37.779739, 30.351566, 23.335537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973785, 30.229115, 23.405907>,  <38.297195, 30.025028, 23.523188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973785, 30.229115, 23.405907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427120, -0.166072, 0.888813,
		0.404795, 0.843859, 0.352197,
		-0.808523, 0.510217, -0.293204,
		37.731228, 30.382179, 23.317945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143318, 30.540520, 24.009859>,  <38.297195, 30.025028, 23.523188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143318, 30.540520, 24.009859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781464, 30.489819, 23.847097>,  <37.564350, 30.459398, 23.749441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781464, 30.489819, 23.847097>,  <38.143318, 30.540520, 24.009859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781464, 30.489819, 23.847097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366901, -0.254153, 0.894869,
		-0.216842, 0.958822, 0.183411,
		-0.904635, -0.126751, -0.406903,
		37.510075, 30.451794, 23.725027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678547, 30.899445, 24.403751>,  <38.143318, 30.540520, 24.009859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678547, 30.899445, 24.403751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435673, 30.645681, 24.212399>,  <37.289948, 30.493423, 24.097586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435673, 30.645681, 24.212399>,  <37.678547, 30.899445, 24.403751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435673, 30.645681, 24.212399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515109, -0.144119, 0.844921,
		-0.604971, 0.759443, -0.239284,
		-0.607185, -0.634410, -0.478384,
		37.253517, 30.455359, 24.068884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962952, 31.079739, 24.587706>,  <37.678547, 30.899445, 24.403751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962952, 31.079739, 24.587706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929943, 30.704964, 24.451859>,  <36.910137, 30.480099, 24.370350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929943, 30.704964, 24.451859>,  <36.962952, 31.079739, 24.587706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929943, 30.704964, 24.451859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682958, -0.195009, 0.703946,
		-0.725781, 0.290037, -0.623795,
		-0.082525, -0.936936, -0.339617,
		36.905186, 30.423883, 24.349974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343819, 30.904369, 24.804760>,  <36.962952, 31.079739, 24.587706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343819, 30.904369, 24.804760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538628, 30.563414, 24.728613>,  <36.655514, 30.358841, 24.682924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538628, 30.563414, 24.728613>,  <36.343819, 30.904369, 24.804760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538628, 30.563414, 24.728613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452049, -0.432513, 0.780118,
		-0.747300, -0.293882, -0.595967,
		0.487027, -0.852388, -0.190368,
		36.684734, 30.307697, 24.671503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833305, 30.462900, 24.890301>,  <36.343819, 30.904369, 24.804760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833305, 30.462900, 24.890301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180122, 30.264898, 24.912935>,  <36.388214, 30.146097, 24.926516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180122, 30.264898, 24.912935>,  <35.833305, 30.462900, 24.890301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180122, 30.264898, 24.912935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379220, -0.582009, 0.719345,
		-0.323147, -0.645163, -0.692344,
		0.867045, -0.495005, 0.056585,
		36.440235, 30.116396, 24.929911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795444, 29.669716, 24.849344>,  <35.833305, 30.462900, 24.890301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795444, 29.669716, 24.849344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143681, 29.715988, 25.040630>,  <36.352623, 29.743752, 25.155401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143681, 29.715988, 25.040630>,  <35.795444, 29.669716, 24.849344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143681, 29.715988, 25.040630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356401, -0.521800, 0.775051,
		0.339191, -0.845188, -0.413046,
		0.870591, 0.115681, 0.478216,
		36.404858, 29.750692, 25.184095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816246, 29.014547, 25.289156>,  <35.795444, 29.669716, 24.849344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816246, 29.014547, 25.289156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.085178, 29.280792, 25.418726>,  <36.246536, 29.440540, 25.496468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.085178, 29.280792, 25.418726>,  <35.816246, 29.014547, 25.289156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085178, 29.280792, 25.418726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235052, -0.222985, 0.946059,
		0.701942, -0.712204, 0.006534,
		0.672331, 0.665615, 0.323927,
		36.286877, 29.480476, 25.515903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054111, 28.660269, 26.001324>,  <35.816246, 29.014547, 25.289156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054111, 28.660269, 26.001324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180424, 29.039444, 26.017771>,  <36.256210, 29.266949, 26.027639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.180424, 29.039444, 26.017771>,  <36.054111, 28.660269, 26.001324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180424, 29.039444, 26.017771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041052, -0.029647, 0.998717,
		0.947943, -0.317065, 0.029553,
		0.315782, 0.947940, 0.041120,
		36.275158, 29.323826, 26.030107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535347, 28.706263, 26.528070>,  <36.054111, 28.660269, 26.001324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535347, 28.706263, 26.528070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382679, 29.070967, 26.467377>,  <36.291080, 29.289789, 26.430962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382679, 29.070967, 26.467377>,  <36.535347, 28.706263, 26.528070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382679, 29.070967, 26.467377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093473, 0.125244, 0.987713,
		0.919562, 0.391160, 0.037424,
		-0.381666, 0.911761, -0.151732,
		36.268181, 29.344496, 26.421858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978561, 29.265545, 26.711330>,  <36.535347, 28.706263, 26.528070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978561, 29.265545, 26.711330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601871, 29.398443, 26.732363>,  <36.375858, 29.478182, 26.744982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601871, 29.398443, 26.732363>,  <36.978561, 29.265545, 26.711330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601871, 29.398443, 26.732363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150850, 0.277411, 0.948835,
		0.300657, 0.901475, -0.311365,
		-0.941727, 0.332244, 0.052582,
		36.319355, 29.498116, 26.748137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042831, 29.796869, 27.032354>,  <36.978561, 29.265545, 26.711330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042831, 29.796869, 27.032354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645863, 29.763624, 27.068550>,  <36.407681, 29.743677, 27.090267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645863, 29.763624, 27.068550>,  <37.042831, 29.796869, 27.032354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645863, 29.763624, 27.068550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077779, 0.145136, 0.986350,
		-0.095112, 0.985914, -0.137572,
		-0.992423, -0.083114, 0.090488,
		36.348137, 29.738689, 27.095695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860664, 30.446745, 27.337286>,  <37.042831, 29.796869, 27.032354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860664, 30.446745, 27.337286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558807, 30.193699, 27.406935>,  <36.377693, 30.041872, 27.448725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.558807, 30.193699, 27.406935>,  <36.860664, 30.446745, 27.337286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558807, 30.193699, 27.406935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015070, 0.282017, 0.959291,
		-0.655966, 0.721295, -0.222355,
		-0.754640, -0.632613, 0.174124,
		36.332417, 30.003916, 27.459171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384769, 30.726379, 27.724030>,  <36.860664, 30.446745, 27.337286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384769, 30.726379, 27.724030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264725, 30.355656, 27.814323>,  <36.192696, 30.133221, 27.868500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264725, 30.355656, 27.814323>,  <36.384769, 30.726379, 27.724030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264725, 30.355656, 27.814323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140522, 0.277018, 0.950534,
		-0.943496, 0.253549, -0.213374,
		-0.300115, -0.926809, 0.225736,
		36.174690, 30.077614, 27.882044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845390, 30.802841, 28.257898>,  <36.384769, 30.726379, 27.724030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845390, 30.802841, 28.257898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.989170, 30.431484, 28.295595>,  <36.075439, 30.208670, 28.318213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.989170, 30.431484, 28.295595>,  <35.845390, 30.802841, 28.257898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989170, 30.431484, 28.295595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002471, 0.101939, 0.994787,
		-0.933161, -0.357343, 0.038936,
		0.359449, -0.928393, 0.094243,
		36.097004, 30.152966, 28.323868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417366, 30.524973, 28.730083>,  <35.845390, 30.802841, 28.257898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417366, 30.524973, 28.730083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740925, 30.289896, 28.737150>,  <35.935059, 30.148849, 28.741390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740925, 30.289896, 28.737150>,  <35.417366, 30.524973, 28.730083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740925, 30.289896, 28.737150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043335, -0.029630, 0.998621,
		-0.586358, -0.808543, -0.049435,
		0.808892, -0.587691, 0.017665,
		35.983593, 30.113588, 28.742449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351833, 30.175804, 29.313545>,  <35.417366, 30.524973, 28.730083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351833, 30.175804, 29.313545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731823, 30.084957, 29.227791>,  <35.959816, 30.030449, 29.176338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731823, 30.084957, 29.227791>,  <35.351833, 30.175804, 29.313545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731823, 30.084957, 29.227791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192843, -0.113393, 0.974656,
		-0.245673, -0.967243, -0.063922,
		0.949977, -0.227120, -0.214384,
		36.016815, 30.016821, 29.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356953, 29.575830, 29.579897>,  <35.351833, 30.175804, 29.313545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356953, 29.575830, 29.579897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726830, 29.728085, 29.577013>,  <35.948757, 29.819437, 29.575283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726830, 29.728085, 29.577013>,  <35.356953, 29.575830, 29.579897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726830, 29.728085, 29.577013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060462, -0.128129, 0.989913,
		0.375873, -0.915805, -0.141494,
		0.924697, 0.380637, -0.007211,
		36.004238, 29.842276, 29.574850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825417, 29.068573, 29.929211>,  <35.356953, 29.575830, 29.579897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825417, 29.068573, 29.929211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049683, 29.399441, 29.944443>,  <36.184242, 29.597961, 29.953581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049683, 29.399441, 29.944443>,  <35.825417, 29.068573, 29.929211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049683, 29.399441, 29.944443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116870, -0.124575, 0.985303,
		0.819755, -0.547972, -0.166515,
		0.560663, 0.827168, 0.038079,
		36.217880, 29.647591, 29.955866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398560, 28.872511, 30.282124>,  <35.825417, 29.068573, 29.929211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398560, 28.872511, 30.282124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401897, 29.269838, 30.328171>,  <36.403900, 29.508234, 30.355799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401897, 29.269838, 30.328171>,  <36.398560, 28.872511, 30.282124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401897, 29.269838, 30.328171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178472, -0.114755, 0.977230,
		0.983910, 0.012389, -0.178237,
		0.008346, 0.993317, 0.115120,
		36.404400, 29.567833, 30.362707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889290, 28.933388, 30.673376>,  <36.398560, 28.872511, 30.282124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889290, 28.933388, 30.673376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692524, 29.277822, 30.724829>,  <36.574463, 29.484484, 30.755701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692524, 29.277822, 30.724829>,  <36.889290, 28.933388, 30.673376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692524, 29.277822, 30.724829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168455, -0.050818, 0.984398,
		0.854189, 0.505913, -0.120057,
		-0.491919, 0.861087, 0.128632,
		36.544949, 29.536148, 30.763418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189743, 28.518246, 31.143553>,  <36.889290, 28.933388, 30.673376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189743, 28.518246, 31.143553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859585, 28.336916, 31.278147>,  <36.661491, 28.228119, 31.358904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859585, 28.336916, 31.278147>,  <37.189743, 28.518246, 31.143553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859585, 28.336916, 31.278147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334659, -0.087134, -0.938302,
		0.454673, -0.887077, -0.079789,
		-0.825395, -0.453323, 0.336486,
		36.611965, 28.200918, 31.379093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504864, 28.763010, 31.400944>,  <37.189743, 28.518246, 31.143553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504864, 28.763010, 31.400944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857685, 28.668110, 31.563765>,  <37.069378, 28.611170, 31.661457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857685, 28.668110, 31.563765>,  <36.504864, 28.763010, 31.400944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857685, 28.668110, 31.563765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463424, 0.592686, -0.658757,
		-0.084965, 0.769698, 0.632729,
		0.882054, -0.237251, 0.407054,
		37.122303, 28.596935, 31.685881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894005, 29.392303, 31.479744>,  <36.504864, 28.763010, 31.400944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894005, 29.392303, 31.479744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203178, 29.139305, 31.499842>,  <37.388683, 28.987505, 31.511900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203178, 29.139305, 31.499842>,  <36.894005, 29.392303, 31.479744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203178, 29.139305, 31.499842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478852, 0.529550, -0.700198,
		0.416267, 0.565265, 0.712178,
		0.772931, -0.632497, 0.050244,
		37.435059, 28.949556, 31.514915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379326, 29.811361, 31.257729>,  <36.894005, 29.392303, 31.479744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379326, 29.811361, 31.257729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570530, 29.460058, 31.263023>,  <37.685253, 29.249277, 31.266199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570530, 29.460058, 31.263023>,  <37.379326, 29.811361, 31.257729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570530, 29.460058, 31.263023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639018, 0.337381, -0.691253,
		0.602632, 0.338882, 0.722492,
		0.478008, -0.878256, 0.013235,
		37.713932, 29.196581, 31.266994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115688, 29.918440, 31.229698>,  <37.379326, 29.811361, 31.257729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115688, 29.918440, 31.229698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104565, 29.545244, 31.086168>,  <38.097893, 29.321327, 31.000051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104565, 29.545244, 31.086168>,  <38.115688, 29.918440, 31.229698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104565, 29.545244, 31.086168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753174, 0.216459, -0.621188,
		0.657233, -0.287528, 0.696686,
		-0.027805, -0.932991, -0.358823,
		38.096222, 29.265347, 30.978521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827656, 29.676573, 31.165138>,  <38.115688, 29.918440, 31.229698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827656, 29.676573, 31.165138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622707, 29.449343, 30.907530>,  <38.499737, 29.313005, 30.752964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622707, 29.449343, 30.907530>,  <38.827656, 29.676573, 31.165138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622707, 29.449343, 30.907530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643140, 0.243125, -0.726128,
		0.569072, -0.786246, 0.240779,
		-0.512376, -0.568074, -0.644022,
		38.468994, 29.278921, 30.714323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277172, 29.131500, 30.789152>,  <38.827656, 29.676573, 31.165138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277172, 29.131500, 30.789152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951836, 29.187534, 30.563282>,  <38.756634, 29.221155, 30.427761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951836, 29.187534, 30.563282>,  <39.277172, 29.131500, 30.789152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951836, 29.187534, 30.563282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580845, 0.140221, -0.801846,
		-0.033149, -0.980160, -0.195416,
		-0.813339, 0.140087, -0.564673,
		38.707832, 29.229561, 30.393881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326698, 28.687891, 30.223576>,  <39.277172, 29.131500, 30.789152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326698, 28.687891, 30.223576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089363, 28.981899, 30.092304>,  <38.946964, 29.158304, 30.013542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089363, 28.981899, 30.092304>,  <39.326698, 28.687891, 30.223576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089363, 28.981899, 30.092304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447020, -0.038181, -0.893709,
		-0.669424, -0.676969, -0.305914,
		-0.593333, 0.735020, -0.328178,
		38.911362, 29.202406, 29.993851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143887, 28.616589, 29.448656>,  <39.326698, 28.687891, 30.223576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143887, 28.616589, 29.448656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021141, 28.993895, 29.499386>,  <38.947495, 29.220278, 29.529823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021141, 28.993895, 29.499386>,  <39.143887, 28.616589, 29.448656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021141, 28.993895, 29.499386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399817, 0.248682, -0.882215,
		-0.863703, -0.220013, -0.453445,
		-0.306862, 0.943267, 0.126822,
		38.929081, 29.276875, 29.537432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857246, 28.830353, 28.703415>,  <39.143887, 28.616589, 29.448656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857246, 28.830353, 28.703415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938110, 29.154984, 28.922676>,  <38.986629, 29.349762, 29.054234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938110, 29.154984, 28.922676>,  <38.857246, 28.830353, 28.703415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938110, 29.154984, 28.922676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502984, 0.394210, -0.769159,
		-0.840319, 0.431209, -0.328516,
		0.202164, 0.811577, 0.548153,
		38.998760, 29.398457, 29.087122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539627, 29.311045, 28.274595>,  <38.857246, 28.830353, 28.703415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539627, 29.311045, 28.274595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811924, 29.480577, 28.513578>,  <38.975304, 29.582296, 28.656967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811924, 29.480577, 28.513578>,  <38.539627, 29.311045, 28.274595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811924, 29.480577, 28.513578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394862, 0.474658, -0.786628,
		-0.616985, 0.771406, 0.155766,
		0.680745, 0.423831, 0.597456,
		39.016148, 29.607727, 28.692816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521362, 30.053972, 28.197620>,  <38.539627, 29.311045, 28.274595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521362, 30.053972, 28.197620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882740, 29.935951, 28.322029>,  <39.099567, 29.865139, 28.396675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882740, 29.935951, 28.322029>,  <38.521362, 30.053972, 28.197620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882740, 29.935951, 28.322029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406577, 0.359598, -0.839872,
		0.135965, 0.885230, 0.444838,
		0.903443, -0.295054, 0.311021,
		39.153774, 29.847435, 28.415335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893997, 30.489098, 27.819178>,  <38.521362, 30.053972, 28.197620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893997, 30.489098, 27.819178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183960, 30.240103, 27.937174>,  <39.357937, 30.090706, 28.007973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.183960, 30.240103, 27.937174>,  <38.893997, 30.489098, 27.819178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183960, 30.240103, 27.937174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446074, 0.097881, -0.889628,
		0.524907, 0.776486, 0.348630,
		0.724907, -0.622487, 0.294992,
		39.401432, 30.053356, 28.025671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544704, 30.791668, 27.917286>,  <38.893997, 30.489098, 27.819178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544704, 30.791668, 27.917286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611069, 30.409935, 27.817911>,  <39.650887, 30.180895, 27.758286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611069, 30.409935, 27.817911>,  <39.544704, 30.791668, 27.917286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611069, 30.409935, 27.817911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184429, 0.277512, -0.942853,
		0.968741, 0.110613, 0.222050,
		0.165913, -0.954333, -0.248437,
		39.660843, 30.123634, 27.743380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108700, 30.942514, 27.499687>,  <39.544704, 30.791668, 27.917286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108700, 30.942514, 27.499687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.019096, 30.559423, 27.427486>,  <39.965332, 30.329569, 27.384167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.019096, 30.559423, 27.427486>,  <40.108700, 30.942514, 27.499687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019096, 30.559423, 27.427486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104406, 0.160561, -0.981488,
		0.968978, -0.238709, 0.064025,
		-0.224010, -0.957726, -0.180502,
		39.951893, 30.272106, 27.373335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619923, 30.691790, 27.067759>,  <40.108700, 30.942514, 27.499687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619923, 30.691790, 27.067759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.320892, 30.434328, 27.002230>,  <40.141476, 30.279850, 26.962912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.320892, 30.434328, 27.002230>,  <40.619923, 30.691790, 27.067759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320892, 30.434328, 27.002230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194949, 0.023144, -0.980540,
		0.634923, -0.764965, 0.108178,
		-0.747575, -0.643656, -0.163824,
		40.096619, 30.241232, 26.953083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851521, 30.105225, 26.661055>,  <40.619923, 30.691790, 27.067759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851521, 30.105225, 26.661055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456013, 30.077681, 26.608009>,  <40.218708, 30.061153, 26.576183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456013, 30.077681, 26.608009>,  <40.851521, 30.105225, 26.661055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456013, 30.077681, 26.608009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133658, -0.010794, -0.990969,
		0.066809, -0.997568, 0.019876,
		-0.988773, -0.068863, -0.132612,
		40.159382, 30.057022, 26.568226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788849, 29.571833, 26.243685>,  <40.851521, 30.105225, 26.661055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788849, 29.571833, 26.243685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453800, 29.787659, 26.209618>,  <40.252769, 29.917154, 26.189177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453800, 29.787659, 26.209618>,  <40.788849, 29.571833, 26.243685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453800, 29.787659, 26.209618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082919, -0.028513, -0.996148,
		-0.539914, -0.841462, -0.020857,
		-0.837626, 0.539564, -0.085168,
		40.202511, 29.949528, 26.184067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281002, 29.228535, 25.655085>,  <40.788849, 29.571833, 26.243685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281002, 29.228535, 25.655085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.155689, 29.607323, 25.683649>,  <40.080502, 29.834597, 25.700788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.155689, 29.607323, 25.683649>,  <40.281002, 29.228535, 25.655085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155689, 29.607323, 25.683649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020179, 0.081819, -0.996443,
		-0.949446, -0.310727, -0.044741,
		-0.313283, 0.946971, 0.071412,
		40.061703, 29.891415, 25.705072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.654430, 29.394382, 24.970282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792133, 29.724611, 25.149132>,  <39.874756, 29.922749, 25.256441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792133, 29.724611, 25.149132>,  <39.654430, 29.394382, 24.970282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792133, 29.724611, 25.149132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150817, 0.421424, -0.894235,
		-0.926684, 0.375279, 0.020568,
		0.344255, 0.825571, 0.447125,
		39.895409, 29.972282, 25.283270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271305, 29.877697, 24.588341>,  <39.654430, 29.394382, 24.970282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271305, 29.877697, 24.588341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604446, 30.031437, 24.747652>,  <39.804333, 30.123682, 24.843239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604446, 30.031437, 24.747652>,  <39.271305, 29.877697, 24.588341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604446, 30.031437, 24.747652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146656, 0.540614, -0.828389,
		-0.533708, 0.748338, 0.393885,
		0.832855, 0.384352, 0.398278,
		39.854301, 30.146742, 24.867136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194050, 30.532146, 24.437792>,  <39.271305, 29.877697, 24.588341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194050, 30.532146, 24.437792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583160, 30.468290, 24.504993>,  <39.816628, 30.429977, 24.545315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.583160, 30.468290, 24.504993>,  <39.194050, 30.532146, 24.437792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583160, 30.468290, 24.504993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219516, 0.402211, -0.888841,
		0.074322, 0.901522, 0.426304,
		0.972774, -0.159641, 0.168005,
		39.874992, 30.420399, 24.555395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547665, 31.124830, 24.028315>,  <39.194050, 30.532146, 24.437792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547665, 31.124830, 24.028315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838196, 30.862156, 24.109512>,  <40.012516, 30.704552, 24.158232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838196, 30.862156, 24.109512>,  <39.547665, 31.124830, 24.028315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838196, 30.862156, 24.109512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471327, 0.260880, -0.842492,
		0.500297, 0.707604, 0.498999,
		0.726329, -0.656688, 0.202995,
		40.056095, 30.665150, 24.170410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018700, 31.564484, 24.353712>,  <39.547665, 31.124830, 24.028315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018700, 31.564484, 24.353712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179886, 31.239344, 24.185478>,  <40.276600, 31.044260, 24.084538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179886, 31.239344, 24.185478>,  <40.018700, 31.564484, 24.353712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179886, 31.239344, 24.185478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236804, 0.536502, -0.809994,
		0.884048, 0.226806, 0.408679,
		0.402969, -0.812850, -0.420585,
		40.300777, 30.995489, 24.059303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760490, 31.750650, 24.042942>,  <40.018700, 31.564484, 24.353712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760490, 31.750650, 24.042942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.663063, 31.412706, 23.852411>,  <40.604607, 31.209940, 23.738092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.663063, 31.412706, 23.852411>,  <40.760490, 31.750650, 24.042942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663063, 31.412706, 23.852411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226653, 0.427937, -0.874928,
		0.943028, -0.321068, 0.087257,
		-0.243571, -0.844858, -0.476328,
		40.589993, 31.159248, 23.709513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264889, 31.709187, 23.595615>,  <40.760490, 31.750650, 24.042942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264889, 31.709187, 23.595615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.965961, 31.479235, 23.462334>,  <40.786606, 31.341263, 23.382364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.965961, 31.479235, 23.462334>,  <41.264889, 31.709187, 23.595615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965961, 31.479235, 23.462334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291708, 0.166702, -0.941869,
		0.597009, -0.801075, 0.043118,
		-0.747320, -0.574882, -0.333202,
		40.741764, 31.306770, 23.362373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525021, 31.391525, 23.050238>,  <41.264889, 31.709187, 23.595615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525021, 31.391525, 23.050238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134415, 31.342350, 22.979471>,  <40.900051, 31.312845, 22.937012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134415, 31.342350, 22.979471>,  <41.525021, 31.391525, 23.050238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134415, 31.342350, 22.979471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168721, 0.074245, -0.982864,
		0.133966, -0.989633, -0.051760,
		-0.976517, -0.122937, -0.176918,
		40.841461, 31.305470, 22.926395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608109, 30.873627, 22.653580>,  <41.525021, 31.391525, 23.050238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608109, 30.873627, 22.653580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.258266, 31.059038, 22.596731>,  <41.048359, 31.170286, 22.562622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.258266, 31.059038, 22.596731>,  <41.608109, 30.873627, 22.653580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258266, 31.059038, 22.596731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276459, 0.236004, -0.931597,
		-0.398283, -0.854073, -0.334558,
		-0.874609, 0.463531, -0.142120,
		40.995884, 31.198097, 22.554094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434994, 30.672163, 21.958647>,  <41.608109, 30.873627, 22.653580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434994, 30.672163, 21.958647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244698, 31.016281, 22.031923>,  <41.130520, 31.222752, 22.075890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244698, 31.016281, 22.031923>,  <41.434994, 30.672163, 21.958647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244698, 31.016281, 22.031923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218377, 0.317274, -0.922848,
		-0.852046, -0.399031, -0.338809,
		-0.475740, 0.860297, 0.183193,
		41.101974, 31.274370, 22.086882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956593, 30.795633, 21.425732>,  <41.434994, 30.672163, 21.958647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956593, 30.795633, 21.425732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008625, 31.160942, 21.580143>,  <41.039845, 31.380127, 21.672791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008625, 31.160942, 21.580143>,  <40.956593, 30.795633, 21.425732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008625, 31.160942, 21.580143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402277, 0.307239, -0.862425,
		-0.906230, 0.267473, -0.327422,
		0.130079, 0.913270, 0.386028,
		41.047649, 31.434923, 21.695951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792961, 31.175999, 20.905600>,  <40.956593, 30.795633, 21.425732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792961, 31.175999, 20.905600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.010426, 31.411715, 21.144653>,  <41.140903, 31.553144, 21.288086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.010426, 31.411715, 21.144653>,  <40.792961, 31.175999, 20.905600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010426, 31.411715, 21.144653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487235, 0.358198, -0.796427,
		-0.683400, 0.724175, -0.092386,
		0.543661, 0.589292, 0.597636,
		41.173523, 31.588503, 21.323944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015011, 31.626570, 20.419556>,  <40.792961, 31.175999, 20.905600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015011, 31.626570, 20.419556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276031, 31.726938, 20.705553>,  <41.432644, 31.787159, 20.877151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276031, 31.726938, 20.705553>,  <41.015011, 31.626570, 20.419556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276031, 31.726938, 20.705553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531884, 0.520384, -0.668056,
		-0.539702, 0.816234, 0.206115,
		0.652549, 0.250922, 0.714995,
		41.471798, 31.802216, 20.920052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085712, 32.352043, 20.337879>,  <41.015011, 31.626570, 20.419556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085712, 32.352043, 20.337879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408859, 32.209309, 20.525501>,  <41.602749, 32.123669, 20.638075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408859, 32.209309, 20.525501>,  <41.085712, 32.352043, 20.337879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408859, 32.209309, 20.525501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576533, 0.643633, -0.503335,
		-0.122288, 0.677054, 0.725702,
		0.807871, -0.356839, 0.469053,
		41.651222, 32.102257, 20.666218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451679, 32.944603, 20.509884>,  <41.085712, 32.352043, 20.337879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451679, 32.944603, 20.509884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722515, 32.650322, 20.516685>,  <41.885017, 32.473755, 20.520767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722515, 32.650322, 20.516685>,  <41.451679, 32.944603, 20.509884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722515, 32.650322, 20.516685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573309, 0.512870, -0.638968,
		0.461368, 0.442390, 0.769045,
		0.677093, -0.735701, 0.017005,
		41.925644, 32.429611, 20.521788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038773, 33.364292, 20.534744>,  <41.451679, 32.944603, 20.509884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038773, 33.364292, 20.534744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133759, 32.995342, 20.412868>,  <42.190750, 32.773972, 20.339743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133759, 32.995342, 20.412868>,  <42.038773, 33.364292, 20.534744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133759, 32.995342, 20.412868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626299, 0.385142, -0.677802,
		0.742536, -0.029872, 0.669140,
		0.237467, -0.922374, -0.304690,
		42.204998, 32.718632, 20.321461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660072, 33.429459, 20.393385>,  <42.038773, 33.364292, 20.534744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660072, 33.429459, 20.393385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.567043, 33.101940, 20.183437>,  <42.511227, 32.905430, 20.057468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.567043, 33.101940, 20.183437>,  <42.660072, 33.429459, 20.393385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567043, 33.101940, 20.183437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466381, 0.379680, -0.798957,
		0.853463, -0.430603, 0.293568,
		-0.232571, -0.818794, -0.524868,
		42.497272, 32.856300, 20.025976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277706, 33.215679, 20.058584>,  <42.660072, 33.429459, 20.393385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277706, 33.215679, 20.058584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020550, 33.004524, 19.836584>,  <42.866257, 32.877831, 19.703384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020550, 33.004524, 19.836584>,  <43.277706, 33.215679, 20.058584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020550, 33.004524, 19.836584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356764, 0.434814, -0.826835,
		0.677801, -0.729566, -0.091204,
		-0.642888, -0.527891, -0.555001,
		42.827682, 32.846157, 19.670084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662960, 32.994820, 19.398336>,  <43.277706, 33.215679, 20.058584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662960, 32.994820, 19.398336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.270004, 32.980389, 19.325010>,  <43.034229, 32.971729, 19.281015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.270004, 32.980389, 19.325010>,  <43.662960, 32.994820, 19.398336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270004, 32.980389, 19.325010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150870, 0.425532, -0.892278,
		0.110199, -0.904224, -0.412596,
		-0.982392, -0.036080, -0.183314,
		42.975288, 32.969566, 19.270016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629177, 32.887543, 18.628101>,  <43.662960, 32.994820, 19.398336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629177, 32.887543, 18.628101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.259731, 33.014671, 18.713820>,  <43.038063, 33.090950, 18.765251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.259731, 33.014671, 18.713820>,  <43.629177, 32.887543, 18.628101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259731, 33.014671, 18.713820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020136, 0.518055, -0.855110,
		-0.382790, -0.794108, -0.472085,
		-0.923616, 0.317822, 0.214296,
		42.982647, 33.110016, 18.778109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268829, 32.967285, 18.056049>,  <43.629177, 32.887543, 18.628101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268829, 32.967285, 18.056049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020287, 33.210842, 18.253300>,  <42.871162, 33.356976, 18.371651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.020287, 33.210842, 18.253300>,  <43.268829, 32.967285, 18.056049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020287, 33.210842, 18.253300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065700, 0.667638, -0.741581,
		-0.780771, -0.428385, -0.454843,
		-0.621353, 0.608889, 0.493128,
		42.833881, 33.393509, 18.401237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645012, 33.042328, 17.623308>,  <43.268829, 32.967285, 18.056049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645012, 33.042328, 17.623308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.663273, 33.366146, 17.857418>,  <42.674229, 33.560436, 17.997885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.663273, 33.366146, 17.857418>,  <42.645012, 33.042328, 17.623308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663273, 33.366146, 17.857418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035557, 0.584200, -0.810831,
		-0.998324, 0.057826, -0.002116,
		0.045651, 0.809547, 0.585277,
		42.676968, 33.609009, 18.033001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224739, 33.548592, 17.282391>,  <42.645012, 33.042328, 17.623308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224739, 33.548592, 17.282391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.470779, 33.754967, 17.520874>,  <42.618404, 33.878792, 17.663963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.470779, 33.754967, 17.520874>,  <42.224739, 33.548592, 17.282391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470779, 33.754967, 17.520874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140001, 0.672692, -0.726557,
		-0.775919, 0.530376, 0.341542,
		0.615101, 0.515934, 0.596207,
		42.655312, 33.909748, 17.699736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244701, 34.290936, 17.094437>,  <42.224739, 33.548592, 17.282391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244701, 34.290936, 17.094437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.569092, 34.264240, 17.326941>,  <42.763725, 34.248222, 17.466444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.569092, 34.264240, 17.326941>,  <42.244701, 34.290936, 17.094437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569092, 34.264240, 17.326941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422169, 0.754586, -0.502367,
		-0.405084, 0.652798, 0.640126,
		0.810975, -0.066740, 0.581262,
		42.812386, 34.244217, 17.501320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448280, 33.939999, 17.032766>,  <42.244701, 34.290936, 17.094437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448280, 33.939999, 17.032766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115879, 33.792656, 16.866034>,  <40.916439, 33.704250, 16.765993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.115879, 33.792656, 16.866034>,  <41.448280, 33.939999, 17.032766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115879, 33.792656, 16.866034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464807, 0.048143, 0.884102,
		-0.305595, 0.928439, -0.211220,
		-0.831003, -0.368354, -0.416833,
		40.866577, 33.682148, 16.740984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931332, 34.363552, 17.247530>,  <41.448280, 33.939999, 17.032766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931332, 34.363552, 17.247530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777546, 34.001907, 17.172941>,  <40.685276, 33.784920, 17.128187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777546, 34.001907, 17.172941>,  <40.931332, 34.363552, 17.247530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777546, 34.001907, 17.172941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438047, 0.000868, 0.898952,
		-0.812589, 0.427299, -0.396376,
		-0.384465, -0.904110, -0.186471,
		40.662205, 33.730675, 17.117001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184200, 34.401928, 17.235390>,  <40.931332, 34.363552, 17.247530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184200, 34.401928, 17.235390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.263783, 34.019596, 17.321924>,  <40.311531, 33.790195, 17.373844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.263783, 34.019596, 17.321924>,  <40.184200, 34.401928, 17.235390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263783, 34.019596, 17.321924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647546, 0.037474, 0.761104,
		-0.735595, -0.291514, -0.611490,
		0.198957, -0.955832, 0.216335,
		40.323471, 33.732845, 17.386826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699696, 34.210823, 17.626534>,  <40.184200, 34.401928, 17.235390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699696, 34.210823, 17.626534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892200, 33.867329, 17.696911>,  <40.007702, 33.661232, 17.739138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892200, 33.867329, 17.696911>,  <39.699696, 34.210823, 17.626534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892200, 33.867329, 17.696911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680157, -0.239208, 0.692940,
		-0.552967, -0.453155, -0.699199,
		0.481262, -0.858738, 0.175943,
		40.036579, 33.609707, 17.749693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192947, 33.727875, 17.668699>,  <39.699696, 34.210823, 17.626534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192947, 33.727875, 17.668699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498646, 33.543884, 17.849518>,  <39.682064, 33.433491, 17.958010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498646, 33.543884, 17.849518>,  <39.192947, 33.727875, 17.668699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498646, 33.543884, 17.849518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626888, -0.365246, 0.688191,
		-0.151440, -0.809334, -0.567490,
		0.764249, -0.459972, 0.452049,
		39.727921, 33.405891, 17.985132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006031, 33.010952, 17.877886>,  <39.192947, 33.727875, 17.668699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006031, 33.010952, 17.877886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322067, 33.078720, 18.113533>,  <39.511688, 33.119381, 18.254921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322067, 33.078720, 18.113533>,  <39.006031, 33.010952, 17.877886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322067, 33.078720, 18.113533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506082, -0.362013, 0.782833,
		0.345893, -0.916649, -0.200283,
		0.790087, 0.169417, 0.589118,
		39.559093, 33.129543, 18.290268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223076, 32.374306, 18.293470>,  <39.006031, 33.010952, 17.877886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223076, 32.374306, 18.293470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369141, 32.692043, 18.487656>,  <39.456779, 32.882687, 18.604166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369141, 32.692043, 18.487656>,  <39.223076, 32.374306, 18.293470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369141, 32.692043, 18.487656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299790, -0.393355, 0.869136,
		0.881352, -0.462913, 0.094498,
		0.365163, 0.794345, 0.485461,
		39.478691, 32.930347, 18.633293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333687, 32.115452, 18.948021>,  <39.223076, 32.374306, 18.293470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333687, 32.115452, 18.948021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346371, 32.505974, 19.033655>,  <39.353981, 32.740288, 19.085035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.346371, 32.505974, 19.033655>,  <39.333687, 32.115452, 18.948021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346371, 32.505974, 19.033655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140302, -0.207724, 0.968073,
		0.989601, -0.060729, 0.130391,
		0.031705, 0.976301, 0.214084,
		39.355881, 32.798862, 19.097881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866776, 32.235725, 19.483452>,  <39.333687, 32.115452, 18.948021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866776, 32.235725, 19.483452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604179, 32.534451, 19.525961>,  <39.446621, 32.713684, 19.551466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604179, 32.534451, 19.525961>,  <39.866776, 32.235725, 19.483452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604179, 32.534451, 19.525961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232513, -0.334361, 0.913313,
		0.717603, 0.574874, 0.393148,
		-0.656493, 0.746809, 0.106272,
		39.407230, 32.758492, 19.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700142, 32.651859, 20.102421>,  <39.866776, 32.235725, 19.483452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700142, 32.651859, 20.102421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392666, 32.906021, 20.131760>,  <39.208179, 33.058517, 20.149363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392666, 32.906021, 20.131760>,  <39.700142, 32.651859, 20.102421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392666, 32.906021, 20.131760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399494, -0.566496, 0.720755,
		0.499519, 0.524737, 0.689299,
		-0.768691, 0.635401, 0.073346,
		39.162060, 33.096642, 20.153763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665642, 32.875305, 20.781393>,  <39.700142, 32.651859, 20.102421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665642, 32.875305, 20.781393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293320, 32.958492, 20.661165>,  <39.069927, 33.008404, 20.589027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293320, 32.958492, 20.661165>,  <39.665642, 32.875305, 20.781393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293320, 32.958492, 20.661165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348990, -0.261299, 0.899960,
		0.108623, 0.942588, 0.315798,
		-0.930810, 0.207967, -0.300571,
		39.014076, 33.020882, 20.570993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275257, 33.217075, 21.334627>,  <39.665642, 32.875305, 20.781393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275257, 33.217075, 21.334627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001434, 33.044922, 21.099285>,  <38.837143, 32.941631, 20.958080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001434, 33.044922, 21.099285>,  <39.275257, 33.217075, 21.334627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001434, 33.044922, 21.099285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446903, -0.389863, 0.805161,
		-0.575904, 0.814112, 0.074542,
		-0.684552, -0.430382, -0.588353,
		38.796070, 32.915806, 20.922779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728485, 33.099678, 21.793234>,  <39.275257, 33.217075, 21.334627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728485, 33.099678, 21.793234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612354, 32.864704, 21.491074>,  <38.542675, 32.723721, 21.309776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612354, 32.864704, 21.491074>,  <38.728485, 33.099678, 21.793234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612354, 32.864704, 21.491074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416350, -0.633225, 0.652441,
		-0.861606, 0.503931, -0.060737,
		-0.290325, -0.587434, -0.755402,
		38.525257, 32.688473, 21.264454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129532, 32.846348, 21.968458>,  <38.728485, 33.099678, 21.793234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129532, 32.846348, 21.968458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258663, 32.583851, 21.695660>,  <38.336143, 32.426353, 21.531981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258663, 32.583851, 21.695660>,  <38.129532, 32.846348, 21.968458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258663, 32.583851, 21.695660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328640, -0.753469, 0.569455,
		-0.887568, 0.040297, -0.458910,
		0.322828, -0.656247, -0.681999,
		38.355511, 32.386978, 21.491060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566788, 32.430328, 21.889359>,  <38.129532, 32.846348, 21.968458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566788, 32.430328, 21.889359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850071, 32.209023, 21.713934>,  <38.020042, 32.076241, 21.608679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850071, 32.209023, 21.713934>,  <37.566788, 32.430328, 21.889359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850071, 32.209023, 21.713934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319124, -0.804974, 0.500176,
		-0.629758, -0.214276, -0.746653,
		0.708212, -0.553265, -0.438558,
		38.062534, 32.043041, 21.582367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238922, 31.792860, 21.568365>,  <37.566788, 32.430328, 21.889359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238922, 31.792860, 21.568365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618607, 31.697945, 21.651011>,  <37.846416, 31.640995, 21.700598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618607, 31.697945, 21.651011>,  <37.238922, 31.792860, 21.568365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618607, 31.697945, 21.651011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314536, -0.732114, 0.604216,
		0.007892, -0.638517, -0.769567,
		0.949213, -0.237288, 0.206615,
		37.903370, 31.626759, 21.712996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216187, 31.085577, 21.621948>,  <37.238922, 31.792860, 21.568365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216187, 31.085577, 21.621948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547493, 31.195293, 21.817392>,  <37.746277, 31.261124, 21.934660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547493, 31.195293, 21.817392>,  <37.216187, 31.085577, 21.621948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547493, 31.195293, 21.817392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181449, -0.693720, 0.697014,
		0.530144, -0.665971, -0.524814,
		0.828265, 0.274290, 0.488612,
		37.795971, 31.277580, 21.963976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529415, 30.432844, 21.815275>,  <37.216187, 31.085577, 21.621948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529415, 30.432844, 21.815275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723843, 30.703674, 22.036291>,  <37.840500, 30.866173, 22.168901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723843, 30.703674, 22.036291>,  <37.529415, 30.432844, 21.815275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723843, 30.703674, 22.036291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122238, -0.573365, 0.810130,
		0.865327, -0.461323, -0.195933,
		0.486072, 0.677077, 0.552540,
		37.869663, 30.906797, 22.202053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986816, 29.988892, 22.236610>,  <37.529415, 30.432844, 21.815275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986816, 29.988892, 22.236610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910759, 30.357145, 22.373011>,  <37.865124, 30.578096, 22.454851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910759, 30.357145, 22.373011>,  <37.986816, 29.988892, 22.236610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910759, 30.357145, 22.373011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234390, -0.379862, 0.894855,
		0.953365, 0.090227, 0.288016,
		-0.190147, 0.920632, 0.340999,
		37.853714, 30.633335, 22.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207363, 29.847288, 22.847088>,  <37.986816, 29.988892, 22.236610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207363, 29.847288, 22.847088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994724, 30.185354, 22.869345>,  <37.867142, 30.388195, 22.882698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994724, 30.185354, 22.869345>,  <38.207363, 29.847288, 22.847088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994724, 30.185354, 22.869345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308255, -0.254239, 0.916701,
		0.788912, 0.470165, 0.395680,
		-0.531598, 0.845167, 0.055641,
		37.835243, 30.438904, 22.886038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.414539, 29.362179, 28.316076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078400, 29.563076, 28.234529>,  <39.876717, 29.683615, 28.185600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078400, 29.563076, 28.234529>,  <40.414539, 29.362179, 28.316076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078400, 29.563076, 28.234529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154116, 0.139200, 0.978198,
		0.519674, 0.853448, -0.039572,
		-0.840349, 0.502245, -0.203869,
		39.826294, 29.713749, 28.173368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364964, 29.835886, 28.896193>,  <40.414539, 29.362179, 28.316076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364964, 29.835886, 28.896193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992981, 29.833878, 28.749144>,  <39.769791, 29.832672, 28.660913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992981, 29.833878, 28.749144>,  <40.364964, 29.835886, 28.896193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992981, 29.833878, 28.749144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358767, 0.230953, 0.904404,
		0.080365, 0.972952, -0.216578,
		-0.929961, -0.005019, -0.367624,
		39.713993, 29.832373, 28.638857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961380, 30.237238, 29.369308>,  <40.364964, 29.835886, 28.896193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961380, 30.237238, 29.369308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699051, 30.016438, 29.163322>,  <39.541653, 29.883957, 29.039730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699051, 30.016438, 29.163322>,  <39.961380, 30.237238, 29.369308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699051, 30.016438, 29.163322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573031, -0.080078, 0.815612,
		-0.491455, 0.829990, -0.263796,
		-0.655826, -0.552000, -0.514965,
		39.502304, 29.850838, 29.008833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395649, 30.410255, 29.777582>,  <39.961380, 30.237238, 29.369308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395649, 30.410255, 29.777582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.253860, 30.117662, 29.544588>,  <39.168789, 29.942106, 29.404791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.253860, 30.117662, 29.544588>,  <39.395649, 30.410255, 29.777582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253860, 30.117662, 29.544588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547817, -0.342381, 0.763329,
		-0.757792, 0.589671, -0.279354,
		-0.354467, -0.731480, -0.582486,
		39.147522, 29.898218, 29.369843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622280, 30.421169, 29.869936>,  <39.395649, 30.410255, 29.777582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622280, 30.421169, 29.869936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749504, 30.055674, 29.768806>,  <38.825836, 29.836376, 29.708128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749504, 30.055674, 29.768806>,  <38.622280, 30.421169, 29.869936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749504, 30.055674, 29.768806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692768, -0.406045, 0.595987,
		-0.647235, -0.014407, -0.762154,
		0.318056, -0.913739, -0.252826,
		38.844921, 29.781551, 29.692959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969646, 30.058804, 29.769878>,  <38.622280, 30.421169, 29.869936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969646, 30.058804, 29.769878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243477, 29.771933, 29.822050>,  <38.407776, 29.599810, 29.853354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243477, 29.771933, 29.822050>,  <37.969646, 30.058804, 29.769878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243477, 29.771933, 29.822050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646263, -0.514367, 0.563712,
		-0.337189, -0.470199, -0.815608,
		0.684579, -0.717175, 0.130433,
		38.448849, 29.556780, 29.861179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564381, 29.442110, 29.839491>,  <37.969646, 30.058804, 29.769878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564381, 29.442110, 29.839491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927528, 29.374147, 29.992805>,  <38.145416, 29.333370, 30.084795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927528, 29.374147, 29.992805>,  <37.564381, 29.442110, 29.839491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927528, 29.374147, 29.992805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396510, -0.645005, 0.653260,
		0.136230, -0.745051, -0.652948,
		0.907866, -0.169907, 0.383289,
		38.199890, 29.323175, 30.107792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716583, 28.634754, 29.887264>,  <37.564381, 29.442110, 29.839491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716583, 28.634754, 29.887264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934406, 28.849487, 30.145029>,  <38.065102, 28.978327, 30.299688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.934406, 28.849487, 30.145029>,  <37.716583, 28.634754, 29.887264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934406, 28.849487, 30.145029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405068, -0.504443, 0.762533,
		0.734421, -0.676276, -0.057246,
		0.544560, 0.536832, 0.644411,
		38.097775, 29.010536, 30.338352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801308, 28.102427, 30.442417>,  <37.716583, 28.634754, 29.887264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801308, 28.102427, 30.442417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899693, 28.457394, 30.598362>,  <37.958721, 28.670374, 30.691929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899693, 28.457394, 30.598362>,  <37.801308, 28.102427, 30.442417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899693, 28.457394, 30.598362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446629, -0.253210, 0.858142,
		0.860248, -0.385192, 0.334067,
		0.245961, 0.887419, 0.389861,
		37.973480, 28.723619, 30.715321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131943, 27.998089, 31.099123>,  <37.801308, 28.102427, 30.442417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131943, 27.998089, 31.099123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027908, 28.378109, 31.168123>,  <37.965488, 28.606121, 31.209524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027908, 28.378109, 31.168123>,  <38.131943, 27.998089, 31.099123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027908, 28.378109, 31.168123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228498, -0.234133, 0.944971,
		0.938160, 0.206355, 0.277979,
		-0.260084, 0.950052, 0.172503,
		37.949883, 28.663124, 31.219873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326366, 28.103695, 31.782869>,  <38.131943, 27.998089, 31.099123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326366, 28.103695, 31.782869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.032177, 28.363810, 31.706757>,  <37.855663, 28.519878, 31.661089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.032177, 28.363810, 31.706757>,  <38.326366, 28.103695, 31.782869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032177, 28.363810, 31.706757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474595, -0.294000, 0.829652,
		0.483571, 0.700492, 0.524853,
		-0.735471, 0.650289, -0.190280,
		37.811535, 28.558897, 31.649673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240009, 28.398319, 32.426727>,  <38.326366, 28.103695, 31.782869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240009, 28.398319, 32.426727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909637, 28.440887, 32.205269>,  <37.711414, 28.466429, 32.072395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909637, 28.440887, 32.205269>,  <38.240009, 28.398319, 32.426727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909637, 28.440887, 32.205269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563698, -0.172595, 0.807748,
		-0.009597, 0.979227, 0.202538,
		-0.825925, 0.106419, -0.553644,
		37.661861, 28.472813, 32.039177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758865, 28.829729, 32.782829>,  <38.240009, 28.398319, 32.426727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758865, 28.829729, 32.782829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553337, 28.598007, 32.529720>,  <37.430019, 28.458973, 32.377857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.553337, 28.598007, 32.529720>,  <37.758865, 28.829729, 32.782829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553337, 28.598007, 32.529720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486271, -0.410989, 0.771122,
		-0.706777, 0.703913, -0.070527,
		-0.513817, -0.579306, -0.632770,
		37.399193, 28.424215, 32.339890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815662, 29.479996, 32.241375>,  <37.758865, 28.829729, 32.782829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815662, 29.479996, 32.241375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577625, 29.235434, 32.032745>,  <37.434803, 29.088696, 31.907568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577625, 29.235434, 32.032745>,  <37.815662, 29.479996, 32.241375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577625, 29.235434, 32.032745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290120, 0.441800, -0.848907,
		0.749461, -0.656501, -0.085532,
		-0.595096, -0.611407, -0.521576,
		37.399097, 29.052011, 31.876272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860744, 30.261019, 32.291824>,  <37.815662, 29.479996, 32.241375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860744, 30.261019, 32.291824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057068, 30.478266, 32.564335>,  <38.174862, 30.608614, 32.727840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057068, 30.478266, 32.564335>,  <37.860744, 30.261019, 32.291824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057068, 30.478266, 32.564335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634675, 0.312829, -0.706630,
		-0.596903, 0.779207, -0.191162,
		0.490810, 0.543115, 0.681272,
		38.204311, 30.641201, 32.768715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731022, 30.945522, 32.147907>,  <37.860744, 30.261019, 32.291824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731022, 30.945522, 32.147907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077599, 30.910044, 32.344444>,  <38.285545, 30.888758, 32.462364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077599, 30.910044, 32.344444>,  <37.731022, 30.945522, 32.147907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077599, 30.910044, 32.344444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464842, 0.502458, -0.729012,
		-0.182218, 0.860041, 0.476578,
		0.866440, -0.088694, 0.491339,
		38.337532, 30.883436, 32.491844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116058, 31.486992, 31.806841>,  <37.731022, 30.945522, 32.147907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116058, 31.486992, 31.806841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394623, 31.274481, 31.999819>,  <38.561760, 31.146975, 32.115604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394623, 31.274481, 31.999819>,  <38.116058, 31.486992, 31.806841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394623, 31.274481, 31.999819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704546, 0.378302, -0.600419,
		0.136479, 0.758044, 0.637764,
		0.696411, -0.531279, 0.482446,
		38.603546, 31.115097, 32.144554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547318, 32.002563, 31.997158>,  <38.116058, 31.486992, 31.806841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547318, 32.002563, 31.997158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745605, 31.655170, 31.997568>,  <38.864578, 31.446735, 31.997814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745605, 31.655170, 31.997568>,  <38.547318, 32.002563, 31.997158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745605, 31.655170, 31.997568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695100, 0.396052, -0.599982,
		0.520667, 0.298136, 0.800013,
		0.495723, -0.868480, 0.001023,
		38.894321, 31.394627, 31.997875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275444, 32.224712, 32.002441>,  <38.547318, 32.002563, 31.997158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275444, 32.224712, 32.002441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286732, 31.852585, 31.856176>,  <39.293503, 31.629309, 31.768417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286732, 31.852585, 31.856176>,  <39.275444, 32.224712, 32.002441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286732, 31.852585, 31.856176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671169, 0.288719, -0.682769,
		0.740767, -0.226151, 0.632550,
		0.028220, -0.930321, -0.365659,
		39.295197, 31.573488, 31.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715145, 32.349895, 31.650431>,  <39.275444, 32.224712, 32.002441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715145, 32.349895, 31.650431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666912, 31.964844, 31.553429>,  <39.637970, 31.733812, 31.495228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666912, 31.964844, 31.553429>,  <39.715145, 32.349895, 31.650431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666912, 31.964844, 31.553429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507983, 0.150044, -0.848198,
		0.852885, -0.225468, 0.470906,
		-0.120584, -0.962627, -0.242504,
		39.630737, 31.676056, 31.480677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378513, 32.146519, 31.487286>,  <39.715145, 32.349895, 31.650431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378513, 32.146519, 31.487286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.069176, 31.960289, 31.315157>,  <39.883572, 31.848553, 31.211880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.069176, 31.960289, 31.315157>,  <40.378513, 32.146519, 31.487286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069176, 31.960289, 31.315157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363126, 0.231109, -0.902623,
		0.519687, -0.854302, -0.009666,
		-0.773346, -0.465572, -0.430324,
		39.837173, 31.820618, 31.186060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652119, 31.818209, 30.814037>,  <40.378513, 32.146519, 31.487286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652119, 31.818209, 30.814037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.255276, 31.821623, 30.763988>,  <40.017170, 31.823671, 30.733959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.255276, 31.821623, 30.763988>,  <40.652119, 31.818209, 30.814037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255276, 31.821623, 30.763988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113819, 0.480253, -0.869714,
		0.052665, -0.877089, -0.477433,
		-0.992104, 0.008538, -0.125121,
		39.957645, 31.824184, 30.726452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444653, 31.488508, 30.146540>,  <40.652119, 31.818209, 30.814037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444653, 31.488508, 30.146540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147835, 31.730057, 30.262959>,  <39.969746, 31.874987, 30.332809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147835, 31.730057, 30.262959>,  <40.444653, 31.488508, 30.146540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147835, 31.730057, 30.262959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136451, 0.561149, -0.816390,
		-0.656316, -0.566084, -0.498797,
		-0.742045, 0.603871, 0.291049,
		39.925220, 31.911219, 30.350273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923424, 31.425518, 29.641905>,  <40.444653, 31.488508, 30.146540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923424, 31.425518, 29.641905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895477, 31.775023, 29.834429>,  <39.878712, 31.984726, 29.949944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895477, 31.775023, 29.834429>,  <39.923424, 31.425518, 29.641905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895477, 31.775023, 29.834429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146380, 0.486247, -0.861474,
		-0.986758, 0.010268, -0.161873,
		-0.069864, 0.873761, 0.481311,
		39.874519, 32.037151, 29.978823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337269, 31.894764, 29.312653>,  <39.923424, 31.425518, 29.641905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337269, 31.894764, 29.312653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587437, 32.142220, 29.502867>,  <39.737537, 32.290691, 29.616995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587437, 32.142220, 29.502867>,  <39.337269, 31.894764, 29.312653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587437, 32.142220, 29.502867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232780, 0.433758, -0.870441,
		-0.744757, 0.655087, 0.127274,
		0.625421, 0.618640, 0.475535,
		39.775063, 32.327812, 29.645527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062065, 32.610043, 29.071831>,  <39.337269, 31.894764, 29.312653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062065, 32.610043, 29.071831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435474, 32.649487, 29.209709>,  <39.659519, 32.673153, 29.292437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435474, 32.649487, 29.209709>,  <39.062065, 32.610043, 29.071831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435474, 32.649487, 29.209709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214106, 0.617836, -0.756596,
		-0.287571, 0.780100, 0.555650,
		0.933521, 0.098607, 0.344696,
		39.715530, 32.679070, 29.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201389, 33.015804, 28.654654>,  <39.062065, 32.610043, 29.071831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201389, 33.015804, 28.654654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.556499, 33.023144, 28.838615>,  <39.769566, 33.027546, 28.948994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.556499, 33.023144, 28.838615>,  <39.201389, 33.015804, 28.654654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556499, 33.023144, 28.838615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410131, 0.421995, -0.808525,
		-0.208910, 0.906413, 0.367114,
		0.887778, 0.018344, 0.459907,
		39.822834, 33.028648, 28.976587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457878, 33.747681, 28.764771>,  <39.201389, 33.015804, 28.654654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457878, 33.747681, 28.764771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767735, 33.495045, 28.751959>,  <39.953648, 33.343464, 28.744272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767735, 33.495045, 28.751959>,  <39.457878, 33.747681, 28.764771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767735, 33.495045, 28.751959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393765, 0.521343, -0.757067,
		0.494853, 0.573844, 0.652552,
		0.774642, -0.631589, -0.032029,
		40.000126, 33.305569, 28.742350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561886, 34.503471, 28.937855>,  <39.457878, 33.747681, 28.764771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561886, 34.503471, 28.937855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197075, 34.631119, 28.834810>,  <38.978188, 34.707706, 28.772984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197075, 34.631119, 28.834810>,  <39.561886, 34.503471, 28.937855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197075, 34.631119, 28.834810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346610, -0.263984, 0.900097,
		0.219236, 0.910205, 0.351373,
		-0.912029, 0.319123, -0.257611,
		38.923466, 34.726856, 28.757526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332829, 34.903728, 29.469141>,  <39.561886, 34.503471, 28.937855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332829, 34.903728, 29.469141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.990231, 34.800694, 29.290222>,  <38.784672, 34.738873, 29.182871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.990231, 34.800694, 29.290222>,  <39.332829, 34.903728, 29.469141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990231, 34.800694, 29.290222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425779, -0.137291, 0.894351,
		-0.291779, 0.956453, 0.007915,
		-0.856491, -0.257583, -0.447297,
		38.733284, 34.723419, 29.156033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877201, 35.292557, 29.787828>,  <39.332829, 34.903728, 29.469141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877201, 35.292557, 29.787828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.658081, 35.000755, 29.624004>,  <38.526608, 34.825676, 29.525711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.658081, 35.000755, 29.624004>,  <38.877201, 35.292557, 29.787828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658081, 35.000755, 29.624004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643709, 0.054841, 0.763303,
		-0.534372, 0.681773, -0.499631,
		-0.547800, -0.729505, -0.409558,
		38.493740, 34.781902, 29.501137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271946, 35.413464, 30.058722>,  <38.877201, 35.292557, 29.787828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271946, 35.413464, 30.058722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233131, 35.038860, 29.923944>,  <38.209843, 34.814098, 29.843079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233131, 35.038860, 29.923944>,  <38.271946, 35.413464, 30.058722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233131, 35.038860, 29.923944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686797, -0.182015, 0.703691,
		-0.720343, 0.299699, -0.625530,
		-0.097040, -0.936511, -0.336945,
		38.204018, 34.757908, 29.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572037, 35.260891, 30.007582>,  <38.271946, 35.413464, 30.058722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572037, 35.260891, 30.007582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753624, 34.905388, 30.032940>,  <37.862576, 34.692085, 30.048155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753624, 34.905388, 30.032940>,  <37.572037, 35.260891, 30.007582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753624, 34.905388, 30.032940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731035, -0.330832, 0.596773,
		-0.509415, -0.317258, -0.799902,
		0.453964, -0.888762, 0.063396,
		37.889812, 34.638760, 30.051960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991043, 34.821899, 29.943945>,  <37.572037, 35.260891, 30.007582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991043, 34.821899, 29.943945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.285435, 34.633999, 30.138948>,  <37.462070, 34.521259, 30.255951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.285435, 34.633999, 30.138948>,  <36.991043, 34.821899, 29.943945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285435, 34.633999, 30.138948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667088, -0.380415, 0.640529,
		-0.115431, -0.796631, -0.593342,
		0.735982, -0.469748, 0.487511,
		37.506229, 34.493073, 30.285202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748756, 34.155231, 30.006891>,  <36.991043, 34.821899, 29.943945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748756, 34.155231, 30.006891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036026, 34.192245, 30.282764>,  <37.208389, 34.214455, 30.448288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036026, 34.192245, 30.282764>,  <36.748756, 34.155231, 30.006891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036026, 34.192245, 30.282764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644336, -0.285848, 0.709311,
		0.262782, -0.953797, -0.145664,
		0.718176, 0.092537, 0.689681,
		37.251480, 34.220005, 30.489668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725216, 33.559925, 30.317392>,  <36.748756, 34.155231, 30.006891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725216, 33.559925, 30.317392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940121, 33.783791, 30.569780>,  <37.069065, 33.918110, 30.721214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940121, 33.783791, 30.569780>,  <36.725216, 33.559925, 30.317392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940121, 33.783791, 30.569780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431176, -0.460707, 0.775781,
		0.724870, -0.688858, -0.006207,
		0.537263, 0.559664, 0.630972,
		37.101299, 33.951691, 30.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951214, 33.084015, 30.901966>,  <36.725216, 33.559925, 30.317392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951214, 33.084015, 30.901966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.955654, 33.463593, 31.028069>,  <36.958321, 33.691338, 31.103731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.955654, 33.463593, 31.028069>,  <36.951214, 33.084015, 30.901966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955654, 33.463593, 31.028069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530562, -0.261647, 0.806253,
		0.847573, -0.176215, 0.500567,
		0.011102, 0.948941, 0.315258,
		36.958984, 33.748276, 31.122646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119713, 33.033611, 31.605314>,  <36.951214, 33.084015, 30.901966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119713, 33.033611, 31.605314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940651, 33.389881, 31.573544>,  <36.833214, 33.603642, 31.554482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940651, 33.389881, 31.573544>,  <37.119713, 33.033611, 31.605314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940651, 33.389881, 31.573544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560864, -0.210487, 0.800704,
		0.696447, 0.402984, 0.593772,
		-0.447652, 0.890673, -0.079427,
		36.806355, 33.657082, 31.549715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080757, 33.281162, 32.230789>,  <37.119713, 33.033611, 31.605314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080757, 33.281162, 32.230789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.790363, 33.488419, 32.049915>,  <36.616127, 33.612774, 31.941391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.790363, 33.488419, 32.049915>,  <37.080757, 33.281162, 32.230789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790363, 33.488419, 32.049915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566431, -0.077647, 0.820443,
		0.389998, 0.851761, 0.349863,
		-0.725987, 0.518145, -0.452181,
		36.572567, 33.643864, 31.914261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822891, 33.810287, 32.659027>,  <37.080757, 33.281162, 32.230789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822891, 33.810287, 32.659027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538910, 33.714195, 32.394222>,  <36.368523, 33.656540, 32.235340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538910, 33.714195, 32.394222>,  <36.822891, 33.810287, 32.659027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538910, 33.714195, 32.394222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634405, -0.189980, 0.749292,
		-0.305772, 0.951943, -0.017527,
		-0.709954, -0.240232, -0.662008,
		36.325924, 33.642124, 32.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.872189, 37.141533, 25.997305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608467, 36.886902, 25.837259>,  <40.450233, 36.734123, 25.741232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608467, 36.886902, 25.837259>,  <40.872189, 37.141533, 25.997305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608467, 36.886902, 25.837259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298077, -0.267256, 0.916365,
		-0.690272, 0.723423, -0.013547,
		-0.659299, -0.636579, -0.400115,
		40.410679, 36.695927, 25.717224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194386, 37.280788, 26.431828>,  <40.872189, 37.141533, 25.997305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194386, 37.280788, 26.431828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161324, 36.928425, 26.245420>,  <40.141487, 36.717007, 26.133577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161324, 36.928425, 26.245420>,  <40.194386, 37.280788, 26.431828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161324, 36.928425, 26.245420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315134, -0.420517, 0.850797,
		-0.945441, 0.217182, -0.242845,
		-0.082657, -0.880907, -0.466015,
		40.136528, 36.664154, 26.105616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564613, 36.978466, 26.683037>,  <40.194386, 37.280788, 26.431828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564613, 36.978466, 26.683037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758778, 36.659046, 26.540661>,  <39.875278, 36.467396, 26.455235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758778, 36.659046, 26.540661>,  <39.564613, 36.978466, 26.683037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758778, 36.659046, 26.540661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469027, -0.581428, 0.664797,
		-0.737827, -0.155755, -0.656774,
		0.485412, -0.798550, -0.355940,
		39.904400, 36.419483, 26.433880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058537, 36.528305, 26.567713>,  <39.564613, 36.978466, 26.683037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058537, 36.528305, 26.567713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363472, 36.270447, 26.590565>,  <39.546432, 36.115730, 26.604277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363472, 36.270447, 26.590565>,  <39.058537, 36.528305, 26.567713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363472, 36.270447, 26.590565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544627, -0.591357, 0.594709,
		-0.349594, -0.484486, -0.801908,
		0.762342, -0.644648, 0.057130,
		39.592175, 36.077053, 26.607704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799267, 35.993137, 26.528904>,  <39.058537, 36.528305, 26.567713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799267, 35.993137, 26.528904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134922, 35.878399, 26.713758>,  <39.336315, 35.809555, 26.824671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134922, 35.878399, 26.713758>,  <38.799267, 35.993137, 26.528904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134922, 35.878399, 26.713758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541486, -0.520901, 0.659891,
		0.051439, -0.803978, -0.592430,
		0.839135, -0.286849, 0.462137,
		39.386662, 35.792343, 26.852400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718483, 35.310425, 26.564510>,  <38.799267, 35.993137, 26.528904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718483, 35.310425, 26.564510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977726, 35.417057, 26.849859>,  <39.133270, 35.481037, 27.021069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977726, 35.417057, 26.849859>,  <38.718483, 35.310425, 26.564510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977726, 35.417057, 26.849859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499174, -0.558740, 0.662296,
		0.575142, -0.785332, -0.229053,
		0.648103, 0.266577, 0.713372,
		39.172157, 35.497028, 27.063871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937782, 34.623089, 26.914743>,  <38.718483, 35.310425, 26.564510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937782, 34.623089, 26.914743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005062, 34.924454, 27.169010>,  <39.045429, 35.105274, 27.321569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005062, 34.924454, 27.169010>,  <38.937782, 34.623089, 26.914743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005062, 34.924454, 27.169010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568113, -0.452897, 0.687118,
		0.805578, -0.476705, 0.351848,
		0.168202, 0.753416, 0.635666,
		39.055523, 35.150478, 27.359711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144291, 34.297050, 27.549923>,  <38.937782, 34.623089, 26.914743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144291, 34.297050, 27.549923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054787, 34.649757, 27.716013>,  <39.001083, 34.861382, 27.815668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054787, 34.649757, 27.716013>,  <39.144291, 34.297050, 27.549923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054787, 34.649757, 27.716013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364289, -0.470815, 0.803509,
		0.904005, 0.028531, 0.426569,
		-0.223760, 0.881770, 0.415226,
		38.987659, 34.914288, 27.840580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442249, 34.305950, 28.261528>,  <39.144291, 34.297050, 27.549923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442249, 34.305950, 28.261528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153049, 34.582291, 28.261141>,  <38.979530, 34.748096, 28.260908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153049, 34.582291, 28.261141>,  <39.442249, 34.305950, 28.261528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153049, 34.582291, 28.261141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339669, -0.354253, 0.871281,
		0.601582, 0.630262, 0.490784,
		-0.722997, 0.690851, -0.000968,
		38.936150, 34.789547, 28.260851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151524, 34.126102, 28.548100>,  <39.442249, 34.305950, 28.261528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151524, 34.126102, 28.548100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242302, 33.742760, 28.478760>,  <40.296768, 33.512756, 28.437155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242302, 33.742760, 28.478760>,  <40.151524, 34.126102, 28.548100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242302, 33.742760, 28.478760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344921, 0.245552, -0.905943,
		0.910782, 0.145812, 0.386285,
		0.226950, -0.958354, -0.173350,
		40.310387, 33.455254, 28.426754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872185, 34.110561, 28.331804>,  <40.151524, 34.126102, 28.548100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872185, 34.110561, 28.331804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714233, 33.770748, 28.191879>,  <40.619461, 33.566860, 28.107924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714233, 33.770748, 28.191879>,  <40.872185, 34.110561, 28.331804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714233, 33.770748, 28.191879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345894, 0.215270, -0.913245,
		0.851132, -0.481622, 0.208841,
		-0.394882, -0.849529, -0.349814,
		40.595768, 33.515888, 28.086935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385677, 33.849731, 27.931177>,  <40.872185, 34.110561, 28.331804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385677, 33.849731, 27.931177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043552, 33.685993, 27.804131>,  <40.838280, 33.587749, 27.727901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043552, 33.685993, 27.804131>,  <41.385677, 33.849731, 27.931177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043552, 33.685993, 27.804131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229556, 0.250174, -0.940594,
		0.464490, -0.877410, -0.120008,
		-0.855309, -0.409348, -0.317618,
		40.786961, 33.563190, 27.708845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563053, 33.369781, 27.472073>,  <41.385677, 33.849731, 27.931177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563053, 33.369781, 27.472073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181931, 33.445522, 27.377163>,  <40.953255, 33.490967, 27.320217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181931, 33.445522, 27.377163>,  <41.563053, 33.369781, 27.472073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181931, 33.445522, 27.377163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224402, -0.087068, -0.970599,
		-0.204443, -0.978042, 0.040469,
		-0.952810, 0.189351, -0.237275,
		40.896088, 33.502327, 27.305981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538555, 33.058228, 26.785530>,  <41.563053, 33.369781, 27.472073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538555, 33.058228, 26.785530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204689, 33.277840, 26.802933>,  <41.004368, 33.409607, 26.813374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204689, 33.277840, 26.802933>,  <41.538555, 33.058228, 26.785530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204689, 33.277840, 26.802933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008112, 0.091237, -0.995796,
		-0.550691, -0.830808, -0.080606,
		-0.834670, 0.549030, 0.043504,
		40.954288, 33.442547, 26.815985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189896, 32.777229, 26.284475>,  <41.538555, 33.058228, 26.785530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189896, 32.777229, 26.284475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053139, 33.147163, 26.351145>,  <40.971085, 33.369125, 26.391146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053139, 33.147163, 26.351145>,  <41.189896, 32.777229, 26.284475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053139, 33.147163, 26.351145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155931, 0.230733, -0.960441,
		-0.926711, -0.302380, -0.223098,
		-0.341894, 0.924840, 0.166673,
		40.950569, 33.424614, 26.401146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881645, 32.960930, 25.761347>,  <41.189896, 32.777229, 26.284475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881645, 32.960930, 25.761347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935509, 33.333580, 25.896370>,  <40.967827, 33.557171, 25.977385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935509, 33.333580, 25.896370>,  <40.881645, 32.960930, 25.761347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935509, 33.333580, 25.896370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228199, 0.302348, -0.925479,
		-0.964257, 0.201659, -0.171880,
		0.134663, 0.931622, 0.337559,
		40.975906, 33.613068, 25.997637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309643, 33.442436, 25.333420>,  <40.881645, 32.960930, 25.761347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309643, 33.442436, 25.333420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617153, 33.636166, 25.500471>,  <40.801659, 33.752403, 25.600702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617153, 33.636166, 25.500471>,  <40.309643, 33.442436, 25.333420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617153, 33.636166, 25.500471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240714, 0.385861, -0.890600,
		-0.592485, 0.785201, 0.180057,
		0.768777, 0.484325, 0.417626,
		40.847786, 33.781464, 25.625759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370171, 33.984535, 24.852709>,  <40.309643, 33.442436, 25.333420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370171, 33.984535, 24.852709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720154, 34.030396, 25.040878>,  <40.930145, 34.057911, 25.153780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720154, 34.030396, 25.040878>,  <40.370171, 33.984535, 24.852709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720154, 34.030396, 25.040878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366761, 0.477376, -0.798498,
		-0.316120, 0.871187, 0.375634,
		0.874959, 0.114653, 0.470426,
		40.982643, 34.064793, 25.182007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631119, 34.662071, 24.732409>,  <40.370171, 33.984535, 24.852709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631119, 34.662071, 24.732409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956654, 34.480537, 24.877573>,  <41.151974, 34.371616, 24.964672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956654, 34.480537, 24.877573>,  <40.631119, 34.662071, 24.732409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956654, 34.480537, 24.877573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581085, 0.631939, -0.512829,
		0.003401, 0.628242, 0.778011,
		0.813836, -0.453834, 0.362913,
		41.200806, 34.344387, 24.986446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022041, 35.273598, 24.881115>,  <40.631119, 34.662071, 24.732409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022041, 35.273598, 24.881115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267159, 34.958462, 24.856478>,  <41.414227, 34.769379, 24.841696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267159, 34.958462, 24.856478>,  <41.022041, 35.273598, 24.881115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267159, 34.958462, 24.856478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528079, 0.466233, -0.709760,
		0.587896, 0.402407, 0.701746,
		0.612789, -0.787842, -0.061593,
		41.450996, 34.722111, 24.837999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774261, 35.493019, 24.870445>,  <41.022041, 35.273598, 24.881115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774261, 35.493019, 24.870445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736183, 35.141651, 24.683121>,  <41.713337, 34.930832, 24.570726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736183, 35.141651, 24.683121>,  <41.774261, 35.493019, 24.870445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736183, 35.141651, 24.683121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519421, 0.357497, -0.776143,
		0.849199, -0.317136, 0.422238,
		-0.095194, -0.878419, -0.468313,
		41.707626, 34.878124, 24.542627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369503, 35.352188, 24.581226>,  <41.774261, 35.493019, 24.870445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369503, 35.352188, 24.581226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157764, 35.089046, 24.366932>,  <42.030720, 34.931160, 24.238356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157764, 35.089046, 24.366932>,  <42.369503, 35.352188, 24.581226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157764, 35.089046, 24.366932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550698, 0.213928, -0.806825,
		0.645386, -0.722120, 0.249039,
		-0.529348, -0.657859, -0.535736,
		41.998959, 34.891689, 24.206211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756172, 34.727562, 24.438118>,  <42.369503, 35.352188, 24.581226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756172, 34.727562, 24.438118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475174, 34.770817, 24.156748>,  <42.306576, 34.796768, 23.987926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475174, 34.770817, 24.156748>,  <42.756172, 34.727562, 24.438118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475174, 34.770817, 24.156748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711657, 0.097370, -0.695747,
		-0.006745, -0.989356, -0.145360,
		-0.702495, 0.108139, -0.703425,
		42.264427, 34.803257, 23.945721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.882816, 33.361111, 21.059944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021530, 33.568401, 21.372658>,  <36.104759, 33.692776, 21.560286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021530, 33.568401, 21.372658>,  <35.882816, 33.361111, 21.059944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021530, 33.568401, 21.372658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608795, -0.509705, 0.607922,
		0.713518, -0.686764, 0.138733,
		0.346786, 0.518223, 0.781782,
		36.125565, 33.723869, 21.607193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934967, 32.924603, 21.535486>,  <35.882816, 33.361111, 21.059944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934967, 32.924603, 21.535486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971718, 33.241081, 21.777334>,  <35.993771, 33.430969, 21.922443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971718, 33.241081, 21.777334>,  <35.934967, 32.924603, 21.535486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971718, 33.241081, 21.777334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466180, -0.502360, 0.728225,
		0.879906, -0.348771, 0.322683,
		0.091881, 0.791197, 0.604620,
		35.999283, 33.478439, 21.958719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424713, 32.713200, 22.060860>,  <35.934967, 32.924603, 21.535486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424713, 32.713200, 22.060860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.233620, 33.024521, 22.223841>,  <36.118965, 33.211315, 22.321629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.233620, 33.024521, 22.223841>,  <36.424713, 32.713200, 22.060860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233620, 33.024521, 22.223841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265277, -0.569955, 0.777676,
		0.837497, 0.263431, 0.478751,
		-0.477731, 0.778303, 0.407453,
		36.090302, 33.258011, 22.346077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667946, 32.623829, 22.708809>,  <36.424713, 32.713200, 22.060860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667946, 32.623829, 22.708809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331135, 32.836605, 22.744638>,  <36.129047, 32.964272, 22.766136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331135, 32.836605, 22.744638>,  <36.667946, 32.623829, 22.708809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331135, 32.836605, 22.744638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133685, -0.366654, 0.920703,
		0.522604, 0.763284, 0.379846,
		-0.842030, 0.531942, 0.089575,
		36.078526, 32.996189, 22.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600872, 32.732407, 23.445251>,  <36.667946, 32.623829, 22.708809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600872, 32.732407, 23.445251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.246113, 32.848686, 23.301636>,  <36.033257, 32.918453, 23.215466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.246113, 32.848686, 23.301636>,  <36.600872, 32.732407, 23.445251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246113, 32.848686, 23.301636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433425, -0.254657, 0.864461,
		0.159865, 0.922304, 0.351850,
		-0.886897, 0.290697, -0.359039,
		35.980045, 32.935894, 23.193924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302326, 33.179329, 23.941727>,  <36.600872, 32.732407, 23.445251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302326, 33.179329, 23.941727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.006920, 33.013454, 23.729074>,  <35.829678, 32.913929, 23.601482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.006920, 33.013454, 23.729074>,  <36.302326, 33.179329, 23.941727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006920, 33.013454, 23.729074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418396, -0.336451, 0.843650,
		-0.528715, 0.845482, 0.074973,
		-0.738516, -0.414682, -0.531633,
		35.785366, 32.889050, 23.569584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813328, 33.236427, 24.476334>,  <36.302326, 33.179329, 23.941727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813328, 33.236427, 24.476334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698967, 32.973717, 24.197218>,  <35.630352, 32.816090, 24.029749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.698967, 32.973717, 24.197218>,  <35.813328, 33.236427, 24.476334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698967, 32.973717, 24.197218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514460, -0.509145, 0.690001,
		-0.808451, 0.556256, -0.192320,
		-0.285898, -0.656773, -0.697790,
		35.613197, 32.776684, 23.987881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123665, 33.123341, 24.687527>,  <35.813328, 33.236427, 24.476334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123665, 33.123341, 24.687527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228687, 32.817497, 24.452091>,  <35.291698, 32.633991, 24.310831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228687, 32.817497, 24.452091>,  <35.123665, 33.123341, 24.687527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228687, 32.817497, 24.452091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378563, -0.642707, 0.666047,
		-0.887556, 0.047944, -0.458199,
		0.262554, -0.764611, -0.588588,
		35.307453, 32.588116, 24.275515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578560, 32.664970, 24.499941>,  <35.123665, 33.123341, 24.687527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578560, 32.664970, 24.499941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894390, 32.427765, 24.436819>,  <35.083889, 32.285442, 24.398947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894390, 32.427765, 24.436819>,  <34.578560, 32.664970, 24.499941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894390, 32.427765, 24.436819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464386, -0.745522, 0.478062,
		-0.401145, -0.304184, -0.864034,
		0.789575, -0.593017, -0.157804,
		35.131264, 32.249859, 24.389479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308540, 31.963274, 24.279617>,  <34.578560, 32.664970, 24.499941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308540, 31.963274, 24.279617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.684727, 31.901625, 24.400785>,  <34.910439, 31.864635, 24.473486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.684727, 31.901625, 24.400785>,  <34.308540, 31.963274, 24.279617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684727, 31.901625, 24.400785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298531, -0.800640, 0.519475,
		0.162467, -0.578982, -0.798989,
		0.940470, -0.154125, 0.302921,
		34.966869, 31.855387, 24.491661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366253, 31.175228, 24.264864>,  <34.308540, 31.963274, 24.279617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366253, 31.175228, 24.264864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.624931, 31.341536, 24.520653>,  <34.780136, 31.441320, 24.674126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.624931, 31.341536, 24.520653>,  <34.366253, 31.175228, 24.264864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624931, 31.341536, 24.520653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213461, -0.706225, 0.675041,
		0.732273, -0.573047, -0.367960,
		0.646692, 0.415769, 0.639472,
		34.818939, 31.466267, 24.712494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670383, 30.587574, 24.696814>,  <34.366253, 31.175228, 24.264864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670383, 30.587574, 24.696814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753010, 30.913811, 24.913013>,  <34.802586, 31.109552, 25.042734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753010, 30.913811, 24.913013>,  <34.670383, 30.587574, 24.696814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753010, 30.913811, 24.913013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135376, -0.523279, 0.841340,
		0.969023, -0.246959, 0.002322,
		0.206562, 0.815592, 0.540502,
		34.814980, 31.158489, 25.075165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033199, 30.312147, 25.335703>,  <34.670383, 30.587574, 24.696814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033199, 30.312147, 25.335703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920158, 30.683357, 25.432787>,  <34.852333, 30.906084, 25.491037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.920158, 30.683357, 25.432787>,  <35.033199, 30.312147, 25.335703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920158, 30.683357, 25.432787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391728, -0.342613, 0.853912,
		0.875607, 0.146239, 0.460355,
		-0.282599, 0.928025, 0.242708,
		34.835381, 30.961765, 25.505600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253803, 30.350563, 26.023117>,  <35.033199, 30.312147, 25.335703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253803, 30.350563, 26.023117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967236, 30.626770, 25.983255>,  <34.795296, 30.792494, 25.959339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.967236, 30.626770, 25.983255>,  <35.253803, 30.350563, 26.023117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967236, 30.626770, 25.983255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366602, -0.251065, 0.895862,
		0.593591, 0.678343, 0.433013,
		-0.716416, 0.690519, -0.099652,
		34.752312, 30.833925, 25.953360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954372, 30.564079, 26.366131>,  <35.253803, 30.350563, 26.023117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954372, 30.564079, 26.366131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046337, 30.174843, 26.372183>,  <36.101517, 29.941299, 26.375814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046337, 30.174843, 26.372183>,  <35.954372, 30.564079, 26.366131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046337, 30.174843, 26.372183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374886, 0.074207, -0.924096,
		0.898109, 0.218134, 0.381860,
		0.229914, -0.973093, 0.015129,
		36.115311, 29.882915, 26.376722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519825, 30.547924, 26.132858>,  <35.954372, 30.564079, 26.366131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519825, 30.547924, 26.132858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455338, 30.155382, 26.091000>,  <36.416645, 29.919857, 26.065884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455338, 30.155382, 26.091000>,  <36.519825, 30.547924, 26.132858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455338, 30.155382, 26.091000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530392, 0.003266, -0.847746,
		0.832281, -0.192179, 0.519976,
		-0.161221, -0.981354, -0.104649,
		36.406971, 29.860975, 26.059605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206467, 30.196232, 26.165470>,  <36.519825, 30.547924, 26.132858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206467, 30.196232, 26.165470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934483, 29.997902, 25.949392>,  <36.771290, 29.878904, 25.819746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934483, 29.997902, 25.949392>,  <37.206467, 30.196232, 26.165470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934483, 29.997902, 25.949392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544834, 0.151395, -0.824764,
		0.490721, -0.855124, 0.167200,
		-0.679962, -0.495825, -0.540193,
		36.730495, 29.849154, 25.787334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593975, 30.004938, 25.604137>,  <37.206467, 30.196232, 26.165470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593975, 30.004938, 25.604137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226593, 29.909077, 25.478277>,  <37.006165, 29.851559, 25.402761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226593, 29.909077, 25.478277>,  <37.593975, 30.004938, 25.604137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226593, 29.909077, 25.478277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289859, 0.133431, -0.947722,
		0.269113, -0.961645, -0.053084,
		-0.918455, -0.239658, -0.314649,
		36.951057, 29.837179, 25.383883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717518, 29.492147, 24.998014>,  <37.593975, 30.004938, 25.604137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717518, 29.492147, 24.998014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363457, 29.678038, 24.988806>,  <37.151020, 29.789572, 24.983280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363457, 29.678038, 24.988806>,  <37.717518, 29.492147, 24.998014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363457, 29.678038, 24.988806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083703, 0.110365, -0.990360,
		-0.457705, -0.878550, -0.136589,
		-0.885155, 0.464726, -0.023023,
		37.097912, 29.817455, 24.981899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364716, 29.199684, 24.482075>,  <37.717518, 29.492147, 24.998014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364716, 29.199684, 24.482075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164356, 29.541676, 24.535906>,  <37.044140, 29.746870, 24.568205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.164356, 29.541676, 24.535906>,  <37.364716, 29.199684, 24.482075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164356, 29.541676, 24.535906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019172, 0.144490, -0.989321,
		-0.865291, -0.498133, -0.055984,
		-0.500902, 0.854977, 0.134576,
		37.014084, 29.798168, 24.576279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891590, 29.214489, 23.940662>,  <37.364716, 29.199684, 24.482075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891590, 29.214489, 23.940662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917290, 29.589899, 24.076336>,  <36.932709, 29.815145, 24.157740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917290, 29.589899, 24.076336>,  <36.891590, 29.214489, 23.940662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917290, 29.589899, 24.076336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221815, 0.317951, -0.921794,
		-0.972969, 0.134464, -0.187750,
		0.064253, 0.938523, 0.339183,
		36.936565, 29.871456, 24.178091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524090, 29.604988, 23.443489>,  <36.891590, 29.214489, 23.940662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524090, 29.604988, 23.443489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737206, 29.875526, 23.646935>,  <36.865074, 30.037849, 23.769001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.737206, 29.875526, 23.646935>,  <36.524090, 29.604988, 23.443489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737206, 29.875526, 23.646935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250461, 0.448063, -0.858201,
		-0.808332, 0.584631, 0.069326,
		0.532793, 0.676348, 0.508611,
		36.897045, 30.078430, 23.799519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369476, 30.332104, 23.151745>,  <36.524090, 29.604988, 23.443489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369476, 30.332104, 23.151745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726288, 30.377319, 23.326792>,  <36.940376, 30.404449, 23.431820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726288, 30.377319, 23.326792>,  <36.369476, 30.332104, 23.151745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726288, 30.377319, 23.326792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350750, 0.437528, -0.827976,
		-0.285063, 0.892072, 0.350638,
		0.892028, 0.113039, 0.437617,
		36.993896, 30.411232, 23.458076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603241, 30.946470, 22.931366>,  <36.369476, 30.332104, 23.151745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603241, 30.946470, 22.931366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.944550, 30.788370, 23.067429>,  <37.149334, 30.693510, 23.149067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.944550, 30.788370, 23.067429>,  <36.603241, 30.946470, 22.931366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944550, 30.788370, 23.067429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479219, 0.337129, -0.810366,
		0.205620, 0.854472, 0.477073,
		0.853270, -0.395250, 0.340159,
		37.200531, 30.669796, 23.169476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113033, 31.493135, 23.034512>,  <36.603241, 30.946470, 22.931366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113033, 31.493135, 23.034512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335926, 31.163074, 22.997385>,  <37.469662, 30.965038, 22.975109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335926, 31.163074, 22.997385>,  <37.113033, 31.493135, 23.034512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335926, 31.163074, 22.997385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494171, 0.419376, -0.761524,
		0.667299, 0.378478, 0.641457,
		0.557231, -0.825153, -0.092816,
		37.503094, 30.915529, 22.969540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718761, 31.773384, 23.014139>,  <37.113033, 31.493135, 23.034512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718761, 31.773384, 23.014139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730255, 31.416885, 22.833096>,  <37.737152, 31.202986, 22.724470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730255, 31.416885, 22.833096>,  <37.718761, 31.773384, 23.014139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730255, 31.416885, 22.833096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619715, 0.371156, -0.691518,
		0.784301, -0.260621, 0.562982,
		0.028730, -0.891246, -0.452609,
		37.738873, 31.149511, 22.697313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382904, 31.743111, 23.013742>,  <37.718761, 31.773384, 23.014139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382904, 31.743111, 23.013742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.232128, 31.476522, 22.756453>,  <38.141663, 31.316570, 22.602079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.232128, 31.476522, 22.756453>,  <38.382904, 31.743111, 23.013742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232128, 31.476522, 22.756453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442794, 0.480295, -0.757133,
		0.813544, -0.570206, 0.114069,
		-0.376935, -0.666470, -0.643224,
		38.119049, 31.276581, 22.563486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904888, 31.474083, 22.587936>,  <38.382904, 31.743111, 23.013742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904888, 31.474083, 22.587936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556156, 31.426733, 22.397823>,  <38.346916, 31.398323, 22.283756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556156, 31.426733, 22.397823>,  <38.904888, 31.474083, 22.587936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556156, 31.426733, 22.397823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413777, 0.341248, -0.844002,
		0.262097, -0.932490, -0.248531,
		-0.871834, -0.118374, -0.475283,
		38.294605, 31.391220, 22.255238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620663, 31.135637, 22.640678>,  <38.904888, 31.474083, 22.587936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620663, 31.135637, 22.640678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014149, 31.147873, 22.711531>,  <40.250240, 31.155214, 22.754042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014149, 31.147873, 22.711531>,  <39.620663, 31.135637, 22.640678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014149, 31.147873, 22.711531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155408, -0.350475, 0.923588,
		0.090330, -0.936072, -0.340013,
		0.983712, 0.030587, 0.177132,
		40.309261, 31.157049, 22.764669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820950, 30.521837, 22.897051>,  <39.620663, 31.135637, 22.640678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820950, 30.521837, 22.897051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109108, 30.761248, 23.037214>,  <40.282005, 30.904894, 23.121313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109108, 30.761248, 23.037214>,  <39.820950, 30.521837, 22.897051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109108, 30.761248, 23.037214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062375, -0.447277, 0.892218,
		0.690748, -0.664611, -0.284886,
		0.720400, 0.598528, 0.350411,
		40.325230, 30.940805, 23.142338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138741, 30.060640, 23.159555>,  <39.820950, 30.521837, 22.897051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138741, 30.060640, 23.159555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300117, 30.388861, 23.321512>,  <40.396942, 30.585793, 23.418686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300117, 30.388861, 23.321512>,  <40.138741, 30.060640, 23.159555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300117, 30.388861, 23.321512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024926, -0.432480, 0.901299,
		0.914667, -0.373712, -0.154027,
		0.403439, 0.820549, 0.404890,
		40.421150, 30.635025, 23.442980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736477, 29.861910, 23.501171>,  <40.138741, 30.060640, 23.159555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736477, 29.861910, 23.501171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.612713, 30.203396, 23.668711>,  <40.538456, 30.408287, 23.769236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.612713, 30.203396, 23.668711>,  <40.736477, 29.861910, 23.501171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612713, 30.203396, 23.668711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011636, -0.437032, 0.899371,
		0.950859, 0.283145, 0.125287,
		-0.309407, 0.853716, 0.418851,
		40.519890, 30.459511, 23.794365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001217, 29.859390, 24.304148>,  <40.736477, 29.861910, 23.501171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001217, 29.859390, 24.304148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716728, 30.139811, 24.283398>,  <40.546036, 30.308064, 24.270948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716728, 30.139811, 24.283398>,  <41.001217, 29.859390, 24.304148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716728, 30.139811, 24.283398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166310, -0.096107, 0.981379,
		0.683013, 0.706603, 0.184946,
		-0.711220, 0.701053, -0.051873,
		40.503361, 30.350126, 24.267836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098301, 30.346167, 24.829878>,  <41.001217, 29.859390, 24.304148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098301, 30.346167, 24.829878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710594, 30.395075, 24.744488>,  <40.477970, 30.424419, 24.693253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710594, 30.395075, 24.744488>,  <41.098301, 30.346167, 24.829878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710594, 30.395075, 24.744488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215724, -0.005293, 0.976440,
		0.118262, 0.992482, 0.031507,
		-0.969266, 0.122272, -0.213476,
		40.419815, 30.431757, 24.680445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906185, 30.765673, 25.327374>,  <41.098301, 30.346167, 24.829878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906185, 30.765673, 25.327374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586372, 30.567200, 25.191992>,  <40.394485, 30.448116, 25.110764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586372, 30.567200, 25.191992>,  <40.906185, 30.765673, 25.327374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586372, 30.567200, 25.191992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282072, -0.187302, 0.940932,
		-0.530269, 0.847773, 0.009794,
		-0.799531, -0.496184, -0.338454,
		40.346512, 30.418344, 25.090456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454117, 31.076338, 25.729841>,  <40.906185, 30.765673, 25.327374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454117, 31.076338, 25.729841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306206, 30.732876, 25.587870>,  <40.217457, 30.526798, 25.502687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306206, 30.732876, 25.587870>,  <40.454117, 31.076338, 25.729841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306206, 30.732876, 25.587870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375141, -0.211502, 0.902517,
		-0.850018, 0.466882, -0.243907,
		-0.369782, -0.858655, -0.354927,
		40.195271, 30.475279, 25.481392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641518, 31.108282, 25.893686>,  <40.454117, 31.076338, 25.729841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641518, 31.108282, 25.893686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775837, 30.735336, 25.840118>,  <39.856430, 30.511568, 25.807978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775837, 30.735336, 25.840118>,  <39.641518, 31.108282, 25.893686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775837, 30.735336, 25.840118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378330, -0.263706, 0.887314,
		-0.862616, -0.247291, -0.441294,
		0.335797, -0.932366, -0.133919,
		39.876575, 30.455627, 25.799942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068626, 30.632431, 26.064808>,  <39.641518, 31.108282, 25.893686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068626, 30.632431, 26.064808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405910, 30.418943, 26.090534>,  <39.608280, 30.290852, 26.105970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405910, 30.418943, 26.090534>,  <39.068626, 30.632431, 26.064808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405910, 30.418943, 26.090534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252544, -0.287666, 0.923834,
		-0.474566, -0.795232, -0.377351,
		0.843213, -0.533718, 0.064314,
		39.658875, 30.258827, 26.109829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875408, 30.089132, 26.507759>,  <39.068626, 30.632431, 26.064808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875408, 30.089132, 26.507759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.275055, 30.084009, 26.523804>,  <39.514843, 30.080935, 26.533430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.275055, 30.084009, 26.523804>,  <38.875408, 30.089132, 26.507759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275055, 30.084009, 26.523804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041440, -0.467730, 0.882899,
		0.007453, -0.883779, -0.467846,
		0.999113, -0.012808, 0.040110,
		39.574787, 30.080166, 26.535837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106945, 29.434818, 26.847736>,  <38.875408, 30.089132, 26.507759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106945, 29.434818, 26.847736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423306, 29.675941, 26.889872>,  <39.613121, 29.820616, 26.915152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.423306, 29.675941, 26.889872>,  <39.106945, 29.434818, 26.847736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423306, 29.675941, 26.889872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099109, -0.296043, 0.950019,
		0.603864, -0.740932, -0.293885,
		0.790902, 0.602809, 0.105336,
		39.660576, 29.856785, 26.921473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604366, 28.953974, 27.176844>,  <39.106945, 29.434818, 26.847736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604366, 28.953974, 27.176844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692719, 29.338799, 27.240904>,  <39.745731, 29.569693, 27.279341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692719, 29.338799, 27.240904>,  <39.604366, 28.953974, 27.176844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692719, 29.338799, 27.240904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090937, -0.183808, 0.978747,
		0.971051, -0.201626, -0.128088,
		0.220884, 0.962061, 0.160152,
		39.758984, 29.627417, 27.288950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148716, 28.947706, 27.632675>,  <39.604366, 28.953974, 27.176844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148716, 28.947706, 27.632675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983879, 29.311098, 27.660503>,  <39.884975, 29.529133, 27.677200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983879, 29.311098, 27.660503>,  <40.148716, 28.947706, 27.632675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983879, 29.311098, 27.660503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148327, -0.008448, 0.988902,
		0.898986, 0.417842, -0.131271,
		-0.412096, 0.908480, 0.069572,
		39.860249, 29.583643, 27.681376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.075539, 34.286663, 23.875883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797100, 34.518196, 23.705986>,  <42.630039, 34.657116, 23.604048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797100, 34.518196, 23.705986>,  <43.075539, 34.286663, 23.875883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797100, 34.518196, 23.705986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622905, 0.192747, -0.758181,
		-0.356993, -0.792338, -0.494728,
		-0.696093, 0.578834, -0.424742,
		42.588272, 34.691845, 23.578564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020756, 34.114529, 23.166122>,  <43.075539, 34.286663, 23.875883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020756, 34.114529, 23.166122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.854568, 34.477692, 23.188356>,  <42.754856, 34.695591, 23.201696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.854568, 34.477692, 23.188356>,  <43.020756, 34.114529, 23.166122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854568, 34.477692, 23.188356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480357, 0.270892, -0.834191,
		-0.772425, -0.319881, -0.548667,
		-0.415472, 0.907906, 0.055587,
		42.729927, 34.750065, 23.205032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630878, 34.283813, 22.561922>,  <43.020756, 34.114529, 23.166122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630878, 34.283813, 22.561922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682255, 34.650650, 22.712891>,  <42.713081, 34.870750, 22.803473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682255, 34.650650, 22.712891>,  <42.630878, 34.283813, 22.561922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682255, 34.650650, 22.712891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031661, 0.384174, -0.922718,
		-0.991211, 0.106568, 0.078381,
		0.128444, 0.917090, 0.377423,
		42.720787, 34.925777, 22.826118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144184, 34.678318, 22.188589>,  <42.630878, 34.283813, 22.561922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144184, 34.678318, 22.188589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.452396, 34.879356, 22.345398>,  <42.637325, 34.999981, 22.439484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.452396, 34.879356, 22.345398>,  <42.144184, 34.678318, 22.188589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452396, 34.879356, 22.345398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137259, 0.469766, -0.872055,
		-0.622450, 0.725752, 0.292983,
		0.770529, 0.502597, 0.392022,
		42.683556, 35.030136, 22.463005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039806, 35.442150, 21.937799>,  <42.144184, 34.678318, 22.188589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039806, 35.442150, 21.937799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.419937, 35.374592, 22.042379>,  <42.648014, 35.334057, 22.105127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.419937, 35.374592, 22.042379>,  <42.039806, 35.442150, 21.937799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419937, 35.374592, 22.042379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302811, 0.307347, -0.902132,
		0.072009, 0.936490, 0.343223,
		0.950326, -0.168893, 0.261448,
		42.705036, 35.323925, 22.120813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504845, 36.149399, 21.771736>,  <42.039806, 35.442150, 21.937799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504845, 36.149399, 21.771736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751560, 35.834988, 21.788363>,  <42.899590, 35.646339, 21.798338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751560, 35.834988, 21.788363>,  <42.504845, 36.149399, 21.771736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751560, 35.834988, 21.788363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477160, 0.331381, -0.813944,
		0.626008, 0.521869, 0.579454,
		0.616792, -0.786028, 0.041568,
		42.936596, 35.599178, 21.800833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138851, 36.595074, 21.662729>,  <42.504845, 36.149399, 21.771736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138851, 36.595074, 21.662729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.187534, 36.205330, 21.587034>,  <43.216743, 35.971485, 21.541616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.187534, 36.205330, 21.587034>,  <43.138851, 36.595074, 21.662729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187534, 36.205330, 21.587034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428970, 0.223566, -0.875216,
		0.895081, 0.025346, 0.445181,
		0.121711, -0.974359, -0.189237,
		43.224049, 35.913021, 21.530264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858032, 36.392033, 21.533085>,  <43.138851, 36.595074, 21.662729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858032, 36.392033, 21.533085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.643925, 36.112339, 21.343534>,  <43.515461, 35.944523, 21.229803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.643925, 36.112339, 21.343534>,  <43.858032, 36.392033, 21.533085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643925, 36.112339, 21.343534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509458, 0.180237, -0.841408,
		0.673751, -0.691799, 0.259755,
		-0.535268, -0.699234, -0.473878,
		43.483345, 35.902569, 21.201370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343052, 35.991951, 21.215887>,  <43.858032, 36.392033, 21.533085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343052, 35.991951, 21.215887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.020031, 35.880314, 21.008053>,  <43.826218, 35.813332, 20.883352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.020031, 35.880314, 21.008053>,  <44.343052, 35.991951, 21.215887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020031, 35.880314, 21.008053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523434, 0.066854, -0.849440,
		0.271811, -0.957933, 0.092101,
		-0.807549, -0.279096, -0.519586,
		43.777767, 35.796585, 20.852177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511086, 35.500683, 20.778831>,  <44.343052, 35.991951, 21.215887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511086, 35.500683, 20.778831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.167629, 35.611237, 20.606155>,  <43.961555, 35.677567, 20.502550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.167629, 35.611237, 20.606155>,  <44.511086, 35.500683, 20.778831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167629, 35.611237, 20.606155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450662, 0.005765, -0.892676,
		-0.244229, -0.961031, -0.129504,
		-0.858636, 0.276380, -0.431692,
		43.910038, 35.694149, 20.476648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518929, 35.133144, 20.149406>,  <44.511086, 35.500683, 20.778831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518929, 35.133144, 20.149406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.237305, 35.411301, 20.091814>,  <44.068333, 35.578194, 20.057259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.237305, 35.411301, 20.091814>,  <44.518929, 35.133144, 20.149406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237305, 35.411301, 20.091814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219549, 0.020332, -0.975389,
		-0.675353, -0.718340, -0.166988,
		-0.704057, 0.695395, -0.143980,
		44.026089, 35.619919, 20.048620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147449, 34.915524, 19.442350>,  <44.518929, 35.133144, 20.149406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147449, 34.915524, 19.442350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.061749, 35.302299, 19.497677>,  <44.010326, 35.534363, 19.530872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.061749, 35.302299, 19.497677>,  <44.147449, 34.915524, 19.442350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061749, 35.302299, 19.497677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210644, 0.184010, -0.960088,
		-0.953795, -0.176567, -0.243104,
		-0.214253, 0.966936, 0.138315,
		43.997471, 35.592381, 19.539171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625397, 35.097294, 18.932413>,  <44.147449, 34.915524, 19.442350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625397, 35.097294, 18.932413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.875420, 35.387157, 19.048466>,  <44.025433, 35.561077, 19.118097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.875420, 35.387157, 19.048466>,  <43.625397, 35.097294, 18.932413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875420, 35.387157, 19.048466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285351, 0.133833, -0.949033,
		-0.726553, 0.675988, -0.123129,
		0.625056, 0.724658, 0.290131,
		44.062935, 35.604553, 19.135506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162827, 34.622623, 18.442076>,  <43.625397, 35.097294, 18.932413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162827, 34.622623, 18.442076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865955, 34.441032, 18.244865>,  <42.687832, 34.332077, 18.126539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865955, 34.441032, 18.244865>,  <43.162827, 34.622623, 18.442076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865955, 34.441032, 18.244865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112742, -0.640588, 0.759563,
		-0.660649, 0.619318, 0.424250,
		-0.742181, -0.453974, -0.493027,
		42.643303, 34.304840, 18.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611599, 34.565304, 18.862890>,  <43.162827, 34.622623, 18.442076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611599, 34.565304, 18.862890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578388, 34.267834, 18.597544>,  <42.558464, 34.089352, 18.438335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578388, 34.267834, 18.597544>,  <42.611599, 34.565304, 18.862890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578388, 34.267834, 18.597544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116266, -0.653892, 0.747601,
		-0.989742, 0.139197, -0.032174,
		-0.083026, -0.743673, -0.663368,
		42.553482, 34.044731, 18.398533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034954, 34.243168, 18.973429>,  <42.611599, 34.565304, 18.862890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034954, 34.243168, 18.973429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.278469, 33.976070, 18.802084>,  <42.424576, 33.815811, 18.699276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.278469, 33.976070, 18.802084>,  <42.034954, 34.243168, 18.973429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278469, 33.976070, 18.802084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124765, -0.613817, 0.779527,
		-0.783464, -0.421119, -0.456994,
		0.608784, -0.667748, -0.428363,
		42.461105, 33.775745, 18.673574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801422, 33.623665, 19.194098>,  <42.034954, 34.243168, 18.973429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801422, 33.623665, 19.194098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.127815, 33.441422, 19.051775>,  <42.323650, 33.332077, 18.966381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.127815, 33.441422, 19.051775>,  <41.801422, 33.623665, 19.194098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127815, 33.441422, 19.051775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000814, -0.614594, 0.788843,
		-0.578078, -0.643971, -0.501126,
		0.815981, -0.455606, -0.355808,
		42.372608, 33.304741, 18.945032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689838, 32.929958, 19.124477>,  <41.801422, 33.623665, 19.194098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689838, 32.929958, 19.124477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088047, 32.945179, 19.159109>,  <42.326973, 32.954311, 19.179888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088047, 32.945179, 19.159109>,  <41.689838, 32.929958, 19.124477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088047, 32.945179, 19.159109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034919, -0.702885, 0.710446,
		0.087892, -0.710285, -0.698405,
		0.995518, 0.038055, 0.086580,
		42.386703, 32.956596, 19.185083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996552, 32.264320, 18.950323>,  <41.689838, 32.929958, 19.124477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996552, 32.264320, 18.950323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210014, 32.478840, 19.211885>,  <42.338093, 32.607552, 19.368824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210014, 32.478840, 19.211885>,  <41.996552, 32.264320, 18.950323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210014, 32.478840, 19.211885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092305, -0.731654, 0.675397,
		0.840651, -0.420787, -0.340946,
		0.533653, 0.536303, 0.653907,
		42.370110, 32.639732, 19.408058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464783, 31.783785, 19.318209>,  <41.996552, 32.264320, 18.950323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464783, 31.783785, 19.318209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.457405, 32.107410, 19.553183>,  <42.452980, 32.301586, 19.694166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.457405, 32.107410, 19.553183>,  <42.464783, 31.783785, 19.318209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457405, 32.107410, 19.553183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250118, -0.572585, 0.780761,
		0.968040, -0.132528, 0.212922,
		-0.018443, 0.809063, 0.587433,
		42.451874, 32.350128, 19.729412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590851, 31.533371, 19.908051>,  <42.464783, 31.783785, 19.318209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590851, 31.533371, 19.908051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.483212, 31.898972, 20.029499>,  <42.418629, 32.118332, 20.102367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.483212, 31.898972, 20.029499>,  <42.590851, 31.533371, 19.908051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483212, 31.898972, 20.029499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379649, -0.390389, 0.838727,
		0.885129, 0.110430, 0.452053,
		-0.269098, 0.914003, 0.303620,
		42.402481, 32.173172, 20.120584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754608, 31.488752, 20.620642>,  <42.590851, 31.533371, 19.908051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754608, 31.488752, 20.620642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.503387, 31.798851, 20.593666>,  <42.352657, 31.984911, 20.577480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.503387, 31.798851, 20.593666>,  <42.754608, 31.488752, 20.620642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503387, 31.798851, 20.593666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483080, -0.320474, 0.814819,
		0.610075, 0.544323, 0.575779,
		-0.628047, 0.775248, -0.067438,
		42.314972, 32.031425, 20.573435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767269, 31.782635, 21.295551>,  <42.754608, 31.488752, 20.620642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767269, 31.782635, 21.295551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.412762, 31.838833, 21.119015>,  <42.200058, 31.872551, 21.013092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.412762, 31.838833, 21.119015>,  <42.767269, 31.782635, 21.295551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412762, 31.838833, 21.119015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462293, -0.326735, 0.824336,
		-0.028388, 0.934615, 0.354525,
		-0.886272, 0.140494, -0.441342,
		42.146881, 31.880981, 20.986612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365273, 31.923279, 21.825228>,  <42.767269, 31.782635, 21.295551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365273, 31.923279, 21.825228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.083748, 31.880505, 21.544310>,  <41.914833, 31.854839, 21.375759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.083748, 31.880505, 21.544310>,  <42.365273, 31.923279, 21.825228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083748, 31.880505, 21.544310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600954, -0.437565, 0.668873,
		-0.378827, 0.892806, 0.243698,
		-0.703807, -0.106935, -0.702296,
		41.872604, 31.848425, 21.333620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795338, 32.330826, 22.149441>,  <42.365273, 31.923279, 21.825228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795338, 32.330826, 22.149441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.587463, 32.140667, 21.865488>,  <41.462738, 32.026573, 21.695116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.587463, 32.140667, 21.865488>,  <41.795338, 32.330826, 22.149441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587463, 32.140667, 21.865488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704348, -0.231875, 0.670915,
		-0.483554, 0.848665, -0.214343,
		-0.519682, -0.475396, -0.709880,
		41.431561, 31.998049, 21.652525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133335, 32.598228, 22.167698>,  <41.795338, 32.330826, 22.149441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133335, 32.598228, 22.167698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.122696, 32.229088, 22.014000>,  <41.116310, 32.007603, 21.921782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.122696, 32.229088, 22.014000>,  <41.133335, 32.598228, 22.167698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122696, 32.229088, 22.014000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445780, -0.333092, 0.830861,
		-0.894747, 0.193390, -0.402527,
		-0.026602, -0.922849, -0.384243,
		41.114716, 31.952232, 21.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407833, 32.366367, 22.112329>,  <41.133335, 32.598228, 22.167698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407833, 32.366367, 22.112329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632561, 32.036060, 22.132179>,  <40.767399, 31.837875, 22.144089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632561, 32.036060, 22.132179>,  <40.407833, 32.366367, 22.112329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632561, 32.036060, 22.132179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525534, -0.309940, 0.792307,
		-0.638885, -0.471211, -0.608101,
		0.561818, -0.825771, 0.049622,
		40.801105, 31.788330, 22.147066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873081, 31.769133, 22.194210>,  <40.407833, 32.366367, 22.112329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873081, 31.769133, 22.194210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214401, 31.601044, 22.317684>,  <40.419193, 31.500191, 22.391768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214401, 31.601044, 22.317684>,  <39.873081, 31.769133, 22.194210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214401, 31.601044, 22.317684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471369, -0.368614, 0.801208,
		-0.222902, -0.829177, -0.512621,
		0.853303, -0.420224, 0.308684,
		40.470390, 31.474976, 22.410290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149273, 31.420023, 21.919773>,  <39.873081, 31.769133, 22.194210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149273, 31.420023, 21.919773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.757378, 31.489235, 21.879429>,  <38.522240, 31.530762, 21.855223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.757378, 31.489235, 21.879429>,  <39.149273, 31.420023, 21.919773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757378, 31.489235, 21.879429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188813, 0.630002, -0.753291,
		-0.066798, -0.757072, -0.649908,
		-0.979738, 0.173030, -0.100862,
		38.463455, 31.541143, 21.849171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116848, 31.450010, 21.102524>,  <39.149273, 31.420023, 21.919773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116848, 31.450010, 21.102524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774731, 31.599375, 21.246216>,  <38.569462, 31.688993, 21.332432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774731, 31.599375, 21.246216>,  <39.116848, 31.450010, 21.102524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774731, 31.599375, 21.246216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052517, 0.752195, -0.656845,
		-0.515483, -0.542926, -0.662954,
		-0.855289, 0.373409, 0.359231,
		38.518143, 31.711397, 21.353985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571388, 31.479719, 20.573929>,  <39.116848, 31.450010, 21.102524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571388, 31.479719, 20.573929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.506733, 31.760124, 20.851765>,  <38.467941, 31.928368, 21.018467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.506733, 31.760124, 20.851765>,  <38.571388, 31.479719, 20.573929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506733, 31.760124, 20.851765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196337, 0.666932, -0.718786,
		-0.967122, -0.252557, 0.029832,
		-0.161638, 0.701011, 0.694591,
		38.458241, 31.970427, 21.060143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273827, 31.982874, 20.195692>,  <38.571388, 31.479719, 20.573929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273827, 31.982874, 20.195692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344910, 32.188881, 20.531115>,  <38.387558, 32.312485, 20.732368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344910, 32.188881, 20.531115>,  <38.273827, 31.982874, 20.195692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344910, 32.188881, 20.531115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294115, 0.785375, -0.544686,
		-0.939104, 0.343426, -0.011909,
		0.177707, 0.515020, 0.838555,
		38.398220, 32.343388, 20.782681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818157, 32.583691, 20.254768>,  <38.273827, 31.982874, 20.195692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818157, 32.583691, 20.254768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158493, 32.645626, 20.455606>,  <38.362694, 32.682785, 20.576109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158493, 32.645626, 20.455606>,  <37.818157, 32.583691, 20.254768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158493, 32.645626, 20.455606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213275, 0.771557, -0.599345,
		-0.480194, 0.617030, 0.623448,
		0.850839, 0.154836, 0.502094,
		38.413746, 32.692078, 20.606236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762684, 33.204033, 20.274530>,  <37.818157, 32.583691, 20.254768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762684, 33.204033, 20.274530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149902, 33.147469, 20.357368>,  <38.382233, 33.113529, 20.407070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149902, 33.147469, 20.357368>,  <37.762684, 33.204033, 20.274530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149902, 33.147469, 20.357368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246807, 0.683514, -0.686946,
		-0.044409, 0.716108, 0.696575,
		0.968047, -0.141413, 0.207094,
		38.440315, 33.105045, 20.419497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136749, 33.931618, 20.326563>,  <37.762684, 33.204033, 20.274530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136749, 33.931618, 20.326563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423565, 33.658119, 20.272392>,  <38.595654, 33.494019, 20.239889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.423565, 33.658119, 20.272392>,  <38.136749, 33.931618, 20.326563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423565, 33.658119, 20.272392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458854, 0.609285, -0.646702,
		0.524697, 0.401570, 0.750623,
		0.717040, -0.683749, -0.135428,
		38.638676, 33.452995, 20.231764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167995, 34.479000, 19.824646>,  <38.136749, 33.931618, 20.326563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167995, 34.479000, 19.824646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891857, 34.755932, 19.740641>,  <37.726173, 34.922092, 19.690237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891857, 34.755932, 19.740641>,  <38.167995, 34.479000, 19.824646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891857, 34.755932, 19.740641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227548, 0.067775, 0.971405,
		0.686767, 0.718391, 0.110751,
		-0.690343, 0.692330, -0.210014,
		37.684753, 34.963631, 19.677637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210346, 34.961121, 20.401882>,  <38.167995, 34.479000, 19.824646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210346, 34.961121, 20.401882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855038, 34.983250, 20.219494>,  <37.641853, 34.996529, 20.110060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855038, 34.983250, 20.219494>,  <38.210346, 34.961121, 20.401882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855038, 34.983250, 20.219494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453494, 0.051925, 0.889746,
		0.072901, 0.997117, -0.021034,
		-0.888273, 0.055325, -0.455972,
		37.588554, 34.999847, 20.082703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841881, 35.384617, 20.780298>,  <38.210346, 34.961121, 20.401882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841881, 35.384617, 20.780298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564606, 35.167713, 20.590376>,  <37.398239, 35.037571, 20.476423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564606, 35.167713, 20.590376>,  <37.841881, 35.384617, 20.780298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564606, 35.167713, 20.590376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522589, -0.075548, 0.849231,
		-0.496377, 0.836806, -0.231011,
		-0.693189, -0.542262, -0.474806,
		37.356647, 35.005035, 20.447933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231846, 35.469990, 21.205414>,  <37.841881, 35.384617, 20.780298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231846, 35.469990, 21.205414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122726, 35.158638, 20.979242>,  <37.057255, 34.971828, 20.843540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122726, 35.158638, 20.979242>,  <37.231846, 35.469990, 21.205414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122726, 35.158638, 20.979242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553725, -0.353585, 0.753901,
		-0.786747, 0.518754, -0.334550,
		-0.272797, -0.778378, -0.565429,
		37.040886, 34.925125, 20.809614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380585, 35.351212, 21.230551>,  <37.231846, 35.469990, 21.205414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380585, 35.351212, 21.230551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537941, 35.006260, 21.103085>,  <36.632355, 34.799290, 21.026606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537941, 35.006260, 21.103085>,  <36.380585, 35.351212, 21.230551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537941, 35.006260, 21.103085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681115, -0.506184, 0.529019,
		-0.617518, 0.008939, -0.786506,
		0.393387, -0.862380, -0.318666,
		36.655956, 34.747547, 21.007484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919106, 34.907143, 21.046452>,  <36.380585, 35.351212, 21.230551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919106, 34.907143, 21.046452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204029, 34.634663, 21.114082>,  <36.374985, 34.471176, 21.154661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204029, 34.634663, 21.114082>,  <35.919106, 34.907143, 21.046452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204029, 34.634663, 21.114082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623354, -0.503287, 0.598441,
		-0.322562, -0.531670, -0.783123,
		0.712309, -0.681197, 0.169077,
		36.417721, 34.430302, 21.164804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649734, 34.198986, 21.007580>,  <35.919106, 34.907143, 21.046452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649734, 34.198986, 21.007580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975777, 34.198521, 21.239307>,  <36.171402, 34.198242, 21.378344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975777, 34.198521, 21.239307>,  <35.649734, 34.198986, 21.007580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975777, 34.198521, 21.239307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536305, -0.379647, 0.753820,
		0.219059, -0.925131, -0.310075,
		0.815101, -0.001164, 0.579317,
		36.220306, 34.198170, 21.413103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.569340, 37.836632, 18.705832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740894, 37.684681, 19.033672>,  <42.843826, 37.593510, 19.230377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740894, 37.684681, 19.033672>,  <42.569340, 37.836632, 18.705832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740894, 37.684681, 19.033672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839641, 0.167075, 0.516807,
		-0.333259, -0.909823, -0.247306,
		0.428884, -0.379879, 0.819603,
		42.869560, 37.570717, 19.279554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096725, 37.437447, 18.965794>,  <42.569340, 37.836632, 18.705832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096725, 37.437447, 18.965794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329422, 37.505371, 19.283976>,  <42.469040, 37.546127, 19.474884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329422, 37.505371, 19.283976>,  <42.096725, 37.437447, 18.965794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329422, 37.505371, 19.283976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801888, -0.044054, 0.595848,
		0.136224, -0.984492, 0.110541,
		0.581738, 0.169810, 0.795453,
		42.503944, 37.556313, 19.522612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718273, 37.042389, 19.500967>,  <42.096725, 37.437447, 18.965794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718273, 37.042389, 19.500967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990311, 37.249493, 19.708582>,  <42.153534, 37.373753, 19.833151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990311, 37.249493, 19.708582>,  <41.718273, 37.042389, 19.500967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990311, 37.249493, 19.708582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573174, -0.065908, 0.816779,
		0.457100, -0.852986, 0.251940,
		0.680096, 0.517755, 0.519036,
		42.194340, 37.404819, 19.864292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919384, 36.694363, 20.136156>,  <41.718273, 37.042389, 19.500967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919384, 36.694363, 20.136156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.003265, 37.079163, 20.206112>,  <42.053593, 37.310043, 20.248085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.003265, 37.079163, 20.206112>,  <41.919384, 36.694363, 20.136156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003265, 37.079163, 20.206112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449110, -0.064111, 0.891173,
		0.868518, -0.265427, 0.418598,
		0.209705, 0.961997, 0.174888,
		42.066177, 37.367764, 20.258579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299946, 36.682613, 20.736219>,  <41.919384, 36.694363, 20.136156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299946, 36.682613, 20.736219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.153439, 37.054783, 20.731125>,  <42.065533, 37.278084, 20.728067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.153439, 37.054783, 20.731125>,  <42.299946, 36.682613, 20.736219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153439, 37.054783, 20.731125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409523, -0.148892, 0.900068,
		0.835546, 0.334884, 0.435564,
		-0.366270, 0.930421, -0.012737,
		42.043556, 37.333908, 20.727304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342827, 36.855972, 21.422836>,  <42.299946, 36.682613, 20.736219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342827, 36.855972, 21.422836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.111115, 37.155697, 21.294481>,  <41.972088, 37.335529, 21.217468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.111115, 37.155697, 21.294481>,  <42.342827, 36.855972, 21.422836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111115, 37.155697, 21.294481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448135, 0.036077, 0.893238,
		0.680888, 0.661237, 0.314893,
		-0.579281, 0.749310, -0.320887,
		41.937328, 37.380489, 21.198215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362583, 37.428947, 21.908140>,  <42.342827, 36.855972, 21.422836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362583, 37.428947, 21.908140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.013340, 37.474545, 21.718533>,  <41.803795, 37.501904, 21.604769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.013340, 37.474545, 21.718533>,  <42.362583, 37.428947, 21.908140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013340, 37.474545, 21.718533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479033, -0.019846, 0.877572,
		0.090626, 0.993284, 0.071932,
		-0.873106, 0.113989, -0.474017,
		41.751408, 37.508739, 21.576328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023743, 38.015812, 22.200008>,  <42.362583, 37.428947, 21.908140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023743, 38.015812, 22.200008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.737347, 37.819576, 22.001341>,  <41.565510, 37.701836, 21.882141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.737347, 37.819576, 22.001341>,  <42.023743, 38.015812, 22.200008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737347, 37.819576, 22.001341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527804, -0.085243, 0.845078,
		-0.456925, 0.867210, -0.197903,
		-0.715990, -0.490592, -0.496667,
		41.522549, 37.672398, 21.852341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425812, 38.355106, 22.264278>,  <42.023743, 38.015812, 22.200008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425812, 38.355106, 22.264278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315079, 37.976124, 22.200161>,  <41.248638, 37.748734, 22.161692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315079, 37.976124, 22.200161>,  <41.425812, 38.355106, 22.264278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315079, 37.976124, 22.200161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623258, 0.050076, 0.780412,
		-0.731378, 0.315946, -0.604371,
		-0.276832, -0.947455, -0.160291,
		41.232029, 37.691887, 22.152073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749130, 38.234779, 22.540503>,  <41.425812, 38.355106, 22.264278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749130, 38.234779, 22.540503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838192, 37.850418, 22.474678>,  <40.891628, 37.619801, 22.435183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838192, 37.850418, 22.474678>,  <40.749130, 38.234779, 22.540503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838192, 37.850418, 22.474678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616545, -0.269548, 0.739741,
		-0.755181, -0.063247, -0.652459,
		0.222655, -0.960908, -0.164563,
		40.904987, 37.562145, 22.425310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053513, 37.825939, 22.700438>,  <40.749130, 38.234779, 22.540503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053513, 37.825939, 22.700438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365822, 37.577160, 22.724344>,  <40.553207, 37.427891, 22.738688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365822, 37.577160, 22.724344>,  <40.053513, 37.825939, 22.700438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365822, 37.577160, 22.724344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379165, -0.395607, 0.836498,
		-0.496618, -0.675775, -0.544700,
		0.780772, -0.621951, 0.059765,
		40.600056, 37.390575, 22.742275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812901, 37.136208, 22.779522>,  <40.053513, 37.825939, 22.700438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812901, 37.136208, 22.779522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181705, 37.122330, 22.933762>,  <40.402988, 37.114002, 23.026306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181705, 37.122330, 22.933762>,  <39.812901, 37.136208, 22.779522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181705, 37.122330, 22.933762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383420, -0.219878, 0.897019,
		0.053662, -0.974910, -0.216034,
		0.922014, -0.034696, 0.385599,
		40.458309, 37.111919, 23.049440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228283, 36.664127, 22.485252>,  <39.812901, 37.136208, 22.779522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228283, 36.664127, 22.485252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869598, 36.832241, 22.429716>,  <38.654388, 36.933109, 22.396395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869598, 36.832241, 22.429716>,  <39.228283, 36.664127, 22.485252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869598, 36.832241, 22.429716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166280, 0.029166, -0.985647,
		-0.410199, -0.906925, -0.096038,
		-0.896709, 0.420280, -0.138840,
		38.600586, 36.958324, 22.388063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961700, 36.304413, 21.921106>,  <39.228283, 36.664127, 22.485252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961700, 36.304413, 21.921106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.763443, 36.651062, 21.944082>,  <38.644489, 36.859051, 21.957867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.763443, 36.651062, 21.944082>,  <38.961700, 36.304413, 21.921106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763443, 36.651062, 21.944082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184880, 0.169891, -0.967965,
		-0.848622, -0.469143, -0.244427,
		-0.495640, 0.866626, 0.057439,
		38.614750, 36.911049, 21.961313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478634, 36.342564, 21.412691>,  <38.961700, 36.304413, 21.921106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478634, 36.342564, 21.412691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.565765, 36.720486, 21.510580>,  <38.618046, 36.947239, 21.569313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.565765, 36.720486, 21.510580>,  <38.478634, 36.342564, 21.412691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565765, 36.720486, 21.510580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193264, 0.204022, -0.959700,
		-0.956661, 0.256347, -0.138156,
		0.217829, 0.944808, 0.244723,
		38.631115, 37.003929, 21.583998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238407, 36.718029, 20.804146>,  <38.478634, 36.342564, 21.412691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238407, 36.718029, 20.804146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.429077, 37.019596, 20.984985>,  <38.543480, 37.200535, 21.093489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.429077, 37.019596, 20.984985>,  <38.238407, 36.718029, 20.804146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429077, 37.019596, 20.984985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367739, 0.296114, -0.881524,
		-0.798468, 0.586453, -0.136095,
		0.476673, 0.753916, 0.452099,
		38.572079, 37.245770, 21.120615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077469, 37.368931, 20.424107>,  <38.238407, 36.718029, 20.804146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077469, 37.368931, 20.424107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414036, 37.437260, 20.629179>,  <38.615974, 37.478256, 20.752222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414036, 37.437260, 20.629179>,  <38.077469, 37.368931, 20.424107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414036, 37.437260, 20.629179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511194, 0.056003, -0.857639,
		-0.175214, 0.983709, -0.040201,
		0.841416, 0.170821, 0.512679,
		38.666462, 37.488506, 20.782982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356186, 37.969566, 20.133867>,  <38.077469, 37.368931, 20.424107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356186, 37.969566, 20.133867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650490, 37.772327, 20.319559>,  <38.827072, 37.653984, 20.430975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650490, 37.772327, 20.319559>,  <38.356186, 37.969566, 20.133867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650490, 37.772327, 20.319559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534480, 0.001804, -0.845179,
		0.415920, 0.869971, 0.264879,
		0.735759, -0.493099, 0.464232,
		38.871216, 37.624397, 20.458828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907619, 38.304630, 19.900791>,  <38.356186, 37.969566, 20.133867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907619, 38.304630, 19.900791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007710, 37.941471, 20.035318>,  <39.067764, 37.723576, 20.116034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007710, 37.941471, 20.035318>,  <38.907619, 38.304630, 19.900791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007710, 37.941471, 20.035318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617867, -0.117697, -0.777424,
		0.745406, 0.402326, 0.531511,
		0.250221, -0.907899, 0.336316,
		39.082775, 37.669102, 20.136213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615807, 38.267784, 19.772888>,  <38.907619, 38.304630, 19.900791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615807, 38.267784, 19.772888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527847, 37.884777, 19.847523>,  <39.475071, 37.654972, 19.892303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527847, 37.884777, 19.847523>,  <39.615807, 38.267784, 19.772888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527847, 37.884777, 19.847523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536175, -0.278417, -0.796869,
		0.814962, -0.075184, 0.574617,
		-0.219895, -0.957513, 0.186588,
		39.461880, 37.597523, 19.903500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246300, 37.878155, 19.729609>,  <39.615807, 38.267784, 19.772888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246300, 37.878155, 19.729609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937984, 37.632973, 19.660120>,  <39.752995, 37.485863, 19.618427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937984, 37.632973, 19.660120>,  <40.246300, 37.878155, 19.729609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937984, 37.632973, 19.660120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414032, -0.274681, -0.867830,
		0.484220, -0.740837, 0.465502,
		-0.770784, -0.612953, -0.173724,
		39.706749, 37.449085, 19.608004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543602, 37.237759, 19.537331>,  <40.246300, 37.878155, 19.729609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543602, 37.237759, 19.537331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.168457, 37.235779, 19.398540>,  <39.943371, 37.234592, 19.315268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.168457, 37.235779, 19.398540>,  <40.543602, 37.237759, 19.537331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168457, 37.235779, 19.398540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337620, -0.244021, -0.909102,
		-0.080172, -0.969757, 0.230528,
		-0.937862, -0.004946, -0.346974,
		39.887100, 37.234295, 19.294449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434517, 36.671734, 19.158018>,  <40.543602, 37.237759, 19.537331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434517, 36.671734, 19.158018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154900, 36.915703, 19.008709>,  <39.987129, 37.062084, 18.919123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.154900, 36.915703, 19.008709>,  <40.434517, 36.671734, 19.158018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154900, 36.915703, 19.008709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207515, -0.326509, -0.922133,
		-0.684303, -0.722074, 0.101678,
		-0.699047, 0.609918, -0.373272,
		39.945187, 37.098679, 18.896727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934654, 36.236610, 18.726212>,  <40.434517, 36.671734, 19.158018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934654, 36.236610, 18.726212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931946, 36.618290, 18.606573>,  <39.930321, 36.847298, 18.534790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931946, 36.618290, 18.606573>,  <39.934654, 36.236610, 18.726212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931946, 36.618290, 18.606573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222036, -0.290204, -0.930850,
		-0.975015, -0.072713, -0.209902,
		-0.006771, 0.954198, -0.299098,
		39.929916, 36.904549, 18.516844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676258, 36.131123, 18.035177>,  <39.934654, 36.236610, 18.726212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676258, 36.131123, 18.035177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832619, 36.498989, 18.050180>,  <39.926434, 36.719711, 18.059181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.832619, 36.498989, 18.050180>,  <39.676258, 36.131123, 18.035177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832619, 36.498989, 18.050180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188471, -0.040090, -0.981260,
		-0.900930, 0.390645, -0.189002,
		0.390902, 0.919668, 0.037507,
		39.949890, 36.774891, 18.061432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350937, 36.434807, 17.425734>,  <39.676258, 36.131123, 18.035177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350937, 36.434807, 17.425734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669254, 36.652084, 17.532810>,  <39.860245, 36.782452, 17.597055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669254, 36.652084, 17.532810>,  <39.350937, 36.434807, 17.425734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669254, 36.652084, 17.532810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477151, -0.290245, -0.829509,
		-0.372888, 0.787844, -0.490159,
		0.795790, 0.543194, 0.267692,
		39.907990, 36.815041, 17.613117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841110, 36.802040, 17.941107>,  <39.350937, 36.434807, 17.425734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841110, 36.802040, 17.941107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801987, 36.490215, 17.693649>,  <38.778515, 36.303120, 17.545174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801987, 36.490215, 17.693649>,  <38.841110, 36.802040, 17.941107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801987, 36.490215, 17.693649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546923, -0.477237, 0.687838,
		-0.831450, 0.405626, -0.379681,
		-0.097807, -0.779559, -0.618645,
		38.772644, 36.256348, 17.508057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145416, 36.762257, 17.901190>,  <38.841110, 36.802040, 17.941107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145416, 36.762257, 17.901190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.301540, 36.409840, 17.794292>,  <38.395214, 36.198391, 17.730154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.301540, 36.409840, 17.794292>,  <38.145416, 36.762257, 17.901190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301540, 36.409840, 17.794292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749487, -0.472639, 0.463553,
		-0.534721, 0.019368, -0.844807,
		0.390311, -0.881043, -0.267246,
		38.418633, 36.145527, 17.714119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585281, 36.298183, 17.737509>,  <38.145416, 36.762257, 17.901190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585281, 36.298183, 17.737509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902145, 36.072178, 17.829807>,  <38.092262, 35.936573, 17.885187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.902145, 36.072178, 17.829807>,  <37.585281, 36.298183, 17.737509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902145, 36.072178, 17.829807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542444, -0.478528, 0.690482,
		-0.279714, -0.672138, -0.685559,
		0.792158, -0.565015, 0.230746,
		38.139793, 35.902672, 17.899031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283588, 35.621788, 17.986097>,  <37.585281, 36.298183, 17.737509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283588, 35.621788, 17.986097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.664120, 35.618362, 18.109327>,  <37.892437, 35.616306, 18.183266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.664120, 35.618362, 18.109327>,  <37.283588, 35.621788, 17.986097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664120, 35.618362, 18.109327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256441, -0.576442, 0.775856,
		0.170941, -0.817093, -0.550579,
		0.951324, -0.008566, 0.308074,
		37.949516, 35.615791, 18.201750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494854, 34.838795, 17.988827>,  <37.283588, 35.621788, 17.986097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494854, 34.838795, 17.988827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.716499, 35.051262, 18.245209>,  <37.849487, 35.178741, 18.399038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.716499, 35.051262, 18.245209>,  <37.494854, 34.838795, 17.988827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716499, 35.051262, 18.245209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252676, -0.626323, 0.737478,
		0.793167, -0.570600, -0.212841,
		0.554112, 0.531164, 0.640956,
		37.882732, 35.210609, 18.437496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788177, 34.372173, 18.457930>,  <37.494854, 34.838795, 17.988827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788177, 34.372173, 18.457930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813248, 34.719917, 18.654007>,  <37.828289, 34.928562, 18.771654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813248, 34.719917, 18.654007>,  <37.788177, 34.372173, 18.457930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813248, 34.719917, 18.654007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364684, -0.437245, 0.822084,
		0.929019, -0.230292, 0.289635,
		0.062678, 0.869358, 0.490193,
		37.832050, 34.980724, 18.801065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068474, 34.291222, 19.116364>,  <37.788177, 34.372173, 18.457930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068474, 34.291222, 19.116364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.869507, 34.636444, 19.151484>,  <37.750126, 34.843578, 19.172556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.869507, 34.636444, 19.151484>,  <38.068474, 34.291222, 19.116364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869507, 34.636444, 19.151484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258915, -0.244291, 0.934497,
		0.827971, 0.442105, 0.344973,
		-0.497420, 0.863056, 0.087798,
		37.720280, 34.895359, 19.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641041, 33.775616, 19.416752>,  <38.068474, 34.291222, 19.116364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641041, 33.775616, 19.416752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889633, 33.471241, 19.491310>,  <39.038788, 33.288616, 19.536045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889633, 33.471241, 19.491310>,  <38.641041, 33.775616, 19.416752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889633, 33.471241, 19.491310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356846, 0.063145, -0.932027,
		0.697440, 0.645750, 0.310780,
		0.621480, -0.760933, 0.186393,
		39.076077, 33.242962, 19.547228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344780, 34.046696, 19.308283>,  <38.641041, 33.775616, 19.416752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344780, 34.046696, 19.308283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.347122, 33.653812, 19.233192>,  <39.348526, 33.418083, 19.188139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.347122, 33.653812, 19.233192>,  <39.344780, 34.046696, 19.308283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347122, 33.653812, 19.233192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381368, 0.175732, -0.907567,
		0.924405, -0.066279, 0.375610,
		0.005854, -0.982204, -0.187724,
		39.348877, 33.359150, 19.176876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011185, 33.891544, 19.308964>,  <39.344780, 34.046696, 19.308283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011185, 33.891544, 19.308964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829330, 33.608646, 19.092403>,  <39.720219, 33.438908, 18.962467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829330, 33.608646, 19.092403>,  <40.011185, 33.891544, 19.308964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829330, 33.608646, 19.092403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490531, 0.308540, -0.814974,
		0.743428, -0.636089, 0.206652,
		-0.454636, -0.707244, -0.541399,
		39.692940, 33.396473, 18.929983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578079, 33.397015, 19.018700>,  <40.011185, 33.891544, 19.308964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578079, 33.397015, 19.018700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264488, 33.336842, 18.777786>,  <40.076332, 33.300735, 18.633238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264488, 33.336842, 18.777786>,  <40.578079, 33.397015, 19.018700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264488, 33.336842, 18.777786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590446, 0.118901, -0.798270,
		0.191701, -0.981444, -0.004392,
		-0.783980, -0.150436, -0.602283,
		40.029293, 33.291710, 18.597101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834522, 32.951077, 18.513777>,  <40.578079, 33.397015, 19.018700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834522, 32.951077, 18.513777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499516, 33.103527, 18.357155>,  <40.298512, 33.194996, 18.263182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499516, 33.103527, 18.357155>,  <40.834522, 32.951077, 18.513777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499516, 33.103527, 18.357155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476843, 0.159869, -0.864328,
		-0.266817, -0.910597, -0.315629,
		-0.837514, 0.381123, -0.391556,
		40.248260, 33.217865, 18.239689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777626, 32.570282, 17.955051>,  <40.834522, 32.951077, 18.513777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777626, 32.570282, 17.955051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.542030, 32.889080, 17.901541>,  <40.400673, 33.080357, 17.869434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.542030, 32.889080, 17.901541>,  <40.777626, 32.570282, 17.955051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542030, 32.889080, 17.901541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370485, 0.119178, -0.921161,
		-0.718214, -0.592116, -0.365468,
		-0.588991, 0.796991, -0.133775,
		40.365334, 33.128178, 17.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419811, 32.475685, 17.288862>,  <40.777626, 32.570282, 17.955051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419811, 32.475685, 17.288862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.368736, 32.868477, 17.344585>,  <40.338093, 33.104153, 17.378019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.368736, 32.868477, 17.344585>,  <40.419811, 32.475685, 17.288862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368736, 32.868477, 17.344585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182841, 0.161353, -0.969811,
		-0.974816, -0.098358, -0.200149,
		-0.127683, 0.981983, 0.139306,
		40.330433, 33.163071, 17.386377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957157, 32.664799, 16.815422>,  <40.419811, 32.475685, 17.288862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957157, 32.664799, 16.815422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161751, 32.999584, 16.893280>,  <40.284508, 33.200455, 16.939995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161751, 32.999584, 16.893280>,  <39.957157, 32.664799, 16.815422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161751, 32.999584, 16.893280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218602, 0.092327, -0.971436,
		-0.831023, 0.539421, -0.135737,
		0.511481, 0.836959, 0.194645,
		40.315197, 33.250671, 16.951674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759941, 33.181385, 16.276064>,  <39.957157, 32.664799, 16.815422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759941, 33.181385, 16.276064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.088924, 33.354374, 16.423864>,  <40.286312, 33.458168, 16.512545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.088924, 33.354374, 16.423864>,  <39.759941, 33.181385, 16.276064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088924, 33.354374, 16.423864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241435, 0.322766, -0.915168,
		-0.515051, 0.841895, 0.161045,
		0.822455, 0.432476, 0.369503,
		40.335659, 33.484116, 16.534716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.448498, 30.071680, 31.144617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840252, 29.998125, 31.178057>,  <36.075306, 29.953993, 31.198120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840252, 29.998125, 31.178057>,  <35.448498, 30.071680, 31.144617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840252, 29.998125, 31.178057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130989, 0.263092, -0.955837,
		0.153772, 0.947084, 0.281755,
		0.979386, -0.183888, 0.083601,
		36.134068, 29.942959, 31.203136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943233, 30.681334, 30.937328>,  <35.448498, 30.071680, 31.144617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943233, 30.681334, 30.937328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106056, 30.321337, 30.874956>,  <36.203751, 30.105339, 30.837532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106056, 30.321337, 30.874956>,  <35.943233, 30.681334, 30.937328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106056, 30.321337, 30.874956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023501, 0.180979, -0.983206,
		0.913099, 0.396559, 0.094820,
		0.407059, -0.899993, -0.155932,
		36.228172, 30.051338, 30.828176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205254, 30.855116, 30.427790>,  <35.943233, 30.681334, 30.937328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205254, 30.855116, 30.427790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300709, 30.466675, 30.426399>,  <36.357983, 30.233610, 30.425564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300709, 30.466675, 30.426399>,  <36.205254, 30.855116, 30.427790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300709, 30.466675, 30.426399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141760, 0.038379, -0.989157,
		0.960705, 0.235561, 0.146822,
		0.238641, -0.971102, -0.003477,
		36.372303, 30.175344, 30.425356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844509, 30.777515, 30.047808>,  <36.205254, 30.855116, 30.427790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844509, 30.777515, 30.047808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657013, 30.424669, 30.029228>,  <36.544514, 30.212961, 30.018080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657013, 30.424669, 30.029228>,  <36.844509, 30.777515, 30.047808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657013, 30.424669, 30.029228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277384, -0.097064, -0.955843,
		0.838654, -0.460926, 0.290182,
		-0.468740, -0.882114, -0.046451,
		36.516392, 30.160034, 30.015293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157135, 30.427399, 29.526434>,  <36.844509, 30.777515, 30.047808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157135, 30.427399, 29.526434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799847, 30.249674, 29.554008>,  <36.585476, 30.143040, 29.570553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799847, 30.249674, 29.554008>,  <37.157135, 30.427399, 29.526434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799847, 30.249674, 29.554008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037335, -0.226083, -0.973392,
		0.448074, -0.866876, 0.218530,
		-0.893216, -0.444310, 0.068937,
		36.531883, 30.116381, 29.574690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287277, 29.934839, 29.007936>,  <37.157135, 30.427399, 29.526434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287277, 29.934839, 29.007936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890995, 29.943426, 29.061657>,  <36.653225, 29.948578, 29.093889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890995, 29.943426, 29.061657>,  <37.287277, 29.934839, 29.007936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890995, 29.943426, 29.061657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130244, -0.434098, -0.891401,
		0.039164, -0.900610, 0.432860,
		-0.990708, 0.021466, 0.134300,
		36.593784, 29.949865, 29.101948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982796, 29.218876, 28.768160>,  <37.287277, 29.934839, 29.007936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982796, 29.218876, 28.768160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682495, 29.483065, 28.763359>,  <36.502316, 29.641579, 28.760479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682495, 29.483065, 28.763359>,  <36.982796, 29.218876, 28.768160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682495, 29.483065, 28.763359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183431, -0.225887, -0.956728,
		-0.634604, -0.716066, 0.290737,
		-0.750754, 0.660473, -0.012000,
		36.457268, 29.681206, 28.759760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369759, 28.912600, 28.538267>,  <36.982796, 29.218876, 28.768160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369759, 28.912600, 28.538267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335808, 29.300457, 28.446543>,  <36.315437, 29.533173, 28.391508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335808, 29.300457, 28.446543>,  <36.369759, 28.912600, 28.538267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335808, 29.300457, 28.446543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306058, -0.244386, -0.920111,
		-0.948221, -0.007919, 0.317512,
		-0.084882, 0.969646, -0.229309,
		36.310345, 29.591351, 28.377750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756134, 28.889574, 28.193014>,  <36.369759, 28.912600, 28.538267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756134, 28.889574, 28.193014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889915, 29.255722, 28.103359>,  <35.970184, 29.475410, 28.049566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889915, 29.255722, 28.103359>,  <35.756134, 28.889574, 28.193014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889915, 29.255722, 28.103359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279906, -0.130616, -0.951101,
		-0.899884, 0.380841, 0.212532,
		0.334458, 0.915369, -0.224139,
		35.990253, 29.530333, 28.036118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434258, 29.070534, 27.627554>,  <35.756134, 28.889574, 28.193014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434258, 29.070534, 27.627554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711224, 29.356499, 27.588663>,  <35.877403, 29.528078, 27.565329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711224, 29.356499, 27.588663>,  <35.434258, 29.070534, 27.627554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711224, 29.356499, 27.588663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192401, 0.053082, -0.979880,
		-0.695369, 0.697194, 0.174305,
		0.692419, 0.714915, -0.097229,
		35.918949, 29.570972, 27.559494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104614, 29.468847, 27.111471>,  <35.434258, 29.070534, 27.627554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104614, 29.468847, 27.111471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494984, 29.555954, 27.116274>,  <35.729206, 29.608217, 27.119156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494984, 29.555954, 27.116274>,  <35.104614, 29.468847, 27.111471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494984, 29.555954, 27.116274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019329, 0.141194, -0.989793,
		-0.217239, 0.965734, 0.142005,
		0.975927, 0.217767, 0.012006,
		35.787762, 29.621284, 27.119875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127106, 30.075506, 26.758129>,  <35.104614, 29.468847, 27.111471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127106, 30.075506, 26.758129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487621, 29.902941, 26.742355>,  <35.703930, 29.799402, 26.732891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487621, 29.902941, 26.742355>,  <35.127106, 30.075506, 26.758129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487621, 29.902941, 26.742355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055248, 0.204752, -0.977253,
		0.429675, 0.878612, 0.208376,
		0.901292, -0.431413, -0.039436,
		35.758007, 29.773518, 26.730524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299240, 30.778603, 26.790380>,  <35.127106, 30.075506, 26.758129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299240, 30.778603, 26.790380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962246, 30.871468, 26.595932>,  <34.760048, 30.927187, 26.479263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.962246, 30.871468, 26.595932>,  <35.299240, 30.778603, 26.790380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962246, 30.871468, 26.595932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530978, -0.205476, 0.822096,
		0.090972, 0.950726, 0.296383,
		-0.842488, 0.232161, -0.486123,
		34.709499, 30.941116, 26.450096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957794, 31.313084, 27.134233>,  <35.299240, 30.778603, 26.790380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957794, 31.313084, 27.134233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668236, 31.123064, 26.934113>,  <34.494499, 31.009052, 26.814041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668236, 31.123064, 26.934113>,  <34.957794, 31.313084, 27.134233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668236, 31.123064, 26.934113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459700, -0.208605, 0.863227,
		-0.514438, 0.854877, -0.067371,
		-0.723899, -0.475047, -0.500301,
		34.451065, 30.980551, 26.784021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360527, 31.680065, 27.393612>,  <34.957794, 31.313084, 27.134233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360527, 31.680065, 27.393612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211273, 31.347609, 27.228699>,  <34.121719, 31.148134, 27.129751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211273, 31.347609, 27.228699>,  <34.360527, 31.680065, 27.393612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211273, 31.347609, 27.228699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604274, -0.119485, 0.787767,
		-0.704006, 0.543074, -0.457652,
		-0.373134, -0.831140, -0.412283,
		34.099335, 31.098267, 27.105013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718491, 31.778599, 27.465725>,  <34.360527, 31.680065, 27.393612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718491, 31.778599, 27.465725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739769, 31.384069, 27.403324>,  <33.752537, 31.147352, 27.365883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739769, 31.384069, 27.403324>,  <33.718491, 31.778599, 27.465725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739769, 31.384069, 27.403324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599516, -0.156481, 0.784916,
		-0.798593, 0.051772, -0.599641,
		0.053196, -0.986323, -0.156003,
		33.755726, 31.088173, 27.356524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080223, 31.552481, 27.543922>,  <33.718491, 31.778599, 27.465725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080223, 31.552481, 27.543922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327606, 31.246622, 27.616398>,  <33.476036, 31.063107, 27.659883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327606, 31.246622, 27.616398>,  <33.080223, 31.552481, 27.543922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327606, 31.246622, 27.616398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595248, -0.305322, 0.743276,
		-0.513020, -0.567537, -0.643981,
		0.618457, -0.764644, 0.181189,
		33.513142, 31.017229, 27.670753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620548, 31.142771, 27.757235>,  <33.080223, 31.552481, 27.543922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620548, 31.142771, 27.757235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967037, 30.975386, 27.866447>,  <33.174931, 30.874954, 27.931976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967037, 30.975386, 27.866447>,  <32.620548, 31.142771, 27.757235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967037, 30.975386, 27.866447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444832, -0.396992, 0.802821,
		-0.227557, -0.816877, -0.530028,
		0.866223, -0.418462, 0.273035,
		33.226906, 30.849848, 27.948359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455582, 30.541779, 27.950369>,  <32.620548, 31.142771, 27.757235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455582, 30.541779, 27.950369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787678, 30.667484, 28.134514>,  <32.986935, 30.742908, 28.245001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787678, 30.667484, 28.134514>,  <32.455582, 30.541779, 27.950369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787678, 30.667484, 28.134514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375213, -0.295669, 0.878518,
		0.412201, -0.902119, -0.127562,
		0.830244, 0.314264, 0.460362,
		33.036751, 30.761763, 28.272623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497986, 30.028366, 28.460911>,  <32.455582, 30.541779, 27.950369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497986, 30.028366, 28.460911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741474, 30.317057, 28.592710>,  <32.887569, 30.490271, 28.671791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741474, 30.317057, 28.592710>,  <32.497986, 30.028366, 28.460911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741474, 30.317057, 28.592710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380039, -0.099313, 0.919624,
		0.696439, -0.685018, 0.213830,
		0.608723, 0.721725, 0.329499,
		32.924091, 30.533573, 28.691561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769943, 29.819893, 29.163250>,  <32.497986, 30.028366, 28.460911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769943, 29.819893, 29.163250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834560, 30.214573, 29.155975>,  <32.873329, 30.451380, 29.151609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834560, 30.214573, 29.155975>,  <32.769943, 29.819893, 29.163250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834560, 30.214573, 29.155975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282791, 0.063940, 0.957048,
		0.945481, -0.149458, 0.289358,
		0.161540, 0.986699, -0.018189,
		32.883022, 30.510582, 29.150518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088295, 29.945606, 29.763363>,  <32.769943, 29.819893, 29.163250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088295, 29.945606, 29.763363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945446, 30.294054, 29.628536>,  <32.859737, 30.503122, 29.547640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945446, 30.294054, 29.628536>,  <33.088295, 29.945606, 29.763363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945446, 30.294054, 29.628536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247828, 0.259558, 0.933386,
		0.900580, 0.416868, 0.123194,
		-0.357123, 0.871120, -0.337065,
		32.838310, 30.555389, 29.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199902, 30.400007, 30.262320>,  <33.088295, 29.945606, 29.763363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199902, 30.400007, 30.262320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893517, 30.569569, 30.068985>,  <32.709686, 30.671305, 29.952984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893517, 30.569569, 30.068985>,  <33.199902, 30.400007, 30.262320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893517, 30.569569, 30.068985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355947, 0.346436, 0.867919,
		0.535359, 0.836832, -0.114468,
		-0.765958, 0.423904, -0.483336,
		32.663731, 30.696739, 29.923985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379395, 31.147926, 30.493061>,  <33.199902, 30.400007, 30.262320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379395, 31.147926, 30.493061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006382, 31.097902, 30.357561>,  <32.782574, 31.067888, 30.276260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006382, 31.097902, 30.357561>,  <33.379395, 31.147926, 30.493061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006382, 31.097902, 30.357561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351475, 0.529497, 0.772074,
		0.082810, 0.839043, -0.537727,
		-0.932528, -0.125062, -0.338750,
		32.726624, 31.060383, 30.255936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043293, 31.820913, 30.594088>,  <33.379395, 31.147926, 30.493061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043293, 31.820913, 30.594088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727821, 31.575514, 30.578085>,  <32.538536, 31.428274, 30.568483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727821, 31.575514, 30.578085>,  <33.043293, 31.820913, 30.594088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727821, 31.575514, 30.578085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423968, 0.495598, 0.758046,
		-0.445231, 0.614819, -0.650973,
		-0.788682, -0.613498, -0.040008,
		32.491215, 31.391464, 30.566082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571968, 32.177288, 30.988068>,  <33.043293, 31.820913, 30.594088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571968, 32.177288, 30.988068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.403221, 31.816744, 30.948921>,  <32.301971, 31.600418, 30.925434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.403221, 31.816744, 30.948921>,  <32.571968, 32.177288, 30.988068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403221, 31.816744, 30.948921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685102, 0.246213, 0.685576,
		-0.593855, 0.356270, -0.721393,
		-0.421867, -0.901360, -0.097867,
		32.276661, 31.546335, 30.919561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345539, 32.299839, 31.166046>,  <32.571968, 32.177288, 30.988068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345539, 32.299839, 31.166046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364223, 32.655869, 31.347414>,  <33.375435, 32.869488, 31.456234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364223, 32.655869, 31.347414>,  <33.345539, 32.299839, 31.166046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364223, 32.655869, 31.347414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321994, 0.416268, -0.850318,
		-0.945588, 0.185721, -0.267153,
		0.046715, 0.890072, 0.453419,
		33.378239, 32.922890, 31.483440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172016, 32.775017, 30.615629>,  <33.345539, 32.299839, 31.166046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172016, 32.775017, 30.615629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372654, 32.965759, 30.904354>,  <33.493034, 33.080204, 31.077589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372654, 32.965759, 30.904354>,  <33.172016, 32.775017, 30.615629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372654, 32.965759, 30.904354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467455, 0.552676, -0.689953,
		-0.727937, 0.683489, 0.054309,
		0.501591, 0.476855, 0.721814,
		33.523132, 33.108814, 31.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205704, 33.574299, 30.489157>,  <33.172016, 32.775017, 30.615629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205704, 33.574299, 30.489157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528416, 33.518566, 30.718834>,  <33.722042, 33.485126, 30.856640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528416, 33.518566, 30.718834>,  <33.205704, 33.574299, 30.489157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528416, 33.518566, 30.718834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536066, 0.581297, -0.612150,
		-0.248486, 0.801674, 0.543667,
		0.806776, -0.139331, 0.574194,
		33.770447, 33.476768, 30.891092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500153, 34.303230, 30.706827>,  <33.205704, 33.574299, 30.489157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500153, 34.303230, 30.706827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774559, 34.012230, 30.711294>,  <33.939201, 33.837631, 30.713974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774559, 34.012230, 30.711294>,  <33.500153, 34.303230, 30.706827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774559, 34.012230, 30.711294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501948, 0.462101, -0.731102,
		0.526719, 0.507152, 0.682176,
		0.686014, -0.727502, 0.011167,
		33.980362, 33.793980, 30.714643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104187, 34.673580, 30.480457>,  <33.500153, 34.303230, 30.706827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104187, 34.673580, 30.480457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229153, 34.294048, 30.462021>,  <34.304134, 34.066330, 30.450960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229153, 34.294048, 30.462021>,  <34.104187, 34.673580, 30.480457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229153, 34.294048, 30.462021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631454, 0.243675, -0.736131,
		0.709691, 0.200876, 0.675268,
		0.312417, -0.948826, -0.046090,
		34.322876, 34.009399, 30.448195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874912, 34.692127, 30.421041>,  <34.104187, 34.673580, 30.480457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874912, 34.692127, 30.421041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713734, 34.362015, 30.262779>,  <34.617027, 34.163948, 30.167822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713734, 34.362015, 30.262779>,  <34.874912, 34.692127, 30.421041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713734, 34.362015, 30.262779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407996, 0.224999, -0.884825,
		0.819252, -0.517963, 0.246050,
		-0.402945, -0.825282, -0.395658,
		34.592850, 34.114429, 30.144081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438057, 34.415653, 30.087152>,  <34.874912, 34.692127, 30.421041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438057, 34.415653, 30.087152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137104, 34.228390, 29.901793>,  <34.956532, 34.116032, 29.790577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137104, 34.228390, 29.901793>,  <35.438057, 34.415653, 30.087152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137104, 34.228390, 29.901793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404159, 0.227425, -0.885965,
		0.520164, -0.853875, 0.018101,
		-0.752386, -0.468162, -0.463400,
		34.911388, 34.087940, 29.762774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810024, 34.117027, 29.500479>,  <35.438057, 34.415653, 30.087152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810024, 34.117027, 29.500479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421268, 34.118881, 29.406321>,  <35.188015, 34.119995, 29.349825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421268, 34.118881, 29.406321>,  <35.810024, 34.117027, 29.500479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421268, 34.118881, 29.406321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233880, 0.133944, -0.962995,
		0.027065, -0.990978, -0.131263,
		-0.971889, 0.004637, -0.235395,
		35.129704, 34.120274, 29.335701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738567, 33.546352, 28.958611>,  <35.810024, 34.117027, 29.500479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738567, 33.546352, 28.958611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434467, 33.805721, 28.942818>,  <35.252007, 33.961342, 28.933342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434467, 33.805721, 28.942818>,  <35.738567, 33.546352, 28.958611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434467, 33.805721, 28.942818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233609, 0.216171, -0.947996,
		-0.606171, -0.729940, -0.315822,
		-0.760252, 0.648427, -0.039484,
		35.206390, 34.000248, 28.930973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609039, 33.535614, 28.328115>,  <35.738567, 33.546352, 28.958611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609039, 33.535614, 28.328115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421898, 33.872059, 28.436663>,  <35.309612, 34.073925, 28.501791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421898, 33.872059, 28.436663>,  <35.609039, 33.535614, 28.328115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421898, 33.872059, 28.436663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238028, 0.415618, -0.877841,
		-0.851148, -0.346111, -0.394658,
		-0.467857, 0.841112, 0.271368,
		35.281540, 34.124393, 28.518074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132889, 33.780025, 27.714674>,  <35.609039, 33.535614, 28.328115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132889, 33.780025, 27.714674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241966, 34.076786, 27.959696>,  <35.307415, 34.254841, 28.106709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241966, 34.076786, 27.959696>,  <35.132889, 33.780025, 27.714674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241966, 34.076786, 27.959696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401860, 0.490651, -0.773156,
		-0.874154, 0.456998, -0.164341,
		0.272697, 0.741900, 0.612553,
		35.323776, 34.299355, 28.143461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922546, 34.358746, 27.300209>,  <35.132889, 33.780025, 27.714674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922546, 34.358746, 27.300209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156666, 34.533829, 27.573219>,  <35.297138, 34.638878, 27.737026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156666, 34.533829, 27.573219>,  <34.922546, 34.358746, 27.300209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156666, 34.533829, 27.573219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390328, 0.585711, -0.710343,
		-0.710683, 0.682171, 0.171967,
		0.585299, 0.437705, 0.682525,
		35.332256, 34.665138, 27.777977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856934, 35.031601, 27.092875>,  <34.922546, 34.358746, 27.300209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856934, 35.031601, 27.092875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191868, 35.023743, 27.311411>,  <35.392826, 35.019028, 27.442533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191868, 35.023743, 27.311411>,  <34.856934, 35.031601, 27.092875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191868, 35.023743, 27.311411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450519, 0.590910, -0.669222,
		-0.309688, 0.806498, 0.503641,
		0.837333, -0.019650, 0.546340,
		35.443069, 35.017849, 27.475313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168686, 35.698120, 27.239876>,  <34.856934, 35.031601, 27.092875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168686, 35.698120, 27.239876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485294, 35.454422, 27.259148>,  <35.675259, 35.308205, 27.270712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485294, 35.454422, 27.259148>,  <35.168686, 35.698120, 27.239876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485294, 35.454422, 27.259148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465434, 0.549831, -0.693582,
		0.396070, 0.571408, 0.718764,
		0.791517, -0.609244, 0.048181,
		35.722748, 35.271648, 27.273602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746513, 36.163147, 27.186937>,  <35.168686, 35.698120, 27.239876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746513, 36.163147, 27.186937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927631, 35.816025, 27.105066>,  <36.036301, 35.607750, 27.055944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927631, 35.816025, 27.105066>,  <35.746513, 36.163147, 27.186937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927631, 35.816025, 27.105066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554725, 0.453903, -0.697317,
		0.698039, 0.202200, 0.686918,
		0.452792, -0.867806, -0.204677,
		36.063469, 35.555683, 27.043663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460705, 36.375183, 27.018461>,  <35.746513, 36.163147, 27.186937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460705, 36.375183, 27.018461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416355, 35.998814, 26.890476>,  <36.389744, 35.772991, 26.813684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416355, 35.998814, 26.890476>,  <36.460705, 36.375183, 27.018461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416355, 35.998814, 26.890476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558581, 0.207287, -0.803131,
		0.822006, -0.267772, 0.502597,
		-0.110874, -0.940920, -0.319964,
		36.383091, 35.716537, 26.794487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186905, 36.122517, 26.904627>,  <36.460705, 36.375183, 27.018461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186905, 36.122517, 26.904627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961342, 35.853817, 26.712475>,  <36.826004, 35.692596, 26.597183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961342, 35.853817, 26.712475>,  <37.186905, 36.122517, 26.904627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961342, 35.853817, 26.712475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600543, 0.065734, -0.796886,
		0.566885, -0.737856, 0.366347,
		-0.563906, -0.671750, -0.480378,
		36.792171, 35.652290, 26.568361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543842, 35.595772, 26.573631>,  <37.186905, 36.122517, 26.904627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543842, 35.595772, 26.573631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198109, 35.659657, 26.382875>,  <36.990669, 35.697987, 26.268421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198109, 35.659657, 26.382875>,  <37.543842, 35.595772, 26.573631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198109, 35.659657, 26.382875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500254, 0.175448, -0.847918,
		-0.051757, -0.971447, -0.231544,
		-0.864331, 0.159716, -0.476889,
		36.938808, 35.707573, 26.239809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614948, 35.358505, 25.888391>,  <37.543842, 35.595772, 26.573631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614948, 35.358505, 25.888391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289410, 35.588978, 25.858252>,  <37.094086, 35.727261, 25.840168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289410, 35.588978, 25.858252>,  <37.614948, 35.358505, 25.888391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289410, 35.588978, 25.858252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338772, 0.365107, -0.867139,
		-0.472117, -0.731241, -0.492333,
		-0.813842, 0.576180, -0.075351,
		37.045258, 35.761833, 25.835646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365768, 35.181690, 25.183640>,  <37.614948, 35.358505, 25.888391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365768, 35.181690, 25.183640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190624, 35.527397, 25.282686>,  <37.085537, 35.734821, 25.342113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190624, 35.527397, 25.282686>,  <37.365768, 35.181690, 25.183640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190624, 35.527397, 25.282686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227523, 0.372981, -0.899510,
		-0.869776, -0.337523, -0.359956,
		-0.437862, 0.864270, 0.247615,
		37.059265, 35.786678, 25.356972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940750, 35.445778, 24.558353>,  <37.365768, 35.181690, 25.183640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940750, 35.445778, 24.558353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952168, 35.772018, 24.789516>,  <36.959019, 35.967762, 24.928213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952168, 35.772018, 24.789516>,  <36.940750, 35.445778, 24.558353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952168, 35.772018, 24.789516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116099, 0.571523, -0.812331,
		-0.992827, 0.090281, -0.078378,
		0.028543, 0.815604, 0.577906,
		36.960732, 36.016701, 24.962889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543667, 36.010788, 24.241999>,  <36.940750, 35.445778, 24.558353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543667, 36.010788, 24.241999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814144, 36.198395, 24.469254>,  <36.976433, 36.310959, 24.605606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814144, 36.198395, 24.469254>,  <36.543667, 36.010788, 24.241999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814144, 36.198395, 24.469254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405045, 0.407476, -0.818475,
		-0.615382, 0.783571, 0.085561,
		0.676198, 0.469019, 0.568135,
		37.017002, 36.339100, 24.639694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649822, 36.675354, 23.964710>,  <36.543667, 36.010788, 24.241999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649822, 36.675354, 23.964710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984509, 36.622139, 24.177202>,  <37.185322, 36.590210, 24.304697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984509, 36.622139, 24.177202>,  <36.649822, 36.675354, 23.964710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984509, 36.622139, 24.177202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510604, 0.540168, -0.668956,
		-0.197958, 0.830975, 0.519897,
		0.836717, -0.133037, 0.531230,
		37.235523, 36.582230, 24.336571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888351, 37.262730, 24.035286>,  <36.649822, 36.675354, 23.964710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888351, 37.262730, 24.035286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199078, 37.015091, 24.081371>,  <37.385513, 36.866508, 24.109022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199078, 37.015091, 24.081371>,  <36.888351, 37.262730, 24.035286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199078, 37.015091, 24.081371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484597, 0.470860, -0.737195,
		0.402149, 0.628495, 0.665785,
		0.776815, -0.619099, 0.115211,
		37.432121, 36.829361, 24.115934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462109, 37.720787, 24.052738>,  <36.888351, 37.262730, 24.035286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462109, 37.720787, 24.052738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596886, 37.354916, 23.963453>,  <37.677753, 37.135391, 23.909882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596886, 37.354916, 23.963453>,  <37.462109, 37.720787, 24.052738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596886, 37.354916, 23.963453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632195, 0.395477, -0.666279,
		0.697709, 0.083385, 0.711511,
		0.336944, -0.914683, -0.223212,
		37.697968, 37.080509, 23.896490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129494, 37.792175, 23.881449>,  <37.462109, 37.720787, 24.052738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129494, 37.792175, 23.881449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071812, 37.428944, 23.724171>,  <38.037205, 37.211006, 23.629803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071812, 37.428944, 23.724171>,  <38.129494, 37.792175, 23.881449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071812, 37.428944, 23.724171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569935, 0.248612, -0.783177,
		0.808938, -0.337032, 0.481694,
		-0.144200, -0.908076, -0.393197,
		38.028553, 37.156521, 23.606211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885452, 37.496162, 23.590616>,  <38.129494, 37.792175, 23.881449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885452, 37.496162, 23.590616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579689, 37.308372, 23.413855>,  <38.396233, 37.195698, 23.307798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579689, 37.308372, 23.413855>,  <38.885452, 37.496162, 23.590616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579689, 37.308372, 23.413855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405053, 0.183564, -0.895676,
		0.501616, -0.863653, 0.049846,
		-0.764404, -0.469476, -0.441904,
		38.350368, 37.167530, 23.281284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201904, 37.047447, 23.146992>,  <38.885452, 37.496162, 23.590616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201904, 37.047447, 23.146992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834167, 37.061363, 22.990221>,  <38.613525, 37.069714, 22.896158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834167, 37.061363, 22.990221>,  <39.201904, 37.047447, 23.146992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834167, 37.061363, 22.990221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391029, 0.191478, -0.900240,
		0.043724, -0.980880, -0.189638,
		-0.919339, 0.034792, -0.391925,
		38.558365, 37.071800, 22.872644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808247, 36.559563, 23.260511>,  <39.201904, 37.047447, 23.146992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808247, 36.559563, 23.260511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125118, 36.775349, 23.374655>,  <40.315243, 36.904819, 23.443140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125118, 36.775349, 23.374655>,  <39.808247, 36.559563, 23.260511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125118, 36.775349, 23.374655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079553, -0.372309, 0.924693,
		0.605078, -0.755226, -0.252020,
		0.792181, 0.539463, 0.285357,
		40.362774, 36.937187, 23.460262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244164, 36.107788, 23.663858>,  <39.808247, 36.559563, 23.260511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244164, 36.107788, 23.663858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.344601, 36.467171, 23.807932>,  <40.404865, 36.682800, 23.894377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.344601, 36.467171, 23.807932>,  <40.244164, 36.107788, 23.663858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344601, 36.467171, 23.807932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018716, -0.376542, 0.926210,
		0.967781, -0.225826, -0.111364,
		0.251096, 0.898453, 0.360184,
		40.419930, 36.736706, 23.915987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881096, 35.980579, 24.208694>,  <40.244164, 36.107788, 23.663858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881096, 35.980579, 24.208694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.717300, 36.334679, 24.296930>,  <40.619022, 36.547138, 24.349873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.717300, 36.334679, 24.296930>,  <40.881096, 35.980579, 24.208694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717300, 36.334679, 24.296930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000334, -0.241647, 0.970364,
		0.912315, 0.397427, 0.098657,
		-0.409489, 0.885245, 0.220591,
		40.594452, 36.600250, 24.363108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259007, 36.181347, 24.839621>,  <40.881096, 35.980579, 24.208694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259007, 36.181347, 24.839621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.941025, 36.424011, 24.838257>,  <40.750237, 36.569611, 24.837439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.941025, 36.424011, 24.838257>,  <41.259007, 36.181347, 24.839621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941025, 36.424011, 24.838257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090487, -0.113015, 0.989464,
		0.599880, 0.786890, 0.144737,
		-0.794957, 0.606656, -0.003408,
		40.702538, 36.606007, 24.837234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378864, 36.688694, 25.415188>,  <41.259007, 36.181347, 24.839621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378864, 36.688694, 25.415188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.987076, 36.664822, 25.338160>,  <40.752003, 36.650497, 25.291943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.987076, 36.664822, 25.338160>,  <41.378864, 36.688694, 25.415188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987076, 36.664822, 25.338160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174885, -0.223673, 0.958846,
		-0.100301, 0.972835, 0.208643,
		-0.979467, -0.059685, -0.192569,
		40.693237, 36.646915, 25.280390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
