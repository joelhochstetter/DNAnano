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
	<23.837870, 34.719788, 35.057892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182985, 34.901890, 34.969948>,  <24.390055, 35.011150, 34.917183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182985, 34.901890, 34.969948>,  <23.837870, 34.719788, 35.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182985, 34.901890, 34.969948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504481, -0.746773, 0.433392,
		0.033118, -0.484841, -0.873975,
		0.862788, 0.455257, -0.219861,
		24.441822, 35.038467, 34.903988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227810, 34.206028, 34.743099>,  <23.837870, 34.719788, 35.057892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227810, 34.206028, 34.743099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485590, 34.489716, 34.857426>,  <24.640259, 34.659927, 34.926022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485590, 34.489716, 34.857426>,  <24.227810, 34.206028, 34.743099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485590, 34.489716, 34.857426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637085, -0.704726, 0.312223,
		0.422855, -0.019125, -0.905995,
		0.644450, 0.709222, 0.285813,
		24.678925, 34.702480, 34.943169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846983, 34.179440, 34.406887>,  <24.227810, 34.206028, 34.743099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846983, 34.179440, 34.406887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943354, 34.370407, 34.744888>,  <25.001175, 34.484989, 34.947689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943354, 34.370407, 34.744888>,  <24.846983, 34.179440, 34.406887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943354, 34.370407, 34.744888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668965, -0.712476, 0.211809,
		0.703165, 0.514246, -0.491030,
		0.240925, 0.477418, 0.845001,
		25.015631, 34.513634, 34.998390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613125, 34.226204, 34.461349>,  <24.846983, 34.179440, 34.406887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613125, 34.226204, 34.461349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480938, 34.277153, 34.835423>,  <25.401625, 34.307724, 35.059868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480938, 34.277153, 34.835423>,  <25.613125, 34.226204, 34.461349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480938, 34.277153, 34.835423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690166, -0.643258, 0.331497,
		0.643787, 0.754981, 0.124669,
		-0.330468, 0.127372, 0.935183,
		25.381798, 34.315365, 35.115978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208920, 34.365505, 34.806538>,  <25.613125, 34.226204, 34.461349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208920, 34.365505, 34.806538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935448, 34.241997, 35.071037>,  <25.771364, 34.167892, 35.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935448, 34.241997, 35.071037>,  <26.208920, 34.365505, 34.806538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935448, 34.241997, 35.071037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653345, -0.662667, 0.366077,
		0.325152, 0.682300, 0.654785,
		-0.683679, -0.308770, 0.661245,
		25.730345, 34.149364, 35.269409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467489, 34.297756, 35.525421>,  <26.208920, 34.365505, 34.806538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467489, 34.297756, 35.525421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156780, 34.049477, 35.482792>,  <25.970354, 33.900509, 35.457214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156780, 34.049477, 35.482792>,  <26.467489, 34.297756, 35.525421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156780, 34.049477, 35.482792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546198, -0.748208, 0.376635,
		-0.313513, 0.234351, 0.920212,
		-0.776774, -0.620697, -0.106571,
		25.923748, 33.863266, 35.450821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475983, 33.988575, 36.126564>,  <26.467489, 34.297756, 35.525421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475983, 33.988575, 36.126564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243330, 33.771309, 35.884346>,  <26.103739, 33.640949, 35.739017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243330, 33.771309, 35.884346>,  <26.475983, 33.988575, 36.126564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243330, 33.771309, 35.884346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398948, -0.839206, 0.369559,
		-0.708903, -0.026632, 0.704803,
		-0.581633, -0.543161, -0.605541,
		26.068840, 33.608360, 35.702682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432955, 33.412006, 36.493671>,  <26.475983, 33.988575, 36.126564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432955, 33.412006, 36.493671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361958, 33.329052, 36.108864>,  <26.319359, 33.279282, 35.877979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361958, 33.329052, 36.108864>,  <26.432955, 33.412006, 36.493671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361958, 33.329052, 36.108864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365674, -0.921454, 0.131170,
		-0.913662, -0.328505, 0.239385,
		-0.177492, -0.207382, -0.962023,
		26.308710, 33.266838, 35.820255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975389, 32.787891, 36.451221>,  <26.432955, 33.412006, 36.493671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975389, 32.787891, 36.451221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254017, 32.846985, 36.170376>,  <26.421194, 32.882439, 36.001869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254017, 32.846985, 36.170376>,  <25.975389, 32.787891, 36.451221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254017, 32.846985, 36.170376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454403, -0.848138, 0.272361,
		-0.555254, -0.508761, -0.657917,
		0.696571, 0.147730, -0.702115,
		26.462988, 32.891304, 35.959740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054945, 32.141613, 36.096249>,  <25.975389, 32.787891, 36.451221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054945, 32.141613, 36.096249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384556, 32.361465, 36.041290>,  <26.582323, 32.493378, 36.008316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384556, 32.361465, 36.041290>,  <26.054945, 32.141613, 36.096249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384556, 32.361465, 36.041290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562973, -0.767189, 0.307379,
		0.063534, -0.330642, -0.941615,
		0.824029, 0.549633, -0.137400,
		26.631765, 32.526356, 36.000069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466404, 31.641190, 35.927750>,  <26.054945, 32.141613, 36.096249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466404, 31.641190, 35.927750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705288, 31.940952, 36.042103>,  <26.848618, 32.120811, 36.110714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705288, 31.940952, 36.042103>,  <26.466404, 31.641190, 35.927750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705288, 31.940952, 36.042103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626512, -0.658397, 0.417129,
		0.500822, -0.070006, -0.862714,
		0.597210, 0.749408, 0.285880,
		26.884451, 32.165775, 36.127869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188732, 31.454329, 35.685497>,  <26.466404, 31.641190, 35.927750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188732, 31.454329, 35.685497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125870, 31.670090, 36.016399>,  <27.088152, 31.799545, 36.214939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125870, 31.670090, 36.016399>,  <27.188732, 31.454329, 35.685497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125870, 31.670090, 36.016399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583664, -0.624984, 0.518394,
		0.796642, 0.564306, -0.216610,
		-0.157155, 0.539402, 0.827254,
		27.078724, 31.831911, 36.264576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216496, 31.231209, 36.457241>,  <27.188732, 31.454329, 35.685497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216496, 31.231209, 36.457241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550301, 31.421448, 36.568520>,  <27.750584, 31.535591, 36.635288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550301, 31.421448, 36.568520>,  <27.216496, 31.231209, 36.457241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550301, 31.421448, 36.568520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182595, 0.237667, -0.954030,
		-0.519855, 0.846948, 0.111494,
		0.834512, 0.475599, 0.278201,
		27.800653, 31.564127, 36.651981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590479, 31.463514, 36.628788>,  <27.216496, 31.231209, 36.457241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590479, 31.463514, 36.628788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459530, 31.839893, 36.594269>,  <26.380960, 32.065720, 36.573559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459530, 31.839893, 36.594269>,  <26.590479, 31.463514, 36.628788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459530, 31.839893, 36.594269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124320, 0.133428, 0.983230,
		0.936681, 0.311155, -0.160659,
		-0.327373, 0.940946, -0.086297,
		26.361319, 32.122177, 36.568378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862270, 32.028366, 37.029102>,  <26.590479, 31.463514, 36.628788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862270, 32.028366, 37.029102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236860, 32.087482, 36.901871>,  <27.461615, 32.122952, 36.825531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236860, 32.087482, 36.901871>,  <26.862270, 32.028366, 37.029102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236860, 32.087482, 36.901871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333402, 0.656706, -0.676447,
		0.108911, 0.739523, 0.664262,
		0.936473, 0.147793, -0.318081,
		27.517801, 32.131821, 36.806446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045654, 32.776722, 37.050171>,  <26.862270, 32.028366, 37.029102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045654, 32.776722, 37.050171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227470, 32.544067, 36.780327>,  <27.336559, 32.404476, 36.618420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227470, 32.544067, 36.780327>,  <27.045654, 32.776722, 37.050171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227470, 32.544067, 36.780327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359836, 0.572912, -0.736404,
		0.814808, 0.577473, 0.051118,
		0.454539, -0.581634, -0.674608,
		27.363832, 32.369576, 36.577946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514063, 33.148113, 36.599869>,  <27.045654, 32.776722, 37.050171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514063, 33.148113, 36.599869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335157, 32.830540, 36.435123>,  <27.227814, 32.639996, 36.336277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335157, 32.830540, 36.435123>,  <27.514063, 33.148113, 36.599869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335157, 32.830540, 36.435123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514007, 0.605015, -0.608074,
		0.731951, -0.060268, -0.678686,
		-0.447263, -0.793930, -0.411863,
		27.200979, 32.592361, 36.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722715, 33.173740, 35.910488>,  <27.514063, 33.148113, 36.599869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722715, 33.173740, 35.910488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382318, 32.965412, 35.937500>,  <27.178082, 32.840416, 35.953709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382318, 32.965412, 35.937500>,  <27.722715, 33.173740, 35.910488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382318, 32.965412, 35.937500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410251, 0.578961, -0.704626,
		0.327887, -0.627334, -0.706358,
		-0.850990, -0.520822, 0.067531,
		27.127022, 32.809166, 35.957760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434719, 33.065823, 35.179985>,  <27.722715, 33.173740, 35.910488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434719, 33.065823, 35.179985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126032, 33.035259, 35.432529>,  <26.940821, 33.016922, 35.584057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126032, 33.035259, 35.432529>,  <27.434719, 33.065823, 35.179985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126032, 33.035259, 35.432529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529154, 0.627830, -0.570812,
		-0.352773, -0.774592, -0.524937,
		-0.771717, -0.076405, 0.631360,
		26.894516, 33.012337, 35.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860767, 32.805252, 34.787617>,  <27.434719, 33.065823, 35.179985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860767, 32.805252, 34.787617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774084, 33.048157, 35.093369>,  <26.722075, 33.193901, 35.276817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774084, 33.048157, 35.093369>,  <26.860767, 32.805252, 34.787617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774084, 33.048157, 35.093369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495788, 0.606035, -0.622025,
		-0.840971, -0.513766, 0.169741,
		-0.216706, 0.607261, 0.764377,
		26.709072, 33.230335, 35.322681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101919, 32.841328, 34.922672>,  <26.860767, 32.805252, 34.787617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101919, 32.841328, 34.922672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274736, 33.174274, 35.061527>,  <26.378428, 33.374043, 35.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274736, 33.174274, 35.061527>,  <26.101919, 32.841328, 34.922672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274736, 33.174274, 35.061527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515849, 0.543813, -0.661942,
		-0.739755, 0.106918, 0.664327,
		0.432044, 0.832368, 0.347135,
		26.404350, 33.423985, 35.165668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283068, 32.723030, 35.083405>,  <26.101919, 32.841328, 34.922672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283068, 32.723030, 35.083405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500153, 32.981743, 35.297745>,  <25.630404, 33.136971, 35.426350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500153, 32.981743, 35.297745>,  <25.283068, 32.723030, 35.083405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500153, 32.981743, 35.297745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699348, 0.701299, -0.138178,
		-0.465163, -0.299756, 0.832928,
		0.542712, 0.646782, 0.535852,
		25.662966, 33.175777, 35.458500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.817749, 33.175720, 35.525898>,  <25.283068, 32.723030, 35.083405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.817749, 33.175720, 35.525898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159971, 33.382538, 35.536446>,  <25.365305, 33.506626, 35.542774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159971, 33.382538, 35.536446>,  <24.817749, 33.175720, 35.525898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159971, 33.382538, 35.536446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517263, 0.855824, 0.001946,
		-0.021562, -0.015305, 0.999650,
		0.855555, 0.517040, 0.026370,
		25.416637, 33.537651, 35.544357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367472, 33.186623, 35.959343>,  <24.817749, 33.175720, 35.525898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367472, 33.186623, 35.959343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581263, 33.515411, 35.880657>,  <25.709538, 33.712685, 35.833447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581263, 33.515411, 35.880657>,  <25.367472, 33.186623, 35.959343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581263, 33.515411, 35.880657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844900, 0.513616, -0.149470,
		-0.021827, 0.246089, 0.969001,
		0.534478, 0.821972, -0.196710,
		25.741606, 33.762005, 35.821644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868860, 33.758343, 36.224838>,  <25.367472, 33.186623, 35.959343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868860, 33.758343, 36.224838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134357, 33.902660, 35.962761>,  <25.293655, 33.989250, 35.805515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134357, 33.902660, 35.962761>,  <24.868860, 33.758343, 36.224838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134357, 33.902660, 35.962761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624500, 0.749406, -0.219978,
		0.411639, 0.555176, 0.722727,
		0.663742, 0.360791, -0.655192,
		25.333481, 34.010899, 35.766205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019571, 34.504448, 36.364296>,  <24.868860, 33.758343, 36.224838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019571, 34.504448, 36.364296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123150, 34.447857, 35.982105>,  <25.185297, 34.413902, 35.752792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123150, 34.447857, 35.982105>,  <25.019571, 34.504448, 36.364296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123150, 34.447857, 35.982105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505953, 0.822776, -0.258944,
		0.822776, 0.550478, 0.141474,
		0.258944, -0.141474, -0.955475,
		25.200832, 34.405415, 35.695461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329508, 35.138203, 36.101513>,  <25.019571, 34.504448, 36.364296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329508, 35.138203, 36.101513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203447, 34.927624, 35.785656>,  <25.127811, 34.801277, 35.596142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203447, 34.927624, 35.785656>,  <25.329508, 35.138203, 36.101513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203447, 34.927624, 35.785656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535043, 0.785766, -0.310324,
		0.783839, 0.324686, -0.529316,
		-0.315161, -0.526451, -0.789635,
		25.108902, 34.769691, 35.548763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481272, 35.570061, 35.472496>,  <25.329508, 35.138203, 36.101513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481272, 35.570061, 35.472496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173409, 35.316734, 35.440170>,  <24.988689, 35.164738, 35.420773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173409, 35.316734, 35.440170>,  <25.481272, 35.570061, 35.472496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173409, 35.316734, 35.440170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588756, 0.753003, -0.293860,
		0.246963, -0.178591, -0.952426,
		-0.769660, -0.633318, -0.080817,
		24.942511, 35.126740, 35.415924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801935, 36.156528, 35.852524>,  <25.481272, 35.570061, 35.472496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801935, 36.156528, 35.852524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798990, 36.230072, 35.459354>,  <25.797224, 36.274200, 35.223454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798990, 36.230072, 35.459354>,  <25.801935, 36.156528, 35.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798990, 36.230072, 35.459354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427593, 0.889133, 0.163114,
		0.903942, -0.419090, -0.085164,
		-0.007363, 0.183861, -0.982925,
		25.796782, 36.285229, 35.164478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350475, 36.487171, 35.754486>,  <25.801935, 36.156528, 35.852524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350475, 36.487171, 35.754486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137842, 36.572067, 35.426491>,  <26.010263, 36.623005, 35.229694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137842, 36.572067, 35.426491>,  <26.350475, 36.487171, 35.754486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137842, 36.572067, 35.426491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380023, 0.924951, -0.006952,
		0.756970, -0.315309, -0.572343,
		-0.531581, 0.212241, -0.819985,
		25.978369, 36.635738, 35.180496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759756, 36.988392, 35.460564>,  <26.350475, 36.487171, 35.754486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759756, 36.988392, 35.460564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409149, 37.033981, 35.273491>,  <26.198786, 37.061337, 35.161247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409149, 37.033981, 35.273491>,  <26.759756, 36.988392, 35.460564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409149, 37.033981, 35.273491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171091, 0.981890, -0.081360,
		0.449941, -0.151330, -0.880143,
		-0.876516, 0.113977, -0.467684,
		26.146194, 37.068176, 35.133186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923508, 37.603920, 35.133266>,  <26.759756, 36.988392, 35.460564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923508, 37.603920, 35.133266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526958, 37.577915, 35.087734>,  <26.289030, 37.562313, 35.060417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526958, 37.577915, 35.087734>,  <26.923508, 37.603920, 35.133266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526958, 37.577915, 35.087734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044775, 0.984069, -0.172059,
		0.123199, -0.165477, -0.978488,
		-0.991371, -0.065009, -0.113827,
		26.229548, 37.558411, 35.053585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720251, 37.957565, 34.509964>,  <26.923508, 37.603920, 35.133266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720251, 37.957565, 34.509964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425419, 37.954670, 34.780270>,  <26.248520, 37.952934, 34.942451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425419, 37.954670, 34.780270>,  <26.720251, 37.957565, 34.509964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425419, 37.954670, 34.780270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169760, 0.969863, -0.174776,
		-0.654135, -0.243542, -0.716097,
		-0.737082, -0.007238, 0.675765,
		26.204294, 37.952499, 34.982998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277237, 38.438229, 34.252522>,  <26.720251, 37.957565, 34.509964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277237, 38.438229, 34.252522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174225, 38.380566, 34.634705>,  <26.112417, 38.345966, 34.864014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174225, 38.380566, 34.634705>,  <26.277237, 38.438229, 34.252522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174225, 38.380566, 34.634705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105972, 0.987058, 0.120364,
		-0.960442, -0.070254, -0.269472,
		-0.257529, -0.144159, 0.955456,
		26.096966, 38.337318, 34.921341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188042, 39.057945, 34.508659>,  <26.277237, 38.438229, 34.252522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188042, 39.057945, 34.508659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057974, 38.879044, 34.841942>,  <25.979933, 38.771702, 35.041912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057974, 38.879044, 34.841942>,  <26.188042, 39.057945, 34.508659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057974, 38.879044, 34.841942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284525, 0.886533, 0.364836,
		-0.901837, -0.118434, -0.415529,
		-0.325171, -0.447251, 0.833205,
		25.960423, 38.744869, 35.091904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649420, 39.404274, 34.759701>,  <26.188042, 39.057945, 34.508659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649420, 39.404274, 34.759701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805618, 39.207317, 35.070847>,  <25.899338, 39.089146, 35.257534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805618, 39.207317, 35.070847>,  <25.649420, 39.404274, 34.759701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805618, 39.207317, 35.070847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017674, 0.840780, 0.541089,
		-0.920435, -0.225041, 0.319618,
		0.390496, -0.492388, 0.777860,
		25.922768, 39.059601, 35.304203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399246, 39.706623, 35.348854>,  <25.649420, 39.404274, 34.759701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399246, 39.706623, 35.348854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684212, 39.492111, 35.529907>,  <25.855190, 39.363403, 35.638538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684212, 39.492111, 35.529907>,  <25.399246, 39.706623, 35.348854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684212, 39.492111, 35.529907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136110, 0.738340, 0.660551,
		-0.688435, -0.408976, 0.598995,
		0.712412, -0.536276, 0.452633,
		25.897936, 39.331230, 35.665699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345411, 39.869114, 36.046028>,  <25.399246, 39.706623, 35.348854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345411, 39.869114, 36.046028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706997, 39.699043, 36.027821>,  <25.923948, 39.597000, 36.016895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706997, 39.699043, 36.027821>,  <25.345411, 39.869114, 36.046028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706997, 39.699043, 36.027821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335895, 0.640175, 0.690906,
		-0.264612, -0.639846, 0.721510,
		0.903966, -0.425174, -0.045523,
		25.978188, 39.571491, 36.014164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526451, 39.795471, 36.687943>,  <25.345411, 39.869114, 36.046028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526451, 39.795471, 36.687943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857651, 39.841492, 36.468422>,  <26.056370, 39.869102, 36.336708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857651, 39.841492, 36.468422>,  <25.526451, 39.795471, 36.687943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857651, 39.841492, 36.468422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372523, 0.618656, 0.691731,
		0.419103, -0.777193, 0.469387,
		0.827997, 0.115049, -0.548802,
		26.106050, 39.876007, 36.303780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568577, 40.510754, 36.699108>,  <25.526451, 39.795471, 36.687943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568577, 40.510754, 36.699108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912634, 40.689693, 36.601109>,  <26.119068, 40.797058, 36.542309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912634, 40.689693, 36.601109>,  <25.568577, 40.510754, 36.699108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912634, 40.689693, 36.601109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382694, -0.883595, -0.269825,
		-0.337188, 0.138328, -0.931220,
		0.860145, 0.447354, -0.245000,
		26.170677, 40.823898, 36.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785675, 40.453434, 36.011307>,  <25.568577, 40.510754, 36.699108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785675, 40.453434, 36.011307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144707, 40.489635, 36.183891>,  <26.360126, 40.511356, 36.287441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144707, 40.489635, 36.183891>,  <25.785675, 40.453434, 36.011307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144707, 40.489635, 36.183891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226743, -0.934098, -0.275768,
		0.378074, 0.345355, -0.858947,
		0.897579, 0.090500, 0.431465,
		26.413980, 40.516785, 36.313332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450605, 40.394836, 35.569370>,  <25.785675, 40.453434, 36.011307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450605, 40.394836, 35.569370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524378, 40.246967, 35.933640>,  <26.568642, 40.158245, 36.152203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524378, 40.246967, 35.933640>,  <26.450605, 40.394836, 35.569370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524378, 40.246967, 35.933640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195985, -0.894126, -0.402651,
		0.963107, 0.252739, -0.092452,
		0.184429, -0.369677, 0.910673,
		26.579706, 40.136063, 36.206841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122282, 40.010300, 35.699188>,  <26.450605, 40.394836, 35.569370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122282, 40.010300, 35.699188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839300, 39.860294, 35.938812>,  <26.669512, 39.770290, 36.082588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839300, 39.860294, 35.938812>,  <27.122282, 40.010300, 35.699188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839300, 39.860294, 35.938812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190701, -0.714888, -0.672732,
		0.680545, -0.590168, 0.434235,
		-0.707454, -0.375016, 0.599059,
		26.627064, 39.747791, 36.118530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200312, 39.200016, 35.818134>,  <27.122282, 40.010300, 35.699188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200312, 39.200016, 35.818134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819592, 39.296577, 35.893822>,  <26.591160, 39.354515, 35.939236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819592, 39.296577, 35.893822>,  <27.200312, 39.200016, 35.818134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819592, 39.296577, 35.893822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306691, -0.740137, -0.598446,
		-0.004416, -0.627633, 0.778497,
		-0.951799, 0.241401, 0.189221,
		26.534052, 39.368999, 35.950588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925434, 38.601898, 36.140743>,  <27.200312, 39.200016, 35.818134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925434, 38.601898, 36.140743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619198, 38.816227, 35.998329>,  <26.435455, 38.944824, 35.912880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619198, 38.816227, 35.998329>,  <26.925434, 38.601898, 36.140743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619198, 38.816227, 35.998329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330737, -0.802518, -0.496566,
		-0.551798, -0.262413, 0.791618,
		-0.765593, 0.535822, -0.356038,
		26.389521, 38.976974, 35.891518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403580, 38.131866, 36.040623>,  <26.925434, 38.601898, 36.140743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403580, 38.131866, 36.040623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251125, 38.403942, 35.790157>,  <26.159653, 38.567188, 35.639877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251125, 38.403942, 35.790157>,  <26.403580, 38.131866, 36.040623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251125, 38.403942, 35.790157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364195, -0.732982, -0.574543,
		-0.849762, 0.009065, 0.527088,
		-0.381138, 0.680188, -0.626162,
		26.136784, 38.607998, 35.602310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636185, 38.070629, 36.123585>,  <26.403580, 38.131866, 36.040623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636185, 38.070629, 36.123585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800322, 38.159111, 35.769707>,  <25.898804, 38.212200, 35.557381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800322, 38.159111, 35.769707>,  <25.636185, 38.070629, 36.123585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800322, 38.159111, 35.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370818, -0.845834, -0.383481,
		-0.833134, 0.485420, -0.265056,
		0.410343, 0.221204, -0.884696,
		25.923424, 38.225471, 35.504299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120913, 37.900711, 35.660435>,  <25.636185, 38.070629, 36.123585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120913, 37.900711, 35.660435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455086, 37.918556, 35.441322>,  <25.655590, 37.929264, 35.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455086, 37.918556, 35.441322>,  <25.120913, 37.900711, 35.660435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455086, 37.918556, 35.441322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124723, -0.955303, -0.268030,
		-0.535252, 0.292242, -0.792527,
		0.835433, 0.044617, -0.547778,
		25.705715, 37.931942, 35.276989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938858, 37.555225, 35.110844>,  <25.120913, 37.900711, 35.660435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938858, 37.555225, 35.110844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337662, 37.552448, 35.080063>,  <25.576944, 37.550781, 35.061592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337662, 37.552448, 35.080063>,  <24.938858, 37.555225, 35.110844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337662, 37.552448, 35.080063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032135, -0.942994, -0.331253,
		-0.070268, 0.332736, -0.940398,
		0.997010, -0.006943, -0.076955,
		25.636765, 37.550365, 35.056976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113661, 37.214657, 34.480171>,  <24.938858, 37.555225, 35.110844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113661, 37.214657, 34.480171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459557, 37.187622, 34.679234>,  <25.667093, 37.171402, 34.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459557, 37.187622, 34.679234>,  <25.113661, 37.214657, 34.480171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459557, 37.187622, 34.679234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167943, -0.894946, -0.413360,
		0.473308, 0.441026, -0.762545,
		0.864739, -0.067583, 0.497653,
		25.718979, 37.167347, 34.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416155, 36.846905, 34.034088>,  <25.113661, 37.214657, 34.480171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416155, 36.846905, 34.034088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596004, 36.799061, 34.388157>,  <25.703915, 36.770355, 34.600597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596004, 36.799061, 34.388157>,  <25.416155, 36.846905, 34.034088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596004, 36.799061, 34.388157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039441, -0.987369, -0.153452,
		0.892347, 0.103908, -0.439227,
		0.449624, -0.119609, 0.885173,
		25.730892, 36.763180, 34.653709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800251, 36.246021, 33.903893>,  <25.416155, 36.846905, 34.034088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800251, 36.246021, 33.903893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863155, 36.257565, 34.298748>,  <25.900898, 36.264488, 34.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863155, 36.257565, 34.298748>,  <25.800251, 36.246021, 33.903893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863155, 36.257565, 34.298748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013486, -0.999417, 0.031362,
		0.987465, -0.018244, -0.156780,
		0.157260, 0.028855, 0.987136,
		25.910334, 36.266220, 34.594887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445499, 36.405426, 34.363220>,  <25.800251, 36.246021, 33.903893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445499, 36.405426, 34.363220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631947, 36.433647, 34.010460>,  <26.743814, 36.450581, 33.798801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631947, 36.433647, 34.010460>,  <26.445499, 36.405426, 34.363220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631947, 36.433647, 34.010460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494543, 0.805761, 0.325847,
		0.733595, -0.588023, 0.340687,
		0.466118, 0.070555, -0.881905,
		26.771782, 36.454815, 33.745888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157003, 36.448078, 34.355080>,  <26.445499, 36.405426, 34.363220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157003, 36.448078, 34.355080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099451, 36.667839, 34.025848>,  <27.064919, 36.799694, 33.828312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099451, 36.667839, 34.025848>,  <27.157003, 36.448078, 34.355080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099451, 36.667839, 34.025848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587975, 0.716463, 0.375455,
		0.795980, -0.429926, -0.426122,
		-0.143882, 0.549403, -0.823076,
		27.056286, 36.832661, 33.778927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883694, 36.705189, 34.034508>,  <27.157003, 36.448078, 34.355080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883694, 36.705189, 34.034508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606968, 36.959900, 33.898331>,  <27.440931, 37.112728, 33.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606968, 36.959900, 33.898331>,  <27.883694, 36.705189, 34.034508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606968, 36.959900, 33.898331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511465, 0.764960, 0.391458,
		0.509701, 0.096690, -0.854901,
		-0.691816, 0.636778, -0.340447,
		27.399424, 37.150932, 33.796196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142874, 37.232246, 33.619484>,  <27.883694, 36.705189, 34.034508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142874, 37.232246, 33.619484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863537, 37.443256, 33.812992>,  <27.695934, 37.569862, 33.929096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863537, 37.443256, 33.812992>,  <28.142874, 37.232246, 33.619484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863537, 37.443256, 33.812992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702316, 0.635423, 0.320920,
		-0.138104, 0.563871, -0.814234,
		-0.698341, 0.527529, 0.483770,
		27.654034, 37.601517, 33.958122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081581, 37.970932, 33.519875>,  <28.142874, 37.232246, 33.619484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081581, 37.970932, 33.519875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997105, 37.893196, 33.903046>,  <27.946419, 37.846554, 34.132950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997105, 37.893196, 33.903046>,  <28.081581, 37.970932, 33.519875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997105, 37.893196, 33.903046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755997, 0.588735, 0.286111,
		-0.619570, 0.784617, 0.022586,
		-0.211190, -0.194341, 0.957930,
		27.933748, 37.834892, 34.190426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616304, 38.486191, 33.148682>,  <28.081581, 37.970932, 33.519875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616304, 38.486191, 33.148682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965971, 38.672321, 33.204250>,  <28.175772, 38.784000, 33.237591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965971, 38.672321, 33.204250>,  <27.616304, 38.486191, 33.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965971, 38.672321, 33.204250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477039, -0.876381, -0.066265,
		0.090916, 0.124199, -0.988084,
		0.874167, 0.465330, 0.138925,
		28.228222, 38.811920, 33.245926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134335, 38.186260, 32.718601>,  <27.616304, 38.486191, 33.148682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134335, 38.186260, 32.718601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345219, 38.338440, 33.022526>,  <28.471750, 38.429749, 33.204880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345219, 38.338440, 33.022526>,  <28.134335, 38.186260, 32.718601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345219, 38.338440, 33.022526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432379, -0.889867, 0.145552,
		0.731503, 0.251789, -0.633645,
		0.527212, 0.380446, 0.759808,
		28.503382, 38.452576, 33.250469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861742, 37.922234, 32.650284>,  <28.134335, 38.186260, 32.718601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861742, 37.922234, 32.650284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743345, 38.013824, 33.021221>,  <28.672306, 38.068779, 33.243782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743345, 38.013824, 33.021221>,  <28.861742, 37.922234, 32.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743345, 38.013824, 33.021221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304737, -0.897474, 0.318866,
		0.905275, 0.376977, 0.195871,
		-0.295994, 0.228973, 0.927340,
		28.654547, 38.082516, 33.299423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439766, 37.619820, 33.097275>,  <28.861742, 37.922234, 32.650284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439766, 37.619820, 33.097275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228081, 37.438095, 33.383919>,  <29.101070, 37.329060, 33.555904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228081, 37.438095, 33.383919>,  <29.439766, 37.619820, 33.097275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228081, 37.438095, 33.383919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497536, -0.850292, -0.171640,
		0.687309, 0.265707, 0.676022,
		-0.529211, -0.454316, 0.716613,
		29.069317, 37.301800, 33.598904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897453, 37.338322, 33.595520>,  <29.439766, 37.619820, 33.097275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897453, 37.338322, 33.595520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551725, 37.153812, 33.515339>,  <29.344288, 37.043106, 33.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551725, 37.153812, 33.515339>,  <29.897453, 37.338322, 33.595520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551725, 37.153812, 33.515339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501027, -0.754947, -0.423115,
		0.043842, -0.466138, 0.883625,
		-0.864321, -0.461270, -0.200449,
		29.292429, 37.015430, 33.455204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892813, 36.609028, 33.863674>,  <29.897453, 37.338322, 33.595520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892813, 36.609028, 33.863674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671993, 36.673309, 33.536404>,  <29.539501, 36.711880, 33.340042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671993, 36.673309, 33.536404>,  <29.892813, 36.609028, 33.863674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671993, 36.673309, 33.536404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581382, -0.629191, -0.515863,
		-0.597692, -0.760455, 0.253914,
		-0.552051, 0.160706, -0.818177,
		29.506378, 36.721523, 33.290951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744387, 36.674198, 33.833672>,  <29.892813, 36.609028, 33.863674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744387, 36.674198, 33.833672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435369, 36.903004, 33.943932>,  <30.249960, 37.040287, 34.010086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435369, 36.903004, 33.943932>,  <30.744387, 36.674198, 33.833672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435369, 36.903004, 33.943932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260169, 0.681162, -0.684347,
		-0.579215, -0.456972, -0.675046,
		-0.772543, 0.572010, 0.275649,
		30.203608, 37.074608, 34.026627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251535, 36.574593, 34.371952>,  <30.744387, 36.674198, 33.833672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251535, 36.574593, 34.371952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204617, 36.958427, 34.474274>,  <31.176466, 37.188728, 34.535667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204617, 36.958427, 34.474274>,  <31.251535, 36.574593, 34.371952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204617, 36.958427, 34.474274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392383, 0.281403, -0.875699,
		-0.912292, -0.002346, -0.409533,
		-0.117298, 0.959587, 0.255801,
		31.169428, 37.246304, 34.551014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643486, 36.042946, 34.577553>,  <31.251535, 36.574593, 34.371952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643486, 36.042946, 34.577553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541204, 35.930893, 34.207439>,  <30.479836, 35.863663, 33.985371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541204, 35.930893, 34.207439>,  <30.643486, 36.042946, 34.577553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541204, 35.930893, 34.207439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966698, -0.084503, -0.241565,
		-0.010520, -0.956236, 0.292408,
		-0.255703, -0.280129, -0.925280,
		30.464493, 35.846855, 33.929855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800962, 35.382137, 34.316040>,  <30.643486, 36.042946, 34.577553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800962, 35.382137, 34.316040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863110, 35.559204, 33.962791>,  <30.900398, 35.665443, 33.750843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863110, 35.559204, 33.962791>,  <30.800962, 35.382137, 34.316040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863110, 35.559204, 33.962791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682429, -0.694468, -0.228046,
		-0.714249, -0.567236, -0.409990,
		0.155369, 0.442670, -0.883121,
		30.909719, 35.692005, 33.697853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924444, 34.933506, 33.801765>,  <30.800962, 35.382137, 34.316040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924444, 34.933506, 33.801765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121151, 35.249596, 33.655495>,  <31.239174, 35.439247, 33.567734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121151, 35.249596, 33.655495>,  <30.924444, 34.933506, 33.801765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121151, 35.249596, 33.655495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734268, -0.602073, -0.313621,
		-0.467992, -0.114274, -0.876314,
		0.491766, 0.790221, -0.365673,
		31.268681, 35.486664, 33.545792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942781, 34.851810, 33.083241>,  <30.924444, 34.933506, 33.801765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942781, 34.851810, 33.083241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239264, 35.108948, 33.160561>,  <31.417152, 35.263229, 33.206951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239264, 35.108948, 33.160561>,  <30.942781, 34.851810, 33.083241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239264, 35.108948, 33.160561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654574, -0.628312, -0.420425,
		-0.148817, 0.438150, -0.886498,
		0.741206, 0.642845, 0.193298,
		31.461626, 35.301800, 33.218552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211298, 34.979851, 32.422031>,  <30.942781, 34.851810, 33.083241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211298, 34.979851, 32.422031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491186, 35.058662, 32.696716>,  <31.659119, 35.105949, 32.861526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491186, 35.058662, 32.696716>,  <31.211298, 34.979851, 32.422031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491186, 35.058662, 32.696716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609261, -0.666543, -0.429561,
		0.373086, 0.718958, -0.586435,
		0.699720, 0.197029, 0.686711,
		31.701101, 35.117771, 32.902729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781315, 34.936970, 32.068317>,  <31.211298, 34.979851, 32.422031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781315, 34.936970, 32.068317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953081, 34.937740, 32.429558>,  <32.056141, 34.938202, 32.646301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953081, 34.937740, 32.429558>,  <31.781315, 34.936970, 32.068317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953081, 34.937740, 32.429558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683870, -0.653828, -0.323775,
		0.589851, 0.756640, -0.282083,
		0.429415, 0.001929, 0.903105,
		32.081905, 34.938320, 32.700489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513470, 34.980968, 31.917004>,  <31.781315, 34.936970, 32.068317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513470, 34.980968, 31.917004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474194, 34.847000, 32.291851>,  <32.450626, 34.766621, 32.516758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474194, 34.847000, 32.291851>,  <32.513470, 34.980968, 31.917004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474194, 34.847000, 32.291851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594358, -0.775009, -0.214707,
		0.798184, 0.535901, 0.275159,
		-0.098189, -0.334919, 0.937117,
		32.444736, 34.746525, 32.572987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152241, 35.109222, 32.326214>,  <32.513470, 34.980968, 31.917004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152241, 35.109222, 32.326214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961529, 34.809166, 32.509502>,  <32.847099, 34.629131, 32.619476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961529, 34.809166, 32.509502>,  <33.152241, 35.109222, 32.326214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961529, 34.809166, 32.509502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739830, -0.623954, -0.251660,
		0.474689, 0.219018, 0.852468,
		-0.476783, -0.750142, 0.458220,
		32.818493, 34.584122, 32.646969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766514, 34.650078, 32.633842>,  <33.152241, 35.109222, 32.326214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766514, 34.650078, 32.633842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427605, 34.442474, 32.588646>,  <33.224258, 34.317913, 32.561527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427605, 34.442474, 32.588646>,  <33.766514, 34.650078, 32.633842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427605, 34.442474, 32.588646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529097, -0.805913, -0.265633,
		0.046804, -0.284846, 0.957430,
		-0.847270, -0.519006, -0.112992,
		33.173424, 34.286774, 32.554749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853752, 34.043274, 32.947895>,  <33.766514, 34.650078, 32.633842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853752, 34.043274, 32.947895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561504, 34.002766, 32.677799>,  <33.386158, 33.978462, 32.515743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561504, 34.002766, 32.677799>,  <33.853752, 34.043274, 32.947895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561504, 34.002766, 32.677799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481295, -0.777849, -0.404110,
		-0.484308, -0.620238, 0.617051,
		-0.730617, -0.101270, -0.675236,
		33.342319, 33.972385, 32.475227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865524, 33.320213, 32.899723>,  <33.853752, 34.043274, 32.947895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865524, 33.320213, 32.899723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621780, 33.393490, 32.591148>,  <33.475533, 33.437458, 32.406002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621780, 33.393490, 32.591148>,  <33.865524, 33.320213, 32.899723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621780, 33.393490, 32.591148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227998, -0.891366, -0.391771,
		-0.759405, -0.414616, 0.501395,
		-0.609361, 0.183196, -0.771439,
		33.438972, 33.448448, 32.359718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459988, 32.778095, 32.892487>,  <33.865524, 33.320213, 32.899723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459988, 32.778095, 32.892487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449059, 32.921509, 32.519241>,  <33.442501, 33.007557, 32.295292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449059, 32.921509, 32.519241>,  <33.459988, 32.778095, 32.892487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449059, 32.921509, 32.519241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278132, -0.893878, -0.351602,
		-0.960154, -0.269136, -0.075298,
		-0.027322, 0.358535, -0.933117,
		33.440861, 33.029068, 32.239307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264858, 32.184406, 32.388103>,  <33.459988, 32.778095, 32.892487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264858, 32.184406, 32.388103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407387, 32.458496, 32.134014>,  <33.492905, 32.622948, 31.981560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407387, 32.458496, 32.134014>,  <33.264858, 32.184406, 32.388103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407387, 32.458496, 32.134014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392408, -0.726728, -0.563811,
		-0.847969, -0.048369, -0.527834,
		0.356321, 0.685221, -0.635223,
		33.514282, 32.664062, 31.943447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070202, 31.974209, 31.690184>,  <33.264858, 32.184406, 32.388103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070202, 31.974209, 31.690184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385201, 32.211262, 31.622501>,  <33.574200, 32.353493, 31.581892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385201, 32.211262, 31.622501>,  <33.070202, 31.974209, 31.690184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385201, 32.211262, 31.622501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328385, -0.635798, -0.698516,
		-0.521545, 0.494515, -0.695302,
		0.787499, 0.592634, -0.169206,
		33.621449, 32.389053, 31.571739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055157, 32.003223, 30.936703>,  <33.070202, 31.974209, 31.690184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055157, 32.003223, 30.936703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418762, 32.109409, 31.065214>,  <33.636925, 32.173122, 31.142321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418762, 32.109409, 31.065214>,  <33.055157, 32.003223, 30.936703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418762, 32.109409, 31.065214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414908, -0.503745, -0.757689,
		-0.039297, 0.822052, -0.568055,
		0.909014, 0.265466, 0.321281,
		33.691467, 32.189049, 31.161598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309792, 32.217476, 30.288231>,  <33.055157, 32.003223, 30.936703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309792, 32.217476, 30.288231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615726, 32.143513, 30.535078>,  <33.799286, 32.099136, 30.683186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615726, 32.143513, 30.535078>,  <33.309792, 32.217476, 30.288231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615726, 32.143513, 30.535078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485295, -0.464636, -0.740677,
		0.423688, 0.865982, -0.265638,
		0.764838, -0.184903, 0.617118,
		33.845177, 32.088043, 30.720213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970833, 32.243359, 29.887554>,  <33.309792, 32.217476, 30.288231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970833, 32.243359, 29.887554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075905, 32.023579, 30.204819>,  <34.138950, 31.891712, 30.395178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075905, 32.023579, 30.204819>,  <33.970833, 32.243359, 29.887554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075905, 32.023579, 30.204819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451599, -0.656425, -0.604289,
		0.852676, 0.516928, 0.075697,
		0.262684, -0.549447, 0.793161,
		34.154709, 31.858744, 30.442768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628735, 32.162785, 29.760910>,  <33.970833, 32.243359, 29.887554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628735, 32.162785, 29.760910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557785, 31.873587, 30.027988>,  <34.515217, 31.700068, 30.188236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557785, 31.873587, 30.027988>,  <34.628735, 32.162785, 29.760910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557785, 31.873587, 30.027988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447253, -0.663564, -0.599707,
		0.876644, 0.192258, 0.441059,
		-0.177372, -0.722994, 0.667697,
		34.504574, 31.656689, 30.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279133, 31.915226, 29.834614>,  <34.628735, 32.162785, 29.760910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279133, 31.915226, 29.834614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995739, 31.657099, 29.948885>,  <34.825703, 31.502222, 30.017447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995739, 31.657099, 29.948885>,  <35.279133, 31.915226, 29.834614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995739, 31.657099, 29.948885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423536, -0.712596, -0.559308,
		0.564503, -0.275268, 0.778180,
		-0.708487, -0.645318, 0.285677,
		34.783192, 31.463503, 30.034588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682373, 31.334213, 29.895281>,  <35.279133, 31.915226, 29.834614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682373, 31.334213, 29.895281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303520, 31.206768, 29.880201>,  <35.076206, 31.130301, 29.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303520, 31.206768, 29.880201>,  <35.682373, 31.334213, 29.895281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303520, 31.206768, 29.880201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280212, -0.764250, -0.580864,
		0.156262, -0.560719, 0.813127,
		-0.947134, -0.318615, -0.037697,
		35.019379, 31.111183, 29.868893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608570, 30.649227, 30.084867>,  <35.682373, 31.334213, 29.895281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608570, 30.649227, 30.084867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277012, 30.709160, 29.869284>,  <35.078075, 30.745119, 29.739933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277012, 30.709160, 29.869284>,  <35.608570, 30.649227, 30.084867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277012, 30.709160, 29.869284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286673, -0.713556, -0.639263,
		-0.480359, -0.684389, 0.548513,
		-0.828899, 0.149832, -0.538959,
		35.028343, 30.754110, 29.707596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462292, 29.929457, 29.792498>,  <35.608570, 30.649227, 30.084867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462292, 29.929457, 29.792498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263119, 30.181732, 29.554407>,  <35.143616, 30.333097, 29.411552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263119, 30.181732, 29.554407>,  <35.462292, 29.929457, 29.792498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263119, 30.181732, 29.554407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170252, -0.601916, -0.780200,
		-0.850338, -0.489828, 0.192340,
		-0.497936, 0.630687, -0.595226,
		35.113739, 30.370937, 29.375839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908562, 29.594419, 29.484434>,  <35.462292, 29.929457, 29.792498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908562, 29.594419, 29.484434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971031, 29.903761, 29.238659>,  <35.008514, 30.089365, 29.091194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971031, 29.903761, 29.238659>,  <34.908562, 29.594419, 29.484434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971031, 29.903761, 29.238659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171968, -0.633860, -0.754089,
		-0.972644, 0.012105, -0.231984,
		0.156173, 0.773354, -0.614438,
		35.017883, 30.135767, 29.054327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397724, 29.495256, 28.953007>,  <34.908562, 29.594419, 29.484434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397724, 29.495256, 28.953007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698109, 29.727097, 28.826437>,  <34.878338, 29.866201, 28.750496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698109, 29.727097, 28.826437>,  <34.397724, 29.495256, 28.953007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698109, 29.727097, 28.826437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072368, -0.548523, -0.832998,
		-0.656370, 0.602649, -0.453863,
		0.750960, 0.579600, -0.316422,
		34.923397, 29.900976, 28.731510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293633, 29.593466, 28.175018>,  <34.397724, 29.495256, 28.953007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293633, 29.593466, 28.175018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672409, 29.696337, 28.252125>,  <34.899677, 29.758059, 28.298389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672409, 29.696337, 28.252125>,  <34.293633, 29.593466, 28.175018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672409, 29.696337, 28.252125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288675, -0.416892, -0.861898,
		-0.141297, 0.871815, -0.469013,
		0.946943, 0.257176, 0.192766,
		34.956493, 29.773489, 28.309956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473812, 29.831059, 27.475582>,  <34.293633, 29.593466, 28.175018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473812, 29.831059, 27.475582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807671, 29.758270, 27.683527>,  <35.007984, 29.714598, 27.808294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807671, 29.758270, 27.683527>,  <34.473812, 29.831059, 27.475582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807671, 29.758270, 27.683527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397047, -0.455371, -0.796863,
		0.381737, 0.871506, -0.307822,
		0.834644, -0.181972, 0.519861,
		35.058064, 29.703678, 27.839485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861271, 29.826586, 26.968714>,  <34.473812, 29.831059, 27.475582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861271, 29.826586, 26.968714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118561, 29.674860, 27.234760>,  <35.272934, 29.583824, 27.394388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118561, 29.674860, 27.234760>,  <34.861271, 29.826586, 26.968714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118561, 29.674860, 27.234760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608892, -0.273273, -0.744696,
		0.464232, 0.883993, 0.055184,
		0.643226, -0.379313, 0.665118,
		35.311527, 29.561066, 27.434296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505024, 30.122171, 26.890882>,  <34.861271, 29.826586, 26.968714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505024, 30.122171, 26.890882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583527, 29.774456, 27.072353>,  <35.630627, 29.565826, 27.181236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583527, 29.774456, 27.072353>,  <35.505024, 30.122171, 26.890882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583527, 29.774456, 27.072353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776138, -0.145039, -0.613656,
		0.599244, 0.472549, 0.646223,
		0.196255, -0.869287, 0.453677,
		35.642403, 29.513670, 27.208456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241741, 30.058096, 26.833782>,  <35.505024, 30.122171, 26.890882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241741, 30.058096, 26.833782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096127, 29.693464, 26.910206>,  <36.008759, 29.474686, 26.956060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096127, 29.693464, 26.910206>,  <36.241741, 30.058096, 26.833782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096127, 29.693464, 26.910206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661716, -0.397492, -0.635714,
		0.655447, -0.104996, 0.747907,
		-0.364035, -0.911579, 0.191057,
		35.986916, 29.419991, 26.967524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881680, 29.608772, 26.720875>,  <36.241741, 30.058096, 26.833782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881680, 29.608772, 26.720875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564388, 29.365263, 26.715532>,  <36.374012, 29.219158, 26.712328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564388, 29.365263, 26.715532>,  <36.881680, 29.608772, 26.720875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564388, 29.365263, 26.715532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454711, -0.577617, -0.677936,
		0.404996, -0.543833, 0.735000,
		-0.793232, -0.608773, -0.013354,
		36.326420, 29.182631, 26.711527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129074, 28.869528, 26.735954>,  <36.881680, 29.608772, 26.720875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129074, 28.869528, 26.735954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753422, 28.828001, 26.604958>,  <36.528030, 28.803085, 26.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753422, 28.828001, 26.604958>,  <37.129074, 28.869528, 26.735954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753422, 28.828001, 26.604958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321065, -0.604426, -0.729099,
		-0.122251, -0.789868, 0.600969,
		-0.939134, -0.103817, -0.327490,
		36.471684, 28.796856, 26.506710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936947, 28.233618, 26.855537>,  <37.129074, 28.869528, 26.735954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936947, 28.233618, 26.855537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714523, 28.381294, 26.557680>,  <36.581070, 28.469900, 26.378965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714523, 28.381294, 26.557680>,  <36.936947, 28.233618, 26.855537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714523, 28.381294, 26.557680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286913, -0.755590, -0.588867,
		-0.780052, -0.541092, 0.314226,
		-0.556058, 0.369191, -0.744646,
		36.547707, 28.492050, 26.334286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675800, 27.666630, 26.533518>,  <36.936947, 28.233618, 26.855537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675800, 27.666630, 26.533518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627075, 27.950954, 26.256416>,  <36.597839, 28.121550, 26.090155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627075, 27.950954, 26.256416>,  <36.675800, 27.666630, 26.533518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627075, 27.950954, 26.256416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097221, -0.686051, -0.721029,
		-0.987781, -0.155178, 0.014462,
		-0.121810, 0.710812, -0.692754,
		36.590530, 28.164198, 26.048590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229740, 27.371048, 26.102745>,  <36.675800, 27.666630, 26.533518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229740, 27.371048, 26.102745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413666, 27.641500, 25.872469>,  <36.524021, 27.803772, 25.734303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413666, 27.641500, 25.872469>,  <36.229740, 27.371048, 26.102745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413666, 27.641500, 25.872469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126268, -0.691483, -0.711271,
		-0.878994, 0.254359, -0.403326,
		0.459811, 0.676130, -0.575692,
		36.551609, 27.844339, 25.699760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001129, 27.244627, 25.462736>,  <36.229740, 27.371048, 26.102745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001129, 27.244627, 25.462736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331436, 27.463810, 25.409286>,  <36.529621, 27.595320, 25.377216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331436, 27.463810, 25.409286>,  <36.001129, 27.244627, 25.462736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331436, 27.463810, 25.409286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307329, -0.635805, -0.708026,
		-0.472927, 0.543597, -0.693428,
		0.825766, 0.547956, -0.133626,
		36.579166, 27.628197, 25.369198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154060, 27.125414, 24.729565>,  <36.001129, 27.244627, 25.462736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154060, 27.125414, 24.729565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490353, 27.266794, 24.893637>,  <36.692127, 27.351622, 24.992079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490353, 27.266794, 24.893637>,  <36.154060, 27.125414, 24.729565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490353, 27.266794, 24.893637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541377, -0.535881, -0.647876,
		-0.009184, 0.766750, -0.641881,
		0.840730, 0.353449, 0.410179,
		36.742573, 27.372829, 25.016691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490650, 27.239229, 24.133556>,  <36.154060, 27.125414, 24.729565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490650, 27.239229, 24.133556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752769, 27.201374, 24.433323>,  <36.910042, 27.178661, 24.613182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752769, 27.201374, 24.433323>,  <36.490650, 27.239229, 24.133556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752769, 27.201374, 24.433323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601410, -0.534922, -0.593434,
		0.457039, 0.839585, -0.293621,
		0.655303, -0.094636, 0.749415,
		36.949360, 27.172983, 24.658148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232979, 27.464951, 23.893526>,  <36.490650, 27.239229, 24.133556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232979, 27.464951, 23.893526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257404, 27.192968, 24.185808>,  <37.272060, 27.029779, 24.361177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257404, 27.192968, 24.185808>,  <37.232979, 27.464951, 23.893526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257404, 27.192968, 24.185808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617491, -0.549434, -0.562874,
		0.784205, 0.485573, 0.386319,
		0.061060, -0.679957, 0.730706,
		37.275723, 26.988981, 24.405020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962120, 27.392591, 24.014797>,  <37.232979, 27.464951, 23.893526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962120, 27.392591, 24.014797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786564, 27.063179, 24.158562>,  <37.681232, 26.865532, 24.244820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786564, 27.063179, 24.158562>,  <37.962120, 27.392591, 24.014797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786564, 27.063179, 24.158562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633046, -0.567260, -0.526754,
		0.637677, -0.003662, 0.770296,
		-0.438887, -0.823531, 0.359410,
		37.654900, 26.816120, 24.266384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555408, 27.053902, 24.121004>,  <37.962120, 27.392591, 24.014797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555408, 27.053902, 24.121004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251541, 26.793777, 24.121986>,  <38.069221, 26.637703, 24.122576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251541, 26.793777, 24.121986>,  <38.555408, 27.053902, 24.121004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251541, 26.793777, 24.121986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470279, -0.551962, -0.688604,
		0.449161, -0.521954, 0.725133,
		-0.759665, -0.650309, 0.002455,
		38.023640, 26.598684, 24.122723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886543, 26.529123, 23.972851>,  <38.555408, 27.053902, 24.121004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886543, 26.529123, 23.972851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509518, 26.423843, 23.890579>,  <38.283302, 26.360676, 23.841217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509518, 26.423843, 23.890579>,  <38.886543, 26.529123, 23.972851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509518, 26.423843, 23.890579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324735, -0.577735, -0.748845,
		0.078270, -0.772624, 0.630021,
		-0.942561, -0.263202, -0.205679,
		38.226749, 26.344883, 23.828875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828384, 25.705885, 23.846226>,  <38.886543, 26.529123, 23.972851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828384, 25.705885, 23.846226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515888, 25.899395, 23.688427>,  <38.328392, 26.015501, 23.593748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515888, 25.899395, 23.688427>,  <38.828384, 25.705885, 23.846226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515888, 25.899395, 23.688427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162771, -0.452236, -0.876920,
		-0.602636, -0.749297, 0.274560,
		-0.781239, 0.483773, -0.394498,
		38.281517, 26.044527, 23.570078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439964, 25.247469, 23.650953>,  <38.828384, 25.705885, 23.846226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439964, 25.247469, 23.650953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304649, 25.548487, 23.424948>,  <38.223461, 25.729097, 23.289345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304649, 25.548487, 23.424948>,  <38.439964, 25.247469, 23.650953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304649, 25.548487, 23.424948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083153, -0.574160, -0.814509,
		-0.937363, -0.322517, 0.131652,
		-0.338283, 0.752544, -0.565015,
		38.203163, 25.774250, 23.255444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853470, 24.983774, 23.316576>,  <38.439964, 25.247469, 23.650953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853470, 24.983774, 23.316576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039753, 25.269985, 23.108294>,  <38.151524, 25.441711, 22.983324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039753, 25.269985, 23.108294>,  <37.853470, 24.983774, 23.316576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039753, 25.269985, 23.108294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096788, -0.626067, -0.773740,
		-0.879627, 0.309942, -0.360821,
		0.465712, 0.715526, -0.520707,
		38.179466, 25.484642, 22.952082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547192, 25.128933, 22.757826>,  <37.853470, 24.983774, 23.316576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547192, 25.128933, 22.757826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921955, 25.242270, 22.675938>,  <38.146812, 25.310272, 22.626804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921955, 25.242270, 22.675938>,  <37.547192, 25.128933, 22.757826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921955, 25.242270, 22.675938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003614, -0.593470, -0.804848,
		-0.349544, 0.753332, -0.557054,
		0.936913, 0.283343, -0.204721,
		38.203030, 25.327272, 22.614521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600952, 24.999905, 21.949017>,  <37.547192, 25.128933, 22.757826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600952, 24.999905, 21.949017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956631, 25.076981, 22.115004>,  <38.170036, 25.123226, 22.214596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956631, 25.076981, 22.115004>,  <37.600952, 24.999905, 21.949017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956631, 25.076981, 22.115004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437978, -0.620765, -0.650251,
		0.132302, 0.759948, -0.636376,
		0.889197, 0.192689, 0.414969,
		38.223389, 25.134787, 22.239494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028904, 25.316019, 21.429222>,  <37.600952, 24.999905, 21.949017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028904, 25.316019, 21.429222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274334, 25.160753, 21.704279>,  <38.421593, 25.067593, 21.869314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274334, 25.160753, 21.704279>,  <38.028904, 25.316019, 21.429222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274334, 25.160753, 21.704279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475675, -0.513404, -0.714248,
		0.630286, 0.765339, -0.130370,
		0.613574, -0.388166, 0.687644,
		38.458405, 25.044304, 21.910572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809715, 25.410984, 21.215574>,  <38.028904, 25.316019, 21.429222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809715, 25.410984, 21.215574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720913, 25.107569, 21.460632>,  <38.667633, 24.925520, 21.607668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720913, 25.107569, 21.460632>,  <38.809715, 25.410984, 21.215574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720913, 25.107569, 21.460632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329769, -0.649711, -0.684929,
		0.917587, 0.049975, 0.394381,
		-0.222004, -0.758536, 0.612647,
		38.654312, 24.880009, 21.644426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307796, 24.796335, 21.437784>,  <38.809715, 25.410984, 21.215574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307796, 24.796335, 21.437784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927223, 24.674494, 21.419956>,  <38.698879, 24.601389, 21.409260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927223, 24.674494, 21.419956>,  <39.307796, 24.796335, 21.437784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927223, 24.674494, 21.419956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182815, -0.442561, -0.877906,
		0.247689, -0.843419, 0.476754,
		-0.951436, -0.304605, -0.044572,
		38.641792, 24.583113, 21.406584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603798, 25.389374, 21.310751>,  <39.307796, 24.796335, 21.437784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603798, 25.389374, 21.310751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001060, 25.406851, 21.267437>,  <40.239418, 25.417337, 21.241449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001060, 25.406851, 21.267437>,  <39.603798, 25.389374, 21.310751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001060, 25.406851, 21.267437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017162, 0.862665, 0.505485,
		0.115499, -0.503886, 0.856014,
		0.993159, 0.043692, -0.108284,
		40.299007, 25.419958, 21.234951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760128, 25.506798, 21.959763>,  <39.603798, 25.389374, 21.310751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760128, 25.506798, 21.959763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045376, 25.634094, 21.709906>,  <40.216526, 25.710472, 21.559992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045376, 25.634094, 21.709906>,  <39.760128, 25.506798, 21.959763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045376, 25.634094, 21.709906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073695, 0.852057, 0.518236,
		0.697154, -0.415599, 0.584170,
		0.713124, 0.318240, -0.624642,
		40.259312, 25.729567, 21.522512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390591, 25.603918, 22.303175>,  <39.760128, 25.506798, 21.959763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390591, 25.603918, 22.303175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371231, 25.838089, 21.979464>,  <40.359615, 25.978592, 21.785236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371231, 25.838089, 21.979464>,  <40.390591, 25.603918, 22.303175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371231, 25.838089, 21.979464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069247, 0.806313, 0.587421,
		0.996425, 0.084470, 0.001515,
		-0.048398, 0.585426, -0.809280,
		40.356712, 26.013718, 21.736679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754368, 26.202400, 22.469166>,  <40.390591, 25.603918, 22.303175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754368, 26.202400, 22.469166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507576, 26.290182, 22.166861>,  <40.359501, 26.342852, 21.985477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507576, 26.290182, 22.166861>,  <40.754368, 26.202400, 22.469166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507576, 26.290182, 22.166861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194189, 0.888183, 0.416439,
		0.762645, 0.403695, -0.505375,
		-0.616980, 0.219457, -0.755761,
		40.322483, 26.356020, 21.940132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917789, 26.905861, 22.366272>,  <40.754368, 26.202400, 22.469166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917789, 26.905861, 22.366272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590988, 26.822508, 22.151205>,  <40.394909, 26.772497, 22.022165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590988, 26.822508, 22.151205>,  <40.917789, 26.905861, 22.366272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590988, 26.822508, 22.151205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299472, 0.950147, 0.086813,
		0.492772, 0.231943, -0.838677,
		-0.817002, -0.208381, -0.537666,
		40.345886, 26.759993, 21.989904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828617, 27.522993, 22.009449>,  <40.917789, 26.905861, 22.366272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828617, 27.522993, 22.009449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473454, 27.342846, 21.971970>,  <40.260353, 27.234756, 21.949482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473454, 27.342846, 21.971970>,  <40.828617, 27.522993, 22.009449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473454, 27.342846, 21.971970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459089, 0.880455, 0.118478,
		0.029140, 0.148215, -0.988526,
		-0.887912, -0.450369, -0.093700,
		40.207081, 27.207735, 21.943859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519810, 27.791725, 21.429432>,  <40.828617, 27.522993, 22.009449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519810, 27.791725, 21.429432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244068, 27.669039, 21.691948>,  <40.078625, 27.595427, 21.849457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244068, 27.669039, 21.691948>,  <40.519810, 27.791725, 21.429432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244068, 27.669039, 21.691948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413455, 0.910482, -0.008773,
		-0.594849, -0.277394, -0.754458,
		-0.689354, -0.306716, 0.656290,
		40.037262, 27.577024, 21.888834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083569, 28.304266, 21.314749>,  <40.519810, 27.791725, 21.429432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083569, 28.304266, 21.314749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945423, 28.111513, 21.636871>,  <39.862537, 27.995861, 21.830145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945423, 28.111513, 21.636871>,  <40.083569, 28.304266, 21.314749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945423, 28.111513, 21.636871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628228, 0.756185, 0.183068,
		-0.697177, -0.442692, -0.563886,
		-0.345360, -0.481880, 0.805307,
		39.841816, 27.966949, 21.878464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317493, 28.258310, 21.278204>,  <40.083569, 28.304266, 21.314749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317493, 28.258310, 21.278204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430984, 28.244793, 21.661528>,  <39.499081, 28.236683, 21.891521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430984, 28.244793, 21.661528>,  <39.317493, 28.258310, 21.278204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430984, 28.244793, 21.661528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669178, 0.708815, 0.223121,
		-0.686802, -0.704585, 0.178501,
		0.283732, -0.033791, 0.958308,
		39.516106, 28.234655, 21.949020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672256, 28.282173, 21.739155>,  <39.317493, 28.258310, 21.278204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672256, 28.282173, 21.739155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980900, 28.353537, 21.983383>,  <39.166084, 28.396355, 22.129921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980900, 28.353537, 21.983383>,  <38.672256, 28.282173, 21.739155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980900, 28.353537, 21.983383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564419, 0.634690, 0.527826,
		-0.293355, -0.751891, 0.590426,
		0.771605, 0.178407, 0.610571,
		39.212379, 28.407059, 22.166553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362972, 28.514481, 22.246910>,  <38.672256, 28.282173, 21.739155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362972, 28.514481, 22.246910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732182, 28.624199, 22.354824>,  <38.953709, 28.690029, 22.419573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732182, 28.624199, 22.354824>,  <38.362972, 28.514481, 22.246910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732182, 28.624199, 22.354824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369679, 0.438053, 0.819419,
		0.106582, -0.856079, 0.505736,
		0.923026, 0.274295, 0.269786,
		39.009090, 28.706488, 22.435760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340874, 28.407652, 22.950371>,  <38.362972, 28.514481, 22.246910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340874, 28.407652, 22.950371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665318, 28.633953, 22.891016>,  <38.859985, 28.769733, 22.855404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665318, 28.633953, 22.891016>,  <38.340874, 28.407652, 22.950371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665318, 28.633953, 22.891016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215876, 0.525364, 0.823037,
		0.543598, -0.635540, 0.548262,
		0.811110, 0.565758, -0.148389,
		38.908649, 28.803679, 22.846500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711620, 28.521595, 23.584625>,  <38.340874, 28.407652, 22.950371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711620, 28.521595, 23.584625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816753, 28.830423, 23.353168>,  <38.879833, 29.015720, 23.214294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816753, 28.830423, 23.353168>,  <38.711620, 28.521595, 23.584625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816753, 28.830423, 23.353168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096183, 0.617708, 0.780503,
		0.960036, -0.149484, 0.236613,
		0.262830, 0.772069, -0.578644,
		38.895603, 29.062044, 23.179575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329010, 28.812408, 23.848305>,  <38.711620, 28.521595, 23.584625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329010, 28.812408, 23.848305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189568, 29.115396, 23.627501>,  <39.105904, 29.297190, 23.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189568, 29.115396, 23.627501>,  <39.329010, 28.812408, 23.848305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189568, 29.115396, 23.627501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001865, 0.589517, 0.807754,
		0.937268, 0.280557, -0.206921,
		-0.348605, 0.757468, -0.552012,
		39.084988, 29.342636, 23.461897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774933, 29.393972, 23.994217>,  <39.329010, 28.812408, 23.848305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774933, 29.393972, 23.994217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401314, 29.488020, 23.886681>,  <39.177143, 29.544449, 23.822159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401314, 29.488020, 23.886681>,  <39.774933, 29.393972, 23.994217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401314, 29.488020, 23.886681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039735, 0.679653, 0.732457,
		0.354933, 0.694831, -0.625486,
		-0.934047, 0.235119, -0.268840,
		39.121101, 29.558556, 23.806028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809128, 30.078787, 24.165327>,  <39.774933, 29.393972, 23.994217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809128, 30.078787, 24.165327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421734, 30.016468, 24.087603>,  <39.189297, 29.979076, 24.040968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421734, 30.016468, 24.087603>,  <39.809128, 30.078787, 24.165327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421734, 30.016468, 24.087603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247932, 0.677181, 0.692789,
		0.023648, 0.719134, -0.694469,
		-0.968489, -0.155798, -0.194310,
		39.131187, 29.969728, 24.029310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533966, 30.699808, 23.996960>,  <39.809128, 30.078787, 24.165327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533966, 30.699808, 23.996960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226456, 30.478258, 24.124838>,  <39.041950, 30.345329, 24.201565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226456, 30.478258, 24.124838>,  <39.533966, 30.699808, 23.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226456, 30.478258, 24.124838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326333, 0.769678, 0.548728,
		-0.549989, 0.317523, -0.772458,
		-0.768778, -0.553873, 0.319696,
		38.995823, 30.312096, 24.220747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775551, 31.084270, 23.818365>,  <39.533966, 30.699808, 23.996960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775551, 31.084270, 23.818365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718479, 30.860191, 24.144756>,  <38.684235, 30.725744, 24.340591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718479, 30.860191, 24.144756>,  <38.775551, 31.084270, 23.818365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718479, 30.860191, 24.144756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618141, 0.694301, 0.368575,
		-0.773010, -0.451802, -0.445343,
		-0.142679, -0.560197, 0.815979,
		38.675674, 30.692133, 24.389549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074280, 31.231358, 24.032431>,  <38.775551, 31.084270, 23.818365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074280, 31.231358, 24.032431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205444, 31.034575, 24.355034>,  <38.284142, 30.916506, 24.548595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205444, 31.034575, 24.355034>,  <38.074280, 31.231358, 24.032431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205444, 31.034575, 24.355034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663943, 0.487310, 0.567194,
		-0.672054, -0.721462, -0.166839,
		0.327907, -0.491956, 0.806509,
		38.303818, 30.886988, 24.596987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526688, 30.827312, 24.361319>,  <38.074280, 31.231358, 24.032431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526688, 30.827312, 24.361319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792175, 30.881802, 24.655508>,  <37.951469, 30.914495, 24.832022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792175, 30.881802, 24.655508>,  <37.526688, 30.827312, 24.361319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792175, 30.881802, 24.655508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713466, 0.410549, 0.567817,
		-0.224598, -0.901606, 0.369680,
		0.663719, 0.136224, 0.735473,
		37.991291, 30.922668, 24.876150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188473, 30.670959, 24.951509>,  <37.526688, 30.827312, 24.361319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188473, 30.670959, 24.951509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502132, 30.868279, 25.102116>,  <37.690327, 30.986670, 25.192480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502132, 30.868279, 25.102116>,  <37.188473, 30.670959, 24.951509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502132, 30.868279, 25.102116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600804, 0.451554, 0.659646,
		0.155385, -0.743475, 0.650462,
		0.784149, 0.493300, 0.376518,
		37.737377, 31.016268, 25.215071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126179, 30.601419, 25.717562>,  <37.188473, 30.670959, 24.951509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126179, 30.601419, 25.717562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343254, 30.932705, 25.661633>,  <37.473499, 31.131477, 25.628075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343254, 30.932705, 25.661633>,  <37.126179, 30.601419, 25.717562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343254, 30.932705, 25.661633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557352, 0.479623, 0.677732,
		0.628371, -0.289864, 0.721892,
		0.542686, 0.828215, -0.139825,
		37.506062, 31.181170, 25.619684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279118, 30.812231, 26.403860>,  <37.126179, 30.601419, 25.717562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279118, 30.812231, 26.403860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322884, 31.133116, 26.169088>,  <37.349144, 31.325647, 26.028225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322884, 31.133116, 26.169088>,  <37.279118, 30.812231, 26.403860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322884, 31.133116, 26.169088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437254, 0.569118, 0.696358,
		0.892658, 0.180445, 0.413040,
		0.109414, 0.802212, -0.586927,
		37.355709, 31.373779, 25.993010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306881, 31.245890, 26.833763>,  <37.279118, 30.812231, 26.403860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306881, 31.245890, 26.833763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250458, 31.480169, 26.514500>,  <37.216602, 31.620737, 26.322941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250458, 31.480169, 26.514500>,  <37.306881, 31.245890, 26.833763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250458, 31.480169, 26.514500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534119, 0.633794, 0.559484,
		0.833558, 0.505232, 0.223431,
		-0.141060, 0.585701, -0.798158,
		37.208141, 31.655880, 26.275053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429169, 31.852127, 27.151901>,  <37.306881, 31.245890, 26.833763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429169, 31.852127, 27.151901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223167, 31.925785, 26.817032>,  <37.099567, 31.969980, 26.616110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223167, 31.925785, 26.817032>,  <37.429169, 31.852127, 27.151901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223167, 31.925785, 26.817032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463543, 0.761700, 0.452705,
		0.721038, 0.621211, -0.306920,
		-0.515007, 0.184147, -0.837173,
		37.068665, 31.981030, 26.565880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602718, 32.565659, 26.989952>,  <37.429169, 31.852127, 27.151901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602718, 32.565659, 26.989952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252090, 32.471386, 26.822107>,  <37.041714, 32.414822, 26.721401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252090, 32.471386, 26.822107>,  <37.602718, 32.565659, 26.989952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252090, 32.471386, 26.822107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432298, 0.768768, 0.471289,
		0.211511, 0.594517, -0.775766,
		-0.876574, -0.235680, -0.419611,
		36.989117, 32.400681, 26.696224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309547, 33.161045, 26.645880>,  <37.602718, 32.565659, 26.989952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309547, 33.161045, 26.645880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996834, 32.915619, 26.690334>,  <36.809204, 32.768364, 26.717007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996834, 32.915619, 26.690334>,  <37.309547, 33.161045, 26.645880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996834, 32.915619, 26.690334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556753, 0.767122, 0.318668,
		-0.280777, 0.187255, -0.941328,
		-0.781786, -0.613563, 0.111136,
		36.762299, 32.731548, 26.723675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694218, 33.648323, 26.544149>,  <37.309547, 33.161045, 26.645880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694218, 33.648323, 26.544149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547443, 33.331001, 26.738478>,  <36.459381, 33.140606, 26.855074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547443, 33.331001, 26.738478>,  <36.694218, 33.648323, 26.544149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547443, 33.331001, 26.738478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712953, 0.575291, 0.400923,
		-0.597544, -0.199255, -0.776684,
		-0.366933, -0.793308, 0.485821,
		36.437363, 33.093010, 26.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955139, 33.631351, 26.401791>,  <36.694218, 33.648323, 26.544149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955139, 33.631351, 26.401791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047672, 33.454178, 26.748268>,  <36.103191, 33.347874, 26.956154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047672, 33.454178, 26.748268>,  <35.955139, 33.631351, 26.401791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047672, 33.454178, 26.748268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568930, 0.660640, 0.489768,
		-0.789179, -0.606103, -0.099173,
		0.231332, -0.442938, 0.866194,
		36.117073, 33.321297, 27.008125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357975, 33.689667, 26.776361>,  <35.955139, 33.631351, 26.401791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357975, 33.689667, 26.776361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596489, 33.582615, 27.079100>,  <35.739597, 33.518383, 27.260742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596489, 33.582615, 27.079100>,  <35.357975, 33.689667, 26.776361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596489, 33.582615, 27.079100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544770, 0.557574, 0.626367,
		-0.589635, -0.785801, 0.186675,
		0.596285, -0.267633, 0.756846,
		35.775375, 33.502323, 27.306154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938404, 33.561455, 27.395182>,  <35.357975, 33.689667, 26.776361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938404, 33.561455, 27.395182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288685, 33.604656, 27.583431>,  <35.498852, 33.630577, 27.696381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288685, 33.604656, 27.583431>,  <34.938404, 33.561455, 27.395182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288685, 33.604656, 27.583431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458942, 0.489094, 0.741727,
		-0.150071, -0.865519, 0.477865,
		0.875700, 0.108001, 0.470622,
		35.551395, 33.637058, 27.724617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888264, 33.196686, 28.123095>,  <34.938404, 33.561455, 27.395182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888264, 33.196686, 28.123095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163509, 33.485146, 28.155203>,  <35.328655, 33.658222, 28.174469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163509, 33.485146, 28.155203>,  <34.888264, 33.196686, 28.123095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163509, 33.485146, 28.155203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473050, 0.361971, 0.803244,
		0.550201, -0.590697, 0.590217,
		0.688115, 0.721148, 0.080273,
		35.369946, 33.701488, 28.179285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834919, 33.572674, 28.737860>,  <34.888264, 33.196686, 28.123095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834919, 33.572674, 28.737860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054382, 33.871967, 28.588659>,  <35.186058, 34.051544, 28.499140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054382, 33.871967, 28.588659>,  <34.834919, 33.572674, 28.737860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054382, 33.871967, 28.588659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248474, 0.571920, 0.781772,
		0.798271, -0.336243, 0.499703,
		0.548656, 0.748230, -0.372999,
		35.218979, 34.096436, 28.476759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139256, 33.878895, 29.265285>,  <34.834919, 33.572674, 28.737860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139256, 33.878895, 29.265285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162033, 34.175755, 28.998163>,  <35.175701, 34.353870, 28.837889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162033, 34.175755, 28.998163>,  <35.139256, 33.878895, 29.265285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162033, 34.175755, 28.998163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218840, 0.661905, 0.716931,
		0.974097, 0.105316, 0.200106,
		0.056947, 0.742152, -0.667807,
		35.179115, 34.398399, 28.797821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488319, 34.420258, 29.576010>,  <35.139256, 33.878895, 29.265285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488319, 34.420258, 29.576010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293686, 34.621441, 29.290276>,  <35.176907, 34.742149, 29.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293686, 34.621441, 29.290276>,  <35.488319, 34.420258, 29.576010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293686, 34.621441, 29.290276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141806, 0.761344, 0.632650,
		0.862049, 0.409134, -0.299135,
		-0.486583, 0.502956, -0.714333,
		35.147713, 34.772327, 29.075975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733429, 35.152740, 29.797144>,  <35.488319, 34.420258, 29.576010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733429, 35.152740, 29.797144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440071, 35.188850, 29.527632>,  <35.264057, 35.210514, 29.365925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440071, 35.188850, 29.527632>,  <35.733429, 35.152740, 29.797144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440071, 35.188850, 29.527632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289133, 0.855607, 0.429347,
		0.615251, 0.509694, -0.601397,
		-0.733395, 0.090273, -0.673783,
		35.220051, 35.215931, 29.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718468, 35.868343, 29.726469>,  <35.733429, 35.152740, 29.797144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718468, 35.868343, 29.726469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381256, 35.713120, 29.577494>,  <35.178928, 35.619987, 29.488110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381256, 35.713120, 29.577494>,  <35.718468, 35.868343, 29.726469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381256, 35.713120, 29.577494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533044, 0.695275, 0.482138,
		0.071849, 0.604982, -0.792991,
		-0.843032, -0.388058, -0.372437,
		35.128345, 35.596703, 29.465763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314556, 36.383350, 29.392559>,  <35.718468, 35.868343, 29.726469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314556, 36.383350, 29.392559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038410, 36.111259, 29.491093>,  <34.872723, 35.948006, 29.550213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038410, 36.111259, 29.491093>,  <35.314556, 36.383350, 29.392559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038410, 36.111259, 29.491093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453722, 0.672304, 0.584931,
		-0.563498, 0.292050, -0.772772,
		-0.690367, -0.680231, 0.246332,
		34.831299, 35.907188, 29.564993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520248, 36.626198, 29.261503>,  <35.314556, 36.383350, 29.392559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520248, 36.626198, 29.261503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542114, 36.359032, 29.558393>,  <34.555233, 36.198730, 29.736526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542114, 36.359032, 29.558393>,  <34.520248, 36.626198, 29.261503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542114, 36.359032, 29.558393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502289, 0.624043, 0.598562,
		-0.862970, -0.405531, -0.301375,
		0.054664, -0.667918, 0.742225,
		34.558514, 36.158657, 29.781061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908100, 36.615723, 29.584570>,  <34.520248, 36.626198, 29.261503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908100, 36.615723, 29.584570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093697, 36.407906, 29.871565>,  <34.205055, 36.283215, 30.043762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093697, 36.407906, 29.871565>,  <33.908100, 36.615723, 29.584570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093697, 36.407906, 29.871565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511181, 0.504459, 0.695856,
		-0.723469, -0.689638, -0.031515,
		0.463990, -0.519540, 0.717490,
		34.232895, 36.252045, 30.086811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348637, 36.303631, 30.009863>,  <33.908100, 36.615723, 29.584570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348637, 36.303631, 30.009863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677696, 36.299267, 30.237242>,  <33.875134, 36.296650, 30.373669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677696, 36.299267, 30.237242>,  <33.348637, 36.303631, 30.009863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677696, 36.299267, 30.237242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559844, 0.158756, 0.813247,
		-0.099114, -0.987258, 0.124495,
		0.822649, -0.010907, 0.568445,
		33.924492, 36.295994, 30.407776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140465, 35.931179, 30.601988>,  <33.348637, 36.303631, 30.009863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140465, 35.931179, 30.601988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483414, 36.077461, 30.746859>,  <33.689182, 36.165230, 30.833782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483414, 36.077461, 30.746859>,  <33.140465, 35.931179, 30.601988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483414, 36.077461, 30.746859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431139, 0.125939, 0.893453,
		0.281128, -0.922171, 0.265647,
		0.857372, 0.365705, 0.362179,
		33.740627, 36.187172, 30.855513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149395, 35.762440, 31.262747>,  <33.140465, 35.931179, 30.601988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149395, 35.762440, 31.262747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406586, 36.067116, 31.294792>,  <33.560898, 36.249920, 31.314020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406586, 36.067116, 31.294792>,  <33.149395, 35.762440, 31.262747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406586, 36.067116, 31.294792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440101, 0.281835, 0.852573,
		0.626813, -0.583442, 0.516431,
		0.642975, 0.761686, 0.080116,
		33.599480, 36.295620, 31.318827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499939, 35.694778, 31.936468>,  <33.149395, 35.762440, 31.262747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499939, 35.694778, 31.936468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494686, 36.077991, 31.821922>,  <33.491535, 36.307919, 31.753195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494686, 36.077991, 31.821922>,  <33.499939, 35.694778, 31.936468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494686, 36.077991, 31.821922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493365, 0.242895, 0.835220,
		0.869723, 0.152251, 0.469469,
		-0.013131, 0.958030, -0.286366,
		33.490746, 36.365402, 31.736012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829315, 36.049011, 32.498634>,  <33.499939, 35.694778, 31.936468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829315, 36.049011, 32.498634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615406, 36.311958, 32.286263>,  <33.487061, 36.469727, 32.158840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615406, 36.311958, 32.286263>,  <33.829315, 36.049011, 32.498634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615406, 36.311958, 32.286263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402302, 0.354468, 0.844100,
		0.743084, 0.664993, 0.074903,
		-0.534770, 0.657371, -0.530928,
		33.454975, 36.509171, 32.126984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165886, 35.416538, 32.259628>,  <33.829315, 36.049011, 32.498634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165886, 35.416538, 32.259628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419270, 35.541065, 32.542980>,  <34.571301, 35.615784, 32.712994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419270, 35.541065, 32.542980>,  <34.165886, 35.416538, 32.259628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419270, 35.541065, 32.542980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719093, 0.101181, -0.687508,
		-0.285711, 0.944903, -0.159774,
		0.633462, 0.311321, 0.708382,
		34.609310, 35.634460, 32.755493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552639, 36.063194, 31.904678>,  <34.165886, 35.416538, 32.259628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552639, 36.063194, 31.904678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758015, 35.919701, 32.216496>,  <34.881241, 35.833607, 32.403587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758015, 35.919701, 32.216496>,  <34.552639, 36.063194, 31.904678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758015, 35.919701, 32.216496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843297, 0.042780, -0.535743,
		0.158840, 0.932460, 0.324483,
		0.513440, -0.358732, 0.779545,
		34.912048, 35.812080, 32.450359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061710, 36.477230, 32.009365>,  <34.552639, 36.063194, 31.904678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061710, 36.477230, 32.009365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189007, 36.146637, 32.195122>,  <35.265385, 35.948280, 32.306576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189007, 36.146637, 32.195122>,  <35.061710, 36.477230, 32.009365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189007, 36.146637, 32.195122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858161, 0.042989, -0.511577,
		0.402844, 0.561324, 0.722933,
		0.318238, -0.826479, 0.464389,
		35.284477, 35.898693, 32.334438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830338, 36.577091, 32.071918>,  <35.061710, 36.477230, 32.009365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830338, 36.577091, 32.071918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791828, 36.184490, 32.138103>,  <35.768723, 35.948929, 32.177814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791828, 36.184490, 32.138103>,  <35.830338, 36.577091, 32.071918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791828, 36.184490, 32.138103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833180, -0.170408, -0.526091,
		0.544557, 0.087209, 0.834177,
		-0.096271, -0.981507, 0.165458,
		35.762947, 35.890038, 32.187740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535805, 36.405640, 32.066036>,  <35.830338, 36.577091, 32.071918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535805, 36.405640, 32.066036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357479, 36.050064, 32.024006>,  <36.250484, 35.836720, 31.998787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357479, 36.050064, 32.024006>,  <36.535805, 36.405640, 32.066036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357479, 36.050064, 32.024006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774425, -0.324162, -0.543309,
		0.448904, -0.323591, 0.832931,
		-0.445814, -0.888936, -0.105079,
		36.223736, 35.783382, 31.992481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032082, 35.779888, 32.361881>,  <36.535805, 36.405640, 32.066036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032082, 35.779888, 32.361881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770889, 35.626110, 32.100861>,  <36.614174, 35.533844, 31.944248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770889, 35.626110, 32.100861>,  <37.032082, 35.779888, 32.361881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770889, 35.626110, 32.100861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738727, -0.513296, -0.436818,
		-0.167019, -0.767289, 0.619171,
		-0.652983, -0.384441, -0.652547,
		36.574993, 35.510777, 31.905096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332607, 35.144913, 32.295876>,  <37.032082, 35.779888, 32.361881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332607, 35.144913, 32.295876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094296, 35.175282, 31.976057>,  <36.951309, 35.193504, 31.784164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094296, 35.175282, 31.976057>,  <37.332607, 35.144913, 32.295876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094296, 35.175282, 31.976057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670815, -0.500390, -0.547374,
		-0.441646, -0.862465, 0.247191,
		-0.595783, 0.075926, -0.799549,
		36.915562, 35.198059, 31.736193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490566, 34.569973, 31.938318>,  <37.332607, 35.144913, 32.295876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490566, 34.569973, 31.938318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299015, 34.791405, 31.665781>,  <37.184086, 34.924263, 31.502258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299015, 34.791405, 31.665781>,  <37.490566, 34.569973, 31.938318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299015, 34.791405, 31.665781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560237, -0.404826, -0.722669,
		-0.675879, -0.727783, -0.116273,
		-0.478876, 0.553577, -0.681344,
		37.155354, 34.957478, 31.461378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105518, 34.142136, 31.471581>,  <37.490566, 34.569973, 31.938318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105518, 34.142136, 31.471581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207798, 34.492691, 31.308332>,  <37.269165, 34.703022, 31.210382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207798, 34.492691, 31.308332>,  <37.105518, 34.142136, 31.471581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207798, 34.492691, 31.308332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373015, -0.478905, -0.794676,
		-0.891895, 0.050965, -0.449362,
		0.255702, 0.876386, -0.408122,
		37.284508, 34.755608, 31.185896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965752, 33.960674, 30.837923>,  <37.105518, 34.142136, 31.471581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965752, 33.960674, 30.837923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175705, 34.299549, 30.804995>,  <37.301678, 34.502872, 30.785238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175705, 34.299549, 30.804995>,  <36.965752, 33.960674, 30.837923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175705, 34.299549, 30.804995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348039, -0.301876, -0.887547,
		-0.776767, 0.437207, -0.453303,
		0.524883, 0.847184, -0.082322,
		37.333168, 34.553703, 30.780298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902332, 34.267208, 30.115940>,  <36.965752, 33.960674, 30.837923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902332, 34.267208, 30.115940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242775, 34.446110, 30.225910>,  <37.447041, 34.553452, 30.291893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242775, 34.446110, 30.225910>,  <36.902332, 34.267208, 30.115940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242775, 34.446110, 30.225910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403157, -0.221360, -0.887955,
		-0.336287, 0.866579, -0.368715,
		0.851103, 0.447258, 0.274927,
		37.498104, 34.580288, 30.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195545, 34.463341, 29.473274>,  <36.902332, 34.267208, 30.115940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195545, 34.463341, 29.473274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507404, 34.479095, 29.723267>,  <37.694519, 34.488548, 29.873262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507404, 34.479095, 29.723267>,  <37.195545, 34.463341, 29.473274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507404, 34.479095, 29.723267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619082, -0.198737, -0.759764,
		0.094283, 0.979261, -0.179327,
		0.779647, 0.039385, 0.624980,
		37.741299, 34.490910, 29.910761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759834, 35.028400, 29.229527>,  <37.195545, 34.463341, 29.473274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759834, 35.028400, 29.229527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940956, 34.740158, 29.439552>,  <38.049629, 34.567211, 29.565567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940956, 34.740158, 29.439552>,  <37.759834, 35.028400, 29.229527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940956, 34.740158, 29.439552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481857, -0.297710, -0.824125,
		0.750190, 0.626171, 0.212428,
		0.452801, -0.720610, 0.525064,
		38.076797, 34.523975, 29.597071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334637, 35.009495, 28.804766>,  <37.759834, 35.028400, 29.229527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334637, 35.009495, 28.804766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334400, 34.696224, 29.053484>,  <38.334259, 34.508263, 29.202715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334400, 34.696224, 29.053484>,  <38.334637, 35.009495, 28.804766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334400, 34.696224, 29.053484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561733, -0.514684, -0.647732,
		0.827319, 0.348897, 0.440244,
		-0.000595, -0.783180, 0.621795,
		38.334221, 34.461269, 29.240023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987888, 34.848572, 28.895576>,  <38.334637, 35.009495, 28.804766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987888, 34.848572, 28.895576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802006, 34.501827, 28.967798>,  <38.690475, 34.293781, 29.011131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802006, 34.501827, 28.967798>,  <38.987888, 34.848572, 28.895576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802006, 34.501827, 28.967798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707926, -0.486211, -0.512290,
		0.531871, -0.110245, 0.839618,
		-0.464709, -0.866859, 0.180556,
		38.662594, 34.241768, 29.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486603, 34.442429, 28.993137>,  <38.987888, 34.848572, 28.895576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486603, 34.442429, 28.993137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193745, 34.184952, 28.904034>,  <39.018028, 34.030464, 28.850571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193745, 34.184952, 28.904034>,  <39.486603, 34.442429, 28.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193745, 34.184952, 28.904034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614151, -0.482399, -0.624587,
		0.294583, -0.594098, 0.748511,
		-0.732147, -0.643692, -0.222759,
		38.974102, 33.991844, 28.837206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722897, 33.774872, 28.975590>,  <39.486603, 34.442429, 28.993137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722897, 33.774872, 28.975590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387402, 33.712276, 28.766962>,  <39.186104, 33.674717, 28.641785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387402, 33.712276, 28.766962>,  <39.722897, 33.774872, 28.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387402, 33.712276, 28.766962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488165, -0.640495, -0.592842,
		-0.241287, -0.751849, 0.613599,
		-0.838735, -0.156493, -0.521569,
		39.135780, 33.665329, 28.610491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621590, 33.106525, 28.895454>,  <39.722897, 33.774872, 28.975590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621590, 33.106525, 28.895454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333111, 33.182919, 28.629101>,  <39.160023, 33.228756, 28.469288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333111, 33.182919, 28.629101>,  <39.621590, 33.106525, 28.895454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333111, 33.182919, 28.629101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309603, -0.771033, -0.556466,
		-0.619695, -0.607481, 0.496936,
		-0.721196, 0.190986, -0.665883,
		39.116753, 33.240215, 28.429337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268517, 32.528084, 28.741652>,  <39.621590, 33.106525, 28.895454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268517, 32.528084, 28.741652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235561, 32.765522, 28.421436>,  <39.215786, 32.907986, 28.229307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235561, 32.765522, 28.421436>,  <39.268517, 32.528084, 28.741652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235561, 32.765522, 28.421436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420119, -0.707721, -0.568006,
		-0.903721, -0.383119, -0.191070,
		-0.082390, 0.593591, -0.800538,
		39.210846, 32.943600, 28.181274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885780, 32.115837, 28.297876>,  <39.268517, 32.528084, 28.741652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885780, 32.115837, 28.297876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065228, 32.402107, 28.083754>,  <39.172894, 32.573868, 27.955280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065228, 32.402107, 28.083754>,  <38.885780, 32.115837, 28.297876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065228, 32.402107, 28.083754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132245, -0.645525, -0.752202,
		-0.883886, 0.266658, -0.384238,
		0.448616, 0.715675, -0.535307,
		39.199814, 32.616810, 27.923162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735245, 31.903631, 27.600674>,  <38.885780, 32.115837, 28.297876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735245, 31.903631, 27.600674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011326, 32.187584, 27.544544>,  <39.176975, 32.357956, 27.510866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011326, 32.187584, 27.544544>,  <38.735245, 31.903631, 27.600674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011326, 32.187584, 27.544544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291962, -0.450629, -0.843618,
		-0.662105, 0.541295, -0.518283,
		0.690199, 0.709883, -0.140326,
		39.218384, 32.400547, 27.502447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651611, 32.226658, 26.823273>,  <38.735245, 31.903631, 27.600674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651611, 32.226658, 26.823273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024902, 32.278866, 26.957165>,  <39.248878, 32.310188, 27.037500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024902, 32.278866, 26.957165>,  <38.651611, 32.226658, 26.823273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024902, 32.278866, 26.957165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353579, -0.498864, -0.791275,
		0.063710, 0.856797, -0.511703,
		0.933232, 0.130515, 0.334729,
		39.304871, 32.318020, 27.057583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054466, 32.421291, 26.339743>,  <38.651611, 32.226658, 26.823273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054466, 32.421291, 26.339743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331089, 32.263683, 26.581900>,  <39.497063, 32.169117, 26.727194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331089, 32.263683, 26.581900>,  <39.054466, 32.421291, 26.339743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331089, 32.263683, 26.581900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368944, -0.527857, -0.765015,
		0.620994, 0.752404, -0.219669,
		0.691554, -0.394024, 0.605391,
		39.538555, 32.145477, 26.763517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646259, 32.502312, 25.871149>,  <39.054466, 32.421291, 26.339743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646259, 32.502312, 25.871149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763874, 32.246235, 26.155035>,  <39.834442, 32.092590, 26.325367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763874, 32.246235, 26.155035>,  <39.646259, 32.502312, 25.871149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763874, 32.246235, 26.155035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456792, -0.558125, -0.692703,
		0.839572, 0.527874, 0.128324,
		0.294040, -0.640192, 0.709715,
		39.852085, 32.054176, 26.367949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259178, 32.235474, 25.701277>,  <39.646259, 32.502312, 25.871149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259178, 32.235474, 25.701277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180397, 31.967159, 25.987286>,  <40.133129, 31.806171, 26.158892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180397, 31.967159, 25.987286>,  <40.259178, 32.235474, 25.701277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180397, 31.967159, 25.987286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533231, -0.685298, -0.496016,
		0.822723, 0.283580, 0.492655,
		-0.196956, -0.670783, 0.715024,
		40.121311, 31.765924, 26.201794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886742, 31.924219, 25.894228>,  <40.259178, 32.235474, 25.701277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886742, 31.924219, 25.894228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593426, 31.679321, 26.012512>,  <40.417435, 31.532383, 26.083483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593426, 31.679321, 26.012512>,  <40.886742, 31.924219, 25.894228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593426, 31.679321, 26.012512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541817, -0.788937, -0.289850,
		0.410755, -0.052323, 0.910243,
		-0.733290, -0.612242, 0.295711,
		40.373440, 31.495649, 26.101225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220951, 31.395191, 26.172340>,  <40.886742, 31.924219, 25.894228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220951, 31.395191, 26.172340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857777, 31.248110, 26.091902>,  <40.639870, 31.159861, 26.043638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857777, 31.248110, 26.091902>,  <41.220951, 31.395191, 26.172340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857777, 31.248110, 26.091902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418442, -0.768438, -0.484158,
		0.023498, -0.523733, 0.851558,
		-0.907939, -0.367704, -0.201095,
		40.585396, 31.137798, 26.031572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172211, 30.722904, 26.411829>,  <41.220951, 31.395191, 26.172340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172211, 30.722904, 26.411829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899025, 30.738791, 26.120081>,  <40.735111, 30.748322, 25.945032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899025, 30.738791, 26.120081>,  <41.172211, 30.722904, 26.411829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899025, 30.738791, 26.120081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370037, -0.842101, -0.392350,
		-0.629785, -0.537856, 0.560431,
		-0.682967, 0.039716, -0.729369,
		40.694134, 30.750706, 25.901270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982174, 30.088125, 26.412043>,  <41.172211, 30.722904, 26.411829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982174, 30.088125, 26.412043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850307, 30.237774, 26.065321>,  <40.771187, 30.327562, 25.857288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850307, 30.237774, 26.065321>,  <40.982174, 30.088125, 26.412043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850307, 30.237774, 26.065321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407411, -0.771868, -0.488095,
		-0.851666, -0.514056, 0.102041,
		-0.329670, 0.374121, -0.866805,
		40.751408, 30.350010, 25.805279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916279, 29.492960, 26.052036>,  <40.982174, 30.088125, 26.412043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916279, 29.492960, 26.052036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897663, 29.755566, 25.750885>,  <40.886494, 29.913128, 25.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897663, 29.755566, 25.750885>,  <40.916279, 29.492960, 26.052036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897663, 29.755566, 25.750885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459385, -0.655199, -0.599734,
		-0.887017, -0.373772, -0.271099,
		-0.046540, 0.656513, -0.752878,
		40.883701, 29.952520, 25.525023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660160, 29.128151, 25.488571>,  <40.916279, 29.492960, 26.052036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660160, 29.128151, 25.488571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856411, 29.443741, 25.340620>,  <40.974159, 29.633095, 25.251850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856411, 29.443741, 25.340620>,  <40.660160, 29.128151, 25.488571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856411, 29.443741, 25.340620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571289, -0.611765, -0.547149,
		-0.657964, 0.057138, -0.750879,
		0.490625, 0.788973, -0.369877,
		41.003597, 29.680433, 25.229656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581333, 29.013851, 24.788122>,  <40.660160, 29.128151, 25.488571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581333, 29.013851, 24.788122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905399, 29.242733, 24.839045>,  <41.099838, 29.380062, 24.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905399, 29.242733, 24.839045>,  <40.581333, 29.013851, 24.788122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905399, 29.242733, 24.839045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440345, -0.450710, -0.776503,
		-0.386941, 0.685157, -0.617119,
		0.810168, 0.572206, 0.127308,
		41.148449, 29.414394, 24.877237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791809, 29.209635, 24.123665>,  <40.581333, 29.013851, 24.788122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791809, 29.209635, 24.123665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119778, 29.269733, 24.344625>,  <41.316559, 29.305794, 24.477201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119778, 29.269733, 24.344625>,  <40.791809, 29.209635, 24.123665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119778, 29.269733, 24.344625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541904, -0.514799, -0.664321,
		0.184564, 0.844042, -0.503516,
		0.819924, 0.150248, 0.552404,
		41.365753, 29.314808, 24.510347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214321, 29.280565, 23.618584>,  <40.791809, 29.209635, 24.123665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214321, 29.280565, 23.618584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451427, 29.239346, 23.938087>,  <41.593689, 29.214615, 24.129789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451427, 29.239346, 23.938087>,  <41.214321, 29.280565, 23.618584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451427, 29.239346, 23.938087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576690, -0.638006, -0.510272,
		0.562194, 0.763106, -0.318759,
		0.592762, -0.103047, 0.798758,
		41.629257, 29.208431, 24.177715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889645, 29.360703, 23.310911>,  <41.214321, 29.280565, 23.618584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889645, 29.360703, 23.310911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900696, 29.150692, 23.651167>,  <41.907326, 29.024685, 23.855320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900696, 29.150692, 23.651167>,  <41.889645, 29.360703, 23.310911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900696, 29.150692, 23.651167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666530, -0.624504, -0.407102,
		0.744966, 0.578224, 0.332691,
		0.027629, -0.525026, 0.850638,
		41.908985, 28.993185, 23.906359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679348, 29.303240, 23.706148>,  <41.889645, 29.360703, 23.310911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679348, 29.303240, 23.706148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436131, 28.997393, 23.791613>,  <42.290199, 28.813885, 23.842892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436131, 28.997393, 23.791613>,  <42.679348, 29.303240, 23.706148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436131, 28.997393, 23.791613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724023, -0.644466, -0.245875,
		0.325696, 0.005192, 0.945460,
		-0.608040, -0.764616, 0.213659,
		42.253719, 28.768007, 23.855711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217411, 28.773138, 23.777468>,  <42.679348, 29.303240, 23.706148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217411, 28.773138, 23.777468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868427, 28.577738, 23.782898>,  <42.659039, 28.460497, 23.786156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868427, 28.577738, 23.782898>,  <43.217411, 28.773138, 23.777468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868427, 28.577738, 23.782898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455251, -0.822546, -0.340829,
		0.177662, -0.291179, 0.940027,
		-0.872458, -0.488501, 0.013575,
		42.606689, 28.431189, 23.786970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287296, 28.054445, 24.100420>,  <43.217411, 28.773138, 23.777468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287296, 28.054445, 24.100420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982002, 28.043367, 23.842209>,  <42.798824, 28.036720, 23.687283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982002, 28.043367, 23.842209>,  <43.287296, 28.054445, 24.100420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982002, 28.043367, 23.842209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285953, -0.910390, -0.299034,
		-0.579399, -0.412824, 0.702762,
		-0.763236, -0.027696, -0.645527,
		42.753033, 28.035059, 23.648550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323437, 28.359692, 24.837059>,  <43.287296, 28.054445, 24.100420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323437, 28.359692, 24.837059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688030, 28.242533, 24.952578>,  <43.906788, 28.172237, 25.021889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688030, 28.242533, 24.952578>,  <43.323437, 28.359692, 24.837059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688030, 28.242533, 24.952578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214986, 0.259344, 0.941553,
		-0.350675, -0.920300, 0.173420,
		0.911487, -0.292897, 0.288798,
		43.961475, 28.154663, 25.039217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168339, 28.067560, 25.455585>,  <43.323437, 28.359692, 24.837059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168339, 28.067560, 25.455585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548496, 28.188501, 25.426359>,  <43.776588, 28.261066, 25.408823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548496, 28.188501, 25.426359>,  <43.168339, 28.067560, 25.455585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548496, 28.188501, 25.426359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047649, 0.373637, 0.926350,
		0.307383, -0.876914, 0.369509,
		0.950392, 0.302351, -0.073066,
		43.833614, 28.279207, 25.404440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544842, 27.721781, 26.034353>,  <43.168339, 28.067560, 25.455585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544842, 27.721781, 26.034353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718407, 28.055922, 25.899349>,  <43.822544, 28.256405, 25.818346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718407, 28.055922, 25.899349>,  <43.544842, 27.721781, 26.034353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718407, 28.055922, 25.899349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040774, 0.392438, 0.918874,
		0.900034, -0.384945, 0.204343,
		0.433908, 0.835350, -0.337512,
		43.848579, 28.306526, 25.798096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818283, 28.012312, 26.575411>,  <43.544842, 27.721781, 26.034353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818283, 28.012312, 26.575411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852406, 28.339289, 26.347548>,  <43.872879, 28.535475, 26.210829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852406, 28.339289, 26.347548>,  <43.818283, 28.012312, 26.575411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852406, 28.339289, 26.347548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013073, 0.572613, 0.819721,
		0.996269, -0.062482, 0.059536,
		0.085309, 0.817441, -0.569660,
		43.877998, 28.584520, 26.176649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312717, 28.463799, 26.896517>,  <43.818283, 28.012312, 26.575411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312717, 28.463799, 26.896517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101284, 28.701067, 26.653616>,  <43.974426, 28.843428, 26.507875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101284, 28.701067, 26.653616>,  <44.312717, 28.463799, 26.896517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101284, 28.701067, 26.653616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246889, 0.577006, 0.778530,
		0.812187, 0.561439, -0.158548,
		-0.528581, 0.593169, -0.607250,
		43.942711, 28.879017, 26.471441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446571, 29.055290, 27.157635>,  <44.312717, 28.463799, 26.896517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446571, 29.055290, 27.157635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108246, 29.112871, 26.952156>,  <43.905251, 29.147421, 26.828869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108246, 29.112871, 26.952156>,  <44.446571, 29.055290, 27.157635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108246, 29.112871, 26.952156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255398, 0.736131, 0.626804,
		0.468378, 0.661354, -0.585861,
		-0.845809, 0.143954, -0.513696,
		43.854504, 29.156057, 26.798048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443878, 29.771671, 26.967209>,  <44.446571, 29.055290, 27.157635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443878, 29.771671, 26.967209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063274, 29.648624, 26.967760>,  <43.834911, 29.574797, 26.968090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063274, 29.648624, 26.967760>,  <44.443878, 29.771671, 26.967209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063274, 29.648624, 26.967760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256214, 0.794978, 0.549877,
		-0.170244, 0.522861, -0.835245,
		-0.951510, -0.307615, 0.001376,
		43.777821, 29.556339, 26.968172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097630, 30.375322, 27.110207>,  <44.443878, 29.771671, 26.967209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097630, 30.375322, 27.110207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821480, 30.092480, 27.171377>,  <43.655792, 29.922773, 27.208078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821480, 30.092480, 27.171377>,  <44.097630, 30.375322, 27.110207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821480, 30.092480, 27.171377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473418, 0.601398, 0.643581,
		-0.547050, 0.371912, -0.749945,
		-0.690371, -0.707108, 0.152925,
		43.614368, 29.880346, 27.217255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424587, 30.732466, 27.154577>,  <44.097630, 30.375322, 27.110207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424587, 30.732466, 27.154577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351414, 30.380037, 27.329048>,  <43.307510, 30.168581, 27.433731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351414, 30.380037, 27.329048>,  <43.424587, 30.732466, 27.154577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351414, 30.380037, 27.329048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557488, 0.458404, 0.692151,
		-0.809778, -0.116542, -0.575046,
		-0.182938, -0.881070, 0.436176,
		43.296532, 30.115717, 27.459902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820148, 30.873844, 27.350529>,  <43.424587, 30.732466, 27.154577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820148, 30.873844, 27.350529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941471, 30.563406, 27.571682>,  <43.014263, 30.377144, 27.704374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941471, 30.563406, 27.571682>,  <42.820148, 30.873844, 27.350529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941471, 30.563406, 27.571682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505458, 0.360826, 0.783784,
		-0.807786, -0.517186, -0.282843,
		0.303306, -0.776095, 0.552886,
		43.032463, 30.330578, 27.737547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260952, 30.629393, 27.819046>,  <42.820148, 30.873844, 27.350529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260952, 30.629393, 27.819046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604481, 30.506329, 27.982883>,  <42.810600, 30.432491, 28.081186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604481, 30.506329, 27.982883>,  <42.260952, 30.629393, 27.819046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604481, 30.506329, 27.982883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323786, 0.293586, 0.899428,
		-0.396968, -0.905071, 0.152523,
		0.858824, -0.307659, 0.409594,
		42.862129, 30.414030, 28.105761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066402, 30.229261, 28.431170>,  <42.260952, 30.629393, 27.819046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066402, 30.229261, 28.431170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445686, 30.347092, 28.478712>,  <42.673256, 30.417789, 28.507238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445686, 30.347092, 28.478712>,  <42.066402, 30.229261, 28.431170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445686, 30.347092, 28.478712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263024, 0.518323, 0.813732,
		0.178098, -0.802850, 0.568958,
		0.948209, 0.294573, 0.118857,
		42.730148, 30.435463, 28.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271042, 30.050766, 29.150667>,  <42.066402, 30.229261, 28.431170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271042, 30.050766, 29.150667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496277, 30.347797, 29.005608>,  <42.631416, 30.526016, 28.918571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496277, 30.347797, 29.005608>,  <42.271042, 30.050766, 29.150667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496277, 30.347797, 29.005608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161889, 0.529446, 0.832754,
		0.810386, -0.410203, 0.418339,
		0.563087, 0.742576, -0.362648,
		42.665203, 30.570570, 28.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577236, 30.349640, 29.758268>,  <42.271042, 30.050766, 29.150667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577236, 30.349640, 29.758268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654594, 30.626926, 29.480549>,  <42.701008, 30.793299, 29.313917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654594, 30.626926, 29.480549>,  <42.577236, 30.349640, 29.758268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654594, 30.626926, 29.480549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121803, 0.719146, 0.684100,
		0.973531, -0.047731, 0.223513,
		0.193392, 0.693217, -0.694298,
		42.712612, 30.834892, 29.272259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035549, 30.854877, 30.059128>,  <42.577236, 30.349640, 29.758268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035549, 30.854877, 30.059128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855282, 31.031488, 29.748785>,  <42.747124, 31.137455, 29.562580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855282, 31.031488, 29.748785>,  <43.035549, 30.854877, 30.059128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855282, 31.031488, 29.748785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336312, 0.721108, 0.605721,
		0.826920, 0.533907, -0.176486,
		-0.450664, 0.441528, -0.775858,
		42.720081, 31.163946, 29.516027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273354, 31.646858, 30.078415>,  <43.035549, 30.854877, 30.059128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273354, 31.646858, 30.078415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926018, 31.615473, 29.882528>,  <42.717613, 31.596642, 29.764997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926018, 31.615473, 29.882528>,  <43.273354, 31.646858, 30.078415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926018, 31.615473, 29.882528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363381, 0.772658, 0.520533,
		0.337538, 0.629955, -0.699446,
		-0.868344, -0.078466, -0.489716,
		42.665516, 31.591932, 29.735613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029709, 32.355137, 29.975815>,  <43.273354, 31.646858, 30.078415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029709, 32.355137, 29.975815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698570, 32.133820, 29.938841>,  <42.499889, 32.001030, 29.916656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698570, 32.133820, 29.938841>,  <43.029709, 32.355137, 29.975815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698570, 32.133820, 29.938841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552635, 0.776132, 0.303667,
		-0.096274, 0.302472, -0.948284,
		-0.827844, -0.553290, -0.092435,
		42.450218, 31.967833, 29.911110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456051, 32.900173, 29.867216>,  <43.029709, 32.355137, 29.975815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456051, 32.900173, 29.867216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249374, 32.566391, 29.943863>,  <42.125370, 32.366123, 29.989851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249374, 32.566391, 29.943863>,  <42.456051, 32.900173, 29.867216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249374, 32.566391, 29.943863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774641, 0.550948, 0.310462,
		-0.364637, 0.011980, -0.931073,
		-0.516692, -0.834453, 0.191616,
		42.094368, 32.316055, 30.001348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860043, 32.930271, 29.478569>,  <42.456051, 32.900173, 29.867216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860043, 32.930271, 29.478569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772427, 32.670601, 29.769936>,  <41.719856, 32.514797, 29.944756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772427, 32.670601, 29.769936>,  <41.860043, 32.930271, 29.478569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772427, 32.670601, 29.769936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725215, 0.607758, 0.323565,
		-0.652752, -0.457385, -0.603915,
		-0.219040, -0.649176, 0.728417,
		41.706715, 32.475849, 29.988461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116924, 32.856876, 29.536400>,  <41.860043, 32.930271, 29.478569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116924, 32.856876, 29.536400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264236, 32.731739, 29.886600>,  <41.352623, 32.656658, 30.096722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264236, 32.731739, 29.886600>,  <41.116924, 32.856876, 29.536400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264236, 32.731739, 29.886600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759955, 0.441175, 0.477318,
		-0.535573, -0.841128, -0.075268,
		0.368280, -0.312839, 0.875501,
		41.374722, 32.637886, 30.149250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604305, 32.472538, 29.910786>,  <41.116924, 32.856876, 29.536400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604305, 32.472538, 29.910786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856613, 32.605675, 30.191168>,  <41.007999, 32.685558, 30.359398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856613, 32.605675, 30.191168>,  <40.604305, 32.472538, 29.910786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856613, 32.605675, 30.191168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772838, 0.350529, 0.529010,
		-0.069629, -0.875411, 0.478338,
		0.630772, 0.332843, 0.700957,
		41.045845, 32.705528, 30.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140209, 32.443802, 30.446207>,  <40.604305, 32.472538, 29.910786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140209, 32.443802, 30.446207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447006, 32.653255, 30.594543>,  <40.631084, 32.778927, 30.683546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447006, 32.653255, 30.594543>,  <40.140209, 32.443802, 30.446207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447006, 32.653255, 30.594543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621176, 0.461106, 0.633657,
		0.160809, -0.716370, 0.678936,
		0.766995, 0.523637, 0.370842,
		40.677105, 32.810345, 30.705795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967762, 32.546413, 31.178200>,  <40.140209, 32.443802, 30.446207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967762, 32.546413, 31.178200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255775, 32.818428, 31.122908>,  <40.428581, 32.981636, 31.089733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255775, 32.818428, 31.122908>,  <39.967762, 32.546413, 31.178200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255775, 32.818428, 31.122908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385746, 0.557810, 0.734880,
		0.576848, -0.475816, 0.663962,
		0.720032, 0.680034, -0.138228,
		40.471786, 33.022438, 31.081438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260086, 32.685032, 31.854616>,  <39.967762, 32.546413, 31.178200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260086, 32.685032, 31.854616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308823, 33.000282, 31.613281>,  <40.338066, 33.189434, 31.468481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308823, 33.000282, 31.613281>,  <40.260086, 32.685032, 31.854616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308823, 33.000282, 31.613281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495659, 0.574958, 0.650957,
		0.859928, 0.219733, 0.460696,
		0.121844, 0.788125, -0.603336,
		40.345375, 33.236721, 31.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103416, 33.159092, 32.235310>,  <40.260086, 32.685032, 31.854616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103416, 33.159092, 32.235310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126106, 33.372684, 31.897871>,  <40.139721, 33.500839, 31.695408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126106, 33.372684, 31.897871>,  <40.103416, 33.159092, 32.235310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126106, 33.372684, 31.897871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542061, 0.726042, 0.423122,
		0.838422, 0.433278, 0.330633,
		0.056724, 0.533978, -0.843593,
		40.143124, 33.532879, 31.644793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302471, 33.778229, 32.476143>,  <40.103416, 33.159092, 32.235310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302471, 33.778229, 32.476143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126614, 33.841625, 32.122513>,  <40.021099, 33.879662, 31.910334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126614, 33.841625, 32.122513>,  <40.302471, 33.778229, 32.476143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126614, 33.841625, 32.122513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612435, 0.667097, 0.424152,
		0.656990, 0.727916, -0.196219,
		-0.439644, 0.158492, -0.884077,
		39.994720, 33.889172, 31.857290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368820, 34.460453, 32.309029>,  <40.302471, 33.778229, 32.476143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368820, 34.460453, 32.309029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039936, 34.289974, 32.158127>,  <39.842606, 34.187687, 32.067585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039936, 34.289974, 32.158127>,  <40.368820, 34.460453, 32.309029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039936, 34.289974, 32.158127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551251, 0.761318, 0.341347,
		0.141733, 0.488624, -0.860905,
		-0.822213, -0.426195, -0.377258,
		39.793274, 34.162117, 32.044949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035442, 34.950943, 31.959890>,  <40.368820, 34.460453, 32.309029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035442, 34.950943, 31.959890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739113, 34.694019, 32.038494>,  <39.561314, 34.539867, 32.085655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739113, 34.694019, 32.038494>,  <40.035442, 34.950943, 31.959890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739113, 34.694019, 32.038494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500133, 0.722766, 0.476945,
		-0.448375, 0.255053, -0.856684,
		-0.740828, -0.642306, 0.196509,
		39.516865, 34.501328, 32.097446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394310, 35.320213, 31.899792>,  <40.035442, 34.950943, 31.959890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394310, 35.320213, 31.899792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287979, 34.990551, 32.099831>,  <39.224178, 34.792751, 32.219852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287979, 34.990551, 32.099831>,  <39.394310, 35.320213, 31.899792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287979, 34.990551, 32.099831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527379, 0.558580, 0.640203,
		-0.806973, -0.093554, -0.583132,
		-0.265832, -0.824158, 0.500097,
		39.208229, 34.743305, 32.249859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662865, 35.384838, 32.130077>,  <39.394310, 35.320213, 31.899792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662865, 35.384838, 32.130077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796978, 35.095882, 32.371983>,  <38.877445, 34.922508, 32.517128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796978, 35.095882, 32.371983>,  <38.662865, 35.384838, 32.130077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796978, 35.095882, 32.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525772, 0.389190, 0.756369,
		-0.781762, -0.571564, -0.249324,
		0.335279, -0.722389, 0.604767,
		38.897560, 34.879166, 32.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080292, 35.306427, 32.495930>,  <38.662865, 35.384838, 32.130077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080292, 35.306427, 32.495930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341801, 35.121269, 32.735367>,  <38.498707, 35.010174, 32.879028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341801, 35.121269, 32.735367>,  <38.080292, 35.306427, 32.495930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341801, 35.121269, 32.735367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463342, 0.380530, 0.800320,
		-0.598246, -0.800578, 0.034301,
		0.653770, -0.462895, 0.598592,
		38.537933, 34.982399, 32.914944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680004, 35.129509, 33.062054>,  <38.080292, 35.306427, 32.495930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680004, 35.129509, 33.062054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059555, 35.114834, 33.187458>,  <38.287285, 35.106030, 33.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059555, 35.114834, 33.187458>,  <37.680004, 35.129509, 33.062054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059555, 35.114834, 33.187458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258035, 0.481913, 0.837364,
		-0.181806, -0.875451, 0.447808,
		0.948875, -0.036688, 0.313512,
		38.344219, 35.103828, 33.281513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595699, 34.711281, 33.738804>,  <37.680004, 35.129509, 33.062054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595699, 34.711281, 33.738804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941502, 34.909996, 33.769352>,  <38.148983, 35.029224, 33.787682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941502, 34.909996, 33.769352>,  <37.595699, 34.711281, 33.738804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941502, 34.909996, 33.769352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328288, 0.443042, 0.834230,
		0.380602, -0.746267, 0.546102,
		0.864505, 0.496789, 0.076368,
		38.200851, 35.059032, 33.792263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841988, 34.623989, 34.391251>,  <37.595699, 34.711281, 33.738804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841988, 34.623989, 34.391251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046623, 34.949589, 34.281216>,  <38.169407, 35.144951, 34.215195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046623, 34.949589, 34.281216>,  <37.841988, 34.623989, 34.391251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046623, 34.949589, 34.281216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226366, 0.436535, 0.870744,
		0.828874, -0.383195, 0.407591,
		0.511592, 0.814002, -0.275090,
		38.200100, 35.193790, 34.198689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364700, 34.759617, 34.930752>,  <37.841988, 34.623989, 34.391251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364700, 34.759617, 34.930752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300179, 35.098682, 34.728584>,  <38.261463, 35.302120, 34.607285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300179, 35.098682, 34.728584>,  <38.364700, 34.759617, 34.930752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300179, 35.098682, 34.728584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040890, 0.505947, 0.861595,
		0.986057, 0.159648, -0.046951,
		-0.161307, 0.847661, -0.505421,
		38.251785, 35.352982, 34.576958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731251, 35.264172, 35.229713>,  <38.364700, 34.759617, 34.930752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731251, 35.264172, 35.229713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479290, 35.500248, 35.027763>,  <38.328114, 35.641895, 34.906593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479290, 35.500248, 35.027763>,  <38.731251, 35.264172, 35.229713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479290, 35.500248, 35.027763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105687, 0.578867, 0.808544,
		0.769451, 0.562661, -0.302253,
		-0.629901, 0.590191, -0.504876,
		38.290321, 35.677307, 34.876301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889072, 35.939739, 35.387417>,  <38.731251, 35.264172, 35.229713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889072, 35.939739, 35.387417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515282, 35.971516, 35.248596>,  <38.291008, 35.990582, 35.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515282, 35.971516, 35.248596>,  <38.889072, 35.939739, 35.387417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515282, 35.971516, 35.248596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177962, 0.740053, 0.648576,
		0.308357, 0.667841, -0.677425,
		-0.934476, 0.079437, -0.347051,
		38.234940, 35.995346, 35.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711330, 36.696461, 35.364891>,  <38.889072, 35.939739, 35.387417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711330, 36.696461, 35.364891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375259, 36.479633, 35.371387>,  <38.173618, 36.349537, 35.375286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375259, 36.479633, 35.371387>,  <38.711330, 36.696461, 35.364891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375259, 36.479633, 35.371387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362522, 0.583654, 0.726585,
		-0.403337, 0.604573, -0.686884,
		-0.840177, -0.542070, 0.016238,
		38.123207, 36.317013, 35.376259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215408, 37.183075, 35.305519>,  <38.711330, 36.696461, 35.364891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215408, 37.183075, 35.305519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045147, 36.854248, 35.456795>,  <37.942989, 36.656952, 35.547562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045147, 36.854248, 35.456795>,  <38.215408, 37.183075, 35.305519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045147, 36.854248, 35.456795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308822, 0.524822, 0.793215,
		-0.850559, 0.220838, -0.477263,
		-0.425650, -0.822066, 0.378193,
		37.917450, 36.607628, 35.570251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461685, 37.376041, 35.473270>,  <38.215408, 37.183075, 35.305519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461685, 37.376041, 35.473270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534412, 37.061497, 35.709435>,  <37.578049, 36.872772, 35.851131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534412, 37.061497, 35.709435>,  <37.461685, 37.376041, 35.473270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534412, 37.061497, 35.709435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488895, 0.448659, 0.748122,
		-0.853184, -0.424671, -0.302872,
		0.181820, -0.786358, 0.590408,
		37.588959, 36.825588, 35.886559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786716, 37.261581, 35.807266>,  <37.461685, 37.376041, 35.473270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786716, 37.261581, 35.807266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037331, 37.051487, 36.037598>,  <37.187698, 36.925430, 36.175797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037331, 37.051487, 36.037598>,  <36.786716, 37.261581, 35.807266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037331, 37.051487, 36.037598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506983, 0.286489, 0.812953,
		-0.591960, -0.801281, -0.086789,
		0.626539, -0.525236, 0.575826,
		37.225292, 36.893917, 36.210346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331059, 36.909515, 36.330559>,  <36.786716, 37.261581, 35.807266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331059, 36.909515, 36.330559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708794, 36.906296, 36.462105>,  <36.935436, 36.904362, 36.541035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708794, 36.906296, 36.462105>,  <36.331059, 36.909515, 36.330559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708794, 36.906296, 36.462105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307766, 0.331452, 0.891863,
		-0.116188, -0.943438, 0.310525,
		0.944342, -0.008054, 0.328868,
		36.992096, 36.903881, 36.560764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355564, 36.436516, 36.935711>,  <36.331059, 36.909515, 36.330559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355564, 36.436516, 36.935711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655041, 36.701679, 36.934204>,  <36.834728, 36.860775, 36.933300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655041, 36.701679, 36.934204>,  <36.355564, 36.436516, 36.935711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655041, 36.701679, 36.934204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324068, 0.370950, 0.870274,
		0.578306, -0.650348, 0.492554,
		0.748694, 0.662905, -0.003766,
		36.879650, 36.900551, 36.933075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396343, 36.527985, 37.630119>,  <36.355564, 36.436516, 36.935711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396343, 36.527985, 37.630119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568535, 36.855591, 37.478382>,  <36.671848, 37.052155, 37.387341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568535, 36.855591, 37.478382>,  <36.396343, 36.527985, 37.630119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568535, 36.855591, 37.478382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474835, 0.562907, 0.676512,
		0.767609, -0.111098, 0.631216,
		0.430475, 0.819019, -0.379340,
		36.697678, 37.101295, 37.364582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348495, 37.033707, 38.235664>,  <36.396343, 36.527985, 37.630119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348495, 37.033707, 38.235664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480404, 37.272804, 37.943375>,  <36.559547, 37.416264, 37.768002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480404, 37.272804, 37.943375>,  <36.348495, 37.033707, 38.235664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480404, 37.272804, 37.943375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411452, 0.787641, 0.458617,
		0.849682, 0.149420, 0.505682,
		0.329769, 0.597742, -0.730723,
		36.579334, 37.452126, 37.724159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910385, 37.518150, 38.492813>,  <36.348495, 37.033707, 38.235664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910385, 37.518150, 38.492813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692448, 37.658230, 38.188049>,  <36.561687, 37.742279, 38.005192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692448, 37.658230, 38.188049>,  <36.910385, 37.518150, 38.492813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692448, 37.658230, 38.188049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425499, 0.667489, 0.611072,
		0.722564, 0.657130, -0.214666,
		-0.544841, 0.350199, -0.761911,
		36.528996, 37.763290, 37.959476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885086, 38.233658, 38.713421>,  <36.910385, 37.518150, 38.492813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885086, 38.233658, 38.713421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595844, 38.192867, 38.440151>,  <36.422298, 38.168392, 38.276188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595844, 38.192867, 38.440151>,  <36.885086, 38.233658, 38.713421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595844, 38.192867, 38.440151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642333, 0.463009, 0.610763,
		0.254034, 0.880468, -0.400303,
		-0.723101, -0.101973, -0.683173,
		36.378914, 38.162277, 38.235199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599369, 38.903561, 38.728752>,  <36.885086, 38.233658, 38.713421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599369, 38.903561, 38.728752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324154, 38.685841, 38.536774>,  <36.159027, 38.555210, 38.421585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324154, 38.685841, 38.536774>,  <36.599369, 38.903561, 38.728752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324154, 38.685841, 38.536774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725555, 0.503848, 0.468730,
		-0.013307, 0.670731, -0.741581,
		-0.688035, -0.544295, -0.479948,
		36.117744, 38.522552, 38.392788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169621, 39.314308, 38.257179>,  <36.599369, 38.903561, 38.728752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169621, 39.314308, 38.257179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994389, 38.993195, 38.418980>,  <35.889248, 38.800526, 38.516060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994389, 38.993195, 38.418980>,  <36.169621, 39.314308, 38.257179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994389, 38.993195, 38.418980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668869, 0.591725, 0.449974,
		-0.600585, -0.073431, -0.796182,
		-0.438079, -0.802789, 0.404497,
		35.862965, 38.752357, 38.540329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491848, 39.365074, 38.064655>,  <36.169621, 39.314308, 38.257179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491848, 39.365074, 38.064655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523918, 39.132019, 38.388165>,  <35.543159, 38.992188, 38.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523918, 39.132019, 38.388165>,  <35.491848, 39.365074, 38.064655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523918, 39.132019, 38.388165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714914, 0.531795, 0.453974,
		-0.694601, -0.614598, -0.373897,
		0.080174, -0.582635, 0.808770,
		35.547970, 38.957230, 38.630795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843182, 39.474983, 38.317715>,  <35.491848, 39.365074, 38.064655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843182, 39.474983, 38.317715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060268, 39.304432, 38.607174>,  <35.190521, 39.202103, 38.780849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060268, 39.304432, 38.607174>,  <34.843182, 39.474983, 38.317715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060268, 39.304432, 38.607174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716481, 0.214592, 0.663781,
		-0.438310, -0.878722, -0.189030,
		0.542715, -0.426378, 0.723645,
		35.223083, 39.176517, 38.824268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434891, 38.917267, 38.681038>,  <34.843182, 39.474983, 38.317715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434891, 38.917267, 38.681038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701832, 39.103157, 38.913818>,  <34.861996, 39.214691, 39.053486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701832, 39.103157, 38.913818>,  <34.434891, 38.917267, 38.681038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701832, 39.103157, 38.913818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661446, 0.010769, 0.749916,
		0.342242, -0.885387, 0.314581,
		0.667353, 0.464731, 0.581949,
		34.902039, 39.242577, 39.088402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503139, 38.495476, 39.303806>,  <34.434891, 38.917267, 38.681038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503139, 38.495476, 39.303806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551567, 38.888981, 39.356789>,  <34.580624, 39.125084, 39.388577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551567, 38.888981, 39.356789>,  <34.503139, 38.495476, 39.303806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551567, 38.888981, 39.356789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576955, -0.038845, 0.815852,
		0.807754, -0.175193, 0.562887,
		0.121066, 0.983767, 0.132456,
		34.587887, 39.184113, 39.396526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237297, 38.584274, 40.076672>,  <34.503139, 38.495476, 39.303806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237297, 38.584274, 40.076672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339161, 38.938198, 39.920589>,  <34.400280, 39.150551, 39.826942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339161, 38.938198, 39.920589>,  <34.237297, 38.584274, 40.076672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339161, 38.938198, 39.920589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630316, 0.457892, 0.626926,
		0.733381, 0.086296, 0.674318,
		0.254664, 0.884809, -0.390203,
		34.415562, 39.203640, 39.803528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507469, 38.931618, 40.617966>,  <34.237297, 38.584274, 40.076672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507469, 38.931618, 40.617966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382080, 39.197891, 40.347088>,  <34.306847, 39.357655, 40.184563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382080, 39.197891, 40.347088>,  <34.507469, 38.931618, 40.617966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382080, 39.197891, 40.347088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626603, 0.390836, 0.674252,
		0.713513, 0.635694, 0.294605,
		-0.313476, 0.665688, -0.677195,
		34.288036, 39.397598, 40.143929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657990, 39.624443, 40.907791>,  <34.507469, 38.931618, 40.617966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657990, 39.624443, 40.907791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354298, 39.617622, 40.647552>,  <34.172081, 39.613529, 40.491409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354298, 39.617622, 40.647552>,  <34.657990, 39.624443, 40.907791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354298, 39.617622, 40.647552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589991, 0.440017, 0.676975,
		0.274731, 0.897827, -0.344135,
		-0.759232, -0.017050, -0.650596,
		34.126530, 39.612507, 40.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447945, 40.283615, 41.108257>,  <34.657990, 39.624443, 40.907791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447945, 40.283615, 41.108257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173447, 40.137638, 40.856579>,  <34.008747, 40.050053, 40.705570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173447, 40.137638, 40.856579>,  <34.447945, 40.283615, 41.108257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173447, 40.137638, 40.856579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718644, 0.473800, 0.508984,
		0.112362, 0.801454, -0.587406,
		-0.686241, -0.364945, -0.629197,
		33.967575, 40.028156, 40.667820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896832, 40.796257, 41.071316>,  <34.447945, 40.283615, 41.108257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896832, 40.796257, 41.071316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701252, 40.479198, 40.925632>,  <33.583904, 40.288963, 40.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701252, 40.479198, 40.925632>,  <33.896832, 40.796257, 41.071316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701252, 40.479198, 40.925632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856554, 0.357258, 0.372401,
		-0.165066, 0.494046, -0.853623,
		-0.488946, -0.792645, -0.364206,
		33.554569, 40.241405, 40.816372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368378, 40.945366, 40.506725>,  <33.896832, 40.796257, 41.071316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368378, 40.945366, 40.506725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260063, 40.606724, 40.689999>,  <33.195076, 40.403538, 40.799961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260063, 40.606724, 40.689999>,  <33.368378, 40.945366, 40.506725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260063, 40.606724, 40.689999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816848, 0.453919, 0.355973,
		-0.509346, -0.277873, -0.814465,
		-0.270786, -0.846608, 0.458182,
		33.178829, 40.352741, 40.827454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696796, 40.715755, 40.212902>,  <33.368378, 40.945366, 40.506725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696796, 40.715755, 40.212902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761742, 40.568478, 40.579086>,  <32.800709, 40.480110, 40.798798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761742, 40.568478, 40.579086>,  <32.696796, 40.715755, 40.212902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761742, 40.568478, 40.579086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844871, 0.427406, 0.321741,
		-0.509737, -0.825687, -0.241681,
		0.162361, -0.368192, 0.915463,
		32.810452, 40.458019, 40.853725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955986, 40.705429, 40.353046>,  <32.696796, 40.715755, 40.212902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955986, 40.705429, 40.353046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201530, 40.658272, 40.665272>,  <32.348858, 40.629978, 40.852608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201530, 40.658272, 40.665272>,  <31.955986, 40.705429, 40.353046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201530, 40.658272, 40.665272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685640, 0.410434, 0.601201,
		-0.391243, -0.904238, 0.171121,
		0.613863, -0.117889, 0.780561,
		32.385689, 40.622906, 40.899441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514366, 41.123562, 40.680428>,  <31.955986, 40.705429, 40.353046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514366, 41.123562, 40.680428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540274, 41.161232, 41.077805>,  <31.555819, 41.183834, 41.316231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540274, 41.161232, 41.077805>,  <31.514366, 41.123562, 40.680428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540274, 41.161232, 41.077805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602769, -0.797091, 0.036261,
		0.795283, 0.596471, -0.108388,
		0.064767, 0.094171, 0.993447,
		31.559704, 41.189484, 41.375839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168213, 41.357204, 41.005573>,  <31.514366, 41.123562, 40.680428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168213, 41.357204, 41.005573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964926, 41.100094, 41.234852>,  <31.842953, 40.945827, 41.372417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964926, 41.100094, 41.234852>,  <32.168213, 41.357204, 41.005573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964926, 41.100094, 41.234852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693456, -0.700098, -0.170240,
		0.510718, 0.310967, 0.801540,
		-0.508217, -0.642778, 0.573195,
		31.812460, 40.907261, 41.406811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662605, 41.120209, 41.425488>,  <32.168213, 41.357204, 41.005573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662605, 41.120209, 41.425488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351692, 40.871761, 41.385376>,  <32.165146, 40.722694, 41.361309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351692, 40.871761, 41.385376>,  <32.662605, 41.120209, 41.425488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351692, 40.871761, 41.385376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622956, -0.737457, -0.260928,
		0.088118, -0.265280, 0.960136,
		-0.777278, -0.621115, -0.100275,
		32.118507, 40.685429, 41.355293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584244, 40.463779, 41.968254>,  <32.662605, 41.120209, 41.425488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584244, 40.463779, 41.968254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458221, 40.411911, 41.592186>,  <32.382607, 40.380791, 41.366543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458221, 40.411911, 41.592186>,  <32.584244, 40.463779, 41.968254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458221, 40.411911, 41.592186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797586, -0.573084, -0.188234,
		-0.514390, -0.809173, 0.283977,
		-0.315057, -0.129670, -0.940173,
		32.363705, 40.373009, 41.310135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836384, 39.727116, 41.780613>,  <32.584244, 40.463779, 41.968254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836384, 39.727116, 41.780613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739704, 39.902111, 41.434162>,  <32.681698, 40.007111, 41.226292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739704, 39.902111, 41.434162>,  <32.836384, 39.727116, 41.780613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739704, 39.902111, 41.434162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860513, -0.315872, -0.399678,
		-0.448442, -0.841918, -0.300123,
		-0.241696, 0.437492, -0.866132,
		32.667194, 40.033360, 41.174324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704544, 39.211243, 41.204685>,  <32.836384, 39.727116, 41.780613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704544, 39.211243, 41.204685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853302, 39.559433, 41.075714>,  <32.942558, 39.768349, 40.998333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853302, 39.559433, 41.075714>,  <32.704544, 39.211243, 41.204685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853302, 39.559433, 41.075714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687610, -0.491667, -0.534282,
		-0.623607, -0.023005, -0.781399,
		0.371897, 0.870480, -0.322425,
		32.964870, 39.820576, 40.978985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939926, 39.105377, 40.443172>,  <32.704544, 39.211243, 41.204685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939926, 39.105377, 40.443172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116608, 39.449524, 40.544895>,  <33.222618, 39.656013, 40.605927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116608, 39.449524, 40.544895>,  <32.939926, 39.105377, 40.443172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116608, 39.449524, 40.544895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755359, -0.203694, -0.622850,
		-0.484078, 0.467205, -0.739857,
		0.441703, 0.860365, 0.254303,
		33.249119, 39.707634, 40.621185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190224, 39.466335, 39.764843>,  <32.939926, 39.105377, 40.443172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190224, 39.466335, 39.764843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426636, 39.635841, 40.039391>,  <33.568485, 39.737545, 40.204121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426636, 39.635841, 40.039391>,  <33.190224, 39.466335, 39.764843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426636, 39.635841, 40.039391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792120, -0.144144, -0.593100,
		-0.152399, 0.894229, -0.420867,
		0.591033, 0.423765, 0.686370,
		33.603947, 39.762970, 40.245300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477295, 40.119671, 39.515110>,  <33.190224, 39.466335, 39.764843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477295, 40.119671, 39.515110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734962, 40.007244, 39.799656>,  <33.889565, 39.939789, 39.970383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734962, 40.007244, 39.799656>,  <33.477295, 40.119671, 39.515110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734962, 40.007244, 39.799656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681606, -0.211064, -0.700618,
		0.347066, 0.936190, 0.055617,
		0.644173, -0.281070, 0.711366,
		33.928215, 39.922924, 40.013065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106129, 40.381123, 39.335857>,  <33.477295, 40.119671, 39.515110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106129, 40.381123, 39.335857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180927, 40.081562, 39.590160>,  <34.225807, 39.901825, 39.742741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180927, 40.081562, 39.590160>,  <34.106129, 40.381123, 39.335857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180927, 40.081562, 39.590160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712376, -0.342248, -0.612688,
		0.676426, 0.567468, 0.469498,
		0.186996, -0.748897, 0.635756,
		34.237026, 39.856892, 39.780888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853035, 40.355030, 39.423965>,  <34.106129, 40.381123, 39.335857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853035, 40.355030, 39.423965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711159, 39.994488, 39.523373>,  <34.626034, 39.778164, 39.583015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711159, 39.994488, 39.523373>,  <34.853035, 40.355030, 39.423965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711159, 39.994488, 39.523373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699836, -0.432193, -0.568716,
		0.620020, -0.027799, 0.784094,
		-0.354690, -0.901353, 0.248513,
		34.604752, 39.724083, 39.597927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259121, 39.861485, 39.043945>,  <34.853035, 40.355030, 39.423965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259121, 39.861485, 39.043945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096779, 39.609837, 39.309120>,  <34.999374, 39.458847, 39.468227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096779, 39.609837, 39.309120>,  <35.259121, 39.861485, 39.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096779, 39.609837, 39.309120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431093, -0.771384, -0.468109,
		0.805877, 0.095803, 0.584281,
		-0.405859, -0.629118, 0.662940,
		34.975021, 39.421101, 39.508003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704021, 39.435307, 39.372932>,  <35.259121, 39.861485, 39.043945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704021, 39.435307, 39.372932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360989, 39.229595, 39.376411>,  <35.155170, 39.106167, 39.378498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360989, 39.229595, 39.376411>,  <35.704021, 39.435307, 39.372932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360989, 39.229595, 39.376411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452442, -0.762294, -0.462821,
		0.244652, -0.392969, 0.886409,
		-0.857579, -0.514279, 0.008701,
		35.103714, 39.075310, 39.379021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735764, 38.844654, 39.809914>,  <35.704021, 39.435307, 39.372932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735764, 38.844654, 39.809914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497849, 38.836063, 39.488476>,  <35.355099, 38.830910, 39.295612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497849, 38.836063, 39.488476>,  <35.735764, 38.844654, 39.809914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497849, 38.836063, 39.488476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586703, -0.694979, -0.415673,
		-0.549554, -0.718709, 0.425966,
		-0.594786, -0.021481, -0.803597,
		35.319412, 38.829620, 39.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504200, 38.151516, 39.709198>,  <35.735764, 38.844654, 39.809914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504200, 38.151516, 39.709198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499641, 38.363579, 39.370071>,  <35.496906, 38.490818, 39.166595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499641, 38.363579, 39.370071>,  <35.504200, 38.151516, 39.709198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499641, 38.363579, 39.370071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506117, -0.728190, -0.462153,
		-0.862390, -0.434361, -0.260028,
		-0.011392, 0.530161, -0.847821,
		35.496223, 38.522629, 39.115726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397804, 37.757725, 39.193382>,  <35.504200, 38.151516, 39.709198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397804, 37.757725, 39.193382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563320, 38.059479, 38.989544>,  <35.662628, 38.240532, 38.867241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563320, 38.059479, 38.989544>,  <35.397804, 37.757725, 39.193382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563320, 38.059479, 38.989544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409378, -0.654165, -0.635986,
		-0.813137, 0.054545, -0.579511,
		0.413785, 0.754383, -0.509596,
		35.687454, 38.285793, 38.836666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309246, 37.756195, 38.535572>,  <35.397804, 37.757725, 39.193382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309246, 37.756195, 38.535572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659698, 37.946194, 38.568493>,  <35.869968, 38.060192, 38.588245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659698, 37.946194, 38.568493>,  <35.309246, 37.756195, 38.535572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659698, 37.946194, 38.568493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358397, -0.527621, -0.770173,
		-0.322408, 0.704268, -0.632503,
		0.876131, 0.474997, 0.082298,
		35.922539, 38.088692, 38.593182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244343, 37.803997, 37.778160>,  <35.309246, 37.756195, 38.535572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244343, 37.803997, 37.778160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516876, 38.034420, 37.958797>,  <35.680397, 38.172676, 38.067181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516876, 38.034420, 37.958797>,  <35.244343, 37.803997, 37.778160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516876, 38.034420, 37.958797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704700, -0.349381, -0.617520,
		-0.197949, 0.738977, -0.643995,
		0.681332, 0.576061, 0.451598,
		35.721275, 38.207237, 38.094276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587994, 38.332069, 37.238430>,  <35.244343, 37.803997, 37.778160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587994, 38.332069, 37.238430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817299, 38.242203, 37.553619>,  <35.954880, 38.188282, 37.742733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817299, 38.242203, 37.553619>,  <35.587994, 38.332069, 37.238430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817299, 38.242203, 37.553619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696458, -0.373005, -0.613036,
		0.431648, 0.900217, -0.057356,
		0.573259, -0.224670, 0.787970,
		35.989277, 38.174801, 37.790012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185810, 38.287319, 36.877399>,  <35.587994, 38.332069, 37.238430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185810, 38.287319, 36.877399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322514, 38.179321, 37.237465>,  <36.404537, 38.114525, 37.453506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322514, 38.179321, 37.237465>,  <36.185810, 38.287319, 36.877399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322514, 38.179321, 37.237465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657822, -0.615339, -0.434313,
		0.671169, 0.740583, -0.032694,
		0.341763, -0.269991, 0.900168,
		36.425041, 38.098324, 37.507515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807961, 38.215187, 36.736214>,  <36.185810, 38.287319, 36.877399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807961, 38.215187, 36.736214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774704, 37.972626, 37.052532>,  <36.754749, 37.827087, 37.242325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774704, 37.972626, 37.052532>,  <36.807961, 38.215187, 36.736214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774704, 37.972626, 37.052532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589832, -0.669561, -0.451427,
		0.803235, 0.428907, 0.413343,
		-0.083139, -0.606405, 0.790798,
		36.749763, 37.790703, 37.289772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553875, 37.981255, 36.901360>,  <36.807961, 38.215187, 36.736214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553875, 37.981255, 36.901360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306248, 37.707634, 37.055672>,  <37.157669, 37.543461, 37.148258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306248, 37.707634, 37.055672>,  <37.553875, 37.981255, 36.901360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306248, 37.707634, 37.055672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527165, -0.726074, -0.441490,
		0.582106, -0.069944, 0.810099,
		-0.619071, -0.684050, 0.385780,
		37.120525, 37.502419, 37.171406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948708, 37.544205, 37.254429>,  <37.553875, 37.981255, 36.901360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948708, 37.544205, 37.254429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609245, 37.357098, 37.155647>,  <37.405567, 37.244835, 37.096378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609245, 37.357098, 37.155647>,  <37.948708, 37.544205, 37.254429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609245, 37.357098, 37.155647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525615, -0.693395, -0.492882,
		0.059320, -0.548085, 0.834316,
		-0.848652, -0.467767, -0.246949,
		37.354649, 37.216766, 37.081562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227692, 36.954388, 37.137562>,  <37.948708, 37.544205, 37.254429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227692, 36.954388, 37.137562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869232, 36.934258, 36.961208>,  <37.654156, 36.922180, 36.855396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869232, 36.934258, 36.961208>,  <38.227692, 36.954388, 37.137562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869232, 36.934258, 36.961208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370671, -0.631120, -0.681389,
		-0.243956, -0.774051, 0.584235,
		-0.896152, -0.050330, -0.440884,
		37.600388, 36.919159, 36.828941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098141, 36.324768, 36.972645>,  <38.227692, 36.954388, 37.137562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098141, 36.324768, 36.972645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827995, 36.494682, 36.731503>,  <37.665909, 36.596630, 36.586815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827995, 36.494682, 36.731503>,  <38.098141, 36.324768, 36.972645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827995, 36.494682, 36.731503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400319, -0.475380, -0.783427,
		-0.619376, -0.770435, 0.151006,
		-0.675366, 0.424786, -0.602859,
		37.625385, 36.622116, 36.550644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854500, 36.172661, 36.985954>,  <38.098141, 36.324768, 36.972645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854500, 36.172661, 36.985954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226070, 36.197166, 37.132019>,  <39.449013, 36.211872, 37.219658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226070, 36.197166, 37.132019>,  <38.854500, 36.172661, 36.985954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226070, 36.197166, 37.132019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107152, 0.899537, -0.423500,
		-0.354426, 0.432527, 0.829037,
		0.928924, 0.061267, 0.365166,
		39.504749, 36.215546, 37.241570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926384, 36.807919, 37.320171>,  <38.854500, 36.172661, 36.985954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926384, 36.807919, 37.320171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281784, 36.674892, 37.193703>,  <39.495026, 36.595078, 37.117821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281784, 36.674892, 37.193703>,  <38.926384, 36.807919, 37.320171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281784, 36.674892, 37.193703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196702, 0.898533, -0.392360,
		0.414575, 0.286422, 0.863765,
		0.888502, -0.332567, -0.316170,
		39.548336, 36.575123, 37.098850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534382, 37.345535, 37.441326>,  <38.926384, 36.807919, 37.320171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534382, 37.345535, 37.441326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671211, 37.080585, 37.174721>,  <39.753311, 36.921616, 37.014755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671211, 37.080585, 37.174721>,  <39.534382, 37.345535, 37.441326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671211, 37.080585, 37.174721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424375, 0.741750, -0.519338,
		0.838385, -0.105199, 0.534830,
		0.342076, -0.662374, -0.666517,
		39.773834, 36.881874, 36.974766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224670, 37.181107, 37.274975>,  <39.534382, 37.345535, 37.441326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224670, 37.181107, 37.274975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958092, 37.156746, 36.977749>,  <39.798145, 37.142128, 36.799412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958092, 37.156746, 36.977749>,  <40.224670, 37.181107, 37.274975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958092, 37.156746, 36.977749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374735, 0.834253, -0.404469,
		0.644536, -0.548008, -0.533162,
		-0.666444, -0.060901, -0.743064,
		39.758160, 37.138477, 36.754829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370453, 36.522144, 36.963024>,  <40.224670, 37.181107, 37.274975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370453, 36.522144, 36.963024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670197, 36.784992, 36.930386>,  <40.850040, 36.942703, 36.910805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670197, 36.784992, 36.930386>,  <40.370453, 36.522144, 36.963024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670197, 36.784992, 36.930386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512483, -0.653570, -0.556962,
		-0.419319, 0.375547, -0.826520,
		0.749354, 0.657123, -0.081593,
		40.895004, 36.982128, 36.905907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537861, 36.593830, 36.226784>,  <40.370453, 36.522144, 36.963024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537861, 36.593830, 36.226784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843361, 36.681271, 36.469730>,  <41.026661, 36.733734, 36.615498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843361, 36.681271, 36.469730>,  <40.537861, 36.593830, 36.226784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843361, 36.681271, 36.469730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548708, -0.715450, -0.432493,
		0.339998, 0.663586, -0.666375,
		0.763754, 0.218599, 0.607366,
		41.072487, 36.746849, 36.651939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073421, 36.795868, 35.798107>,  <40.537861, 36.593830, 36.226784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073421, 36.795868, 35.798107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231457, 36.637760, 36.129810>,  <41.326279, 36.542896, 36.328835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231457, 36.637760, 36.129810>,  <41.073421, 36.795868, 35.798107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231457, 36.637760, 36.129810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511071, -0.655534, -0.555951,
		0.763358, 0.643458, -0.056980,
		0.395084, -0.395269, 0.829260,
		41.349983, 36.519180, 36.378590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689381, 36.750290, 35.485989>,  <41.073421, 36.795868, 35.798107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689381, 36.750290, 35.485989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635826, 36.516262, 35.805931>,  <41.603695, 36.375847, 35.997894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635826, 36.516262, 35.805931>,  <41.689381, 36.750290, 35.485989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635826, 36.516262, 35.805931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593787, -0.693554, -0.407921,
		0.793405, 0.420328, 0.440265,
		-0.133887, -0.585070, 0.799855,
		41.595661, 36.340740, 36.045887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307968, 36.485748, 35.431870>,  <41.689381, 36.750290, 35.485989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307968, 36.485748, 35.431870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040054, 36.251175, 35.614067>,  <41.879307, 36.110432, 35.723385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040054, 36.251175, 35.614067>,  <42.307968, 36.485748, 35.431870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040054, 36.251175, 35.614067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467828, -0.809631, -0.354450,
		0.576645, -0.024313, 0.816633,
		-0.669789, -0.586435, 0.455496,
		41.839119, 36.075245, 35.750717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673965, 35.857330, 35.581070>,  <42.307968, 36.485748, 35.431870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673965, 35.857330, 35.581070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291412, 35.752407, 35.632488>,  <42.061882, 35.689453, 35.663338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291412, 35.752407, 35.632488>,  <42.673965, 35.857330, 35.581070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291412, 35.752407, 35.632488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253426, -0.963917, -0.081488,
		0.145283, -0.045357, 0.988350,
		-0.956383, -0.262312, 0.128547,
		42.004498, 35.673714, 35.671051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311253, 35.792412, 35.304615>,  <42.673965, 35.857330, 35.581070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311253, 35.792412, 35.304615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482998, 35.897293, 34.958923>,  <43.586044, 35.960220, 34.751507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482998, 35.897293, 34.958923>,  <43.311253, 35.792412, 35.304615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482998, 35.897293, 34.958923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900755, -0.054934, 0.430838,
		0.065492, -0.963447, -0.259768,
		0.429360, 0.262204, -0.864233,
		43.611805, 35.975956, 34.699654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887268, 35.375008, 35.021618>,  <43.311253, 35.792412, 35.304615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887268, 35.375008, 35.021618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052891, 35.696983, 34.851612>,  <44.152264, 35.890167, 34.749611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052891, 35.696983, 34.851612>,  <43.887268, 35.375008, 35.021618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052891, 35.696983, 34.851612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905906, -0.318826, 0.278719,
		0.088847, -0.500423, -0.861210,
		0.414053, 0.804939, -0.425010,
		44.177105, 35.938465, 34.724110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396835, 35.116627, 34.506176>,  <43.887268, 35.375008, 35.021618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396835, 35.116627, 34.506176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491554, 35.493919, 34.599327>,  <44.548386, 35.720295, 34.655220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491554, 35.493919, 34.599327>,  <44.396835, 35.116627, 34.506176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491554, 35.493919, 34.599327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928622, -0.290208, 0.231174,
		0.285635, 0.161518, -0.944629,
		0.236801, 0.943234, 0.232883,
		44.562595, 35.776890, 34.669193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914566, 35.402653, 34.090073>,  <44.396835, 35.116627, 34.506176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914566, 35.402653, 34.090073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961338, 35.550941, 34.458614>,  <44.989403, 35.639915, 34.679741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961338, 35.550941, 34.458614>,  <44.914566, 35.402653, 34.090073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961338, 35.550941, 34.458614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861896, -0.498796, 0.091314,
		0.493419, 0.783433, -0.377850,
		0.116932, 0.370723, 0.921353,
		44.996418, 35.662159, 34.735020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546535, 35.568825, 34.313694>,  <44.914566, 35.402653, 34.090073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546535, 35.568825, 34.313694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417500, 35.532333, 34.690548>,  <45.340076, 35.510437, 34.916660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417500, 35.532333, 34.690548>,  <45.546535, 35.568825, 34.313694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417500, 35.532333, 34.690548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870882, -0.418539, 0.257663,
		0.370812, 0.903605, 0.214468,
		-0.322589, -0.091232, 0.942132,
		45.320724, 35.504963, 34.973186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004864, 35.993679, 34.883392>,  <45.546535, 35.568825, 34.313694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004864, 35.993679, 34.883392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825340, 35.673111, 35.041527>,  <45.717625, 35.480770, 35.136410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825340, 35.673111, 35.041527>,  <46.004864, 35.993679, 34.883392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825340, 35.673111, 35.041527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883479, -0.464412, 0.061537,
		0.134284, 0.376894, 0.916471,
		-0.448813, -0.801419, 0.395341,
		45.690697, 35.432686, 35.160130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203190, 35.858242, 35.701767>,  <46.004864, 35.993679, 34.883392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203190, 35.858242, 35.701767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164295, 35.538586, 35.464474>,  <46.140957, 35.346794, 35.322098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.164295, 35.538586, 35.464474>,  <46.203190, 35.858242, 35.701767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164295, 35.538586, 35.464474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947054, -0.257555, 0.191712,
		-0.305994, -0.543180, 0.781871,
		-0.097241, -0.799137, -0.593232,
		46.135124, 35.298843, 35.286503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493801, 35.260311, 36.062836>,  <46.203190, 35.858242, 35.701767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493801, 35.260311, 36.062836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518459, 35.222801, 35.665363>,  <46.533253, 35.200294, 35.426880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518459, 35.222801, 35.665363>,  <46.493801, 35.260311, 36.062836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518459, 35.222801, 35.665363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987165, -0.141227, 0.074570,
		-0.147328, -0.985526, 0.083867,
		0.061647, -0.093777, -0.993683,
		46.536953, 35.194668, 35.367260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762100, 34.554741, 35.754639>,  <46.493801, 35.260311, 36.062836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762100, 34.554741, 35.754639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.859257, 34.878807, 35.541233>,  <46.917553, 35.073246, 35.413189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.859257, 34.878807, 35.541233>,  <46.762100, 34.554741, 35.754639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.859257, 34.878807, 35.541233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965989, -0.252300, 0.056661,
		-0.088702, -0.529134, -0.843889,
		0.242894, 0.810161, -0.533517,
		46.932125, 35.121857, 35.381176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.313625, 34.317390, 35.298031>,  <46.762100, 34.554741, 35.754639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.313625, 34.317390, 35.298031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300060, 34.715210, 35.337475>,  <47.291924, 34.953903, 35.361141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300060, 34.715210, 35.337475>,  <47.313625, 34.317390, 35.298031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300060, 34.715210, 35.337475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996700, 0.026371, 0.076774,
		0.073755, 0.100889, -0.992160,
		-0.033910, 0.994548, 0.098611,
		47.289886, 35.013573, 35.367058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811874, 34.717167, 34.908321>,  <47.313625, 34.317390, 35.298031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811874, 34.717167, 34.908321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719185, 34.956169, 35.215382>,  <47.663570, 35.099571, 35.399616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719185, 34.956169, 35.215382>,  <47.811874, 34.717167, 34.908321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.719185, 34.956169, 35.215382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937616, -0.073070, 0.339906,
		0.259188, 0.798528, -0.543300,
		-0.231726, 0.597507, 0.767651,
		47.649666, 35.135422, 35.445679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.292675, 28.771078, 30.249527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926403, 28.654079, 30.139273>,  <37.706638, 28.583879, 30.073120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926403, 28.654079, 30.139273>,  <38.292675, 28.771078, 30.249527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926403, 28.654079, 30.139273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400321, 0.602883, 0.690126,
		-0.035685, 0.742278, -0.669142,
		-0.915680, -0.292498, -0.275636,
		37.651699, 28.566330, 30.056581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901012, 29.406218, 30.045563>,  <38.292675, 28.771078, 30.249527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901012, 29.406218, 30.045563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631577, 29.122343, 30.128139>,  <37.469913, 28.952019, 30.177687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631577, 29.122343, 30.128139>,  <37.901012, 29.406218, 30.045563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631577, 29.122343, 30.128139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502215, 0.644412, 0.576640,
		-0.542269, 0.284740, -0.790486,
		-0.673591, -0.709687, 0.206444,
		37.429501, 28.909437, 30.190073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331295, 29.779394, 29.974754>,  <37.901012, 29.406218, 30.045563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331295, 29.779394, 29.974754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235329, 29.462402, 30.199047>,  <37.177750, 29.272207, 30.333622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235329, 29.462402, 30.199047>,  <37.331295, 29.779394, 29.974754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235329, 29.462402, 30.199047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533713, 0.590151, 0.605699,
		-0.810918, -0.153950, -0.564545,
		-0.239919, -0.792477, 0.560730,
		37.163353, 29.224659, 30.367266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626289, 29.898191, 30.068161>,  <37.331295, 29.779394, 29.974754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626289, 29.898191, 30.068161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714165, 29.621515, 30.343349>,  <36.766888, 29.455509, 30.508463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714165, 29.621515, 30.343349>,  <36.626289, 29.898191, 30.068161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714165, 29.621515, 30.343349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505154, 0.522643, 0.686778,
		-0.834600, -0.498406, -0.234592,
		0.219686, -0.691690, 0.687970,
		36.780071, 29.414009, 30.549740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038414, 29.844318, 30.375879>,  <36.626289, 29.898191, 30.068161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038414, 29.844318, 30.375879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322483, 29.727606, 30.632168>,  <36.492924, 29.657578, 30.785940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322483, 29.727606, 30.632168>,  <36.038414, 29.844318, 30.375879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322483, 29.727606, 30.632168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432539, 0.537236, 0.724077,
		-0.555492, -0.791353, 0.255321,
		0.710169, -0.291783, 0.640721,
		36.535534, 29.640072, 30.824385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690044, 29.700985, 30.995281>,  <36.038414, 29.844318, 30.375879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690044, 29.700985, 30.995281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066582, 29.754520, 31.119194>,  <36.292503, 29.786642, 31.193542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.066582, 29.754520, 31.119194>,  <35.690044, 29.700985, 30.995281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066582, 29.754520, 31.119194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336695, 0.434172, 0.835542,
		-0.022672, -0.890832, 0.453767,
		0.941341, 0.133838, 0.309783,
		36.348984, 29.794672, 31.212130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729000, 29.544113, 31.757027>,  <35.690044, 29.700985, 30.995281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729000, 29.544113, 31.757027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051315, 29.779139, 31.727417>,  <36.244705, 29.920153, 31.709652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051315, 29.779139, 31.727417>,  <35.729000, 29.544113, 31.757027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051315, 29.779139, 31.727417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337553, 0.558391, 0.757798,
		0.486585, -0.585638, 0.648277,
		0.805788, 0.587561, -0.074021,
		36.293053, 29.955408, 31.705210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825806, 29.820194, 32.479794>,  <35.729000, 29.544113, 31.757027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825806, 29.820194, 32.479794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053070, 30.050499, 32.244610>,  <36.189426, 30.188683, 32.103500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053070, 30.050499, 32.244610>,  <35.825806, 29.820194, 32.479794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053070, 30.050499, 32.244610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173038, 0.782091, 0.598658,
		0.804521, -0.238393, 0.543980,
		0.568158, 0.575762, -0.587958,
		36.223518, 30.223227, 32.068222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343201, 30.180758, 32.872868>,  <35.825806, 29.820194, 32.479794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343201, 30.180758, 32.872868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273670, 30.393480, 32.541332>,  <36.231953, 30.521114, 32.342411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273670, 30.393480, 32.541332>,  <36.343201, 30.180758, 32.872868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273670, 30.393480, 32.541332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288673, 0.777158, 0.559190,
		0.941516, 0.336464, 0.018427,
		-0.173827, 0.531806, -0.828835,
		36.221523, 30.553022, 32.292683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703632, 30.820826, 32.886333>,  <36.343201, 30.180758, 32.872868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703632, 30.820826, 32.886333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396378, 30.903151, 32.643814>,  <36.212025, 30.952545, 32.498302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396378, 30.903151, 32.643814>,  <36.703632, 30.820826, 32.886333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396378, 30.903151, 32.643814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151850, 0.861355, 0.484776,
		0.622013, 0.464444, -0.630390,
		-0.768142, 0.205812, -0.606300,
		36.165936, 30.964893, 32.461926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674351, 31.524891, 32.892277>,  <36.703632, 30.820826, 32.886333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674351, 31.524891, 32.892277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316910, 31.427061, 32.741730>,  <36.102444, 31.368362, 32.651402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316910, 31.427061, 32.741730>,  <36.674351, 31.524891, 32.892277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316910, 31.427061, 32.741730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366429, 0.881770, 0.297005,
		0.259229, 0.403317, -0.877574,
		-0.893605, -0.244576, -0.376367,
		36.048828, 31.353689, 32.628819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573174, 31.963766, 32.357567>,  <36.674351, 31.524891, 32.892277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573174, 31.963766, 32.357567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197742, 31.866112, 32.455109>,  <35.972485, 31.807520, 32.513634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197742, 31.866112, 32.455109>,  <36.573174, 31.963766, 32.357567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197742, 31.866112, 32.455109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226104, 0.968975, 0.099825,
		-0.260663, 0.038556, -0.964659,
		-0.938579, -0.244134, 0.243858,
		35.916168, 31.792871, 32.528267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259270, 32.642662, 32.369076>,  <36.573174, 31.963766, 32.357567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259270, 32.642662, 32.369076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968452, 32.412418, 32.518784>,  <35.793961, 32.274273, 32.608608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968452, 32.412418, 32.518784>,  <36.259270, 32.642662, 32.369076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968452, 32.412418, 32.518784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476173, 0.815441, 0.329114,
		-0.494637, 0.061063, -0.866952,
		-0.727044, -0.575611, 0.374271,
		35.750340, 32.239735, 32.631065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581104, 32.882767, 32.144291>,  <36.259270, 32.642662, 32.369076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581104, 32.882767, 32.144291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567413, 32.695118, 32.497280>,  <35.559196, 32.582527, 32.709072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.567413, 32.695118, 32.497280>,  <35.581104, 32.882767, 32.144291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567413, 32.695118, 32.497280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573869, 0.732138, 0.366945,
		-0.818231, -0.493861, -0.294277,
		-0.034232, -0.469122, 0.882469,
		35.557144, 32.554382, 32.762020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833153, 32.968002, 32.502190>,  <35.581104, 32.882767, 32.144291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833153, 32.968002, 32.502190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.089409, 32.858376, 32.789093>,  <35.243164, 32.792599, 32.961235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.089409, 32.858376, 32.789093>,  <34.833153, 32.968002, 32.502190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089409, 32.858376, 32.789093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458742, 0.612472, 0.643765,
		-0.615739, -0.741461, 0.266648,
		0.640641, -0.274069, 0.717262,
		35.281601, 32.776154, 33.004272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415874, 32.719730, 32.996559>,  <34.833153, 32.968002, 32.502190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415874, 32.719730, 32.996559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766228, 32.841267, 33.146496>,  <34.976440, 32.914188, 33.236458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766228, 32.841267, 33.146496>,  <34.415874, 32.719730, 32.996559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766228, 32.841267, 33.146496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482334, 0.572782, 0.662778,
		-0.013323, -0.761316, 0.648244,
		0.875886, 0.303840, 0.374839,
		35.028992, 32.932419, 33.258949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197514, 32.985134, 33.633286>,  <34.415874, 32.719730, 32.996559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197514, 32.985134, 33.633286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586662, 33.077557, 33.628777>,  <34.820152, 33.133011, 33.626072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586662, 33.077557, 33.628777>,  <34.197514, 32.985134, 33.633286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586662, 33.077557, 33.628777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123190, 0.558737, 0.820145,
		0.195796, -0.796510, 0.572045,
		0.972876, 0.231051, -0.011277,
		34.878525, 33.146873, 33.625393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513062, 32.684593, 34.294163>,  <34.197514, 32.985134, 33.633286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513062, 32.684593, 34.294163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736675, 32.987740, 34.159630>,  <34.870846, 33.169628, 34.078911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736675, 32.987740, 34.159630>,  <34.513062, 32.684593, 34.294163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736675, 32.987740, 34.159630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071372, 0.448123, 0.891118,
		0.826064, -0.474164, 0.304608,
		0.559038, 0.757862, -0.336337,
		34.904388, 33.215099, 34.058727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991375, 32.817440, 34.716141>,  <34.513062, 32.684593, 34.294163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991375, 32.817440, 34.716141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020725, 33.173355, 34.535965>,  <35.038334, 33.386906, 34.427860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020725, 33.173355, 34.535965>,  <34.991375, 32.817440, 34.716141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020725, 33.173355, 34.535965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010327, 0.452312, 0.891800,
		0.997251, -0.060782, 0.042376,
		0.073373, 0.889786, -0.450440,
		35.042736, 33.440292, 34.400833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502831, 33.143940, 35.075256>,  <34.991375, 32.817440, 34.716141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502831, 33.143940, 35.075256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251507, 33.398239, 34.895901>,  <35.100712, 33.550819, 34.788288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251507, 33.398239, 34.895901>,  <35.502831, 33.143940, 35.075256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251507, 33.398239, 34.895901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074410, 0.524608, 0.848086,
		0.774397, 0.566225, -0.282309,
		-0.628309, 0.635749, -0.448388,
		35.063015, 33.588963, 34.761383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849030, 33.726582, 35.083988>,  <35.502831, 33.143940, 35.075256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849030, 33.726582, 35.083988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458591, 33.809265, 35.057144>,  <35.224327, 33.858875, 35.041039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458591, 33.809265, 35.057144>,  <35.849030, 33.726582, 35.083988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458591, 33.809265, 35.057144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050481, 0.516000, 0.855100,
		0.211383, 0.831274, -0.514102,
		-0.976099, 0.206706, -0.067110,
		35.165760, 33.871277, 35.037010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853321, 34.513741, 35.096111>,  <35.849030, 33.726582, 35.083988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853321, 34.513741, 35.096111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518044, 34.324066, 35.203880>,  <35.316879, 34.210262, 35.268539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518044, 34.324066, 35.203880>,  <35.853321, 34.513741, 35.096111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518044, 34.324066, 35.203880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043082, 0.550032, 0.834032,
		-0.543674, 0.687470, -0.481460,
		-0.838190, -0.474183, 0.269421,
		35.266586, 34.181812, 35.284706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151585, 34.887993, 35.729546>,  <35.853321, 34.513741, 35.096111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151585, 34.887993, 35.729546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381306, 34.707157, 36.002541>,  <36.519138, 34.598656, 36.166340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381306, 34.707157, 36.002541>,  <36.151585, 34.887993, 35.729546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381306, 34.707157, 36.002541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519840, -0.442636, -0.730644,
		0.632412, 0.774394, -0.019191,
		0.574301, -0.452092, 0.682489,
		36.553596, 34.571529, 36.207287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829651, 34.989414, 35.513939>,  <36.151585, 34.887993, 35.729546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829651, 34.989414, 35.513939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835629, 34.667595, 35.751419>,  <36.839214, 34.474503, 35.893909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835629, 34.667595, 35.751419>,  <36.829651, 34.989414, 35.513939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835629, 34.667595, 35.751419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503040, -0.507104, -0.699855,
		0.864134, 0.309116, 0.397139,
		0.014945, -0.804546, 0.593703,
		36.840111, 34.426231, 35.929531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522625, 34.751591, 35.492088>,  <36.829651, 34.989414, 35.513939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522625, 34.751591, 35.492088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316589, 34.440002, 35.635139>,  <37.192970, 34.253052, 35.720970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316589, 34.440002, 35.635139>,  <37.522625, 34.751591, 35.492088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316589, 34.440002, 35.635139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483443, -0.608559, -0.629236,
		0.707793, -0.151217, 0.690046,
		-0.515085, -0.778967, 0.357629,
		37.162064, 34.206314, 35.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018967, 34.302143, 35.759193>,  <37.522625, 34.751591, 35.492088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018967, 34.302143, 35.759193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697460, 34.074535, 35.689705>,  <37.504555, 33.937973, 35.648014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697460, 34.074535, 35.689705>,  <38.018967, 34.302143, 35.759193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697460, 34.074535, 35.689705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581551, -0.689829, -0.431200,
		0.125526, -0.447610, 0.885375,
		-0.803767, -0.569018, -0.173717,
		37.456329, 33.903831, 35.637589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218712, 33.668827, 35.947540>,  <38.018967, 34.302143, 35.759193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218712, 33.668827, 35.947540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885010, 33.589920, 35.741589>,  <37.684788, 33.542576, 35.618019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885010, 33.589920, 35.741589>,  <38.218712, 33.668827, 35.947540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885010, 33.589920, 35.741589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465643, -0.752157, -0.466301,
		-0.295282, -0.628764, 0.719350,
		-0.834257, -0.197270, -0.514878,
		37.634731, 33.530739, 35.587124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180935, 32.988373, 35.961170>,  <38.218712, 33.668827, 35.947540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180935, 32.988373, 35.961170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940105, 33.053970, 35.648602>,  <37.795609, 33.093327, 35.461060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940105, 33.053970, 35.648602>,  <38.180935, 32.988373, 35.961170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940105, 33.053970, 35.648602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326194, -0.842762, -0.428193,
		-0.728770, -0.512697, 0.453912,
		-0.602073, 0.163991, -0.781418,
		37.759483, 33.103168, 35.414177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908371, 32.257435, 35.847519>,  <38.180935, 32.988373, 35.961170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908371, 32.257435, 35.847519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868454, 32.488522, 35.523472>,  <37.844505, 32.627174, 35.329044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868454, 32.488522, 35.523472>,  <37.908371, 32.257435, 35.847519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868454, 32.488522, 35.523472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307598, -0.756385, -0.577292,
		-0.946269, -0.306800, -0.102222,
		-0.099794, 0.577716, -0.810114,
		37.838516, 32.661835, 35.280437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446503, 31.950872, 35.400200>,  <37.908371, 32.257435, 35.847519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446503, 31.950872, 35.400200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710022, 32.183632, 35.209465>,  <37.868134, 32.323288, 35.095024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710022, 32.183632, 35.209465>,  <37.446503, 31.950872, 35.400200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710022, 32.183632, 35.209465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255396, -0.769175, -0.585784,
		-0.707640, 0.264131, -0.655347,
		0.658801, 0.581897, -0.476841,
		37.907661, 32.358200, 35.066414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467014, 31.723543, 34.762264>,  <37.446503, 31.950872, 35.400200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467014, 31.723543, 34.762264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792118, 31.948812, 34.702587>,  <37.987183, 32.083973, 34.666782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792118, 31.948812, 34.702587>,  <37.467014, 31.723543, 34.762264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792118, 31.948812, 34.702587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309644, -0.634483, -0.708204,
		-0.493498, 0.529405, -0.690066,
		0.812761, 0.563171, -0.149189,
		38.035946, 32.117764, 34.657829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601841, 31.767405, 33.985733>,  <37.467014, 31.723543, 34.762264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601841, 31.767405, 33.985733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953426, 31.893669, 34.128716>,  <38.164379, 31.969429, 34.214504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953426, 31.893669, 34.128716>,  <37.601841, 31.767405, 33.985733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953426, 31.893669, 34.128716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458550, -0.353624, -0.815281,
		-0.130950, 0.880515, -0.455571,
		0.878968, 0.315663, 0.357453,
		38.217117, 31.988367, 34.235950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897449, 32.105427, 33.425007>,  <37.601841, 31.767405, 33.985733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897449, 32.105427, 33.425007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188610, 31.995602, 33.676331>,  <38.363304, 31.929707, 33.827126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.188610, 31.995602, 33.676331>,  <37.897449, 32.105427, 33.425007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188610, 31.995602, 33.676331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611966, -0.153193, -0.775906,
		0.309291, 0.949287, 0.056516,
		0.727899, -0.274567, 0.628312,
		38.406979, 31.913231, 33.864822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493004, 32.415028, 33.182644>,  <37.897449, 32.105427, 33.425007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493004, 32.415028, 33.182644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590584, 32.098537, 33.406948>,  <38.649132, 31.908644, 33.541531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590584, 32.098537, 33.406948>,  <38.493004, 32.415028, 33.182644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590584, 32.098537, 33.406948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679408, -0.273176, -0.681013,
		0.692020, 0.547120, 0.470922,
		0.243951, -0.791223, 0.560762,
		38.663769, 31.861170, 33.575176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235119, 32.394604, 33.065742>,  <38.493004, 32.415028, 33.182644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235119, 32.394604, 33.065742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114319, 32.042084, 33.211128>,  <39.041840, 31.830572, 33.298359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114319, 32.042084, 33.211128>,  <39.235119, 32.394604, 33.065742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114319, 32.042084, 33.211128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546871, -0.472451, -0.691174,
		0.780852, -0.009964, 0.624636,
		-0.301997, -0.881300, 0.363466,
		39.023720, 31.777693, 33.320168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865559, 32.005707, 32.944462>,  <39.235119, 32.394604, 33.065742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865559, 32.005707, 32.944462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562679, 31.748373, 32.989670>,  <39.380951, 31.593973, 33.016792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562679, 31.748373, 32.989670>,  <39.865559, 32.005707, 32.944462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562679, 31.748373, 32.989670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401908, -0.595272, -0.695788,
		0.514900, -0.481427, 0.709300,
		-0.757197, -0.643335, 0.113016,
		39.335522, 31.555372, 33.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233810, 31.393627, 33.111595>,  <39.865559, 32.005707, 32.944462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233810, 31.393627, 33.111595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859035, 31.312580, 32.997681>,  <39.634171, 31.263952, 32.929333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859035, 31.312580, 32.997681>,  <40.233810, 31.393627, 33.111595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859035, 31.312580, 32.997681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349501, -0.537773, -0.767235,
		0.002307, -0.818380, 0.574672,
		-0.936933, -0.202619, -0.284784,
		39.577957, 31.251795, 32.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326694, 30.772539, 32.797443>,  <40.233810, 31.393627, 33.111595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326694, 30.772539, 32.797443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965057, 30.876762, 32.661961>,  <39.748074, 30.939297, 32.580669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965057, 30.876762, 32.661961>,  <40.326694, 30.772539, 32.797443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965057, 30.876762, 32.661961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053010, -0.718103, -0.693915,
		-0.424031, -0.645320, 0.635421,
		-0.904095, 0.260558, -0.338706,
		39.693829, 30.954929, 32.560349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932262, 30.187302, 32.666386>,  <40.326694, 30.772539, 32.797443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932262, 30.187302, 32.666386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749264, 30.447899, 32.424313>,  <39.639465, 30.604258, 32.279068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749264, 30.447899, 32.424313>,  <39.932262, 30.187302, 32.666386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749264, 30.447899, 32.424313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177561, -0.599950, -0.780085,
		-0.871302, -0.464345, 0.158797,
		-0.457499, 0.651493, -0.605187,
		39.612015, 30.643347, 32.242756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558140, 29.808468, 32.247452>,  <39.932262, 30.187302, 32.666386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558140, 29.808468, 32.247452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556908, 30.146202, 32.033131>,  <39.556168, 30.348843, 31.904537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556908, 30.146202, 32.033131>,  <39.558140, 29.808468, 32.247452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556908, 30.146202, 32.033131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001455, -0.535805, -0.844341,
		-0.999994, -0.003383, 0.000423,
		-0.003083, 0.844335, -0.535807,
		39.555984, 30.399502, 31.872389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.958225, 29.785728, 31.600338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232037, 30.068348, 31.528543>,  <39.396324, 30.237919, 31.485466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232037, 30.068348, 31.528543>,  <38.958225, 29.785728, 31.600338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232037, 30.068348, 31.528543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178153, -0.400885, -0.898640,
		-0.706885, 0.583165, -0.400289,
		0.684525, 0.706548, -0.179487,
		39.437393, 30.280312, 31.474697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643394, 30.168797, 31.031128>,  <38.958225, 29.785728, 31.600338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643394, 30.168797, 31.031128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042397, 30.196085, 31.038288>,  <39.281799, 30.212458, 31.042583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042397, 30.196085, 31.038288>,  <38.643394, 30.168797, 31.031128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042397, 30.196085, 31.038288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048970, -0.487250, -0.871888,
		-0.050758, 0.870594, -0.489377,
		0.997510, 0.068220, 0.017901,
		39.341648, 30.216551, 31.043659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819347, 30.197302, 30.330252>,  <38.643394, 30.168797, 31.031128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819347, 30.197302, 30.330252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179924, 30.111042, 30.480396>,  <39.396271, 30.059286, 30.570482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.179924, 30.111042, 30.480396>,  <38.819347, 30.197302, 30.330252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179924, 30.111042, 30.480396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179745, -0.602360, -0.777724,
		0.393819, 0.768543, -0.504231,
		0.901443, -0.215649, 0.375362,
		39.450356, 30.046347, 30.593004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283176, 30.263485, 29.851715>,  <38.819347, 30.197302, 30.330252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283176, 30.263485, 29.851715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495029, 30.031050, 30.098883>,  <39.622143, 29.891588, 30.247183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.495029, 30.031050, 30.098883>,  <39.283176, 30.263485, 29.851715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495029, 30.031050, 30.098883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280003, -0.567874, -0.774027,
		0.800678, 0.582970, -0.138059,
		0.529635, -0.581090, 0.617917,
		39.653919, 29.856722, 30.284258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955776, 30.219059, 29.566584>,  <39.283176, 30.263485, 29.851715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955776, 30.219059, 29.566584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.927406, 29.889858, 29.792021>,  <39.910385, 29.692337, 29.927284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.927406, 29.889858, 29.792021>,  <39.955776, 30.219059, 29.566584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927406, 29.889858, 29.792021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356897, -0.548550, -0.756120,
		0.931447, 0.147519, 0.332632,
		-0.070924, -0.823001, 0.563595,
		39.906128, 29.642958, 29.961100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448761, 29.867041, 29.501017>,  <39.955776, 30.219059, 29.566584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448761, 29.867041, 29.501017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.222256, 29.560534, 29.622463>,  <40.086353, 29.376629, 29.695332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.222256, 29.560534, 29.622463>,  <40.448761, 29.867041, 29.501017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222256, 29.560534, 29.622463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334257, -0.550208, -0.765208,
		0.753408, -0.331820, 0.567690,
		-0.566259, -0.766268, 0.303618,
		40.052380, 29.330652, 29.713549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863918, 29.272564, 29.321177>,  <40.448761, 29.867041, 29.501017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863918, 29.272564, 29.321177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.509323, 29.099997, 29.388124>,  <40.296566, 28.996456, 29.428293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.509323, 29.099997, 29.388124>,  <40.863918, 29.272564, 29.321177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509323, 29.099997, 29.388124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161146, -0.626857, -0.762288,
		0.433780, -0.648791, 0.625224,
		-0.886491, -0.431417, 0.167368,
		40.243374, 28.970572, 29.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021370, 28.633060, 29.296425>,  <40.863918, 29.272564, 29.321177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021370, 28.633060, 29.296425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624607, 28.615501, 29.248777>,  <40.386547, 28.604965, 29.220188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624607, 28.615501, 29.248777>,  <41.021370, 28.633060, 29.296425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624607, 28.615501, 29.248777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113328, -0.729060, -0.675002,
		-0.057214, -0.683041, 0.728136,
		-0.991909, -0.043899, -0.119120,
		40.327034, 28.602331, 29.213041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864941, 27.962959, 29.495714>,  <41.021370, 28.633060, 29.296425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864941, 27.962959, 29.495714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591595, 28.089296, 29.232426>,  <40.427586, 28.165098, 29.074453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591595, 28.089296, 29.232426>,  <40.864941, 27.962959, 29.495714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591595, 28.089296, 29.232426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200128, -0.786006, -0.584931,
		-0.702109, -0.531451, 0.473923,
		-0.683369, 0.315840, -0.658220,
		40.386585, 28.184050, 29.034960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604294, 27.398190, 29.292570>,  <40.864941, 27.962959, 29.495714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604294, 27.398190, 29.292570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483940, 27.663391, 29.018375>,  <40.411728, 27.822514, 28.853859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483940, 27.663391, 29.018375>,  <40.604294, 27.398190, 29.292570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483940, 27.663391, 29.018375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192550, -0.661757, -0.724571,
		-0.934020, -0.350001, 0.071449,
		-0.300882, 0.663006, -0.685487,
		40.393677, 27.862293, 28.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231438, 27.034111, 28.784931>,  <40.604294, 27.398190, 29.292570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231438, 27.034111, 28.784931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332123, 27.375938, 28.603226>,  <40.392536, 27.581034, 28.494202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.332123, 27.375938, 28.603226>,  <40.231438, 27.034111, 28.784931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332123, 27.375938, 28.603226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381913, -0.518994, -0.764714,
		-0.889259, 0.019001, -0.457009,
		0.251715, 0.854566, -0.454264,
		40.407639, 27.632309, 28.466946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030090, 26.959379, 28.162344>,  <40.231438, 27.034111, 28.784931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030090, 26.959379, 28.162344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313946, 27.238708, 28.124908>,  <40.484257, 27.406307, 28.102448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313946, 27.238708, 28.124908>,  <40.030090, 26.959379, 28.162344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313946, 27.238708, 28.124908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271953, -0.394018, -0.877947,
		-0.649968, 0.597572, -0.469521,
		0.709636, 0.698325, -0.093588,
		40.526836, 27.448206, 28.096832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239239, 27.058395, 27.432421>,  <40.030090, 26.959379, 28.162344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239239, 27.058395, 27.432421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.566120, 27.188740, 27.622576>,  <40.762249, 27.266947, 27.736668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.566120, 27.188740, 27.622576>,  <40.239239, 27.058395, 27.432421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566120, 27.188740, 27.622576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549088, -0.189518, -0.813993,
		-0.175155, 0.926227, -0.333801,
		0.817204, 0.325861, 0.475386,
		40.811283, 27.286499, 27.765192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643456, 27.202951, 26.873602>,  <40.239239, 27.058395, 27.432421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643456, 27.202951, 26.873602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.918144, 27.219931, 27.163874>,  <41.082958, 27.230118, 27.338037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.918144, 27.219931, 27.163874>,  <40.643456, 27.202951, 26.873602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918144, 27.219931, 27.163874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695876, -0.327024, -0.639385,
		0.210174, 0.944062, -0.254113,
		0.686720, 0.042449, 0.725682,
		41.124161, 27.232666, 27.381578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201836, 27.493616, 26.511196>,  <40.643456, 27.202951, 26.873602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201836, 27.493616, 26.511196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.350967, 27.324512, 26.841595>,  <41.440449, 27.223049, 27.039833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.350967, 27.324512, 26.841595>,  <41.201836, 27.493616, 26.511196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350967, 27.324512, 26.841595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769649, -0.356334, -0.529779,
		0.518300, 0.833246, 0.192524,
		0.372834, -0.422761, 0.825995,
		41.462818, 27.197683, 27.089394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960224, 27.650789, 26.568176>,  <41.201836, 27.493616, 26.511196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960224, 27.650789, 26.568176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.901333, 27.315794, 26.778677>,  <41.865997, 27.114798, 26.904978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.901333, 27.315794, 26.778677>,  <41.960224, 27.650789, 26.568176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901333, 27.315794, 26.778677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789091, -0.420246, -0.448029,
		0.596373, 0.349301, 0.722723,
		-0.147224, -0.837486, 0.526253,
		41.857166, 27.064548, 26.936552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585030, 27.513094, 26.765160>,  <41.960224, 27.650789, 26.568176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585030, 27.513094, 26.765160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.387760, 27.166689, 26.798155>,  <42.269398, 26.958845, 26.817953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.387760, 27.166689, 26.798155>,  <42.585030, 27.513094, 26.765160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387760, 27.166689, 26.798155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795347, -0.487272, -0.360541,
		0.352427, -0.112201, 0.929089,
		-0.493172, -0.866012, 0.082489,
		42.239807, 26.906885, 26.822901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130440, 27.081493, 26.956850>,  <42.585030, 27.513094, 26.765160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130440, 27.081493, 26.956850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.847893, 26.843975, 26.802732>,  <42.678364, 26.701464, 26.710262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.847893, 26.843975, 26.802732>,  <43.130440, 27.081493, 26.956850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847893, 26.843975, 26.802732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677744, -0.410320, -0.610165,
		0.204219, -0.692131, 0.692278,
		-0.706370, -0.593795, -0.385292,
		42.635983, 26.665836, 26.687145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417805, 26.338737, 27.009748>,  <43.130440, 27.081493, 26.956850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417805, 26.338737, 27.009748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114983, 26.286890, 26.753605>,  <42.933289, 26.255781, 26.599918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114983, 26.286890, 26.753605>,  <43.417805, 26.338737, 27.009748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114983, 26.286890, 26.753605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611981, -0.483891, -0.625563,
		-0.228779, -0.865476, 0.445658,
		-0.757059, -0.129619, -0.640359,
		42.887863, 26.248005, 26.561497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403164, 25.588568, 26.776764>,  <43.417805, 26.338737, 27.009748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403164, 25.588568, 26.776764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.210171, 25.807262, 26.503036>,  <43.094376, 25.938480, 26.338800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.210171, 25.807262, 26.503036>,  <43.403164, 25.588568, 26.776764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210171, 25.807262, 26.503036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509135, -0.460672, -0.727023,
		-0.712737, -0.699184, -0.056099,
		-0.482479, 0.546739, -0.684317,
		43.065426, 25.971285, 26.297741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319485, 25.153873, 26.323631>,  <43.403164, 25.588568, 26.776764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319485, 25.153873, 26.323631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.284847, 25.498165, 26.122972>,  <43.264065, 25.704741, 26.002577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.284847, 25.498165, 26.122972>,  <43.319485, 25.153873, 26.323631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284847, 25.498165, 26.122972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525815, -0.388204, -0.756846,
		-0.846180, -0.329310, -0.418968,
		-0.086592, 0.860728, -0.501646,
		43.258869, 25.756384, 25.972479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966621, 24.991787, 25.666887>,  <43.319485, 25.153873, 26.323631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966621, 24.991787, 25.666887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.198269, 25.316465, 25.636486>,  <43.337257, 25.511272, 25.618246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.198269, 25.316465, 25.636486>,  <42.966621, 24.991787, 25.666887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198269, 25.316465, 25.636486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601116, -0.488123, -0.632768,
		-0.550712, 0.320761, -0.770603,
		0.579116, 0.811695, -0.076001,
		43.372005, 25.559975, 25.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201206, 24.567642, 25.506731>,  <42.966621, 24.991787, 25.666887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201206, 24.567642, 25.506731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.196457, 24.379175, 25.153946>,  <42.193607, 24.266096, 24.942274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.196457, 24.379175, 25.153946>,  <42.201206, 24.567642, 25.506731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196457, 24.379175, 25.153946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853129, 0.464841, -0.236840,
		0.521564, 0.749617, -0.407485,
		-0.011876, -0.471165, -0.881965,
		42.192894, 24.237825, 24.889357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315598, 25.106533, 24.919806>,  <42.201206, 24.567642, 25.506731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315598, 25.106533, 24.919806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.118450, 24.786741, 24.782452>,  <42.000160, 24.594866, 24.700039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.118450, 24.786741, 24.782452>,  <42.315598, 25.106533, 24.919806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118450, 24.786741, 24.782452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825606, 0.554294, -0.105514,
		0.274692, 0.231497, -0.933249,
		-0.492868, -0.799479, -0.343386,
		41.970589, 24.546898, 24.679436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829033, 25.450338, 24.564415>,  <42.315598, 25.106533, 24.919806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829033, 25.450338, 24.564415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.680763, 25.080105, 24.595131>,  <41.591801, 24.857965, 24.613562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.680763, 25.080105, 24.595131>,  <41.829033, 25.450338, 24.564415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680763, 25.080105, 24.595131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927226, 0.364033, -0.087931,
		0.053433, -0.103797, -0.993162,
		-0.370671, -0.925584, 0.076792,
		41.569561, 24.802429, 24.618168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193134, 25.498302, 24.097364>,  <41.829033, 25.450338, 24.564415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193134, 25.498302, 24.097364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148048, 25.185450, 24.342497>,  <41.120998, 24.997738, 24.489576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148048, 25.185450, 24.342497>,  <41.193134, 25.498302, 24.097364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148048, 25.185450, 24.342497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964869, 0.233464, 0.120504,
		-0.237325, -0.577720, -0.780972,
		-0.112711, -0.782134, 0.612831,
		41.114235, 24.950809, 24.526346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486526, 25.183601, 23.975712>,  <41.193134, 25.498302, 24.097364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486526, 25.183601, 23.975712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.583515, 25.079590, 24.349577>,  <40.641708, 25.017183, 24.573896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.583515, 25.079590, 24.349577>,  <40.486526, 25.183601, 23.975712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583515, 25.079590, 24.349577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925505, 0.226920, 0.303230,
		-0.290941, -0.938559, -0.185634,
		0.242476, -0.260027, 0.934661,
		40.656258, 25.001581, 24.629976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854561, 24.924631, 24.082609>,  <40.486526, 25.183601, 23.975712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854561, 24.924631, 24.082609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.046776, 25.028675, 24.417614>,  <40.162106, 25.091103, 24.618616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.046776, 25.028675, 24.417614>,  <39.854561, 24.924631, 24.082609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046776, 25.028675, 24.417614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876420, 0.176395, 0.448077,
		-0.031184, -0.949330, 0.312731,
		0.480537, 0.260111, 0.837512,
		40.190937, 25.106709, 24.668867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380970, 24.731312, 24.711897>,  <39.854561, 24.924631, 24.082609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380970, 24.731312, 24.711897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652901, 24.973530, 24.877375>,  <39.816059, 25.118860, 24.976662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652901, 24.973530, 24.877375>,  <39.380970, 24.731312, 24.711897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652901, 24.973530, 24.877375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697144, 0.358509, 0.620856,
		0.227644, -0.710481, 0.665879,
		0.679830, 0.605547, 0.413695,
		39.856850, 25.155193, 25.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128853, 24.786478, 25.404486>,  <39.380970, 24.731312, 24.711897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128853, 24.786478, 25.404486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398796, 25.080652, 25.380161>,  <39.560764, 25.257156, 25.365566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398796, 25.080652, 25.380161>,  <39.128853, 24.786478, 25.404486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398796, 25.080652, 25.380161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477603, 0.498113, 0.723725,
		0.562544, -0.459370, 0.687404,
		0.674862, 0.735433, -0.060814,
		39.601254, 25.301283, 25.361917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288448, 24.963457, 26.063728>,  <39.128853, 24.786478, 25.404486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288448, 24.963457, 26.063728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363403, 25.292845, 25.849518>,  <39.408375, 25.490477, 25.720991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363403, 25.292845, 25.849518>,  <39.288448, 24.963457, 26.063728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363403, 25.292845, 25.849518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361638, 0.564723, 0.741826,
		0.913293, 0.054660, 0.403618,
		0.187385, 0.823468, -0.535525,
		39.419621, 25.539885, 25.688860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541302, 25.403793, 26.554455>,  <39.288448, 24.963457, 26.063728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541302, 25.403793, 26.554455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.403076, 25.602663, 26.236107>,  <39.320141, 25.721985, 26.045099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.403076, 25.602663, 26.236107>,  <39.541302, 25.403793, 26.554455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403076, 25.602663, 26.236107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343867, 0.722033, 0.600353,
		0.873123, 0.481130, -0.078544,
		-0.345560, 0.497174, -0.795868,
		39.299408, 25.751816, 25.997347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664799, 26.020758, 26.772627>,  <39.541302, 25.403793, 26.554455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664799, 26.020758, 26.772627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.427727, 26.089806, 26.457939>,  <39.285484, 26.131235, 26.269127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.427727, 26.089806, 26.457939>,  <39.664799, 26.020758, 26.772627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427727, 26.089806, 26.457939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460791, 0.728455, 0.506977,
		0.660606, 0.662990, -0.352200,
		-0.592682, 0.172622, -0.786721,
		39.249924, 26.141592, 26.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755989, 26.706440, 26.663530>,  <39.664799, 26.020758, 26.772627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755989, 26.706440, 26.663530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397991, 26.596405, 26.523071>,  <39.183193, 26.530384, 26.438795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397991, 26.596405, 26.523071>,  <39.755989, 26.706440, 26.663530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397991, 26.596405, 26.523071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425749, 0.761685, 0.488440,
		0.133100, 0.586654, -0.798825,
		-0.894998, -0.275088, -0.351147,
		39.129490, 26.513878, 26.417727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449127, 27.324389, 26.580650>,  <39.755989, 26.706440, 26.663530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449127, 27.324389, 26.580650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133003, 27.079477, 26.571430>,  <38.943329, 26.932531, 26.565899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133003, 27.079477, 26.571430>,  <39.449127, 27.324389, 26.580650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133003, 27.079477, 26.571430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485192, 0.602413, 0.633788,
		-0.374169, 0.512070, -0.773163,
		-0.790307, -0.612277, -0.023048,
		38.895912, 26.895794, 26.564516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914173, 27.761860, 26.446543>,  <39.449127, 27.324389, 26.580650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914173, 27.761860, 26.446543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780018, 27.436277, 26.636278>,  <38.699524, 27.240929, 26.750118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780018, 27.436277, 26.636278>,  <38.914173, 27.761860, 26.446543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780018, 27.436277, 26.636278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296296, 0.569084, 0.767041,
		-0.894274, 0.116709, -0.432033,
		-0.335384, -0.813955, 0.474336,
		38.679401, 27.192091, 26.778580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167114, 27.813917, 26.555660>,  <38.914173, 27.761860, 26.446543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167114, 27.813917, 26.555660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329208, 27.564037, 26.822653>,  <38.426464, 27.414108, 26.982849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329208, 27.564037, 26.822653>,  <38.167114, 27.813917, 26.555660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329208, 27.564037, 26.822653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397024, 0.537417, 0.744013,
		-0.823501, -0.566508, -0.030239,
		0.405238, -0.624701, 0.667481,
		38.450779, 27.376627, 27.022898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816120, 27.965405, 27.032434>,  <38.167114, 27.813917, 26.555660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816120, 27.965405, 27.032434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055210, 27.710302, 27.226749>,  <38.198666, 27.557241, 27.343338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055210, 27.710302, 27.226749>,  <37.816120, 27.965405, 27.032434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055210, 27.710302, 27.226749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343042, 0.344210, 0.873980,
		-0.724600, -0.689046, -0.013034,
		0.597726, -0.637758, 0.485787,
		38.234528, 27.518974, 27.372486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395458, 27.625679, 27.438057>,  <37.816120, 27.965405, 27.032434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395458, 27.625679, 27.438057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742756, 27.546799, 27.620161>,  <37.951134, 27.499472, 27.729424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742756, 27.546799, 27.620161>,  <37.395458, 27.625679, 27.438057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742756, 27.546799, 27.620161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418691, 0.201051, 0.885593,
		-0.266170, -0.959526, 0.091996,
		0.868246, -0.197200, 0.455259,
		38.003231, 27.487638, 27.756739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201469, 27.402142, 28.109571>,  <37.395458, 27.625679, 27.438057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201469, 27.402142, 28.109571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592743, 27.469685, 28.157972>,  <37.827507, 27.510210, 28.187012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592743, 27.469685, 28.157972>,  <37.201469, 27.402142, 28.109571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592743, 27.469685, 28.157972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165432, 0.280900, 0.945372,
		0.125643, -0.944766, 0.302707,
		0.978185, 0.168856, 0.121001,
		37.886200, 27.520342, 28.194273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377182, 27.110308, 28.706308>,  <37.201469, 27.402142, 28.109571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377182, 27.110308, 28.706308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656643, 27.389561, 28.643694>,  <37.824318, 27.557112, 28.606125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656643, 27.389561, 28.643694>,  <37.377182, 27.110308, 28.706308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656643, 27.389561, 28.643694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157510, 0.363501, 0.918182,
		0.697912, -0.616830, 0.363922,
		0.698649, 0.698131, -0.156535,
		37.866238, 27.598999, 28.596733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858261, 27.041042, 29.228523>,  <37.377182, 27.110308, 28.706308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858261, 27.041042, 29.228523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830505, 27.418814, 29.099997>,  <37.813850, 27.645475, 29.022881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830505, 27.418814, 29.099997>,  <37.858261, 27.041042, 29.228523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830505, 27.418814, 29.099997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257251, 0.294260, 0.920453,
		0.963850, 0.146528, 0.222536,
		-0.069389, 0.944426, -0.321317,
		37.809689, 27.702141, 29.003601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052944, 27.343252, 29.871941>,  <37.858261, 27.041042, 29.228523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052944, 27.343252, 29.871941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908070, 27.620361, 29.622499>,  <37.821144, 27.786627, 29.472834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908070, 27.620361, 29.622499>,  <38.052944, 27.343252, 29.871941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908070, 27.620361, 29.622499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304155, 0.544567, 0.781624,
		0.881084, 0.472768, 0.013474,
		-0.362189, 0.692775, -0.623604,
		37.799412, 27.828194, 29.435419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355331, 27.892027, 30.083082>,  <38.052944, 27.343252, 29.871941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355331, 27.892027, 30.083082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020416, 28.035809, 29.918282>,  <37.819469, 28.122078, 29.819401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020416, 28.035809, 29.918282>,  <38.355331, 27.892027, 30.083082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020416, 28.035809, 29.918282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248546, 0.420947, 0.872370,
		0.487009, 0.832824, -0.263111,
		-0.837286, 0.359456, -0.412000,
		37.769230, 28.143646, 29.794682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.205162, 30.889446, 34.334534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036201, 31.174454, 34.110428>,  <38.934826, 31.345457, 33.975964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036201, 31.174454, 34.110428>,  <39.205162, 30.889446, 34.334534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036201, 31.174454, 34.110428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228979, 0.514185, 0.826549,
		0.877009, 0.477425, -0.054041,
		-0.422402, 0.712516, -0.560265,
		38.909481, 31.388208, 33.942348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361122, 31.492237, 34.643215>,  <39.205162, 30.889446, 34.334534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361122, 31.492237, 34.643215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.062618, 31.633139, 34.417290>,  <38.883514, 31.717680, 34.281734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.062618, 31.633139, 34.417290>,  <39.361122, 31.492237, 34.643215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062618, 31.633139, 34.417290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376410, 0.476511, 0.794514,
		0.549009, 0.805515, -0.223011,
		-0.746260, 0.352252, -0.564813,
		38.838741, 31.738813, 34.247845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327797, 32.221992, 34.832325>,  <39.361122, 31.492237, 34.643215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327797, 32.221992, 34.832325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974648, 32.146282, 34.660416>,  <38.762756, 32.100857, 34.557270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974648, 32.146282, 34.660416>,  <39.327797, 32.221992, 34.832325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974648, 32.146282, 34.660416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418366, 0.732715, 0.536749,
		0.213313, 0.653686, -0.726080,
		-0.882875, -0.189271, -0.429777,
		38.709785, 32.089500, 34.531483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089909, 32.790825, 34.539902>,  <39.327797, 32.221992, 34.832325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089909, 32.790825, 34.539902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748905, 32.589592, 34.596676>,  <38.544304, 32.468853, 34.630741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748905, 32.589592, 34.596676>,  <39.089909, 32.790825, 34.539902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748905, 32.589592, 34.596676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423542, 0.823943, 0.376470,
		-0.306343, 0.260827, -0.915491,
		-0.852506, -0.503078, 0.141938,
		38.493153, 32.438667, 34.639256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587543, 33.251282, 34.342300>,  <39.089909, 32.790825, 34.539902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587543, 33.251282, 34.342300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399651, 32.979790, 34.568108>,  <38.286915, 32.816895, 34.703590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399651, 32.979790, 34.568108>,  <38.587543, 33.251282, 34.342300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399651, 32.979790, 34.568108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602027, 0.713981, 0.357485,
		-0.645689, -0.171932, -0.743992,
		-0.469733, -0.678727, 0.564517,
		38.258732, 32.776173, 34.737461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738216, 33.332348, 34.194347>,  <38.587543, 33.251282, 34.342300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738216, 33.332348, 34.194347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.791405, 33.124329, 34.531837>,  <37.823318, 32.999516, 34.734329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.791405, 33.124329, 34.531837>,  <37.738216, 33.332348, 34.194347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791405, 33.124329, 34.531837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567091, 0.658245, 0.495098,
		-0.812851, -0.544301, -0.207388,
		0.132970, -0.520048, 0.843723,
		37.831295, 32.968315, 34.784954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074856, 33.410442, 34.392029>,  <37.738216, 33.332348, 34.194347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074856, 33.410442, 34.392029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287907, 33.309837, 34.715275>,  <37.415737, 33.249474, 34.909222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287907, 33.309837, 34.715275>,  <37.074856, 33.410442, 34.392029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287907, 33.309837, 34.715275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614519, 0.541618, 0.573600,
		-0.581958, -0.802116, 0.133921,
		0.532628, -0.251514, 0.808114,
		37.447697, 33.234383, 34.957710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524853, 33.290565, 34.822308>,  <37.074856, 33.410442, 34.392029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524853, 33.290565, 34.822308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846024, 33.355865, 35.051624>,  <37.038727, 33.395046, 35.189213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846024, 33.355865, 35.051624>,  <36.524853, 33.290565, 34.822308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846024, 33.355865, 35.051624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543548, 0.595295, 0.591760,
		-0.244672, -0.786749, 0.566711,
		0.802927, 0.163248, 0.573288,
		37.086903, 33.404839, 35.223610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331051, 33.208332, 35.567097>,  <36.524853, 33.290565, 34.822308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331051, 33.208332, 35.567097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.683090, 33.398190, 35.571915>,  <36.894314, 33.512104, 35.574806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.683090, 33.398190, 35.571915>,  <36.331051, 33.208332, 35.567097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683090, 33.398190, 35.571915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331019, 0.595211, 0.732223,
		0.340374, -0.648414, 0.680959,
		0.880098, 0.474640, 0.012043,
		36.947121, 33.540581, 35.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581909, 33.147594, 36.204819>,  <36.331051, 33.208332, 35.567097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581909, 33.147594, 36.204819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749241, 33.481060, 36.060596>,  <36.849640, 33.681141, 35.974064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749241, 33.481060, 36.060596>,  <36.581909, 33.147594, 36.204819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749241, 33.481060, 36.060596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326181, 0.508362, 0.796978,
		0.847709, -0.215788, 0.484588,
		0.418325, 0.833668, -0.360557,
		36.874737, 33.731159, 35.952431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755711, 33.446396, 36.771576>,  <36.581909, 33.147594, 36.204819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755711, 33.446396, 36.771576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834743, 33.756130, 36.531124>,  <36.882164, 33.941971, 36.386852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834743, 33.756130, 36.531124>,  <36.755711, 33.446396, 36.771576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834743, 33.756130, 36.531124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267516, 0.632539, 0.726862,
		0.943077, 0.017195, 0.332129,
		0.197586, 0.774338, -0.601134,
		36.894020, 33.988430, 36.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194176, 33.901196, 37.093834>,  <36.755711, 33.446396, 36.771576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194176, 33.901196, 37.093834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.978706, 34.113037, 36.831734>,  <36.849422, 34.240143, 36.674473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.978706, 34.113037, 36.831734>,  <37.194176, 33.901196, 37.093834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978706, 34.113037, 36.831734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210198, 0.668659, 0.713240,
		0.815871, 0.521937, -0.248869,
		-0.538675, 0.529601, -0.655250,
		36.817104, 34.271915, 36.635159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495537, 34.492832, 36.949574>,  <37.194176, 33.901196, 37.093834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495537, 34.492832, 36.949574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.096138, 34.484814, 36.929173>,  <36.856499, 34.480003, 36.916931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.096138, 34.484814, 36.929173>,  <37.495537, 34.492832, 36.949574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096138, 34.484814, 36.929173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051701, 0.653300, 0.755332,
		0.018177, 0.756834, -0.653354,
		-0.998497, -0.020049, -0.051004,
		36.796589, 34.478798, 36.913872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241276, 35.167976, 36.831944>,  <37.495537, 34.492832, 36.949574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241276, 35.167976, 36.831944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987801, 34.939629, 37.040768>,  <36.835716, 34.802620, 37.166061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.987801, 34.939629, 37.040768>,  <37.241276, 35.167976, 36.831944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987801, 34.939629, 37.040768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019361, 0.686350, 0.727014,
		-0.773344, 0.450594, -0.445986,
		-0.633691, -0.570867, 0.522061,
		36.797695, 34.768368, 37.197388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813400, 35.744110, 36.596302>,  <37.241276, 35.167976, 36.831944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813400, 35.744110, 36.596302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711166, 36.064846, 36.380253>,  <37.649826, 36.257286, 36.250626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711166, 36.064846, 36.380253>,  <37.813400, 35.744110, 36.596302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711166, 36.064846, 36.380253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142239, -0.521409, -0.841368,
		-0.956266, -0.291866, 0.019211,
		-0.255584, 0.801839, -0.540121,
		37.634491, 36.305397, 36.218216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375095, 35.520176, 36.020576>,  <37.813400, 35.744110, 36.596302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375095, 35.520176, 36.020576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535995, 35.865280, 35.898041>,  <37.632538, 36.072342, 35.824520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.535995, 35.865280, 35.898041>,  <37.375095, 35.520176, 36.020576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535995, 35.865280, 35.898041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031666, -0.347515, -0.937139,
		-0.914981, 0.367266, -0.167108,
		0.402252, 0.862757, -0.306340,
		37.656670, 36.124107, 35.806137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999146, 35.710575, 35.481251>,  <37.375095, 35.520176, 36.020576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999146, 35.710575, 35.481251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363930, 35.873638, 35.462727>,  <37.582798, 35.971478, 35.451611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363930, 35.873638, 35.462727>,  <36.999146, 35.710575, 35.481251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363930, 35.873638, 35.462727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079354, -0.285999, -0.954939,
		-0.402535, 0.867190, -0.293168,
		0.911959, 0.407660, -0.046310,
		37.637516, 35.995937, 35.448833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012989, 36.094887, 34.858860>,  <36.999146, 35.710575, 35.481251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012989, 36.094887, 34.858860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401279, 36.054337, 34.945957>,  <37.634254, 36.030006, 34.998215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401279, 36.054337, 34.945957>,  <37.012989, 36.094887, 34.858860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401279, 36.054337, 34.945957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196507, -0.186064, -0.962686,
		0.138110, 0.977294, -0.160695,
		0.970727, -0.101379, 0.217742,
		37.692497, 36.023922, 35.011280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451035, 36.428787, 34.253178>,  <37.012989, 36.094887, 34.858860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451035, 36.428787, 34.253178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690884, 36.176609, 34.450356>,  <37.834793, 36.025303, 34.568661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690884, 36.176609, 34.450356>,  <37.451035, 36.428787, 34.253178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690884, 36.176609, 34.450356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278963, -0.412671, -0.867111,
		0.750089, 0.657452, -0.071576,
		0.599622, -0.630443, 0.492945,
		37.870770, 35.987476, 34.598240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093624, 36.489861, 33.957520>,  <37.451035, 36.428787, 34.253178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093624, 36.489861, 33.957520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151592, 36.138107, 34.138927>,  <38.186375, 35.927055, 34.247772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151592, 36.138107, 34.138927>,  <38.093624, 36.489861, 33.957520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151592, 36.138107, 34.138927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438036, -0.353974, -0.826334,
		0.887199, 0.318411, 0.333904,
		0.144921, -0.879384, 0.453521,
		38.195068, 35.874290, 34.274982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870590, 36.237808, 33.913570>,  <38.093624, 36.489861, 33.957520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870590, 36.237808, 33.913570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.649891, 35.917789, 34.007801>,  <38.517471, 35.725777, 34.064339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.649891, 35.917789, 34.007801>,  <38.870590, 36.237808, 33.913570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649891, 35.917789, 34.007801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456014, -0.525894, -0.717974,
		0.698304, -0.288713, 0.654994,
		-0.551745, -0.800050, 0.235577,
		38.484367, 35.677773, 34.078476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334644, 35.740116, 33.929283>,  <38.870590, 36.237808, 33.913570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334644, 35.740116, 33.929283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984989, 35.552040, 33.880627>,  <38.775196, 35.439194, 33.851433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984989, 35.552040, 33.880627>,  <39.334644, 35.740116, 33.929283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984989, 35.552040, 33.880627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410621, -0.581760, -0.702101,
		0.259356, -0.663684, 0.701611,
		-0.874142, -0.470191, -0.121639,
		38.722748, 35.410984, 33.844135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566677, 35.105377, 33.709415>,  <39.334644, 35.740116, 33.929283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566677, 35.105377, 33.709415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.187256, 35.101479, 33.582825>,  <38.959602, 35.099140, 33.506870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.187256, 35.101479, 33.582825>,  <39.566677, 35.105377, 33.709415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187256, 35.101479, 33.582825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242248, -0.665956, -0.705563,
		-0.203882, -0.745927, 0.634054,
		-0.948551, -0.009747, -0.316476,
		38.902691, 35.098553, 33.487881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431416, 34.442089, 33.711082>,  <39.566677, 35.105377, 33.709415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431416, 34.442089, 33.711082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197235, 34.633831, 33.449558>,  <39.056725, 34.748875, 33.292645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197235, 34.633831, 33.449558>,  <39.431416, 34.442089, 33.711082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197235, 34.633831, 33.449558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143716, -0.732330, -0.665611,
		-0.797867, -0.483646, 0.359854,
		-0.585452, 0.479352, -0.653810,
		39.021599, 34.777637, 33.253414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152073, 33.913357, 33.370735>,  <39.431416, 34.442089, 33.711082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152073, 33.913357, 33.370735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.069138, 34.220795, 33.128651>,  <39.019375, 34.405258, 32.983402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.069138, 34.220795, 33.128651>,  <39.152073, 33.913357, 33.370735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069138, 34.220795, 33.128651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071136, -0.605170, -0.792911,
		-0.975679, -0.207455, 0.070803,
		-0.207341, 0.768590, -0.605210,
		39.006935, 34.451370, 32.947086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787674, 33.622765, 32.841217>,  <39.152073, 33.913357, 33.370735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787674, 33.622765, 32.841217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916355, 33.955280, 32.659904>,  <38.993565, 34.154789, 32.551117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.916355, 33.955280, 32.659904>,  <38.787674, 33.622765, 32.841217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916355, 33.955280, 32.659904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541347, -0.554249, -0.632259,
		-0.776822, -0.041985, -0.628319,
		0.321699, 0.831291, -0.453281,
		39.012863, 34.204666, 32.523918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756176, 33.511063, 32.184986>,  <38.787674, 33.622765, 32.841217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756176, 33.511063, 32.184986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991138, 33.834675, 32.176697>,  <39.132114, 34.028843, 32.171722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991138, 33.834675, 32.176697>,  <38.756176, 33.511063, 32.184986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991138, 33.834675, 32.176697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505136, -0.386523, -0.771646,
		-0.632291, 0.442803, -0.635715,
		0.587405, 0.809028, -0.020719,
		39.167358, 34.077385, 32.170483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683014, 33.817081, 31.481148>,  <38.756176, 33.511063, 32.184986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683014, 33.817081, 31.481148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.038177, 33.884514, 31.652355>,  <39.251274, 33.924973, 31.755079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.038177, 33.884514, 31.652355>,  <38.683014, 33.817081, 31.481148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038177, 33.884514, 31.652355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452317, -0.489502, -0.745518,
		0.083834, 0.855551, -0.510885,
		0.887908, 0.168582, 0.428017,
		39.304550, 33.935089, 31.780760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691982, 34.337212, 30.880060>,  <38.683014, 33.817081, 31.481148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691982, 34.337212, 30.880060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439613, 34.413681, 30.579290>,  <38.288193, 34.459560, 30.398829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.439613, 34.413681, 30.579290>,  <38.691982, 34.337212, 30.880060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439613, 34.413681, 30.579290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516135, 0.620175, 0.590751,
		0.579259, 0.760813, -0.292613,
		-0.630923, 0.191170, -0.751925,
		38.250336, 34.471031, 30.353712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615803, 35.086761, 30.803011>,  <38.691982, 34.337212, 30.880060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615803, 35.086761, 30.803011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282333, 34.933342, 30.644073>,  <38.082253, 34.841290, 30.548712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282333, 34.933342, 30.644073>,  <38.615803, 35.086761, 30.803011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282333, 34.933342, 30.644073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547372, 0.669380, 0.502308,
		0.073314, 0.636255, -0.767987,
		-0.833672, -0.383549, -0.397343,
		38.032230, 34.818279, 30.524870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213360, 35.637295, 30.723848>,  <38.615803, 35.086761, 30.803011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213360, 35.637295, 30.723848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957981, 35.330009, 30.742758>,  <37.804752, 35.145638, 30.754103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957981, 35.330009, 30.742758>,  <38.213360, 35.637295, 30.723848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957981, 35.330009, 30.742758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557259, 0.503750, 0.660075,
		-0.530890, 0.395081, -0.749711,
		-0.638450, -0.768210, 0.047273,
		37.766445, 35.099545, 30.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510368, 35.889908, 30.652958>,  <38.213360, 35.637295, 30.723848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510368, 35.889908, 30.652958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461918, 35.522491, 30.803484>,  <37.432846, 35.302040, 30.893799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461918, 35.522491, 30.803484>,  <37.510368, 35.889908, 30.652958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461918, 35.522491, 30.803484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761339, 0.329225, 0.558546,
		-0.636939, -0.218849, -0.739198,
		-0.121125, -0.918540, 0.376314,
		37.425579, 35.246929, 30.916378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808270, 35.714222, 30.554106>,  <37.510368, 35.889908, 30.652958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808270, 35.714222, 30.554106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931068, 35.479263, 30.853630>,  <37.004749, 35.338287, 31.033344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931068, 35.479263, 30.853630>,  <36.808270, 35.714222, 30.554106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931068, 35.479263, 30.853630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851897, 0.181163, 0.491378,
		-0.424291, -0.788761, -0.444785,
		0.307001, -0.587398, 0.748809,
		37.023170, 35.303043, 31.078272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281574, 35.398800, 30.653446>,  <36.808270, 35.714222, 30.554106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281574, 35.398800, 30.653446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.466866, 35.342327, 31.003414>,  <36.578041, 35.308445, 31.213394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.466866, 35.342327, 31.003414>,  <36.281574, 35.398800, 30.653446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466866, 35.342327, 31.003414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854164, 0.192061, 0.483235,
		-0.236262, -0.971175, -0.031623,
		0.463232, -0.141182, 0.874920,
		36.605835, 35.299973, 31.265890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830616, 34.997322, 30.948153>,  <36.281574, 35.398800, 30.653446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830616, 34.997322, 30.948153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.060032, 35.140057, 31.243103>,  <36.197681, 35.225697, 31.420074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.060032, 35.140057, 31.243103>,  <35.830616, 34.997322, 30.948153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060032, 35.140057, 31.243103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800572, 0.053386, 0.596853,
		0.173613, -0.932640, 0.316292,
		0.573535, 0.356836, 0.737377,
		36.232094, 35.247108, 31.464317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609497, 34.697613, 31.631269>,  <35.830616, 34.997322, 30.948153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609497, 34.697613, 31.631269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.783642, 35.044300, 31.728645>,  <35.888130, 35.252312, 31.787071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.783642, 35.044300, 31.728645>,  <35.609497, 34.697613, 31.631269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783642, 35.044300, 31.728645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673937, 0.134490, 0.726444,
		0.596880, -0.480331, 0.642663,
		0.435366, 0.866715, 0.243439,
		35.914253, 35.304314, 31.801678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515083, 34.606819, 32.250294>,  <35.609497, 34.697613, 31.631269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515083, 34.606819, 32.250294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.586674, 34.998898, 32.216393>,  <35.629627, 35.234146, 32.196053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.586674, 34.998898, 32.216393>,  <35.515083, 34.606819, 32.250294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586674, 34.998898, 32.216393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740336, 0.190908, 0.644560,
		0.647975, -0.052614, 0.759842,
		0.178973, 0.980197, -0.084752,
		35.640366, 35.292957, 32.190968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769104, 34.925533, 32.926369>,  <35.515083, 34.606819, 32.250294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769104, 34.925533, 32.926369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.595646, 35.210587, 32.705788>,  <35.491570, 35.381618, 32.573437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.595646, 35.210587, 32.705788>,  <35.769104, 34.925533, 32.926369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595646, 35.210587, 32.705788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676621, 0.146647, 0.721581,
		0.595091, 0.686040, 0.418589,
		-0.433648, 0.712632, -0.551457,
		35.465553, 35.424377, 32.540352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611050, 35.300468, 33.453873>,  <35.769104, 34.925533, 32.926369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611050, 35.300468, 33.453873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.395317, 35.455631, 33.154903>,  <35.265877, 35.548729, 32.975521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.395317, 35.455631, 33.154903>,  <35.611050, 35.300468, 33.453873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395317, 35.455631, 33.154903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716604, 0.254739, 0.649297,
		0.442268, 0.885795, 0.140590,
		-0.539331, 0.387911, -0.747427,
		35.233517, 35.572006, 32.930676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360668, 36.013626, 33.718189>,  <35.611050, 35.300468, 33.453873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360668, 36.013626, 33.718189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.130226, 35.862907, 33.428051>,  <34.991959, 35.772476, 33.253967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.130226, 35.862907, 33.428051>,  <35.360668, 36.013626, 33.718189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130226, 35.862907, 33.428051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815578, 0.206187, 0.540666,
		-0.054164, 0.903057, -0.426092,
		-0.576107, -0.376796, -0.725345,
		34.957394, 35.749870, 33.210449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.236866, 33.183842, 27.343266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937008, 32.929218, 27.415739>,  <39.757095, 32.776443, 27.459223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937008, 32.929218, 27.415739>,  <40.236866, 33.183842, 27.343266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937008, 32.929218, 27.415739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472596, 0.706490, 0.526806,
		-0.463348, 0.309289, -0.830451,
		-0.749641, -0.636562, 0.181182,
		39.712116, 32.738251, 27.470093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679138, 33.535084, 27.185043>,  <40.236866, 33.183842, 27.343266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679138, 33.535084, 27.185043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548069, 33.259281, 27.443409>,  <39.469429, 33.093800, 27.598429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548069, 33.259281, 27.443409>,  <39.679138, 33.535084, 27.185043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548069, 33.259281, 27.443409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572876, 0.688645, 0.444501,
		-0.751294, -0.224378, -0.620654,
		-0.327674, -0.689508, 0.645916,
		39.449768, 33.052429, 27.637184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122459, 33.937347, 27.397280>,  <39.679138, 33.535084, 27.185043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122459, 33.937347, 27.397280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123936, 33.605534, 27.620655>,  <39.124821, 33.406445, 27.754681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123936, 33.605534, 27.620655>,  <39.122459, 33.937347, 27.397280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123936, 33.605534, 27.620655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488519, 0.485770, 0.724828,
		-0.872545, -0.275485, -0.403451,
		0.003695, -0.829539, 0.558437,
		39.125046, 33.356670, 27.788185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436806, 33.823967, 27.433332>,  <39.122459, 33.937347, 27.397280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436806, 33.823967, 27.433332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655197, 33.666893, 27.729361>,  <38.786232, 33.572647, 27.906979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655197, 33.666893, 27.729361>,  <38.436806, 33.823967, 27.433332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655197, 33.666893, 27.729361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557443, 0.489166, 0.670801,
		-0.625434, -0.778789, 0.048171,
		0.545976, -0.392689, 0.740071,
		38.818989, 33.549088, 27.951382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083027, 33.397438, 27.888733>,  <38.436806, 33.823967, 27.433332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083027, 33.397438, 27.888733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398415, 33.525047, 28.099083>,  <38.587646, 33.601612, 28.225292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398415, 33.525047, 28.099083>,  <38.083027, 33.397438, 27.888733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398415, 33.525047, 28.099083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610291, 0.299343, 0.733443,
		0.076564, -0.899234, 0.430716,
		0.788469, 0.319018, 0.525875,
		38.634956, 33.620754, 28.256845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916679, 33.186325, 28.595119>,  <38.083027, 33.397438, 27.888733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916679, 33.186325, 28.595119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221249, 33.436935, 28.661688>,  <38.403992, 33.587303, 28.701630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221249, 33.436935, 28.661688>,  <37.916679, 33.186325, 28.595119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221249, 33.436935, 28.661688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363365, 0.199898, 0.909949,
		0.536840, -0.753330, 0.379865,
		0.761425, 0.626527, 0.166420,
		38.449677, 33.624893, 28.711615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005318, 33.187828, 29.340883>,  <37.916679, 33.186325, 28.595119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005318, 33.187828, 29.340883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238625, 33.500992, 29.254303>,  <38.378609, 33.688889, 29.202354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238625, 33.500992, 29.254303>,  <38.005318, 33.187828, 29.340883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238625, 33.500992, 29.254303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290516, 0.449913, 0.844499,
		0.758549, -0.429689, 0.489868,
		0.583270, 0.782909, -0.216450,
		38.413605, 33.735863, 29.189367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522697, 33.299240, 29.906103>,  <38.005318, 33.187828, 29.340883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522697, 33.299240, 29.906103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471676, 33.652119, 29.724791>,  <38.441063, 33.863846, 29.616003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471676, 33.652119, 29.724791>,  <38.522697, 33.299240, 29.906103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471676, 33.652119, 29.724791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155137, 0.433642, 0.887630,
		0.979624, 0.183540, 0.081549,
		-0.127552, 0.882195, -0.453280,
		38.433411, 33.916779, 29.588806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731956, 33.730965, 30.433174>,  <38.522697, 33.299240, 29.906103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731956, 33.730965, 30.433174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531078, 33.955753, 30.170271>,  <38.410553, 34.090626, 30.012529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531078, 33.955753, 30.170271>,  <38.731956, 33.730965, 30.433174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531078, 33.955753, 30.170271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425279, 0.501288, 0.753557,
		0.752955, 0.657948, -0.012746,
		-0.502191, 0.561974, -0.657259,
		38.380421, 34.124344, 29.973093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322899, 33.910343, 30.768974>,  <38.731956, 33.730965, 30.433174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322899, 33.910343, 30.768974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535961, 33.912601, 31.107500>,  <39.663799, 33.913956, 31.310616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535961, 33.912601, 31.107500>,  <39.322899, 33.910343, 30.768974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535961, 33.912601, 31.107500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722052, -0.524684, -0.450941,
		0.441501, 0.851278, -0.283551,
		0.532651, 0.005648, 0.846316,
		39.695755, 33.914295, 31.361395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000088, 34.088085, 30.490988>,  <39.322899, 33.910343, 30.768974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000088, 34.088085, 30.490988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059925, 33.922504, 30.850157>,  <40.095825, 33.823158, 31.065659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059925, 33.922504, 30.850157>,  <40.000088, 34.088085, 30.490988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059925, 33.922504, 30.850157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793518, -0.491525, -0.358793,
		0.589875, 0.766191, 0.254948,
		0.149591, -0.413949, 0.897925,
		40.104801, 33.798321, 31.119534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713390, 34.172153, 30.512499>,  <40.000088, 34.088085, 30.490988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713390, 34.172153, 30.512499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578701, 33.895309, 30.767874>,  <40.497887, 33.729202, 30.921099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578701, 33.895309, 30.767874>,  <40.713390, 34.172153, 30.512499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578701, 33.895309, 30.767874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816030, -0.552791, -0.168872,
		0.469800, 0.464121, 0.750919,
		-0.336725, -0.692108, 0.638438,
		40.477684, 33.687675, 30.959406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294945, 34.010384, 30.906900>,  <40.713390, 34.172153, 30.512499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294945, 34.010384, 30.906900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039013, 33.704273, 30.935072>,  <40.885452, 33.520607, 30.951975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039013, 33.704273, 30.935072>,  <41.294945, 34.010384, 30.906900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039013, 33.704273, 30.935072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691419, -0.613231, -0.381951,
		0.335489, -0.195688, 0.921495,
		-0.639833, -0.765280, 0.070430,
		40.847061, 33.474689, 30.956202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703007, 33.552643, 31.136881>,  <41.294945, 34.010384, 30.906900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703007, 33.552643, 31.136881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395607, 33.334026, 31.003794>,  <41.211166, 33.202854, 30.923941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395607, 33.334026, 31.003794>,  <41.703007, 33.552643, 31.136881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395607, 33.334026, 31.003794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634448, -0.718332, -0.285437,
		-0.082998, -0.430450, 0.898790,
		-0.768497, -0.546545, -0.332718,
		41.165058, 33.170063, 30.903978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916878, 32.957966, 31.260094>,  <41.703007, 33.552643, 31.136881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916878, 32.957966, 31.260094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607330, 32.877335, 31.019932>,  <41.421600, 32.828957, 30.875835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607330, 32.877335, 31.019932>,  <41.916878, 32.957966, 31.260094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607330, 32.877335, 31.019932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502701, -0.772142, -0.388702,
		-0.385244, -0.602630, 0.698873,
		-0.773873, -0.201579, -0.600405,
		41.375168, 32.816860, 30.839809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872810, 32.291626, 31.301683>,  <41.916878, 32.957966, 31.260094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872810, 32.291626, 31.301683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739048, 32.425301, 30.949209>,  <41.658791, 32.505505, 30.737724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739048, 32.425301, 30.949209>,  <41.872810, 32.291626, 31.301683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739048, 32.425301, 30.949209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503480, -0.727053, -0.466799,
		-0.796667, -0.599763, 0.074879,
		-0.334410, 0.334183, -0.881188,
		41.638725, 32.525555, 30.684853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612968, 31.691402, 30.962574>,  <41.872810, 32.291626, 31.301683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612968, 31.691402, 30.962574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655952, 31.948111, 30.658842>,  <41.681744, 32.102135, 30.476603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655952, 31.948111, 30.658842>,  <41.612968, 31.691402, 30.962574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655952, 31.948111, 30.658842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488295, -0.699359, -0.521983,
		-0.866038, -0.314684, -0.388527,
		0.107460, 0.641773, -0.759329,
		41.688190, 32.140644, 30.431044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415726, 31.300301, 30.312696>,  <41.612968, 31.691402, 30.962574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415726, 31.300301, 30.312696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636536, 31.614424, 30.200584>,  <41.769024, 31.802896, 30.133316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636536, 31.614424, 30.200584>,  <41.415726, 31.300301, 30.312696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636536, 31.614424, 30.200584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412442, -0.549304, -0.726744,
		-0.724676, 0.285584, -0.627125,
		0.552029, 0.785307, -0.280281,
		41.802143, 31.850016, 30.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420753, 31.200651, 29.559881>,  <41.415726, 31.300301, 30.312696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420753, 31.200651, 29.559881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707264, 31.458393, 29.667028>,  <41.879169, 31.613039, 29.731318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707264, 31.458393, 29.667028>,  <41.420753, 31.200651, 29.559881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707264, 31.458393, 29.667028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601941, -0.376342, -0.704296,
		-0.353006, 0.665713, -0.657429,
		0.716277, 0.644355, 0.267869,
		41.922146, 31.651699, 29.747389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591637, 31.615765, 29.040558>,  <41.420753, 31.200651, 29.559881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591637, 31.615765, 29.040558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926174, 31.579824, 29.256876>,  <42.126896, 31.558260, 29.386667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926174, 31.579824, 29.256876>,  <41.591637, 31.615765, 29.040558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926174, 31.579824, 29.256876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460609, -0.419757, -0.782076,
		0.297272, 0.903178, -0.309675,
		0.836342, -0.089850, 0.540794,
		42.177078, 31.552870, 29.419115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125443, 31.778469, 28.561111>,  <41.591637, 31.615765, 29.040558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125443, 31.778469, 28.561111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326385, 31.589802, 28.850983>,  <42.446953, 31.476601, 29.024906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326385, 31.589802, 28.850983>,  <42.125443, 31.778469, 28.561111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326385, 31.589802, 28.850983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468403, -0.556031, -0.686607,
		0.726796, 0.684366, -0.058396,
		0.502360, -0.471670, 0.724680,
		42.477093, 31.448301, 29.068386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837849, 31.807013, 28.385164>,  <42.125443, 31.778469, 28.561111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837849, 31.807013, 28.385164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803345, 31.510513, 28.651430>,  <42.782642, 31.332613, 28.811190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803345, 31.510513, 28.651430>,  <42.837849, 31.807013, 28.385164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803345, 31.510513, 28.651430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432148, -0.629865, -0.645383,
		0.897668, 0.231993, 0.374662,
		-0.086262, -0.741248, 0.665665,
		42.777466, 31.288139, 28.851130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502296, 31.486149, 28.523031>,  <42.837849, 31.807013, 28.385164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502296, 31.486149, 28.523031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238869, 31.212343, 28.648073>,  <43.080811, 31.048059, 28.723099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238869, 31.212343, 28.648073>,  <43.502296, 31.486149, 28.523031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238869, 31.212343, 28.648073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477324, -0.701133, -0.529692,
		0.581760, -0.199626, 0.788482,
		-0.658572, -0.684516, 0.312605,
		43.041298, 31.006989, 28.741854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.304180, 28.434660, 26.669735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616325, 28.682508, 26.703444>,  <35.803612, 28.831217, 26.723669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.616325, 28.682508, 26.703444>,  <35.304180, 28.434660, 26.669735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616325, 28.682508, 26.703444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366656, 0.344222, 0.864335,
		0.506554, -0.705394, 0.495806,
		0.780363, 0.619622, 0.084270,
		35.850433, 28.868395, 26.728725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434666, 28.294518, 27.320732>,  <35.304180, 28.434660, 26.669735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434666, 28.294518, 27.320732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.609558, 28.637861, 27.213360>,  <35.714493, 28.843866, 27.148937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.609558, 28.637861, 27.213360>,  <35.434666, 28.294518, 27.320732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609558, 28.637861, 27.213360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324060, 0.428786, 0.843284,
		0.838938, -0.281720, 0.465636,
		0.437228, 0.858357, -0.268431,
		35.740726, 28.895369, 27.132832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911263, 28.456961, 27.913622>,  <35.434666, 28.294518, 27.320732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911263, 28.456961, 27.913622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.817390, 28.777771, 27.693920>,  <35.761066, 28.970257, 27.562099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.817390, 28.777771, 27.693920>,  <35.911263, 28.456961, 27.913622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817390, 28.777771, 27.693920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236106, 0.501082, 0.832569,
		0.942962, 0.325073, 0.071766,
		-0.234684, 0.802025, -0.549253,
		35.746986, 29.018379, 27.529144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017651, 28.967752, 28.405991>,  <35.911263, 28.456961, 27.913622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017651, 28.967752, 28.405991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822800, 29.165884, 28.118282>,  <35.705887, 29.284763, 27.945658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822800, 29.165884, 28.118282>,  <36.017651, 28.967752, 28.405991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822800, 29.165884, 28.118282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363761, 0.633674, 0.682741,
		0.793967, 0.594226, -0.128500,
		-0.487130, 0.495331, -0.719272,
		35.676662, 29.314484, 27.902500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139946, 29.638994, 28.547276>,  <36.017651, 28.967752, 28.405991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139946, 29.638994, 28.547276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819042, 29.676367, 28.311426>,  <35.626499, 29.698790, 28.169916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819042, 29.676367, 28.311426>,  <36.139946, 29.638994, 28.547276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819042, 29.676367, 28.311426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401405, 0.646647, 0.648631,
		0.441879, 0.757046, -0.481274,
		-0.802257, 0.093431, -0.589622,
		35.578365, 29.704395, 28.134541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116997, 30.310537, 28.443613>,  <36.139946, 29.638994, 28.547276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116997, 30.310537, 28.443613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766041, 30.124470, 28.396627>,  <35.555466, 30.012829, 28.368437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766041, 30.124470, 28.396627>,  <36.116997, 30.310537, 28.443613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766041, 30.124470, 28.396627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457071, 0.736021, 0.499359,
		-0.145831, 0.491823, -0.858396,
		-0.877393, -0.465170, -0.117463,
		35.502823, 29.984919, 28.361389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735981, 30.818125, 28.183563>,  <36.116997, 30.310537, 28.443613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735981, 30.818125, 28.183563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.489861, 30.549561, 28.348782>,  <35.342186, 30.388422, 28.447912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.489861, 30.549561, 28.348782>,  <35.735981, 30.818125, 28.183563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489861, 30.549561, 28.348782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379140, 0.711453, 0.591682,
		-0.691125, 0.207462, -0.692319,
		-0.615304, -0.671412, 0.413046,
		35.305271, 30.348137, 28.472694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181633, 31.229408, 28.371485>,  <35.735981, 30.818125, 28.183563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181633, 31.229408, 28.371485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123253, 30.882238, 28.561394>,  <35.088226, 30.673937, 28.675339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123253, 30.882238, 28.561394>,  <35.181633, 31.229408, 28.371485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123253, 30.882238, 28.561394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366513, 0.493197, 0.788939,
		-0.918895, -0.058867, -0.390086,
		-0.145947, -0.867923, 0.474772,
		35.079468, 30.621861, 28.703825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472584, 31.246595, 28.625856>,  <35.181633, 31.229408, 28.371485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472584, 31.246595, 28.625856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649361, 30.969784, 28.854166>,  <34.755428, 30.803698, 28.991152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649361, 30.969784, 28.854166>,  <34.472584, 31.246595, 28.625856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649361, 30.969784, 28.854166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348897, 0.453580, 0.820083,
		-0.826412, -0.561572, -0.040989,
		0.441944, -0.692028, 0.570774,
		34.781944, 30.762175, 29.025398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922153, 30.889652, 29.076099>,  <34.472584, 31.246595, 28.625856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922153, 30.889652, 29.076099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.278465, 30.851318, 29.253788>,  <34.492252, 30.828318, 29.360401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.278465, 30.851318, 29.253788>,  <33.922153, 30.889652, 29.076099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278465, 30.851318, 29.253788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369620, 0.415892, 0.830912,
		-0.264378, -0.904350, 0.335044,
		0.890777, -0.095836, 0.444219,
		34.545700, 30.822567, 29.387054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749725, 30.771189, 29.686794>,  <33.922153, 30.889652, 29.076099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749725, 30.771189, 29.686794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132137, 30.870794, 29.748770>,  <34.361584, 30.930557, 29.785955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132137, 30.870794, 29.748770>,  <33.749725, 30.771189, 29.686794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132137, 30.870794, 29.748770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252765, 0.431649, 0.865903,
		0.148743, -0.866989, 0.475610,
		0.956026, 0.249015, 0.154940,
		34.418945, 30.945499, 29.795252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827049, 30.654097, 30.319387>,  <33.749725, 30.771189, 29.686794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827049, 30.654097, 30.319387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.149410, 30.882154, 30.255566>,  <34.342827, 31.018990, 30.217274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.149410, 30.882154, 30.255566>,  <33.827049, 30.654097, 30.319387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149410, 30.882154, 30.255566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150220, 0.457588, 0.876383,
		0.572677, -0.682309, 0.454418,
		0.805900, 0.570148, -0.159554,
		34.391182, 31.053198, 30.207699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313538, 30.601374, 30.915697>,  <33.827049, 30.654097, 30.319387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313538, 30.601374, 30.915697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368336, 30.943745, 30.716251>,  <34.401215, 31.149168, 30.596584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368336, 30.943745, 30.716251>,  <34.313538, 30.601374, 30.915697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368336, 30.943745, 30.716251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235340, 0.517074, 0.822952,
		0.962209, 0.004601, 0.272273,
		0.136999, 0.855928, -0.498616,
		34.409435, 31.200523, 30.566666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624153, 31.048885, 31.366491>,  <34.313538, 30.601374, 30.915697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624153, 31.048885, 31.366491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452522, 31.296343, 31.103230>,  <34.349545, 31.444817, 30.945272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.452522, 31.296343, 31.103230>,  <34.624153, 31.048885, 31.366491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452522, 31.296343, 31.103230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225716, 0.632087, 0.741295,
		0.874610, 0.466631, -0.131578,
		-0.429080, 0.618644, -0.658156,
		34.323799, 31.481936, 30.905783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329395, 31.221352, 31.468037>,  <34.624153, 31.048885, 31.366491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329395, 31.221352, 31.468037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574505, 31.141302, 31.773836>,  <35.721569, 31.093273, 31.957315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574505, 31.141302, 31.773836>,  <35.329395, 31.221352, 31.468037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574505, 31.141302, 31.773836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467703, -0.687946, -0.554963,
		0.636995, 0.697626, -0.327956,
		0.612773, -0.200123, 0.764500,
		35.758335, 31.081264, 32.003185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958988, 31.209085, 31.178793>,  <35.329395, 31.221352, 31.468037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958988, 31.209085, 31.178793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.996361, 30.997875, 31.516422>,  <36.018784, 30.871149, 31.719000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.996361, 30.997875, 31.516422>,  <35.958988, 31.209085, 31.178793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996361, 30.997875, 31.516422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460832, -0.728567, -0.506778,
		0.882556, 0.436323, 0.175262,
		0.093429, -0.528026, 0.844073,
		36.024391, 30.839468, 31.769644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670208, 31.028313, 31.102169>,  <35.958988, 31.209085, 31.178793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670208, 31.028313, 31.102169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523422, 30.781172, 31.380333>,  <36.435349, 30.632887, 31.547232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523422, 30.781172, 31.380333>,  <36.670208, 31.028313, 31.102169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523422, 30.781172, 31.380333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625594, -0.717177, -0.307067,
		0.688452, 0.322360, 0.649706,
		-0.366968, -0.617853, 0.695408,
		36.413330, 30.595816, 31.588955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293030, 30.688942, 31.260227>,  <36.670208, 31.028313, 31.102169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293030, 30.688942, 31.260227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008781, 30.461010, 31.425301>,  <36.838230, 30.324251, 31.524343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008781, 30.461010, 31.425301>,  <37.293030, 30.688942, 31.260227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008781, 30.461010, 31.425301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403881, -0.810672, -0.423900,
		0.576100, -0.134560, 0.806227,
		-0.710626, -0.569829, 0.412682,
		36.795593, 30.290062, 31.549105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571548, 30.047430, 31.536209>,  <37.293030, 30.688942, 31.260227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571548, 30.047430, 31.536209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192947, 29.943514, 31.459644>,  <36.965786, 29.881165, 31.413706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192947, 29.943514, 31.459644>,  <37.571548, 30.047430, 31.536209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192947, 29.943514, 31.459644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322589, -0.746824, -0.581541,
		0.008130, -0.612178, 0.790678,
		-0.946504, -0.259792, -0.191410,
		36.908997, 29.865576, 31.402222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530937, 29.261648, 31.516279>,  <37.571548, 30.047430, 31.536209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530937, 29.261648, 31.516279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.212128, 29.381359, 31.306444>,  <37.020844, 29.453186, 31.180544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.212128, 29.381359, 31.306444>,  <37.530937, 29.261648, 31.516279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212128, 29.381359, 31.306444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116188, -0.776386, -0.619455,
		-0.592670, -0.554670, 0.584024,
		-0.797021, 0.299275, -0.524587,
		36.973022, 29.471142, 31.149069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218609, 28.598461, 31.474228>,  <37.530937, 29.261648, 31.516279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218609, 28.598461, 31.474228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089466, 28.853468, 31.194418>,  <37.011982, 29.006472, 31.026531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089466, 28.853468, 31.194418>,  <37.218609, 28.598461, 31.474228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089466, 28.853468, 31.194418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164787, -0.689952, -0.704848,
		-0.931992, -0.342838, 0.117702,
		-0.322857, 0.637517, -0.699525,
		36.992607, 29.044724, 30.984560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681801, 28.276159, 31.114370>,  <37.218609, 28.598461, 31.474228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681801, 28.276159, 31.114370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848495, 28.551962, 30.877420>,  <36.948513, 28.717443, 30.735250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848495, 28.551962, 30.877420>,  <36.681801, 28.276159, 31.114370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848495, 28.551962, 30.877420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162820, -0.697737, -0.697604,
		-0.894325, 0.194269, -0.403040,
		0.416740, 0.689508, -0.592374,
		36.973518, 28.758814, 30.699709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592201, 28.010189, 30.490583>,  <36.681801, 28.276159, 31.114370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592201, 28.010189, 30.490583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860886, 28.289614, 30.391943>,  <37.022095, 28.457270, 30.332758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860886, 28.289614, 30.391943>,  <36.592201, 28.010189, 30.490583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860886, 28.289614, 30.391943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191474, -0.485281, -0.853136,
		-0.715640, 0.525844, -0.459726,
		0.671712, 0.698563, -0.246600,
		37.062401, 28.499184, 30.317963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429451, 28.163408, 29.783363>,  <36.592201, 28.010189, 30.490583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429451, 28.163408, 29.783363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803963, 28.284706, 29.854275>,  <37.028667, 28.357485, 29.896822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803963, 28.284706, 29.854275>,  <36.429451, 28.163408, 29.783363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803963, 28.284706, 29.854275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274744, -0.317745, -0.907499,
		-0.218866, 0.898376, -0.380813,
		0.936276, 0.303247, 0.177279,
		37.084846, 28.375681, 29.907459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708748, 28.528362, 29.156929>,  <36.429451, 28.163408, 29.783363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708748, 28.528362, 29.156929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044128, 28.431822, 29.352375>,  <37.245358, 28.373898, 29.469643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044128, 28.431822, 29.352375>,  <36.708748, 28.528362, 29.156929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044128, 28.431822, 29.352375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380069, -0.383597, -0.841666,
		0.390569, 0.891405, -0.229898,
		0.838453, -0.241352, 0.488616,
		37.295666, 28.359417, 29.498960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230186, 28.866499, 28.833611>,  <36.708748, 28.528362, 29.156929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230186, 28.866499, 28.833611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.414104, 28.551682, 28.998121>,  <37.524456, 28.362791, 29.096827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.414104, 28.551682, 28.998121>,  <37.230186, 28.866499, 28.833611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414104, 28.551682, 28.998121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442428, -0.198535, -0.874552,
		0.769965, 0.584075, 0.256925,
		0.459795, -0.787045, 0.411276,
		37.552044, 28.315567, 29.121504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911652, 28.964308, 28.694559>,  <37.230186, 28.866499, 28.833611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911652, 28.964308, 28.694559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886005, 28.573942, 28.777971>,  <37.870617, 28.339724, 28.828018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886005, 28.573942, 28.777971>,  <37.911652, 28.964308, 28.694559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886005, 28.573942, 28.777971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483076, -0.213196, -0.849226,
		0.873227, 0.046286, 0.485110,
		-0.064116, -0.975912, 0.208528,
		37.866772, 28.281168, 28.840530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538040, 28.659781, 28.443817>,  <37.911652, 28.964308, 28.694559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538040, 28.659781, 28.443817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.322296, 28.325390, 28.484289>,  <38.192848, 28.124756, 28.508572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.322296, 28.325390, 28.484289>,  <38.538040, 28.659781, 28.443817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322296, 28.325390, 28.484289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391325, -0.355224, -0.848929,
		0.745624, -0.418285, 0.518731,
		-0.539360, -0.835975, 0.101178,
		38.160488, 28.074598, 28.514643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100159, 28.448538, 28.917461>,  <38.538040, 28.659781, 28.443817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100159, 28.448538, 28.917461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475613, 28.476318, 29.052601>,  <39.700886, 28.492987, 29.133684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475613, 28.476318, 29.052601>,  <39.100159, 28.448538, 28.917461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475613, 28.476318, 29.052601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315845, 0.566642, 0.761024,
		-0.138585, -0.821032, 0.553806,
		0.938635, 0.069450, 0.337847,
		39.757202, 28.497154, 29.153955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070278, 28.487820, 29.630396>,  <39.100159, 28.448538, 28.917461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070278, 28.487820, 29.630396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.448021, 28.609039, 29.579252>,  <39.674667, 28.681772, 29.548565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.448021, 28.609039, 29.579252>,  <39.070278, 28.487820, 29.630396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448021, 28.609039, 29.579252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076500, 0.580434, 0.810706,
		0.319899, -0.755815, 0.571321,
		0.944358, 0.303050, -0.127861,
		39.731327, 28.699955, 29.540894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450928, 28.327333, 30.232935>,  <39.070278, 28.487820, 29.630396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450928, 28.327333, 30.232935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645916, 28.637035, 30.071491>,  <39.762909, 28.822857, 29.974625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645916, 28.637035, 30.071491>,  <39.450928, 28.327333, 30.232935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645916, 28.637035, 30.071491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061589, 0.491590, 0.868646,
		0.870964, -0.398583, 0.287322,
		0.487472, 0.774255, -0.403609,
		39.792156, 28.869312, 29.950409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854870, 28.612669, 30.824663>,  <39.450928, 28.327333, 30.232935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854870, 28.612669, 30.824663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880154, 28.925404, 30.576553>,  <39.895325, 29.113045, 30.427689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880154, 28.925404, 30.576553>,  <39.854870, 28.612669, 30.824663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880154, 28.925404, 30.576553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041598, 0.623039, 0.781083,
		0.997133, -0.023573, 0.071908,
		0.063214, 0.781835, -0.620272,
		39.899117, 29.159954, 30.390472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238766, 29.058622, 31.093859>,  <39.854870, 28.612669, 30.824663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238766, 29.058622, 31.093859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077587, 29.327623, 30.845545>,  <39.980881, 29.489025, 30.696556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077587, 29.327623, 30.845545>,  <40.238766, 29.058622, 31.093859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077587, 29.327623, 30.845545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073591, 0.699899, 0.710441,
		0.912261, 0.240584, -0.331511,
		-0.402945, 0.672504, -0.620785,
		39.956703, 29.529375, 30.659309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506420, 29.659573, 31.349396>,  <40.238766, 29.058622, 31.093859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506420, 29.659573, 31.349396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215092, 29.795189, 31.111202>,  <40.040295, 29.876558, 30.968287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215092, 29.795189, 31.111202>,  <40.506420, 29.659573, 31.349396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215092, 29.795189, 31.111202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030189, 0.852299, 0.522183,
		0.684572, 0.398294, -0.610510,
		-0.728319, 0.339041, -0.595485,
		39.996597, 29.896902, 30.932556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629021, 30.379887, 31.171568>,  <40.506420, 29.659573, 31.349396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629021, 30.379887, 31.171568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.234409, 30.323191, 31.138906>,  <39.997643, 30.289173, 31.119310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.234409, 30.323191, 31.138906>,  <40.629021, 30.379887, 31.171568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234409, 30.323191, 31.138906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161457, 0.763646, 0.625121,
		-0.026253, 0.629884, -0.776245,
		-0.986530, -0.141742, -0.081652,
		39.938450, 30.280668, 31.114410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421337, 31.072563, 31.213646>,  <40.629021, 30.379887, 31.171568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421337, 31.072563, 31.213646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.093380, 30.852539, 31.277166>,  <39.896606, 30.720526, 31.315279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.093380, 30.852539, 31.277166>,  <40.421337, 31.072563, 31.213646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093380, 30.852539, 31.277166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281888, 0.629263, 0.724271,
		-0.498318, 0.549058, -0.670980,
		-0.819889, -0.550058, 0.158801,
		39.847412, 30.687521, 31.324806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836525, 31.533445, 31.386740>,  <40.421337, 31.072563, 31.213646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836525, 31.533445, 31.386740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723499, 31.178501, 31.532478>,  <39.655685, 30.965534, 31.619921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723499, 31.178501, 31.532478>,  <39.836525, 31.533445, 31.386740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723499, 31.178501, 31.532478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385332, 0.452832, 0.804029,
		-0.878451, 0.086797, -0.469883,
		-0.282565, -0.887361, 0.364345,
		39.638729, 30.912292, 31.641783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052731, 31.572069, 31.556782>,  <39.836525, 31.533445, 31.386740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052731, 31.572069, 31.556782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221725, 31.282021, 31.774296>,  <39.323124, 31.107992, 31.904804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221725, 31.282021, 31.774296>,  <39.052731, 31.572069, 31.556782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221725, 31.282021, 31.774296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534147, 0.285511, 0.795720,
		-0.732249, -0.626646, -0.266695,
		0.422490, -0.725120, 0.543786,
		39.348473, 31.064486, 31.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582737, 31.326866, 31.979940>,  <39.052731, 31.572069, 31.556782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582737, 31.326866, 31.979940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923115, 31.224335, 32.163326>,  <39.127342, 31.162815, 32.273357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923115, 31.224335, 32.163326>,  <38.582737, 31.326866, 31.979940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923115, 31.224335, 32.163326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357788, 0.356162, 0.863213,
		-0.384554, -0.898579, 0.211363,
		0.850945, -0.256328, 0.458465,
		39.178398, 31.147436, 32.300865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355278, 30.986094, 32.498615>,  <38.582737, 31.326866, 31.979940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355278, 30.986094, 32.498615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721649, 31.076145, 32.631519>,  <38.941471, 31.130177, 32.711262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.721649, 31.076145, 32.631519>,  <38.355278, 30.986094, 32.498615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721649, 31.076145, 32.631519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390459, 0.308307, 0.867461,
		0.092849, -0.924265, 0.370289,
		0.915926, 0.225126, 0.332261,
		38.996426, 31.143682, 32.731197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382359, 30.721775, 33.159115>,  <38.355278, 30.986094, 32.498615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382359, 30.721775, 33.159115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.697536, 30.967352, 33.140308>,  <38.886642, 31.114698, 33.129025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.697536, 30.967352, 33.140308>,  <38.382359, 30.721775, 33.159115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697536, 30.967352, 33.140308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251610, 0.390729, 0.885451,
		0.561989, -0.685859, 0.462349,
		0.787948, 0.613945, -0.047016,
		38.933922, 31.151535, 33.126202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806309, 30.592159, 33.779720>,  <38.382359, 30.721775, 33.159115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806309, 30.592159, 33.779720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865280, 30.958960, 33.631466>,  <38.900665, 31.179041, 33.542515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865280, 30.958960, 33.631466>,  <38.806309, 30.592159, 33.779720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865280, 30.958960, 33.631466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141996, 0.390473, 0.909598,
		0.978826, -0.081475, 0.187779,
		0.147432, 0.917002, -0.370636,
		38.909512, 31.234060, 33.520275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.939941, 30.837301, 28.675749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.562393, 30.716908, 28.621325>,  <43.335865, 30.644672, 28.588669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.562393, 30.716908, 28.621325>,  <43.939941, 30.837301, 28.675749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562393, 30.716908, 28.621325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315691, -0.700831, -0.639668,
		0.097173, -0.646719, 0.756513,
		-0.943873, -0.300983, -0.136061,
		43.279232, 30.626612, 28.580505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971275, 30.062901, 28.677851>,  <43.939941, 30.837301, 28.675749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971275, 30.062901, 28.677851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.627190, 30.178017, 28.509464>,  <43.420738, 30.247086, 28.408432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.627190, 30.178017, 28.509464>,  <43.971275, 30.062901, 28.677851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627190, 30.178017, 28.509464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116414, -0.692899, -0.711575,
		-0.496473, -0.661111, 0.562536,
		-0.860211, 0.287790, -0.420968,
		43.369125, 30.264353, 28.383173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628704, 29.422245, 28.506802>,  <43.971275, 30.062901, 28.677851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628704, 29.422245, 28.506802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.450809, 29.702024, 28.283024>,  <43.344070, 29.869892, 28.148758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.450809, 29.702024, 28.283024>,  <43.628704, 29.422245, 28.506802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450809, 29.702024, 28.283024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059366, -0.600220, -0.797628,
		-0.893691, -0.387948, 0.225418,
		-0.444739, 0.699451, -0.559442,
		43.317387, 29.911860, 28.115191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071201, 29.109339, 28.238321>,  <43.628704, 29.422245, 28.506802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071201, 29.109339, 28.238321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.176941, 29.410082, 27.996717>,  <43.240387, 29.590528, 27.851755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.176941, 29.410082, 27.996717>,  <43.071201, 29.109339, 28.238321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176941, 29.410082, 27.996717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201165, -0.655499, -0.727911,
		-0.943213, 0.070919, -0.324530,
		0.264351, 0.751859, -0.604008,
		43.256245, 29.635639, 27.815516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840820, 28.911564, 27.597742>,  <43.071201, 29.109339, 28.238321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840820, 28.911564, 27.597742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.067711, 29.221529, 27.486198>,  <43.203846, 29.407509, 27.419273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.067711, 29.221529, 27.486198>,  <42.840820, 28.911564, 27.597742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067711, 29.221529, 27.486198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155722, -0.433411, -0.887641,
		-0.808705, 0.460070, -0.366514,
		0.567228, 0.774913, -0.278858,
		43.237881, 29.454002, 27.402540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504799, 29.129402, 26.949921>,  <42.840820, 28.911564, 27.597742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504799, 29.129402, 26.949921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882526, 29.259935, 26.933130>,  <43.109165, 29.338255, 26.923056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882526, 29.259935, 26.933130>,  <42.504799, 29.129402, 26.949921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882526, 29.259935, 26.933130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135955, -0.503192, -0.853413,
		-0.299621, 0.800190, -0.519542,
		0.944322, 0.326335, -0.041977,
		43.165821, 29.357836, 26.920538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671795, 29.410847, 26.250715>,  <42.504799, 29.129402, 26.949921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671795, 29.410847, 26.250715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.031075, 29.329100, 26.406391>,  <43.246643, 29.280050, 26.499796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.031075, 29.329100, 26.406391>,  <42.671795, 29.410847, 26.250715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031075, 29.329100, 26.406391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302880, -0.353934, -0.884870,
		0.318586, 0.912669, -0.256005,
		0.898202, -0.204369, 0.389188,
		43.300533, 29.267790, 26.523148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103752, 29.473749, 25.690481>,  <42.671795, 29.410847, 26.250715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103752, 29.473749, 25.690481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.361591, 29.292727, 25.936954>,  <43.516296, 29.184113, 26.084839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.361591, 29.292727, 25.936954>,  <43.103752, 29.473749, 25.690481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361591, 29.292727, 25.936954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424072, -0.458963, -0.780715,
		0.636122, 0.764557, -0.103933,
		0.644602, -0.452555, 0.616184,
		43.554974, 29.156960, 26.121809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770493, 29.570259, 25.349901>,  <43.103752, 29.473749, 25.690481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770493, 29.570259, 25.349901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.840214, 29.282719, 25.619085>,  <43.882046, 29.110195, 25.780596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.840214, 29.282719, 25.619085>,  <43.770493, 29.570259, 25.349901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840214, 29.282719, 25.619085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369399, -0.585775, -0.721396,
		0.912778, 0.374330, 0.163442,
		0.174300, -0.718850, 0.672960,
		43.892506, 29.067064, 25.820972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517117, 29.354519, 25.403137>,  <43.770493, 29.570259, 25.349901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517117, 29.354519, 25.403137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.311958, 29.033035, 25.523796>,  <44.188862, 28.840145, 25.596191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.311958, 29.033035, 25.523796>,  <44.517117, 29.354519, 25.403137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311958, 29.033035, 25.523796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457976, -0.553380, -0.695722,
		0.726082, -0.218688, 0.651906,
		-0.512897, -0.803708, 0.301645,
		44.158089, 28.791924, 25.614290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010937, 28.752802, 25.462305>,  <44.517117, 29.354519, 25.403137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010937, 28.752802, 25.462305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.640018, 28.613819, 25.406607>,  <44.417465, 28.530430, 25.373188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.640018, 28.613819, 25.406607>,  <45.010937, 28.752802, 25.462305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640018, 28.613819, 25.406607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327978, -0.574902, -0.749612,
		0.180406, -0.740784, 0.647065,
		-0.927300, -0.347457, -0.139245,
		44.361828, 28.509583, 25.364834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166092, 27.973776, 25.298719>,  <45.010937, 28.752802, 25.462305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166092, 27.973776, 25.298719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.792988, 28.055069, 25.179615>,  <44.569126, 28.103846, 25.108152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.792988, 28.055069, 25.179615>,  <45.166092, 27.973776, 25.298719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792988, 28.055069, 25.179615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094583, -0.659063, -0.746117,
		-0.347879, -0.724109, 0.595523,
		-0.932757, 0.203232, -0.297762,
		44.513161, 28.116039, 25.090286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793987, 27.389629, 25.194187>,  <45.166092, 27.973776, 25.298719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793987, 27.389629, 25.194187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.600830, 27.651932, 24.962049>,  <44.484936, 27.809313, 24.822767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.600830, 27.651932, 24.962049>,  <44.793987, 27.389629, 25.194187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600830, 27.651932, 24.962049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190436, -0.568230, -0.800530,
		-0.854721, -0.497089, 0.149515,
		-0.482893, 0.655757, -0.580342,
		44.455963, 27.848660, 24.787947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614712, 26.844414, 25.691832>,  <44.793987, 27.389629, 25.194187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614712, 26.844414, 25.691832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.972000, 26.882299, 25.516018>,  <45.186371, 26.905031, 25.410530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.972000, 26.882299, 25.516018>,  <44.614712, 26.844414, 25.691832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972000, 26.882299, 25.516018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204352, -0.785243, -0.584495,
		-0.400501, 0.611901, -0.682038,
		0.893218, 0.094715, -0.439534,
		45.239967, 26.910713, 25.384157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886379, 26.824873, 25.559359>,  <44.614712, 26.844414, 25.691832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886379, 26.824873, 25.559359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.706676, 26.467514, 25.560083>,  <43.598854, 26.253098, 25.560518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.706676, 26.467514, 25.560083>,  <43.886379, 26.824873, 25.559359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706676, 26.467514, 25.560083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841606, 0.423896, 0.334681,
		-0.299772, 0.148834, -0.942330,
		-0.449262, -0.893399, 0.001813,
		43.571899, 26.199495, 25.560627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194538, 26.829231, 25.273579>,  <43.886379, 26.824873, 25.559359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194538, 26.829231, 25.273579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197800, 26.489666, 25.484966>,  <43.199757, 26.285927, 25.611799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197800, 26.489666, 25.484966>,  <43.194538, 26.829231, 25.273579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197800, 26.489666, 25.484966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767925, 0.333186, 0.547064,
		-0.640488, -0.410286, -0.649184,
		0.008154, -0.848913, 0.528471,
		43.200245, 26.234993, 25.643507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461132, 26.558702, 25.331354>,  <43.194538, 26.829231, 25.273579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461132, 26.558702, 25.331354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651253, 26.369226, 25.627922>,  <42.765324, 26.255541, 25.805862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651253, 26.369226, 25.627922>,  <42.461132, 26.558702, 25.331354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651253, 26.369226, 25.627922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775918, 0.171591, 0.607048,
		-0.414775, -0.863813, -0.285988,
		0.475303, -0.473692, 0.741420,
		42.793842, 26.227119, 25.850348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927086, 26.193518, 25.693739>,  <42.461132, 26.558702, 25.331354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927086, 26.193518, 25.693739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.224186, 26.194828, 25.961561>,  <42.402447, 26.195614, 26.122255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.224186, 26.194828, 25.961561>,  <41.927086, 26.193518, 25.693739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224186, 26.194828, 25.961561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668381, 0.063040, 0.741143,
		-0.039785, -0.998006, 0.049009,
		0.742754, 0.003271, 0.669556,
		42.447014, 26.195810, 26.162428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765171, 25.765154, 26.264078>,  <41.927086, 26.193518, 25.693739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765171, 25.765154, 26.264078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.020218, 26.038242, 26.406815>,  <42.173244, 26.202095, 26.492456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.020218, 26.038242, 26.406815>,  <41.765171, 25.765154, 26.264078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020218, 26.038242, 26.406815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704917, 0.330256, 0.627713,
		0.310697, -0.651792, 0.691834,
		0.637620, 0.682714, 0.356850,
		42.211502, 26.243059, 26.513866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571079, 25.836519, 26.953411>,  <41.765171, 25.765154, 26.264078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571079, 25.836519, 26.953411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799797, 26.157299, 26.884216>,  <41.937027, 26.349768, 26.842699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799797, 26.157299, 26.884216>,  <41.571079, 25.836519, 26.953411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799797, 26.157299, 26.884216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563226, 0.537045, 0.627980,
		0.596512, -0.261645, 0.758759,
		0.571796, 0.801951, -0.172988,
		41.971336, 26.397884, 26.832321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748047, 26.077734, 27.710531>,  <41.571079, 25.836519, 26.953411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748047, 26.077734, 27.710531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.791740, 26.378103, 27.450014>,  <41.817955, 26.558325, 27.293703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.791740, 26.378103, 27.450014>,  <41.748047, 26.077734, 27.710531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791740, 26.378103, 27.450014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358645, 0.640851, 0.678737,
		0.927061, 0.159445, 0.339315,
		0.109229, 0.750924, -0.651292,
		41.824509, 26.603380, 27.254627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065109, 26.584288, 28.032181>,  <41.748047, 26.077734, 27.710531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065109, 26.584288, 28.032181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.821423, 26.749449, 27.761372>,  <41.675209, 26.848545, 27.598886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.821423, 26.749449, 27.761372>,  <42.065109, 26.584288, 28.032181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821423, 26.749449, 27.761372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416404, 0.560010, 0.716238,
		0.674876, 0.718263, -0.169236,
		-0.609221, 0.412902, -0.677025,
		41.638657, 26.873320, 27.558264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989487, 27.222477, 28.297316>,  <42.065109, 26.584288, 28.032181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989487, 27.222477, 28.297316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716381, 27.246965, 28.006088>,  <41.552517, 27.261658, 27.831352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716381, 27.246965, 28.006088>,  <41.989487, 27.222477, 28.297316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716381, 27.246965, 28.006088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537960, 0.632164, 0.557644,
		0.494396, 0.772412, -0.398688,
		-0.682767, 0.061219, -0.728067,
		41.511551, 27.265331, 27.787668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813118, 27.903938, 28.223797>,  <41.989487, 27.222477, 28.297316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813118, 27.903938, 28.223797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.499889, 27.691978, 28.093565>,  <41.311951, 27.564802, 28.015427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.499889, 27.691978, 28.093565>,  <41.813118, 27.903938, 28.223797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499889, 27.691978, 28.093565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621854, 0.675290, 0.396587,
		0.009707, 0.513019, -0.858323,
		-0.783073, -0.529902, -0.325578,
		41.264969, 27.533009, 27.995892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340855, 28.441088, 28.112553>,  <41.813118, 27.903938, 28.223797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340855, 28.441088, 28.112553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093086, 28.127069, 28.110544>,  <40.944424, 27.938660, 28.109339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093086, 28.127069, 28.110544>,  <41.340855, 28.441088, 28.112553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093086, 28.127069, 28.110544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665540, 0.521714, 0.533733,
		-0.416384, 0.333946, -0.845638,
		-0.619420, -0.785044, -0.005021,
		40.907261, 27.891556, 28.109037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742817, 28.698494, 27.864733>,  <41.340855, 28.441088, 28.112553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742817, 28.698494, 27.864733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642063, 28.362703, 28.057327>,  <40.581612, 28.161228, 28.172884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642063, 28.362703, 28.057327>,  <40.742817, 28.698494, 27.864733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642063, 28.362703, 28.057327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582402, 0.528841, 0.617361,
		-0.772891, -0.124914, -0.622122,
		-0.251887, -0.839478, 0.481486,
		40.566498, 28.110859, 28.201773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058601, 28.708616, 27.893150>,  <40.742817, 28.698494, 27.864733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058601, 28.708616, 27.893150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.143375, 28.446009, 28.182720>,  <40.194241, 28.288445, 28.356462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.143375, 28.446009, 28.182720>,  <40.058601, 28.708616, 27.893150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143375, 28.446009, 28.182720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459460, 0.586848, 0.666712,
		-0.862544, -0.473913, -0.177273,
		0.211931, -0.656518, 0.723926,
		40.206955, 28.249054, 28.399899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458599, 28.792397, 28.320650>,  <40.058601, 28.708616, 27.893150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458599, 28.792397, 28.320650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710514, 28.567078, 28.534590>,  <39.861664, 28.431887, 28.662954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710514, 28.567078, 28.534590>,  <39.458599, 28.792397, 28.320650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710514, 28.567078, 28.534590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380425, 0.376650, 0.844637,
		-0.677234, -0.735411, 0.022917,
		0.629787, -0.563298, 0.534849,
		39.899448, 28.398088, 28.695044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051975, 28.115618, 28.295078>,  <39.458599, 28.792397, 28.320650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051975, 28.115618, 28.295078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695232, 27.940506, 28.249588>,  <38.481186, 27.835438, 28.222294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695232, 27.940506, 28.249588>,  <39.051975, 28.115618, 28.295078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695232, 27.940506, 28.249588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421280, -0.712466, -0.561173,
		0.164647, -0.548398, 0.819848,
		-0.891860, -0.437781, -0.113724,
		38.427673, 27.809172, 28.215471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268459, 27.468374, 28.292791>,  <39.051975, 28.115618, 28.295078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268459, 27.468374, 28.292791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.904503, 27.459183, 28.127104>,  <38.686131, 27.453669, 28.027691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.904503, 27.459183, 28.127104>,  <39.268459, 27.468374, 28.292791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904503, 27.459183, 28.127104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343112, -0.602921, -0.720250,
		-0.233190, -0.797469, 0.556475,
		-0.909888, -0.022978, -0.414216,
		38.631535, 27.452290, 28.002838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118923, 26.792450, 28.104021>,  <39.268459, 27.468374, 28.292791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118923, 26.792450, 28.104021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.876831, 27.020285, 27.881571>,  <38.731575, 27.156984, 27.748100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.876831, 27.020285, 27.881571>,  <39.118923, 26.792450, 28.104021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876831, 27.020285, 27.881571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269319, -0.510899, -0.816364,
		-0.749113, -0.643858, 0.155809,
		-0.605225, 0.569586, -0.556124,
		38.695263, 27.191160, 27.714733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852936, 26.348383, 27.729174>,  <39.118923, 26.792450, 28.104021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852936, 26.348383, 27.729174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745544, 26.678917, 27.531147>,  <38.681110, 26.877237, 27.412331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745544, 26.678917, 27.531147>,  <38.852936, 26.348383, 27.729174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745544, 26.678917, 27.531147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000681, -0.513772, -0.857927,
		-0.963287, -0.230668, 0.137372,
		-0.268474, 0.826336, -0.495066,
		38.665001, 26.926817, 27.382627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193253, 26.146475, 27.407213>,  <38.852936, 26.348383, 27.729174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193253, 26.146475, 27.407213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334637, 26.462717, 27.207211>,  <38.419468, 26.652462, 27.087208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334637, 26.462717, 27.207211>,  <38.193253, 26.146475, 27.407213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334637, 26.462717, 27.207211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037143, -0.545950, -0.836994,
		-0.934712, 0.277272, -0.222337,
		0.353460, 0.790606, -0.500008,
		38.440674, 26.699900, 27.057209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950214, 26.000086, 26.733269>,  <38.193253, 26.146475, 27.407213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950214, 26.000086, 26.733269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228428, 26.280828, 26.671782>,  <38.395355, 26.449274, 26.634890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228428, 26.280828, 26.671782>,  <37.950214, 26.000086, 26.733269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228428, 26.280828, 26.671782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336187, -0.506988, -0.793688,
		-0.634988, 0.500360, -0.588583,
		0.695534, 0.701857, -0.153717,
		38.437088, 26.491386, 26.625666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931389, 26.291658, 26.006313>,  <37.950214, 26.000086, 26.733269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931389, 26.291658, 26.006313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311680, 26.336864, 26.121788>,  <38.539856, 26.363987, 26.191072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311680, 26.336864, 26.121788>,  <37.931389, 26.291658, 26.006313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311680, 26.336864, 26.121788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307417, -0.464047, -0.830756,
		0.040077, 0.878572, -0.475926,
		0.950731, 0.113014, 0.288685,
		38.596901, 26.370770, 26.208393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803673, 26.987999, 25.610708>,  <37.931389, 26.291658, 26.006313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803673, 26.987999, 25.610708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564137, 27.074224, 25.302183>,  <37.420414, 27.125959, 25.117069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.564137, 27.074224, 25.302183>,  <37.803673, 26.987999, 25.610708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564137, 27.074224, 25.302183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456747, 0.699184, 0.550021,
		0.657853, 0.681670, -0.320243,
		-0.598842, 0.215563, -0.771311,
		37.384483, 27.138893, 25.070789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880630, 27.753962, 25.503510>,  <37.803673, 26.987999, 25.610708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880630, 27.753962, 25.503510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525906, 27.661051, 25.343706>,  <37.313068, 27.605305, 25.247824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.525906, 27.661051, 25.343706>,  <37.880630, 27.753962, 25.503510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525906, 27.661051, 25.343706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406617, 0.803001, 0.435720,
		0.219597, 0.548849, -0.806561,
		-0.886814, -0.232279, -0.399508,
		37.259861, 27.591368, 25.223854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720646, 28.311125, 25.184946>,  <37.880630, 27.753962, 25.503510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720646, 28.311125, 25.184946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370502, 28.123407, 25.231438>,  <37.160416, 28.010777, 25.259333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370502, 28.123407, 25.231438>,  <37.720646, 28.311125, 25.184946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370502, 28.123407, 25.231438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421348, 0.858397, 0.292610,
		-0.237090, 0.207166, -0.949142,
		-0.875359, -0.469294, 0.116229,
		37.107895, 27.982618, 25.266306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175392, 28.809120, 25.001896>,  <37.720646, 28.311125, 25.184946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175392, 28.809120, 25.001896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.956974, 28.537617, 25.198315>,  <36.825924, 28.374716, 25.316166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.956974, 28.537617, 25.198315>,  <37.175392, 28.809120, 25.001896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956974, 28.537617, 25.198315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509686, 0.734343, 0.448287,
		-0.664873, -0.005495, -0.746936,
		-0.546044, -0.678757, 0.491045,
		36.793159, 28.333990, 25.345629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470844, 29.142738, 25.185249>,  <37.175392, 28.809120, 25.001896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470844, 29.142738, 25.185249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489357, 28.828913, 25.432577>,  <36.500465, 28.640617, 25.580975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.489357, 28.828913, 25.432577>,  <36.470844, 29.142738, 25.185249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489357, 28.828913, 25.432577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445191, 0.537911, 0.715861,
		-0.894238, -0.308405, -0.324383,
		0.046286, -0.784563, 0.618320,
		36.503242, 28.593544, 25.618073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804688, 28.991529, 25.437162>,  <36.470844, 29.142738, 25.185249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804688, 28.991529, 25.437162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031910, 28.832151, 25.725206>,  <36.168243, 28.736525, 25.898033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031910, 28.832151, 25.725206>,  <35.804688, 28.991529, 25.437162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031910, 28.832151, 25.725206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546791, 0.471232, 0.692070,
		-0.615090, -0.786882, 0.049819,
		0.568054, -0.398444, 0.720109,
		36.202328, 28.712618, 25.941238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323513, 28.728468, 25.955090>,  <35.804688, 28.991529, 25.437162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323513, 28.728468, 25.955090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678062, 28.746639, 26.139381>,  <35.890793, 28.757542, 26.249956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678062, 28.746639, 26.139381>,  <35.323513, 28.728468, 25.955090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678062, 28.746639, 26.139381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429623, 0.451546, 0.782004,
		-0.172515, -0.891090, 0.419757,
		0.886376, 0.045430, 0.460732,
		35.943974, 28.760269, 26.277601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.694214, 28.008533, 23.029543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.024048, 27.965845, 23.251778>,  <42.221947, 27.940231, 23.385118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.024048, 27.965845, 23.251778>,  <41.694214, 28.008533, 23.029543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024048, 27.965845, 23.251778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351926, 0.672151, 0.651430,
		-0.442959, -0.732682, 0.516685,
		0.824582, -0.106722, 0.555585,
		42.271423, 27.933828, 23.418453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504532, 27.771732, 23.726332>,  <41.694214, 28.008533, 23.029543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504532, 27.771732, 23.726332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836277, 27.995146, 23.732018>,  <42.035324, 28.129194, 23.735430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836277, 27.995146, 23.732018>,  <41.504532, 27.771732, 23.726332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836277, 27.995146, 23.732018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484582, 0.706419, 0.515901,
		0.278107, -0.434755, 0.856531,
		0.829360, 0.558535, 0.014214,
		42.085083, 28.162706, 23.736282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586868, 27.776855, 24.439026>,  <41.504532, 27.771732, 23.726332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586868, 27.776855, 24.439026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.774433, 28.073341, 24.246891>,  <41.886971, 28.251234, 24.131611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.774433, 28.073341, 24.246891>,  <41.586868, 27.776855, 24.439026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774433, 28.073341, 24.246891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264749, 0.636776, 0.724171,
		0.842635, -0.212401, 0.494826,
		0.468908, 0.741217, -0.480337,
		41.915104, 28.295706, 24.102791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884480, 28.221725, 24.961075>,  <41.586868, 27.776855, 24.439026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884480, 28.221725, 24.961075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.906616, 28.469498, 24.647835>,  <41.919899, 28.618160, 24.459890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.906616, 28.469498, 24.647835>,  <41.884480, 28.221725, 24.961075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906616, 28.469498, 24.647835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124154, 0.782484, 0.610168,
		0.990719, 0.063460, 0.120205,
		0.055337, 0.619429, -0.783100,
		41.923218, 28.655327, 24.412905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247570, 28.784788, 25.257290>,  <41.884480, 28.221725, 24.961075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247570, 28.784788, 25.257290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.067986, 28.916685, 24.925097>,  <41.960236, 28.995823, 24.725780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.067986, 28.916685, 24.925097>,  <42.247570, 28.784788, 25.257290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067986, 28.916685, 24.925097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421957, 0.741023, 0.522337,
		0.787645, 0.584938, -0.193554,
		-0.448963, 0.329745, -0.830482,
		41.933296, 29.015608, 24.675951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405003, 29.566561, 25.170858>,  <42.247570, 28.784788, 25.257290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405003, 29.566561, 25.170858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.067245, 29.476215, 24.976543>,  <41.864594, 29.422009, 24.859955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.067245, 29.476215, 24.976543>,  <42.405003, 29.566561, 25.170858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067245, 29.476215, 24.976543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487327, 0.700485, 0.521376,
		0.222528, 0.676983, -0.701552,
		-0.844390, -0.225865, -0.485789,
		41.813927, 29.408457, 24.830807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165073, 30.204344, 24.926136>,  <42.405003, 29.566561, 25.170858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165073, 30.204344, 24.926136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.839764, 29.972063, 24.911301>,  <41.644577, 29.832695, 24.902399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.839764, 29.972063, 24.911301>,  <42.165073, 30.204344, 24.926136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839764, 29.972063, 24.911301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505944, 0.674214, 0.538011,
		-0.287418, 0.456314, -0.842121,
		-0.813272, -0.580700, -0.037088,
		41.595783, 29.797853, 24.900175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632599, 30.636374, 24.625902>,  <42.165073, 30.204344, 24.926136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632599, 30.636374, 24.625902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.440689, 30.345320, 24.822010>,  <41.325542, 30.170689, 24.939674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.440689, 30.345320, 24.822010>,  <41.632599, 30.636374, 24.625902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440689, 30.345320, 24.822010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654862, 0.668856, 0.351836,
		-0.583927, -0.152256, -0.797400,
		-0.479776, -0.727633, 0.490270,
		41.296757, 30.127029, 24.969091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008533, 30.800930, 24.584406>,  <41.632599, 30.636374, 24.625902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008533, 30.800930, 24.584406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966770, 30.558800, 24.900045>,  <40.941711, 30.413521, 25.089430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966770, 30.558800, 24.900045>,  <41.008533, 30.800930, 24.584406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966770, 30.558800, 24.900045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692750, 0.613557, 0.379004,
		-0.713580, -0.507079, -0.483400,
		-0.104408, -0.605325, 0.789101,
		40.935448, 30.377203, 25.136776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311382, 30.719719, 24.604147>,  <41.008533, 30.800930, 24.584406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311382, 30.719719, 24.604147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455666, 30.628197, 24.965818>,  <40.542236, 30.573284, 25.182821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455666, 30.628197, 24.965818>,  <40.311382, 30.719719, 24.604147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455666, 30.628197, 24.965818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678308, 0.601022, 0.422695,
		-0.640144, -0.765782, 0.061597,
		0.360713, -0.228804, 0.904177,
		40.563881, 30.559555, 25.237072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775547, 30.748558, 24.970037>,  <40.311382, 30.719719, 24.604147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775547, 30.748558, 24.970037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.052872, 30.744705, 25.258266>,  <40.219269, 30.742393, 25.431204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.052872, 30.744705, 25.258266>,  <39.775547, 30.748558, 24.970037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052872, 30.744705, 25.258266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547657, 0.642862, 0.535537,
		-0.468387, -0.765921, 0.440429,
		0.693315, -0.009635, 0.720571,
		40.260864, 30.741816, 25.474438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429016, 30.635929, 25.595301>,  <39.775547, 30.748558, 24.970037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429016, 30.635929, 25.595301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762051, 30.795008, 25.749517>,  <39.961872, 30.890455, 25.842047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762051, 30.795008, 25.749517>,  <39.429016, 30.635929, 25.595301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762051, 30.795008, 25.749517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553758, 0.581869, 0.595635,
		0.012548, -0.709412, 0.704682,
		0.832583, 0.397697, 0.385541,
		40.011826, 30.914316, 25.865179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764931, 30.241405, 25.630928>,  <39.429016, 30.635929, 25.595301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764931, 30.241405, 25.630928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.610790, 30.443390, 25.321989>,  <38.518307, 30.564581, 25.136625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.610790, 30.443390, 25.321989>,  <38.764931, 30.241405, 25.630928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610790, 30.443390, 25.321989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114906, -0.804216, -0.583124,
		-0.915589, -0.313454, 0.251881,
		-0.385349, 0.504959, -0.772349,
		38.495186, 30.594877, 25.090284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308449, 29.781281, 25.247858>,  <38.764931, 30.241405, 25.630928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308449, 29.781281, 25.247858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451626, 30.060217, 24.999474>,  <38.537533, 30.227579, 24.850443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.451626, 30.060217, 24.999474>,  <38.308449, 29.781281, 25.247858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451626, 30.060217, 24.999474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258055, -0.713001, -0.651949,
		-0.897377, 0.073117, -0.435165,
		0.357942, 0.697340, -0.620962,
		38.559010, 30.269419, 24.813185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982456, 29.633385, 24.632416>,  <38.308449, 29.781281, 25.247858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982456, 29.633385, 24.632416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291130, 29.854334, 24.506315>,  <38.476334, 29.986904, 24.430655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.291130, 29.854334, 24.506315>,  <37.982456, 29.633385, 24.632416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291130, 29.854334, 24.506315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202716, -0.683445, -0.701291,
		-0.602830, 0.477271, -0.639381,
		0.771688, 0.552372, -0.315251,
		38.522636, 30.020046, 24.411739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870617, 29.720936, 23.903996>,  <37.982456, 29.633385, 24.632416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870617, 29.720936, 23.903996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.260761, 29.796055, 23.950304>,  <38.494846, 29.841125, 23.978088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.260761, 29.796055, 23.950304>,  <37.870617, 29.720936, 23.903996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260761, 29.796055, 23.950304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200646, -0.536960, -0.819400,
		-0.091715, 0.822440, -0.561410,
		0.975361, 0.187796, 0.115772,
		38.553371, 29.852394, 23.985035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066639, 30.040785, 23.297138>,  <37.870617, 29.720936, 23.903996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066639, 30.040785, 23.297138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.421238, 29.919138, 23.436647>,  <38.633995, 29.846149, 23.520353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.421238, 29.919138, 23.436647>,  <38.066639, 30.040785, 23.297138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421238, 29.919138, 23.436647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157598, -0.510228, -0.845476,
		0.435076, 0.804475, -0.404386,
		0.886494, -0.304116, 0.348772,
		38.687187, 29.827904, 23.541279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433643, 30.109758, 22.715204>,  <38.066639, 30.040785, 23.297138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433643, 30.109758, 22.715204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632801, 29.865959, 22.961981>,  <38.752296, 29.719679, 23.110046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632801, 29.865959, 22.961981>,  <38.433643, 30.109758, 22.715204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632801, 29.865959, 22.961981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308754, -0.540194, -0.782855,
		0.810417, 0.580259, -0.080772,
		0.497891, -0.609500, 0.616939,
		38.782169, 29.683109, 23.147062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190918, 30.068893, 22.461645>,  <38.433643, 30.109758, 22.715204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190918, 30.068893, 22.461645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117062, 29.741611, 22.679434>,  <39.072746, 29.545242, 22.810106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117062, 29.741611, 22.679434>,  <39.190918, 30.068893, 22.461645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117062, 29.741611, 22.679434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499874, -0.555170, -0.664765,
		0.846187, 0.149422, 0.511507,
		-0.184643, -0.818205, 0.544470,
		39.061668, 29.496149, 22.842775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813282, 29.750731, 22.526052>,  <39.190918, 30.068893, 22.461645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813282, 29.750731, 22.526052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.546711, 29.464207, 22.608782>,  <39.386768, 29.292294, 22.658419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.546711, 29.464207, 22.608782>,  <39.813282, 29.750731, 22.526052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546711, 29.464207, 22.608782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531831, -0.651136, -0.541459,
		0.522522, -0.250849, 0.814890,
		-0.666428, -0.716308, 0.206823,
		39.346783, 29.249315, 22.670828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170815, 29.231174, 22.755800>,  <39.813282, 29.750731, 22.526052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170815, 29.231174, 22.755800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.822594, 29.064054, 22.651815>,  <39.613659, 28.963783, 22.589424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.822594, 29.064054, 22.651815>,  <40.170815, 29.231174, 22.755800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822594, 29.064054, 22.651815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486357, -0.810857, -0.325527,
		-0.074786, -0.409823, 0.909094,
		-0.870554, -0.417799, -0.259961,
		39.561428, 28.938715, 22.573828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290955, 28.588419, 22.917549>,  <40.170815, 29.231174, 22.755800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290955, 28.588419, 22.917549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.978077, 28.542690, 22.672567>,  <39.790348, 28.515253, 22.525578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.978077, 28.542690, 22.672567>,  <40.290955, 28.588419, 22.917549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978077, 28.542690, 22.672567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336130, -0.905119, -0.260339,
		-0.524581, -0.409500, 0.746407,
		-0.782197, -0.114321, -0.612454,
		39.743420, 28.508394, 22.488831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923229, 27.944710, 23.123644>,  <40.290955, 28.588419, 22.917549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923229, 27.944710, 23.123644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.781631, 28.037281, 22.761179>,  <39.696671, 28.092825, 22.543701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.781631, 28.037281, 22.761179>,  <39.923229, 27.944710, 23.123644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781631, 28.037281, 22.761179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193715, -0.929744, -0.313129,
		-0.914964, -0.286384, 0.284297,
		-0.353998, 0.231430, -0.906160,
		39.675434, 28.106710, 22.489330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525082, 27.441786, 23.024426>,  <39.923229, 27.944710, 23.123644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525082, 27.441786, 23.024426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.583412, 27.602470, 22.662792>,  <39.618408, 27.698881, 22.445812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.583412, 27.602470, 22.662792>,  <39.525082, 27.441786, 23.024426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583412, 27.602470, 22.662792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244281, -0.900173, -0.360576,
		-0.958678, -0.168269, -0.229396,
		0.145822, 0.401713, -0.904081,
		39.627159, 27.722984, 22.391567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071499, 27.173395, 22.627254>,  <39.525082, 27.441786, 23.024426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071499, 27.173395, 22.627254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377247, 27.294191, 22.399382>,  <39.560696, 27.366669, 22.262657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377247, 27.294191, 22.399382>,  <39.071499, 27.173395, 22.627254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377247, 27.294191, 22.399382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136286, -0.939244, -0.315034,
		-0.630208, 0.163163, -0.759089,
		0.764371, 0.301990, -0.569683,
		39.606560, 27.384789, 22.228477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989159, 26.900738, 21.922537>,  <39.071499, 27.173395, 22.627254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989159, 26.900738, 21.922537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380196, 26.967201, 21.974230>,  <39.614819, 27.007080, 22.005245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.380196, 26.967201, 21.974230>,  <38.989159, 26.900738, 21.922537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380196, 26.967201, 21.974230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198918, -0.930051, -0.308928,
		0.068861, 0.327712, -0.942265,
		0.977594, 0.166161, 0.129232,
		39.673473, 27.017050, 22.012999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399635, 26.590834, 22.376228>,  <38.989159, 26.900738, 21.922537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399635, 26.590834, 22.376228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208542, 26.265341, 22.508654>,  <38.093884, 26.070045, 22.588110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208542, 26.265341, 22.508654>,  <38.399635, 26.590834, 22.376228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208542, 26.265341, 22.508654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014047, 0.383879, 0.923277,
		-0.878391, 0.436432, -0.194823,
		-0.477736, -0.813734, 0.331066,
		38.065220, 26.021221, 22.607973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706963, 26.761005, 22.636375>,  <38.399635, 26.590834, 22.376228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706963, 26.761005, 22.636375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.864693, 26.436661, 22.809353>,  <37.959332, 26.242054, 22.913139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.864693, 26.436661, 22.809353>,  <37.706963, 26.761005, 22.636375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864693, 26.436661, 22.809353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190026, 0.388454, 0.901662,
		-0.899108, -0.437726, -0.000907,
		0.394328, -0.810863, 0.432442,
		37.982990, 26.193401, 22.939085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185352, 26.372971, 22.966776>,  <37.706963, 26.761005, 22.636375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185352, 26.372971, 22.966776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535831, 26.315399, 23.150757>,  <37.746120, 26.280857, 23.261145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535831, 26.315399, 23.150757>,  <37.185352, 26.372971, 22.966776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535831, 26.315399, 23.150757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412311, 0.270290, 0.870025,
		-0.249541, -0.951960, 0.177486,
		0.876202, -0.143927, 0.459952,
		37.798691, 26.272221, 23.288742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979679, 26.039555, 23.547884>,  <37.185352, 26.372971, 22.966776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979679, 26.039555, 23.547884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356464, 26.132589, 23.644716>,  <37.582535, 26.188410, 23.702816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356464, 26.132589, 23.644716>,  <36.979679, 26.039555, 23.547884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356464, 26.132589, 23.644716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296221, 0.236547, 0.925364,
		0.157960, -0.943372, 0.291716,
		0.941967, 0.232583, 0.242082,
		37.639053, 26.202364, 23.717340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108101, 25.692600, 24.142879>,  <36.979679, 26.039555, 23.547884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108101, 25.692600, 24.142879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.360954, 26.001469, 24.117071>,  <37.512665, 26.186790, 24.101585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.360954, 26.001469, 24.117071>,  <37.108101, 25.692600, 24.142879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360954, 26.001469, 24.117071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302352, 0.322470, 0.896993,
		0.713439, -0.547508, 0.437311,
		0.632130, 0.772171, -0.064523,
		37.550594, 26.233120, 24.097713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257236, 25.732002, 24.849129>,  <37.108101, 25.692600, 24.142879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257236, 25.732002, 24.849129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.360378, 26.062418, 24.648661>,  <37.422264, 26.260668, 24.528379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.360378, 26.062418, 24.648661>,  <37.257236, 25.732002, 24.849129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360378, 26.062418, 24.648661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260503, 0.558939, 0.787226,
		0.930402, -0.072437, 0.359313,
		0.257858, 0.826038, -0.501168,
		37.437737, 26.310230, 24.498310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622387, 26.117882, 25.291834>,  <37.257236, 25.732002, 24.849129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622387, 26.117882, 25.291834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.467438, 26.372431, 25.025007>,  <37.374470, 26.525160, 24.864912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.467438, 26.372431, 25.025007>,  <37.622387, 26.117882, 25.291834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467438, 26.372431, 25.025007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345274, 0.570756, 0.744998,
		0.854827, 0.518911, -0.001372,
		-0.387371, 0.636371, -0.667065,
		37.351227, 26.563343, 24.824888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357719, 26.364342, 25.332663>,  <37.622387, 26.117882, 25.291834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357719, 26.364342, 25.332663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636028, 26.284430, 25.608629>,  <38.803013, 26.236483, 25.774210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636028, 26.284430, 25.608629>,  <38.357719, 26.364342, 25.332663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636028, 26.284430, 25.608629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511198, -0.537011, -0.671040,
		0.504554, 0.819577, -0.271511,
		0.695774, -0.199780, 0.689918,
		38.844761, 26.224495, 25.815605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039654, 26.622816, 25.075842>,  <38.357719, 26.364342, 25.332663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039654, 26.622816, 25.075842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102367, 26.341360, 25.353058>,  <39.139996, 26.172485, 25.519388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102367, 26.341360, 25.353058>,  <39.039654, 26.622816, 25.075842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102367, 26.341360, 25.353058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620108, -0.476023, -0.623593,
		0.768689, 0.527532, 0.361700,
		0.156788, -0.703642, 0.693041,
		39.149403, 26.130268, 25.560970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762180, 26.649244, 25.040644>,  <39.039654, 26.622816, 25.075842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762180, 26.649244, 25.040644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.673565, 26.321375, 25.251947>,  <39.620396, 26.124653, 25.378729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.673565, 26.321375, 25.251947>,  <39.762180, 26.649244, 25.040644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673565, 26.321375, 25.251947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721403, -0.502254, -0.476779,
		0.656122, 0.275461, 0.702584,
		-0.221542, -0.819672, 0.528259,
		39.607101, 26.075474, 25.410425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412106, 26.307663, 25.228798>,  <39.762180, 26.649244, 25.040644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412106, 26.307663, 25.228798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.165226, 25.994318, 25.258219>,  <40.017097, 25.806311, 25.275871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.165226, 25.994318, 25.258219>,  <40.412106, 26.307663, 25.228798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165226, 25.994318, 25.258219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637601, -0.552741, -0.536603,
		0.461010, -0.284293, 0.840623,
		-0.617199, -0.783361, 0.073553,
		39.980064, 25.759310, 25.280285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809227, 25.853935, 25.475286>,  <40.412106, 26.307663, 25.228798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809227, 25.853935, 25.475286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506130, 25.645937, 25.317587>,  <40.324272, 25.521137, 25.222967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506130, 25.645937, 25.317587>,  <40.809227, 25.853935, 25.475286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506130, 25.645937, 25.317587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648017, -0.670746, -0.360795,
		-0.076829, -0.528870, 0.845218,
		-0.757741, -0.519996, -0.394249,
		40.278809, 25.489939, 25.199312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917522, 25.175650, 25.722752>,  <40.809227, 25.853935, 25.475286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917522, 25.175650, 25.722752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.692986, 25.143530, 25.393280>,  <40.558262, 25.124258, 25.195597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.692986, 25.143530, 25.393280>,  <40.917522, 25.175650, 25.722752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692986, 25.143530, 25.393280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690712, -0.593695, -0.412847,
		-0.455862, -0.800674, 0.388730,
		-0.561343, -0.080299, -0.823678,
		40.524582, 25.119440, 25.146177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594505, 24.531162, 25.759224>,  <40.917522, 25.175650, 25.722752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594505, 24.531162, 25.759224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639626, 24.659267, 25.382988>,  <40.666698, 24.736130, 25.157248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639626, 24.659267, 25.382988>,  <40.594505, 24.531162, 25.759224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639626, 24.659267, 25.382988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766134, -0.630819, -0.122909,
		-0.632704, -0.706752, -0.316522,
		0.112802, 0.320263, -0.940589,
		40.673466, 24.755346, 25.100811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833569, 23.989021, 25.357197>,  <40.594505, 24.531162, 25.759224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833569, 23.989021, 25.357197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.921875, 24.276728, 25.093708>,  <40.974861, 24.449352, 24.935614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.921875, 24.276728, 25.093708>,  <40.833569, 23.989021, 25.357197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921875, 24.276728, 25.093708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784080, -0.532567, -0.318732,
		-0.580068, -0.446126, -0.681537,
		0.220769, 0.719266, -0.658724,
		40.988106, 24.492508, 24.896091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923828, 23.661060, 24.689693>,  <40.833569, 23.989021, 25.357197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923828, 23.661060, 24.689693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.131306, 24.002506, 24.708870>,  <41.255791, 24.207375, 24.720375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.131306, 24.002506, 24.708870>,  <40.923828, 23.661060, 24.689693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131306, 24.002506, 24.708870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836269, -0.494896, -0.236079,
		-0.177795, 0.162543, -0.970551,
		0.518694, 0.853615, 0.047940,
		41.286915, 24.258591, 24.723251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.049377, 34.136936, 35.515251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424320, 34.254948, 35.441147>,  <34.649284, 34.325756, 35.396683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424320, 34.254948, 35.441147>,  <34.049377, 34.136936, 35.515251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424320, 34.254948, 35.441147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038931, -0.617168, -0.785868,
		-0.346190, 0.729425, -0.589992,
		0.937356, 0.295029, -0.185260,
		34.705528, 34.343456, 35.385571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992001, 34.288391, 34.787888>,  <34.049377, 34.136936, 35.515251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992001, 34.288391, 34.787888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.364162, 34.176105, 34.882164>,  <34.587460, 34.108734, 34.938728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.364162, 34.176105, 34.882164>,  <33.992001, 34.288391, 34.787888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364162, 34.176105, 34.882164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061632, -0.514050, -0.855543,
		0.361320, 0.810526, -0.460972,
		0.930403, -0.280715, 0.235691,
		34.643284, 34.091892, 34.952869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425220, 34.566963, 34.219879>,  <33.992001, 34.288391, 34.787888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425220, 34.566963, 34.219879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609200, 34.250385, 34.380909>,  <34.719589, 34.060440, 34.477528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609200, 34.250385, 34.380909>,  <34.425220, 34.566963, 34.219879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609200, 34.250385, 34.380909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230802, -0.331229, -0.914887,
		0.857424, 0.513717, 0.030318,
		0.459950, -0.791443, 0.402571,
		34.747185, 34.012951, 34.501678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981968, 34.548080, 33.795784>,  <34.425220, 34.566963, 34.219879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981968, 34.548080, 33.795784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020447, 34.202198, 33.992977>,  <35.043533, 33.994671, 34.111294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020447, 34.202198, 33.992977>,  <34.981968, 34.548080, 33.795784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020447, 34.202198, 33.992977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414926, -0.415357, -0.809515,
		0.904755, 0.282428, 0.318830,
		0.096202, -0.864704, 0.492983,
		35.049309, 33.942787, 34.140873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656445, 34.300529, 33.698124>,  <34.981968, 34.548080, 33.795784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656445, 34.300529, 33.698124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433025, 33.982975, 33.794270>,  <35.298973, 33.792442, 33.851955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433025, 33.982975, 33.794270>,  <35.656445, 34.300529, 33.698124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433025, 33.982975, 33.794270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479607, -0.545525, -0.687299,
		0.676759, -0.268608, 0.685453,
		-0.558546, -0.793884, 0.240363,
		35.265461, 33.744808, 33.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116772, 33.719563, 33.632988>,  <35.656445, 34.300529, 33.698124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116772, 33.719563, 33.632988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751389, 33.557999, 33.652786>,  <35.532158, 33.461060, 33.664665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751389, 33.557999, 33.652786>,  <36.116772, 33.719563, 33.632988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751389, 33.557999, 33.652786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297205, -0.745281, -0.596847,
		0.277965, -0.530483, 0.800827,
		-0.913458, -0.403912, 0.049500,
		35.477352, 33.436825, 33.667637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215240, 33.073360, 33.966351>,  <36.116772, 33.719563, 33.632988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215240, 33.073360, 33.966351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877266, 33.047318, 33.753994>,  <35.674480, 33.031693, 33.626579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877266, 33.047318, 33.753994>,  <36.215240, 33.073360, 33.966351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877266, 33.047318, 33.753994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324663, -0.851222, -0.412330,
		-0.425058, -0.520753, 0.740367,
		-0.844938, -0.065106, -0.530887,
		35.623783, 33.027786, 33.594727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082756, 32.395939, 33.955437>,  <36.215240, 33.073360, 33.966351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082756, 32.395939, 33.955437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860119, 32.532204, 33.652344>,  <35.726536, 32.613964, 33.470490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860119, 32.532204, 33.652344>,  <36.082756, 32.395939, 33.955437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860119, 32.532204, 33.652344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093899, -0.880424, -0.464796,
		-0.825461, -0.329852, 0.458051,
		-0.556594, 0.340661, -0.757729,
		35.693142, 32.634403, 33.425026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562717, 31.926540, 33.838272>,  <36.082756, 32.395939, 33.955437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562717, 31.926540, 33.838272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547318, 32.131390, 33.495052>,  <35.538078, 32.254299, 33.289120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547318, 32.131390, 33.495052>,  <35.562717, 31.926540, 33.838272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547318, 32.131390, 33.495052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020996, -0.858080, -0.513087,
		-0.999038, -0.037769, 0.022282,
		-0.038498, 0.512125, -0.858048,
		35.535767, 32.285027, 33.237637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010643, 31.594450, 33.458927>,  <35.562717, 31.926540, 33.838272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010643, 31.594450, 33.458927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230843, 31.786732, 33.185909>,  <35.362961, 31.902102, 33.022099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230843, 31.786732, 33.185909>,  <35.010643, 31.594450, 33.458927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230843, 31.786732, 33.185909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112589, -0.852865, -0.509848,
		-0.827208, 0.203823, -0.523624,
		0.550499, 0.480705, -0.682549,
		35.395992, 31.930943, 32.981144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787865, 31.238228, 32.826588>,  <35.010643, 31.594450, 33.458927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787865, 31.238228, 32.826588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123421, 31.414206, 32.698387>,  <35.324753, 31.519793, 32.621468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123421, 31.414206, 32.698387>,  <34.787865, 31.238228, 32.826588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123421, 31.414206, 32.698387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241732, -0.828692, -0.504811,
		-0.487684, 0.346004, -0.801527,
		0.838886, 0.439943, -0.320500,
		35.375088, 31.546188, 32.602238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835651, 31.206900, 32.072758>,  <34.787865, 31.238228, 32.826588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835651, 31.206900, 32.072758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195835, 31.236071, 32.244270>,  <35.411945, 31.253572, 32.347179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195835, 31.236071, 32.244270>,  <34.835651, 31.206900, 32.072758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195835, 31.236071, 32.244270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332657, -0.750588, -0.570926,
		0.280205, 0.656734, -0.700133,
		0.900458, 0.072927, 0.428786,
		35.465973, 31.257948, 32.372906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728065, 31.812315, 31.597771>,  <34.835651, 31.206900, 32.072758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728065, 31.812315, 31.597771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468388, 31.910105, 31.309666>,  <34.312580, 31.968779, 31.136803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468388, 31.910105, 31.309666>,  <34.728065, 31.812315, 31.597771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468388, 31.910105, 31.309666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163060, 0.880192, 0.445728,
		0.742941, 0.406810, -0.531550,
		-0.649192, 0.244475, -0.720265,
		34.273628, 31.983448, 31.093586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894466, 32.558926, 31.525900>,  <34.728065, 31.812315, 31.597771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894466, 32.558926, 31.525900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525227, 32.463123, 31.405546>,  <34.303684, 32.405643, 31.333334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525227, 32.463123, 31.405546>,  <34.894466, 32.558926, 31.525900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525227, 32.463123, 31.405546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372170, 0.753424, 0.542072,
		0.096866, 0.612365, -0.784619,
		-0.923096, -0.239503, -0.300885,
		34.248299, 32.391273, 31.315281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609493, 33.156239, 31.294540>,  <34.894466, 32.558926, 31.525900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609493, 33.156239, 31.294540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296841, 32.920994, 31.377663>,  <34.109249, 32.779846, 31.427536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296841, 32.920994, 31.377663>,  <34.609493, 33.156239, 31.294540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296841, 32.920994, 31.377663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469446, 0.774030, 0.424851,
		-0.410706, 0.234523, -0.881090,
		-0.781627, -0.588113, 0.207803,
		34.062351, 32.744560, 31.440004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065121, 33.538792, 31.165215>,  <34.609493, 33.156239, 31.294540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065121, 33.538792, 31.165215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900417, 33.259682, 31.399673>,  <33.801594, 33.092216, 31.540348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900417, 33.259682, 31.399673>,  <34.065121, 33.538792, 31.165215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900417, 33.259682, 31.399673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569541, 0.699156, 0.432208,
		-0.711390, -0.155869, -0.685294,
		-0.411760, -0.697772, 0.586147,
		33.776890, 33.050350, 31.575518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343616, 33.536358, 31.018923>,  <34.065121, 33.538792, 31.165215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343616, 33.536358, 31.018923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369785, 33.384285, 31.387960>,  <33.385487, 33.293041, 31.609383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369785, 33.384285, 31.387960>,  <33.343616, 33.536358, 31.018923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369785, 33.384285, 31.387960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448761, 0.814592, 0.367497,
		-0.891254, -0.438067, -0.117318,
		0.065423, -0.380181, 0.922596,
		33.389412, 33.270229, 31.664740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735462, 33.804295, 31.378214>,  <33.343616, 33.536358, 31.018923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735462, 33.804295, 31.378214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921368, 33.658966, 31.701199>,  <33.032909, 33.571770, 31.894989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921368, 33.658966, 31.701199>,  <32.735462, 33.804295, 31.378214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921368, 33.658966, 31.701199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496358, 0.648270, 0.577387,
		-0.733230, -0.669137, 0.120954,
		0.464761, -0.363321, 0.807462,
		33.060795, 33.549969, 31.943438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223503, 33.639042, 31.874016>,  <32.735462, 33.804295, 31.378214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223503, 33.639042, 31.874016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572655, 33.735939, 32.043442>,  <32.782146, 33.794079, 32.145096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572655, 33.735939, 32.043442>,  <32.223503, 33.639042, 31.874016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572655, 33.735939, 32.043442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476376, 0.610969, 0.632284,
		-0.105616, -0.753680, 0.648700,
		0.872875, 0.242246, 0.423563,
		32.834518, 33.808613, 32.170509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128948, 33.479683, 32.533669>,  <32.223503, 33.639042, 31.874016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128948, 33.479683, 32.533669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419811, 33.753654, 32.515282>,  <32.594330, 33.918037, 32.504250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419811, 33.753654, 32.515282>,  <32.128948, 33.479683, 32.533669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419811, 33.753654, 32.515282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510304, 0.584134, 0.631171,
		0.459157, -0.435505, 0.774280,
		0.727162, 0.684925, -0.045969,
		32.637959, 33.959133, 32.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168125, 33.626202, 33.233093>,  <32.128948, 33.479683, 32.533669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168125, 33.626202, 33.233093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362843, 33.921978, 33.047077>,  <32.479675, 34.099445, 32.935467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362843, 33.921978, 33.047077>,  <32.168125, 33.626202, 33.233093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362843, 33.921978, 33.047077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525976, 0.673170, 0.519799,
		0.697407, -0.008441, 0.716626,
		0.486798, 0.739439, -0.465034,
		32.508881, 34.143810, 32.907566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206272, 34.221806, 33.743031>,  <32.168125, 33.626202, 33.233093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206272, 34.221806, 33.743031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296955, 34.388126, 33.390732>,  <32.351364, 34.487919, 33.179352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296955, 34.388126, 33.390732>,  <32.206272, 34.221806, 33.743031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296955, 34.388126, 33.390732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499340, 0.826020, 0.261437,
		0.836219, 0.380521, 0.394894,
		0.226708, 0.415805, -0.880744,
		32.364967, 34.512867, 33.126511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523151, 34.778664, 33.924091>,  <32.206272, 34.221806, 33.743031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523151, 34.778664, 33.924091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388340, 34.830021, 33.551010>,  <32.307453, 34.860836, 33.327164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388340, 34.830021, 33.551010>,  <32.523151, 34.778664, 33.924091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388340, 34.830021, 33.551010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595994, 0.737803, 0.316918,
		0.728838, 0.662693, -0.172139,
		-0.337025, 0.128388, -0.932701,
		32.287231, 34.868538, 33.271198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613380, 35.430660, 33.766449>,  <32.523151, 34.778664, 33.924091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613380, 35.430660, 33.766449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325966, 35.338558, 33.503941>,  <32.153519, 35.283295, 33.346436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325966, 35.338558, 33.503941>,  <32.613380, 35.430660, 33.766449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325966, 35.338558, 33.503941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495645, 0.831485, 0.250934,
		0.487901, 0.505583, -0.711575,
		-0.718532, -0.230257, -0.656272,
		32.110405, 35.269482, 33.307060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365967, 36.149124, 33.621819>,  <32.613380, 35.430660, 33.766449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365967, 36.149124, 33.621819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103508, 35.878502, 33.488110>,  <31.946032, 35.716129, 33.407887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103508, 35.878502, 33.488110>,  <32.365967, 36.149124, 33.621819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103508, 35.878502, 33.488110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737599, 0.668568, 0.094686,
		0.159420, 0.308684, -0.937709,
		-0.656151, -0.676558, -0.334269,
		31.906662, 35.675533, 33.387829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060360, 36.465866, 33.161552>,  <32.365967, 36.149124, 33.621819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060360, 36.465866, 33.161552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807085, 36.189980, 33.302048>,  <31.655121, 36.024448, 33.386345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807085, 36.189980, 33.302048>,  <32.060360, 36.465866, 33.161552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807085, 36.189980, 33.302048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717613, 0.693165, 0.067485,
		-0.290012, -0.209323, -0.933851,
		-0.633186, -0.689715, 0.351239,
		31.617128, 35.983067, 33.407421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197956, 36.757626, 32.510555>,  <32.060360, 36.465866, 33.161552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197956, 36.757626, 32.510555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574570, 36.858242, 32.600212>,  <32.800537, 36.918613, 32.654007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574570, 36.858242, 32.600212>,  <32.197956, 36.757626, 32.510555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574570, 36.858242, 32.600212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247166, -0.063610, -0.966883,
		-0.228953, 0.965754, -0.122063,
		0.941536, 0.251541, 0.224137,
		32.857029, 36.933704, 32.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421120, 37.263577, 31.889954>,  <32.197956, 36.757626, 32.510555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421120, 37.263577, 31.889954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749992, 37.119850, 32.066547>,  <32.947315, 37.033615, 32.172504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749992, 37.119850, 32.066547>,  <32.421120, 37.263577, 31.889954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749992, 37.119850, 32.066547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500222, 0.085948, -0.861621,
		0.271646, 0.929251, 0.250401,
		0.822184, -0.359312, 0.441485,
		32.996647, 37.012058, 32.198994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961636, 37.461811, 31.468622>,  <32.421120, 37.263577, 31.889954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961636, 37.461811, 31.468622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141739, 37.180061, 31.688120>,  <33.249802, 37.011013, 31.819818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.141739, 37.180061, 31.688120>,  <32.961636, 37.461811, 31.468622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141739, 37.180061, 31.688120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691943, -0.113171, -0.713027,
		0.564339, 0.700750, 0.436429,
		0.450263, -0.704373, 0.548746,
		33.276817, 36.968750, 31.852743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715008, 37.580536, 31.386999>,  <32.961636, 37.461811, 31.468622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715008, 37.580536, 31.386999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628429, 37.201923, 31.482691>,  <33.576485, 36.974754, 31.540106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628429, 37.201923, 31.482691>,  <33.715008, 37.580536, 31.386999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628429, 37.201923, 31.482691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655177, -0.322491, -0.683186,
		0.723806, 0.008867, 0.689946,
		-0.216443, -0.946531, 0.239230,
		33.563496, 36.917965, 31.554461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386433, 37.285294, 31.453703>,  <33.715008, 37.580536, 31.386999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386433, 37.285294, 31.453703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127995, 36.990227, 31.375311>,  <33.972931, 36.813187, 31.328276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127995, 36.990227, 31.375311>,  <34.386433, 37.285294, 31.453703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127995, 36.990227, 31.375311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666991, -0.420842, -0.614830,
		0.371065, -0.527953, 0.763922,
		-0.646092, -0.737671, -0.195980,
		33.934166, 36.768925, 31.316517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819942, 36.869564, 31.124201>,  <34.386433, 37.285294, 31.453703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819942, 36.869564, 31.124201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485641, 36.652599, 31.089998>,  <34.285061, 36.522419, 31.069477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485641, 36.652599, 31.089998>,  <34.819942, 36.869564, 31.124201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485641, 36.652599, 31.089998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488302, -0.662901, -0.567560,
		0.251169, -0.516091, 0.818880,
		-0.835748, -0.542414, -0.085508,
		34.234917, 36.489876, 31.064346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002346, 36.233620, 31.187405>,  <34.819942, 36.869564, 31.124201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002346, 36.233620, 31.187405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669872, 36.248272, 30.965490>,  <34.470387, 36.257065, 30.832342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669872, 36.248272, 30.965490>,  <35.002346, 36.233620, 31.187405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669872, 36.248272, 30.965490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434183, -0.580520, -0.688826,
		-0.347295, -0.813422, 0.466617,
		-0.831187, 0.036629, -0.554785,
		34.420517, 36.259262, 30.799055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797779, 35.512054, 30.980406>,  <35.002346, 36.233620, 31.187405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797779, 35.512054, 30.980406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625847, 35.751137, 30.709707>,  <34.522686, 35.894588, 30.547289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625847, 35.751137, 30.709707>,  <34.797779, 35.512054, 30.980406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625847, 35.751137, 30.709707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210829, -0.662359, -0.718910,
		-0.877949, -0.451689, 0.158689,
		-0.429833, 0.597710, -0.676747,
		34.496895, 35.930450, 30.506683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532364, 35.068218, 30.518353>,  <34.797779, 35.512054, 30.980406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532364, 35.068218, 30.518353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547104, 35.404770, 30.302677>,  <34.555946, 35.606701, 30.173273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547104, 35.404770, 30.302677>,  <34.532364, 35.068218, 30.518353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547104, 35.404770, 30.302677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112410, -0.539619, -0.834371,
		-0.992978, -0.029867, -0.114462,
		0.036846, 0.841379, -0.539187,
		34.558159, 35.657185, 30.140921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097271, 34.921394, 29.935511>,  <34.532364, 35.068218, 30.518353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097271, 34.921394, 29.935511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315662, 35.238934, 29.828394>,  <34.446697, 35.429459, 29.764124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315662, 35.238934, 29.828394>,  <34.097271, 34.921394, 29.935511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315662, 35.238934, 29.828394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329471, -0.497329, -0.802566,
		-0.770296, 0.349954, -0.533081,
		0.545978, 0.793849, -0.267791,
		34.479454, 35.477089, 29.748056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967628, 35.103455, 29.120947>,  <34.097271, 34.921394, 29.935511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967628, 35.103455, 29.120947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317101, 35.269779, 29.221966>,  <34.526783, 35.369576, 29.282578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317101, 35.269779, 29.221966>,  <33.967628, 35.103455, 29.120947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317101, 35.269779, 29.221966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447083, -0.481542, -0.753813,
		-0.191834, 0.771502, -0.606618,
		0.873680, 0.415815, 0.252549,
		34.579205, 35.394524, 29.297731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238495, 35.273464, 28.463911>,  <33.967628, 35.103455, 29.120947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238495, 35.273464, 28.463911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525799, 35.266666, 28.742138>,  <34.698181, 35.262589, 28.909075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525799, 35.266666, 28.742138>,  <34.238495, 35.273464, 28.463911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525799, 35.266666, 28.742138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556273, -0.586459, -0.588750,
		0.417929, 0.809801, -0.411775,
		0.718259, -0.016997, 0.695568,
		34.741276, 35.261566, 28.950808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704681, 35.481842, 28.098604>,  <34.238495, 35.273464, 28.463911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704681, 35.481842, 28.098604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846760, 35.265617, 28.403664>,  <34.932007, 35.135883, 28.586699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846760, 35.265617, 28.403664>,  <34.704681, 35.481842, 28.098604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846760, 35.265617, 28.403664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530431, -0.555238, -0.640589,
		0.769728, 0.632065, 0.089513,
		0.355193, -0.540560, 0.762649,
		34.953316, 35.103451, 28.632458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396015, 35.397316, 27.995943>,  <34.704681, 35.481842, 28.098604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396015, 35.397316, 27.995943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324974, 35.084301, 28.234638>,  <35.282349, 34.896492, 28.377855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324974, 35.084301, 28.234638>,  <35.396015, 35.397316, 27.995943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324974, 35.084301, 28.234638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630659, -0.556002, -0.541416,
		0.755464, 0.280179, 0.592262,
		-0.177605, -0.782535, 0.596737,
		35.271694, 34.849541, 28.413660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963173, 35.099178, 28.140121>,  <35.396015, 35.397316, 27.995943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963173, 35.099178, 28.140121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722153, 34.792667, 28.229343>,  <35.577541, 34.608761, 28.282877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722153, 34.792667, 28.229343>,  <35.963173, 35.099178, 28.140121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722153, 34.792667, 28.229343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576161, -0.611059, -0.542813,
		0.552245, -0.198556, 0.809692,
		-0.602548, -0.766279, 0.223054,
		35.541389, 34.562782, 28.296259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442844, 34.518871, 28.200966>,  <35.963173, 35.099178, 28.140121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442844, 34.518871, 28.200966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100529, 34.313095, 28.179157>,  <35.895138, 34.189629, 28.166071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100529, 34.313095, 28.179157>,  <36.442844, 34.518871, 28.200966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100529, 34.313095, 28.179157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446012, -0.680309, -0.581595,
		0.262106, -0.522040, 0.811650,
		-0.855788, -0.514445, -0.054523,
		35.843792, 34.158760, 28.162800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605713, 33.787243, 28.400118>,  <36.442844, 34.518871, 28.200966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605713, 33.787243, 28.400118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284161, 33.770359, 28.162802>,  <36.091228, 33.760227, 28.020412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284161, 33.770359, 28.162802>,  <36.605713, 33.787243, 28.400118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284161, 33.770359, 28.162802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434403, -0.723021, -0.537154,
		-0.406285, -0.689535, 0.599562,
		-0.803882, -0.042214, -0.593288,
		36.042995, 33.757694, 27.984816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741344, 33.161991, 28.094574>,  <36.605713, 33.787243, 28.400118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741344, 33.161991, 28.094574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416183, 33.274555, 27.890612>,  <36.221088, 33.342094, 27.768234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416183, 33.274555, 27.890612>,  <36.741344, 33.161991, 28.094574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416183, 33.274555, 27.890612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253299, -0.617551, -0.744628,
		-0.524432, -0.734468, 0.430729,
		-0.812902, 0.281403, -0.509904,
		36.172314, 33.358978, 27.737640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195515, 32.626549, 28.061911>,  <36.741344, 33.161991, 28.094574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195515, 32.626549, 28.061911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205326, 32.854095, 27.733086>,  <36.211212, 32.990623, 27.535789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205326, 32.854095, 27.733086>,  <36.195515, 32.626549, 28.061911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205326, 32.854095, 27.733086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219034, -0.805390, -0.550792,
		-0.975409, -0.166547, -0.144360,
		0.024533, 0.568867, -0.822064,
		36.212685, 33.024754, 27.486467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016575, 32.094711, 27.539181>,  <36.195515, 32.626549, 28.061911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016575, 32.094711, 27.539181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170067, 32.410686, 27.347868>,  <36.262161, 32.600269, 27.233080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170067, 32.410686, 27.347868>,  <36.016575, 32.094711, 27.539181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170067, 32.410686, 27.347868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374685, -0.606569, -0.701203,
		-0.844015, 0.089869, -0.528736,
		0.383731, 0.789935, -0.478281,
		36.285187, 32.647667, 27.204384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785744, 31.899998, 26.875166>,  <36.016575, 32.094711, 27.539181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785744, 31.899998, 26.875166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079662, 32.168556, 26.836601>,  <36.256016, 32.329693, 26.813463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079662, 32.168556, 26.836601>,  <35.785744, 31.899998, 26.875166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079662, 32.168556, 26.836601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385344, -0.530186, -0.755257,
		-0.558194, 0.517810, -0.648299,
		0.734799, 0.671398, -0.096412,
		36.300102, 32.369976, 26.807678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864243, 31.988184, 26.199810>,  <35.785744, 31.899998, 26.875166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864243, 31.988184, 26.199810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205963, 32.139626, 26.342264>,  <36.410995, 32.230492, 26.427736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205963, 32.139626, 26.342264>,  <35.864243, 31.988184, 26.199810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205963, 32.139626, 26.342264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499476, -0.408328, -0.764062,
		-0.143857, 0.830619, -0.537938,
		0.854300, 0.378603, 0.356133,
		36.462254, 32.253208, 26.449104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238319, 32.321579, 25.669470>,  <35.864243, 31.988184, 26.199810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238319, 32.321579, 25.669470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514030, 32.205345, 25.934938>,  <36.679455, 32.135605, 26.094219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514030, 32.205345, 25.934938>,  <36.238319, 32.321579, 25.669470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514030, 32.205345, 25.934938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548309, -0.389534, -0.740014,
		0.473559, 0.873971, -0.109166,
		0.689274, -0.290584, 0.663673,
		36.720814, 32.118172, 26.134041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900295, 32.423431, 25.279413>,  <36.238319, 32.321579, 25.669470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900295, 32.423431, 25.279413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998596, 32.190765, 25.589579>,  <37.057579, 32.051167, 25.775679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998596, 32.190765, 25.589579>,  <36.900295, 32.423431, 25.279413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998596, 32.190765, 25.589579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683308, -0.463431, -0.564200,
		0.687527, 0.668502, 0.283567,
		0.245755, -0.581667, 0.775415,
		37.072323, 32.016266, 25.822203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655746, 32.466194, 25.383663>,  <36.900295, 32.423431, 25.279413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655746, 32.466194, 25.383663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545406, 32.121124, 25.553226>,  <37.479202, 31.914082, 25.654964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545406, 32.121124, 25.553226>,  <37.655746, 32.466194, 25.383663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545406, 32.121124, 25.553226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741357, -0.471654, -0.477423,
		0.611799, 0.182570, 0.769656,
		-0.275848, -0.862676, 0.423907,
		37.462650, 31.862322, 25.680399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278301, 32.178177, 25.461332>,  <37.655746, 32.466194, 25.383663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278301, 32.178177, 25.461332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033688, 31.865732, 25.511749>,  <37.886917, 31.678265, 25.542000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033688, 31.865732, 25.511749>,  <38.278301, 32.178177, 25.461332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033688, 31.865732, 25.511749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685865, -0.602764, -0.407755,
		0.394478, -0.162907, 0.904350,
		-0.611536, -0.781112, 0.126045,
		37.850227, 31.631399, 25.549562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756248, 31.675404, 25.678705>,  <38.278301, 32.178177, 25.461332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756248, 31.675404, 25.678705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434467, 31.476173, 25.549229>,  <38.241398, 31.356634, 25.471542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434467, 31.476173, 25.549229>,  <38.756248, 31.675404, 25.678705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434467, 31.476173, 25.549229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593321, -0.647336, -0.478463,
		0.028773, -0.576954, 0.816270,
		-0.804452, -0.498077, -0.323693,
		38.193130, 31.326750, 25.452120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878551, 31.027695, 25.804966>,  <38.756248, 31.675404, 25.678705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878551, 31.027695, 25.804966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591316, 30.995441, 25.528461>,  <38.418976, 30.976089, 25.362558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591316, 30.995441, 25.528461>,  <38.878551, 31.027695, 25.804966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591316, 30.995441, 25.528461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520950, -0.720894, -0.457081,
		-0.461470, -0.688338, 0.559675,
		-0.718093, -0.080633, -0.691261,
		38.375889, 30.971251, 25.321083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304371, 30.806267, 26.408791>,  <38.878551, 31.027695, 25.804966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304371, 30.806267, 26.408791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638012, 31.003660, 26.310207>,  <39.838196, 31.122097, 26.251057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638012, 31.003660, 26.310207>,  <39.304371, 30.806267, 26.408791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638012, 31.003660, 26.310207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205999, 0.693153, 0.690727,
		0.511694, -0.525370, 0.679820,
		0.834106, 0.493483, -0.246457,
		39.888245, 31.151705, 26.236271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681400, 30.870909, 27.023829>,  <39.304371, 30.806267, 26.408791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681400, 30.870909, 27.023829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.810188, 31.157160, 26.775888>,  <39.887463, 31.328911, 26.627125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.810188, 31.157160, 26.775888>,  <39.681400, 30.870909, 27.023829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810188, 31.157160, 26.775888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175737, 0.688508, 0.703614,
		0.930297, -0.117613, 0.347441,
		0.321970, 0.715628, -0.619848,
		39.906780, 31.371849, 26.589933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236439, 31.199791, 27.362114>,  <39.681400, 30.870909, 27.023829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236439, 31.199791, 27.362114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105400, 31.450565, 27.079376>,  <40.026775, 31.601030, 26.909733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105400, 31.450565, 27.079376>,  <40.236439, 31.199791, 27.362114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105400, 31.450565, 27.079376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123584, 0.713269, 0.689909,
		0.936700, 0.313368, -0.156187,
		-0.327599, 0.626935, -0.706846,
		40.007122, 31.638645, 26.867323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579937, 31.863997, 27.411249>,  <40.236439, 31.199791, 27.362114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579937, 31.863997, 27.411249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247070, 31.965979, 27.214273>,  <40.047352, 32.027168, 27.096088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247070, 31.965979, 27.214273>,  <40.579937, 31.863997, 27.411249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247070, 31.965979, 27.214273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130499, 0.773057, 0.620767,
		0.538950, 0.580845, -0.610042,
		-0.832167, 0.254953, -0.492439,
		39.997421, 32.042465, 27.066542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572830, 32.565418, 27.534863>,  <40.579937, 31.863997, 27.411249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572830, 32.565418, 27.534863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200378, 32.470322, 27.424238>,  <39.976910, 32.413265, 27.357862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.200378, 32.470322, 27.424238>,  <40.572830, 32.565418, 27.534863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200378, 32.470322, 27.424238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360376, 0.716215, 0.597633,
		0.055998, 0.656138, -0.752561,
		-0.931125, -0.237739, -0.276563,
		39.921040, 32.398998, 27.341269>
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
